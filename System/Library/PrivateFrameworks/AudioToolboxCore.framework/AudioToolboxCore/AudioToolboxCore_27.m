void sub_18F7B109C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<CA::ADMZone>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CA::ADMZone>,CA::ADMZone*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
      }

      v3 -= 72;
    }
  }

  return a1;
}

void AUv3RenderAdapter::~AUv3RenderAdapter(AUv3RenderAdapter *this)
{
  v2 = *(this + 4);
  *(this + 4) = 0;

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

uint64_t AUv3RenderAdapter::SetProperty(AUv3RenderAdapter *this, int a2, int a3, unsigned int a4, void *a5, unsigned int a6)
{
  if (a3 != 1)
  {
    return 4294956430;
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 2) - *(this + 1)) >> 3) <= a4)
  {
    return 4294956419;
  }

  if (a2 == 23)
  {
    if (a6 >= 0x10)
    {
      os_unfair_recursive_lock_lock_with_options();
      v12 = (*(this + 1) + 40 * a4);
      *v12 = 2 * (*a5 != 0);
      v10 = v12 + 2;
      goto LABEL_13;
    }

    return 4294956445;
  }

  if (a2 != 1)
  {
    return 4294956417;
  }

  if (a6 < 0x10)
  {
    return 4294956445;
  }

  os_unfair_recursive_lock_lock_with_options();
  v9 = (*(this + 1) + 40 * a4);
  *v9 = *a5 != 0;
  v10 = v9 + 6;
LABEL_13:
  *v10 = *a5;
  os_unfair_recursive_lock_unlock();
  return 0;
}

void AUv3RenderAdapter::initialize(AUv3RenderAdapter *this, AUAudioUnit *a2)
{
  v6 = a2;
  v3 = [(AUAudioUnit *)v6 renderBlock];
  v4 = [v3 copy];
  v5 = *(this + 4);
  *(this + 4) = v4;
}

uint64_t ___ZN17AUv3RenderAdapter6RenderERjRK14AudioTimeStampjjR15AudioBufferList_block_invoke(uint64_t a1, AudioUnitRenderActionFlags *a2, const AudioTimeStamp *a3, uint64_t inNumberFrames, unint64_t a5, AudioBufferList *a6)
{
  v6 = *(*(a1 + 32) + 8);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(*(a1 + 32) + 16) - v6) >> 3) <= a5)
  {
    return 4294956419;
  }

  v7 = v6 + 40 * a5;
  if (*v7 == 1)
  {
    return AudioUnitRender(*(v7 + 24), a2, a3, *(v7 + 32), inNumberFrames, a6);
  }

  if (*v7 == 2)
  {
    return (*(v7 + 8))(*(v7 + 16), a2, a3, a5, inNumberFrames);
  }

  return 4294956420;
}

void AUHostingServiceClient::create(void *a1, AudioComponentDescription *a2, void *a3, uint64_t a4, void *a5)
{
  v59 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v41 = a5;
  v45 = *a2;
  v9 = v8;
  v10 = v9;
  if (!v9 || ![v9 count])
  {
    v12 = @"com.apple.audio.AUHostingService.arm64e";
    goto LABEL_25;
  }

  v11 = [v10 count];
  if (v11)
  {
    if (!(v11 >> 62))
    {
      std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v11);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  for (i = 0; [v10 count] > i; ++i)
  {
    v14 = [v10 objectAtIndexedSubscript:i];
    *(4 * i) = [v14 intValue];
  }

  if (getenv("CoreAudio_AUHostingService_mismatchMode"))
  {
    v43 = a4;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v15 = v10;
    v16 = [v15 countByEnumeratingWithState:&v55 objects:v51 count:16];
    if (v16)
    {
      v17 = 0;
      v18 = 0;
      v19 = *v56;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v56 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v55 + 1) + 8 * j);
          if ([v21 intValue] == 16777228)
          {
            v17 = 1;
          }

          else
          {
            v18 |= [v21 intValue] == 16777223;
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v55 objects:v51 count:16];
      }

      while (v16);

      a4 = v43;
      if (v17 & v18)
      {
        v12 = @"com.apple.audio.AUHostingService.x86-64";
        goto LABEL_25;
      }
    }

    else
    {
    }
  }

  v12 = @"com.apple.audio.AUHostingService.arm64e";
LABEL_25:

  std::__function::__value_func<NSXPCConnection * ()(NSUUID *)>::__value_func[abi:ne200100](v49, a4);
  v42 = v12;
  v44 = v41;
  v22 = *getAUHostingProcessUUID(&v45);
  getAUHostingServiceInstance(&v46, v22);
  isa = v46.super.isa;
  std::mutex::lock(v46.super.isa);
  if (*(isa + 64) == 1)
  {
    v24 = v22;
    AUHostingServiceProcessManager::instance(lock);
    v25 = lock[1];
    v55 = 0uLL;
    [v24 getUUIDBytes:&v55];
    v53 = 16;
    *v51 = v55;
    v52 = 0;
    v26 = std::__tree<std::__value_type<std::string,std::shared_ptr<AUHostingServiceInstance>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AUHostingServiceInstance>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AUHostingServiceInstance>>>>::find<std::string>(&v25[6], v51);
    if (&v25[8] != v26)
    {
      v27 = v26;
      v28 = *(v26 + 8);
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        v30 = v26;
        do
        {
          v29 = v30[2];
          v31 = *v29 == v30;
          v30 = v29;
        }

        while (!v31);
      }

      if (*&v25[6]._os_unfair_lock_opaque == v26)
      {
        *&v25[6]._os_unfair_lock_opaque = v29;
      }

      v32 = *&v25[8]._os_unfair_lock_opaque;
      --*&v25[10]._os_unfair_lock_opaque;
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v32, v27);
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<CA::ADMPackFormat>>,0>((v27 + 4));
      operator delete(v27);
    }

    if (lock[0])
    {
      os_unfair_lock_unlock(lock[0]);
    }

    v22 = [MEMORY[0x1E696AFB0] UUID];
    AUHostingInstantiationPolicy = getAUHostingInstantiationPolicy();
    if (AUHostingInstantiationPolicy == 1)
    {
      AUHostingServiceProcessManager::instance(v51);
      v35 = AUHostingServiceProcessManager::uuidForDescriptor(v51[1], v45.componentManufacturer);
      objc_storeStrong(v35, v22);
      if (v51[0])
      {
        os_unfair_lock_unlock(v51[0]);
      }
    }

    else if (AUHostingInstantiationPolicy == 2)
    {
      AUHostingProcessUUID = getAUHostingProcessUUID(&v45);
      objc_storeStrong(AUHostingProcessUUID, v22);
    }
  }

  if (!v50)
  {
    v36 = v42;
    v51[0] = &unk_1F032DF60;
    v51[1] = v36;
    v54 = v51;
    if (v50 == v49)
    {
      std::__function::__func<AUHostingServiceClient::create(AudioComponentDescription,NSString *,std::function<NSXPCConnection * ()(NSUUID *)>,NSUUID *)::$_0,std::allocator<AUHostingServiceClient::create(AudioComponentDescription,NSString *,std::function<NSXPCConnection * ()(NSUUID *)>,NSUUID *)::$_0>,NSXPCConnection * ()(NSUUID *)>::__clone(v51, &v55);
      (*&(*v54)[8]._os_unfair_lock_opaque)(v54);
      v54 = 0;
      (*&(*v50)[6]._os_unfair_lock_opaque)(v50, v51);
      (*&(*v50)[8]._os_unfair_lock_opaque)(v50);
      v50 = 0;
      v54 = v51;
      (*(v55 + 24))(&v55, v49);
      (*(v55 + 32))(&v55);
    }

    else
    {
      std::__function::__func<AUHostingServiceClient::create(AudioComponentDescription,NSString *,std::function<NSXPCConnection * ()(NSUUID *)>,NSUUID *)::$_0,std::allocator<AUHostingServiceClient::create(AudioComponentDescription,NSString *,std::function<NSXPCConnection * ()(NSUUID *)>,NSUUID *)::$_0>,NSXPCConnection * ()(NSUUID *)>::__clone(v51, v49);
      (*&(*v54)[8]._os_unfair_lock_opaque)(v54);
      v54 = v50;
    }

    v50 = v49;
    std::__function::__value_func<NSXPCConnection * ()(NSUUID *)>::~__value_func[abi:ne200100](v51);
  }

  v37 = v22;
  v51[0] = v37;
  if (!v50)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v38 = (*&(*v50)[12]._os_unfair_lock_opaque)(v50, v51);

  if (v38)
  {
    operator new();
  }

  *a1 = 0;

  std::mutex::unlock(isa);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  std::__function::__value_func<NSXPCConnection * ()(NSUUID *)>::~__value_func[abi:ne200100](v49);
  v39 = *MEMORY[0x1E69E9840];
}

void sub_18F7B1CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::mutex *a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, os_unfair_lock_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, os_unfair_lock_t lock)
{
  if (lock)
  {
    os_unfair_lock_unlock(lock);
  }

  std::mutex::unlock(a12);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  std::__function::__value_func<NSXPCConnection * ()(NSUUID *)>::~__value_func[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<NSXPCConnection * ()(NSUUID *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

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

uint64_t std::__function::__value_func<NSXPCConnection * ()(NSUUID *)>::~__value_func[abi:ne200100](uint64_t a1)
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

char *getAUHostingProcessUUID(const AudioComponentDescription *a1)
{
  {
    getAUHostingProcessUUID(AudioComponentDescription const&)::the_uuid = [MEMORY[0x1E696AFB0] UUID];
  }

  v2 = &getAUHostingProcessUUID(AudioComponentDescription const&)::the_uuid;
  AUHostingInstantiationPolicy = getAUHostingInstantiationPolicy();
  if (AUHostingInstantiationPolicy)
  {
    if (AUHostingInstantiationPolicy == 1)
    {
      AUHostingServiceProcessManager::instance(lock);
      v2 = AUHostingServiceProcessManager::uuidForDescriptor(lock[1], a1->componentManufacturer);
      if (lock[0])
      {
        os_unfair_lock_unlock(lock[0]);
      }
    }
  }

  else
  {
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v5 = getAUHostingProcessUUID(AudioComponentDescription const&)::the_uuid;
    getAUHostingProcessUUID(AudioComponentDescription const&)::the_uuid = v4;
  }

  return v2;
}

void getAUHostingServiceInstance(NSUUID *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  AUHostingServiceProcessManager::instance(lock);
  v4 = lock[1];
  v5 = v3;
  v13 = 0uLL;
  [v5 getUUIDBytes:&v13];
  v12 = 16;
  *__p = v13;
  v11 = 0;
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<AUHostingServiceInstance>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AUHostingServiceInstance>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AUHostingServiceInstance>>>>::find<std::string>(&v4[6], __p);
  if (&v4[8] == v6)
  {
    operator new();
  }

  v7 = *(v6 + 64);
  a1->super.isa = *(v6 + 56);
  a1[1].super.isa = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (lock[0])
  {
    os_unfair_lock_unlock(lock[0]);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_18F7B235C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, os_unfair_lock_t lock)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);

  if (lock)
  {
    os_unfair_lock_unlock(lock);
  }

  _Unwind_Resume(a1);
}

void ___ZN22AUHostingServiceClientC2EP6NSUUIDP8NSStringNSt3__18functionIFP15NSXPCConnectionS1_EEES7_S1__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    caulk::log_category::log_category("com.apple.coreaudio", "AUHostingService", v6);
  }

  v2 = auhs_log_category(void)::category;
  if (os_log_type_enabled(auhs_log_category(void)::category, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "AUHostingServiceClient.mm";
    v9 = 1024;
    v10 = 238;
    _os_log_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d [AUHostingService Client] connection interrupted.", &v7, 0x12u);
  }

  v3 = *(a1 + 32);
  std::recursive_mutex::lock(v3);
  v4 = *(v3 + 88);
  if (v4)
  {
    (*(*v4 + 48))(v4);
  }

  std::recursive_mutex::unlock(v3);
  v5 = *MEMORY[0x1E69E9840];
}

void ___ZN22AUHostingServiceClientC2EP6NSUUIDP8NSStringNSt3__18functionIFP15NSXPCConnectionS1_EEES7_S1__block_invoke_104(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    caulk::log_category::log_category("com.apple.coreaudio", "AUHostingService", v6);
  }

  v2 = auhs_log_category(void)::category;
  if (os_log_type_enabled(auhs_log_category(void)::category, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "AUHostingServiceClient.mm";
    v9 = 1024;
    v10 = 242;
    _os_log_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d [AUHostingService Client] connection invalidated.", &v7, 0x12u);
  }

  v3 = *(a1 + 32);
  std::recursive_mutex::lock(v3);
  v4 = *(v3 + 88);
  if (v4)
  {
    (*(*v4 + 48))(v4);
  }

  std::recursive_mutex::unlock(v3);
  v5 = *MEMORY[0x1E69E9840];
}

void *caulk::xpc::sync_message<objc_object  {objcproto24AUHostingServiceProtocol}* {__strong}>::sync_message(void *a1, void *a2)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F032DFE0;
  v6[1] = a1;
  v6[3] = v6;
  v3 = a2;
  *a1 = v3;
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEEC2B8ne200100ERKS8_((a1 + 1), v6);

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v6);
  a1[5] = 0;
  v4 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_18F7B2700(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

id caulk::xpc::message<objc_object  {objcproto24AUHostingServiceProtocol}* {__strong}>::sync_proxy(void **a1)
{
  v9 = *MEMORY[0x1E69E9840];
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEEC2B8ne200100ERKS8_(v8, (a1 + 1));
  v2 = *a1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3321888768;
  v6[2] = ___ZN5caulk3xpc7messageIU8__strongPU35objcproto24AUHostingServiceProtocol11objc_objectJEE10sync_proxyEv_block_invoke;
  v6[3] = &__block_descriptor_64_ea8_32c50_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJEEEEEE_e17_v16__0__NSError_8l;
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEEC2B8ne200100ERKS8_(v7, v8);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v6];
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v7);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v8);
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

void sub_18F7B2814(_Unwind_Exception *a1)
{
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v1 + 32);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v2 - 56);
  _Unwind_Resume(a1);
}

id caulk::xpc::message<objc_object  {objcproto24AUHostingServiceProtocol}* {__strong}>::reply(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEEC2B8ne200100ERKS8_(v6, a1 + 8);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZN5caulk3xpc7messageIU8__strongPU35objcproto24AUHostingServiceProtocol11objc_objectJEE5replyEv_block_invoke;
  aBlock[3] = &__block_descriptor_64_ea8_32c50_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJEEEEEE_e17_v16__0__NSError_8l;
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEEC2B8ne200100ERKS8_(v5, v6);
  v1 = _Block_copy(aBlock);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v5);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v6);
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

uint64_t _ZNKSt3__110__function6__funcIZN5caulk3xpc12sync_messageIU8__strongPU35objcproto24AUHostingServiceProtocol11objc_objectJEEC1EP15NSXPCConnectionEUlP7NSErrorONS_5tupleIJEEEE_NS_9allocatorISG_EEFvSC_SF_EE7__cloneEPNS0_6__baseISJ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F032DFE0;
  a2[1] = v2;
  return result;
}

void __destroy_helper_block_ea8_32c105_ZTSKZN22AUHostingServiceClientC1EP6NSUUIDP8NSStringNSt3__18functionIFP15NSXPCConnectionS1_EEES7_S1_E3__0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_32c105_ZTSKZN22AUHostingServiceClientC1EP6NSUUIDP8NSStringNSt3__18functionIFP15NSXPCConnectionS1_EEES7_S1_E3__0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__shared_ptr_emplace<caulk::synchronized<AUHostingServiceClient::SharedState,std::recursive_mutex,caulk::empty_atomic_interface<AUHostingServiceClient::SharedState>>>::__on_zero_shared(uint64_t a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](a1 + 88);

  std::recursive_mutex::~recursive_mutex((a1 + 24));
}

void std::__shared_ptr_emplace<caulk::synchronized<AUHostingServiceClient::SharedState,std::recursive_mutex,caulk::empty_atomic_interface<AUHostingServiceClient::SharedState>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032DFA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

id std::__function::__func<AUHostingServiceClient::create(AudioComponentDescription,NSString *,std::function<NSXPCConnection * ()(NSUUID *)>,NSUUID *)::$_0,std::allocator<AUHostingServiceClient::create(AudioComponentDescription,NSString *,std::function<NSXPCConnection * ()(NSUUID *)>,NSUUID *)::$_0>,NSXPCConnection * ()(NSUUID *)>::operator()(uint64_t a1, id *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = v3;
  v6 = v4;
  {
    caulk::log_category::log_category("com.apple.coreaudio", "AUHostingService", v17);
  }

  v7 = auhs_log_category(void)::category;
  if (os_log_type_enabled(auhs_log_category(void)::category, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "AUHostingServiceClient.mm";
    v20 = 1024;
    v21 = 98;
    _os_log_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d Creating new client connection", buf, 0x12u);
  }

  v8 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:v6];
  [v8 resume];
  *buf = "listener-name";
  values = xpc_string_create("AUHostingServiceMain");
  v9 = xpc_dictionary_create(buf, &values, 1uLL);
  v10 = [v8 _xpcConnection];
  v11 = xpc_connection_send_message_with_reply_sync(v10, v9);

  if (object_getClass(v11) == MEMORY[0x1E69E9E98])
  {
    v14 = 0;
  }

  else
  {
    v12 = xpc_dictionary_get_value(v11, "listener-endpoint");
    v13 = objc_opt_new();
    [v13 _setEndpoint:v12];
    v14 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v13];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

void std::__function::__func<AUHostingServiceClient::create(AudioComponentDescription,NSString *,std::function<NSXPCConnection * ()(NSUUID *)>,NSUUID *)::$_0,std::allocator<AUHostingServiceClient::create(AudioComponentDescription,NSString *,std::function<NSXPCConnection * ()(NSUUID *)>,NSUUID *)::$_0>,NSXPCConnection * ()(NSUUID *)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

id std::__function::__func<AUHostingServiceClient::create(AudioComponentDescription,NSString *,std::function<NSXPCConnection * ()(NSUUID *)>,NSUUID *)::$_0,std::allocator<AUHostingServiceClient::create(AudioComponentDescription,NSString *,std::function<NSXPCConnection * ()(NSUUID *)>,NSUUID *)::$_0>,NSXPCConnection * ()(NSUUID *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F032DF60;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void std::__function::__func<AUHostingServiceClient::create(AudioComponentDescription,NSString *,std::function<NSXPCConnection * ()(NSUUID *)>,NSUUID *)::$_0,std::allocator<AUHostingServiceClient::create(AudioComponentDescription,NSString *,std::function<NSXPCConnection * ()(NSUUID *)>,NSUUID *)::$_0>,NSXPCConnection * ()(NSUUID *)>::~__func(uint64_t a1)
{

  JUMPOUT(0x193ADF220);
}

uint64_t getAUHostingInstantiationPolicy(void)
{
  v0 = getenv("CoreAudio_AUHostingServiceProcessesPolicy");
  if (!v0)
  {
    return 2;
  }

  v1 = v0;
  if (!strcmp(v0, "oneProcessPerHost"))
  {
    return 2;
  }

  if (!strcmp(v1, "oneProcessPerManufacturer"))
  {
    return 1;
  }

  result = strcmp(v1, "oneProcessPerAudioUnit");
  if (result)
  {
    return 2;
  }

  return result;
}

void AUHostingServiceProcessManager::instance(AUHostingServiceProcessManager *this)
{
  {
    AUHostingServiceProcessManager::instance(void)::manager = 0;
    qword_1EAD30F58 = 0;
    qword_1EAD30F50 = &qword_1EAD30F58;
    qword_1EAD30F78 = 0;
    qword_1EAD30F70 = 0;
    qword_1EAD30F60 = 0;
    unk_1EAD30F68 = &qword_1EAD30F70;
  }

  os_unfair_lock_lock(&AUHostingServiceProcessManager::instance(void)::manager);
  *this = &AUHostingServiceProcessManager::instance(void)::manager;
  *(this + 1) = &qword_1EAD30F50;
}

char *AUHostingServiceProcessManager::uuidForDescriptor(AUHostingServiceProcessManager *this, const AudioComponentDescription *a2)
{
  v2 = a2;
  v4 = this + 8;
  v3 = *(this + 1);
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = this + 8;
  do
  {
    v6 = *(v3 + 8);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * v8];
  }

  while (v3);
  if (v5 != v4 && *(v5 + 8) <= a2)
  {
    return v5 + 40;
  }

LABEL_9:
  v9 = [MEMORY[0x1E696AFB0] UUID];
  v10 = *v4;
  if (!*v4)
  {
LABEL_15:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v11 = v10;
      v12 = *(v10 + 32);
      if (v12 <= v2)
      {
        break;
      }

      v10 = *v11;
      if (!*v11)
      {
        goto LABEL_15;
      }
    }

    if (v12 >= v2)
    {
      break;
    }

    v10 = v11[1];
    if (!v10)
    {
      goto LABEL_15;
    }
  }

  v14 = v11[5];
  v13 = v11 + 5;
  *v13 = v9;

  return v13;
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<AUHostingServiceInstance>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AUHostingServiceInstance>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AUHostingServiceInstance>>>>::find<std::string>(uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<AUHostingServiceInstance>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<AUHostingServiceInstance>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<CA::ADMPackFormat>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<AUHostingServiceInstance>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032DF28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto24AUHostingServiceProtocol}* {__strong},unsigned int>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<unsigned int> &&)#1},std::allocator<std::tuple<unsigned int> &>,void ()(NSError,std::tuple<unsigned int>)>::operator()(uint64_t a1, id *a2, _DWORD *a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  *(v6 + 48) = *a3;
}

uint64_t std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto24AUHostingServiceProtocol}* {__strong},unsigned int>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<unsigned int> &&)#1},std::allocator<std::tuple<unsigned int> &>,void ()(NSError,std::tuple<unsigned int>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F032E028;
  a2[1] = v2;
  return result;
}

void AUHostingServiceClient::~AUHostingServiceClient(AUHostingServiceClient *this)
{
  v23 = *MEMORY[0x1E69E9840];
  getAUHostingServiceInstance(&v11, *this);
  v2 = v11;
  std::mutex::lock(v11);
  v3 = *(this + 5);
  aBlock = &unk_1F032E028;
  v18 = &v13;
  p_aBlock = &aBlock;
  v4 = v3;
  v13 = v4;
  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned int> &&)>::__value_func[abi:ne200100](v14, &aBlock);

  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned int> &&)>::~__value_func[abi:ne200100](&aBlock);
  v15 = 0;
  v16 = 0;
  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned int> &&)>::__value_func[abi:ne200100](v22, v14);
  v5 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 3321888768;
  v19 = ___ZN5caulk3xpc7messageIU8__strongPU35objcproto24AUHostingServiceProtocol11objc_objectJjEE10sync_proxyEv_block_invoke;
  p_aBlock = &__block_descriptor_64_ea8_32c51_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJjEEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned int> &&)>::__value_func[abi:ne200100](v21, v22);
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&aBlock];
  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned int> &&)>::~__value_func[abi:ne200100](v21);
  v7 = std::__function::__value_func<void ()(NSError *,std::tuple<unsigned int> &&)>::~__value_func[abi:ne200100](v22);
  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned int> &&)>::__value_func[abi:ne200100](v7, v14);
  aBlock = MEMORY[0x1E69E9820];
  v18 = 3321888768;
  v19 = ___ZN5caulk3xpc7messageIU8__strongPU35objcproto24AUHostingServiceProtocol11objc_objectJjEE5replyEv_block_invoke;
  p_aBlock = &__block_descriptor_64_ea8_32c51_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJjEEEEEE_e20_v20__0__NSError_8I16l;
  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned int> &&)>::__value_func[abi:ne200100](v21, v22);
  v8 = _Block_copy(&aBlock);
  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned int> &&)>::~__value_func[abi:ne200100](v21);
  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned int> &&)>::~__value_func[abi:ne200100](v22);
  [v6 closeHost:v8];

  [*(this + 5) invalidate];
  LOBYTE(v2[1].__m_.__sig) = v16 == 0;

  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned int> &&)>::~__value_func[abi:ne200100](v14);
  std::mutex::unlock(v2);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v9 = *(this + 8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::__function::__value_func<NSXPCConnection * ()(NSUUID *)>::~__value_func[abi:ne200100](this + 8);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_18F7B3694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    std::__function::__value_func<void ()(NSError *,std::tuple<unsigned int> &&)>::~__value_func[abi:ne200100](v18 - 120);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void AUHostingServiceClient::setInvalidationHandler(std::recursive_mutex *a1, uint64_t a2)
{
  std::recursive_mutex::lock(a1);
  std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](&a1[1], a2);
  if (a1)
  {

    std::recursive_mutex::unlock(a1);
  }
}

BOOL AUHostingServiceClient::loadRemotely(AUHostingServiceClient *this, AudioComponentDescription *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  CAFormatter::CAFormatter(&v18, a2);
  {
    caulk::log_category::log_category("com.apple.coreaudio", "AUHostingService", v16);
  }

  v5 = auhs_log_category(void)::category;
  if (os_log_type_enabled(auhs_log_category(void)::category, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "AUHostingServiceClient.mm";
    v22 = 1024;
    v23 = 308;
    v24 = 2080;
    v25 = v18;
    _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d Requesting to load Audio Unit remotely: %s", buf, 0x1Cu);
  }

  v6 = *(this + 9);
  if (v6)
  {
    v7 = [v6 UUIDString];
    [v4 setObject:v7 forKeyedSubscript:@"audioUnitInstanceUUID"];
  }

  caulk::xpc::sync_message<objc_object  {objcproto24AUHostingServiceProtocol}* {__strong}>::sync_message(buf, *(this + 5));
  v8 = caulk::xpc::message<objc_object  {objcproto24AUHostingServiceProtocol}* {__strong}>::sync_proxy(buf);
  *v19 = *&a2->componentType;
  *&v19[16] = a2->componentFlagsMask;
  v9 = caulk::xpc::message<objc_object  {objcproto24AUHostingServiceProtocol}* {__strong}>::reply(buf);
  [v8 loadAudioUnitInRemoteHost:v19 config:v4 reply:v9];

  v10 = v26;
  if (v26)
  {
    {
      caulk::log_category::log_category("com.apple.coreaudio", "AUHostingService", v17);
    }

    v11 = auhs_log_category(void)::category;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = v26;
      *v19 = 136315650;
      *&v19[4] = "AUHostingServiceClient.mm";
      *&v19[12] = 1024;
      *&v19[14] = 319;
      *&v19[18] = 2112;
      v20 = v12;
      _os_log_impl(&dword_18F5DF000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Error while loading Audio Unit in remote host: %@", v19, 0x1Cu);
    }

    v13 = v26;
  }

  else
  {
    v13 = 0;
  }

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(&buf[8]);
  if (v18)
  {
    free(v18);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v10 == 0;
}

void sub_18F7B3A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a10)
  {
    free(a10);
  }

  _Unwind_Resume(a1);
}

void sub_18F7B3FA4(_Unwind_Exception *a1)
{
  applesauce::CF::ArrayRef::~ArrayRef((v3 - 120));
  applesauce::CF::StringRef::~StringRef((v3 - 112));

  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<APComponent_NSExtension *,std::shared_ptr<APComponent_NSExtension>::__shared_ptr_default_delete<APComponent_NSExtension,APComponent_NSExtension>,std::allocator<APComponent_NSExtension>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void std::__shared_ptr_pointer<APComponent_NSExtension *,std::shared_ptr<APComponent_NSExtension>::__shared_ptr_default_delete<APComponent_NSExtension,APComponent_NSExtension>,std::allocator<APComponent_NSExtension>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

AudioComponentVector *AudioComponentVector::append(AudioComponentVector *this, const AudioComponentVector *a2, const AudioComponentVector *a3)
{
  v3 = this;
  v4 = a3 - a2;
  v5 = (a3 - a2) >> 4;
  if (v5 >= 1)
  {
    v6 = a2;
    end = this->__end_;
    cap = this->__cap_;
    if (cap - end >= v4)
    {
      v29 = this->__end_;
      v30 = end;
      v24 = this;
      p_begin = &v29;
      v26 = &v30;
      if (a2 != a3)
      {
        do
        {
          *end = v6->__begin_;
          v13 = v6->__end_;
          end[1] = v13;
          if (v13)
          {
            atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
          }

          v6 = (v6 + 16);
          end += 2;
        }

        while (v6 != a3);
        v30 = end;
      }

      LOBYTE(v27) = 1;
      this = std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<APComponent>>,std::shared_ptr<APComponent>*>>::~__exception_guard_exceptions[abi:ne200100](&v24);
      v3->__end_ = end;
    }

    else
    {
      v9 = end - this->__begin_;
      v10 = v5 + (v9 >> 4);
      if (v10 >> 60)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v11 = cap - this->__begin_;
      if (v11 >> 3 > v10)
      {
        v10 = v11 >> 3;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF0)
      {
        v12 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      v28 = v3;
      if (v12)
      {
        std::allocator<std::shared_ptr<CA::ADMContent>>::allocate_at_least[abi:ne200100](v12);
      }

      v14 = 16 * (v9 >> 4);
      v27 = 0;
      v15 = (v14 + v4);
      v16 = v14;
      do
      {
        *v16 = v6->__begin_;
        v17 = v6->__end_;
        *(v16 + 1) = v17;
        if (v17)
        {
          atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
        }

        v16 += 16;
        v6 = (v6 + 16);
      }

      while (v16 != v15);
      memcpy(v15, end, v3->__end_ - end);
      begin = v3->__begin_;
      v19 = &v15[(v3->__end_ - end)];
      v3->__end_ = end;
      v20 = end - begin;
      v21 = (v14 - (end - begin));
      memcpy(v21, begin, v20);
      v22 = v3->__begin_;
      v3->__begin_ = v21;
      v3->__end_ = v19;
      v23 = v3->__cap_;
      v3->__cap_ = v27;
      v26 = v22;
      v27 = v23;
      v24 = v22;
      p_begin = &v22->__begin_;
      this = std::__split_buffer<std::shared_ptr<unsigned char []>>::~__split_buffer(&v24);
    }
  }

  v3->mSorted = 0;
  return this;
}

uint64_t AudioComponentVector::remove(AudioComponentVector *this, APComponent *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v11[0] = &unk_1F032E0D0;
  v11[1] = &v10;
  v12 = v11;
  begin = this->__begin_;
  end = this->__end_;
  if (this->__begin_ != end)
  {
    while (1)
    {
      if (!v12)
      {
LABEL_16:
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v12 + 48))(v12, begin))
      {
        break;
      }

      begin += 16;
      if (begin == end)
      {
        begin = end;
        goto LABEL_15;
      }
    }

    if (begin != end)
    {
      for (i = begin + 16; i != end; i += 16)
      {
        if (!v12)
        {
          goto LABEL_16;
        }

        if (((*(*v12 + 48))(v12, i) & 1) == 0)
        {
          v6 = *i;
          *i = 0;
          *(i + 1) = 0;
          v7 = *(begin + 1);
          *begin = v6;
          if (v7)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v7);
          }

          begin += 16;
        }
      }
    }
  }

LABEL_15:
  std::vector<std::shared_ptr<APComponent>>::erase(this, begin, this->__end_);
  result = std::__function::__value_func<BOOL ()(std::shared_ptr<APComponent> &)>::~__value_func[abi:ne200100](v11);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F7B4A8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(std::shared_ptr<APComponent> &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(std::shared_ptr<APComponent> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AudioComponentVector::remove(APComponent *)::$_0,std::allocator<AudioComponentVector::remove(APComponent *)::$_0>,BOOL ()(std::shared_ptr<APComponent> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F032E0D0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AudioComponentVector::no_extensions_except(AudioComponentDescription &)::$_0,std::allocator<AudioComponentVector::no_extensions_except(AudioComponentDescription &)::$_0>,BOOL ()(APComponent &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F032E118;
  a2[1] = v2;
  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,AudioComponentVector::sort(void)::$_0 &,std::shared_ptr<APComponent> *,false>(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4)
{
LABEL_1:
  v118 = a2 - 2;
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = (a2 - v8) >> 4;
    v10 = v9 - 2;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sort(void)::$_0 &,std::shared_ptr<APComponent> *,0>(a1, a1 + 2, v118);
          return;
        case 4:
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sort(void)::$_0 &,std::shared_ptr<APComponent> *,0>(a1, a1 + 2, a1 + 4);
          if ((APComponent::Key::sortCompare((*v118 + 36), (a1[4] + 36), 0) & 0x80000000) != 0)
          {
            v50 = a1[4];
            a1[4] = *(a2 - 2);
            *(a2 - 2) = v50;
            v51 = a1[5];
            a1[5] = *(a2 - 1);
            *(a2 - 1) = v51;
            if ((APComponent::Key::sortCompare((a1[4] + 36), (a1[2] + 36), 0) & 0x80000000) != 0)
            {
              v53 = *(a1 + 1);
              v52 = *(a1 + 2);
              *(a1 + 1) = v52;
              *(a1 + 2) = v53;
              if ((APComponent::Key::sortCompare((v52 + 36), (*a1 + 36), 0) & 0x80000000) != 0)
              {
                v54 = *a1;
                *a1 = *(a1 + 1);
                *(a1 + 1) = v54;
              }
            }
          }

          return;
        case 5:

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sort(void)::$_0 &,std::shared_ptr<APComponent> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, v118);
          return;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        v47 = APComponent::Key::sortCompare((*v118 + 36), (*a1 + 36), 0);
        if (v47 < 0)
        {
          v48 = *a1;
          *a1 = *(a2 - 2);
          *(a2 - 2) = v48;
          v49 = a1[1];
          a1[1] = *(a2 - 1);
          *(a2 - 1) = v49;
        }

        return;
      }
    }

    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (a1 == a2)
      {
        return;
      }

      v117 = a2;
      v70 = v10 >> 1;
      v71 = v10 >> 1;
      do
      {
        v72 = v71;
        if (v70 >= v71)
        {
          v73 = (2 * v71) | 1;
          v74 = &a1[2 * v73];
          if (2 * v71 + 2 < v9 && APComponent::Key::sortCompare((*v74 + 36), (v74[2] + 36), 0) < 0)
          {
            v74 += 2;
            v73 = 2 * v72 + 2;
          }

          v75 = &a1[2 * v72];
          if ((APComponent::Key::sortCompare((*v74 + 36), (*v75 + 36), 0) & 0x80000000) == 0)
          {
            v76 = *v75;
            *v75 = 0;
            v75[1] = 0;
            v119 = v76;
            v77 = v76;
            do
            {
              v78 = v74;
              v79 = *v74;
              *v74 = 0;
              v74[1] = 0;
              v80 = v75[1];
              *v75 = v79;
              if (v80)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v80);
              }

              if (v70 < v73)
              {
                break;
              }

              v81 = (2 * v73) | 1;
              v74 = &a1[2 * v81];
              v73 = 2 * v73 + 2;
              if (v73 >= v9)
              {
                v73 = v81;
              }

              else if (APComponent::Key::sortCompare((*v74 + 36), (v74[2] + 36), 0) >= 0)
              {
                v73 = v81;
              }

              else
              {
                v74 += 2;
              }

              v75 = v78;
            }

            while ((APComponent::Key::sortCompare((*v74 + 36), (v77 + 36), 0) & 0x80000000) == 0);
            v82 = v78[1];
            *v78 = v119;
            if (v82)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v82);
            }
          }
        }

        v71 = v72 - 1;
      }

      while (v72);
      v83 = v117;
      while (2)
      {
        v84 = 0;
        v85 = v83;
        v86 = *a1;
        v120 = a1[1];
        *a1 = 0;
        a1[1] = 0;
        v87 = a1;
        do
        {
          v88 = &v87[2 * v84];
          v89 = (v88 + 2);
          v90 = (2 * v84) | 1;
          v84 = 2 * v84 + 2;
          if (v84 >= v9)
          {
            v84 = v90;
          }

          else
          {
            v92 = v88[4];
            v91 = (v88 + 4);
            if (APComponent::Key::sortCompare((*(v91 - 2) + 36), (v92 + 36), 0) >= 0)
            {
              v84 = v90;
            }

            else
            {
              v89 = v91;
            }
          }

          v93 = *v89;
          *v89 = 0;
          *(v89 + 1) = 0;
          v94 = v87[1];
          *v87 = v93;
          if (v94)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v94);
          }

          v87 = v89;
        }

        while (v84 <= ((v9 - 2) >> 1));
        v83 = v85 - 2;
        if (v89 == (v85 - 2))
        {
          v108 = *(v89 + 1);
          *v89 = v86;
          *(v89 + 1) = v120;
          if (!v108)
          {
            goto LABEL_140;
          }
        }

        else
        {
          v95 = *(v85 - 1);
          *v83 = 0;
          *(v85 - 1) = 0;
          v96 = *(v89 + 1);
          *v89 = v95;
          if (v96)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v96);
          }

          v97 = *(v85 - 1);
          *(v85 - 2) = v86;
          *(v85 - 1) = v120;
          if (v97)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v97);
          }

          v98 = (v89 + 16 - a1) >> 4;
          v99 = v98 < 2;
          v100 = v98 - 2;
          if (v99)
          {
            goto LABEL_140;
          }

          v101 = v100 >> 1;
          v102 = &a1[2 * (v100 >> 1)];
          if ((APComponent::Key::sortCompare((*v102 + 36), (*v89 + 36), 0) & 0x80000000) == 0)
          {
            goto LABEL_140;
          }

          v103 = *v89;
          v104 = *(v89 + 1);
          *v89 = 0;
          *(v89 + 1) = 0;
          do
          {
            v105 = v102;
            v106 = *v102;
            *v102 = 0;
            v102[1] = 0;
            v107 = *(v89 + 1);
            *v89 = v106;
            if (v107)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v107);
            }

            if (!v101)
            {
              break;
            }

            v101 = (v101 - 1) >> 1;
            v102 = &a1[2 * v101];
            v89 = v105;
          }

          while ((APComponent::Key::sortCompare((*v102 + 36), (v103 + 36), 0) & 0x80000000) != 0);
          v108 = v105[1];
          *v105 = v103;
          v105[1] = v104;
          if (!v108)
          {
LABEL_140:
            v99 = v9-- <= 2;
            if (v99)
            {
              return;
            }

            continue;
          }
        }

        break;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v108);
      goto LABEL_140;
    }

    v11 = v9 >> 1;
    v12 = &a1[2 * (v9 >> 1)];
    if (v9 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sort(void)::$_0 &,std::shared_ptr<APComponent> *,0>(&a1[2 * (v9 >> 1)], a1, v118);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sort(void)::$_0 &,std::shared_ptr<APComponent> *,0>(a1, &a1[2 * (v9 >> 1)], v118);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sort(void)::$_0 &,std::shared_ptr<APComponent> *,0>(a1 + 2, v12 - 2, a2 - 4);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sort(void)::$_0 &,std::shared_ptr<APComponent> *,0>(a1 + 4, &a1[2 * v11 + 2], a2 - 6);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sort(void)::$_0 &,std::shared_ptr<APComponent> *,0>(v12 - 2, &a1[2 * (v9 >> 1)], &a1[2 * v11 + 2]);
      v13 = *a1;
      *a1 = *v12;
      *v12 = v13;
    }

    --a3;
    if ((a4 & 1) != 0 || (APComponent::Key::sortCompare((*(a1 - 2) + 36), (*a1 + 36), 0) & 0x80000000) != 0)
    {
      v15 = *a1;
      v14 = a1[1];
      v16 = a1;
      *a1 = 0;
      a1[1] = 0;
      do
      {
        v17 = v16[2];
        v16 += 2;
      }

      while ((APComponent::Key::sortCompare((v17 + 36), (v15 + 36), 0) & 0x80000000) != 0);
      v18 = a2;
      if (v16 - 2 == a1)
      {
        v18 = a2;
        do
        {
          if (v16 >= v18)
          {
            break;
          }

          v20 = *(v18 - 2);
          v18 -= 2;
        }

        while ((APComponent::Key::sortCompare((v20 + 36), (v15 + 36), 0) & 0x80000000) == 0);
      }

      else
      {
        do
        {
          v19 = *(v18 - 2);
          v18 -= 2;
        }

        while ((APComponent::Key::sortCompare((v19 + 36), (v15 + 36), 0) & 0x80000000) == 0);
      }

      v8 = v16;
      if (v16 < v18)
      {
        v21 = v18;
        do
        {
          v22 = *v8;
          *v8 = *v21;
          *v21 = v22;
          v23 = v8[1];
          v8[1] = v21[1];
          v21[1] = v23;
          do
          {
            v24 = v8[2];
            v8 += 2;
          }

          while ((APComponent::Key::sortCompare((v24 + 36), (v15 + 36), 0) & 0x80000000) != 0);
          do
          {
            v25 = *(v21 - 2);
            v21 -= 2;
          }

          while ((APComponent::Key::sortCompare((v25 + 36), (v15 + 36), 0) & 0x80000000) == 0);
        }

        while (v8 < v21);
      }

      v26 = v8 - 2;
      if (v8 - 2 != a1)
      {
        v27 = *v26;
        *v26 = 0;
        *(v8 - 1) = 0;
        v28 = a1[1];
        *a1 = v27;
        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }
      }

      v29 = *(v8 - 1);
      *(v8 - 2) = v15;
      *(v8 - 1) = v14;
      if (v29)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }

      if (v16 < v18)
      {
        goto LABEL_38;
      }

      v30 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sort(void)::$_0 &,std::shared_ptr<APComponent> *>(a1, v8 - 2);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sort(void)::$_0 &,std::shared_ptr<APComponent> *>(v8, a2))
      {
        a2 = v8 - 2;
        if (v30)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v30)
      {
LABEL_38:
        std::__introsort<std::_ClassicAlgPolicy,AudioComponentVector::sort(void)::$_0 &,std::shared_ptr<APComponent> *,false>(a1, v8 - 2, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v32 = *a1;
      v31 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      if ((APComponent::Key::sortCompare((v32 + 36), (*v118 + 36), 0) & 0x80000000) != 0)
      {
        v8 = a1;
        do
        {
          v36 = v8[2];
          v8 += 2;
        }

        while ((APComponent::Key::sortCompare((v32 + 36), (v36 + 36), 0) & 0x80000000) == 0);
      }

      else
      {
        v33 = a1 + 2;
        do
        {
          v8 = v33;
          if (v33 >= a2)
          {
            break;
          }

          v34 = *v33;
          v35 = APComponent::Key::sortCompare((v32 + 36), (*v8 + 36), 0);
          v33 = v8 + 2;
        }

        while ((v35 & 0x80000000) == 0);
      }

      v37 = a2;
      if (v8 < a2)
      {
        v37 = a2;
        do
        {
          v38 = *(v37 - 2);
          v37 -= 2;
        }

        while ((APComponent::Key::sortCompare((v32 + 36), (v38 + 36), 0) & 0x80000000) != 0);
      }

      while (v8 < v37)
      {
        v39 = *v8;
        *v8 = *v37;
        *v37 = v39;
        v40 = v8[1];
        v8[1] = v37[1];
        v37[1] = v40;
        do
        {
          v41 = v8[2];
          v8 += 2;
        }

        while ((APComponent::Key::sortCompare((v32 + 36), (v41 + 36), 0) & 0x80000000) == 0);
        do
        {
          v42 = *(v37 - 2);
          v37 -= 2;
        }

        while ((APComponent::Key::sortCompare((v32 + 36), (v42 + 36), 0) & 0x80000000) != 0);
      }

      v43 = v8 - 2;
      if (v8 - 2 != a1)
      {
        v44 = *v43;
        *v43 = 0;
        *(v8 - 1) = 0;
        v45 = a1[1];
        *a1 = v44;
        if (v45)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        }
      }

      a4 = 0;
      v46 = *(v8 - 1);
      *(v8 - 2) = v32;
      *(v8 - 1) = v31;
      if (v46)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v46);
        a4 = 0;
      }
    }
  }

  v55 = a1 + 2;
  v57 = a1 == a2 || v55 == a2;
  if (a4)
  {
    if (!v57)
    {
      v58 = 0;
      v59 = a1;
      do
      {
        v60 = v59;
        v59 = v55;
        if ((APComponent::Key::sortCompare((v60[2] + 36), (*v60 + 36), 0) & 0x80000000) != 0)
        {
          v61 = *v59;
          v62 = v60[3];
          v63 = v58;
          *v59 = 0;
          v59[1] = 0;
          while (1)
          {
            v64 = a1 + v63;
            v65 = *(a1 + v63);
            *v64 = 0;
            *(v64 + 1) = 0;
            v66 = *(a1 + v63 + 24);
            *(v64 + 1) = v65;
            if (v66)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v66);
            }

            if (!v63)
            {
              break;
            }

            v67 = APComponent::Key::sortCompare((v61 + 36), (*(a1 + v63 - 16) + 36), 0);
            v63 -= 16;
            if ((v67 & 0x80000000) == 0)
            {
              v68 = (a1 + v63 + 16);
              goto LABEL_90;
            }
          }

          v68 = a1;
LABEL_90:
          v69 = v68[1];
          *v68 = v61;
          v68[1] = v62;
          if (v69)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v69);
          }
        }

        v55 = v59 + 2;
        v58 += 16;
      }

      while (v59 + 2 != a2);
    }
  }

  else if (!v57)
  {
    do
    {
      v109 = a1;
      a1 = v55;
      if ((APComponent::Key::sortCompare((v109[2] + 36), (*v109 + 36), 0) & 0x80000000) != 0)
      {
        v110 = *a1;
        v111 = v109[3];
        v112 = a1;
        *a1 = 0;
        a1[1] = 0;
        do
        {
          v113 = *(v112 - 1);
          *(v112 - 2) = 0;
          *(v112 - 1) = 0;
          v114 = v112[1];
          *v112 = v113;
          if (v114)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v114);
          }

          v115 = APComponent::Key::sortCompare((v110 + 36), (*(v112 - 4) + 36), 0);
          v112 -= 2;
        }

        while (v115 < 0);
        v116 = v112[1];
        *v112 = v110;
        v112[1] = v111;
        if (v116)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v116);
        }
      }

      v55 = a1 + 2;
    }

    while (a1 + 2 != a2);
  }
}

void sub_18F7B55DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sort(void)::$_0 &,std::shared_ptr<APComponent> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = APComponent::Key::sortCompare((*a2 + 36), (*a1 + 36), 0);
  result = APComponent::Key::sortCompare((*a3 + 36), (*a2 + 36), 0);
  if (v6 < 0)
  {
    v13 = *a1;
    if ((result & 0x80000000) != 0)
    {
      *a1 = *a3;
      *a3 = v13;
      v17 = a3 + 1;
      v12 = a1 + 1;
    }

    else
    {
      *a1 = *a2;
      v14 = a2[1];
      *a2 = v13;
      v15 = a1[1];
      a1[1] = v14;
      a2[1] = v15;
      result = APComponent::Key::sortCompare((*a3 + 36), (*a2 + 36), 0);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v17 = a3 + 1;
      v12 = a2 + 1;
    }

    v10 = v17;
    goto LABEL_10;
  }

  if ((result & 0x80000000) != 0)
  {
    v8 = *a2;
    *a2 = *a3;
    *a3 = v8;
    v10 = a2 + 1;
    v9 = a2[1];
    a2[1] = a3[1];
    a3[1] = v9;
    result = APComponent::Key::sortCompare((*a2 + 36), (*a1 + 36), 0);
    if ((result & 0x80000000) != 0)
    {
      v11 = *a1;
      *a1 = *a2;
      v12 = a1 + 1;
      *a2 = v11;
LABEL_10:
      v18 = *v12;
      *v12 = *v10;
      *v10 = v18;
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sort(void)::$_0 &,std::shared_ptr<APComponent> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sort(void)::$_0 &,std::shared_ptr<APComponent> *,0>(a1, a2, a3);
  if ((APComponent::Key::sortCompare((*a4 + 36), (*a3 + 36), 0) & 0x80000000) != 0)
  {
    v10 = *a3;
    *a3 = *a4;
    *a4 = v10;
    v11 = a3[1];
    a3[1] = a4[1];
    a4[1] = v11;
    if ((APComponent::Key::sortCompare((*a3 + 36), (*a2 + 36), 0) & 0x80000000) != 0)
    {
      v12 = *a2;
      *a2 = *a3;
      *a3 = v12;
      v13 = a2[1];
      a2[1] = a3[1];
      a3[1] = v13;
      if ((APComponent::Key::sortCompare((*a2 + 36), (*a1 + 36), 0) & 0x80000000) != 0)
      {
        v14 = *a1;
        *a1 = *a2;
        *a2 = v14;
        v15 = a1[1];
        a1[1] = a2[1];
        a2[1] = v15;
      }
    }
  }

  result = APComponent::Key::sortCompare((*a5 + 36), (*a4 + 36), 0);
  if ((result & 0x80000000) != 0)
  {
    v17 = *a4;
    *a4 = *a5;
    *a5 = v17;
    v18 = a4[1];
    a4[1] = a5[1];
    a5[1] = v18;
    result = APComponent::Key::sortCompare((*a4 + 36), (*a3 + 36), 0);
    if ((result & 0x80000000) != 0)
    {
      v19 = *a3;
      *a3 = *a4;
      *a4 = v19;
      v20 = a3[1];
      a3[1] = a4[1];
      a4[1] = v20;
      result = APComponent::Key::sortCompare((*a3 + 36), (*a2 + 36), 0);
      if ((result & 0x80000000) != 0)
      {
        v21 = *a2;
        *a2 = *a3;
        *a3 = v21;
        v22 = a2[1];
        a2[1] = a3[1];
        a3[1] = v22;
        result = APComponent::Key::sortCompare((*a2 + 36), (*a1 + 36), 0);
        if ((result & 0x80000000) != 0)
        {
          v23 = *a1;
          *a1 = *a2;
          *a2 = v23;
          v24 = a1[1];
          a1[1] = a2[1];
          a2[1] = v24;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sort(void)::$_0 &,std::shared_ptr<APComponent> *>(uint64_t *a1, uint64_t *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sort(void)::$_0 &,std::shared_ptr<APComponent> *,0>(a1, a1 + 2, a2 - 2);
        break;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sort(void)::$_0 &,std::shared_ptr<APComponent> *,0>(a1, a1 + 2, a1 + 4);
        if ((APComponent::Key::sortCompare((*(a2 - 2) + 36), (a1[4] + 36), 0) & 0x80000000) != 0)
        {
          v20 = a1[4];
          a1[4] = *(a2 - 2);
          *(a2 - 2) = v20;
          v21 = a1[5];
          a1[5] = *(a2 - 1);
          *(a2 - 1) = v21;
          if ((APComponent::Key::sortCompare((a1[4] + 36), (a1[2] + 36), 0) & 0x80000000) != 0)
          {
            v23 = *(a1 + 1);
            v22 = *(a1 + 2);
            *(a1 + 1) = v22;
            *(a1 + 2) = v23;
            if ((APComponent::Key::sortCompare((v22 + 36), (*a1 + 36), 0) & 0x80000000) != 0)
            {
              v24 = *a1;
              *a1 = *(a1 + 1);
              *(a1 + 1) = v24;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sort(void)::$_0 &,std::shared_ptr<APComponent> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if ((APComponent::Key::sortCompare((*(a2 - 2) + 36), (*a1 + 36), 0) & 0x80000000) != 0)
    {
      v5 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v5;
      v6 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_11:
  v7 = a1 + 4;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sort(void)::$_0 &,std::shared_ptr<APComponent> *,0>(a1, a1 + 2, a1 + 4);
  v8 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    if ((APComponent::Key::sortCompare((*v8 + 36), (*v7 + 36), 0) & 0x80000000) != 0)
    {
      v12 = *v8;
      v11 = v8[1];
      v13 = v9;
      *v8 = 0;
      v8[1] = 0;
      while (1)
      {
        v14 = a1 + v13;
        v15 = *(a1 + v13 + 32);
        *(v14 + 4) = 0;
        *(v14 + 5) = 0;
        v16 = *(a1 + v13 + 56);
        *(v14 + 3) = v15;
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        if (v13 == -32)
        {
          break;
        }

        v17 = APComponent::Key::sortCompare((v12 + 36), (*(a1 + v13 + 16) + 36), 0);
        v13 -= 16;
        if ((v17 & 0x80000000) == 0)
        {
          v18 = (a1 + v13 + 48);
          goto LABEL_21;
        }
      }

      v18 = a1;
LABEL_21:
      v19 = v18[1];
      *v18 = v12;
      v18[1] = v11;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      if (++v10 == 8)
      {
        return v8 + 2 == a2;
      }
    }

    v7 = v8;
    v9 += 16;
    v8 += 2;
    if (v8 == a2)
    {
      return 1;
    }
  }
}

void sub_18F7B5BE0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *,0>(a1, a2, a3);
  if ((APComponent::Key::sortCompare((*a4 + 36), (*a3 + 36), 1) & 0x80000000) != 0)
  {
    v10 = *a3;
    *a3 = *a4;
    *a4 = v10;
    v11 = a3[1];
    a3[1] = a4[1];
    a4[1] = v11;
    if ((APComponent::Key::sortCompare((*a3 + 36), (*a2 + 36), 1) & 0x80000000) != 0)
    {
      v12 = *a2;
      *a2 = *a3;
      *a3 = v12;
      v13 = a2[1];
      a2[1] = a3[1];
      a3[1] = v13;
      if ((APComponent::Key::sortCompare((*a2 + 36), (*a1 + 36), 1) & 0x80000000) != 0)
      {
        v14 = *a1;
        *a1 = *a2;
        *a2 = v14;
        v15 = a1[1];
        a1[1] = a2[1];
        a2[1] = v15;
      }
    }
  }

  result = APComponent::Key::sortCompare((*a5 + 36), (*a4 + 36), 1);
  if ((result & 0x80000000) != 0)
  {
    v17 = *a4;
    *a4 = *a5;
    *a5 = v17;
    v18 = a4[1];
    a4[1] = a5[1];
    a5[1] = v18;
    result = APComponent::Key::sortCompare((*a4 + 36), (*a3 + 36), 1);
    if ((result & 0x80000000) != 0)
    {
      v19 = *a3;
      *a3 = *a4;
      *a4 = v19;
      v20 = a3[1];
      a3[1] = a4[1];
      a4[1] = v20;
      result = APComponent::Key::sortCompare((*a3 + 36), (*a2 + 36), 1);
      if ((result & 0x80000000) != 0)
      {
        v21 = *a2;
        *a2 = *a3;
        *a3 = v21;
        v22 = a2[1];
        a2[1] = a3[1];
        a3[1] = v22;
        result = APComponent::Key::sortCompare((*a2 + 36), (*a1 + 36), 1);
        if ((result & 0x80000000) != 0)
        {
          v23 = *a1;
          *a1 = *a2;
          *a2 = v23;
          v24 = a1[1];
          a1[1] = a2[1];
          a2[1] = v24;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *>(uint64_t *a1, uint64_t *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = 1;
        if ((APComponent::Key::sortCompare((*(a2 - 2) + 36), (*a1 + 36), 1) & 0x80000000) != 0)
        {
          v6 = *a1;
          *a1 = *(a2 - 2);
          *(a2 - 2) = v6;
          v7 = a1[1];
          a1[1] = *(a2 - 1);
          *(a2 - 1) = v7;
        }

        return v5;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *,0>(a1, a1 + 2, a2 - 2);
      return 1;
    case 4:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *,0>(a1, a1 + 2, a1 + 4);
      v5 = 1;
      if ((APComponent::Key::sortCompare((*(a2 - 2) + 36), (a1[4] + 36), 1) & 0x80000000) != 0)
      {
        v22 = a1[4];
        a1[4] = *(a2 - 2);
        *(a2 - 2) = v22;
        v23 = a1[5];
        a1[5] = *(a2 - 1);
        *(a2 - 1) = v23;
        if ((APComponent::Key::sortCompare((a1[4] + 36), (a1[2] + 36), 1) & 0x80000000) != 0)
        {
          v25 = *(a1 + 1);
          v24 = *(a1 + 2);
          *(a1 + 1) = v24;
          *(a1 + 2) = v25;
          if ((APComponent::Key::sortCompare((v24 + 36), (*a1 + 36), 1) & 0x80000000) != 0)
          {
            v26 = *a1;
            *a1 = *(a1 + 1);
            *(a1 + 1) = v26;
          }
        }
      }

      return v5;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
      return 1;
  }

LABEL_11:
  v8 = a1 + 4;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,AudioComponentVector::sorted_copy_disregarding_version(void)::$_0 &,std::shared_ptr<APComponent> *,0>(a1, a1 + 2, a1 + 4);
  v9 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    if ((APComponent::Key::sortCompare((*v9 + 36), (*v8 + 36), 1) & 0x80000000) != 0)
    {
      v13 = *v9;
      v12 = v9[1];
      v14 = v10;
      *v9 = 0;
      v9[1] = 0;
      while (1)
      {
        v15 = a1 + v14;
        v16 = *(a1 + v14 + 32);
        *(v15 + 4) = 0;
        *(v15 + 5) = 0;
        v17 = *(a1 + v14 + 56);
        *(v15 + 3) = v16;
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        if (v14 == -32)
        {
          break;
        }

        v18 = APComponent::Key::sortCompare((v13 + 36), (*(a1 + v14 + 16) + 36), 1);
        v14 -= 16;
        if ((v18 & 0x80000000) == 0)
        {
          v19 = (a1 + v14 + 48);
          goto LABEL_21;
        }
      }

      v19 = a1;
LABEL_21:
      v20 = v19[1];
      *v19 = v13;
      v19[1] = v12;
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      if (++v11 == 8)
      {
        return v9 + 2 == a2;
      }
    }

    v8 = v9;
    v10 += 16;
    v9 += 2;
    if (v9 == a2)
    {
      return 1;
    }
  }
}

void sub_18F7B6050(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void AudioComponentVector::showAll(AudioComponentVector *this, const char *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = AudioComponentRegistrarClient;
  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  v5 = *gAudioComponentLogCategory;
  if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_DEBUG))
  {
    v7 = (this->__end_ - this->__begin_) >> 4;
    *buf = 136315906;
    v29 = "AudioComponentVector.mm";
    v30 = 1024;
    v31 = 157;
    v32 = 2080;
    v33 = a2;
    v34 = 1024;
    v35 = v7;
    _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: %d AudioComponents:", buf, 0x22u);
  }

  begin = this->__begin_;
  end = this->__end_;
  if (begin != end)
  {
    v23 = end;
    do
    {
      v10 = (*(*&(*begin)->mType + 80))();
      if (v10)
      {
        v11 = *(v10 + 160);
        if (v11)
        {
          CFRetain(*(v10 + 160));
          CFRelease(v11);
        }
      }

      else
      {
        v11 = &stru_1F0340B48;
      }

      p_isa = &v4[23].superclass->isa;
      if (!p_isa)
      {
        operator new();
      }

      v13 = *p_isa;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v15 = v4;
        v16 = *begin;
        to_string(*begin + 3, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        mType = (*begin)[4].mType;
        mManufacturer = (*begin)[4].mManufacturer;
        v24 = (*begin)[5].mType;
        APComponent::name(&v26, *&(*begin)[5].mSubType);
        v20 = v26;
        if (v26)
        {
          APComponent::name(&v25, *&(*begin)[5].mSubType);
          v21 = v25;
          *buf = 136317442;
          v29 = "AudioComponentVector.mm";
          v30 = 1024;
          v31 = 168;
          v32 = 2048;
          v33 = v16;
          v34 = 1040;
          v35 = 28;
          v36 = 2080;
          v37 = p_p;
          v38 = 1024;
          v39 = mType;
          v40 = 1024;
          v41 = mManufacturer;
          v42 = 1024;
          v43 = v24;
          v44 = 2112;
          v45 = v25;
          v46 = 2112;
          v47 = v11;
          _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d   %p: %-28.28s f%08x v%08x %3d %@ %@", buf, 0x52u);
          if (v21)
          {
            CFRelease(v21);
          }

          CFRelease(v20);
          v4 = v15;
          end = v23;
        }

        else
        {
          *buf = 136317442;
          v29 = "AudioComponentVector.mm";
          v30 = 1024;
          v31 = 168;
          v32 = 2048;
          v33 = v16;
          v34 = 1040;
          v35 = 28;
          v36 = 2080;
          v37 = p_p;
          v38 = 1024;
          v39 = mType;
          v40 = 1024;
          v41 = mManufacturer;
          v42 = 1024;
          v43 = v24;
          v44 = 2112;
          v45 = &stru_1F0340B48;
          v46 = 2112;
          v47 = v11;
          _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d   %p: %-28.28s f%08x v%08x %3d %@ %@", buf, 0x52u);
          v4 = v15;
          end = v23;
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      begin += 2;
    }

    while (begin != end);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void sub_18F7B647C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

id dictionaryFromComponentDescription(const AudioComponentDescription *a1, uint64_t a2)
{
  v12[4] = *MEMORY[0x1E69E9840];
  v11[0] = @"type";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1->componentType];
  v12[0] = v4;
  v11[1] = @"subtype";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1->componentSubType];
  v12[1] = v5;
  v11[2] = @"manufacturer";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1->componentManufacturer];
  v12[2] = v6;
  v11[3] = @"version";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  v12[3] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void dictionaryToComponentDescription(NSDictionary *a1, AudioComponentDescription *a2, unsigned int *a3)
{
  v9 = a1;
  v5 = [(NSDictionary *)v9 objectForKeyedSubscript:@"type"];
  a2->componentType = [v5 unsignedIntValue];

  v6 = [(NSDictionary *)v9 objectForKeyedSubscript:@"subtype"];
  a2->componentSubType = [v6 unsignedIntValue];

  v7 = [(NSDictionary *)v9 objectForKeyedSubscript:@"manufacturer"];
  a2->componentManufacturer = [v7 unsignedIntValue];

  a2->componentFlags = 0;
  a2->componentFlagsMask = 0;
  v8 = [(NSDictionary *)v9 objectForKeyedSubscript:@"version"];
  *a3 = [v8 unsignedIntValue];
}

uint64_t MP4BoxParser_SampleGroupDescription::Init(MP4BoxParser **this)
{
  *&v35[4] = *MEMORY[0x1E69E9840];
  v2 = MP4BoxParser_Full::Initialize(this);
  if (v2)
  {
    goto LABEL_44;
  }

  if (*(this + 5) != 1936158820)
  {
    v2 = 4294967294;
    goto LABEL_44;
  }

  v3 = (*(*this + 3))(this);
  v4 = *(this + 56);
  v5 = 16;
  if (v4 == 1)
  {
    v5 = 12;
  }

  if (*(this + 56))
  {
    v6 = v5;
  }

  else
  {
    v6 = 8;
  }

  v7 = this[3];
  v8 = (*(*this + 3))(this);
  v9 = this[3];
  if (v7 <= v8 || v9 < v6)
  {
    if (v9 > (*(*this + 3))(this) && this[3] >= 4)
    {
      v12 = MP4BoxParser::ReadDataSourceBytes(this[1], v3, 4uLL, &v32);
      if (v12)
      {
        v2 = v12;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v28 = 136315394;
          v29 = "MP4_BoxParser_SampleGroupDescription.cpp";
          v30 = 1024;
          v31 = 165;
          v13 = MEMORY[0x1E69E9C10];
          v14 = "%25s:%-5d  couldn't read grouping type";
LABEL_21:
          _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_ERROR, v14, &v28, 0x12u);
          goto LABEL_44;
        }

        goto LABEL_44;
      }

      v11 = v32;
    }

    *(this + 16) = bswap32(v11);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = 136315394;
      v29 = "MP4_BoxParser_SampleGroupDescription.cpp";
      v30 = 1024;
      v31 = 169;
      v21 = MEMORY[0x1E69E9C10];
      v22 = "%25s:%-5d  'sgpd' box is too small for its basic contents";
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v15 = MP4BoxParser::ReadDataSourceBytes(this[1], v3, v6, &v32);
  if (!v15)
  {
    v16 = bswap32(v32);
    *(this + 16) = v16;
    if (v4)
    {
      v17 = bswap32(v33);
      *(this + 17) = v17;
      if (v4 == 1)
      {
        v18 = &v34;
        goto LABEL_35;
      }

      v18 = v35;
      *(this + 72) = 1;
      v19 = bswap32(v34);
      v20 = 76;
    }

    else
    {
      v18 = &v33;
      v19 = 2;
      v20 = 68;
      if (v16 == 1886547820)
      {
        v17 = 2;
      }

      else
      {
        v17 = 2;
        if (v16 != 1919904876)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v28 = 136315394;
            v29 = "MP4_BoxParser_SampleGroupDescription.cpp";
            v30 = 1024;
            v31 = 183;
            v21 = MEMORY[0x1E69E9C10];
            v22 = "%25s:%-5d  'sgpd' box has sample group entries of unknown size";
LABEL_42:
            _os_log_impl(&dword_18F5DF000, v21, OS_LOG_TYPE_ERROR, v22, &v28, 0x12u);
          }

LABEL_43:
          v2 = 0;
          *(this + 60) = 0;
          goto LABEL_44;
        }
      }
    }

    *(this + v20) = v19;
LABEL_35:
    v23 = bswap32(*v18);
    *(this + 20) = v23;
    this[11] = v6;
    v24 = this[3];
    if (v24 > (*(*this + 3))(this))
    {
      v25 = v17 ? v17 : 4;
      if (this[3] >= v6 + v25 * v23)
      {
        v2 = 0;
        *(this + 60) = 1;
        goto LABEL_44;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    v28 = 136315394;
    v29 = "MP4_BoxParser_SampleGroupDescription.cpp";
    v30 = 1024;
    v31 = 206;
    v21 = MEMORY[0x1E69E9C10];
    v22 = "%25s:%-5d  'sbgp' box is too small for its group description entries";
    goto LABEL_42;
  }

  v2 = v15;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v28 = 136315394;
    v29 = "MP4_BoxParser_SampleGroupDescription.cpp";
    v30 = 1024;
    v31 = 173;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "%25s:%-5d  couldn't read 'sgpd' box fields";
    goto LABEL_21;
  }

LABEL_44:
  v26 = *MEMORY[0x1E69E9840];
  return v2;
}

void MP4BoxParser_SampleGroupDescription::~MP4BoxParser_SampleGroupDescription(MP4BoxParser_SampleGroupDescription *this)
{
  MP4BoxParser_SampleGroupDescription::~MP4BoxParser_SampleGroupDescription(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = off_1F032E160;
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

uint64_t FLACPackStreamInfo(uint64_t a1, uint64_t a2)
{
  AT::TBitstreamWriter<unsigned int>::PutBits(a1, *a2, 0x10u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a1, *(a2 + 4), 0x10u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a1, *(a2 + 8), 0x18u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a1, *(a2 + 12), 0x18u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a1, *(a2 + 16), 0x14u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a1, *(a2 + 20) - 1, 3u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a1, *(a2 + 24) - 1, 5u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a1, *(a2 + 32) >> 4, 0x20u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a1, *(a2 + 32), 4u);
  v4 = 0;
  v5 = a2 + 40;
  do
  {
    AT::TBitstreamWriter<unsigned int>::PutBits(a1, *(v5 + v4++), 8u);
  }

  while (v4 != 16);

  return AT::TBitstreamWriter<unsigned int>::Flush(a1);
}

unsigned int **FLACUnpackStreamInfo(unsigned int **result, uint64_t a2)
{
  v3 = *(result + 6);
  v2 = *(result + 7);
  v4 = HIWORD(v3);
  v5 = v2 - 16;
  *(result + 7) = v2 - 16;
  if (v2 - 16 < 0)
  {
    v8 = result[1];
    v7 = result[2];
    v9 = *result;
    if (((v7 - *result) & ~((v7 - *result) >> 63) & 0xFFFFFFFC) == 0 || v8 > v9)
    {
      v11 = 4;
      v12 = *result;
      do
      {
        v13 = v3 << 8;
        *(result + 6) = v13;
        v14 = 255;
        if (v12 < v7 && v12 >= v8)
        {
          v14 = *v12;
        }

        v3 = v14 | v13;
        *(result + 6) = v3;
        v12 = (v12 + 1);
        --v11;
      }

      while (v11);
    }

    else
    {
      v3 = bswap32(*v9);
      *(result + 6) = v3;
    }

    v15 = v9 + 1;
    *result = v9 + 1;
    v5 = v2 + 16;
    *(result + 7) = v2 + 16;
    v4 |= v3 >> (v2 + 16);
    if (v2 == -16)
    {
      v16 = 0;
      v6 = 0;
      *a2 = v4;
      result[3] = 0xFFFFFFF000000000;
      goto LABEL_19;
    }

    v6 = v3 << (16 - v2);
  }

  else
  {
    v6 = v3 << 16;
  }

  *a2 = v4;
  v16 = HIWORD(v6);
  v17 = v5 - 16;
  *(result + 6) = v6;
  *(result + 7) = v5 - 16;
  if (v5 - 16 >= 0)
  {
    v18 = v6 << 16;
    goto LABEL_31;
  }

  v8 = result[1];
  v7 = result[2];
  v15 = *result;
LABEL_19:
  if (((v7 - v15) & ~((v7 - v15) >> 63) & 0xFFFFFFFC) == 0 || v8 > v15)
  {
    v20 = 4;
    v21 = v15;
    do
    {
      v22 = v6 << 8;
      *(result + 6) = v22;
      v23 = 255;
      if (v21 < v7 && v21 >= v8)
      {
        v23 = *v21;
      }

      v6 = v23 | v22;
      *(result + 6) = v6;
      v21 = (v21 + 1);
      --v20;
    }

    while (v20);
  }

  else
  {
    v6 = bswap32(*v15);
    *(result + 6) = v6;
  }

  v24 = v15 + 1;
  *result = v15 + 1;
  v17 = v5 + 16;
  *(result + 7) = v5 + 16;
  v16 |= v6 >> (v5 + 16);
  if (v5 == -16)
  {
    v25 = 0;
    v18 = 0;
    *(a2 + 4) = v16;
    result[3] = 0xFFFFFFE800000000;
    goto LABEL_35;
  }

  v18 = v6 << (16 - v5);
LABEL_31:
  *(a2 + 4) = v16;
  v25 = v18 >> 8;
  v26 = v17 - 24;
  *(result + 6) = v18;
  *(result + 7) = v17 - 24;
  if (v17 - 24 >= 0)
  {
    v27 = v18 << 24;
    goto LABEL_45;
  }

  v8 = result[1];
  v7 = result[2];
  v24 = *result;
LABEL_35:
  if (((v7 - v24) & ~((v7 - v24) >> 63) & 0xFFFFFFFC) != 0 && v8 <= v24)
  {
    v18 = bswap32(*v24);
    *(result + 6) = v18;
  }

  else
  {
    v28 = 4;
    v29 = v24;
    do
    {
      v30 = v18 << 8;
      *(result + 6) = v30;
      v31 = 255;
      if (v29 < v7 && v29 >= v8)
      {
        v31 = *v29;
      }

      v18 = v31 | v30;
      *(result + 6) = v18;
      v29 = (v29 + 1);
      --v28;
    }

    while (v28);
  }

  v32 = v24 + 1;
  *result = v32;
  v26 = v17 + 8;
  v25 |= v18 >> (v17 + 8);
  if (v17 == -8)
  {
    v33 = 0;
    v27 = 0;
    *(a2 + 8) = v25;
    result[3] = 0xFFFFFFE800000000;
    goto LABEL_49;
  }

  v27 = v18 << (24 - v17);
LABEL_45:
  *(a2 + 8) = v25;
  v33 = v27 >> 8;
  v34 = v26 - 24;
  *(result + 6) = v27;
  *(result + 7) = v26 - 24;
  if (v26 - 24 >= 0)
  {
    v35 = v27 << 24;
    goto LABEL_59;
  }

  v8 = result[1];
  v7 = result[2];
  v32 = *result;
LABEL_49:
  if (((v7 - v32) & ~((v7 - v32) >> 63) & 0xFFFFFFFC) != 0 && v8 <= v32)
  {
    v27 = bswap32(*v32);
  }

  else
  {
    v36 = 4;
    v37 = v32;
    do
    {
      v38 = v27 << 8;
      *(result + 6) = v38;
      v39 = 255;
      if (v37 < v7 && v37 >= v8)
      {
        v39 = *v37;
      }

      v27 = v39 | v38;
      *(result + 6) = v27;
      v37 = (v37 + 1);
      --v36;
    }

    while (v36);
  }

  v40 = v32 + 1;
  *result = v40;
  v34 = v26 + 8;
  v33 |= v27 >> (v26 + 8);
  if (v26 == -8)
  {
    v41 = 0;
    v35 = 0;
    *(a2 + 12) = v33;
    result[3] = 0xFFFFFFEC00000000;
    goto LABEL_63;
  }

  v35 = v27 << (24 - v26);
LABEL_59:
  *(a2 + 12) = v33;
  v41 = v35 >> 12;
  v42 = v34 - 20;
  *(result + 6) = v35;
  *(result + 7) = v34 - 20;
  if (v34 - 20 >= 0)
  {
    v43 = v35 << 20;
    goto LABEL_73;
  }

  v8 = result[1];
  v7 = result[2];
  v40 = *result;
LABEL_63:
  if (((v7 - v40) & ~((v7 - v40) >> 63) & 0xFFFFFFFC) != 0 && v8 <= v40)
  {
    v35 = bswap32(*v40);
  }

  else
  {
    v44 = 4;
    v45 = v40;
    do
    {
      v46 = v35 << 8;
      *(result + 6) = v46;
      v47 = 255;
      if (v45 < v7 && v45 >= v8)
      {
        v47 = *v45;
      }

      v35 = v47 | v46;
      *(result + 6) = v35;
      v45 = (v45 + 1);
      --v44;
    }

    while (v44);
  }

  v48 = v40 + 1;
  *result = v48;
  v42 = v34 + 12;
  v41 |= v35 >> (v34 + 12);
  if (v34 == -12)
  {
    v49 = 0;
    v43 = 0;
    *(a2 + 16) = v41;
    result[3] = 0xFFFFFFFD00000000;
    goto LABEL_77;
  }

  v43 = v35 << (20 - v34);
LABEL_73:
  *(a2 + 16) = v41;
  v49 = v43 >> 29;
  v50 = v42 - 3;
  *(result + 6) = v43;
  *(result + 7) = v42 - 3;
  if (v42 - 3 >= 0)
  {
    v51 = 8 * v43;
    goto LABEL_87;
  }

  v8 = result[1];
  v7 = result[2];
  v48 = *result;
LABEL_77:
  if (((v7 - v48) & ~((v7 - v48) >> 63) & 0xFFFFFFFC) != 0 && v8 <= v48)
  {
    v43 = bswap32(*v48);
  }

  else
  {
    v52 = 4;
    v53 = v48;
    do
    {
      v54 = v43 << 8;
      *(result + 6) = v54;
      v55 = 255;
      if (v53 < v7 && v53 >= v8)
      {
        v55 = *v53;
      }

      v43 = v55 | v54;
      *(result + 6) = v43;
      v53 = (v53 + 1);
      --v52;
    }

    while (v52);
  }

  v56 = v48 + 1;
  *result = v56;
  v50 = v42 + 29;
  v49 |= v43 >> (v42 + 29);
  if (v42 == -29)
  {
    v57 = 0;
    v51 = 0;
    *(a2 + 20) = v49 + 1;
    result[3] = 0xFFFFFFFB00000000;
    goto LABEL_91;
  }

  v51 = v43 << (3 - v42);
LABEL_87:
  *(a2 + 20) = v49 + 1;
  v57 = v51 >> 27;
  v58 = v50 - 5;
  *(result + 6) = v51;
  *(result + 7) = v50 - 5;
  if (v50 - 5 >= 0)
  {
    v59 = 32 * v51;
    goto LABEL_101;
  }

  v8 = result[1];
  v7 = result[2];
  v56 = *result;
LABEL_91:
  if (((v7 - v56) & ~((v7 - v56) >> 63) & 0xFFFFFFFC) != 0 && v8 <= v56)
  {
    v51 = bswap32(*v56);
  }

  else
  {
    v60 = 4;
    v61 = v56;
    do
    {
      v62 = v51 << 8;
      *(result + 6) = v62;
      v63 = 255;
      if (v61 < v7 && v61 >= v8)
      {
        v63 = *v61;
      }

      v51 = v63 | v62;
      *(result + 6) = v51;
      v61 = (v61 + 1);
      --v60;
    }

    while (v60);
  }

  v58 = v50 + 27;
  *result = v56 + 1;
  v57 |= v51 >> (v50 + 27);
  v59 = v51 << (5 - v50);
  if (v50 == -27)
  {
    v59 = 0;
  }

LABEL_101:
  *(a2 + 24) = v57 + 1;
  *(result + 6) = v59;
  *(result + 7) = v58 - 32;
  if (v58 - 32 < 0)
  {
    v66 = result[1];
    v65 = result[2];
    v67 = *result;
    if (((v65 - *result) & ~((v65 - *result) >> 63) & 0xFFFFFFFC) == 0 || v66 > v67)
    {
      v69 = 4;
      v70 = *result;
      v73 = v59;
      do
      {
        v71 = v73 << 8;
        *(result + 6) = v71;
        v72 = 255;
        if (v70 < v65 && v70 >= v66)
        {
          v72 = *v70;
        }

        v73 = v72 | v71;
        *(result + 6) = v73;
        v70 = (v70 + 1);
        --v69;
      }

      while (v69);
    }

    else
    {
      v73 = bswap32(*v67);
      *(result + 6) = v73;
    }

    v74 = v67 + 1;
    *result = v67 + 1;
    v64 = (v73 >> v58) | v59;
    if (!v58)
    {
      v76 = 0;
      v59 = 0;
      v75 = 16 * v64;
      result[3] = 0xFFFFFFFC00000000;
      goto LABEL_119;
    }

    v59 = v73 << -v58;
    *(result + 6) = v59;
  }

  else
  {
    v58 -= 32;
    v64 = v59;
  }

  v75 = 16 * v64;
  v76 = v59 >> 28;
  *(result + 7) = v58 - 4;
  if (v58 - 4 >= 0)
  {
    v77 = 16 * v59;
    goto LABEL_130;
  }

  v66 = result[1];
  v65 = result[2];
  v74 = *result;
LABEL_119:
  if (((v65 - v74) & ~((v65 - v74) >> 63) & 0xFFFFFFFC) != 0 && v66 <= v74)
  {
    v59 = bswap32(*v74);
  }

  else
  {
    v78 = 4;
    v79 = v74;
    do
    {
      v80 = v59 << 8;
      *(result + 6) = v80;
      v81 = 255;
      if (v79 < v65 && v79 >= v66)
      {
        v81 = *v79;
      }

      v59 = v81 | v80;
      *(result + 6) = v59;
      v79 = (v79 + 1);
      --v78;
    }

    while (v78);
  }

  v82 = v59 << (4 - v58);
  v83 = v58 + 28;
  *(result + 7) = v83;
  *result = v74 + 1;
  v76 |= v59 >> v83;
  if (v83)
  {
    v77 = v82;
  }

  else
  {
    v77 = 0;
  }

LABEL_130:
  v84 = 0;
  *(result + 6) = v77;
  *(a2 + 32) = v75 + v76;
  v85 = a2 + 40;
  do
  {
    v87 = *(result + 6);
    v86 = *(result + 7);
    v88 = HIBYTE(v87);
    *(result + 7) = v86 - 8;
    if (v86 - 8 < 0)
    {
      v91 = result[1];
      v90 = result[2];
      v92 = *result;
      if (((v90 - *result) & ~((v90 - *result) >> 63) & 0xFFFFFFFC) == 0 || v91 > v92)
      {
        v94 = 4;
        v95 = *result;
        do
        {
          v96 = v87 << 8;
          *(result + 6) = v96;
          v97 = 255;
          if (v95 < v90 && v95 >= v91)
          {
            v97 = *v95;
          }

          v87 = v97 | v96;
          *(result + 6) = v87;
          v95 = (v95 + 1);
          --v94;
        }

        while (v94);
      }

      else
      {
        v87 = bswap32(*v92);
      }

      v98 = v87 << (8 - v86);
      v99 = v86 + 24;
      *(result + 7) = v99;
      *result = v92 + 1;
      v88 |= v87 >> v99;
      if (v99)
      {
        v89 = v98;
      }

      else
      {
        v89 = 0;
      }
    }

    else
    {
      v89 = v87 << 8;
    }

    *(result + 6) = v89;
    *(v85 + v84++) = v88;
  }

  while (v84 != 16);
  return result;
}

void ACQEventManager::ACQEventManager(ACQEventManager *this)
{
  v1 = 0;
  GetACQEventManager(void)::sACQEventManager[0] = 0;
  qword_1EAD0E650 = 0;
  do
  {
    v2 = &GetACQEventManager(void)::sACQEventManager[v1];
    *(v2 + 11) = 0;
    v2[96] = 0;
    v2[120] = 0;
    *(v2 + 32) = 0;
    *(v2 + 4) = 0;
    *(v2 + 5) = 0;
    *(v2 + 3) = 0;
    *(v2 + 12) = 0;
    v1 += 120;
    *(v2 + 7) = 0;
    *(v2 + 8) = 0;
  }

  while (v1 != 1920);
  qword_1EAD0EDD8 = 0;
  v3 = &dword_1EAD0EE50;
  v4 = 1920;
  do
  {
    *(v3 - 5) = 0;
    *(v3 - 32) = 0;
    *(v3 - 8) = 0;
    *v3 = 0;
    *(v3 - 12) = 0;
    *(v3 - 11) = 0;
    *(v3 - 13) = 0;
    *(v3 - 20) = 0;
    *(v3 - 9) = 0;
    *(v3 - 8) = 0;
    v3 += 30;
    v4 -= 120;
  }

  while (v4);
  byte_1EAD0F560 = 0;
  *(&byte_1EAD0F560 + 122920) = 0;
  if (CACFPreferencesGetAppBooleanValue(@"acq_event_trace", @"com.apple.coreaudio", 0))
  {
    if (byte_1EAD2D588 == 1)
    {
      if (byte_1EAD2D580 == 1)
      {
        std::thread::~thread(&byte_1EAD2D578);
      }

      MEMORY[0x193ADE990](&byte_1EAD0F560);
      *(&byte_1EAD0F560 + 122920) = 0;
    }

    caulk::semaphore::semaphore(&byte_1EAD0F560);
    qword_1EAD0F570 = 0;
    v5 = &dword_1EAD0F5E8;
    v6 = 122880;
    do
    {
      *(v5 - 5) = 0;
      *(v5 - 32) = 0;
      *(v5 - 8) = 0;
      *v5 = 0;
      *(v5 - 12) = 0;
      *(v5 - 11) = 0;
      *(v5 - 13) = 0;
      *(v5 - 20) = 0;
      *(v5 - 9) = 0;
      *(v5 - 8) = 0;
      v5 += 30;
      v6 -= 120;
    }

    while (v6);
    byte_1EAD2D578 = 0;
    byte_1EAD2D580 = 0;
    operator new();
  }
}

void sub_18F7B7780(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  if (byte_1EAD2D580 == 1)
  {
    std::thread::~thread(&byte_1EAD2D578);
  }

  MEMORY[0x193ADE990](&byte_1EAD0F560);
  std::optional<ACQTraceState>::~optional();
  _Unwind_Resume(a1);
}

void std::optional<ACQTraceState>::~optional()
{
  if (byte_1EAD2D588 == 1)
  {
    if (byte_1EAD2D580 == 1)
    {
      std::thread::~thread(&byte_1EAD2D578);
    }

    JUMPOUT(0x193ADE990);
  }
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,ACQTraceState::ACQTraceState(void)::$_0>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x193ADF220](v3, 0x20C40A4A59CD2);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x193ADEF30]();
    MEMORY[0x193ADF220](v3, 0x20C4093837F09);
  }

  return a1;
}

void std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,ACQTraceState::ACQTraceState(void)::$_0>>(uint64_t a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  ACQTraceState::HandleLogging(*(a1 + 8));
}

void sub_18F7B7928(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,ACQTraceState::ACQTraceState(void)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ACQTraceState::HandleLogging(ACQTraceState *this)
{
  ACQLog = GetACQLog();
  for (i = 0; ; i = (i + 1) & 0x3FFLL)
  {
    caulk::semaphore::timed_wait(this, -1.0);
    LogEvent(ACQLog, this + 30 * i + 6, v4);
  }
}

uint64_t GetACQLog(void)
{
  v0 = &unk_1EAD30000;
  {
    v0 = &unk_1EAD30000;
    if (v2)
    {
      GetACQLog(void)::sACQLog = os_log_create("com.apple.coreaudio", "acq");
      v0 = &unk_1EAD30000;
    }
  }

  return v0[499];
}

void LogEvent(NSObject *a1, int *a2, char *a3)
{
  v59 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(a2 + 28);
  if (!*(a2 + 1) || !*(a2 + 2) || !*(a2 + 3))
  {
    goto LABEL_40;
  }

  localtime_r(a2 + 7, &v56);
  strftime(a3, 0x80uLL, "%H:%M:%S.", &v56);
  v39 = *(a2 + 8);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v45);
  v42 = *(a2 + 104);
  if (*(a2 + 104))
  {
    v6 = a2 + 20;
  }

  else
  {
    v6 = 0;
  }

  v38 = v6;
  v7._os_unfair_lock_opaque = *a2;
  v8 = *(a2 + 2);
  v9 = *(a2 + 3);
  v10 = *(a2 + 1);
  v11 = a2[8];
  v40 = *(a2 + 6);
  v41 = *(a2 + 5);
  v12 = *(a2 + 9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "ACQ event: ", 11);
  if (v42)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "seqNum(", 7);
    v13 = MEMORY[0x193ADEE60](&v46, a2[20]);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "), ", 3);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "tid(", 4);
  v14 = MEMORY[0x193ADEEB0](&v46, v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "), ", 3);
  v15 = strlen(v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, v10, v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, ", ", 2);
  v16 = "pre-dispatch";
  if (v7._os_unfair_lock_opaque == 1)
  {
    v16 = "block start";
  }

  if (v7._os_unfair_lock_opaque == 2)
  {
    v17 = "block end";
  }

  else
  {
    v17 = v16;
  }

  v18 = strlen(v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, v17, v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, ", ", 2);
  v19 = strlen(v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, v9, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, ":", 1);
  v20 = MEMORY[0x193ADEE50](&v46, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ", ", 2);
  v21 = strlen(v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v8, v21);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ", args(", 7);
  v22 = MEMORY[0x193ADEEB0](v20, v41);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ",", 1);
  v24 = MEMORY[0x193ADEEB0](v23, v40);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ")", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, ", ", 2);
  v25 = strlen(a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, a3, v25);
  v26 = v46;
  v27 = &v46 + *(v46 - 24);
  if (*(v27 + 36) == -1)
  {
    std::ios_base::getloc((&v46 + *(v46 - 24)));
    v28 = std::locale::use_facet(&__dst, MEMORY[0x1E69E5318]);
    (v28->__vftable[2].~facet_0)(v28, 32);
    std::locale::~locale(&__dst);
    v26 = v46;
  }

  *(v27 + 36) = 48;
  *(v49 + *(v26 - 24)) = 6;
  MEMORY[0x193ADEEB0](&v46, v39 / 1000);
  if (v7._os_unfair_lock_opaque && v42)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, ", diff(", 7);
    v29 = v46;
    *(&v46 + *(v46 - 24) + 8) = *(&v46 + *(v46 - 24) + 8) & 0xFFFFFEFB | 4;
    *(&v48.__locale_ + *(v29 - 24)) = 2;
    v30 = ((1000000 * (*(a2 + 7) - *(v38 + 1))) + ((*(a2 + 8) - *(v38 + 2)) / 1000)) / 1000.0;
    v31 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "ms)", 3);
  }

  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    if ((v54 & 0x10) != 0)
    {
      v33 = v53;
      if (v53 < v50)
      {
        v53 = v50;
        v33 = v50;
      }

      v34 = v49[3];
    }

    else
    {
      if ((v54 & 8) == 0)
      {
        v32 = 0;
        v44 = 0;
LABEL_33:
        *(&__dst.__locale_ + v32) = 0;
        p_dst = &__dst;
        if (v44 < 0)
        {
          p_dst = __dst.__locale_;
        }

        *buf = 136315138;
        v58 = p_dst;
        _os_log_impl(&dword_18F5DF000, a1, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
        if (v44 < 0)
        {
          operator delete(__dst.__locale_);
        }

        goto LABEL_37;
      }

      v34 = v49[0];
      v33 = v49[2];
    }

    v32 = v33 - v34;
    if (v33 - v34 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v32 >= 0x17)
    {
      operator new();
    }

    v44 = v33 - v34;
    if (v32)
    {
      memmove(&__dst, v34, v32);
    }

    goto LABEL_33;
  }

LABEL_37:
  v45[0] = *MEMORY[0x1E69E54D8];
  v36 = *(MEMORY[0x1E69E54D8] + 72);
  *(v45 + *(v45[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v46 = v36;
  v47 = MEMORY[0x1E69E5548] + 16;
  if (v52 < 0)
  {
    operator delete(__p);
  }

  v47 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v48);
  std::iostream::~basic_iostream();
  MEMORY[0x193ADF120](&v55);
LABEL_40:
  os_unfair_lock_unlock(a2 + 28);
  v37 = *MEMORY[0x1E69E9840];
}

void sub_18F7B80F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a12);
  MEMORY[0x193ADF120](va);
  os_unfair_lock_unlock(v27 + 28);
  _Unwind_Resume(a1);
}

void LogACQEvents()
{
  v9 = *MEMORY[0x1E69E9840];
  GetACQEventManager();
  if ((atomic_exchange(GetACQEventManager(void)::sACQEventManager, 1u) & 1) == 0)
  {
    ACQLog = GetACQLog();
    v1 = atomic_load(&qword_1EAD0E650);
    v2 = 16;
    do
    {
      v3 = v1 & 0xF;
      LogEvent(ACQLog, &GetACQEventManager(void)::sACQEventManager[120 * (v1 & 0xF) + 16], v8);
      v1 = v3 + 1;
      --v2;
    }

    while (v2);
    v4 = atomic_load(&qword_1EAD0EDD8);
    v5 = 16;
    do
    {
      v6 = v4 & 0xF;
      LogEvent(ACQLog, &GetACQEventManager(void)::sACQEventManager[120 * (v4 & 0xF) + 1944], v8);
      v4 = v6 + 1;
      --v5;
    }

    while (v5);
  }

  v7 = *MEMORY[0x1E69E9840];
}

os_workgroup_interval_t AudioWorkIntervalCreate(const char *name, os_clockid_t clock, os_workgroup_attr_t attr)
{
  v23 = *MEMORY[0x1E69E9840];
  memset(v20, 0, sizeof(v20));
  v19 = 0u;
  v18 = 0u;
  v17 = 799564724;
  if (os_workgroup_attr_set_interval_type())
  {
    std::terminate();
  }

  v3 = os_workgroup_interval_create_with_workload_id();
  v5 = caulk::mach::details::retain_os_object(v3, v4);
  caulk::mach::details::release_os_object(0, v6);
  v14[0] = MEMORY[0x1E69E3C18] + 16;
  v14[1] = v5;
  v15 = 0u;
  memset(v16, 0, sizeof(v16));
  v8 = caulk::mach::details::release_os_object(0, v7);
  v9 = auoop::gWorkgroupManager(v8);
  if (kAUExtensionScope)
  {
    v10 = *kAUExtensionScope;
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AUOOPWorkgroups.mm";
    *&buf[12] = 1024;
    *&buf[14] = 106;
    _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUOOPWorkgroupManager: newWorkIntervalCreated.", buf, 0x12u);
  }

LABEL_9:
  *buf = &unk_1F0337378;
  *&buf[8] = v14;
  v22 = buf;
  auoop::WorkgroupManager_Base::mutateWorkgroups(v9, buf);
  std::__function::__value_func<BOOL ()(auoop::WorkgroupManager_Base::State &)>::~__value_func[abi:ne200100](buf);
  caulk::mach::os_workgroup_managed::~os_workgroup_managed(v14);
  v12 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_18F7B8408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__function::__value_func<BOOL ()(auoop::WorkgroupManager_Base::State &)>::~__value_func[abi:ne200100](v9 - 80);
  caulk::mach::os_workgroup_managed::~os_workgroup_managed(&a9);
  _Unwind_Resume(a1);
}

uint64_t CA::ADMBuilder::Impl::parse_channel_format(CA::ADMBuilder::Impl *this, char *__s1, const char **a3)
{
  v99 = *MEMORY[0x1E69E9840];
  v6 = *(*this + 128);
  if (!strcmp(__s1, "audioBlockFormat"))
  {
    buf[0] = 0;
    BYTE4(v41) = 0;
    v43[2] = 0;
    v43[26] = 0;
    v44[0] = 0;
    v44[24] = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    LOBYTE(v62) = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v78[28] = 0;
    v78[32] = 0;
    v78[36] = 0;
    v78[40] = 0;
    v78[44] = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    LOBYTE(v94) = 0;
    v96 = 0;
    v97 = 0;
    v98 = 0;
    v77 = 0u;
    memset(v78, 0, 25);
    memset(v86, 0, sizeof(v86));
    LOBYTE(v87) = 0;
    if (a3)
    {
      v24 = *a3;
      if (*a3)
      {
        v25 = (a3 + 2);
        do
        {
          v26 = *(v25 - 1);
          if (!strcmp(v24, "audioBlockFormatID"))
          {
            std::optional<std::string>::operator=[abi:ne200100]<char const* const&,void>(buf, v26);
          }

          else if (!strcmp(v24, "rtime"))
          {
            CA::ADMTime::parse(v26, __p);
            if ((__p[24] & 1) == 0)
            {
              *(this + 158) = -66604;
            }

            *&v43[2] = *__p;
            *&v43[11] = *&__p[9];
          }

          else if (!strcmp(v24, "duration"))
          {
            CA::ADMTime::parse(v26, __p);
            if ((__p[24] & 1) == 0)
            {
              *(this + 158) = -66604;
            }

            *v44 = *__p;
            *&v44[9] = *&__p[9];
          }

          v27 = *v25;
          v25 += 2;
          v24 = v27;
        }

        while (v27);
      }
    }

    v28 = *(v6 - 16);
    v29 = v28[19];
    if (v29 >= v28[20])
    {
      v30 = std::vector<CA::ADMBlockFormat>::__emplace_back_slow_path<CA::ADMBlockFormat>(v28 + 18, buf);
    }

    else
    {
      std::allocator_traits<std::allocator<CA::ADMBlockFormat>>::construct[abi:ne200100]<CA::ADMBlockFormat,CA::ADMBlockFormat,void,0>(v28[19], buf);
      v30 = v29 + 480;
      v28[19] = v29 + 480;
    }

    v28[19] = v30;
    v31 = *(this + 71) - 24;
    __p[0] = 0;
    __p[24] = 0;
    std::vector<std::optional<std::string>>::push_back[abi:ne200100](v31, __p);
    if (__p[24] == 1 && (__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v32 = (*(this + 74) - 24);
    memset(__p, 0, 24);
    std::vector<std::vector<std::string>>::push_back[abi:ne200100](v32, __p);
    v36 = __p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v36);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::clear(this + 800);
    if (v96 == 1 && v95 < 0)
    {
      operator delete(v94);
    }

    if (v89 == 1 && v88 < 0)
    {
      operator delete(v87);
    }

    *__p = v86;
    std::vector<CA::ADMZone>::__destroy_vector::operator()[abi:ne200100](__p);
    *__p = v78;
    std::vector<CA::ADMMatrixCoefficient>::__destroy_vector::operator()[abi:ne200100](__p);
    if (*(&v77 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v77 + 1));
    }

    if (v64 == 1 && v63 < 0)
    {
      operator delete(v62);
    }

    if (BYTE4(v41) == 1 && SBYTE3(v41) < 0)
    {
      operator delete(*buf);
    }

    v23 = 63;
  }

  else
  {
    v7 = strcmp(__s1, "frequency");
    if (!v7)
    {
      if (a3)
      {
        v7 = *a3;
        if (*a3)
        {
          v8 = (a3 + 2);
          while (1)
          {
            v9 = *(v8 - 1);
            if (!strcmp(v7, "typeDefinition"))
            {
              break;
            }

LABEL_31:
            v20 = *v8;
            v8 += 2;
            v7 = v20;
            if (!v20)
            {
              goto LABEL_32;
            }
          }

          v10 = strcmp(v9, "lowPass");
          if (v10)
          {
            v11 = strcmp(v9, "highPass");
            if (v11)
            {
              v12 = CA::ADMBuilder::Impl::log(v11);
              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(__p, *(v6 - 16), "");
                v13 = __p;
                if (__p[23] < 0)
                {
                  v13 = *__p;
                }

                *buf = 136315906;
                *&buf[4] = "ADMBuilderParseChannelFormat.cpp";
                v38 = 1024;
                v39 = 66;
                v40 = 2080;
                v41 = v9;
                v42 = 2080;
                *v43 = v13;
                _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown type definition '%s' for frequency of channel format '%s'", buf, 0x26u);
                if ((__p[23] & 0x80000000) != 0)
                {
                  operator delete(*__p);
                }
              }

              v14 = -66588;
              goto LABEL_28;
            }

            if (*(*(v6 - 16) + 140) != 1)
            {
              operator new();
            }

            v18 = CA::ADMBuilder::Impl::log(v11);
            if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
LABEL_27:
              v14 = -66586;
LABEL_28:
              *(this + 158) = v14;
              goto LABEL_31;
            }

            std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(__p, *(v6 - 16), "");
            v19 = __p;
            if (__p[23] < 0)
            {
              v19 = *__p;
            }

            *buf = 136315650;
            *&buf[4] = "ADMBuilderParseChannelFormat.cpp";
            v38 = 1024;
            v39 = 56;
            v40 = 2080;
            v41 = v19;
            v17 = v18;
          }

          else
          {
            if (*(*(v6 - 16) + 132) != 1)
            {
              operator new();
            }

            v15 = CA::ADMBuilder::Impl::log(v10);
            if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_27;
            }

            std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(__p, *(v6 - 16), "");
            v16 = __p;
            if (__p[23] < 0)
            {
              v16 = *__p;
            }

            *buf = 136315650;
            *&buf[4] = "ADMBuilderParseChannelFormat.cpp";
            v38 = 1024;
            v39 = 46;
            v40 = 2080;
            v41 = v16;
            v17 = v15;
          }

          _os_log_impl(&dword_18F5DF000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Multiple lowPass values for channel format '%s'", buf, 0x1Cu);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          goto LABEL_27;
        }
      }

LABEL_32:
      v21 = CA::ADMBuilder::Impl::log(v7);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(__p, *(v6 - 16), "");
        if (__p[23] >= 0)
        {
          v22 = __p;
        }

        else
        {
          v22 = *__p;
        }

        *buf = 136315650;
        *&buf[4] = "ADMBuilderParseChannelFormat.cpp";
        v38 = 1024;
        v39 = 74;
        v40 = 2080;
        v41 = v22;
        _os_log_impl(&dword_18F5DF000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Missing type definition for frequency of channel format '%s'", buf, 0x1Cu);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

      *(this + 158) = -66587;
    }

    v23 = 1;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v23;
}

void std::vector<std::optional<std::string>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (32 * v7);
    *v11 = 0;
    v11[24] = 0;
    if (*(a2 + 24) == 1)
    {
      *v11 = *a2;
      *(32 * v7 + 0x10) = *(a2 + 2);
      *(a2 + 1) = 0;
      *(a2 + 2) = 0;
      *a2 = 0;
      *(32 * v7 + 0x18) = 1;
    }

    v6 = v11 + 32;
    v12 = *a1;
    v13 = *(a1 + 8) - *a1;
    v14 = &v11[-v13];
    memcpy(&v11[-v13], *a1, v13);
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v3 = 0;
    *(v3 + 24) = 0;
    if (*(a2 + 24) == 1)
    {
      v5 = *a2;
      *(v3 + 16) = *(a2 + 2);
      *v3 = v5;
      *(a2 + 1) = 0;
      *(a2 + 2) = 0;
      *a2 = 0;
      *(v3 + 24) = 1;
    }

    v6 = (v3 + 32);
  }

  *(a1 + 8) = v6;
}

size_t *std::vector<std::vector<std::string>>::push_back[abi:ne200100](size_t *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v15[4] = v2;
    if (v9)
    {
      std::allocator<std::vector<std::string>>::allocate_at_least[abi:ne200100](v9);
    }

    v10 = 24 * v6;
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *v10 = *a2;
    *(v10 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = 24 * v6 + 24;
    v11 = v2[1] - *v2;
    v12 = v10 - v11;
    memcpy((v10 - v11), *v2, v11);
    v13 = *v2;
    *v2 = v12;
    v2[1] = v5;
    v14 = v2[2];
    v2[2] = 0;
    v15[2] = v13;
    v15[3] = v14;
    v15[0] = v13;
    v15[1] = v13;
    result = std::__split_buffer<std::vector<std::string>>::~__split_buffer(v15);
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = *a2;
    v3[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = (v3 + 3);
  }

  v2[1] = v5;
  return result;
}

void std::allocator<std::vector<std::string>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<std::string>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t AIFFAudioStream::ParseHeader(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 362);
  v5 = *(a1 + 236);
  if (v5 <= 99)
  {
    if (v5 > 69)
    {
      if (v5 != 70)
      {
        if (v5 == 87)
        {
          v12 = *(a1 + 256);
          v13 = *(a1 + 264);
          goto LABEL_32;
        }

        goto LABEL_30;
      }

      v10 = *(a1 + 256);
      v8 = *(a1 + 8);
      v11 = *(a1 + 264);
    }

    else
    {
      if (v5 == -1)
      {
        return 0;
      }

      if (v5)
      {
        goto LABEL_30;
      }

      v8 = *(a1 + 8);
      v76 = 1;
      if ((*(v8 + 104) & 1) == 0)
      {
        *(v8 + 104) = 1;
        v9 = *(v8 + 24);
        if (v9)
        {
          v9(*(v8 + 40), *(v8 + 8), 1717988724, &v76);
          v8 = *(a1 + 8);
        }
      }

      *(a1 + 296) = *(v8 + 96);
      *(a1 + 352) = 0u;
      *(a1 + 368) = 0u;
      v10 = 12;
      *(a1 + 256) = 12;
      v11 = (a1 + 332);
      *(a1 + 264) = a1 + 332;
    }

    v76 = v10;
    StreamBuffer::Copy((v8 + 72), &v76, v11);
    v17 = v76;
    v18 = *(a1 + 256);
    *(a1 + 264) += v76;
    v19 = v18 - v17;
    *(a1 + 256) = v19;
    if (v19)
    {
      result = 0;
      v22 = 70;
LABEL_73:
      *(a1 + 236) = v22;
      return result;
    }

    v20 = *(a1 + 340);
    v21 = bswap32(v20);
    *(a1 + 340) = v21;
    if (v21 == 1095321155 || v21 == 1095321158)
    {
      *(a1 + 16) = v21;
      *(a1 + 400) = v20 == 1128679745;
      *(a1 + 296) += 12;
      goto LABEL_66;
    }

    *(a1 + 177) = 1;
    *(a1 + 236) = -1;
    return 1685348671;
  }

  if (v5 <= 118)
  {
    if (v5 == 100)
    {
      v25 = *(a1 + 256);
      v15 = *(a1 + 264);
      goto LABEL_38;
    }

    if (v5 == 104)
    {
      v14 = *(a1 + 256);
      v15 = *(a1 + 264);
      goto LABEL_62;
    }

LABEL_30:
    result = 0;
    v22 = -1;
    goto LABEL_73;
  }

  if (v5 != 119)
  {
    if (v5 == 159)
    {
      v26 = *(a1 + 256);
      v27 = *(a1 + 264);
      goto LABEL_46;
    }

    if (v5 == 166)
    {
      v6 = *(a1 + 256);
      v7 = *(a1 + 264);
LABEL_42:
      v76 = v6;
      StreamBuffer::Copy((*(a1 + 8) + 72), &v76, v7);
      v36 = v76;
      v37 = *(a1 + 256);
      *(a1 + 264) += v76;
      v38 = v37 - v36;
      *(a1 + 256) = v38;
      if (v38)
      {
        result = 0;
        v22 = 166;
      }

      else
      {
        *(a1 + 128) = *(a1 + 348);
        v39 = *(a1 + 8);
        v76 = 1;
        *(v39 + 108) = 1;
        v40 = *(v39 + 24);
        if (!v40)
        {
          goto LABEL_65;
        }

        v41 = *(v39 + 40);
        v42 = *(v39 + 8);
        v43 = 1835493731;
LABEL_50:
        v40(v41, v42, v43, &v76);
        while (1)
        {
          while (1)
          {
            while (1)
            {
LABEL_65:
              v61 = *(a1 + 296) + *(a1 + 348);
              *(a1 + 296) = v61;
              *(*(a1 + 8) + 96) = v61;
LABEL_66:
              v12 = 8;
              *(a1 + 256) = 8;
              v13 = (a1 + 344);
              *(a1 + 264) = a1 + 344;
LABEL_32:
              v76 = v12;
              StreamBuffer::Copy((*(a1 + 8) + 72), &v76, v13);
              v28 = v76;
              v29 = *(a1 + 256);
              *(a1 + 264) += v76;
              v30 = v29 - v28;
              *(a1 + 256) = v30;
              if (v30)
              {
                result = 0;
                v22 = 87;
                goto LABEL_73;
              }

              v31 = vrev32_s8(*(a1 + 344));
              *(a1 + 344) = v31;
              *(a1 + 296) += 8;
              if (v31.i32[0] <= 1397968451)
              {
                break;
              }

              if (v31.i32[0] == 2002876005)
              {
                CADeprecated::CAAutoFree<unsigned char>::alloc((a1 + 120), v31.i32[1], 0);
                v6 = *(a1 + 348);
                *(a1 + 256) = v6;
                v7 = *(a1 + 120);
                *(a1 + 264) = v7;
                goto LABEL_42;
              }

              if (v31.i32[0] == 1397968452)
              {
                *(a1 + 384) = __PAIR64__(v31.u32[1], 1397968452);
                v23 = 8;
                *(a1 + 256) = 8;
                v24 = (a1 + 392);
                *(a1 + 264) = a1 + 392;
                goto LABEL_53;
              }
            }

            if (v31.i32[0] == 1128808782)
            {
              break;
            }

            if (v31.i32[0] == 1129270605)
            {
              v15 = (a1 + 360);
              if (*(a1 + 400) == 1)
              {
                v25 = 22;
                *(a1 + 256) = 22;
                *(a1 + 264) = v15;
LABEL_38:
                v76 = v25;
                StreamBuffer::Copy((*(a1 + 8) + 72), &v76, v15);
                v32 = v76;
                v33 = *(a1 + 256);
                *(a1 + 264) += v76;
                v34 = v33 - v32;
                *(a1 + 256) = v34;
                if (v34)
                {
                  result = 0;
                  v22 = 100;
                  goto LABEL_73;
                }

                *(a1 + 352) = vrev32_s8(*(a1 + 352));
                *(a1 + 360) = bswap32(*(a1 + 360)) >> 16;
                *v4 = bswap32(*v4);
                *(a1 + 366) = bswap32(*(a1 + 366)) >> 16;
                v35 = bswap32(v4[4]);
              }

              else
              {
                v14 = 18;
                *(a1 + 256) = 18;
                *(a1 + 264) = v15;
LABEL_62:
                v76 = v14;
                StreamBuffer::Copy((*(a1 + 8) + 72), &v76, v15);
                v58 = v76;
                v59 = *(a1 + 256);
                *(a1 + 264) += v76;
                v60 = v59 - v58;
                *(a1 + 256) = v60;
                if (v60)
                {
                  result = 0;
                  v22 = 104;
                  goto LABEL_73;
                }

                *(a1 + 352) = vrev32_s8(*(a1 + 352));
                *(a1 + 360) = bswap32(*(a1 + 360)) >> 16;
                *v4 = bswap32(*v4);
                *(a1 + 366) = bswap32(*(a1 + 366)) >> 16;
                v35 = 1313820229;
              }

              v4[4] = v35;
            }
          }

          CADeprecated::CAAutoFree<unsigned char>::allocBytes((a1 + 136), v31.i32[1], 0);
          v26 = *(a1 + 348);
          *(a1 + 256) = v26;
          v27 = *(a1 + 136);
          *(a1 + 264) = v27;
LABEL_46:
          v76 = v26;
          StreamBuffer::Copy((*(a1 + 8) + 72), &v76, v27);
          v44 = v76;
          v45 = *(a1 + 256);
          *(a1 + 264) += v76;
          v46 = v45 - v44;
          *(a1 + 256) = v46;
          if (v46)
          {
            break;
          }

          v47 = *(a1 + 348);
          *(a1 + 144) = v47;
          AudioChannelLayout_BtoN(*(a1 + 136), v47);
          v48 = *(a1 + 8);
          v76 = 1;
          if ((*(v48 + 109) & 1) == 0)
          {
            *(v48 + 109) = 1;
            v40 = *(v48 + 24);
            if (v40)
            {
              v41 = *(v48 + 40);
              v42 = *(v48 + 8);
              v43 = 1668112752;
              goto LABEL_50;
            }
          }
        }

        result = 0;
        v22 = 159;
      }

      goto LABEL_73;
    }

    goto LABEL_30;
  }

  v23 = *(a1 + 256);
  v24 = *(a1 + 264);
LABEL_53:
  v76 = v23;
  StreamBuffer::Copy((*(a1 + 8) + 72), &v76, v24);
  v49 = v76;
  v50 = *(a1 + 256);
  *(a1 + 264) += v76;
  v51 = v50 - v49;
  *(a1 + 256) = v51;
  if (v51)
  {
    result = 0;
    v22 = 119;
    goto LABEL_73;
  }

  v52 = vrev32q_s8(*(a1 + 384));
  *(a1 + 384) = v52;
  *(a1 + 104) = *(a1 + 296) + v52.u32[2] + 8;
  (*(*a1 + 96))(a1, *(a1 + 348) - v52.u32[2] - 8);
  if (*(a1 + 360))
  {
    FillDescriptionFromCommonChunk(a1 + 352, (a1 + 24), *(a1 + 128), *(a1 + 120));
    v53 = *(a1 + 8);
    v76 = 1;
    if ((*(v53 + 105) & 1) == 0)
    {
      *(v53 + 105) = 1;
      v54 = *(v53 + 24);
      if (v54)
      {
        v54(*(v53 + 40), *(v53 + 8), 1684434292, &v76);
        v53 = *(a1 + 8);
      }
    }

    v76 = 1;
    v55 = *(v53 + 24);
    if (v55)
    {
      v55(*(v53 + 40), *(v53 + 8), 1650683508, &v76);
      v56 = *(a1 + 8);
      v57 = *(v56 + 24);
      v76 = 1;
      if (v57)
      {
        v57(*(v56 + 40), *(v56 + 8), 1685022310, &v76);
      }
    }

    else
    {
      v76 = 1;
    }

    v62 = *(a1 + 40);
    if (v62)
    {
      *(a1 + 112) = v62;
      v63 = (*(*a1 + 88))(a1);
      (*(*a1 + 80))(a1, v63 / *(a1 + 40));
      v64 = *(a1 + 8);
      v76 = 1;
      v65 = *(v64 + 24);
      if (v65)
      {
        v65(*(v64 + 40), *(v64 + 8), 1885564532, &v76);
      }
    }

    v66 = *(a1 + 8);
    v76 = 1;
    if (!*(v66 + 112))
    {
      *(v66 + 112) = 1;
      v67 = *(v66 + 24);
      if (v67)
      {
        v67(*(v66 + 40), *(v66 + 8), 1919247481, &v76);
        v66 = *(a1 + 8);
      }
    }

    v68 = 0;
    *a2 = a1;
    *(a2 + 8) = AudioFileStreamObject::GeneratePackets;
    *(a2 + 16) = 0;
    v69 = *(v66 + 88);
    v70 = *(v66 + 96);
    v71 = v69 + *(v66 + 80);
    v72 = v70 < v69 || v71 <= v70;
    v73 = v72;
    v74 = v71 - v70;
    if (!v72 && v74)
    {
      v68 = *(v66 + 72) + (v70 - v69);
    }

    result = 0;
    *(a2 + 32) = v68;
    if (v73)
    {
      v75 = 0;
    }

    else
    {
      v75 = v74;
    }

    *(a2 + 24) = v75;
  }

  else
  {
    *(a1 + 236) = -1;
    return 1869640813;
  }

  return result;
}

void AIFFAudioStream::~AIFFAudioStream(AIFFAudioStream *this)
{
  AudioFileStreamObject::~AudioFileStreamObject(this);

  JUMPOUT(0x193ADF220);
}

void AIFFAudioStream::AIFFAudioStream(AIFFAudioStream *this)
{
  *(this + 4) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = -1;
  *(this + 12) = -1;
  *(this + 13) = -1;
  *(this + 17) = 0;
  *(this + 36) = 0;
  *(this + 19) = 0;
  *(this + 88) = 0;
  *(this + 59) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 32) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 50) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 232) = 0;
  *(this + 28) = 0;
  *(this + 30) = AudioFileStreamObject::ParseHeader;
  *(this + 31) = 0;
  *(this + 64) = 0;
  *(this + 33) = 0;
  *(this + 300) = 0;
  *(this + 284) = 0;
  *(this + 292) = 0;
  *(this + 82) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  *this = &unk_1F032E190;
  *(this + 400) = 0;
}

uint64_t AudioUnitPropertyMarshaller::CreateMarshaller(AudioUnitPropertyMarshaller *this)
{
  v1 = this;
  result = 0;
  if (v1 > 2199)
  {
    if ((v1 - 2200) < 2 || v1 == 3007)
    {
LABEL_8:
      operator new();
    }

    if (v1 == 3099)
    {
      operator new();
    }
  }

  else
  {
    switch(v1)
    {
      case 0:
      case 16:
        operator new();
      case 1:
      case 5:
      case 6:
      case 7:
      case 9:
      case 10:
      case 15:
      case 17:
      case 18:
      case 23:
      case 25:
      case 27:
      case 28:
      case 29:
      case 31:
      case 33:
      case 34:
      case 35:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
        return result;
      case 2:
      case 12:
      case 20:
        goto LABEL_12;
      case 3:
      case 32:
        operator new();
      case 4:
        operator new();
      case 8:
        operator new();
      case 11:
      case 14:
      case 21:
      case 22:
      case 26:
        goto LABEL_8;
      case 13:
        operator new();
      case 19:
        operator new();
      case 24:
        operator new();
      case 30:
      case 54:
        operator new();
      case 36:
        operator new();
      case 52:
        operator new();
      case 53:
        operator new();
      default:
        if (v1 == 61)
        {
LABEL_12:
          operator new();
        }

        return result;
    }
  }

  return result;
}

uint64_t TArrayMarshaller<AudioUnitMeterValue>::Deserialize(Marshaller *a1, CADeserializer *this, void **a3, unsigned int *a4)
{
  v7 = this->var3 - this->var2;
  Ptr = CADeserializer::GetAndAdvanceReadPtr(this);
  Marshaller::CheckDest(a1, a3, a4, v7 & 0xFFFFFFF0);
  memcpy(*a3, Ptr, *a4);
  return 1;
}

void TArrayMarshaller<AudioUnitMeterValue>::~TArrayMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

void MarshalAUPreset::DeserializeT(MarshalAUPreset *this, CADeserializer *a2, AUPreset *a3)
{
  CADeserializer::Read(a2, a3);
  operator>>();
  presetName = a3->presetName;

  Marshaller::AddCreatedCFObject(this, presetName);
}

void Marshaller::AddCreatedCFObject(Marshaller *this, const void *a2)
{
  if (a2)
  {
    v4 = *(this + 2);
    v3 = *(this + 3);
    if (v4 >= v3)
    {
      v6 = *(this + 1);
      v7 = (v4 - v6) >> 3;
      if ((v7 + 1) >> 61)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v8 = v3 - v6;
      v9 = v8 >> 2;
      if (v8 >> 2 <= (v7 + 1))
      {
        v9 = v7 + 1;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      if (v10)
      {
        std::allocator<applesauce::CF::TypeRef>::allocate_at_least[abi:ne200100](v10);
      }

      v11 = (8 * v7);
      *v11 = a2;
      v5 = 8 * v7 + 8;
      v12 = *(this + 1);
      v13 = *(this + 2) - v12;
      v14 = v11 - v13;
      memcpy(v11 - v13, v12, v13);
      v15 = *(this + 1);
      *(this + 1) = v14;
      *(this + 2) = v5;
      *(this + 3) = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v4 = a2;
      v5 = (v4 + 1);
    }

    *(this + 2) = v5;
  }
}

void MarshalAUPreset::SerializeT(MarshalAUPreset *this, CASerializer *a2, const AUPreset *a3)
{
  CASerializer::Write(a2, a3);
  operator<<();
  presetName = a3->presetName;
  if (presetName && *(this + 32) == 1)
  {

    CFRelease(presetName);
  }
}

uint64_t TMarshaller<AUPreset>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
{
  if ((*a4 | 0x10) == 0x10)
  {
    Marshaller::CheckDest(a1, a3, a4, 0x10uLL);
    (*(*a1 + 40))(a1, a2, *a3);
    v7 = *(a2 + 32) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL TMarshaller<AUPreset>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 16)
  {
    (*(*a1 + 32))(a1);
  }

  return a4 == 16;
}

void MarshalAUPreset::~MarshalAUPreset(MarshalAUPreset *this)
{
  Marshaller::~Marshaller(this);

  JUMPOUT(0x193ADF220);
}

void MarshalAUPresetArray::DeserializeT(MarshalAUPresetArray *this, CADeserializer *a2, const __CFArray **a3)
{
  LODWORD(capacity) = 0;
  CADeserializer::Read(a2, &capacity);
  v6 = *byte_1F032E390;
  v5 = CFArrayCreateMutable(0, capacity, &v6);
  if (capacity)
  {
    operator new();
  }

  *a3 = v5;
  Marshaller::AddCreatedCFObject(this, v5);
}

void MarshalAUPresetArray::ReleaseAUPresetArrayElement(MarshalAUPresetArray *this, CFTypeRef *a2, const void *a3)
{
  CFRelease(a2[1]);

  JUMPOUT(0x193ADF220);
}

void MarshalAUPresetArray::SerializeT(MarshalAUPresetArray *this, CASerializer *a2, CFArrayRef *a3)
{
  Count = CFArrayGetCount(*a3);
  CASerializer::Write(a2, &Count);
  if (Count)
  {
    for (i = 0; i < Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*a3, i);
      CASerializer::Write(a2, ValueAtIndex);
      operator<<();
    }
  }

  if (*a3)
  {
    if (*(this + 32) == 1)
    {
      CFRelease(*a3);
    }
  }
}

uint64_t TMarshaller<__CFArray const*>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
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

BOOL TMarshaller<__CFArray const*>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 8)
  {
    (*(*a1 + 32))(a1);
  }

  return a4 == 8;
}

void MarshalAUPresetArray::~MarshalAUPresetArray(MarshalAUPresetArray *this)
{
  Marshaller::~Marshaller(this);

  JUMPOUT(0x193ADF220);
}

uint64_t MarshalAudioChannelLayout::Deserialize(MarshalAudioChannelLayout *this, CADeserializer *a2, void **a3, unsigned int *a4)
{
  v14 = 0;
  __src = 0;
  if (!Read(a2, &__src, &v14))
  {
    return 0;
  }

  v7 = __src;
  v8 = 20 * *(__src + 2) + 12;
  v9 = *a4;
  if (v9)
  {
    v10 = v8 > v9;
  }

  else
  {
    v10 = 0;
  }

  v12 = !v10 && v14 >= v8;
  if (v12 == 1)
  {
    Marshaller::CheckDest(this, a3, a4, 20 * *(__src + 2) + 12);
    memcpy(*a3, __src, v8);
    v7 = __src;
  }

  free(v7);
  return v12;
}

uint64_t MarshalAudioChannelLayout::Serialize(MarshalAudioChannelLayout *this, CASerializer *a2, unsigned int *a3, unsigned int a4)
{
  if (a4 < 0xC || 20 * a3[2] + 12 > a4)
  {
    return 0;
  }

  operator<<();
  return 1;
}

void MarshalAudioChannelLayout::~MarshalAudioChannelLayout(MarshalAudioChannelLayout *this)
{
  Marshaller::~Marshaller(this);

  JUMPOUT(0x193ADF220);
}

uint64_t TArrayMarshaller<AUChannelInfo>::Deserialize(Marshaller *a1, CADeserializer *this, void **a3, unsigned int *a4)
{
  v7 = this->var3 - this->var2;
  Ptr = CADeserializer::GetAndAdvanceReadPtr(this);
  Marshaller::CheckDest(a1, a3, a4, v7 & 0xFFFFFFFC);
  memcpy(*a3, Ptr, *a4);
  return 1;
}

void TArrayMarshaller<AUChannelInfo>::~TArrayMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t MarshalAudioUnitParameterInfo::DeserializeT(MarshalAudioUnitParameterInfo *this, CADeserializer *a2, AudioUnitParameterInfo *a3)
{
  CADeserializer::Read(a2, a3);
  operator>>();
  Marshaller::AddCreatedCFObject(this, a3->unitName);
  CADeserializer::Read(a2, &a3->clumpID);
  operator>>();
  Marshaller::AddCreatedCFObject(this, a3->cfNameString);
  v7 = kAudioUnitParameterUnit_Generic;
  CADeserializer::Read(a2, &v7);
  a3->unit = v7;
  CADeserializer::Read(a2, &a3->minValue);
  CADeserializer::Read(a2, &a3->maxValue);
  CADeserializer::Read(a2, &a3->defaultValue);
  result = CADeserializer::Read(a2, &a3->flags);
  a3->flags |= 0x10u;
  return result;
}

uint64_t MarshalAudioUnitParameterInfo::SerializeT(MarshalAudioUnitParameterInfo *this, CASerializer *a2, const AudioUnitParameterInfo *a3)
{
  CASerializer::Write(a2, a3);
  if (a3->unit == kAudioUnitParameterUnit_CustomUnit)
  {
    operator<<();
    unitName = a3->unitName;
    if (unitName && *(this + 32) == 1)
    {
      CFRelease(unitName);
    }
  }

  else
  {
    v10 = 0;
    operator<<();
  }

  CASerializer::Write(a2, &a3->clumpID);
  operator<<();
  if ((a3->flags & 0x10) != 0)
  {
    cfNameString = a3->cfNameString;
    if (cfNameString)
    {
      if (*(this + 32) == 1)
      {
        CFRelease(cfNameString);
      }
    }
  }

  unit = a3->unit;
  CASerializer::Write(a2, &unit);
  CASerializer::Write(a2, &a3->minValue);
  CASerializer::Write(a2, &a3->maxValue);
  CASerializer::Write(a2, &a3->defaultValue);
  return CASerializer::Write(a2, &a3->flags);
}

uint64_t TMarshaller<AudioUnitParameterInfo>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
{
  if (*a4 == 104 || *a4 == 0)
  {
    Marshaller::CheckDest(a1, a3, a4, 0x68uLL);
    (*(*a1 + 40))(a1, a2, *a3);
    v8 = *(a2 + 32) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

BOOL TMarshaller<AudioUnitParameterInfo>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 104)
  {
    (*(*a1 + 32))(a1);
  }

  return a4 == 104;
}

void MarshalAudioUnitParameterInfo::~MarshalAudioUnitParameterInfo(MarshalAudioUnitParameterInfo *this)
{
  Marshaller::~Marshaller(this);

  JUMPOUT(0x193ADF220);
}

uint64_t TMarshaller<AudioUnitParameterHistoryInfo>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
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

BOOL TMarshaller<AudioUnitParameterHistoryInfo>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 8)
  {
    (*(*a1 + 32))(a1);
  }

  return a4 == 8;
}

void TPODMarshaller<AudioUnitParameterHistoryInfo>::~TPODMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

void TCFMarshaller<__CFString const*>::DeserializeT(Marshaller *a1, uint64_t a2, const void **a3)
{
  operator>>();
  v5 = *a3;

  Marshaller::AddCreatedCFObject(a1, v5);
}

void TCFMarshaller<__CFString const*>::SerializeT(uint64_t a1, uint64_t a2, const void **a3)
{
  operator<<();
  v5 = *a3;
  if (*a3 && *(a1 + 32) == 1)
  {

    CFRelease(v5);
  }
}

uint64_t TMarshaller<__CFString const*>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
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

BOOL TMarshaller<__CFString const*>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 8)
  {
    (*(*a1 + 32))(a1);
  }

  return a4 == 8;
}

void TCFMarshaller<__CFString const*>::~TCFMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t TArrayMarshaller<AudioUnitFrequencyResponseBin>::Deserialize(Marshaller *a1, CADeserializer *this, void **a3, unsigned int *a4)
{
  v7 = this->var3 - this->var2;
  Ptr = CADeserializer::GetAndAdvanceReadPtr(this);
  Marshaller::CheckDest(a1, a3, a4, v7 & 0xFFFFFFF0);
  memcpy(*a3, Ptr, *a4);
  return 1;
}

void TArrayMarshaller<AudioUnitFrequencyResponseBin>::~TArrayMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t TMarshaller<double>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
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

BOOL TMarshaller<double>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 8)
  {
    (*(*a1 + 32))(a1);
  }

  return a4 == 8;
}

void TSimpleMarshaller<double>::~TSimpleMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t DSPGraph::FileInjector::print(uint64_t result, void *a2, int a3, uint64_t a4)
{
  if (a3 >= 5)
  {
    v4 = a4;
    v6 = result;
    (*(*result + 32))(result, a2, a4, 1);
    v7 = *(v6 + 8);
    DSPGraph::printi(a2, v4 + 4, "wire %p\n");
  }

  return result;
}

void DSPGraph::FileInjector::~FileInjector(void **this)
{
  *this = &unk_1F032E438;
  v2 = this + 10;
  std::vector<std::unique_ptr<void,applesauce::raii::v1::detail::opaque_deletion_functor<void *,&(VPTimeFreqConverter_Dispose)>>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  DSPGraph::SimpleABL::free((this + 2));

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032E438;
  v2 = this + 10;
  std::vector<std::unique_ptr<void,applesauce::raii::v1::detail::opaque_deletion_functor<void *,&(VPTimeFreqConverter_Dispose)>>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  DSPGraph::SimpleABL::free((this + 2));
}

void std::vector<std::unique_ptr<void,applesauce::raii::v1::detail::opaque_deletion_functor<void *,&(VPTimeFreqConverter_Dispose)>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
          VPTimeFreqConverter_Dispose(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t DSPGraph::FileRecorder::print(uint64_t result, void *a2, int a3, uint64_t a4)
{
  if (a3 >= 5)
  {
    v4 = a4;
    v6 = result;
    (*(*result + 32))(result, a2, a4, 1);
    v7 = *(v6 + 8);
    DSPGraph::printi(a2, v4 + 4, "wire %p\n");
  }

  return result;
}

void DSPGraph::FileRecorder::~FileRecorder(void **this)
{
  *this = &unk_1F032E470;
  DSPGraph::SimpleABL::free((this + 9));
  v3 = this + 6;
  std::vector<std::unique_ptr<void,applesauce::raii::v1::detail::opaque_deletion_functor<void *,&(VPTimeFreqConverter_Dispose)>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = this[2];
  this[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032E470;
  DSPGraph::SimpleABL::free((this + 9));
  v3 = this + 6;
  std::vector<std::unique_ptr<void,applesauce::raii::v1::detail::opaque_deletion_functor<void *,&(VPTimeFreqConverter_Dispose)>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = this[2];
  this[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

void *std::vector<std::unique_ptr<void,applesauce::raii::v1::detail::opaque_deletion_functor<void *,&(VPTimeFreqConverter_Dispose)>>>::reserve(void *result, unint64_t a2)
{
  v8 = *result;
  if (a2 > (result[2] - *result) >> 3)
  {
    v11 = v5;
    v12 = v4;
    v13 = v3;
    v14 = v2;
    v15 = v6;
    v16 = v7;
    v9 = result[1] - v8;
    v10 = result;
    std::allocator<std::unique_ptr<void,applesauce::raii::v1::detail::opaque_deletion_functor<void *,&(VPTimeFreqConverter_Dispose)>>>::allocate_at_least[abi:ne200100](a2);
  }

  return result;
}

void std::allocator<std::unique_ptr<void,applesauce::raii::v1::detail::opaque_deletion_functor<void *,&(VPTimeFreqConverter_Dispose)>>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<void,applesauce::raii::v1::detail::opaque_deletion_functor<void *,&(VPTimeFreqConverter_Dispose)>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      VPTimeFreqConverter_Dispose(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

OpaqueExtAudioFile *std::unique_ptr<OpaqueExtAudioFile,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueExtAudioFile*,&(ExtAudioFileDispose)>>::reset[abi:ne200100](OpaqueExtAudioFile **a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    return ExtAudioFileDispose(result);
  }

  return result;
}

void DSPGraph::FileInjector::inject(DSPGraph::FileInjector *this, unsigned int a2)
{
  v4 = *(this + 8);
  if (!v4)
  {
    kdebug_trace();
    v4 = *(this + 8);
  }

  v5 = *(this + 10);
  v6 = *(this + 1);
  if (v5 <= v4)
  {
    v18 = v6[7];
    v19 = *(v18 + 80);
    if (v19 && *v19)
    {
      v20 = 0;
      v21 = *(this + 9) * a2;
      v22 = 4;
      do
      {
        bzero(*&v19[v22], v21);
        ++v20;
        v19 = *(v18 + 80);
        v22 += 4;
      }

      while (v20 < *v19);
    }
  }

  else
  {
    v7 = v6[15];
    if (*(v7 + 8) == 1718773105)
    {
      if (*(v7 + 40) != a2)
      {
        std::string::basic_string[abi:ne200100]<0>(&v27, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Files.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v26, "inject");
        std::string::basic_string[abi:ne200100]<0>(&v25, "inNumFrames != blockSize.");
        DSPGraph::ThrowException(1718188065, &v27, 156, &v26, &v25);
      }

      v8 = *(this + 2);
      v9 = *(*(*(v6[4] + 16) + 8) + 16);
      v10 = *(v9 + 268);
      if (v10 == 1)
      {
        v10 = *(v9 + 272);
      }

      if (*v8)
      {
        v11 = 0;
        v12 = *(v6[7] + 80);
        v13 = *(this + 9) * v4;
        v14 = v10;
        v15 = 4;
        do
        {
          v16 = (*(v12 + v15 * 4) + 4 * v14);
          v27.realp = *(v12 + v15 * 4);
          v27.imagp = v16;
          VPTimeFreqConverter_Analyze(*(*(this + 10) + 8 * v11++), (*&v8[v15] + v13), &v27);
          v15 += 4;
        }

        while (v11 < *v8);
        v4 = *(this + 8);
        v5 = *(this + 10);
      }

      v17 = v4 + a2;
      *(this + 8) = v17;
      if (v17 == v5)
      {
        kdebug_trace();
        v17 = *(this + 8);
        v5 = *(this + 10);
      }

      if (v17 < v5 || (*(this + 72) & 1) == 0)
      {
        return;
      }

LABEL_28:
      *(this + 8) = 0;
      return;
    }

    if (v5 - v4 < a2)
    {
      a2 = v5 - v4;
    }

    DSPGraph::SimpleABL::copy(this + 2, (v6[7] + 80), *(this + 9) * v4, 0, *(this + 9) * a2, 1);
    v23 = *(this + 8) + a2;
    *(this + 8) = v23;
    v24 = *(this + 10);
    if (v23 == v24)
    {
      kdebug_trace();
      v23 = *(this + 8);
      v24 = *(this + 10);
    }

    if (v23 >= v24 && *(this + 72) == 1)
    {
      goto LABEL_28;
    }
  }
}

void sub_18F7BB63C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

void *___Z16NewAudioCapturer20AudioCapturerOptionsPKcS1_jPK27AudioStreamBasicDescriptionRS3__block_invoke_6392()
{
  result = dlopen("/usr/local/lib/libAudioDiagnostics.dylib", 5);
  if (result)
  {
    result = dlsym(result, "NewAudioCapturerImpl");
    if (result)
    {
      NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction = result;
    }
  }

  return result;
}

uint64_t DSPGraph::FileRecorder::record(uint64_t this, uint64_t a2)
{
  if (*(this + 88) == 1)
  {
    v2 = this;
    this = *(this + 16);
    if (this)
    {
      v4 = *(v2 + 8);
      v5 = *(v4 + 56);
      v6 = *(v5 + 8);
      if (*(v2 + 48) == *(v2 + 56))
      {
        v15 = *(v5 + 80);
        v16 = *(v2 + 89);
        v17 = *(*this + 96);

        return v17();
      }

      else
      {
        v7 = *(*(*(*(v4 + 32) + 16) + 8) + 16);
        v8 = *(v7 + 268);
        if (v8 == 1)
        {
          v8 = *(v7 + 272);
        }

        v9 = *(v5 + 80);
        v10 = *(v2 + 72);
        if (*v9)
        {
          v11 = 0;
          v12 = v8;
          v13 = 4;
          do
          {
            v14 = (*&v9[v13] + 4 * v12);
            v18.realp = *&v9[v13];
            v18.imagp = v14;
            VPTimeFreqConverter_Synthesize(*(*(v2 + 48) + 8 * v11++), &v18, *(v10 + v13 * 4));
            v13 += 4;
          }

          while (v11 < *v9);
          this = *(v2 + 16);
        }

        return (*(*this + 96))(this, a2, v10, *(v2 + 89), v6);
      }
    }
  }

  return this;
}

uint64_t DSPGraph::Port::print(uint64_t result, void *a2, int a3, uint64_t a4)
{
  if (a3 >= 3)
  {
    v4 = a4;
    v6 = result;
    (*(*result + 32))(result, a2, a4, 1);
    v7 = *(v6 + 8);
    DSPGraph::printi(a2, v4 + 4, "box %p\n");
  }

  return result;
}

uint64_t DSPGraph::Port::Port(uint64_t this, DSPGraph::Box *a2, int a3)
{
  *this = &unk_1F033AC30;
  *(this + 8) = a2;
  *(this + 16) = 0;
  *(this + 24) = a3;
  return this;
}

void DSPGraph::InputPort::detach(DSPGraph::InputPort *this)
{
  if ((*(*this + 40))(this))
  {
    v2 = ((*(*this + 40))(this) + 16);

    std::__hash_table<RegistrarClientProcess *,std::hash<RegistrarClientProcess *>,std::equal_to<RegistrarClientProcess *>,std::allocator<RegistrarClientProcess *>>::__erase_unique<RegistrarClientProcess *>(v2, this);
  }
}

uint64_t MP4BoxParser_EditListExcludingPrimingAndRemainderFrames::Init(MP4BoxParser **this)
{
  result = MP4BoxParser_Full::Initialize(this);
  if (!result)
  {
    if (*(this + 5) == 1701606260)
    {
      v3 = (*(*this + 3))(this);
      result = MP4BoxParser::ReadDataSourceBytes(this[1], v3, 4uLL, this + 60);
      if (!result)
      {
        v4 = 0;
        *(this + 15) = bswap32(*(this + 15));
        do
        {
          if (*(this + 56) == 1)
          {
            Entry = MP4BoxParser_EditList::GetEntry(this, v4, &v10);
            result = 1717660012;
            if (Entry)
            {
              v6 = v10.i32[2];
              if ((v10.i64[1] & 0x8000000000000000) == 0)
              {
                result = 0;
                *(this + 16) = v10.i32[0];
                *(this + 17) = v6;
                *(this + 18) = v11;
                return result;
              }

LABEL_11:
              result = 0;
            }
          }

          else
          {
            v7 = MP4BoxParser_EditList::GetEntry(this, v4, &v10);
            result = 1717660012;
            if (v7)
            {
              v8 = v10.i32[1];
              if ((v10.i32[1] & 0x80000000) == 0)
              {
                result = 0;
                v9 = v10.i32[2];
                *(this + 16) = v10.i32[0];
                *(this + 17) = v8;
                *(this + 18) = v9;
                return result;
              }

              goto LABEL_11;
            }
          }

          ++v4;
        }

        while (!result);
      }
    }

    else
    {
      return 4294967294;
    }
  }

  return result;
}

uint64_t MP4BoxParser_EditList::GetEntry(MP4BoxParser_EditList *this, unsigned int a2, int8x16_t *a3)
{
  if (*(this + 15) <= a2)
  {
    return 0;
  }

  v6 = (*(*this + 24))(this);
  if (*(this + 56) == 1)
  {
    v7 = 20;
  }

  else
  {
    v7 = 12;
  }

  if (MP4BoxParser::ReadDataSourceBytes(*(this + 1), v7 * a2 + v6 + 4, v7, a3))
  {
    return 0;
  }

  if (*(this + 56) == 1)
  {
    *a3 = vrev64q_s8(*a3);
    v9 = 9;
    v10 = 8;
  }

  else
  {
    *a3->i8 = vrev32_s8(*a3->i8);
    v9 = 5;
    v10 = 4;
  }

  a3->i16[v10] = bswap32(a3->u16[v10]) >> 16;
  a3->i16[v9] = bswap32(a3->u16[v9]) >> 16;
  return 1;
}

void MP4BoxParser_EditListExcludingPrimingAndRemainderFrames::~MP4BoxParser_EditListExcludingPrimingAndRemainderFrames(MP4BoxParser_EditListExcludingPrimingAndRemainderFrames *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x193ADF220);
}

{
  v2 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

void MP4BoxParser_EditListExcludingPrimingAndRemainderFrames::MP4BoxParser_EditListExcludingPrimingAndRemainderFrames(MP4BoxParser_EditListExcludingPrimingAndRemainderFrames *this, DataSource *a2, uint64_t a3)
{
  *this = &unk_1F0330650;
  (*(*a2 + 88))(a2, a3);
  *(this + 16) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 9) = 8;
  *(this + 15) = 0;
  *this = &unk_1F032E4C8;
}

uint64_t Resampler2::SetRamp(uint64_t this, const RateRamp *a2, __n128 a3)
{
  v3 = this;
  if (a2)
  {
    if (*(this + 184) == 1)
    {
      if (*(this + 136) < 0.0)
      {
        *(this + 136) = 0;
      }

      v5 = *(a2 + 1);
      v4 = *(a2 + 2);
      v6 = *a2;
      *(this + 256) = *(a2 + 6);
      *(this + 224) = v5;
      *(this + 240) = v4;
      *(this + 208) = v6;
      *&v4 = (*(this + 208) + *(this + 216)) * 0.5;
      *(this + 168) = v4;
      *(this + 176) = 1.0 / *&v4;
      *(this + 133) = 0;
      *(this + 264) = 1;
      Resampler2::SetConverterFunction(this);
      v7 = *(v3 + 168);

      return Resampler2::SetVarispeedSinc(v3, v7);
    }
  }

  else
  {
    *(this + 264) = 0;
    a3.n128_u64[0] = *(this + 168);
    v8 = *(*this + 56);

    return v8(a3);
  }

  return this;
}

uint64_t Resampler2::SetVarispeedSinc(uint64_t this, double a2)
{
  if (a2 <= 1.0)
  {
    v2 = 0;
  }

  else if (a2 <= 7.98)
  {
    v2 = *(&sVarispeedRateTable + vcvtpd_s64_f64(a2 * 100.0) - 100);
  }

  else
  {
    v2 = 35;
  }

  v3 = *(this + 112) + 1;
  if (v3 >= 0x20)
  {
    v4 = (v3 >> 5) - 1;
  }

  else
  {
    v4 = 0;
  }

  *(this + 56) = *(**(&sVarispeedSincKernels + v4) + 8 * v2);
  return this;
}

uint64_t Resampler2::ConvertScalar<Resampler2::FixedRate>(uint64_t a1, float *a2, _DWORD *a3, int a4, int a5)
{
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  v12 = *(a1 + 160);
  v13 = *(a1 + 168);
  v14 = *(*(a1 + 56) + 16);
  result = (*(*a1 + 152))(a1);
  if (a3)
  {
    if (a4 >= 1)
    {
      v16 = 0;
      v17 = **(a1 + 56);
      do
      {
        v18 = (v12 - v12) * v14;
        v19 = (v17 + 4 * result * v18);
        v20 = &v19[result];
        v21 = (v10 + 4 * v12);
        v22 = (v11 + 4 * v12);
        if (result < 32)
        {
          v28 = 0.0;
          v27 = 0.0;
          v26 = 0.0;
          v25 = result;
          v24 = 0.0;
        }

        else
        {
          v23 = 0;
          v24 = 0.0;
          v25 = result;
          v26 = 0.0;
          v27 = 0.0;
          v28 = 0.0;
          do
          {
            v29 = v21[v23];
            v30 = v21[v23 + 1];
            v31 = v19[v23];
            v32 = v19[v23 + 1];
            v33 = v24 + (v29 * v31);
            v34 = v20[v23];
            v35 = v20[v23 + 1];
            v36 = v28 + (v29 * v34);
            v37 = v22[v23];
            v38 = v22[v23 + 1];
            v39 = v33 + (v30 * v32);
            v40 = v36 + (v30 * v35);
            v41 = (v27 + (v37 * v31)) + (v38 * v32);
            v42 = (v26 + (v37 * v34)) + (v38 * v35);
            v43 = v21[v23 + 2];
            v44 = v21[v23 + 3];
            v45 = v19[v23 + 2];
            v46 = v19[v23 + 3];
            v47 = v20[v23 + 2];
            v48 = v20[v23 + 3];
            v49 = v22[v23 + 2];
            v50 = v22[v23 + 3];
            v51 = (v39 + (v43 * v45)) + (v44 * v46);
            v52 = (v40 + (v43 * v47)) + (v44 * v48);
            v53 = (v41 + (v49 * v45)) + (v50 * v46);
            v54 = (v42 + (v49 * v47)) + (v50 * v48);
            v55 = v21[v23 + 4];
            v56 = v21[v23 + 5];
            v57 = v19[v23 + 4];
            v58 = v19[v23 + 5];
            v59 = v20[v23 + 4];
            v60 = v20[v23 + 5];
            v61 = v51 + (v55 * v57);
            v62 = v52 + (v55 * v59);
            v63 = v22[v23 + 4];
            v64 = v22[v23 + 5];
            v65 = v61 + (v56 * v58);
            v66 = v62 + (v56 * v60);
            v67 = (v53 + (v63 * v57)) + (v64 * v58);
            v68 = (v54 + (v63 * v59)) + (v64 * v60);
            v69 = v21[v23 + 6];
            v70 = v21[v23 + 7];
            v71 = v19[v23 + 6];
            v72 = v19[v23 + 7];
            v73 = v65 + (v69 * v71);
            v74 = v20[v23 + 6];
            v75 = v20[v23 + 7];
            v76 = v66 + (v69 * v74);
            v77 = v22[v23 + 6];
            v78 = v22[v23 + 7];
            v79 = v73 + (v70 * v72);
            v80 = v76 + (v70 * v75);
            v81 = (v67 + (v77 * v71)) + (v78 * v72);
            v82 = (v68 + (v77 * v74)) + (v78 * v75);
            v83 = v21[v23 + 8];
            v84 = v21[v23 + 9];
            v85 = v19[v23 + 8];
            v86 = v19[v23 + 9];
            v87 = v20[v23 + 8];
            v88 = v20[v23 + 9];
            v89 = v22[v23 + 8];
            v90 = v22[v23 + 9];
            v91 = (v79 + (v83 * v85)) + (v84 * v86);
            v92 = (v80 + (v83 * v87)) + (v84 * v88);
            v93 = (v81 + (v89 * v85)) + (v90 * v86);
            v94 = (v82 + (v89 * v87)) + (v90 * v88);
            v95 = v21[v23 + 10];
            v96 = v21[v23 + 11];
            v97 = v19[v23 + 10];
            v98 = v19[v23 + 11];
            v99 = v20[v23 + 10];
            v100 = v20[v23 + 11];
            v101 = v91 + (v95 * v97);
            v102 = v92 + (v95 * v99);
            v103 = v22[v23 + 10];
            v104 = v22[v23 + 11];
            v105 = v101 + (v96 * v98);
            v106 = v102 + (v96 * v100);
            v107 = (v93 + (v103 * v97)) + (v104 * v98);
            v108 = (v94 + (v103 * v99)) + (v104 * v100);
            v109 = v21[v23 + 12];
            v110 = v21[v23 + 13];
            v111 = v19[v23 + 12];
            v112 = v19[v23 + 13];
            v113 = v105 + (v109 * v111);
            v114 = v20[v23 + 12];
            v115 = v20[v23 + 13];
            v116 = v106 + (v109 * v114);
            v117 = v22[v23 + 12];
            v118 = v22[v23 + 13];
            v119 = v113 + (v110 * v112);
            v120 = v116 + (v110 * v115);
            v121 = (v107 + (v117 * v111)) + (v118 * v112);
            v122 = (v108 + (v117 * v114)) + (v118 * v115);
            v123 = v21[v23 + 14];
            v124 = v21[v23 + 15];
            v125 = v19[v23 + 14];
            v126 = v19[v23 + 15];
            v127 = v20[v23 + 14];
            v128 = v20[v23 + 15];
            v129 = v22[v23 + 14];
            v130 = v22[v23 + 15];
            v131 = (v119 + (v123 * v125)) + (v124 * v126);
            v132 = (v120 + (v123 * v127)) + (v124 * v128);
            v133 = (v121 + (v129 * v125)) + (v130 * v126);
            v134 = (v122 + (v129 * v127)) + (v130 * v128);
            v135 = v21[v23 + 16];
            v136 = v21[v23 + 17];
            v137 = v19[v23 + 16];
            v138 = v19[v23 + 17];
            v139 = v20[v23 + 16];
            v140 = v20[v23 + 17];
            v141 = v131 + (v135 * v137);
            v142 = v132 + (v135 * v139);
            v143 = v22[v23 + 16];
            v144 = v22[v23 + 17];
            v145 = v141 + (v136 * v138);
            v146 = v142 + (v136 * v140);
            v147 = (v133 + (v143 * v137)) + (v144 * v138);
            v148 = (v134 + (v143 * v139)) + (v144 * v140);
            v149 = v21[v23 + 18];
            v150 = v21[v23 + 19];
            v151 = v19[v23 + 18];
            v152 = v19[v23 + 19];
            v153 = v145 + (v149 * v151);
            v154 = v20[v23 + 18];
            v155 = v20[v23 + 19];
            v156 = v146 + (v149 * v154);
            v157 = v22[v23 + 18];
            v158 = v22[v23 + 19];
            v159 = v153 + (v150 * v152);
            v160 = v156 + (v150 * v155);
            v161 = (v147 + (v157 * v151)) + (v158 * v152);
            v162 = (v148 + (v157 * v154)) + (v158 * v155);
            v163 = v21[v23 + 20];
            v164 = v21[v23 + 21];
            v165 = v19[v23 + 20];
            v166 = v19[v23 + 21];
            v167 = v20[v23 + 20];
            v168 = v20[v23 + 21];
            v169 = v22[v23 + 20];
            v170 = v22[v23 + 21];
            v171 = (v159 + (v163 * v165)) + (v164 * v166);
            v172 = (v160 + (v163 * v167)) + (v164 * v168);
            v173 = (v161 + (v169 * v165)) + (v170 * v166);
            v174 = (v162 + (v169 * v167)) + (v170 * v168);
            v175 = v21[v23 + 22];
            v176 = v21[v23 + 23];
            v177 = v19[v23 + 22];
            v178 = v19[v23 + 23];
            v179 = v20[v23 + 22];
            v180 = v20[v23 + 23];
            v181 = v171 + (v175 * v177);
            v182 = v172 + (v175 * v179);
            v183 = v22[v23 + 22];
            v184 = v22[v23 + 23];
            v185 = v181 + (v176 * v178);
            v186 = v182 + (v176 * v180);
            v187 = (v173 + (v183 * v177)) + (v184 * v178);
            v188 = (v174 + (v183 * v179)) + (v184 * v180);
            v189 = v21[v23 + 24];
            v190 = v21[v23 + 25];
            v191 = v19[v23 + 24];
            v192 = v19[v23 + 25];
            v193 = v185 + (v189 * v191);
            v194 = v20[v23 + 24];
            v195 = v20[v23 + 25];
            v196 = v186 + (v189 * v194);
            v197 = v22[v23 + 24];
            v198 = v22[v23 + 25];
            v199 = v193 + (v190 * v192);
            v200 = v196 + (v190 * v195);
            v201 = (v187 + (v197 * v191)) + (v198 * v192);
            v202 = (v188 + (v197 * v194)) + (v198 * v195);
            v203 = v21[v23 + 26];
            v204 = v21[v23 + 27];
            v205 = v19[v23 + 26];
            v206 = v19[v23 + 27];
            v207 = v20[v23 + 26];
            v208 = v20[v23 + 27];
            v209 = v22[v23 + 26];
            v210 = v22[v23 + 27];
            v211 = (v199 + (v203 * v205)) + (v204 * v206);
            v212 = (v200 + (v203 * v207)) + (v204 * v208);
            v213 = (v201 + (v209 * v205)) + (v210 * v206);
            v214 = (v202 + (v209 * v207)) + (v210 * v208);
            v215 = v21[v23 + 28];
            v216 = v21[v23 + 29];
            v217 = v19[v23 + 28];
            v218 = v19[v23 + 29];
            v219 = v20[v23 + 28];
            v220 = v20[v23 + 29];
            v221 = v211 + (v215 * v217);
            v222 = v212 + (v215 * v219);
            v223 = v22[v23 + 28];
            v224 = v22[v23 + 29];
            v225 = v221 + (v216 * v218);
            v226 = v222 + (v216 * v220);
            v227 = (v213 + (v223 * v217)) + (v224 * v218);
            v228 = (v214 + (v223 * v219)) + (v224 * v220);
            v229 = v21[v23 + 30];
            v230 = v21[v23 + 31];
            v231 = v19[v23 + 30];
            v232 = v19[v23 + 31];
            v233 = v225 + (v229 * v231);
            v234 = v20[v23 + 30];
            v235 = v20[v23 + 31];
            v236 = v226 + (v229 * v234);
            v237 = v22[v23 + 30];
            v238 = v22[v23 + 31];
            v24 = v233 + (v230 * v232);
            v28 = v236 + (v230 * v235);
            v239 = v25;
            v27 = (v227 + (v237 * v231)) + (v238 * v232);
            v26 = (v228 + (v237 * v234)) + (v238 * v235);
            v25 -= 32;
            v23 += 32;
          }

          while (v239 > 0x3F);
          v19 = (v19 + v23 * 4);
          v22 = (v22 + v23 * 4);
          v21 = (v21 + v23 * 4);
          v20 = (v20 + v23 * 4);
        }

        if (v25 >= 16)
        {
          v240 = v25 + 16;
          do
          {
            v241 = v21[1];
            v242 = v19[1];
            v243 = v20[1];
            v244 = v22[1];
            v245 = (v24 + (*v21 * *v19)) + (v241 * v242);
            v246 = (v28 + (*v21 * *v20)) + (v241 * v243);
            v247 = (v27 + (*v22 * *v19)) + (v244 * v242);
            v248 = (v26 + (*v22 * *v20)) + (v244 * v243);
            v249 = v21[2];
            v250 = v21[3];
            v251 = v19[2];
            v252 = v19[3];
            v253 = v245 + (v249 * v251);
            v254 = v20[2];
            v255 = v20[3];
            v256 = v246 + (v249 * v254);
            v257 = v22[2];
            v258 = v22[3];
            v259 = v253 + (v250 * v252);
            v260 = v256 + (v250 * v255);
            v261 = (v247 + (v257 * v251)) + (v258 * v252);
            v262 = (v248 + (v257 * v254)) + (v258 * v255);
            v263 = v21[4];
            v264 = v21[5];
            v265 = v19[4];
            v266 = v19[5];
            v267 = v259 + (v263 * v265);
            v268 = v20[4];
            v269 = v20[5];
            v270 = v260 + (v263 * v268);
            v271 = v22[4];
            v272 = v22[5];
            v273 = v267 + (v264 * v266);
            v274 = v270 + (v264 * v269);
            v275 = (v261 + (v271 * v265)) + (v272 * v266);
            v276 = (v262 + (v271 * v268)) + (v272 * v269);
            v277 = v21[6];
            v278 = v21[7];
            v279 = v19[6];
            v280 = v19[7];
            v281 = v273 + (v277 * v279);
            v282 = v20[6];
            v283 = v20[7];
            v284 = v274 + (v277 * v282);
            v285 = v22[6];
            v286 = v22[7];
            v287 = v281 + (v278 * v280);
            v288 = v284 + (v278 * v283);
            v289 = (v275 + (v285 * v279)) + (v286 * v280);
            v290 = (v276 + (v285 * v282)) + (v286 * v283);
            v291 = v21[8];
            v292 = v21[9];
            v293 = v19[8];
            v294 = v19[9];
            v295 = v287 + (v291 * v293);
            v296 = v20[8];
            v297 = v20[9];
            v298 = v288 + (v291 * v296);
            v299 = v22[8];
            v300 = v22[9];
            v301 = v295 + (v292 * v294);
            v302 = v298 + (v292 * v297);
            v303 = (v289 + (v299 * v293)) + (v300 * v294);
            v304 = (v290 + (v299 * v296)) + (v300 * v297);
            v305 = v21[10];
            v306 = v21[11];
            v307 = v19[10];
            v308 = v19[11];
            v309 = v301 + (v305 * v307);
            v310 = v20[10];
            v311 = v20[11];
            v312 = v302 + (v305 * v310);
            v313 = v22[10];
            v314 = v22[11];
            v315 = v309 + (v306 * v308);
            v316 = v312 + (v306 * v311);
            v317 = (v303 + (v313 * v307)) + (v314 * v308);
            v318 = (v304 + (v313 * v310)) + (v314 * v311);
            v319 = v21[12];
            v320 = v21[13];
            v321 = v19[12];
            v322 = v19[13];
            v323 = v315 + (v319 * v321);
            v324 = v20[12];
            v325 = v20[13];
            v326 = v316 + (v319 * v324);
            v327 = v22[12];
            v328 = v22[13];
            v329 = v323 + (v320 * v322);
            v330 = v326 + (v320 * v325);
            v331 = (v317 + (v327 * v321)) + (v328 * v322);
            v332 = (v318 + (v327 * v324)) + (v328 * v325);
            v333 = v21[14];
            v334 = v21[15];
            v335 = v19[14];
            v336 = v19[15];
            v337 = v329 + (v333 * v335);
            v338 = v20[14];
            v339 = v20[15];
            v340 = v330 + (v333 * v338);
            v341 = v22[14];
            v342 = v22[15];
            v24 = v337 + (v334 * v336);
            v28 = v340 + (v334 * v339);
            v27 = (v331 + (v341 * v335)) + (v342 * v336);
            v26 = (v332 + (v341 * v338)) + (v342 * v339);
            v19 += 16;
            v20 += 16;
            v240 -= 16;
            v21 += 16;
            v22 += 16;
          }

          while (v240 > 0x1F);
        }

        v343 = v18 - v18;
        v344 = v24 + v343 * (v28 - v24);
        *a2 = v344;
        a2 += a5;
        *&v343 = v27 + v343 * (v26 - v27);
        *a3 = LODWORD(v343);
        a3 += a5;
        v12 = v13 + v12;
        ++v16;
      }

      while (v16 != a4);
    }
  }

  else if (a4 >= 1)
  {
    v345 = 0;
    v346 = **(a1 + 56);
    do
    {
      v347 = (v12 - v12) * v14;
      v348 = (v346 + 4 * result * v347);
      v349 = &v348[result];
      v350 = (v10 + 4 * v12);
      if (result < 32)
      {
        v354 = 0.0;
        v352 = 0.0;
        v353 = result;
      }

      else
      {
        v351 = 0;
        v352 = 0.0;
        v353 = result;
        v354 = 0.0;
        do
        {
          v355 = v350[v351];
          v356 = v350[v351 + 1];
          v357 = (v354 + (v355 * v348[v351])) + (v356 * v348[v351 + 1]);
          v358 = (v352 + (v355 * v349[v351])) + (v356 * v349[v351 + 1]);
          v359 = v350[v351 + 2];
          v360 = v350[v351 + 3];
          v361 = (v357 + (v359 * v348[v351 + 2])) + (v360 * v348[v351 + 3]);
          v362 = (v358 + (v359 * v349[v351 + 2])) + (v360 * v349[v351 + 3]);
          v363 = v350[v351 + 4];
          v364 = v350[v351 + 5];
          v365 = (v361 + (v363 * v348[v351 + 4])) + (v364 * v348[v351 + 5]);
          v366 = (v362 + (v363 * v349[v351 + 4])) + (v364 * v349[v351 + 5]);
          v367 = v350[v351 + 6];
          v368 = v350[v351 + 7];
          v369 = (v365 + (v367 * v348[v351 + 6])) + (v368 * v348[v351 + 7]);
          v370 = (v366 + (v367 * v349[v351 + 6])) + (v368 * v349[v351 + 7]);
          v371 = v350[v351 + 8];
          v372 = v350[v351 + 9];
          v373 = (v369 + (v371 * v348[v351 + 8])) + (v372 * v348[v351 + 9]);
          v374 = (v370 + (v371 * v349[v351 + 8])) + (v372 * v349[v351 + 9]);
          v375 = v350[v351 + 10];
          v376 = v350[v351 + 11];
          v377 = (v373 + (v375 * v348[v351 + 10])) + (v376 * v348[v351 + 11]);
          v378 = (v374 + (v375 * v349[v351 + 10])) + (v376 * v349[v351 + 11]);
          v379 = v350[v351 + 12];
          v380 = v350[v351 + 13];
          v381 = (v377 + (v379 * v348[v351 + 12])) + (v380 * v348[v351 + 13]);
          v382 = (v378 + (v379 * v349[v351 + 12])) + (v380 * v349[v351 + 13]);
          v383 = v350[v351 + 14];
          v384 = v350[v351 + 15];
          v385 = (v381 + (v383 * v348[v351 + 14])) + (v384 * v348[v351 + 15]);
          v386 = (v382 + (v383 * v349[v351 + 14])) + (v384 * v349[v351 + 15]);
          v387 = v350[v351 + 16];
          v388 = v350[v351 + 17];
          v389 = (v385 + (v387 * v348[v351 + 16])) + (v388 * v348[v351 + 17]);
          v390 = (v386 + (v387 * v349[v351 + 16])) + (v388 * v349[v351 + 17]);
          v391 = v350[v351 + 18];
          v392 = v350[v351 + 19];
          v393 = (v389 + (v391 * v348[v351 + 18])) + (v392 * v348[v351 + 19]);
          v394 = (v390 + (v391 * v349[v351 + 18])) + (v392 * v349[v351 + 19]);
          v395 = v350[v351 + 20];
          v396 = v350[v351 + 21];
          v397 = (v393 + (v395 * v348[v351 + 20])) + (v396 * v348[v351 + 21]);
          v398 = (v394 + (v395 * v349[v351 + 20])) + (v396 * v349[v351 + 21]);
          v399 = v350[v351 + 22];
          v400 = v350[v351 + 23];
          v401 = (v397 + (v399 * v348[v351 + 22])) + (v400 * v348[v351 + 23]);
          v402 = (v398 + (v399 * v349[v351 + 22])) + (v400 * v349[v351 + 23]);
          v403 = v350[v351 + 24];
          v404 = v350[v351 + 25];
          v405 = (v401 + (v403 * v348[v351 + 24])) + (v404 * v348[v351 + 25]);
          v406 = (v402 + (v403 * v349[v351 + 24])) + (v404 * v349[v351 + 25]);
          v407 = v350[v351 + 26];
          v408 = v350[v351 + 27];
          v409 = (v405 + (v407 * v348[v351 + 26])) + (v408 * v348[v351 + 27]);
          v410 = (v406 + (v407 * v349[v351 + 26])) + (v408 * v349[v351 + 27]);
          v411 = v350[v351 + 28];
          v412 = v350[v351 + 29];
          v413 = (v409 + (v411 * v348[v351 + 28])) + (v412 * v348[v351 + 29]);
          v414 = (v410 + (v411 * v349[v351 + 28])) + (v412 * v349[v351 + 29]);
          v415 = v350[v351 + 30];
          v416 = v350[v351 + 31];
          v354 = (v413 + (v415 * v348[v351 + 30])) + (v416 * v348[v351 + 31]);
          v417 = v353;
          v352 = (v414 + (v415 * v349[v351 + 30])) + (v416 * v349[v351 + 31]);
          v353 -= 32;
          v351 += 32;
        }

        while (v417 > 0x3F);
        v350 = (v350 + v351 * 4);
        v349 = (v349 + v351 * 4);
        v348 = (v348 + v351 * 4);
      }

      if (v353 >= 16)
      {
        v418 = v353 + 16;
        do
        {
          v419 = v350[1];
          v420 = (v354 + (*v350 * *v348)) + (v419 * v348[1]);
          v421 = (v352 + (*v350 * *v349)) + (v419 * v349[1]);
          v422 = v350[2];
          v423 = v350[3];
          v424 = (v420 + (v422 * v348[2])) + (v423 * v348[3]);
          v425 = (v421 + (v422 * v349[2])) + (v423 * v349[3]);
          v426 = v350[4];
          v427 = v350[5];
          v428 = (v424 + (v426 * v348[4])) + (v427 * v348[5]);
          v429 = (v425 + (v426 * v349[4])) + (v427 * v349[5]);
          v430 = v350[6];
          v431 = v350[7];
          v432 = (v428 + (v430 * v348[6])) + (v431 * v348[7]);
          v433 = (v429 + (v430 * v349[6])) + (v431 * v349[7]);
          v434 = v350[8];
          v435 = v350[9];
          v436 = (v432 + (v434 * v348[8])) + (v435 * v348[9]);
          v437 = (v433 + (v434 * v349[8])) + (v435 * v349[9]);
          v438 = v350[10];
          v439 = v350[11];
          v440 = (v436 + (v438 * v348[10])) + (v439 * v348[11]);
          v441 = (v437 + (v438 * v349[10])) + (v439 * v349[11]);
          v442 = v350[12];
          v443 = v350[13];
          v444 = (v440 + (v442 * v348[12])) + (v443 * v348[13]);
          v445 = (v441 + (v442 * v349[12])) + (v443 * v349[13]);
          v446 = v350[14];
          v447 = v350[15];
          v354 = (v444 + (v446 * v348[14])) + (v447 * v348[15]);
          v352 = (v445 + (v446 * v349[14])) + (v447 * v349[15]);
          v350 += 16;
          v348 += 16;
          v349 += 16;
          v418 -= 16;
        }

        while (v418 > 0x1F);
      }

      v448 = v347 - v347;
      *a2 = v354 + (v448 * (v352 - v354));
      a2 += a5;
      v12 = v13 + v12;
      ++v345;
    }

    while (v345 != a4);
  }

  *(a1 + 160) = v12;
  return result;
}

uint64_t Resampler2::ConvertScalar<Resampler2::RampedRate>(uint64_t a1, float *a2, _DWORD *a3, int a4, int a5)
{
  v10 = *(a1 + 224);
  v456[0] = *(a1 + 208);
  v456[1] = v10;
  v456[2] = *(a1 + 240);
  v457 = *(a1 + 256);
  RateRamp::OffsetTimes(v456, -*(a1 + 136), -*(a1 + 272));
  v458 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = *(a1 + 88);
  v13 = *(a1 + 160);
  v14 = *(*(a1 + 56) + 16);
  result = (*(*a1 + 152))(a1);
  v16 = result;
  if (a3)
  {
    if (a4 >= 1)
    {
      v17 = 0;
      v18 = 0.0;
      do
      {
        RateRamp::RateForOutputTime(v456, v18);
        *(a1 + 168) = v19;
        Resampler2::SetVarispeedSinc(a1, v19);
        result = RateRamp::InputTimeForOutputTime(v456, v18);
        v21 = fmax(v20, 0.0);
        if (v21 >= v458)
        {
          v13 = v458;
        }

        else
        {
          v13 = v21;
        }

        v22 = (v13 - v13) * v14;
        v23 = (**(a1 + 56) + 4 * v16 * v22);
        v24 = &v23[v16];
        v25 = (v11 + 4 * v13);
        v26 = (v12 + 4 * v13);
        if (v16 < 32)
        {
          v32 = 0.0;
          v31 = 0.0;
          v30 = 0.0;
          v29 = v16;
          v28 = 0.0;
        }

        else
        {
          v27 = 0;
          v28 = 0.0;
          v29 = v16;
          v30 = 0.0;
          v31 = 0.0;
          v32 = 0.0;
          do
          {
            result = &v25[v27];
            v33 = v25[v27];
            v34 = v25[v27 + 1];
            v35 = v23[v27];
            v36 = v23[v27 + 1];
            v37 = v28 + (v33 * v35);
            v38 = v24[v27];
            v39 = v24[v27 + 1];
            v40 = v32 + (v33 * v38);
            v41 = v26[v27];
            v42 = v26[v27 + 1];
            v43 = v37 + (v34 * v36);
            v44 = v40 + (v34 * v39);
            v45 = (v31 + (v41 * v35)) + (v42 * v36);
            v46 = (v30 + (v41 * v38)) + (v42 * v39);
            v47 = v25[v27 + 2];
            v48 = v25[v27 + 3];
            v49 = v23[v27 + 2];
            v50 = v23[v27 + 3];
            v51 = v24[v27 + 2];
            v52 = v24[v27 + 3];
            v53 = v26[v27 + 2];
            v54 = v26[v27 + 3];
            v55 = (v43 + (v47 * v49)) + (v48 * v50);
            v56 = (v44 + (v47 * v51)) + (v48 * v52);
            v57 = (v45 + (v53 * v49)) + (v54 * v50);
            v58 = (v46 + (v53 * v51)) + (v54 * v52);
            v59 = v25[v27 + 4];
            v60 = v25[v27 + 5];
            v61 = v23[v27 + 4];
            v62 = v23[v27 + 5];
            v63 = v24[v27 + 4];
            v64 = v24[v27 + 5];
            v65 = v55 + (v59 * v61);
            v66 = v56 + (v59 * v63);
            v67 = v26[v27 + 4];
            v68 = v26[v27 + 5];
            v69 = v65 + (v60 * v62);
            v70 = v66 + (v60 * v64);
            v71 = (v57 + (v67 * v61)) + (v68 * v62);
            v72 = (v58 + (v67 * v63)) + (v68 * v64);
            v73 = v25[v27 + 6];
            v74 = v25[v27 + 7];
            v75 = v23[v27 + 6];
            v76 = v23[v27 + 7];
            v77 = v69 + (v73 * v75);
            v78 = v24[v27 + 6];
            v79 = v24[v27 + 7];
            v80 = v70 + (v73 * v78);
            v81 = v26[v27 + 6];
            v82 = v26[v27 + 7];
            v83 = v77 + (v74 * v76);
            v84 = v80 + (v74 * v79);
            v85 = (v71 + (v81 * v75)) + (v82 * v76);
            v86 = (v72 + (v81 * v78)) + (v82 * v79);
            v87 = v25[v27 + 8];
            v88 = v25[v27 + 9];
            v89 = v23[v27 + 8];
            v90 = v23[v27 + 9];
            v91 = v24[v27 + 8];
            v92 = v24[v27 + 9];
            v93 = v26[v27 + 8];
            v94 = v26[v27 + 9];
            v95 = (v83 + (v87 * v89)) + (v88 * v90);
            v96 = (v84 + (v87 * v91)) + (v88 * v92);
            v97 = (v85 + (v93 * v89)) + (v94 * v90);
            v98 = (v86 + (v93 * v91)) + (v94 * v92);
            v99 = v25[v27 + 10];
            v100 = v25[v27 + 11];
            v101 = v23[v27 + 10];
            v102 = v23[v27 + 11];
            v103 = v24[v27 + 10];
            v104 = v24[v27 + 11];
            v105 = v95 + (v99 * v101);
            v106 = v96 + (v99 * v103);
            v107 = v26[v27 + 10];
            v108 = v26[v27 + 11];
            v109 = v105 + (v100 * v102);
            v110 = v106 + (v100 * v104);
            v111 = (v97 + (v107 * v101)) + (v108 * v102);
            v112 = (v98 + (v107 * v103)) + (v108 * v104);
            v113 = v25[v27 + 12];
            v114 = v25[v27 + 13];
            v115 = v23[v27 + 12];
            v116 = v23[v27 + 13];
            v117 = v109 + (v113 * v115);
            v118 = v24[v27 + 12];
            v119 = v24[v27 + 13];
            v120 = v110 + (v113 * v118);
            v121 = v26[v27 + 12];
            v122 = v26[v27 + 13];
            v123 = v117 + (v114 * v116);
            v124 = v120 + (v114 * v119);
            v125 = (v111 + (v121 * v115)) + (v122 * v116);
            v126 = (v112 + (v121 * v118)) + (v122 * v119);
            v127 = v25[v27 + 14];
            v128 = v25[v27 + 15];
            v129 = v23[v27 + 14];
            v130 = v23[v27 + 15];
            v131 = v24[v27 + 14];
            v132 = v24[v27 + 15];
            v133 = v26[v27 + 14];
            v134 = v26[v27 + 15];
            v135 = (v123 + (v127 * v129)) + (v128 * v130);
            v136 = (v124 + (v127 * v131)) + (v128 * v132);
            v137 = (v125 + (v133 * v129)) + (v134 * v130);
            v138 = (v126 + (v133 * v131)) + (v134 * v132);
            v139 = v25[v27 + 16];
            v140 = v25[v27 + 17];
            v141 = v23[v27 + 16];
            v142 = v23[v27 + 17];
            v143 = v24[v27 + 16];
            v144 = v24[v27 + 17];
            v145 = v135 + (v139 * v141);
            v146 = v136 + (v139 * v143);
            v147 = v26[v27 + 16];
            v148 = v26[v27 + 17];
            v149 = v145 + (v140 * v142);
            v150 = v146 + (v140 * v144);
            v151 = (v137 + (v147 * v141)) + (v148 * v142);
            v152 = (v138 + (v147 * v143)) + (v148 * v144);
            v153 = v25[v27 + 18];
            v154 = v25[v27 + 19];
            v155 = v23[v27 + 18];
            v156 = v23[v27 + 19];
            v157 = v149 + (v153 * v155);
            v158 = v24[v27 + 18];
            v159 = v24[v27 + 19];
            v160 = v150 + (v153 * v158);
            v161 = v26[v27 + 18];
            v162 = v26[v27 + 19];
            v163 = v157 + (v154 * v156);
            v164 = v160 + (v154 * v159);
            v165 = (v151 + (v161 * v155)) + (v162 * v156);
            v166 = (v152 + (v161 * v158)) + (v162 * v159);
            v167 = v25[v27 + 20];
            v168 = v25[v27 + 21];
            v169 = v23[v27 + 20];
            v170 = v23[v27 + 21];
            v171 = v24[v27 + 20];
            v172 = v24[v27 + 21];
            v173 = v26[v27 + 20];
            v174 = v26[v27 + 21];
            v175 = (v163 + (v167 * v169)) + (v168 * v170);
            v176 = (v164 + (v167 * v171)) + (v168 * v172);
            v177 = (v165 + (v173 * v169)) + (v174 * v170);
            v178 = (v166 + (v173 * v171)) + (v174 * v172);
            v179 = v25[v27 + 22];
            v180 = v25[v27 + 23];
            v181 = v23[v27 + 22];
            v182 = v23[v27 + 23];
            v183 = v24[v27 + 22];
            v184 = v24[v27 + 23];
            v185 = v175 + (v179 * v181);
            v186 = v176 + (v179 * v183);
            v187 = v26[v27 + 22];
            v188 = v26[v27 + 23];
            v189 = v185 + (v180 * v182);
            v190 = v186 + (v180 * v184);
            v191 = (v177 + (v187 * v181)) + (v188 * v182);
            v192 = (v178 + (v187 * v183)) + (v188 * v184);
            v193 = v25[v27 + 24];
            v194 = v25[v27 + 25];
            v195 = v23[v27 + 24];
            v196 = v23[v27 + 25];
            v197 = v189 + (v193 * v195);
            v198 = v24[v27 + 24];
            v199 = v24[v27 + 25];
            v200 = v190 + (v193 * v198);
            v201 = v26[v27 + 24];
            v202 = v26[v27 + 25];
            v203 = v197 + (v194 * v196);
            v204 = v200 + (v194 * v199);
            v205 = (v191 + (v201 * v195)) + (v202 * v196);
            v206 = (v192 + (v201 * v198)) + (v202 * v199);
            v207 = v25[v27 + 26];
            v208 = v25[v27 + 27];
            v209 = v23[v27 + 26];
            v210 = v23[v27 + 27];
            v211 = v24[v27 + 26];
            v212 = v24[v27 + 27];
            v213 = v26[v27 + 26];
            v214 = v26[v27 + 27];
            v215 = (v203 + (v207 * v209)) + (v208 * v210);
            v216 = (v204 + (v207 * v211)) + (v208 * v212);
            v217 = (v205 + (v213 * v209)) + (v214 * v210);
            v218 = (v206 + (v213 * v211)) + (v214 * v212);
            v219 = v25[v27 + 28];
            v220 = v25[v27 + 29];
            v221 = v23[v27 + 28];
            v222 = v23[v27 + 29];
            v223 = v24[v27 + 28];
            v224 = v24[v27 + 29];
            v225 = v215 + (v219 * v221);
            v226 = v216 + (v219 * v223);
            v227 = v26[v27 + 28];
            v228 = v26[v27 + 29];
            v229 = v225 + (v220 * v222);
            v230 = v226 + (v220 * v224);
            v231 = (v217 + (v227 * v221)) + (v228 * v222);
            v232 = (v218 + (v227 * v223)) + (v228 * v224);
            v233 = v25[v27 + 30];
            v234 = v25[v27 + 31];
            v235 = v23[v27 + 30];
            v236 = v23[v27 + 31];
            v237 = v229 + (v233 * v235);
            v238 = v24[v27 + 30];
            v239 = v24[v27 + 31];
            v240 = v230 + (v233 * v238);
            v241 = v26[v27 + 30];
            v242 = v26[v27 + 31];
            v28 = v237 + (v234 * v236);
            v32 = v240 + (v234 * v239);
            v243 = v29;
            v31 = (v231 + (v241 * v235)) + (v242 * v236);
            v30 = (v232 + (v241 * v238)) + (v242 * v239);
            v29 -= 32;
            v27 += 32;
          }

          while (v243 > 0x3F);
          v23 = (v23 + v27 * 4);
          v26 = (v26 + v27 * 4);
          v25 = (v25 + v27 * 4);
          v24 = (v24 + v27 * 4);
        }

        if (v29 >= 16)
        {
          v244 = v29 + 16;
          do
          {
            v245 = v25[1];
            v246 = v23[1];
            v247 = v24[1];
            v248 = v26[1];
            v249 = (v28 + (*v25 * *v23)) + (v245 * v246);
            v250 = (v32 + (*v25 * *v24)) + (v245 * v247);
            v251 = (v31 + (*v26 * *v23)) + (v248 * v246);
            v252 = (v30 + (*v26 * *v24)) + (v248 * v247);
            v253 = v25[2];
            v254 = v25[3];
            v255 = v23[2];
            v256 = v23[3];
            v257 = v249 + (v253 * v255);
            v258 = v24[2];
            v259 = v24[3];
            v260 = v250 + (v253 * v258);
            v261 = v26[2];
            v262 = v26[3];
            v263 = v257 + (v254 * v256);
            v264 = v260 + (v254 * v259);
            v265 = (v251 + (v261 * v255)) + (v262 * v256);
            v266 = (v252 + (v261 * v258)) + (v262 * v259);
            v267 = v25[4];
            v268 = v25[5];
            v269 = v23[4];
            v270 = v23[5];
            v271 = v263 + (v267 * v269);
            v272 = v24[4];
            v273 = v24[5];
            v274 = v264 + (v267 * v272);
            v275 = v26[4];
            v276 = v26[5];
            v277 = v271 + (v268 * v270);
            v278 = v274 + (v268 * v273);
            v279 = (v265 + (v275 * v269)) + (v276 * v270);
            v280 = (v266 + (v275 * v272)) + (v276 * v273);
            v281 = v25[6];
            v282 = v25[7];
            v283 = v23[6];
            v284 = v23[7];
            v285 = v277 + (v281 * v283);
            v286 = v24[6];
            v287 = v24[7];
            v288 = v278 + (v281 * v286);
            v289 = v26[6];
            v290 = v26[7];
            v291 = v285 + (v282 * v284);
            v292 = v288 + (v282 * v287);
            v293 = (v279 + (v289 * v283)) + (v290 * v284);
            v294 = (v280 + (v289 * v286)) + (v290 * v287);
            v295 = v25[8];
            v296 = v25[9];
            v297 = v23[8];
            v298 = v23[9];
            v299 = v291 + (v295 * v297);
            v300 = v24[8];
            v301 = v24[9];
            v302 = v292 + (v295 * v300);
            v303 = v26[8];
            v304 = v26[9];
            v305 = v299 + (v296 * v298);
            v306 = v302 + (v296 * v301);
            v307 = (v293 + (v303 * v297)) + (v304 * v298);
            v308 = (v294 + (v303 * v300)) + (v304 * v301);
            v309 = v25[10];
            v310 = v25[11];
            v311 = v23[10];
            v312 = v23[11];
            v313 = v305 + (v309 * v311);
            v314 = v24[10];
            v315 = v24[11];
            v316 = v306 + (v309 * v314);
            v317 = v26[10];
            v318 = v26[11];
            v319 = v313 + (v310 * v312);
            v320 = v316 + (v310 * v315);
            v321 = (v307 + (v317 * v311)) + (v318 * v312);
            v322 = (v308 + (v317 * v314)) + (v318 * v315);
            v323 = v25[12];
            v324 = v25[13];
            v325 = v23[12];
            v326 = v23[13];
            v327 = v319 + (v323 * v325);
            v328 = v24[12];
            v329 = v24[13];
            v330 = v320 + (v323 * v328);
            v331 = v26[12];
            v332 = v26[13];
            v333 = v327 + (v324 * v326);
            v334 = v330 + (v324 * v329);
            v335 = (v321 + (v331 * v325)) + (v332 * v326);
            v336 = (v322 + (v331 * v328)) + (v332 * v329);
            v337 = v25[14];
            v338 = v25[15];
            v339 = v23[14];
            v340 = v23[15];
            v341 = v333 + (v337 * v339);
            v342 = v24[14];
            v343 = v24[15];
            v344 = v334 + (v337 * v342);
            v345 = v26[14];
            v346 = v26[15];
            v28 = v341 + (v338 * v340);
            v32 = v344 + (v338 * v343);
            v31 = (v335 + (v345 * v339)) + (v346 * v340);
            v30 = (v336 + (v345 * v342)) + (v346 * v343);
            v23 += 16;
            v24 += 16;
            v244 -= 16;
            v25 += 16;
            v26 += 16;
          }

          while (v244 > 0x1F);
        }

        v347 = v22 - v22;
        v348 = v28 + v347 * (v32 - v28);
        *a2 = v348;
        a2 += a5;
        *&v347 = v31 + v347 * (v30 - v31);
        *a3 = LODWORD(v347);
        a3 += a5;
        ++v17;
        v18 = v18 + 1.0;
      }

      while (v17 != a4);
    }
  }

  else if (a4 >= 1)
  {
    v349 = 0;
    v350 = 0.0;
    do
    {
      RateRamp::RateForOutputTime(v456, v350);
      *(a1 + 168) = v351;
      Resampler2::SetVarispeedSinc(a1, v351);
      result = RateRamp::InputTimeForOutputTime(v456, v350);
      v353 = fmax(v352, 0.0);
      if (v353 >= v458)
      {
        v13 = v458;
      }

      else
      {
        v13 = v353;
      }

      v354 = (v13 - v13) * v14;
      v355 = (**(a1 + 56) + 4 * v16 * v354);
      v356 = &v355[v16];
      v357 = (v11 + 4 * v13);
      if (v16 < 32)
      {
        v361 = 0.0;
        v359 = 0.0;
        v360 = v16;
      }

      else
      {
        v358 = 0;
        v359 = 0.0;
        v360 = v16;
        v361 = 0.0;
        do
        {
          v362 = v357[v358];
          v363 = v357[v358 + 1];
          v364 = (v361 + (v362 * v355[v358])) + (v363 * v355[v358 + 1]);
          v365 = (v359 + (v362 * v356[v358])) + (v363 * v356[v358 + 1]);
          v366 = v357[v358 + 2];
          v367 = v357[v358 + 3];
          v368 = (v364 + (v366 * v355[v358 + 2])) + (v367 * v355[v358 + 3]);
          v369 = (v365 + (v366 * v356[v358 + 2])) + (v367 * v356[v358 + 3]);
          v370 = v357[v358 + 4];
          v371 = v357[v358 + 5];
          v372 = (v368 + (v370 * v355[v358 + 4])) + (v371 * v355[v358 + 5]);
          v373 = (v369 + (v370 * v356[v358 + 4])) + (v371 * v356[v358 + 5]);
          v374 = v357[v358 + 6];
          v375 = v357[v358 + 7];
          v376 = (v372 + (v374 * v355[v358 + 6])) + (v375 * v355[v358 + 7]);
          v377 = (v373 + (v374 * v356[v358 + 6])) + (v375 * v356[v358 + 7]);
          v378 = v357[v358 + 8];
          v379 = v357[v358 + 9];
          v380 = (v376 + (v378 * v355[v358 + 8])) + (v379 * v355[v358 + 9]);
          v381 = (v377 + (v378 * v356[v358 + 8])) + (v379 * v356[v358 + 9]);
          v382 = v357[v358 + 10];
          v383 = v357[v358 + 11];
          v384 = (v380 + (v382 * v355[v358 + 10])) + (v383 * v355[v358 + 11]);
          v385 = (v381 + (v382 * v356[v358 + 10])) + (v383 * v356[v358 + 11]);
          v386 = v357[v358 + 12];
          v387 = v357[v358 + 13];
          v388 = (v384 + (v386 * v355[v358 + 12])) + (v387 * v355[v358 + 13]);
          v389 = (v385 + (v386 * v356[v358 + 12])) + (v387 * v356[v358 + 13]);
          v390 = v357[v358 + 14];
          v391 = v357[v358 + 15];
          v392 = (v388 + (v390 * v355[v358 + 14])) + (v391 * v355[v358 + 15]);
          v393 = (v389 + (v390 * v356[v358 + 14])) + (v391 * v356[v358 + 15]);
          v394 = v357[v358 + 16];
          v395 = v357[v358 + 17];
          v396 = (v392 + (v394 * v355[v358 + 16])) + (v395 * v355[v358 + 17]);
          v397 = (v393 + (v394 * v356[v358 + 16])) + (v395 * v356[v358 + 17]);
          v398 = v357[v358 + 18];
          v399 = v357[v358 + 19];
          v400 = (v396 + (v398 * v355[v358 + 18])) + (v399 * v355[v358 + 19]);
          v401 = (v397 + (v398 * v356[v358 + 18])) + (v399 * v356[v358 + 19]);
          v402 = v357[v358 + 20];
          v403 = v357[v358 + 21];
          v404 = (v400 + (v402 * v355[v358 + 20])) + (v403 * v355[v358 + 21]);
          v405 = (v401 + (v402 * v356[v358 + 20])) + (v403 * v356[v358 + 21]);
          v406 = v357[v358 + 22];
          v407 = v357[v358 + 23];
          v408 = (v404 + (v406 * v355[v358 + 22])) + (v407 * v355[v358 + 23]);
          v409 = (v405 + (v406 * v356[v358 + 22])) + (v407 * v356[v358 + 23]);
          v410 = v357[v358 + 24];
          v411 = v357[v358 + 25];
          v412 = (v408 + (v410 * v355[v358 + 24])) + (v411 * v355[v358 + 25]);
          v413 = (v409 + (v410 * v356[v358 + 24])) + (v411 * v356[v358 + 25]);
          v414 = v357[v358 + 26];
          v415 = v357[v358 + 27];
          v416 = (v412 + (v414 * v355[v358 + 26])) + (v415 * v355[v358 + 27]);
          v417 = (v413 + (v414 * v356[v358 + 26])) + (v415 * v356[v358 + 27]);
          v418 = v357[v358 + 28];
          v419 = v357[v358 + 29];
          v420 = (v416 + (v418 * v355[v358 + 28])) + (v419 * v355[v358 + 29]);
          v421 = (v417 + (v418 * v356[v358 + 28])) + (v419 * v356[v358 + 29]);
          v422 = v357[v358 + 30];
          v423 = v357[v358 + 31];
          v361 = (v420 + (v422 * v355[v358 + 30])) + (v423 * v355[v358 + 31]);
          v424 = v360;
          v359 = (v421 + (v422 * v356[v358 + 30])) + (v423 * v356[v358 + 31]);
          v360 -= 32;
          v358 += 32;
        }

        while (v424 > 0x3F);
        v357 = (v357 + v358 * 4);
        v356 = (v356 + v358 * 4);
        v355 = (v355 + v358 * 4);
      }

      if (v360 >= 16)
      {
        v425 = v360 + 16;
        do
        {
          v426 = v357[1];
          v427 = (v361 + (*v357 * *v355)) + (v426 * v355[1]);
          v428 = (v359 + (*v357 * *v356)) + (v426 * v356[1]);
          v429 = v357[2];
          v430 = v357[3];
          v431 = (v427 + (v429 * v355[2])) + (v430 * v355[3]);
          v432 = (v428 + (v429 * v356[2])) + (v430 * v356[3]);
          v433 = v357[4];
          v434 = v357[5];
          v435 = (v431 + (v433 * v355[4])) + (v434 * v355[5]);
          v436 = (v432 + (v433 * v356[4])) + (v434 * v356[5]);
          v437 = v357[6];
          v438 = v357[7];
          v439 = (v435 + (v437 * v355[6])) + (v438 * v355[7]);
          v440 = (v436 + (v437 * v356[6])) + (v438 * v356[7]);
          v441 = v357[8];
          v442 = v357[9];
          v443 = (v439 + (v441 * v355[8])) + (v442 * v355[9]);
          v444 = (v440 + (v441 * v356[8])) + (v442 * v356[9]);
          v445 = v357[10];
          v446 = v357[11];
          v447 = (v443 + (v445 * v355[10])) + (v446 * v355[11]);
          v448 = (v444 + (v445 * v356[10])) + (v446 * v356[11]);
          v449 = v357[12];
          v450 = v357[13];
          v451 = (v447 + (v449 * v355[12])) + (v450 * v355[13]);
          v452 = (v448 + (v449 * v356[12])) + (v450 * v356[13]);
          v453 = v357[14];
          v454 = v357[15];
          v361 = (v451 + (v453 * v355[14])) + (v454 * v355[15]);
          v359 = (v452 + (v453 * v356[14])) + (v454 * v356[15]);
          v357 += 16;
          v355 += 16;
          v356 += 16;
          v425 -= 16;
        }

        while (v425 > 0x1F);
      }

      v455 = v354 - v354;
      *a2 = v361 + (v455 * (v359 - v361));
      a2 += a5;
      ++v349;
      v350 = v350 + 1.0;
    }

    while (v349 != a4);
  }

  *(a1 + 160) = v13;
  return result;
}

void Resampler2::ConvertSIMD<Resampler2::FixedRate>(uint64_t a1, float *a2, float *a3, int a4, int a5)
{
  v10 = *(a1 + 168);
  v11 = (*(*a1 + 152))(a1);
  v12 = v11;
  v13 = 4 * v11;
  v14 = *(a1 + 116);
  v15 = *(a1 + 80);
  v16 = *(a1 + 56);
  v17 = v16[4];
  v18 = *(a1 + 160);
  if (a3)
  {
    if (a4 >= 1)
    {
      v19 = 0;
      v20 = *(a1 + 88);
      v259 = v13;
      v260 = v11;
      v258 = v13 + 32;
      do
      {
        v21 = **(a1 + 56);
        v22 = (v18 - v18) * v17;
        v23 = v12 * v22;
        v24 = (v21 + 4 * v23);
        v25 = (v15 + 4 * v18);
        v26 = (v20 + 4 * v18);
        v27 = v22;
        if (v14 == 1650553971)
        {
          vdotprD2i(v25->f32, v26->f32, v24, &v24[v260], v22 - v27, a2, a3, v260);
        }

        else
        {
          v28 = 0uLL;
          v29 = v12;
          v30 = 0uLL;
          v31 = 0uLL;
          v32 = 0uLL;
          if (v12 >= 64)
          {
            v33 = 0;
            v34 = v21 + v259 + 4 * v23;
            v29 = v12;
            do
            {
              v35 = v25[v33 / 0x10];
              v36 = v25[v33 / 0x10 + 1];
              v37 = *&v24[v33 / 4];
              v38 = *&v24[v33 / 4 + 4];
              v39 = vmlaq_f32(v32, v37, v35);
              v40 = *(v34 + v33);
              v41 = *(v34 + v33 + 16);
              v42 = vmlaq_f32(v31, v40, v35);
              v43 = v26[v33 / 0x10];
              v44 = v26[v33 / 0x10 + 1];
              v45 = vmlaq_f32(v39, v38, v36);
              v46 = vmlaq_f32(v42, v41, v36);
              v47 = vmlaq_f32(vmlaq_f32(v30, v37, v43), v38, v44);
              v48 = vmlaq_f32(vmlaq_f32(v28, v40, v43), v41, v44);
              v49 = v25[v33 / 0x10 + 2];
              v50 = v25[v33 / 0x10 + 3];
              v51 = *&v24[v33 / 4 + 8];
              v52 = *&v24[v33 / 4 + 12];
              v53 = vmlaq_f32(v45, v51, v49);
              v54 = *(v34 + v33 + 32);
              v55 = *(v34 + v33 + 48);
              v56 = vmlaq_f32(v46, v54, v49);
              v57 = v26[v33 / 0x10 + 2];
              v58 = v26[v33 / 0x10 + 3];
              v59 = vmlaq_f32(v53, v52, v50);
              v60 = vmlaq_f32(v56, v55, v50);
              v61 = vmlaq_f32(vmlaq_f32(v47, v51, v57), v52, v58);
              v62 = vmlaq_f32(vmlaq_f32(v48, v54, v57), v55, v58);
              v63 = v25[v33 / 0x10 + 4];
              v64 = v25[v33 / 0x10 + 5];
              v65 = *&v24[v33 / 4 + 16];
              v66 = *&v24[v33 / 4 + 20];
              v67 = vmlaq_f32(v59, v65, v63);
              v68 = *(v34 + v33 + 64);
              v69 = *(v34 + v33 + 80);
              v70 = vmlaq_f32(v60, v68, v63);
              v71 = v26[v33 / 0x10 + 4];
              v72 = v26[v33 / 0x10 + 5];
              v73 = vmlaq_f32(v67, v66, v64);
              v74 = vmlaq_f32(v70, v69, v64);
              v75 = vmlaq_f32(vmlaq_f32(v61, v65, v71), v66, v72);
              v76 = vmlaq_f32(vmlaq_f32(v62, v68, v71), v69, v72);
              v77 = v25[v33 / 0x10 + 6];
              v78 = v25[v33 / 0x10 + 7];
              v79 = *&v24[v33 / 4 + 24];
              v80 = *&v24[v33 / 4 + 28];
              v81 = vmlaq_f32(v73, v79, v77);
              v82 = *(v34 + v33 + 96);
              v83 = *(v34 + v33 + 112);
              v84 = vmlaq_f32(v74, v82, v77);
              v85 = v26[v33 / 0x10 + 6];
              v86 = v26[v33 / 0x10 + 7];
              v87 = vmlaq_f32(v81, v80, v78);
              v88 = vmlaq_f32(v84, v83, v78);
              v89 = vmlaq_f32(vmlaq_f32(v75, v79, v85), v80, v86);
              v90 = vmlaq_f32(vmlaq_f32(v76, v82, v85), v83, v86);
              v91 = v25[v33 / 0x10 + 8];
              v92 = v25[v33 / 0x10 + 9];
              v93 = *&v24[v33 / 4 + 32];
              v94 = *&v24[v33 / 4 + 36];
              v95 = vmlaq_f32(v87, v93, v91);
              v96 = *(v34 + v33 + 128);
              v97 = *(v34 + v33 + 144);
              v98 = vmlaq_f32(v88, v96, v91);
              v99 = v26[v33 / 0x10 + 8];
              v100 = v26[v33 / 0x10 + 9];
              v101 = vmlaq_f32(v95, v94, v92);
              v102 = vmlaq_f32(v98, v97, v92);
              v103 = vmlaq_f32(vmlaq_f32(v89, v93, v99), v94, v100);
              v104 = vmlaq_f32(vmlaq_f32(v90, v96, v99), v97, v100);
              v105 = v25[v33 / 0x10 + 10];
              v106 = v25[v33 / 0x10 + 11];
              v107 = *&v24[v33 / 4 + 40];
              v108 = *&v24[v33 / 4 + 44];
              v109 = vmlaq_f32(v101, v107, v105);
              v110 = *(v34 + v33 + 160);
              v111 = *(v34 + v33 + 176);
              v112 = vmlaq_f32(v102, v110, v105);
              v113 = v26[v33 / 0x10 + 10];
              v114 = v26[v33 / 0x10 + 11];
              v115 = vmlaq_f32(v109, v108, v106);
              v116 = vmlaq_f32(v112, v111, v106);
              v117 = vmlaq_f32(vmlaq_f32(v103, v107, v113), v108, v114);
              v118 = vmlaq_f32(vmlaq_f32(v104, v110, v113), v111, v114);
              v119 = v25[v33 / 0x10 + 12];
              v120 = v25[v33 / 0x10 + 13];
              v121 = *&v24[v33 / 4 + 48];
              v122 = *&v24[v33 / 4 + 52];
              v123 = vmlaq_f32(v115, v121, v119);
              v124 = *(v34 + v33 + 192);
              v125 = *(v34 + v33 + 208);
              v126 = vmlaq_f32(v116, v124, v119);
              v127 = v26[v33 / 0x10 + 12];
              v128 = v26[v33 / 0x10 + 13];
              v129 = vmlaq_f32(v123, v122, v120);
              v130 = vmlaq_f32(v126, v125, v120);
              v131 = vmlaq_f32(vmlaq_f32(v117, v121, v127), v122, v128);
              v132 = vmlaq_f32(vmlaq_f32(v118, v124, v127), v125, v128);
              v133 = v25[v33 / 0x10 + 14];
              v134 = v25[v33 / 0x10 + 15];
              v135 = *&v24[v33 / 4 + 56];
              v136 = *&v24[v33 / 4 + 60];
              v137 = vmlaq_f32(v129, v135, v133);
              v138 = *(v34 + v33 + 224);
              v139 = *(v34 + v33 + 240);
              v140 = vmlaq_f32(v130, v138, v133);
              v141 = v26[v33 / 0x10 + 14];
              v142 = v26[v33 / 0x10 + 15];
              v143 = v29;
              v32 = vmlaq_f32(v137, v136, v134);
              v31 = vmlaq_f32(v140, v139, v134);
              v30 = vmlaq_f32(vmlaq_f32(v131, v135, v141), v136, v142);
              v28 = vmlaq_f32(vmlaq_f32(v132, v138, v141), v139, v142);
              v29 -= 64;
              v33 += 256;
            }

            while (v143 > 0x7F);
            v24 = (v24 + v33);
            v26 = (v26 + v33);
            v25 = (v25 + v33);
          }

          if (v29 >= 16)
          {
            v144 = v29 + 16;
            v145 = (v24 + 8);
            v146 = (v24 + v258);
            do
            {
              v147 = v25[1];
              v148 = v145[-2];
              v149 = v145[-1];
              v150 = v146[-2];
              v151 = v146[-1];
              v152 = v26[1];
              v153 = vmlaq_f32(vmlaq_f32(v32, v148, *v25), v149, v147);
              v154 = vmlaq_f32(vmlaq_f32(v31, v150, *v25), v151, v147);
              v155 = vmlaq_f32(vmlaq_f32(v30, v148, *v26), v149, v152);
              v156 = vmlaq_f32(vmlaq_f32(v28, v150, *v26), v151, v152);
              v157 = v25[2];
              v158 = v25[3];
              v159 = *v145;
              v160 = v145[1];
              v145 += 4;
              v161 = vmlaq_f32(v153, v159, v157);
              v162 = *v146;
              v163 = v146[1];
              v146 += 4;
              v164 = vmlaq_f32(v154, v162, v157);
              v165 = v26[2];
              v166 = v26[3];
              v32 = vmlaq_f32(v161, v160, v158);
              v31 = vmlaq_f32(v164, v163, v158);
              v30 = vmlaq_f32(vmlaq_f32(v155, v159, v165), v160, v166);
              v144 -= 16;
              v28 = vmlaq_f32(vmlaq_f32(v156, v162, v165), v163, v166);
              v25 += 4;
              v26 += 4;
            }

            while (v144 > 0x1F);
          }

          v167 = v22 - v27;
          v168 = vmlaq_n_f32(v32, vsubq_f32(v31, v32), v167);
          v169 = vmlaq_n_f32(v30, vsubq_f32(v28, v30), v167);
          *a2 = vaddv_f32(vadd_f32(*v168.i8, *&vextq_s8(v168, v168, 8uLL)));
          *a3 = vaddv_f32(vadd_f32(*v169.i8, *&vextq_s8(v169, v169, 8uLL)));
        }

        a2 += a5;
        a3 += a5;
        v18 = v10 + v18;
        ++v19;
      }

      while (v19 != a4);
    }
  }

  else if (a4 >= 1)
  {
    v170 = 0;
    v171 = v13;
    v172 = *v16;
    v173 = (4 * v11) & 0x7FFFFFFFFFFFFFF0;
    v174 = v172 + v13;
    v175 = v171 + 32;
    do
    {
      v176 = (v18 - v18) * v17;
      v177 = v12 * v176;
      v178 = (v172 + 4 * v177);
      v179 = (v15 + 4 * v18);
      v180 = v176;
      if (v14 == 1650553971)
      {
        v181 = (v178 + 4 * v12);
        v182 = v179[1];
        v183 = vmulq_f32(v182, v178[1]);
        v184 = vmulq_f32(*v179, *v178);
        v185 = vmulq_f32(v182, v181[1]);
        v186 = vmulq_f32(*v179, *v181);
        v187 = v178[2];
        v188 = v178[3];
        v189 = v181[2];
        v190 = v181[3];
        v191 = v179[2];
        v192 = v179[3];
        v193 = 0uLL;
        if (v173 == 64)
        {
          v194 = 0uLL;
          v195 = 0uLL;
          v196 = 0uLL;
        }

        else
        {
          v249 = v179 + 4;
          v250 = (v172 + 80 + 4 * v177);
          v195 = 0uLL;
          v251 = v173 - 64;
          v196 = 0uLL;
          v194 = 0uLL;
          do
          {
            v194 = vaddq_f64(v194, vaddq_f64(vcvt_hight_f64_f32(v183), vcvt_hight_f64_f32(v184)));
            v193 = vaddq_f64(v193, vaddq_f64(vcvtq_f64_f32(*v183.f32), vcvtq_f64_f32(*v184.f32)));
            v196 = vaddq_f64(v196, vaddq_f64(vcvt_hight_f64_f32(v185), vcvt_hight_f64_f32(v186)));
            v195 = vaddq_f64(v195, vaddq_f64(vcvtq_f64_f32(*v185.f32), vcvtq_f64_f32(*v186.f32)));
            v184 = vmulq_f32(v191, v187);
            v183 = vmulq_f32(v192, v188);
            v186 = vmulq_f32(v191, v189);
            v185 = vmulq_f32(v192, v190);
            v191 = *v249;
            v192 = v249[1];
            v249 += 2;
            v187 = v250[-1];
            v188 = *v250;
            v189 = v181[4];
            v190 = v181[5];
            v181 += 2;
            v250 += 2;
            v251 -= 32;
          }

          while (v251);
        }

        v252 = v176 - v180;
        v253 = vmulq_f32(v188, v192);
        v254 = vmulq_f32(v187, v191);
        v255 = vmulq_f32(v190, v192);
        v256 = vmulq_f32(v189, v191);
        v257 = vpaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_f32(*v185.f32), vcvtq_f64_f32(*v186.f32)), v195), vaddq_f64(vcvtq_f64_f32(*v255.f32), vcvtq_f64_f32(*v256.f32))), vaddq_f64(vaddq_f64(vaddq_f64(vcvt_hight_f64_f32(v185), vcvt_hight_f64_f32(v186)), v196), vaddq_f64(vcvt_hight_f64_f32(v255), vcvt_hight_f64_f32(v256)))), vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_f32(*v183.f32), vcvtq_f64_f32(*v184.f32)), v193), vaddq_f64(vcvtq_f64_f32(*v253.f32), vcvtq_f64_f32(*v254.f32))), vaddq_f64(vaddq_f64(vaddq_f64(vcvt_hight_f64_f32(v183), vcvt_hight_f64_f32(v184)), v194), vaddq_f64(vcvt_hight_f64_f32(v253), vcvt_hight_f64_f32(v254)))));
        v248 = v257.f64[1] + v252 * (v257.f64[0] - v257.f64[1]);
      }

      else
      {
        v197 = 0uLL;
        v198 = 0uLL;
        v199 = v12;
        if (v12 >= 64)
        {
          v200 = 0;
          v201 = v174 + 4 * v177;
          v199 = v12;
          do
          {
            v202 = v179[v200];
            v203 = v179[v200 + 1];
            v204 = vmlaq_f32(vmlaq_f32(v197, v178[v200], v202), v178[v200 + 1], v203);
            v205 = vmlaq_f32(vmlaq_f32(v198, *(v201 + v200 * 16), v202), *(v201 + v200 * 16 + 16), v203);
            v206 = v179[v200 + 2];
            v207 = v179[v200 + 3];
            v208 = vmlaq_f32(vmlaq_f32(v204, v178[v200 + 2], v206), v178[v200 + 3], v207);
            v209 = vmlaq_f32(vmlaq_f32(v205, *(v201 + v200 * 16 + 32), v206), *(v201 + v200 * 16 + 48), v207);
            v210 = v179[v200 + 4];
            v211 = v179[v200 + 5];
            v212 = vmlaq_f32(vmlaq_f32(v208, v178[v200 + 4], v210), v178[v200 + 5], v211);
            v213 = vmlaq_f32(vmlaq_f32(v209, *(v201 + v200 * 16 + 64), v210), *(v201 + v200 * 16 + 80), v211);
            v214 = v179[v200 + 6];
            v215 = v179[v200 + 7];
            v216 = vmlaq_f32(vmlaq_f32(v212, v178[v200 + 6], v214), v178[v200 + 7], v215);
            v217 = vmlaq_f32(vmlaq_f32(v213, *(v201 + v200 * 16 + 96), v214), *(v201 + v200 * 16 + 112), v215);
            v218 = v179[v200 + 8];
            v219 = v179[v200 + 9];
            v220 = vmlaq_f32(vmlaq_f32(v216, v178[v200 + 8], v218), v178[v200 + 9], v219);
            v221 = vmlaq_f32(vmlaq_f32(v217, *(v201 + v200 * 16 + 128), v218), *(v201 + v200 * 16 + 144), v219);
            v222 = v179[v200 + 10];
            v223 = v179[v200 + 11];
            v224 = vmlaq_f32(vmlaq_f32(v220, v178[v200 + 10], v222), v178[v200 + 11], v223);
            v225 = vmlaq_f32(vmlaq_f32(v221, *(v201 + v200 * 16 + 160), v222), *(v201 + v200 * 16 + 176), v223);
            v226 = v179[v200 + 12];
            v227 = v179[v200 + 13];
            v228 = vmlaq_f32(vmlaq_f32(v224, v178[v200 + 12], v226), v178[v200 + 13], v227);
            v229 = vmlaq_f32(vmlaq_f32(v225, *(v201 + v200 * 16 + 192), v226), *(v201 + v200 * 16 + 208), v227);
            v230 = v179[v200 + 14];
            v231 = v179[v200 + 15];
            v232 = v199;
            v197 = vmlaq_f32(vmlaq_f32(v228, v178[v200 + 14], v230), v178[v200 + 15], v231);
            v198 = vmlaq_f32(vmlaq_f32(v229, *(v201 + v200 * 16 + 224), v230), *(v201 + v200 * 16 + 240), v231);
            v199 -= 64;
            v200 += 16;
          }

          while (v232 > 0x7F);
          v179 = (v179 + v200 * 16);
          v178 = (v178 + v200 * 16);
        }

        if (v199 >= 16)
        {
          v233 = v199 + 16;
          v234 = (v178 + v175);
          v235 = v178 + 2;
          do
          {
            v236 = v179[1];
            v237 = vmlaq_f32(vmlaq_f32(v197, v235[-2], *v179), v235[-1], v236);
            v238 = vmlaq_f32(vmlaq_f32(v198, v234[-2], *v179), v234[-1], v236);
            v239 = v179[2];
            v240 = v179[3];
            v241 = *v235;
            v242 = v235[1];
            v235 += 4;
            v243 = vmlaq_f32(v237, v241, v239);
            v244 = *v234;
            v245 = v234[1];
            v234 += 4;
            v197 = vmlaq_f32(v243, v242, v240);
            v233 -= 16;
            v198 = vmlaq_f32(vmlaq_f32(v238, v244, v239), v245, v240);
            v179 += 4;
          }

          while (v233 > 0x1F);
        }

        v246 = v176 - v180;
        v247 = vmlaq_n_f32(v197, vsubq_f32(v198, v197), v246);
        v248 = vaddv_f32(vadd_f32(*v247.i8, *&vextq_s8(v247, v247, 8uLL)));
      }

      *a2 = v248;
      a2 += a5;
      v18 = v10 + v18;
      ++v170;
    }

    while (v170 != a4);
  }

  *(a1 + 160) = v18;
}

float vdotprD2i(const float *a1, const float *a2, const float *a3, const float *a4, double a5, float *a6, float *a7, uint64_t a8)
{
  v8 = *(a1 + 4);
  v9 = *(a2 + 4);
  v10 = (4 * a8) & 0x7FFFFFFFFFFFFFF0;
  v11 = *(a3 + 4);
  v12 = *(a4 + 4);
  v13 = vmulq_f32(v8, v11);
  v14 = vmulq_f32(*a1, *a3);
  v15 = vmulq_f32(v9, v11);
  v16 = vmulq_f32(*a2, *a3);
  v17 = vmulq_f32(v8, v12);
  v18 = vmulq_f32(*a1, *a4);
  v19 = vmulq_f32(v9, v12);
  v20 = *(a3 + 8);
  v21 = *(a3 + 12);
  v22 = *(a4 + 8);
  v23 = *(a4 + 12);
  v24 = *(a2 + 8);
  v25 = *(a2 + 12);
  v26 = 0uLL;
  v27 = *(a1 + 8);
  v28 = *(a1 + 12);
  if (v10 == 64)
  {
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
  }

  else
  {
    v36 = (a3 + v10);
    v37 = vmulq_f32(*a2, *a4);
    v34 = 0uLL;
    v38 = a4 + 16;
    v35 = 0uLL;
    v39 = a3 + 16;
    v40 = a2 + 16;
    v41 = a1 + 16;
    v32 = 0uLL;
    v33 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v29 = 0uLL;
    do
    {
      v29 = vaddq_f64(vaddq_f64(vcvt_hight_f64_f32(v13), vcvt_hight_f64_f32(v14)), v29);
      v26 = vaddq_f64(vaddq_f64(vcvtq_f64_f32(*v13.f32), vcvtq_f64_f32(*v14.f32)), v26);
      v31 = vaddq_f64(vaddq_f64(vcvt_hight_f64_f32(v15), vcvt_hight_f64_f32(v16)), v31);
      v30 = vaddq_f64(vaddq_f64(vcvtq_f64_f32(*v15.f32), vcvtq_f64_f32(*v16.f32)), v30);
      v42 = vaddq_f64(vcvtq_f64_f32(*v17.f32), vcvtq_f64_f32(*v18.f32));
      v43 = vaddq_f64(vcvt_hight_f64_f32(v17), vcvt_hight_f64_f32(v18));
      v44 = vcvt_hight_f64_f32(v19);
      v45 = vcvtq_f64_f32(*v19.f32);
      v46 = vcvt_hight_f64_f32(v37);
      v47 = vcvtq_f64_f32(*v37.f32);
      v14 = vmulq_f32(v20, v27);
      v13 = vmulq_f32(v21, v28);
      v18 = vmulq_f32(v22, v27);
      v17 = vmulq_f32(v23, v28);
      v27 = *v41;
      v28 = *(v41 + 4);
      v41 += 8;
      v16 = vmulq_f32(v20, v24);
      v15 = vmulq_f32(v21, v25);
      v37 = vmulq_f32(v22, v24);
      v19 = vmulq_f32(v23, v25);
      v24 = *v40;
      v25 = *(v40 + 4);
      v40 += 8;
      v33 = vaddq_f64(v43, v33);
      v32 = vaddq_f64(v42, v32);
      v20 = *v39;
      v21 = *(v39 + 4);
      v39 += 8;
      v22 = *v38;
      v23 = *(v38 + 4);
      v38 += 8;
      v35 = vaddq_f64(vaddq_f64(v44, v46), v35);
      v34 = vaddq_f64(vaddq_f64(v45, v47), v34);
    }

    while (v39 != v36);
  }

  v48 = vcvtq_f64_f32(*v14.f32);
  v49 = vaddq_f64(vcvt_hight_f64_f32(v13), vcvt_hight_f64_f32(v14));
  v50 = vaddq_f64(vaddq_f64(vcvtq_f64_f32(*v13.f32), v48), v26);
  v51 = vaddq_f64(v49, v29);
  v52 = vcvtq_f64_f32(*v15.f32);
  v53 = vcvtq_f64_f32(*v16.f32);
  v54 = vcvt_hight_f64_f32(v16);
  v55 = vaddq_f64(vaddq_f64(vcvt_hight_f64_f32(v15), v54), v31);
  v56 = vcvtq_f64_f32(*v18.f32);
  v57 = vaddq_f64(vcvt_hight_f64_f32(v17), vcvt_hight_f64_f32(v18));
  v58 = vaddq_f64(vaddq_f64(vcvtq_f64_f32(*v17.f32), v56), v32);
  v59 = vaddq_f64(vaddq_f64(v53, vcvtq_f64_f32(*v19.f32)), v34);
  v60 = vaddq_f64(vaddq_f64(v54, vcvt_hight_f64_f32(v19)), v35);
  v61 = vmulq_f32(v21, v28);
  v62 = vmulq_f32(v20, v27);
  v63 = vmulq_f32(v21, v25);
  v64 = vmulq_f32(v20, v24);
  v65 = vmulq_f32(v23, v28);
  v66 = vmulq_f32(v22, v27);
  v67 = vmulq_f32(v23, v25);
  v68 = vmulq_f32(v22, v24);
  v69 = vcvt_hight_f64_f32(v68);
  v70 = vaddq_f64(vcvtq_f64_f32(*v67.f32), vcvtq_f64_f32(*v68.f32));
  v71 = vaddq_f64(v60, vaddq_f64(vcvt_hight_f64_f32(v67), v69));
  v72 = vpaddq_f64(vaddq_f64(vaddq_f64(v58, vaddq_f64(vcvtq_f64_f32(*v65.f32), vcvtq_f64_f32(*v66.f32))), vaddq_f64(vaddq_f64(v57, v33), vaddq_f64(vcvt_hight_f64_f32(v65), vcvt_hight_f64_f32(v66)))), vaddq_f64(vaddq_f64(v50, vaddq_f64(vcvtq_f64_f32(*v61.f32), vcvtq_f64_f32(*v62.f32))), vaddq_f64(v51, vaddq_f64(vcvt_hight_f64_f32(v61), vcvt_hight_f64_f32(v62)))));
  v73 = vpaddq_f64(vaddq_f64(vaddq_f64(v59, v70), v71), vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(v52, v53), v30), vaddq_f64(vcvtq_f64_f32(*v63.f32), vcvtq_f64_f32(*v64.f32))), vaddq_f64(v55, vaddq_f64(vcvt_hight_f64_f32(v63), vcvt_hight_f64_f32(v64)))));
  *v71.f64 = v72.f64[1] + a5 * (v72.f64[0] - v72.f64[1]);
  *a6 = *v71.f64;
  result = v73.f64[1] + a5 * (v73.f64[0] - v73.f64[1]);
  *a7 = result;
  return result;
}

void Resampler2::ConvertSIMD<Resampler2::RampedRate>(uint64_t a1, float *a2, float *a3, int a4, int a5)
{
  v10 = *(a1 + 224);
  v268[0] = *(a1 + 208);
  v268[1] = v10;
  v268[2] = *(a1 + 240);
  v269 = *(a1 + 256);
  RateRamp::OffsetTimes(v268, -*(a1 + 136), -*(a1 + 272));
  v270 = *(a1 + 72);
  v11 = (*(*a1 + 152))(a1);
  v12 = v11;
  v13 = 4 * v11;
  v267 = *(a1 + 116);
  v14 = *(a1 + 80);
  v15 = *(*(a1 + 56) + 16);
  v16 = *(a1 + 160);
  if (a3)
  {
    if (a4 >= 1)
    {
      v17 = 0;
      v18 = *(a1 + 88);
      v265 = v13;
      v264 = v13 + 32;
      v19 = 0.0;
      do
      {
        RateRamp::RateForOutputTime(v268, v19);
        *(a1 + 168) = v20;
        Resampler2::SetVarispeedSinc(a1, v20);
        RateRamp::InputTimeForOutputTime(v268, v19);
        v22 = fmax(v21, 0.0);
        if (v22 >= v270)
        {
          v16 = v270;
        }

        else
        {
          v16 = v22;
        }

        v23 = **(a1 + 56);
        v24 = (v16 - v16) * v15;
        v25 = v12 * v24;
        v26 = (v23 + 4 * v25);
        v27 = (v14 + 4 * v16);
        v28 = (v18 + 4 * v16);
        v29 = v24;
        if (v267 == 1650553971)
        {
          vdotprD2i(v27->f32, v28->f32, v26, &v26[v12], v24 - v29, a2, a3, v12);
        }

        else
        {
          v30 = 0uLL;
          v31 = v12;
          v32 = 0uLL;
          v33 = 0uLL;
          v34 = 0uLL;
          if (v12 >= 64)
          {
            v35 = 0;
            v36 = v23 + v265 + 4 * v25;
            v31 = v12;
            do
            {
              v37 = v27[v35 / 0x10];
              v38 = v27[v35 / 0x10 + 1];
              v39 = *&v26[v35 / 4];
              v40 = *&v26[v35 / 4 + 4];
              v41 = vmlaq_f32(v34, v39, v37);
              v42 = *(v36 + v35);
              v43 = *(v36 + v35 + 16);
              v44 = vmlaq_f32(v33, v42, v37);
              v45 = v28[v35 / 0x10];
              v46 = v28[v35 / 0x10 + 1];
              v47 = vmlaq_f32(v41, v40, v38);
              v48 = vmlaq_f32(v44, v43, v38);
              v49 = vmlaq_f32(vmlaq_f32(v32, v39, v45), v40, v46);
              v50 = vmlaq_f32(vmlaq_f32(v30, v42, v45), v43, v46);
              v51 = v27[v35 / 0x10 + 2];
              v52 = v27[v35 / 0x10 + 3];
              v53 = *&v26[v35 / 4 + 8];
              v54 = *&v26[v35 / 4 + 12];
              v55 = vmlaq_f32(v47, v53, v51);
              v56 = *(v36 + v35 + 32);
              v57 = *(v36 + v35 + 48);
              v58 = vmlaq_f32(v48, v56, v51);
              v59 = v28[v35 / 0x10 + 2];
              v60 = v28[v35 / 0x10 + 3];
              v61 = vmlaq_f32(v55, v54, v52);
              v62 = vmlaq_f32(v58, v57, v52);
              v63 = vmlaq_f32(vmlaq_f32(v49, v53, v59), v54, v60);
              v64 = vmlaq_f32(vmlaq_f32(v50, v56, v59), v57, v60);
              v65 = v27[v35 / 0x10 + 4];
              v66 = v27[v35 / 0x10 + 5];
              v67 = *&v26[v35 / 4 + 16];
              v68 = *&v26[v35 / 4 + 20];
              v69 = vmlaq_f32(v61, v67, v65);
              v70 = *(v36 + v35 + 64);
              v71 = *(v36 + v35 + 80);
              v72 = vmlaq_f32(v62, v70, v65);
              v73 = v28[v35 / 0x10 + 4];
              v74 = v28[v35 / 0x10 + 5];
              v75 = vmlaq_f32(v69, v68, v66);
              v76 = vmlaq_f32(v72, v71, v66);
              v77 = vmlaq_f32(vmlaq_f32(v63, v67, v73), v68, v74);
              v78 = vmlaq_f32(vmlaq_f32(v64, v70, v73), v71, v74);
              v79 = v27[v35 / 0x10 + 6];
              v80 = v27[v35 / 0x10 + 7];
              v81 = *&v26[v35 / 4 + 24];
              v82 = *&v26[v35 / 4 + 28];
              v83 = vmlaq_f32(v75, v81, v79);
              v84 = *(v36 + v35 + 96);
              v85 = *(v36 + v35 + 112);
              v86 = vmlaq_f32(v76, v84, v79);
              v87 = v28[v35 / 0x10 + 6];
              v88 = v28[v35 / 0x10 + 7];
              v89 = vmlaq_f32(v83, v82, v80);
              v90 = vmlaq_f32(v86, v85, v80);
              v91 = vmlaq_f32(vmlaq_f32(v77, v81, v87), v82, v88);
              v92 = vmlaq_f32(vmlaq_f32(v78, v84, v87), v85, v88);
              v93 = v27[v35 / 0x10 + 8];
              v94 = v27[v35 / 0x10 + 9];
              v95 = *&v26[v35 / 4 + 32];
              v96 = *&v26[v35 / 4 + 36];
              v97 = vmlaq_f32(v89, v95, v93);
              v98 = *(v36 + v35 + 128);
              v99 = *(v36 + v35 + 144);
              v100 = vmlaq_f32(v90, v98, v93);
              v101 = v28[v35 / 0x10 + 8];
              v102 = v28[v35 / 0x10 + 9];
              v103 = vmlaq_f32(v97, v96, v94);
              v104 = vmlaq_f32(v100, v99, v94);
              v105 = vmlaq_f32(vmlaq_f32(v91, v95, v101), v96, v102);
              v106 = vmlaq_f32(vmlaq_f32(v92, v98, v101), v99, v102);
              v107 = v27[v35 / 0x10 + 10];
              v108 = v27[v35 / 0x10 + 11];
              v109 = *&v26[v35 / 4 + 40];
              v110 = *&v26[v35 / 4 + 44];
              v111 = vmlaq_f32(v103, v109, v107);
              v112 = *(v36 + v35 + 160);
              v113 = *(v36 + v35 + 176);
              v114 = vmlaq_f32(v104, v112, v107);
              v115 = v28[v35 / 0x10 + 10];
              v116 = v28[v35 / 0x10 + 11];
              v117 = vmlaq_f32(v111, v110, v108);
              v118 = vmlaq_f32(v114, v113, v108);
              v119 = vmlaq_f32(vmlaq_f32(v105, v109, v115), v110, v116);
              v120 = vmlaq_f32(vmlaq_f32(v106, v112, v115), v113, v116);
              v121 = v27[v35 / 0x10 + 12];
              v122 = v27[v35 / 0x10 + 13];
              v123 = *&v26[v35 / 4 + 48];
              v124 = *&v26[v35 / 4 + 52];
              v125 = vmlaq_f32(v117, v123, v121);
              v126 = *(v36 + v35 + 192);
              v127 = *(v36 + v35 + 208);
              v128 = vmlaq_f32(v118, v126, v121);
              v129 = v28[v35 / 0x10 + 12];
              v130 = v28[v35 / 0x10 + 13];
              v131 = vmlaq_f32(v125, v124, v122);
              v132 = vmlaq_f32(v128, v127, v122);
              v133 = vmlaq_f32(vmlaq_f32(v119, v123, v129), v124, v130);
              v134 = vmlaq_f32(vmlaq_f32(v120, v126, v129), v127, v130);
              v135 = v27[v35 / 0x10 + 14];
              v136 = v27[v35 / 0x10 + 15];
              v137 = *&v26[v35 / 4 + 56];
              v138 = *&v26[v35 / 4 + 60];
              v139 = vmlaq_f32(v131, v137, v135);
              v140 = *(v36 + v35 + 224);
              v141 = *(v36 + v35 + 240);
              v142 = vmlaq_f32(v132, v140, v135);
              v143 = v28[v35 / 0x10 + 14];
              v144 = v28[v35 / 0x10 + 15];
              v145 = v31;
              v34 = vmlaq_f32(v139, v138, v136);
              v33 = vmlaq_f32(v142, v141, v136);
              v32 = vmlaq_f32(vmlaq_f32(v133, v137, v143), v138, v144);
              v30 = vmlaq_f32(vmlaq_f32(v134, v140, v143), v141, v144);
              v31 -= 64;
              v35 += 256;
            }

            while (v145 > 0x7F);
            v26 = (v26 + v35);
            v28 = (v28 + v35);
            v27 = (v27 + v35);
          }

          if (v31 >= 16)
          {
            v146 = v31 + 16;
            v147 = (v26 + 8);
            v148 = (v26 + v264);
            do
            {
              v149 = v27[1];
              v150 = v147[-2];
              v151 = v147[-1];
              v152 = v148[-2];
              v153 = v148[-1];
              v154 = v28[1];
              v155 = vmlaq_f32(vmlaq_f32(v34, v150, *v27), v151, v149);
              v156 = vmlaq_f32(vmlaq_f32(v33, v152, *v27), v153, v149);
              v157 = vmlaq_f32(vmlaq_f32(v32, v150, *v28), v151, v154);
              v158 = vmlaq_f32(vmlaq_f32(v30, v152, *v28), v153, v154);
              v159 = v27[2];
              v160 = v27[3];
              v161 = *v147;
              v162 = v147[1];
              v147 += 4;
              v163 = vmlaq_f32(v155, v161, v159);
              v164 = *v148;
              v165 = v148[1];
              v148 += 4;
              v166 = vmlaq_f32(v156, v164, v159);
              v167 = v28[2];
              v168 = v28[3];
              v34 = vmlaq_f32(v163, v162, v160);
              v33 = vmlaq_f32(v166, v165, v160);
              v32 = vmlaq_f32(vmlaq_f32(v157, v161, v167), v162, v168);
              v146 -= 16;
              v30 = vmlaq_f32(vmlaq_f32(v158, v164, v167), v165, v168);
              v27 += 4;
              v28 += 4;
            }

            while (v146 > 0x1F);
          }

          v169 = v24 - v29;
          v170 = vmlaq_n_f32(v34, vsubq_f32(v33, v34), v169);
          v171 = vmlaq_n_f32(v32, vsubq_f32(v30, v32), v169);
          *a2 = vaddv_f32(vadd_f32(*v170.i8, *&vextq_s8(v170, v170, 8uLL)));
          *a3 = vaddv_f32(vadd_f32(*v171.i8, *&vextq_s8(v171, v171, 8uLL)));
        }

        a2 += a5;
        a3 += a5;
        ++v17;
        v19 = v19 + 1.0;
      }

      while (v17 != a4);
    }
  }

  else if (a4 >= 1)
  {
    v172 = 0;
    v173 = a5;
    v174 = v13;
    v175 = (4 * v11) & 0x7FFFFFFFFFFFFFF0;
    v176 = v173;
    v266 = v13 + 32;
    v177 = 0.0;
    do
    {
      RateRamp::RateForOutputTime(v268, v177);
      *(a1 + 168) = v178;
      Resampler2::SetVarispeedSinc(a1, v178);
      RateRamp::InputTimeForOutputTime(v268, v177);
      v180 = fmax(v179, 0.0);
      if (v180 >= v270)
      {
        v16 = v270;
      }

      else
      {
        v16 = v180;
      }

      v181 = **(a1 + 56);
      v182 = (v16 - v16) * v15;
      v183 = v12 * v182;
      v184 = (v181 + 4 * v183);
      v185 = (v14 + 4 * v16);
      v186 = v182;
      if (v267 == 1650553971)
      {
        v187 = (v184 + 4 * v12);
        v188 = v185[1];
        v189 = vmulq_f32(v188, v184[1]);
        v190 = vmulq_f32(*v185, *v184);
        v191 = vmulq_f32(v188, v187[1]);
        v192 = vmulq_f32(*v185, *v187);
        v193 = v184[2];
        v194 = v184[3];
        v195 = v187[2];
        v196 = v187[3];
        v197 = v185[2];
        v198 = v185[3];
        v199 = 0uLL;
        if (v175 == 64)
        {
          v200 = 0uLL;
          v201 = 0uLL;
          v202 = 0uLL;
        }

        else
        {
          v255 = v185 + 4;
          v256 = (v181 + 4 * v183 + 80);
          v201 = 0uLL;
          v257 = v175 - 64;
          v202 = 0uLL;
          v200 = 0uLL;
          do
          {
            v200 = vaddq_f64(v200, vaddq_f64(vcvt_hight_f64_f32(v189), vcvt_hight_f64_f32(v190)));
            v199 = vaddq_f64(v199, vaddq_f64(vcvtq_f64_f32(*v189.f32), vcvtq_f64_f32(*v190.f32)));
            v202 = vaddq_f64(v202, vaddq_f64(vcvt_hight_f64_f32(v191), vcvt_hight_f64_f32(v192)));
            v201 = vaddq_f64(v201, vaddq_f64(vcvtq_f64_f32(*v191.f32), vcvtq_f64_f32(*v192.f32)));
            v190 = vmulq_f32(v197, v193);
            v189 = vmulq_f32(v198, v194);
            v192 = vmulq_f32(v197, v195);
            v191 = vmulq_f32(v198, v196);
            v197 = *v255;
            v198 = v255[1];
            v255 += 2;
            v193 = v256[-1];
            v194 = *v256;
            v195 = v187[4];
            v196 = v187[5];
            v187 += 2;
            v256 += 2;
            v257 -= 32;
          }

          while (v257);
        }

        v258 = v182 - v186;
        v259 = vmulq_f32(v194, v198);
        v260 = vmulq_f32(v193, v197);
        v261 = vmulq_f32(v196, v198);
        v262 = vmulq_f32(v195, v197);
        v263 = vpaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_f32(*v191.f32), vcvtq_f64_f32(*v192.f32)), v201), vaddq_f64(vcvtq_f64_f32(*v261.f32), vcvtq_f64_f32(*v262.f32))), vaddq_f64(vaddq_f64(vaddq_f64(vcvt_hight_f64_f32(v191), vcvt_hight_f64_f32(v192)), v202), vaddq_f64(vcvt_hight_f64_f32(v261), vcvt_hight_f64_f32(v262)))), vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_f32(*v189.f32), vcvtq_f64_f32(*v190.f32)), v199), vaddq_f64(vcvtq_f64_f32(*v259.f32), vcvtq_f64_f32(*v260.f32))), vaddq_f64(vaddq_f64(vaddq_f64(vcvt_hight_f64_f32(v189), vcvt_hight_f64_f32(v190)), v200), vaddq_f64(vcvt_hight_f64_f32(v259), vcvt_hight_f64_f32(v260)))));
        v254 = v263.f64[1] + v258 * (v263.f64[0] - v263.f64[1]);
      }

      else
      {
        v203 = 0uLL;
        v204 = 0uLL;
        v205 = v12;
        if (v12 >= 64)
        {
          v206 = 0;
          v207 = v181 + v174 + 4 * v183;
          v205 = v12;
          do
          {
            v208 = v185[v206];
            v209 = v185[v206 + 1];
            v210 = vmlaq_f32(vmlaq_f32(v203, v184[v206], v208), v184[v206 + 1], v209);
            v211 = vmlaq_f32(vmlaq_f32(v204, *(v207 + v206 * 16), v208), *(v207 + v206 * 16 + 16), v209);
            v212 = v185[v206 + 2];
            v213 = v185[v206 + 3];
            v214 = vmlaq_f32(vmlaq_f32(v210, v184[v206 + 2], v212), v184[v206 + 3], v213);
            v215 = vmlaq_f32(vmlaq_f32(v211, *(v207 + v206 * 16 + 32), v212), *(v207 + v206 * 16 + 48), v213);
            v216 = v185[v206 + 4];
            v217 = v185[v206 + 5];
            v218 = vmlaq_f32(vmlaq_f32(v214, v184[v206 + 4], v216), v184[v206 + 5], v217);
            v219 = vmlaq_f32(vmlaq_f32(v215, *(v207 + v206 * 16 + 64), v216), *(v207 + v206 * 16 + 80), v217);
            v220 = v185[v206 + 6];
            v221 = v185[v206 + 7];
            v222 = vmlaq_f32(vmlaq_f32(v218, v184[v206 + 6], v220), v184[v206 + 7], v221);
            v223 = vmlaq_f32(vmlaq_f32(v219, *(v207 + v206 * 16 + 96), v220), *(v207 + v206 * 16 + 112), v221);
            v224 = v185[v206 + 8];
            v225 = v185[v206 + 9];
            v226 = vmlaq_f32(vmlaq_f32(v222, v184[v206 + 8], v224), v184[v206 + 9], v225);
            v227 = vmlaq_f32(vmlaq_f32(v223, *(v207 + v206 * 16 + 128), v224), *(v207 + v206 * 16 + 144), v225);
            v228 = v185[v206 + 10];
            v229 = v185[v206 + 11];
            v230 = vmlaq_f32(vmlaq_f32(v226, v184[v206 + 10], v228), v184[v206 + 11], v229);
            v231 = vmlaq_f32(vmlaq_f32(v227, *(v207 + v206 * 16 + 160), v228), *(v207 + v206 * 16 + 176), v229);
            v232 = v185[v206 + 12];
            v233 = v185[v206 + 13];
            v234 = vmlaq_f32(vmlaq_f32(v230, v184[v206 + 12], v232), v184[v206 + 13], v233);
            v235 = vmlaq_f32(vmlaq_f32(v231, *(v207 + v206 * 16 + 192), v232), *(v207 + v206 * 16 + 208), v233);
            v236 = v185[v206 + 14];
            v237 = v185[v206 + 15];
            v238 = v205;
            v203 = vmlaq_f32(vmlaq_f32(v234, v184[v206 + 14], v236), v184[v206 + 15], v237);
            v204 = vmlaq_f32(vmlaq_f32(v235, *(v207 + v206 * 16 + 224), v236), *(v207 + v206 * 16 + 240), v237);
            v205 -= 64;
            v206 += 16;
          }

          while (v238 > 0x7F);
          v185 = (v185 + v206 * 16);
          v184 = (v184 + v206 * 16);
        }

        if (v205 >= 16)
        {
          v239 = v205 + 16;
          v240 = (v184 + v266);
          v241 = v184 + 2;
          do
          {
            v242 = v185[1];
            v243 = vmlaq_f32(vmlaq_f32(v203, v241[-2], *v185), v241[-1], v242);
            v244 = vmlaq_f32(vmlaq_f32(v204, v240[-2], *v185), v240[-1], v242);
            v245 = v185[2];
            v246 = v185[3];
            v247 = *v241;
            v248 = v241[1];
            v241 += 4;
            v249 = vmlaq_f32(v243, v247, v245);
            v250 = *v240;
            v251 = v240[1];
            v240 += 4;
            v203 = vmlaq_f32(v249, v248, v246);
            v239 -= 16;
            v204 = vmlaq_f32(vmlaq_f32(v244, v250, v245), v251, v246);
            v185 += 4;
          }

          while (v239 > 0x1F);
        }

        v252 = v182 - v186;
        v253 = vmlaq_n_f32(v203, vsubq_f32(v204, v203), v252);
        v254 = vaddv_f32(vadd_f32(*v253.i8, *&vextq_s8(v253, v253, 8uLL)));
      }

      *a2 = v254;
      a2 += v176;
      ++v172;
      v177 = v177 + 1.0;
    }

    while (v172 != a4);
  }

  *(a1 + 160) = v16;
}

uint64_t Resampler2::ConvertLinear(uint64_t this, float *a2, float *a3, int a4, unsigned int a5)
{
  v5 = *(this + 160);
  v6 = *(this + 168);
  v7 = *(this + 80) + 4 * v5;
  if (a3)
  {
    if (a4)
    {
      v8 = 0;
      v9 = *(this + 88) + 4 * v5;
      do
      {
        v10 = *(v7 + 4 * v5);
        v11 = *(v9 + 4 * v5);
        v12 = 4 * v5 + 4;
        v13 = *(v9 + v12);
        v14 = v5 - v5;
        a2[v8] = v10 + (v14 * (*(v7 + v12) - v10));
        a3[v8] = v11 + (v14 * (v13 - v11));
        v5 = v6 + v5;
        v8 += a5;
        --a4;
      }

      while (a4);
    }
  }

  else
  {
    for (; a4; --a4)
    {
      v15 = v5 - v5;
      *a2 = *(v7 + 4 * v5) + (v15 * (*(v7 + 4 * v5 + 4) - *(v7 + 4 * v5)));
      v5 = v6 + v5;
      a2 += a5;
    }
  }

  *(this + 136) = *(this + 136) + v5;
  *(this + 160) = v5;
  return this;
}

double Resampler2::GetCurrentInputSampleNumber(Resampler2 *this)
{
  v1 = 0.0;
  if (*(this + 29) != 1818848869)
  {
    LODWORD(v1) = *(*(this + 7) + 20);
    v1 = *&v1;
  }

  return *(this + 17) + *(this + 20) + v1 + 1.0;
}

double Resampler2::SetInputSampleNumberOfNextWrite(Resampler2 *this, double a2)
{
  result = a2 - *(this + 18);
  *(this + 17) = result;
  return result;
}

uint64_t Resampler2::SetSourceCallback2(uint64_t this, void (*a2)(float *, float *, unsigned int, void *), void *a3)
{
  *(this + 40) = a2;
  *(this + 64) = a3;
  return this;
}

uint64_t Resampler2::SetSourceCallback(uint64_t this, void (*a2)(float *, unsigned int, void *), void *a3)
{
  *(this + 32) = a2;
  *(this + 64) = a3;
  return this;
}

uint64_t Resampler2::SetVarispeedRate(uint64_t this, double a2)
{
  if (*(this + 184) == 1)
  {
    v4 = this;
    *(this + 264) = 0;
    *(this + 168) = a2;
    *(this + 176) = 1.0 / a2;
    *(this + 133) = 0;
    Resampler2::SetConverterFunction(this);

    return Resampler2::SetVarispeedSinc(v4, a2);
  }

  return this;
}

void *Resampler2::Process2(Resampler2 *this, float *a2, float *a3, unsigned int a4, uint64_t a5)
{
  v6 = a4;
  *(this + 24) = 1;
  v8 = *(this + 22);
  result = Resampler2::GetNumberOfSourceFrames(this, a4, 0);
  if (v6 >= 1)
  {
    v10 = result;
    v11 = 0;
    v44 = vcvtd_n_s64_f64(v8, 0xAuLL);
    v47 = a5;
    v48 = (this + 72);
    v12 = 4 * a5;
    while (1)
    {
      v13 = v10;
      if (v6 >= v44)
      {
        v14 = v44;
      }

      else
      {
        v14 = v6;
      }

      if (v6 > v44)
      {
        NumberOfSourceFrames = Resampler2::GetNumberOfSourceFrames(this, v14, v11);
        if (NumberOfSourceFrames >= v10)
        {
          v13 = v10;
        }

        else
        {
          v13 = NumberOfSourceFrames;
        }
      }

      v16 = v11 * a5;
      if (a3)
      {
        v17 = &a3[v16];
      }

      else
      {
        v17 = 0;
      }

      if (v13 >= 1)
      {
        v18 = *(this + 5);
        if (v18)
        {
          if (v17)
          {
            v19 = *(this + 18);
            v20 = *(this + 11) + 4 * v19;
          }

          else
          {
            v20 = 0;
            v19 = *v48;
          }

          v18(*(this + 10) + 4 * v19, v20, v13, *(this + 8));
        }

        else
        {
          (*(this + 4))(*(this + 10) + 4 * *(this + 18), v13, *(this + 8));
        }

        *v48 += v13;
      }

      v49 = v13;
      v21 = &a2[v16];
      v22 = (*(*this + 152))(this);
      if (*(this + 132) == 1)
      {
        break;
      }

      v27 = *(this + 1);
      v28 = *(this + 2);
      v29 = (this + (v28 >> 1));
      if (v28)
      {
        v27 = *(*v29 + v27);
      }

      result = v27(v29, v21, v17, v14, a5);
      v35 = *(this + 20);
      if (*(this + 18) - v35 >= 1)
      {
        v36 = 4 * (*(this + 18) - v35);
        result = memmove(*(this + 10), (*(this + 10) + 4 * v35), v36);
        if (v17)
        {
          result = memmove(*(this + 11), (*(this + 11) + 4 * v35), v36);
        }
      }

      v37 = v35;
      *(this + 20) = *(this + 20) - v35;
      *(this + 18) -= v35;
      if (*(this + 133) == 1)
      {
        v32 = *(*(this + 7) + 16) * v35;
        v38 = this + 104;
LABEL_44:
        v39 = v49;
        *v38 -= v32;
        a5 = v47;
        goto LABEL_45;
      }

      v39 = v49;
LABEL_45:
      v10 = (v10 - v39);
      *(this + 17) = *(this + 17) + v37;
      *(this + 34) = *(this + 34) + v14;
      v11 += v14;
      v42 = __OFSUB__(v6, v14);
      v6 -= v14;
      if ((v6 < 0) ^ v42 | (v6 == 0))
      {
        goto LABEL_47;
      }
    }

    v23 = v22;
    v24 = *(this + 20);
    v25 = *(this + 10);
    v26 = v24;
    v43 = v23 >> 1;
    if (a5 == 1)
    {
      memcpy(v21, &v25[4 * v24 + 4 * (v23 >> 1)], 4 * v14);
      v25 = *(this + 10);
    }

    else if (v14)
    {
      v30 = 4 * v24 + 4 * (v23 >> 1);
      v31 = v14;
      do
      {
        *v21 = *&v25[v30];
        v21 = (v21 + v12);
        v30 += 4;
        --v31;
      }

      while (v31);
    }

    v32 = v14 + v26;
    v33 = 4 * (*v48 - (v14 + v26));
    result = memmove(v25, &v25[4 * v26 + 4 * v14], v33);
    if (v17)
    {
      v34 = *(this + 11);
      if (v47 == 1)
      {
        memcpy(v17, &v34[4 * v26 + 4 * v43], 4 * v14);
        v34 = *(this + 11);
      }

      else if (v14)
      {
        v40 = 4 * v26 + 4 * v43;
        v41 = v14;
        do
        {
          *v17 = *&v34[v40];
          v40 += 4;
          v17 = (v17 + v12);
          --v41;
        }

        while (v41);
      }

      result = memmove(v34, &v34[4 * v26 + 4 * v14], v33);
    }

    v37 = v26;
    *(this + 20) = *(this + 20) - v26;
    v38 = this + 72;
    goto LABEL_44;
  }

LABEL_47:
  *(this + 24) = 0;
  return result;
}

void *std::vector<SincKernel *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    v2 = result[1] - *result;
    std::allocator<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> *>::allocate_at_least[abi:ne200100](a2);
  }

  return result;
}

uint64_t Resampler2::InitializeVarispeedMode(Resampler2 *this)
{
  if ((this + 1) >= 0x20)
  {
    v1 = ((this + 1) >> 5) - 1;
  }

  else
  {
    v1 = 0;
  }

  pthread_mutex_lock(&sInitLocker);
  if (!sVarispeedRefCount[v1])
  {
    v2 = sVarispeedSincKernels[v1];
    if (!v2)
    {
      operator new();
    }

    std::vector<SincKernel *>::reserve(v2, 0x24uLL);
    v3 = vcvtpd_s64_f64(exp2(0 / 36.0 / 1200.0) * 100.0);
    if (v3 - 100 > 0)
    {
      v4 = 0;
      v5 = vdupq_n_s64(v3 - 101);
      v6 = &dword_1EAD2D980;
      do
      {
        v7 = vdupq_n_s64(v4);
        v8 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_18F9016C0)));
        if (vuzp1_s16(v8, *v5.i8).u8[0])
        {
          *(v6 - 2) = 0;
        }

        if (vuzp1_s16(v8, *&v5).i8[2])
        {
          *(v6 - 1) = 0;
        }

        if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_18F9016B0)))).i32[1])
        {
          *v6 = 0;
          v6[1] = 0;
        }

        v4 += 4;
        v6 += 4;
      }

      while (((v3 - 97) & 0xFFFFFFFFFFFFFFFCLL) != v4);
    }

    operator new();
  }

  ++sVarispeedRefCount[v1];
  return pthread_mutex_unlock(&sInitLocker);
}

uint64_t Resampler2::ShutdownVarispeedMode(Resampler2 *this)
{
  v1 = this;
  pthread_mutex_lock(&sInitLocker);
  if ((v1 + 1) >= 0x20)
  {
    v2 = ((v1 + 1) >> 5) - 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sVarispeedRefCount[v2];
  if (v3 >= 1)
  {
    sVarispeedRefCount[v2] = --v3;
  }

  if (!v3)
  {
    v4 = sVarispeedSincKernels[v2];
    if (v4)
    {
      v5 = *v4;
      if (v4[1] != *v4)
      {
        v6 = 0;
        v7 = 1;
        do
        {
          v8 = *(v5 + 8 * v6);
          if (v8)
          {
            SincKernel::~SincKernel(v8);
            MEMORY[0x193ADF220]();
            v4 = sVarispeedSincKernels[v2];
            v5 = *v4;
          }

          v6 = v7++;
        }

        while (v6 < (v4[1] - v5) >> 3);
      }

      v4[1] = v5;
    }
  }

  return pthread_mutex_unlock(&sInitLocker);
}

double *Resampler2::MockResampler2::SetVarispeedRate(double *this, double a2)
{
  v2 = *this;
  this[5] = a2;
  this[6] = 1.0 / a2;
  *(this + 33) = 0;
  if (a2 <= 1.0)
  {
    v3 = 0;
  }

  else if (a2 <= 7.98)
  {
    v3 = *(&sVarispeedRateTable + vcvtpd_s64_f64(a2 * 100.0) - 100);
  }

  else
  {
    v3 = 35;
  }

  v4 = *(*&v2 + 112) + 1;
  if (v4 >= 0x20)
  {
    v5 = (v4 >> 5) - 1;
  }

  else
  {
    v5 = 0;
  }

  this[1] = *(**(&sVarispeedSincKernels + v5) + 8 * v3);
  return this;
}

uint64_t Resampler2::PushZeroes(Resampler2 *this)
{
  v2 = *(this + 30);
  if (v2 == 2)
  {
    v3 = (*(*this + 152))(this);
  }

  else if (v2 == 1)
  {
    v3 = (*(*this + 152))(this) >> 1;
  }

  else
  {
    v3 = 0;
  }

  if (*(this + 21) <= 1.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = v3 + 1;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(this + 18);
  v6 = *(this + 19) - v5;
  if (v6 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  bzero((*(this + 10) + 4 * v5), 4 * v7);
  bzero((*(this + 11) + 4 * *(this + 18)), 4 * v7);
  *(this + 18) += v7;
  return v7;
}

Resampler2::MockResampler2 *Resampler2::MockResampler2::MockResampler2(Resampler2::MockResampler2 *this, const Resampler2 *a2)
{
  *this = a2;
  *(this + 1) = *(a2 + 7);
  v4 = *(a2 + 26);
  *(this + 4) = *(a2 + 18);
  *(this + 5) = v4;
  *(this + 3) = *(a2 + 20);
  *(this + 16) = *(a2 + 66);
  *(this + 40) = *(a2 + 168);
  RateRamp::RateRamp((this + 56));
  *(this + 112) = 0;
  v5 = *(a2 + 34);
  *(this + 15) = *(a2 + 17);
  *(this + 16) = v5;
  return this;
}

uint64_t Resampler2::MockResampler2::GetNumberOfSourceFrames(unsigned int **this, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *this;
  v5 = *(this + 32);
  if ((*(this + 33) & 1) == 0)
  {
    if ((this[4] & 1) == 0)
    {
      if (*(this + 112) == 1)
      {
        RateRamp::RateRamp(v12);
        v11 = a2;
        RateRamp::Segment((this + 7), *(this + 11) + 0.0, &v11, 1000000000.0, v12);
        RateRamp::InputDuration(v12);
        v9 = vcvtpd_u64_f64(v10);
      }

      else
      {
        v9 = *(this + 5) * a2;
      }

      goto LABEL_8;
    }

LABEL_7:
    v9 = a2;
LABEL_8:
    v7 = vcvtpd_s64_f64((*(*v4 + 152))(v4) + -1.0 + *(this + 3) + v9 - *(this + 4));
    return v7 & ~(v7 >> 31);
  }

  if (this[4])
  {
    goto LABEL_7;
  }

  v6 = v4[27] * a2;
  v7 = (*(*v4 + 152))(*this) + ~*(this + 4) + (v6 + *(this + 5) + v4[31] - 1) / v4[31];
  return v7 & ~(v7 >> 31);
}

AT::Resampler::MockResampler *AT::Resampler::MockResampler::MockResampler(AT::Resampler::MockResampler *this, AT::Resampler *a2)
{
  *this = a2;
  if (*(a2 + 416) == 1)
  {
    *(a2 + 416) = 0;
  }

  Resampler2::MockResampler2::MockResampler2((a2 + 280), a2);
  *(a2 + 416) = 1;
  return this;
}

{
  *this = a2;
  if (*(a2 + 416) == 1)
  {
    *(a2 + 416) = 0;
  }

  Resampler2::MockResampler2::MockResampler2((a2 + 280), a2);
  *(a2 + 416) = 1;
  return this;
}

void AT::Resampler::MockResampler::~MockResampler(AT::Resampler::MockResampler *this)
{
  if (*(*this + 416) == 1)
  {
    *(*this + 416) = 0;
  }
}

{
  if (*(*this + 416) == 1)
  {
    *(*this + 416) = 0;
  }
}

uint64_t AT::Resampler::MockResampler::Process(AT::Resampler::MockResampler *this, unsigned int a2)
{
  v2 = a2;
  v3 = *this;
  v4 = *(*this + 328);
  NumberOfSourceFrames = Resampler2::MockResampler2::GetNumberOfSourceFrames((*this + 280), a2);
  if (v2 < 1)
  {
    return 0;
  }

  v6 = NumberOfSourceFrames;
  LODWORD(v7) = 0;
  v8 = vcvtd_n_s64_f64(v4, 0xAuLL);
  do
  {
    v9 = v6;
    if (v2 >= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v2;
    }

    if (v2 > v8)
    {
      v11 = Resampler2::MockResampler2::GetNumberOfSourceFrames((v3 + 280), v10);
      if (v11 >= v6)
      {
        v9 = v6;
      }

      else
      {
        v9 = v11;
      }
    }

    if (v9 < 1)
    {
      v12 = 0;
    }

    else
    {
      *(v3 + 296) += v9;
      v12 = v9;
    }

    if (*(v3 + 312) == 1)
    {
      v13 = *(v3 + 304);
      *(v3 + 304) = v13 - v13;
      *(v3 + 296) = *(v3 + 296) - v10 - v13;
    }

    else
    {
      if (*(v3 + 392) == 1)
      {
        v14 = *(v3 + 352);
        v23[0] = *(v3 + 336);
        v23[1] = v14;
        v23[2] = *(v3 + 368);
        v24 = *(v3 + 384);
        RateRamp::OffsetTimes(v23, -*(v3 + 400), -*(v3 + 408));
        v15 = *(v3 + 296);
        RateRamp::RateForOutputTime(v23, (v10 - 1));
        *(v3 + 320) = v16;
        RateRamp::InputTimeForOutputTime(v23, (v10 - 1));
        v18 = fmax(v17, 0.0);
        if (v18 >= v15)
        {
          v19 = v15;
        }

        else
        {
          v19 = v18;
        }
      }

      else
      {
        v19 = *(v3 + 304) + v10 * *(v3 + 320);
      }

      *(v3 + 304) = v19 - v19;
      *(v3 + 296) -= v19;
      if (*(v3 + 313) == 1)
      {
        *(v3 + 300) -= *(*(v3 + 288) + 16) * v19;
      }

      v20.f64[1] = v10;
      v20.f64[0] = v19;
      *(v3 + 400) = vaddq_f64(*(v3 + 400), v20);
    }

    v6 -= v9;
    v7 = (v12 + v7);
    v21 = __OFSUB__(v2, v10);
    v2 -= v10;
  }

  while (!((v2 < 0) ^ v21 | (v2 == 0)));
  return v7;
}

double *AT::Resampler::MockResampler::SetRamp(double *result, __int128 *a2)
{
  v2 = *result;
  if (a2)
  {
    if (*(v2 + 400) < 0.0)
    {
      *(v2 + 400) = 0;
    }

    *(v2 + 392) = 1;
    v4 = a2[1];
    v3 = a2[2];
    v5 = *a2;
    *(v2 + 384) = *(a2 + 6);
    *(v2 + 352) = v4;
    *(v2 + 368) = v3;
    *(v2 + 336) = v5;
    *&v3 = (*(v2 + 336) + *(v2 + 344)) * 0.5;
    *(v2 + 320) = v3;
    *(v2 + 328) = 1.0 / *&v3;
    *(v2 + 313) = 0;
  }

  else
  {
    *(v2 + 392) = 0;
    return Resampler2::MockResampler2::SetVarispeedRate((v2 + 280), *(v2 + 320));
  }

  return result;
}

void *AUProcessingBlockBase::RemoveAUAtIndex(void *this, unsigned int a2)
{
  v3 = this[3];
  v2 = this[4];
  if (0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 3) > a2)
  {
    v4 = this;
    v5 = v3 + 24 * a2;
    v6 = v2 - (v5 + 24);
    if (v2 != v5 + 24)
    {
      this = memmove(v5, (v5 + 24), v2 - (v5 + 24));
    }

    v4[4] = v5 + v6;
  }

  return this;
}

uint64_t AUProcessingBlockBase::InsertAUAtIndex(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v3 = a1 + 24;
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    std::vector<AUPBUnit>::insert(v3, (v4 + 24 * a2), a3);
  }

  return 0;
}

void std::vector<AUPBUnit>::insert(uint64_t a1, char *__src, unint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v11 = *a1;
    v12 = 0xAAAAAAAAAAAAAAABLL * (&v6[-*a1] >> 3) + 1;
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v13 = __src - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      std::allocator<AUPBUnit>::allocate_at_least[abi:ne200100](v15);
    }

    v17 = 8 * (v13 >> 3);
    v18 = v17;
    if (!(0xAAAAAAAAAAAAAAABLL * (v13 >> 3)))
    {
      if (v13 < 1)
      {
        if (v11 == __src)
        {
          v23 = 1;
        }

        else
        {
          v23 = 0x5555555555555556 * (v13 >> 3);
        }

        std::allocator<AUPBUnit>::allocate_at_least[abi:ne200100](v23);
      }

      v17 = 8 * (v13 >> 3) - 24 * ((1 - 0x5555555555555555 * ((8 * (v13 >> 3)) >> 3) + ((1 - 0x5555555555555555 * ((8 * (v13 >> 3)) >> 3)) >> 63)) >> 1);
      v18 = v17;
    }

    v24 = *a3;
    *(v17 + 16) = *(a3 + 16);
    *v17 = v24;
    v25 = v18 + 24;
    memcpy((v18 + 24), __src, *(a1 + 8) - __src);
    v26 = *a1;
    v30 = v25 + *(a1 + 8) - __src;
    *(a1 + 8) = __src;
    v27 = (__src - v26);
    v28 = (v17 - (__src - v26));
    memcpy(v28, v26, v27);
    v29 = *a1;
    *a1 = v28;
    *(a1 + 8) = v30;
    if (v29)
    {

      operator delete(v29);
    }
  }

  else if (__src == v6)
  {
    v16 = *a3;
    *(v6 + 2) = *(a3 + 16);
    *v6 = v16;
    *(a1 + 8) = v6 + 24;
  }

  else
  {
    v8 = __src + 24;
    if (v6 < 0x18)
    {
      v9 = *(a1 + 8);
    }

    else
    {
      v9 = v6 + 24;
      v10 = *(v6 - 24);
      *(v6 + 2) = *(v6 - 1);
      *v6 = v10;
    }

    *(a1 + 8) = v9;
    if (v6 != v8)
    {
      memmove(__src + 24, __src, v6 - v8);
      v9 = *(a1 + 8);
    }

    v19 = v9 <= a3 || __src > a3;
    v20 = 24;
    if (v19)
    {
      v20 = 0;
    }

    v21 = a3 + v20;
    v22 = *v21;
    *(__src + 2) = *(v21 + 16);
    *__src = v22;
  }
}

void sub_18F7BFF1C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<AUPBUnit>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t AUProcessingBlockBase::SetProperty(AUProcessingBlockBase *this, int a2, CFTypeRef cf)
{
  if (a2 != 1635087726)
  {
    return 1064333936;
  }

  v5 = CFGetTypeID(cf);
  if (v5 != CFDataGetTypeID())
  {
    return 1886806380;
  }

  BytePtr = CFDataGetBytePtr(cf);
  Length = CFDataGetLength(cf);
  v9 = *(this + 3);
  v8 = *(this + 4);
  if (v8 != v9)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3);
    if (v10 < 0xAAAAAAAAAAAAAABLL)
    {
      std::allocator<AUPBUnit>::allocate_at_least[abi:ne200100](v10);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  if (Length > 0x17)
  {
    v12 = 0;
    v13 = &BytePtr[24 * (Length / 0x18)];
    v14 = 0;
    do
    {
      if (BytePtr < v13)
      {
        v11 = (*(*this + 80))(this, v12, BytePtr);
        if (v11)
        {
          return v11;
        }

        BytePtr += 24;
        v12 = (v12 + 1);
      }

      else
      {
        (*(*this + 88))(this, v12);
        v14 += 24;
      }
    }

    while (BytePtr < v13);
  }

  return 0;
}

void sub_18F7C0168(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUProcessingBlockBase::CopyProperty(const UInt8 **this, int a2, CFDataRef *a3)
{
  switch(a2)
  {
    case 1635087726:
      v6 = CFDataCreate(0, this[3], this[4] - this[3]);
      result = 0;
      *a3 = v6;
      break;
    case 1635148149:
      __p = 0;
      v8 = 0;
      v9 = 0;
      (*(*this + 4))(this, &__p);
      *a3 = CFDataCreate(0, __p, v8 - __p);
      if (__p)
      {
        v8 = __p;
        operator delete(__p);
      }

      return 0;
    case 1851878757:
      v4 = this[1];
      *a3 = v4;
      CFRetain(v4);
      return 0;
    default:
      return 1064333936;
  }

  return result;
}

void sub_18F7C026C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AUProcessingBlockBase_NonAU::GetAvailableAUs(uint64_t a1, void *a2)
{
  a2[1] = *a2;
  for (i = *(a1 + 24); i != *(a1 + 32); i += 3)
  {
    std::vector<AudioClassDescription>::push_back[abi:ne200100](a2, i);
  }
}

void std::vector<AudioClassDescription>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    v8 = v7 + 1;
    if (v7 + 1 > 0x1555555555555555)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0x1555555555555555;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::allocator<AudioClassDescription>::allocate_at_least[abi:ne200100](v10);
    }

    v11 = 12 * v7;
    v12 = *a2;
    *(v11 + 8) = *(a2 + 2);
    *v11 = v12;
    v6 = 12 * v7 + 12;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
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

void std::allocator<AudioClassDescription>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void AUProcessingBlockBase_NonAU::~AUProcessingBlockBase_NonAU(AUProcessingBlockBase_NonAU *this)
{
  AUProcessingBlockBase_NonAU::~AUProcessingBlockBase_NonAU(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032E700;
  while (*(this + 8))
  {
    v2 = *(this + 6);
    v3 = *(v2 + 40);
    v4[0] = *(v2 + 32);
    v4[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AUProcessingBlockBase_NonAU::RemoveItemFromBlock(this, v4);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  std::__tree<std::shared_ptr<AUProcessingBlockBase_NonAUItem>>::destroy(*(this + 7));

  AUProcessingBlockBase::~AUProcessingBlockBase(this);
}

void AUProcessingBlockBase_NonAU::RemoveItemFromBlock(void *a1, unint64_t *a2)
{
  v5 = a1[3];
  v4 = a1[4];
  if (v5 != v4)
  {
    while (*(v5 + 16) != *a2)
    {
      v5 += 24;
      if (v5 == v4)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 != v4)
  {
    AUPBUnregisterAU(a1, *(v5 + 16));
    v6 = a1[3];
    v7 = a1[4];
    v8 = -1431655765 * ((v5 - v6) >> 3);
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3) > v8)
    {
      v9 = v6 + 24 * v8;
      v10 = v7 - (v9 + 24);
      if (v7 != v9 + 24)
      {
        memmove((v6 + 24 * v8), (v9 + 24), v7 - (v9 + 24));
      }

      a1[4] = v9 + v10;
    }
  }

LABEL_10:
  v11 = a1[7];
  if (v11)
  {
    v12 = *a2;
    v13 = a1 + 7;
    v14 = a1[7];
    do
    {
      v15 = v14[4];
      v16 = v15 >= v12;
      v17 = v15 < v12;
      if (v16)
      {
        v13 = v14;
      }

      v14 = v14[v17];
    }

    while (v14);
    if (v13 != a1 + 7 && v12 >= v13[4])
    {
      v18 = v13[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        v20 = v13;
        do
        {
          v19 = v20[2];
          v21 = *v19 == v20;
          v20 = v19;
        }

        while (!v21);
      }

      if (a1[6] == v13)
      {
        a1[6] = v19;
      }

      --a1[8];
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v11, v13);
      v22 = v13[5];
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      operator delete(v13);
    }
  }
}

void std::__tree<std::shared_ptr<AUProcessingBlockBase_NonAUItem>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::shared_ptr<AUProcessingBlockBase_NonAUItem>>::destroy(*a1);
    std::__tree<std::shared_ptr<AUProcessingBlockBase_NonAUItem>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    operator delete(a1);
  }
}

uint64_t AUProcessingBlock_AU_Instantiating::RemoveAUAtIndex(AUProcessingBlock_AU_Instantiating *this, unsigned int a2)
{
  v4 = *(this + 3) + 24 * a2;
  result = AudioComponentInstanceDispose(*(v4 + 16));
  *(v4 + 16) = 0;
  v7 = *(this + 3);
  v6 = *(this + 4);
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3) > a2)
  {
    v8 = v7 + 24 * a2;
    v9 = v6 - (v8 + 24);
    if (v6 != v8 + 24)
    {
      result = memmove(v8, (v8 + 24), v6 - (v8 + 24));
    }

    *(this + 4) = v8 + v9;
  }

  return result;
}

uint64_t AUProcessingBlock_AU_Instantiating::InsertAUAtIndex(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  *&inDesc.componentType = *a3;
  v6 = *(a3 + 2);
  inDesc.componentFlags = 0;
  inDesc.componentFlagsMask = 0;
  inDesc.componentManufacturer = v6;
  Next = AudioComponentFindNext(0, &inDesc);
  if (!Next)
  {
    return 4294957891;
  }

  outInstance = 0;
  v8 = AudioComponentInstanceNew(Next, &outInstance);
  if (!v8)
  {
    v13 = *a3;
    v14 = *(a3 + 2);
    v15 = 0;
    v16 = outInstance;
    v9 = *(a1 + 24);
    v10 = *(a1 + 32);
    v11 = a1 + 24;
    if (0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3) >= a2)
    {
      std::vector<AUPBUnit>::insert(v11, (v9 + 24 * a2), &v13);
    }
  }

  return v8;
}
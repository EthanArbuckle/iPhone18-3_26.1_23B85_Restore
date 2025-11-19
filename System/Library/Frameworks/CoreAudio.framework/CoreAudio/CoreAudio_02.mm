void sub_1DE220FA8(void *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE220D6CLL);
  }

  JUMPOUT(0x1DE220F98);
}

void sub_1DE220FFC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE220F98);
}

void sub_1DE221090(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t std::vector<AudioObjectPropertyAddress>::__init_with_size[abi:ne200100]<AudioObjectPropertyAddress*,AudioObjectPropertyAddress*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<AudioObjectPropertyAddress>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE221118(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<AudioObjectPropertyAddress>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    std::allocator<AudioObjectPropertyAddress>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

void __destroy_helper_block_e8_32c68_ZTSNSt3__16vectorI26AudioObjectPropertyAddressNS_9allocatorIS1_EEEE(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }
}

uint64_t __copy_helper_block_e8_32c68_ZTSNSt3__16vectorI26AudioObjectPropertyAddressNS_9allocatorIS1_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = a1 + 32;
  *(v2 + 16) = 0;
  return std::vector<AudioObjectPropertyAddress>::__init_with_size[abi:ne200100]<AudioObjectPropertyAddress*,AudioObjectPropertyAddress*>(v2, *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 2));
}

void sub_1DE221534(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE22154C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a2)
  {
    v18 = *(v16 - 48);
    if (v18)
    {
      operator delete(v18);
    }

    OS::CF::UntypedObject::~UntypedObject(&a14);
    OS::CF::UntypedObject::~UntypedObject(&a16);
    HALS_System::WithADSEnabled::~WithADSEnabled(&a13);
    __cxa_begin_catch(a1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *(v16 - 48) = 136315394;
      *(v16 - 44) = "ADS_Simulator.cpp";
      *(v16 - 36) = 1024;
      *(v16 - 34) = 134;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Simulator::StaticInitializer: failed to create the plug-in", (v16 - 48), 0x12u);
    }

    if (ADS::Simulator::sInstance)
    {
      (*(*ADS::Simulator::sInstance + 24))(ADS::Simulator::sInstance);
    }

    ADS::Simulator::sInstance = 0;
    if (ADS::Simulator::sServerHighPriorityQueue)
    {
      AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(ADS::Simulator::sServerHighPriorityQueue);
      MEMORY[0x1E12C1730]();
    }

    ADS::Simulator::sServerHighPriorityQueue = 0;
    if (ADS::Simulator::sServerDefaultPriorityQueue)
    {
      AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(ADS::Simulator::sServerDefaultPriorityQueue);
      MEMORY[0x1E12C1730]();
    }

    ADS::Simulator::sServerDefaultPriorityQueue = 0;
    __cxa_end_catch();
    JUMPOUT(0x1DE221508);
  }

  JUMPOUT(0x1DE22153CLL);
}

uint64_t OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Dictionary>(uint64_t result, CFDictionaryRef theDict, void *key)
{
  *result = &unk_1F5991008;
  *(result + 8) = 0;
  if (theDict)
  {
    v3 = result;
    value = 0;
    result = CFDictionaryGetValueIfPresent(theDict, key, &value);
    if (result)
    {
      v4 = value ? CFGetTypeID(value) : 0;
      result = CFDictionaryGetTypeID();
      if (v4 == result)
      {
        v5 = value;
        if (value)
        {
          CFRetain(value);
          v6 = v3;
          v7 = v5;
        }

        else
        {
          v6 = v3;
          v7 = 0;
        }

        return OS::CF::UntypedObject::operator=(v6, v7);
      }
    }
  }

  return result;
}

uint64_t ___ZN3ADS9Simulator14LoadNullDeviceEv_block_invoke(uint64_t result)
{
  if (ADS::Simulator::sHost)
  {
    v1 = *(ADS::Simulator::sInstance + 8);
    v2 = *(result + 56);
    v3 = *(result + 32);
    v4 = *ADS::Simulator::sHost;
    pthread_once(&ADS::Simulator::sStaticInitializer, ADS::Simulator::StaticInitializer);
    return v4(ADS::Simulator::sHost, v1, v2, v3);
  }

  return result;
}

void sub_1DE2217FC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_System::WithADSEnabled::~WithADSEnabled(HALS_System::WithADSEnabled *this)
{
  v1 = *this;
  v3[0] = 0;
  v3[1] = 0;
  HALS_System::GetInstance(v4, 0, v3);
  v2 = v4[1];
  *(v4[0] + 1632) = v1;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t Simulator_GetPropertyData(_UNKNOWN **a1, ADS::ObjectManager *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a1 != &gAudioServerPlugInDriverInterfacePtr)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "ADS_Simulator.cpp";
      v29 = 1024;
      v30 = 1444;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_GetPropertyData: bad driver reference", buf, 0x12u);
    }

    v22 = 560947818;
LABEL_21:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v22;
  }

  if (!a4)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 136315394;
    v28 = "ADS_Simulator.cpp";
    v29 = 1024;
    v30 = 1445;
    v23 = MEMORY[0x1E69E9C10];
    v24 = "%25s:%-5d  Simulator_GetPropertyData: no address";
LABEL_19:
    _os_log_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, v24, buf, 0x12u);
    goto LABEL_20;
  }

  if (!a8)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 136315394;
    v28 = "ADS_Simulator.cpp";
    v29 = 1024;
    v30 = 1446;
    v23 = MEMORY[0x1E69E9C10];
    v24 = "%25s:%-5d  Simulator_GetPropertyData: no place to put the return value size";
    goto LABEL_19;
  }

  if (!a9)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "ADS_Simulator.cpp";
      v29 = 1024;
      v30 = 1447;
      v23 = MEMORY[0x1E69E9C10];
      v24 = "%25s:%-5d  Simulator_GetPropertyData: no place to put the return value";
      goto LABEL_19;
    }

LABEL_20:
    v22 = 1852797029;
    goto LABEL_21;
  }

  v16 = ADS::ObjectManager::CopyObjectByObjectID(this);
  v17 = v16;
  if (!v16)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "ADS_Simulator.cpp";
      v29 = 1024;
      v30 = 1450;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_GetPropertyData: unknown object", buf, 0x12u);
    }

    v26 = __cxa_allocate_exception(0x10uLL);
    *v26 = off_1F5991DD8;
    v26[2] = 560947818;
  }

  if ((*(*v16 + 32))(v16, this, a3, a4))
  {
    (*(*v17 + 56))(v17, this, a3, a4, a5, a6, a7, a8, a9);
    v19 = 0;
  }

  else
  {
    v19 = 2003332927;
  }

  ADS::ObjectManager::ReleaseObject(v17, v18);
  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

void sub_1DE221C60(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE221C78(void *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE221998);
  }

  JUMPOUT(0x1DE221C68);
}

uint64_t Simulator_GetPropertyDataSize(_UNKNOWN **a1, ADS::ObjectManager *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a1 != &gAudioServerPlugInDriverInterfacePtr)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = 136315394;
      v25 = "ADS_Simulator.cpp";
      v26 = 1024;
      v27 = 1404;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_GetPropertyDataSize: bad driver reference", &v24, 0x12u);
    }

    v19 = 560947818;
LABEL_18:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v19;
  }

  if (!a4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = 136315394;
      v25 = "ADS_Simulator.cpp";
      v26 = 1024;
      v27 = 1405;
      v20 = MEMORY[0x1E69E9C10];
      v21 = "%25s:%-5d  Simulator_GetPropertyDataSize: no address";
LABEL_16:
      _os_log_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, v21, &v24, 0x12u);
    }

LABEL_17:
    v19 = 1852797029;
    goto LABEL_18;
  }

  if (!a7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = 136315394;
      v25 = "ADS_Simulator.cpp";
      v26 = 1024;
      v27 = 1406;
      v20 = MEMORY[0x1E69E9C10];
      v21 = "%25s:%-5d  Simulator_GetPropertyDataSize: no place to put the return value";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v13 = ADS::ObjectManager::CopyObjectByObjectID(this);
  v14 = v13;
  if (!v13)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = 136315394;
      v25 = "ADS_Simulator.cpp";
      v26 = 1024;
      v27 = 1410;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_GetPropertyDataSize: unknown object", &v24, 0x12u);
    }

    v23 = __cxa_allocate_exception(0x10uLL);
    *v23 = off_1F5991DD8;
    v23[2] = 560947818;
  }

  if ((*(*v13 + 32))(v13, this, a3, a4))
  {
    v16 = 0;
    *a7 = (*(*v14 + 48))(v14, this, a3, a4, a5, a6);
  }

  else
  {
    v16 = 2003332927;
  }

  ADS::ObjectManager::ReleaseObject(v14, v15);
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

void sub_1DE222038(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE222050(void *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE221DCCLL);
  }

  JUMPOUT(0x1DE222040);
}

uint64_t Simulator_IsPropertySettable(_UNKNOWN **a1, ADS::ObjectManager *this, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1 != &gAudioServerPlugInDriverInterfacePtr)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = 136315394;
      v21 = "ADS_Simulator.cpp";
      v22 = 1024;
      v23 = 1364;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_IsPropertySettable: bad driver reference", &v20, 0x12u);
    }

    v15 = 560947818;
LABEL_18:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v15;
  }

  if (!a4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = 136315394;
      v21 = "ADS_Simulator.cpp";
      v22 = 1024;
      v23 = 1365;
      v16 = MEMORY[0x1E69E9C10];
      v17 = "%25s:%-5d  Simulator_IsPropertySettable: no address";
LABEL_16:
      _os_log_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, v17, &v20, 0x12u);
    }

LABEL_17:
    v15 = 1852797029;
    goto LABEL_18;
  }

  if (!a5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = 136315394;
      v21 = "ADS_Simulator.cpp";
      v22 = 1024;
      v23 = 1366;
      v16 = MEMORY[0x1E69E9C10];
      v17 = "%25s:%-5d  Simulator_IsPropertySettable: no place to put the return value";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v9 = ADS::ObjectManager::CopyObjectByObjectID(this);
  v10 = v9;
  if (!v9)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = 136315394;
      v21 = "ADS_Simulator.cpp";
      v22 = 1024;
      v23 = 1370;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_IsPropertySettable: unknown object", &v20, 0x12u);
    }

    v19 = __cxa_allocate_exception(0x10uLL);
    *v19 = off_1F5991DD8;
    v19[2] = 560947818;
  }

  if ((*(*v9 + 32))(v9, this, a3, a4))
  {
    v12 = 0;
    *a5 = (*(*v10 + 40))(v10, this, a3, a4);
  }

  else
  {
    v12 = 2003332927;
  }

  ADS::ObjectManager::ReleaseObject(v10, v11);
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_1DE2223F8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE222410(void *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE222190);
  }

  JUMPOUT(0x1DE222400);
}

uint64_t Simulator_HasProperty(_UNKNOWN **a1, ADS::ObjectManager *this, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "ADS_Simulator.cpp";
      v19 = 1024;
      v20 = 1323;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_HasProperty: unknown AudioObjectID", &v17, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  if (a1 != &gAudioServerPlugInDriverInterfacePtr)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "ADS_Simulator.cpp";
      v19 = 1024;
      v20 = 1331;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_HasProperty: bad driver reference", &v17, 0x12u);
    }

    v14 = 560947818;
LABEL_15:
    v15 = __cxa_allocate_exception(0x10uLL);
    *v15 = off_1F5991DD8;
    v15[2] = v14;
  }

  if (!a4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "ADS_Simulator.cpp";
      v19 = 1024;
      v20 = 1332;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_HasProperty: no address", &v17, 0x12u);
    }

    v14 = 1852797029;
    goto LABEL_15;
  }

  v7 = ADS::ObjectManager::CopyObjectByObjectID(this);
  v8 = v7;
  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "ADS_Simulator.cpp";
      v19 = 1024;
      v20 = 1336;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_HasProperty: unknown object", &v17, 0x12u);
    }

    v16 = __cxa_allocate_exception(0x10uLL);
    *v16 = off_1F5991DD8;
    v16[2] = 560947818;
  }

  v9 = (*(*v7 + 32))(v7, this, a3, a4);
  ADS::ObjectManager::ReleaseObject(v8, v10);
  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_1DE2227BC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Simulator_AbortDeviceConfigurationChange(_UNKNOWN **a1, ADS::ObjectManager *this, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1 != &gAudioServerPlugInDriverInterfacePtr)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "ADS_Simulator.cpp";
      v15 = 1024;
      v16 = 1297;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_PerformDeviceConfigurationChange: bad driver reference", &v13, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  v6 = ADS::ObjectManager::CopyObjectByObjectID(this);
  v7 = v6;
  if (!v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "ADS_Simulator.cpp";
      v15 = 1024;
      v16 = 1301;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_PerformDeviceConfigurationChange: unknown device", &v13, 0x12u);
    }

    v12 = __cxa_allocate_exception(0x10uLL);
    *v12 = off_1F5991DD8;
    v12[2] = 560947818;
  }

  (*(*v6 + 80))(v6, a3, a4);
  ADS::ObjectManager::ReleaseObject(v7, v8);
  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE222A38(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE222A50(void *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE22289CLL);
  }

  JUMPOUT(0x1DE222A40);
}

uint64_t Simulator_PerformDeviceConfigurationChange(_UNKNOWN **a1, ADS::ObjectManager *this, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1 != &gAudioServerPlugInDriverInterfacePtr)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "ADS_Simulator.cpp";
      v15 = 1024;
      v16 = 1265;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_PerformDeviceConfigurationChange: bad driver reference", &v13, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  v6 = ADS::ObjectManager::CopyObjectByObjectID(this);
  v7 = v6;
  if (!v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "ADS_Simulator.cpp";
      v15 = 1024;
      v16 = 1269;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_PerformDeviceConfigurationChange: unknown device", &v13, 0x12u);
    }

    v12 = __cxa_allocate_exception(0x10uLL);
    *v12 = off_1F5991DD8;
    v12[2] = 560947818;
  }

  (*(*v6 + 72))(v6, a3, a4);
  ADS::ObjectManager::ReleaseObject(v7, v8);
  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE222CD4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE222CEC(void *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE222B38);
  }

  JUMPOUT(0x1DE222CDCLL);
}

uint64_t Simulator_Initialize(_UNKNOWN **a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1 != &gAudioServerPlugInDriverInterfacePtr)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "ADS_Simulator.cpp";
      v8 = 1024;
      v9 = 1184;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_Initialize: bad driver reference", &v6, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  pthread_once(&ADS::Simulator::sStaticInitializer, ADS::Simulator::StaticInitializer);
  result = 0;
  ADS::Simulator::sHost = a2;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE222EB0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE222DD0);
  }

  _Unwind_Resume(a1);
}

uint64_t Simulator_Release(_UNKNOWN **a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1 == &gAudioServerPlugInDriverInterfacePtr)
  {
    result = --gAudioServerPlugInDriverRefCount;
  }

  else if (a1 == &gAudioServerPlugInIsolatedDriverInterfacePtr)
  {
    result = --gAudioServerPlugInIsolatedInterfaceRefCount;
  }

  else if (a1 == &gAudioServerPlugInIOThreadStateChangeInterfacePtr)
  {
    result = --gAudioServerPlugInIOThreadStateChangeRefCount;
  }

  else
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (result)
    {
      v3 = 136315394;
      v4 = "ADS_Simulator.cpp";
      v5 = 1024;
      v6 = 1158;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_AddRef: bad driver reference", &v3, 0x12u);
      result = 0;
    }
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void Simulator_IOThreadStateChange(_UNKNOWN **a1, ADS::ObjectManager *this, uint64_t a3)
{
  if (a1 == &gAudioServerPlugInIOThreadStateChangeInterfacePtr)
  {
    v4 = ADS::ObjectManager::CopyObjectByObjectID(this);
    v6 = v4;
    if (v4)
    {
      v7 = *(v4 + 672);
      if (v7)
      {
        v7(a3);
      }
    }

    ADS::ObjectManager::ReleaseObject(v6, v5);
  }
}

uint64_t Simulator_DoIsolatedIOOperation(_UNKNOWN **a1, ADS::ObjectManager *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1 != &gAudioServerPlugInIsolatedDriverInterfacePtr)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v26 = 136315394;
      v27 = "ADS_Simulator.cpp";
      v28 = 1024;
      v29 = 1791;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_DoIsolatedIOOperation: bad driver reference", &v26, 0x12u);
    }

    v24 = 560947818;
LABEL_23:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v24;
  }

  if (!a7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v26 = 136315394;
      v27 = "ADS_Simulator.cpp";
      v28 = 1024;
      v29 = 1792;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_DoIsolatedIOOperation: no cycle info", &v26, 0x12u);
    }

    v24 = 1852797029;
    goto LABEL_23;
  }

  v12 = ADS::ObjectManager::CopyObjectByObjectID(this);
  v14 = v12;
  if (!v12)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_16:
      v23 = __cxa_allocate_exception(0x10uLL);
      *v23 = off_1F5991DD8;
      v23[2] = 560947818;
    }

    v26 = 136315394;
    v27 = "ADS_Simulator.cpp";
    v28 = 1024;
    v29 = 1796;
    v21 = MEMORY[0x1E69E9C10];
    v22 = "%25s:%-5d  Simulator_DoIsolatedIOOperation: unknown device";
LABEL_15:
    _os_log_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, v22, &v26, 0x12u);
    goto LABEL_16;
  }

  v16 = *(v12 + 53);
  v15 = *(v12 + 54);
  while (1)
  {
    if (v16 == v15)
    {
      goto LABEL_13;
    }

    if (*v16 == a3)
    {
      break;
    }

    ++v16;
  }

  if (v15 == v16)
  {
LABEL_13:
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v26 = 136315394;
    v27 = "ADS_Device.cpp";
    v28 = 1024;
    v29 = 1527;
    v21 = MEMORY[0x1E69E9C10];
    v22 = "%25s:%-5d  DoIsolatedIOOperation bad inStreamObjectID";
    goto LABEL_15;
  }

  v17 = *(v12 + 81);
  if (v17)
  {
    v18 = v17(a3, a4, a5, a6, a7);
  }

  else
  {
    v18 = 0;
  }

  ADS::ObjectManager::ReleaseObject(v14, v13);
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

void sub_1DE2233BC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE2233D4(void *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE223138);
  }

  JUMPOUT(0x1DE2233C4);
}

uint64_t Simulator_TeardownForIsolatedIO(_UNKNOWN **a1, ADS::ObjectManager *this, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1 != &gAudioServerPlugInIsolatedDriverInterfacePtr)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "ADS_Simulator.cpp";
      v21 = 1024;
      v22 = 1758;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_TeardownForIsolatedIO: bad driver reference", &v19, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  v6 = ADS::ObjectManager::CopyObjectByObjectID(this);
  v8 = v6;
  if (!v6)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_15:
      v17 = __cxa_allocate_exception(0x10uLL);
      *v17 = off_1F5991DD8;
      v17[2] = 560947818;
    }

    v19 = 136315394;
    v20 = "ADS_Simulator.cpp";
    v21 = 1024;
    v22 = 1761;
    v15 = MEMORY[0x1E69E9C10];
    v16 = "%25s:%-5d  Simulator_TeardownForIsolatedIO: unknown device";
LABEL_14:
    _os_log_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, v16, &v19, 0x12u);
    goto LABEL_15;
  }

  v10 = *(v6 + 53);
  v9 = *(v6 + 54);
  while (1)
  {
    if (v10 == v9)
    {
      goto LABEL_12;
    }

    if (*v10 == a3)
    {
      break;
    }

    ++v10;
  }

  if (v9 == v10)
  {
LABEL_12:
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v19 = 136315394;
    v20 = "ADS_Device.cpp";
    v21 = 1024;
    v22 = 1556;
    v15 = MEMORY[0x1E69E9C10];
    v16 = "%25s:%-5d  DoTeardownForIsolatedIO bad inStreamObjectID";
    goto LABEL_14;
  }

  v11 = *(v6 + 83);
  if (v11)
  {
    v12 = v11(a3, a4);
  }

  else
  {
    v12 = 0;
  }

  ADS::ObjectManager::ReleaseObject(v8, v7);
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_1DE2236E0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE2236F8(void *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE2234D0);
  }

  JUMPOUT(0x1DE2236E8);
}

uint64_t Simulator_SetupForIsolatedIO(_UNKNOWN **a1, ADS::ObjectManager *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a1 != &gAudioServerPlugInIsolatedDriverInterfacePtr)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "ADS_Simulator.cpp";
      v23 = 1024;
      v24 = 1729;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_SetupForIsolatedIO: bad driver reference", &v21, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  v8 = ADS::ObjectManager::CopyObjectByObjectID(this);
  v10 = v8;
  if (!v8)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_15:
      v19 = __cxa_allocate_exception(0x10uLL);
      *v19 = off_1F5991DD8;
      v19[2] = 560947818;
    }

    v21 = 136315394;
    v22 = "ADS_Simulator.cpp";
    v23 = 1024;
    v24 = 1732;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "%25s:%-5d  Simulator_SetupForIsolatedIO: unknown device";
LABEL_14:
    _os_log_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, v18, &v21, 0x12u);
    goto LABEL_15;
  }

  v12 = *(v8 + 53);
  v11 = *(v8 + 54);
  while (1)
  {
    if (v12 == v11)
    {
      goto LABEL_12;
    }

    if (*v12 == a3)
    {
      break;
    }

    ++v12;
  }

  if (v11 == v12)
  {
LABEL_12:
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v21 = 136315394;
    v22 = "ADS_Device.cpp";
    v23 = 1024;
    v24 = 1542;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "%25s:%-5d  DoSetupForIsolatedIO bad inStreamObjectID";
    goto LABEL_14;
  }

  v13 = *(v8 + 82);
  if (v13)
  {
    v14 = v13(a3, a4, a5);
  }

  else
  {
    v14 = 0;
  }

  ADS::ObjectManager::ReleaseObject(v10, v9);
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_1DE223A0C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE223A24(void *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE2237FCLL);
  }

  JUMPOUT(0x1DE223A14);
}

uint64_t Simulator_AddRef(_UNKNOWN **a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1 == &gAudioServerPlugInDriverInterfacePtr)
  {
    if (gAudioServerPlugInDriverRefCount == -1)
    {
      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (result)
      {
        v5 = 136315394;
        v6 = "ADS_Simulator.cpp";
        v7 = 1024;
        v8 = 1110;
        v2 = MEMORY[0x1E69E9C10];
        v3 = "%25s:%-5d  Simulator_AddRef: out of references";
        goto LABEL_18;
      }
    }

    else
    {
      result = ++gAudioServerPlugInDriverRefCount;
    }
  }

  else if (a1 == &gAudioServerPlugInIsolatedDriverInterfacePtr)
  {
    if (gAudioServerPlugInIsolatedInterfaceRefCount == -1)
    {
      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (result)
      {
        v5 = 136315394;
        v6 = "ADS_Simulator.cpp";
        v7 = 1024;
        v8 = 1118;
        v2 = MEMORY[0x1E69E9C10];
        v3 = "%25s:%-5d  Simulator_AddRef: out of isolated references";
        goto LABEL_18;
      }
    }

    else
    {
      result = ++gAudioServerPlugInIsolatedInterfaceRefCount;
    }
  }

  else if (a1 == &gAudioServerPlugInIOThreadStateChangeInterfacePtr)
  {
    if (gAudioServerPlugInIOThreadStateChangeRefCount == -1)
    {
      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (result)
      {
        v5 = 136315394;
        v6 = "ADS_Simulator.cpp";
        v7 = 1024;
        v8 = 1125;
        v2 = MEMORY[0x1E69E9C10];
        v3 = "%25s:%-5d  Simulator_AddRef: out of isolated references";
        goto LABEL_18;
      }
    }

    else
    {
      result = ++gAudioServerPlugInIOThreadStateChangeRefCount;
    }
  }

  else
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (result)
    {
      v5 = 136315394;
      v6 = "ADS_Simulator.cpp";
      v7 = 1024;
      v8 = 1124;
      v2 = MEMORY[0x1E69E9C10];
      v3 = "%25s:%-5d  Simulator_AddRef: bad driver reference";
LABEL_18:
      _os_log_impl(&dword_1DE1F9000, v2, OS_LOG_TYPE_ERROR, v3, &v5, 0x12u);
      result = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Simulator_QueryInterface(_UNKNOWN **a1, CFUUIDBytes a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1 != &gAudioServerPlugInDriverInterfacePtr)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "ADS_Simulator.cpp";
      v19 = 1024;
      v20 = 1070;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_QueryInterface: bad driver reference", buf, 0x12u);
    }

    v9 = 560947818;
LABEL_14:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v9;
  }

  if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "ADS_Simulator.cpp";
      v19 = 1024;
      v20 = 1071;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_QueryInterface: no place to store the returned interface", buf, 0x12u);
    }

    v9 = 1852797029;
    goto LABEL_14;
  }

  v4 = CFUUIDCreateFromUUIDBytes(0, a2);
  v15 = v4;
  v16 = 1;
  if (!v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "ADS_Simulator.cpp";
      v19 = 1024;
      v20 = 1075;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Simulator_QueryInterface: failed to create the CFUUIDRef", buf, 0x12u);
    }

    v11 = 1852797029;
LABEL_24:
    v14 = __cxa_allocate_exception(0x10uLL);
    *v14 = off_1F5991DD8;
    v14[2] = v11;
  }

  v5 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x1E695E4A0], 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
  if (!CFEqual(v4, v5))
  {
    v6 = CFUUIDGetConstantUUIDWithBytes(0, 0xEEu, 0xA5u, 0x77u, 0x3Du, 0xCCu, 0x43u, 0x49u, 0xF1u, 0x8Eu, 0, 0x8Fu, 0x96u, 0xE7u, 0xD2u, 0x3Bu, 0x17u);
    if (!CFEqual(v15, v6))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "ADS_Simulator.cpp";
        v19 = 1024;
        v20 = 1080;
        v12 = MEMORY[0x1E69E9C10];
        v13 = "%25s:%-5d  Simulator_QueryInterface: requested interface is unsupported";
        goto LABEL_22;
      }

LABEL_23:
      v11 = -2147483644;
      goto LABEL_24;
    }
  }

  if (gAudioServerPlugInDriverRefCount == -1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "ADS_Simulator.cpp";
      v19 = 1024;
      v20 = 1081;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "%25s:%-5d  Simulator_QueryInterface: the ref count is maxxed out";
LABEL_22:
      _os_log_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x12u);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  ++gAudioServerPlugInDriverRefCount;
  *a3 = &gAudioServerPlugInDriverInterfacePtr;
  CACFObject<__CFUUID const*>::~CACFObject(&v15);
  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE2240B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    v12 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      v13 = v12[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE223DE0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CACFObject<__CFUUID const*>::~CACFObject(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
      *a1 = 0;
    }
  }

  return a1;
}

void ADS::Simulator::FlushAllQueues(ADS::Simulator *this)
{
  if (ADS::Simulator::sServerHighPriorityQueue)
  {
    AMCP::Utility::Dispatch_Queue::flush_all_work(ADS::Simulator::sServerHighPriorityQueue);
    v1 = vars8;
  }

  v2 = ADS::Simulator::sServerDefaultPriorityQueue;
  if (ADS::Simulator::sServerDefaultPriorityQueue)
  {

    AMCP::Utility::Dispatch_Queue::flush_all_work(v2);
  }
}

void *OS::CF::Dictionary::Dictionary(void *a1, uint64_t a2, unint64_t a3)
{
  *a1 = &unk_1F5991008;
  a1[1] = 0;
  std::vector<void const*>::vector[abi:ne200100](keys, a3);
  std::vector<void const*>::vector[abi:ne200100](values, a3);
  if (a3)
  {
    v6 = 0;
    v7 = a2 + 16 * a3;
    do
    {
      keys[0][v6] = *a2;
      values[0][v6] = *(a2 + 8);
      a2 += 16;
      ++v6;
    }

    while (a2 != v7);
  }

  v8 = CFDictionaryCreate(0, keys[0], values[0], a3, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  OS::CF::UntypedObject::operator=(a1, v8);
  if (values[0])
  {
    values[1] = values[0];
    operator delete(values[0]);
  }

  if (keys[0])
  {
    keys[1] = keys[0];
    operator delete(keys[0]);
  }

  return a1;
}

void sub_1DE22429C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  OS::CF::UntypedObject::~UntypedObject(v13);
  _Unwind_Resume(a1);
}

void *std::vector<void const*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<void const*>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<void const*>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1DE22433C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<void const*>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<void const*>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

void std::allocator<void const*>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void HALS_PlugIn::HandlePlugIn_PropertiesChanged(HALS_PlugIn *this, uint64_t a2, const AudioObjectPropertyAddress *a3)
{
  v16[2] = 0uLL;
  v17 = 0;
  if (a2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = &a3[v6];
      while (1)
      {
        mSelector = v11->mSelector;
        ++v11;
        v12 = mSelector;
        if (mSelector != 1684370979)
        {
          break;
        }

        ++v6;
        v10 = 1;
        if (a2 == v6)
        {
          goto LABEL_20;
        }
      }

      if (v12 == 1668049699)
      {
        v14 = 1;
      }

      else
      {
        v14 = v7;
      }

      if (v12 == 1701733411)
      {
        v15 = 1;
      }

      else
      {
        v15 = v9;
      }

      if (v12 == 1701733411)
      {
        v14 = v7;
      }

      if (v12 == 1651472419)
      {
        v8 = 1;
      }

      else
      {
        v9 = v15;
        v7 = v14;
      }

      ++v6;
    }

    while (v6 != a2);
    if (v10)
    {
LABEL_20:
      HALS_PlugIn::RebuildDeviceList(v16, this);
    }

    if (v9)
    {
      HALS_PlugIn::RebuildEndPointList(this);
    }

    if (v8)
    {
      HALS_PlugIn::RebuildBoxList(this);
    }

    if (v7)
    {
      HALS_PlugIn::RebuildClockDeviceList(this);
    }
  }

  HALS_Object::PropertiesChanged(this, *(this + 4), 0, a2, a3);
}

void sub_1DE2245D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (v14)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void HALS_PlugIn::RebuildDeviceList(HALS_PlugIn *this, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v2 = *(a2 + 416);
  v3 = *(a2 + 356);
  v4 = 0x676C6F6264657623;
  LODWORD(v5) = 0;
  v6 = (*(*v2 + 560))() >> 2;
  operator new[]();
}

void sub_1DE224D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MEMORY[0x1E12C1700](v7, 0x1000C8052888210);
  MEMORY[0x1E12C1700](a5, 0x1000C8052888210);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(va, v8);
  MEMORY[0x1E12C1700](v6, 0x1000C8052888210);
  v9 = *v5;
  if (*v5)
  {
    *(v5 + 8) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(v10);
}

void sub_1DE224DD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE224DE4);
  }

  JUMPOUT(0x1DE224DECLL);
}

uint64_t HALS_PlugIn::RebuildEndPointList(uint64_t this)
{
  v1 = this;
  v3 = *(this + 20);
  v2 = *(this + 24);
  if (v3 == v2 || v3 == 1953656941)
  {
    if (v3 == 1953656941 || v3 != v2)
    {
LABEL_13:
      v6 = *(this + 416);
      v7 = *(v1 + 356);
      v8 = 0x676C6F62656E6423;
      LODWORD(v9) = 0;
      v10 = (*(*v6 + 560))(v6, v7, 0, &v8, 0, 0) >> 2;
      operator new[]();
    }
  }

  else if (v2 == 1953656941)
  {
    goto LABEL_13;
  }

  return this;
}

void sub_1DE2253C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  MEMORY[0x1E12C1700](v11, 0x1000C8052888210);
  MEMORY[0x1E12C1700](a4, 0x1000C8052888210);
  _Block_object_dispose(va, 8);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(va1, v13);
  MEMORY[0x1E12C1700](v10, 0x1000C8052888210);
  _Unwind_Resume(a1);
}

void HALS_PlugIn::RebuildBoxList(HALS_PlugIn *this)
{
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2000000000;
  v20 = 0;
  v2 = *(this + 52);
  v3 = *(this + 89);
  v16 = 0x676C6F62626F7823;
  LODWORD(v17) = 0;
  if ((*(*v2 + 544))())
  {
    v4 = *(this + 52);
    v5 = *(this + 89);
    v16 = 0x676C6F62626F7823;
    LODWORD(v17) = 0;
    v6 = (*(*v4 + 560))(v4, v5, 0, &v16, 0, 0);
    v18 = v6 >> 2;
    LODWORD(v14) = 0;
    std::vector<unsigned int>::vector[abi:ne200100](&v16, v6 >> 2);
    if (v6 >= 4)
    {
      v7 = *(this + 52);
      v8 = *(this + 89);
      v14 = 0x676C6F62626F7823;
      v15 = 0;
      (*(*v7 + 568))(v7, v8, 0, &v14, 0, 0, v6 & 0xFFFFFFFC, &v18, v16);
      v18 >>= 2;
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1174405120;
    v10[2] = ___ZN11HALS_PlugIn14RebuildBoxListEv_block_invoke;
    v10[3] = &unk_1F5960E78;
    v10[4] = v19;
    v10[5] = this;
    v12 = 0;
    v13 = 0;
    __p = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v16, v17, (v17 - v16) >> 2);
    v9 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v9, v10);
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    if (v16)
    {
      v17 = v16;
      operator delete(v16);
    }
  }

  _Block_object_dispose(v19, 8);
}

void sub_1DE2256AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose((v22 - 64), 8);
  _Unwind_Resume(a1);
}

void HALS_PlugIn::RebuildClockDeviceList(HALS_PlugIn *this)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = *(this + 52);
  v3 = *(this + 89);
  strcpy(buf, "#klcbolg");
  v44 = 0;
  v45 = 0;
  if ((*(*v2 + 544))(v2, v3, 0, buf))
  {
    v4 = *(this + 52);
    v5 = *(this + 89);
    strcpy(buf, "#klcbolg");
    v44 = 0;
    v45 = 0;
    v42 = (*(*v4 + 560))(v4, v5, 0, buf, 0, 0) >> 2;
    *buf = 0;
    std::vector<unsigned int>::vector[abi:ne200100](&v40, v42);
    if (v42)
    {
      v6 = *(this + 52);
      v7 = *(this + 89);
      strcpy(buf, "#klcbolg");
      v44 = 0;
      v45 = 0;
      (*(*v6 + 568))(v6, v7, 0, buf, 0, 0, 4 * v42, &v42, v40);
      v42 >>= 2;
    }

    v37 = 0;
    v38 = 0;
    v39 = 0;
    HALS_DeviceManager::CopyClockDeviceList(this, &v37);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v9 = v40;
    v10 = v41;
    while (v9 != v10)
    {
      v11 = v37;
      if (v37 == v38)
      {
LABEL_9:
        std::vector<unsigned int>::push_back[abi:ne200100](&v34, v9);
      }

      else
      {
        while (*(*v11 + 11) != *v9)
        {
          if (++v11 == v38)
          {
            goto LABEL_9;
          }
        }
      }

      ++v9;
    }

    v32[0] = 0;
    v32[1] = 0;
    v33 = 0;
    v12 = v37;
    v13 = v38;
    if (v37 != v38)
    {
      do
      {
        v14 = v40;
        if (v40 == v41)
        {
LABEL_15:
          *buf = *(*v12 + 11);
          std::vector<unsigned int>::push_back[abi:ne200100](v32, buf);
        }

        else
        {
          while (*(*v12 + 11) != *v14)
          {
            if (++v14 == v41)
            {
              goto LABEL_15;
            }
          }
        }

        ++v12;
      }

      while (v12 != v13);
      v15 = v32[1];
      for (i = v32[0]; i != v15; ++i)
      {
        v17 = HALS_PlugIn::CopyObjectByUCID(this, *i);
        v19 = v17;
        if (v17)
        {
          v20 = *(this + 40);
          v21 = v17[4];
          v22 = v17[7];
          v23 = (*(*v17 + 208))(v17);
          HALS_System::ClockDeviceDied(v20, v21, v22, v23);
          (*(*v19 + 8))(v19);
          HALS_PlugIn::RemoveClockDevice(this, v19);
        }

        HALS_ObjectMap::ReleaseObject(v19, v18);
      }
    }

    v24 = v34;
    v25 = v35;
    if (v34 != v35)
    {
      v31 = *MEMORY[0x1E69E54D8];
      v29 = *(MEMORY[0x1E69E54D8] + 72);
      v30 = *(MEMORY[0x1E69E54D8] + 64);
      do
      {
        v27 = HALS_PlugIn::CopyClockDeviceByUCID(this, *v24);
        if (!v27)
        {
          operator new();
        }

        HALS_ObjectMap::ReleaseObject(v27, v26);
        ++v24;
      }

      while (v24 != v25);
    }

    if (v32[0])
    {
      v32[1] = v32[0];
      operator delete(v32[0]);
    }

    if (v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(&v37, v8);
    if (v40)
    {
      v41 = v40;
      operator delete(v40);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

void sub_1DE226544(int a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, HALS_ObjectMap **a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a33)
  {
    operator delete(a33);
  }

  HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(&a36, a2);
  if (a39)
  {
    a40 = a39;
    operator delete(a39);
  }

  _Unwind_Resume(v40);
}

void *std::vector<unsigned int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1DE2266E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
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
      std::vector<void *>::__throw_length_error[abi:ne200100]();
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
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v11);
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

HALS_ObjectMap *HALS_PlugIn::CopyObjectByUCID(HALS_PlugIn *this, int a2)
{
  v50 = 0;
  v51 = 0;
  v52 = 0;
  HALS_DeviceManager::CopyDeviceList(this, &v50, 1, 0);
  v4 = v50;
  v5 = v51;
  while (1)
  {
    if (v4 == v5)
    {
      NumberEndPoints = HALS_PlugIn::GetNumberEndPoints(this, 0);
      if (!NumberEndPoints)
      {
LABEL_62:
        v47 = 0;
        v48 = 0;
        v49 = 0;
        HALS_DeviceManager::CopyBoxList(this, &v47, 0);
        for (i = v47; i != v48; ++i)
        {
          v14 = *i;
          if (*(*i + 91) == a2)
          {
            HALS_ObjectMap::RetainObject(*i, v40);
            HALS_DeviceManager::BasicBoxList::~BasicBoxList(&v47, v44);
            goto LABEL_75;
          }
        }

        HALS_DeviceManager::BasicBoxList::~BasicBoxList(&v47, v40);
        v47 = 0;
        v48 = 0;
        v49 = 0;
        HALS_DeviceManager::CopyClockDeviceList(this, &v47);
        for (j = v47; ; ++j)
        {
          if (j == v48)
          {
            v14 = 0;
            goto LABEL_74;
          }

          v14 = *j;
          if (*(*j + 99) == a2)
          {
            break;
          }
        }

        HALS_ObjectMap::RetainObject(*j, v42);
LABEL_74:
        HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(&v47, v42);
        break;
      }

      v23 = 0;
      while (1)
      {
        v24 = HALS_PlugIn::CopyEndPointByIndex(this, v23, 0);
        v26 = v24;
        if (v24)
        {
          if (*(v24 + 369) == a2)
          {
            HALS_ObjectMap::RetainObject(v24, v25);
            v14 = v26;
            goto LABEL_59;
          }

          v27 = 0;
          v28 = 1;
          do
          {
            NumberStreams = HALS_IODevice::GetNumberStreams(v26, v27 & 1);
            if (NumberStreams)
            {
              v30 = 1;
              do
              {
                v31 = HALS_IODevice::CopyStreamByIndex(v26, v27 & 1, v30 - 1);
                v33 = v31;
                if (v31 && *(v31 + 23) == a2)
                {
                  HALS_ObjectMap::RetainObject(v31, v32);
                  v14 = v33;
                }

                else
                {
                  v14 = 0;
                }

                HALS_ObjectMap::ReleaseObject(v33, v32);
                if (v14)
                {
                  break;
                }

                v15 = v30++ >= NumberStreams;
              }

              while (!v15);
            }

            else
            {
              v14 = 0;
            }

            v34 = (v14 == 0) & v28;
            v27 = 1;
            v28 = 0;
          }

          while ((v34 & 1) != 0);
          if (v14)
          {
            goto LABEL_59;
          }

          v35 = (*(*v26 + 632))(v26);
          if (v35)
          {
            v36 = 1;
            do
            {
              v37 = (*(*v26 + 640))(v26, v36 - 1);
              v39 = v37;
              if (v37 && *(v37 + 23) == a2)
              {
                HALS_ObjectMap::RetainObject(v37, v38);
                v14 = v39;
              }

              else
              {
                v14 = 0;
              }

              HALS_ObjectMap::ReleaseObject(v39, v38);
              if (v14)
              {
                break;
              }

              v15 = v36++ >= v35;
            }

            while (!v15);
            goto LABEL_59;
          }
        }

        v14 = 0;
LABEL_59:
        HALS_ObjectMap::ReleaseObject(v26, v25);
        if (!v14 && ++v23 < NumberEndPoints)
        {
          continue;
        }

        if (!v14)
        {
          goto LABEL_62;
        }

        goto LABEL_75;
      }
    }

    v6 = *v4;
    if (*(*v4 + 369) == a2)
    {
      HALS_ObjectMap::RetainObject(*v4, v3);
      v14 = v6;
      break;
    }

    v7 = 0;
    v8 = 1;
    do
    {
      v9 = HALS_IODevice::GetNumberStreams(v6, v7 & 1);
      if (v9)
      {
        v10 = 1;
        do
        {
          v11 = HALS_IODevice::CopyStreamByIndex(v6, v7 & 1, v10 - 1);
          v13 = v11;
          if (v11 && *(v11 + 23) == a2)
          {
            HALS_ObjectMap::RetainObject(v11, v12);
            v14 = v13;
          }

          else
          {
            v14 = 0;
          }

          HALS_ObjectMap::ReleaseObject(v13, v12);
          if (v14)
          {
            break;
          }

          v15 = v10++ >= v9;
        }

        while (!v15);
      }

      else
      {
        v14 = 0;
      }

      v16 = (v14 == 0) & v8;
      v7 = 1;
      v8 = 0;
    }

    while ((v16 & 1) != 0);
    if (v14)
    {
      break;
    }

    v17 = (*(*v6 + 632))(v6);
    if (v17)
    {
      v18 = 1;
      do
      {
        v19 = (*(*v6 + 640))(v6, v18 - 1);
        v21 = v19;
        if (v19 && *(v19 + 23) == a2)
        {
          HALS_ObjectMap::RetainObject(v19, v20);
          v14 = v21;
        }

        else
        {
          v14 = 0;
        }

        HALS_ObjectMap::ReleaseObject(v21, v20);
        if (v14)
        {
          break;
        }

        v15 = v18++ >= v17;
      }

      while (!v15);
      if (v14)
      {
        break;
      }
    }

    ++v4;
  }

LABEL_75:
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&v50, v3);
  return v14;
}

void sub_1DE226C2C(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, HALS_ObjectMap **);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(va, a2);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(va1, v5);
  _Unwind_Resume(a1);
}

void HALS_PlugIn::RemoveClockDevice(HALS_PlugIn *this, HALS_PlugInClockDevice *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN11HALS_PlugIn17RemoveClockDeviceEP22HALS_PlugInClockDevice_block_invoke;
  v3[3] = &__block_descriptor_tmp_36;
  v3[4] = this;
  v3[5] = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v3);
}

uint64_t HALS_PlugIn::CopyClockDeviceByUCID(HALS_PlugIn *this, int a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK11HALS_PlugIn21CopyClockDeviceByUCIDEj_block_invoke;
  v5[3] = &unk_1E8673390;
  v5[4] = &v7;
  v5[5] = this;
  v6 = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v5);
  v3 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v3;
}

void ___ZN11HALS_PlugIn14AddClockDeviceEP22HALS_PlugInClockDevice_block_invoke(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  v3 = a1[6];
  v5 = HALS_PlugIn::_CopyClockDeviceByUCID(v2, v3[99]);
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v6 = (*(*v3 + 224))(v3);
      v21 = 136315650;
      v22 = "HALS_PlugIn.cpp";
      v23 = 1024;
      v24 = 2259;
      v25 = 2082;
      v26 = v6;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInManager::_AddClockDevice: there is already a clcok device with the UID, %{public}s", &v21, 0x1Cu);
    }

    v7 = 1852797029;
  }

  else
  {
    v8 = *(v2 + 71);
    v9 = *(v2 + 72);
    if (v8 >= v9)
    {
      v11 = *(v2 + 70);
      v12 = v8 - v11;
      v13 = (v8 - v11) >> 3;
      v14 = v13 + 1;
      if ((v13 + 1) >> 61)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v15 = v9 - v11;
      if (v15 >> 2 > v14)
      {
        v14 = v15 >> 2;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        v16 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        if (!(v16 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v17 = (v8 - v11) >> 3;
      v18 = (8 * v13);
      v19 = (8 * v13 - 8 * v17);
      *v18 = v3;
      v10 = v18 + 1;
      memcpy(v19, v11, v12);
      *(v2 + 70) = v19;
      *(v2 + 71) = v10;
      *(v2 + 72) = 0;
      if (v11)
      {
        operator delete(v11);
      }
    }

    else
    {
      *v8 = v3;
      v10 = v8 + 8;
    }

    v7 = 0;
    *(v2 + 71) = v10;
  }

  HALS_ObjectMap::ReleaseObject(v5, v4);
  *(*(a1[4] + 8) + 24) = v7;
  v20 = *MEMORY[0x1E69E9840];
}

void sub_1DE227098(_Unwind_Exception *exception_object, HALS_Object *a2)
{
  if (a2)
  {
    v4 = a2;
    HALS_ObjectMap::ReleaseObject(v2, a2);
    v5 = __cxa_begin_catch(exception_object);
    if (v4 == 2)
    {
      v6 = v5[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE227044);
  }

  _Unwind_Resume(exception_object);
}

HALS_ObjectMap *HALS_PlugIn::_CopyClockDeviceByUCID(HALS_PlugIn *this, int a2)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  HALS_DeviceManager::CopyClockDeviceList(this, &v10);
  v4 = v10;
  if (v10 == v11)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v7 = *v4++;
      v6 = v7;
      if (*(v7 + 99) == a2)
      {
        v5 = v6;
      }
    }

    while (v4 != v11);
  }

  HALS_ObjectMap::RetainObject(v5, v3);
  HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(&v10, v8);
  return v5;
}

void sub_1DE22718C(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(va, a2);
  _Unwind_Resume(a1);
}

HALS_ObjectMap *___ZNK11HALS_PlugIn21CopyClockDeviceByUCIDEj_block_invoke(uint64_t a1)
{
  result = HALS_PlugIn::_CopyClockDeviceByUCID(*(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void ___ZN11HALS_PlugIn17RemoveClockDeviceEP22HALS_PlugInClockDevice_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 560);
  v4 = *(v2 + 568);
  if (v3 != v4)
  {
    while (*v3 != v1)
    {
      if (++v3 == v4)
      {
        v3 = *(v2 + 568);
        break;
      }
    }
  }

  if (v4 != v3)
  {
    v5 = v3 + 1;
    v6 = v4 - (v3 + 1);
    if (v4 != v3 + 1)
    {
      memmove(v3, v5, v4 - (v3 + 1));
    }

    *(v2 + 568) = v3 + v6;

    HALS_ObjectMap::ReleaseObject(v1, v5);
  }
}

unint64_t HALS_PlugIn::GetNumberEndPoints(HALS_PlugIn *this, HALS_Client *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x4002000000;
  v10 = __Block_byref_object_copy__22;
  v11 = __Block_byref_object_dispose__23;
  memset(v12, 0, sizeof(v12));
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK11HALS_PlugIn18GetNumberEndPointsEP11HALS_Client_block_invoke;
  v6[3] = &unk_1E8673218;
  v6[4] = &v7;
  v6[5] = this;
  v6[6] = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v6);
  v3 = (v8[6] - v8[5]) >> 3;
  _Block_object_dispose(&v7, 8);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(v12, v4);
  return v3;
}

void sub_1DE22737C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList((v9 + 40), v11);
  _Unwind_Resume(a1);
}

HALS_ObjectMap *HALS_PlugIn::CopyEndPointByIndex(HALS_PlugIn *this, unsigned int a2, HALS_Client *a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x4002000000;
  v14 = __Block_byref_object_copy__22;
  v15 = __Block_byref_object_dispose__23;
  memset(v16, 0, sizeof(v16));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = ___ZNK11HALS_PlugIn19CopyEndPointByIndexEjP11HALS_Client_block_invoke;
  v10[3] = &unk_1E8673240;
  v10[4] = &v11;
  v10[5] = this;
  v10[6] = a3;
  v4 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v4, v10);
  v6 = v12[5];
  if (a2 >= ((v12[6] - v6) >> 3))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v6 + 8 * a2);
  }

  HALS_ObjectMap::RetainObject(v7, v5);
  _Block_object_dispose(&v11, 8);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(v16, v8);
  return v7;
}

void sub_1DE2274C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList((v9 + 40), v11);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__22(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_1DE227534(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_PlugIn::_CopyEndPointList(uint64_t a1, HALS_Object *a2)
{
  for (i = *(a1 + 536); i != *(a1 + 544); ++i)
  {
    v5 = *(*i + 440);
    HALS_ObjectMap::RetainObject(*i, a2);
    v6 = *i;
    v7 = v6;
    std::vector<HALS_Device *>::push_back[abi:ne200100](a2, &v7);
  }
}

void std::vector<HALS_Device *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_1DE227700(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZN11HALS_PlugIn14RebuildBoxListEv_block_invoke(void *a1)
{
  v28 = 0uLL;
  v29 = 0;
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  while (v3 != v4)
  {
    v5 = *(v2 + 584);
    v6 = *(v2 + 592);
    if (v5 == v6)
    {
LABEL_6:
      std::vector<unsigned int>::push_back[abi:ne200100](&v28, v3);
    }

    else
    {
      while (*(*v5 + 44) != *v3)
      {
        v5 += 8;
        if (v5 == v6)
        {
          goto LABEL_6;
        }
      }
    }

    ++v3;
  }

  v26 = 0uLL;
  v27 = 0;
  v7 = *(v2 + 584);
  v8 = *(v2 + 592);
  if (v7 == v8)
  {
    v22 = 0;
    __p = 0;
    v11 = v28;
  }

  else
  {
    do
    {
      v9 = a1[6];
      v10 = a1[7];
      if (v9 == v10)
      {
LABEL_12:
        LODWORD(v30) = *(*v7 + 44);
        std::vector<unsigned int>::push_back[abi:ne200100](&v26, &v30);
      }

      else
      {
        while (*(*v7 + 44) != *v9)
        {
          if (++v9 == v10)
          {
            goto LABEL_12;
          }
        }
      }

      v7 += 8;
    }

    while (v7 != v8);
    v11 = v28;
    v12 = *(&v26 + 1);
    __p = v26;
    if (v26 == *(&v26 + 1))
    {
      v22 = v26;
    }

    else
    {
      v13 = *(v2 + 592);
      v14 = v26;
      *v24 = v28;
      do
      {
        v15 = *(v2 + 584);
        if (v15 != v13)
        {
          while (*(*v15 + 11) != *v14)
          {
            if (++v15 == v13)
            {
              goto LABEL_24;
            }
          }
        }

        if (v15 != v13)
        {
          (*(**v15 + 8))();
          HALS_ObjectMap::ReleaseObject(*v15, v16);
          v17 = *(v2 + 592);
          v18 = v17 - (v15 + 1);
          if (v17 != v15 + 1)
          {
            memmove(v15, v15 + 1, v17 - (v15 + 1));
          }

          v13 = (v15 + v18);
          *(v2 + 592) = v15 + v18;
          v11 = *v24;
        }

LABEL_24:
        ++v14;
      }

      while (v14 != v12);
      v22 = v12;
    }
  }

  v19 = *(&v11 + 1);
  v25 = v11;
  if (v11 != *(&v11 + 1))
  {
    operator new();
  }

  if (__p)
  {
    *(&v26 + 1) = __p;
    operator delete(__p);
  }

  if (v25)
  {
    *(&v28 + 1) = v25;
    operator delete(v25);
  }

  v21 = v19 != v25 || v22 != __p;
  *(*(a1[4] + 8) + 24) = v21;
}

void sub_1DE227BC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_48c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

uint64_t __copy_helper_block_e8_48c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v2 = a1 + 48;
  *(v2 + 16) = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v2, *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 2);
}

void sub_1DE227CAC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_PlugIn::CopyEndPointByUCID(HALS_PlugIn *this, int a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK11HALS_PlugIn18CopyEndPointByUCIDEj_block_invoke;
  v5[3] = &unk_1E86732B8;
  v5[4] = &v7;
  v5[5] = this;
  v6 = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v5);
  v3 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v3;
}

void HALS_PlugIn::RemoveEndPoint(HALS_PlugIn *this, HALS_PlugInDevice *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN11HALS_PlugIn14RemoveEndPointEP17HALS_PlugInDevice_block_invoke;
  v3[3] = &__block_descriptor_tmp_33;
  v3[4] = this;
  v3[5] = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v3);
}

void ___ZN11HALS_PlugIn11AddEndPointEP17HALS_PlugInDevice_block_invoke(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  v3 = a1[6];
  v4 = (*(*v3 + 208))(v3);
  v5 = HALS_PlugIn::CopyEndPointByUID(v2, v4, 0);
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315394;
      v22 = "HALS_PlugIn.cpp";
      v23 = 1024;
      v24 = 2056;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInManager::_AddEndPoint: there is already a endpoint with this UID", &v21, 0x12u);
    }

    HALS_ObjectMap::ReleaseObject(v5, v6);
    v7 = 1852797029;
  }

  else
  {
    v8 = *(v2 + 68);
    v9 = *(v2 + 69);
    if (v8 >= v9)
    {
      v11 = *(v2 + 67);
      v12 = v8 - v11;
      v13 = (v8 - v11) >> 3;
      v14 = v13 + 1;
      if ((v13 + 1) >> 61)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v15 = v9 - v11;
      if (v15 >> 2 > v14)
      {
        v14 = v15 >> 2;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        v16 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        if (!(v16 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v17 = (v8 - v11) >> 3;
      v18 = (8 * v13);
      v19 = (8 * v13 - 8 * v17);
      *v18 = v3;
      v10 = v18 + 1;
      memcpy(v19, v11, v12);
      *(v2 + 67) = v19;
      *(v2 + 68) = v10;
      *(v2 + 69) = 0;
      if (v11)
      {
        operator delete(v11);
      }
    }

    else
    {
      *v8 = v3;
      v10 = v8 + 8;
    }

    v7 = 0;
    *(v2 + 68) = v10;
  }

  *(*(a1[4] + 8) + 24) = v7;
  v20 = *MEMORY[0x1E69E9840];
}

void sub_1DE22804C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE227FF8);
  }

  _Unwind_Resume(a1);
}

HALS_ObjectMap *HALS_PlugIn::CopyEndPointByUID(HALS_PlugIn *this, const __CFString *a2, HALS_Client *a3)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x4002000000;
  v15 = __Block_byref_object_copy__22;
  v16 = __Block_byref_object_dispose__23;
  memset(v17, 0, sizeof(v17));
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = ___ZNK11HALS_PlugIn17CopyEndPointByUIDEPK10__CFStringP11HALS_Client_block_invoke;
  v11[3] = &unk_1E8673268;
  v11[4] = &v12;
  v11[5] = this;
  v11[6] = a3;
  v4 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v4, v11);
  v6 = v13[5];
  while (v6 != v13[6])
  {
    v7 = *v6;
    v8 = (*(**v6 + 208))(*v6);
    ++v6;
    if (CFStringCompare(v8, a2, 0) == kCFCompareEqualTo)
    {
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_6:
  HALS_ObjectMap::RetainObject(v7, v5);
  _Block_object_dispose(&v12, 8);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(v17, v9);
  return v7;
}

void sub_1DE2281F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList((v9 + 40), v11);
  _Unwind_Resume(a1);
}

void sub_1DE228240(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZN11HALS_PlugIn14RemoveEndPointEP17HALS_PlugInDevice_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 536);
  v3 = *(v1 + 544);
  if (v2 != v3)
  {
    v4 = *(a1 + 40);
    while (*v2 != v4)
    {
      if (++v2 == v3)
      {
        return;
      }
    }

    *v2 = 0;
    v5 = v2 + 1;
    v6 = v3 - (v2 + 1);
    if (v3 != v2 + 1)
    {
      memmove(v2, v5, v3 - (v2 + 1));
    }

    *(v1 + 544) = v2 + v6;
    HALS_ObjectMap::ReleaseObject(v4, v5);
  }
}

void sub_1DE2282E0(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

HALS_ObjectMap *___ZNK11HALS_PlugIn18CopyEndPointByUCIDEj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  NumberEndPoints = HALS_PlugIn::GetNumberEndPoints(v2, 0);
  if (NumberEndPoints)
  {
    v5 = NumberEndPoints;
    v6 = 0;
    while (1)
    {
      result = HALS_PlugIn::CopyEndPointByIndex(v2, v6, 0);
      if (*(result + 369) == v3)
      {
        break;
      }

      HALS_ObjectMap::ReleaseObject(result, v8);
      if (v5 == ++v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t HALS_PlugIn::CopyDeviceByUCID(HALS_PlugIn *this, int a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK11HALS_PlugIn16CopyDeviceByUCIDEj_block_invoke;
  v5[3] = &unk_1E8673138;
  v5[4] = &v7;
  v5[5] = this;
  v6 = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v5);
  v3 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v3;
}

void HALS_PlugIn::RemoveDevice(HALS_PlugIn *this, HALS_PlugInDevice *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN11HALS_PlugIn12RemoveDeviceEP17HALS_PlugInDevice_block_invoke;
  v3[3] = &__block_descriptor_tmp_19;
  v3[4] = this;
  v3[5] = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v3);
}

void HALS_PlugIn::AddDevice(HALS_PlugIn *this, HALS_PlugInDevice *a2)
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2000000000;
  v5 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN11HALS_PlugIn9AddDeviceEP17HALS_PlugInDevice_block_invoke;
  v3[3] = &unk_1E8673160;
  v3[4] = v4;
  v3[5] = this;
  v3[6] = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v3);
  _Block_object_dispose(v4, 8);
}

void ___ZN11HALS_PlugIn9AddDeviceEP17HALS_PlugInDevice_block_invoke(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  v3 = a1[6];
  v4 = (*(*v3 + 208))(v3);
  v5 = HALS_DeviceManager::CopyDeviceByUID(v2, v4, 0);
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v7 = (*(*v3 + 224))(v3);
      v23 = 136315650;
      v24 = "HALS_PlugIn.cpp";
      v25 = 1024;
      v26 = 1679;
      v27 = 2082;
      v28 = v7;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_PlugInManager::_AddDevice: there is already a device with the UID, %{public}s", &v23, 0x1Cu);
    }

    HALS_ObjectMap::ReleaseObject(v5, v6);
    v8 = 1852797029;
  }

  else
  {
    v9 = *(v2 + 65);
    v10 = *(v2 + 66);
    if (v9 >= v10)
    {
      v12 = *(v2 + 64);
      v13 = (v9 - v12) >> 3;
      if ((v13 + 1) >> 61)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v14 = v10 - v12;
      v15 = v14 >> 2;
      if (v14 >> 2 <= (v13 + 1))
      {
        v15 = v13 + 1;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v16 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      if (v16)
      {
        std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v16);
      }

      v17 = (8 * v13);
      *v17 = v3;
      v11 = 8 * v13 + 8;
      v18 = *(v2 + 64);
      v19 = *(v2 + 65) - v18;
      v20 = v17 - v19;
      memcpy(v17 - v19, v18, v19);
      v21 = *(v2 + 64);
      *(v2 + 64) = v20;
      *(v2 + 65) = v11;
      *(v2 + 66) = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      *v9 = v3;
      v11 = (v9 + 1);
    }

    v8 = 0;
    *(v2 + 65) = v11;
  }

  *(*(a1[4] + 8) + 24) = v8;
  v22 = *MEMORY[0x1E69E9840];
}

void sub_1DE2287EC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE2287A4);
  }

  _Unwind_Resume(a1);
}

void ___ZN11HALS_PlugIn12RemoveDeviceEP17HALS_PlugInDevice_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[64];
  v3 = v1[65];
  if (v2 != v3)
  {
    v4 = *(a1 + 40);
    v5 = v1[64];
    while (*v5 != v4)
    {
      if (++v5 == v3)
      {
        return;
      }
    }

    *v5 = 0;
    v6 = v3 - (v5 + 1);
    if (v3 != v5 + 1)
    {
      memmove(v5, v5 + 1, v3 - (v5 + 1));
      v2 = v1[64];
    }

    v7 = (v5 + v6);
    v1[65] = v5 + v6;
    v8 = v1[66];
    if (((v5 + v6 - v2) >> 3) + 20 < ((v8 - v2) >> 3))
    {
      v9 = v8 - v2;
      if (v9 > (v7 - v2))
      {
        v10 = v7 - v2;
        if (v7 != v2)
        {
          std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v7 - v2);
        }

        v11 = 0;
        if (v9 >> 3)
        {
          v12 = 8 * v10;
          v13 = v1[65] - v2;
          v14 = 8 * v10 - v13;
          memcpy((v12 - v13), v2, v13);
          v11 = v1[64];
          v1[64] = v14;
          v1[65] = v12;
          v1[66] = 0;
        }

        if (v11)
        {
          operator delete(v11);
        }
      }
    }

    HALS_ObjectMap::ReleaseObject(v4, v2);
  }
}

void sub_1DE228964(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE228948);
}

void sub_1DE228974(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK11HALS_PlugIn16CopyDeviceByUCIDEj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  HALS_DeviceManager::CopyDeviceList(v2, &v10, 1, 0);
  v5 = v10;
  if (v10 == v11)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v8 = *v5++;
      v7 = v8;
      if (*(v8 + 369) == v3)
      {
        v6 = v7;
      }
    }

    while (v5 != v11);
  }

  HALS_ObjectMap::RetainObject(v6, v4);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&v10, v9);
  *(*(*(a1 + 32) + 8) + 24) = v6;
}

void sub_1DE228A38(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(va, a2);
  _Unwind_Resume(a1);
}

void non-virtual thunk toHALS_PlugIn::~HALS_PlugIn(HALS_PlugIn *this)
{
  HALS_PlugIn::~HALS_PlugIn((this - 336));

  JUMPOUT(0x1E12C1730);
}

{
  HALS_PlugIn::~HALS_PlugIn((this - 336));
}

void HALS_PlugIn::~HALS_PlugIn(HALS_PlugIn *this)
{
  *this = &unk_1F5960D08;
  v2 = (this + 336);
  *(this + 42) = &unk_1F5960E48;
  v3 = *(this + 61);
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(this + 62);
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = *(this + 63);
  if (v5)
  {
    _Block_release(v5);
  }

  (*(**(this + 52) + 64))(*(this + 52));
  if (*(this + 400) == 1)
  {
    v6 = *(this + 51);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    *(this + 400) = 1;
    *(this + 51) = 0;
  }

  v7 = *(this + 60);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(this + 48);
  *(this + 47) = 0;
  *(this + 48) = 0;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 49);
  if (v9)
  {
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v9);
    MEMORY[0x1E12C1730]();
  }

  v10 = *(this + 73);
  if (v10)
  {
    *(this + 74) = v10;
    operator delete(v10);
  }

  v11 = *(this + 70);
  if (v11)
  {
    *(this + 71) = v11;
    operator delete(v11);
  }

  v12 = *(this + 67);
  if (v12)
  {
    *(this + 68) = v12;
    operator delete(v12);
  }

  v13 = *(this + 64);
  if (v13)
  {
    *(this + 65) = v13;
    operator delete(v13);
  }

  v14 = *(this + 53);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = *(this + 48);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  HALS_PlugInObject::~HALS_PlugInObject(v2);
  *this = &unk_1F597A098;
  CACFString::~CACFString((this + 48));

  HALS_Object::~HALS_Object(this);
}

{
  HALS_PlugIn::~HALS_PlugIn(this);

  JUMPOUT(0x1E12C1730);
}

void HALS_PlugIn::_CopyDeviceList(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a1 + 512);
  v3 = *(a1 + 520);
  while (v2 != v3)
  {
    HALS_ObjectMap::RetainObject(*v2, a2);
    v5 = *v2++;
    v6 = v5;
    std::vector<HALS_Device *>::push_back[abi:ne200100](a2, &v6);
  }
}

void HALS_PlugIn::_CopyIODeviceList(void *a1, HALS_Object *a2)
{
  v4 = a1[70];
  v5 = a1[71];
  while (v4 != v5)
  {
    HALS_ObjectMap::RetainObject(*v4, a2);
    v6 = *v4++;
    v10 = v6;
    std::vector<HALS_Device *>::push_back[abi:ne200100](a2, &v10);
  }

  v7 = a1[64];
  v8 = a1[65];
  while (v7 != v8)
  {
    HALS_ObjectMap::RetainObject(*v7, a2);
    v9 = *v7++;
    v10 = v9;
    std::vector<HALS_Device *>::push_back[abi:ne200100](a2, &v10);
  }
}

void HALS_PlugIn::_CopyClockDeviceList(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a1 + 560);
  for (i = *(a1 + 568); v2 != i; ++v2)
  {
    HALS_ObjectMap::RetainObject(*v2, a2);
    v5 = *v2;
    v7 = *(a2 + 1);
    v6 = *(a2 + 2);
    if (v7 >= v6)
    {
      v9 = (v7 - *a2) >> 3;
      if ((v9 + 1) >> 61)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v10 = v6 - *a2;
      v11 = v10 >> 2;
      if (v10 >> 2 <= (v9 + 1))
      {
        v11 = v9 + 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v12);
      }

      v13 = (8 * v9);
      *v13 = v5;
      v8 = 8 * v9 + 8;
      v14 = *(a2 + 1) - *a2;
      v15 = v13 - v14;
      memcpy(v13 - v14, *a2, v14);
      v16 = *a2;
      *a2 = v15;
      *(a2 + 1) = v8;
      *(a2 + 2) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v7 = v5;
      v8 = (v7 + 1);
    }

    *(a2 + 1) = v8;
  }
}

void HALS_PlugIn::_CopyBoxList(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a1 + 584);
  for (i = *(a1 + 592); v2 != i; ++v2)
  {
    HALS_ObjectMap::RetainObject(*v2, a2);
    v5 = *v2;
    v7 = *(a2 + 1);
    v6 = *(a2 + 2);
    if (v7 >= v6)
    {
      v9 = (v7 - *a2) >> 3;
      if ((v9 + 1) >> 61)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v10 = v6 - *a2;
      v11 = v10 >> 2;
      if (v10 >> 2 <= (v9 + 1))
      {
        v11 = v9 + 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v12);
      }

      v13 = (8 * v9);
      *v13 = v5;
      v8 = 8 * v9 + 8;
      v14 = *(a2 + 1) - *a2;
      v15 = v13 - v14;
      memcpy(v13 - v14, *a2, v14);
      v16 = *a2;
      *a2 = v15;
      *(a2 + 1) = v8;
      *(a2 + 2) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v7 = v5;
      v8 = (v7 + 1);
    }

    *(a2 + 1) = v8;
  }
}

void HALS_PlugIn::SetPropertyData(HALS_PlugIn *this, HALS_Client *a2, AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  if (a3->mSelector == 1819173229)
  {
    v12 = *(this + 43);
    v13 = *(v12 + 416);
    v14 = *(v12 + 424);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = *(this + 89);
    if (a8)
    {
      v16 = *(a8 + 60);
    }

    else
    {
      v16 = 0;
    }

    v29 = 0x676C6F626C6E616DLL;
    v30 = 0;
    (*(*v13 + 576))(v13, v15, v16, &v29, 0, 0, a4, a5);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  else
  {
    if (HALS_DeviceManager::HasProperty(this, a2, a3, a8) && HALS_DeviceManager::IsPropertySettable(this, a2, a3))
    {
      HALS_Object::SetPropertyData(this, a2, a3, v21, v22, v23, v24, a8);
    }

    if ((*(*(this + 42) + 24))(this + 336, a3->mSelector))
    {
      v25 = *(this + 43);
      v26 = *(v25 + 416);
      v27 = *(v25 + 424);
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (a8)
      {
        v28 = *(a8 + 60);
      }

      else
      {
        v28 = 0;
      }

      (*(*v26 + 576))(v26, *(this + 89), v28, a3, a6, a7, a4, a5);
      if (v27)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }
    }
  }
}

void sub_1DE229178(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_PlugIn::GetPropertyData(HALS_PlugIn *this, HALS_Client *a2, AudioObjectPropertyAddress *a3, uint64_t a4, unsigned int *a5, _DWORD *a6, uint64_t a7, const __CFString **a8, HALS_Client *a9)
{
  v51 = *MEMORY[0x1E69E9840];
  mSelector = a3->mSelector;
  if (a3->mSelector <= 1920168546)
  {
    if (mSelector == 1668641652)
    {
      v31 = a4 / 0xC;
      if (*(this + 92) < a4 / 0xC)
      {
        v31 = *(this + 92);
      }

      if (v31)
      {
        v32 = 0;
        v33 = 0;
        do
        {
          if (v33 < *(this + 92))
          {
            v34 = &a6[v32];
            v35 = (*(this + 45) + v32 * 4);
            v36 = *v35;
            *(v34 + 2) = *(v35 + 2);
            *v34 = v36;
          }

          ++v33;
          v32 += 3;
        }

        while (3 * v31 != v32);
      }

      v26 = 12 * v31;
    }

    else
    {
      if (mSelector != 1701733411)
      {
        goto LABEL_34;
      }

      NumberEndPoints = HALS_PlugIn::GetNumberEndPoints(this, a9);
      if (a4 >> 2 >= NumberEndPoints)
      {
        v22 = NumberEndPoints;
      }

      else
      {
        v22 = a4 >> 2;
      }

      if (v22)
      {
        for (i = 0; i != v22; ++i)
        {
          v24 = HALS_PlugIn::CopyEndPointByIndex(this, i, a9);
          a6[i] = *(v24 + 4);
          HALS_ObjectMap::ReleaseObject(v24, v25);
        }
      }

      v26 = 4 * v22;
    }

LABEL_33:
    *a5 = v26;
    goto LABEL_51;
  }

  if (mSelector == 1920168547)
  {
    if (a4 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v48 = "HALS_PlugIn.cpp";
        v49 = 1024;
        v50 = 589;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: bad property data size for kAudioDevicePropertyResourceBundle", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 561211770;
    }

    *a6 = HALS_PlugInObject::CopyResourceBundlePath(this + 336, a9);
    v26 = 8;
    goto LABEL_33;
  }

  if (mSelector != 1953653102)
  {
    if (mSelector == 1969841253)
    {
      if (a7 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v48 = "HALS_PlugIn.cpp";
          v49 = 1024;
          v50 = 556;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugIn::GetPropertyData: the qualifier is the wrong size for kAudioTransportManagerPropertyTranslateUIDToEndPoint", buf, 0x12u);
        }

        v43 = __cxa_allocate_exception(0x10uLL);
        *v43 = off_1F5991DD8;
        v43[2] = 1852797029;
      }

      if (!a8)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v48 = "HALS_PlugIn.cpp";
          v49 = 1024;
          v50 = 557;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugIn::GetPropertyData: no qualifier data for kAudioHardwarePropertyDeviceForUID", buf, 0x12u);
        }

        v45 = __cxa_allocate_exception(0x10uLL);
        *v45 = off_1F5991DD8;
        v45[2] = 1852797029;
      }

      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v48 = "HALS_PlugIn.cpp";
          v49 = 1024;
          v50 = 562;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugIn::GetPropertyData: bad property data size for kAudioTransportManagerPropertyTranslateUIDToEndPoint", buf, 0x12u);
        }

        v46 = __cxa_allocate_exception(0x10uLL);
        *v46 = off_1F5991DD8;
        v46[2] = 561211770;
      }

      v18 = HALS_PlugIn::CopyEndPointByUID(this, *a8, a9);
      if (v18)
      {
        v20 = *(v18 + 4);
      }

      else
      {
        v20 = 0;
      }

      *a6 = v20;
      *a5 = 4;
      HALS_ObjectMap::ReleaseObject(v18, v19);
      goto LABEL_51;
    }

LABEL_34:
    if (HALS_DeviceManager::HasProperty(this, a2, a3, a9))
    {
      v37 = *MEMORY[0x1E69E9840];

      HALS_DeviceManager::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
      return;
    }

    if ((*(*(this + 42) + 24))(this + 336, a3->mSelector))
    {
      v38 = *(this + 43);
      v39 = *(v38 + 416);
      v29 = *(v38 + 424);
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (a9)
      {
        v40 = *(a9 + 60);
      }

      else
      {
        v40 = 0;
      }

      (*(*v39 + 568))(v39, *(this + 89), v40, a3, a7, a8, a4, a5, a6);
      goto LABEL_45;
    }

LABEL_51:
    v42 = *MEMORY[0x1E69E9840];
    return;
  }

  v27 = *(this + 43);
  v28 = *(v27 + 416);
  v29 = *(v27 + 424);
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a9)
  {
    v30 = *(a9 + 60);
  }

  else
  {
    v30 = 0;
  }

  (*(*v28 + 568))(v28, *(this + 89), v30, a3, a7, a8, a4, a5, a6);
LABEL_45:
  if (!v29)
  {
    goto LABEL_51;
  }

  v41 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v29);
}

void sub_1DE22987C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_PlugIn::GetPropertyDataSize(HALS_PlugIn *this, HALS_Client *a2, AudioObjectPropertyAddress *a3, uint64_t a4, int *a5, HALS_Client *a6)
{
  mSelector = a3->mSelector;
  if (a3->mSelector <= 1851878763)
  {
    if (mSelector == 1668641652)
    {
      return (12 * *(this + 92));
    }

    if (mSelector == 1701733411)
    {
      return 4 * HALS_PlugIn::GetNumberEndPoints(this, a6);
    }

    v13 = 1819173229;
  }

  else
  {
    if (mSelector > 1953653101)
    {
      if (mSelector == 1953653102 || mSelector == 1969841253)
      {
        return 4;
      }

      goto LABEL_17;
    }

    if (mSelector == 1851878764)
    {
      return 8;
    }

    v13 = 1920168547;
  }

  if (mSelector == v13)
  {
    return 8;
  }

LABEL_17:
  if (!HALS_DeviceManager::HasProperty(this, a2, a3, a6))
  {
    if (!(*(*(this + 42) + 24))(this + 336, a3->mSelector))
    {
      return 0;
    }

    v17 = *(this + 43);
    v18 = *(v17 + 416);
    v19 = *(v17 + 424);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a6)
    {
      v20 = *(a6 + 60);
    }

    else
    {
      v20 = 0;
    }

    v14 = (*(*v18 + 560))(v18, *(this + 89), v20, a3, a4, a5);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    return v14;
  }

  return HALS_DeviceManager::GetPropertyDataSize(this, a2, a3, a4, a5, a6);
}

void sub_1DE229AC0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_PlugIn::IsPropertySettable(HALS_PlugIn *this, HALS_Client *a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  v8 = 0;
  mSelector = a3->mSelector;
  if (a3->mSelector > 1920168546)
  {
    if (mSelector == 1920168547 || mSelector == 1953653102 || mSelector == 1969841253)
    {
      return v8;
    }
  }

  else
  {
    if (mSelector == 1668641652 || mSelector == 1701733411)
    {
      return v8;
    }

    if (mSelector == 1819173229)
    {
      v11 = *(this + 43);
      v12 = *(v11 + 416);
      v13 = *(v11 + 424);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = *(this + 89);
      if (a4)
      {
        v15 = *(a4 + 60);
      }

      else
      {
        v15 = 0;
      }

      v24 = 0x676C6F626C6E616DLL;
      v25 = 0;
      v8 = (*(*v12 + 552))(v12, v14, v15, &v24);
      if (!v13)
      {
        return v8;
      }

      v23 = v13;
      goto LABEL_30;
    }
  }

  if (!HALS_DeviceManager::HasProperty(this, a2, a3, a4))
  {
    if (!(*(*(this + 42) + 24))(this + 336, a3->mSelector))
    {
      return 0;
    }

    v19 = *(this + 43);
    v20 = *(v19 + 416);
    v21 = *(v19 + 424);
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a4)
    {
      v22 = *(a4 + 60);
    }

    else
    {
      v22 = 0;
    }

    v8 = (*(*v20 + 552))(v20, *(this + 89), v22, a3);
    if (!v21)
    {
      return v8;
    }

    v23 = v21;
LABEL_30:
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    return v8;
  }

  return HALS_DeviceManager::IsPropertySettable(this, a2, a3);
}

void sub_1DE229D00(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_PlugIn::HasProperty(HALS_PlugIn *this, HALS_Client *a2, const AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  mSelector = a3->mSelector;
  if (a3->mSelector <= 1920168546)
  {
    if (mSelector == 1668641652)
    {
      return *(this + 92) != 0;
    }

    v8 = 1701733411;
    goto LABEL_7;
  }

  if (mSelector != 1920168547)
  {
    if (mSelector == 1953653102)
    {
      if (*(this + 5) == 1953656941)
      {
        v12 = *(this + 43);
        v13 = *(v12 + 416);
        v14 = *(v12 + 424);
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v15 = *(this + 89);
        if (a4)
        {
          v16 = *(a4 + 60);
        }

        else
        {
          v16 = 0;
        }

        goto LABEL_28;
      }

      return 0;
    }

    v8 = 1969841253;
LABEL_7:
    if (mSelector == v8)
    {
      return *(this + 5) == 1953656941;
    }

    if (HALS_DeviceManager::HasProperty(this, a2, a3, a4))
    {
      return 1;
    }

    if ((*(*(this + 42) + 24))(this + 336, a3->mSelector))
    {
      v17 = *(this + 43);
      v13 = *(v17 + 416);
      v14 = *(v17 + 424);
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *(this + 89);
      if (a4)
      {
        v16 = *(a4 + 60);
      }

      else
      {
        v16 = 0;
      }

LABEL_28:
      v9 = (*(*v13 + 544))(v13, v15, v16, a3);
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      return v9;
    }

    return 0;
  }

  v10 = this + 336;

  return HALS_PlugInObject::HasResourceBundle(v10, a4);
}

void sub_1DE229F40(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_PlugIn::CopyResourceBundle(HALS_PlugIn *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK11HALS_PlugIn18CopyResourceBundleEv_block_invoke;
  v4[3] = &unk_1E8673110;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE22A024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZNK11HALS_PlugIn18CopyResourceBundleEv_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if ((*(v2 + 400) & 1) == 0)
  {
    *(v2 + 400) = 1;
    if (HALS_PlugInObject::HasResourceBundle(v2 + 336, 0))
    {
      v3 = HALS_PlugInObject::CopyResourceBundlePath(v2 + 336, 0);
      v9 = v3;
      v10 = 1;
      if (v3)
      {
        if (CFURLCreateWithFileSystemPath(0, v3, kCFURLPOSIXPathStyle, 1u))
        {
          operator new();
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v12 = "HALS_PlugIn.cpp";
          v13 = 1024;
          v14 = 719;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugIn::_InitializeResourceBundle: Can't create a URL for the given path to the resource bundle", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = 2003329396;
      }

      CACFString::~CACFString(&v9);
    }
  }

  v4 = *(v2 + 408);
  if (v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(v4 + 8);
    v5 = *(*(*(a1 + 32) + 8) + 24);
    v6 = *MEMORY[0x1E69E9840];

    CFRetain(v5);
  }

  else
  {
    v7 = *MEMORY[0x1E69E9840];
  }
}

void sub_1DE22A274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    MEMORY[0x1E12C1730](v11, 0x10A1C4047070A01);
    CACFObject<__CFURL const*>::~CACFObject(&a9);
    CACFString::~CACFString(&a11);
    __cxa_begin_catch(exception_object);
    *(v12 + 408) = 0;
    __cxa_end_catch();
    JUMPOUT(0x1DE22A130);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CACFObject<__CFURL const*>::~CACFObject(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
      *a1 = 0;
    }
  }

  return a1;
}

void CACFString::~CACFString(CACFString *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    if (*this)
    {
      CFRelease(v2);
    }
  }
}

uint64_t HALS_PlugIn::GetMIGDispatchQueue(HALS_PlugIn *this)
{
  return *(this + 49);
}

{
  return *(this + 49);
}

uint64_t HALS_PlugIn::GetCommandGate(HALS_PlugIn *this)
{
  return *(this + 47);
}

{
  return *(this + 47);
}

void HALS_PlugIn::_Deactivate(HALS_PlugIn *this)
{
  *(this + 2) = 0;
  v2 = *(this + 64);
  v3 = *(this + 65);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
        HALS_ObjectMap::ReleaseObject(*v2, v4);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(this + 64);
  }

  *(this + 65) = v2;
  v5 = *(this + 70);
  v6 = *(this + 71);
  if (v5 != v6)
  {
    do
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
        HALS_ObjectMap::ReleaseObject(*v5, v7);
      }

      ++v5;
    }

    while (v5 != v6);
    v5 = *(this + 70);
  }

  *(this + 71) = v5;
  (*(**(this + 52) + 64))(*(this + 52));
  if (*(this + 400) == 1)
  {
    v8 = *(this + 51);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    *(this + 400) = 1;
    *(this + 51) = 0;
  }

  v9 = *(this + 4);
  *&v10.mSelector = 0x676C6F62706C6723;
  v10.mElement = 0;
  HALS_Object::PropertiesChanged(this, v9, 0, 1, &v10);
}

void HALS_PlugIn::Activate(std::runtime_error_vtbl *this)
{
  v39 = *MEMORY[0x1E69E9840];
  __p = 0;
  v23 = 0;
  v24 = 0;
  v34 = 0;
  v2 = (*(this->~runtime_error + 9))(this);
  v27.__vftable = this;
  v27.__imp_.__imp_ = &__p;
  v28 = &v34;
  v3 = atomic_load((v2 + 32));
  if (v3)
  {
    atomic_store(1u, (v2 + 33));
  }

  v4 = *v2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN10applesauce8dispatch2v19sync_implIRZN11HALS_PlugIn31_InitializePlugInAndAndActivateERNSt3__16vectorIjNS4_9allocatorIjEEEEE3__0EEvP16dispatch_queue_sOT_NS4_17integral_constantIbLb1EEE_block_invoke;
  block[3] = &__block_descriptor_tmp_82;
  v36 = &v27;
  dispatch_sync(v4, block);
  if (v34)
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = *v19;
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    else
    {
      v20 = *v19;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LODWORD(block[0]) = 136315650;
      *(block + 4) = "HALS_PlugIn.cpp";
      WORD2(block[1]) = 1024;
      *(&block[1] + 6) = 162;
      WORD1(block[2]) = 2080;
      *(&block[2] + 4) = "theError != kAudioHardwareNoError";
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Device activation failed", block, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v33);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v26, "Device activation failed");
    std::runtime_error::runtime_error(&v27, &v26);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = -1;
    v27.__vftable = &unk_1F5992170;
    v28 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(block, &v27);
    v36 = "void HALS_PlugIn::_InitializePlugInAndAndActivate(std::vector<AudioObjectID> &)";
    v37 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/PlugIn/HALS_PlugIn.cpp";
    v38 = 162;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v25);
  }

  memset(block, 0, sizeof(block));
  v27.__vftable = 0x676C6F62706C6723;
  LODWORD(v27.__imp_.__imp_) = 0;
  CAPropertyAddressList::AppendUniqueItem(block, &v27, v6);
  if (HALS_DeviceManager::GetNumberDevices(this, 0, v7))
  {
    v27.__vftable = 0x676C6F6264657623;
    LODWORD(v27.__imp_.__imp_) = 0;
    CAPropertyAddressList::AppendUniqueItem(block, &v27, v8);
  }

  if (HALS_PlugIn::GetNumberEndPoints(this, 0))
  {
    v27.__vftable = 0x676C6F62656E6423;
    LODWORD(v27.__imp_.__imp_) = 0;
    CAPropertyAddressList::AppendUniqueItem(block, &v27, v9);
  }

  if (HALS_DeviceManager::GetNumberBoxes(this, 0))
  {
    v27.__vftable = 0x676C6F62626F7823;
    LODWORD(v27.__imp_.__imp_) = 0;
    CAPropertyAddressList::AppendUniqueItem(block, &v27, v11);
  }

  if (HALS_DeviceManager::GetNumberClockDevices(this, v10))
  {
    v27.__vftable = 0x676C6F62636C6B23;
    LODWORD(v27.__imp_.__imp_) = 0;
    CAPropertyAddressList::AppendUniqueItem(block, &v27, v12);
  }

  v13 = block[0];
  v14 = -1431655765 * ((block[1] - block[0]) >> 2);
  if (v14)
  {
    HALS_Object::PropertiesChanged(this, LODWORD(this->what), 0, v14, block[0]);
  }

  if (v13)
  {
    operator delete(v13);
  }

  v15 = __p;
  if (v23 != __p)
  {
    v21[0] = 0;
    v21[1] = 0;
    HALS_System::GetInstance(block, 0, v21);
    HALS_System::CheckForDefaultDeviceChanges(block[0], &__p);
    if (block[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](block[1]);
    }

    v15 = __p;
  }

  if (v15)
  {
    v23 = v15;
    operator delete(v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1DE22A9A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, std::runtime_error a24, char a25)
{
  v27 = *(v25 - 104);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CAPropertyAddressList::AppendUniqueItem(CAPropertyAddressList *this, AudioObjectPropertyAddress *a2, const AudioObjectPropertyAddress *a3)
{
  v5 = *this;
  v6 = *(this + 1);
  v7 = *this;
  if (*this != v6)
  {
    while (!CAPropertyAddress::IsCongruentAddress(a2, v7, a3))
    {
      if (++v7 == v6)
      {
        goto LABEL_6;
      }
    }
  }

  if (v7 == v6)
  {
LABEL_6:
    mElement = a2->mElement;
    v8 = *(this + 2);
    if (v6 >= v8)
    {
      v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 2) + 1;
      if (v11 > 0x1555555555555555)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v5) >> 2);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0xAAAAAAAAAAAAAAALL)
      {
        v13 = 0x1555555555555555;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        std::allocator<AudioObjectPropertyAddress>::allocate_at_least[abi:ne200100](v13);
      }

      v14 = 4 * ((v6 - v5) >> 2);
      *v14 = *&a2->mSelector;
      *(v14 + 8) = mElement;
      v10 = v14 + 12;
      v15 = *this;
      v16 = *(this + 1);
      v17 = v14 + *this - v16;
      if (*this != v16)
      {
        v18 = v17;
        do
        {
          v19 = *v15;
          *(v18 + 8) = v15[2];
          *v18 = v19;
          v18 += 12;
          v15 += 3;
        }

        while (v15 != v16);
        v15 = *this;
      }

      *this = v17;
      *(this + 1) = v10;
      *(this + 2) = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      v9 = *&a2->mSelector;
      v6->mElement = a2->mElement;
      *&v6->mSelector = v9;
      v10 = &v6[1];
    }

    *(this + 1) = v10;
  }
}

void ___ZN10applesauce8dispatch2v19sync_implIRZN11HALS_PlugIn31_InitializePlugInAndAndActivateERNSt3__16vectorIjNS4_9allocatorIjEEEEE3__0EEvP16dispatch_queue_sOT_NS4_17integral_constantIbLb1EEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *v1;
  v3 = (*(**(*v1 + 416) + 24))(*(*v1 + 416));
  v4 = **(v2 + 416);
  if (v3)
  {
    (*(v4 + 56))();
  }

  else
  {
    (*(v4 + 48))();
  }

  HALS_Object::Activate(v2, v5);
  (*(*(v2 + 336) + 32))();
  HALS_PlugIn::RebuildDeviceList(&v6, v2);
}

void sub_1DE22AD14(void *a1)
{
  __cxa_begin_catch(a1);
  **(v1 + 16) = 2003329396;

  __cxa_end_catch();
}

void HALS_PlugIn::HALS_PlugIn(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, HALS_Object *a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = HALS_DeviceManager::HALS_DeviceManager(a1, a2, @"temporary", 6, a5);
  LODWORD(v7[11].isa) = v7->data;
  HIDWORD(v7[11].isa) = 1;
  v7[11].info = 0;
  LODWORD(v7[11].data) = 0;
  v7->isa = &unk_1F5960D08;
  v7[10].data = &unk_1F5960E48;
  v7[10].length = v7;
  v7[12].length = 0;
  v7[12].isa = 0;
  v7[12].info = 0;
  v7[11].length = 0;
  LOBYTE(v7[12].data) = 0;
  *&v7[13].isa = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *&v7[18].isa = 0u;
  *&v7[18].data = 0u;
  *&v7[17].isa = 0u;
  *&v7[17].data = 0u;
  *&v7[16].isa = 0u;
  *&v7[16].data = 0u;
  *&v7[15].isa = 0u;
  *&v7[15].data = 0u;
  *&v7[14].isa = 0u;
  *&v7[14].data = 0u;
  *&v7[13].data = 0u;
  HIDWORD(v7[1].info) = 1;
  v8 = (*(*v7[13].isa + 32))(v7[13].isa);
  CACFString::operator=(a1 + 48, v8);
  if (*(a1 + 48))
  {
    *(a1 + 480) = CFStringCreateWithFormat(0, 0, @"Plug-In.%@", *(a1 + 48));
    *v11 = 256;
    CACFString::GetCString(*(a1 + 48), (a1 + 64), v11, v9);
    operator new[]();
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    aBlock = 136315394;
    aBlock_4 = "HALS_PlugIn.cpp";
    v14 = 1024;
    v15 = 249;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugIn::InitializeCommon: all plugins have to have a bundle ID", &aBlock, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = off_1F5991DD8;
  exception[2] = 1852797029;
}

void sub_1DE22B2B8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE22B27CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1DE22B2D0()
{
  MEMORY[0x1E12C1700](v2, 0x1000C8077774924);
  v3 = *(v0 + 73);
  if (v3)
  {
    *(v0 + 74) = v3;
    operator delete(v3);
  }

  v4 = *(v0 + 70);
  if (v4)
  {
    *(v0 + 71) = v4;
    operator delete(v4);
  }

  v5 = *(v0 + 67);
  if (v5)
  {
    *(v0 + 68) = v5;
    operator delete(v5);
  }

  v6 = *(v0 + 64);
  if (v6)
  {
    *(v0 + 65) = v6;
    operator delete(v6);
  }

  v7 = *(v0 + 53);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(v0 + 48);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  HALS_PlugInObject::~HALS_PlugInObject(v1);
  HALS_DeviceManager::~HALS_DeviceManager(v0);
  JUMPOUT(0x1DE22B374);
}

uint64_t HALS_UCPlugInBase::Object_GetClass(HALS_UCPlugInBase *this, uint64_t a2)
{
  v3 = 0x676C6F62636C6173;
  v4 = 0;
  v5 = 0;
  (*(*this + 568))(this, a2, 0, &v3);
  return HIDWORD(v5);
}

uint64_t HALS_UCPlugInBase::Object_GetBaseClass(HALS_UCPlugInBase *this, uint64_t a2)
{
  v3 = 0x676C6F6262636C73;
  v4 = 0;
  v5 = 0;
  (*(*this + 568))(this, a2, 0, &v3);
  return HIDWORD(v5);
}

uint64_t HALS_PlugIn::HostInterface_RequestDeviceConfigurationChange(HALS_PlugIn **this, const AudioServerPlugInHostInterface *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = HALS_PlugIn::CopyDeviceByUCID(this[5], a2);
  if (v9 || (v9 = HALS_PlugIn::CopyEndPointByUCID(this[5], a2)) != 0)
  {
    if ((*(*v9 + 40))(v9))
    {
      *v24 = a3;
      *&v24[8] = a4;
      v24[16] = 1;
      HALS_PlugInDevice::HandlePlugIn_RequestConfigChange(v9, v24, 0);
    }

    else
    {
      v11 = this[5];
      v12 = *(v11 + 52);
      v13 = *(v11 + 53);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v12 + 96))(v12, a2, a3, a4);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }
  }

  else
  {
    v16 = HALS_PlugIn::CopyClockDeviceByUCID(this[5], a2);
    v9 = v16;
    if (!v16)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v24 = 136315394;
        *&v24[4] = "HALS_PlugIn.cpp";
        *&v24[12] = 1024;
        *&v24[14] = 1082;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugIn::HostInterface_RequestDeviceConfigurationChange: can't find a device/endpoint with that ID", v24, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 560227702;
    }

    if ((*(*v16 + 40))(v16))
    {
      v17 = *(v9 + 4);
      v18 = *(v9 + 99);
      v19 = *(*(v9 + 48) + 16);
      *v24 = MEMORY[0x1E69E9820];
      *&v24[8] = 0x40000000;
      *&v24[16] = ___ZN22HALS_PlugInClockDevice32HandlePlugIn_RequestConfigChangeENS_19ConfigChangePayloadEb_block_invoke;
      v25 = &__block_descriptor_tmp_10938;
      v29 = v19;
      v30 = v17;
      v26 = a3;
      v27 = a4;
      v28 = 1;
      v31 = v18;
      AMCP::Utility::Dispatch_Queue::async(v9 + 424, v24);
    }

    else
    {
      v20 = this[5];
      v21 = *(v20 + 52);
      v22 = *(v20 + 53);
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v21 + 96))(v21, a2, a3, a4);
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }
    }
  }

  HALS_ObjectMap::ReleaseObject(v9, v10);
  v14 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE22B7A4(_Unwind_Exception *exception_object, HALS_Object *a2)
{
  if (a2)
  {
    v5 = a2;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    HALS_ObjectMap::ReleaseObject(v2, a2);
    v6 = __cxa_begin_catch(exception_object);
    if (v5 == 2)
    {
      v7 = v6[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE22B5A0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_PlugIn::HostInterface_DeleteFromStorage(HALS_PlugIn *this, const AudioServerPlugInHostInterface *a2, const __CFString *a3)
{
  Setting = HALS_SettingsManager::ReadSetting(*(*(*(this + 5) + 320) + 1776), *(*(this + 5) + 480));
  v11 = Setting;
  v12 = 1;
  if (Setting)
  {
    v6 = CFGetTypeID(Setting);
    if (v6 == CFDictionaryGetTypeID())
    {
      theDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
      v10 = 257;
      CACFDictionary::SetCFMutableDictionaryFromCopy(&theDict, v11);
      v7 = theDict;
      if (HIBYTE(v10) == 1 && theDict)
      {
        CFDictionaryRemoveValue(theDict, a2);
        v7 = theDict;
      }

      HALS_SettingsManager::WriteSetting(*(*(*(this + 5) + 320) + 1776), *(*(this + 5) + 480), v7);
      CACFDictionary::~CACFDictionary(&theDict);
    }

    else
    {
      HALS_SettingsManager::DeleteSetting(*(*(*(this + 5) + 320) + 1776), *(*(this + 5) + 480));
    }
  }

  CACFObject<void const*>::~CACFObject(&v11);
  return 0;
}

void sub_1DE22B984(void *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  CACFObject<void const*>::~CACFObject(va);
  v6 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v7 = v6[2];
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE22B96CLL);
}

CFMutableDictionaryRef CACFDictionary::SetCFMutableDictionaryFromCopy(CACFDictionary *this, CFDictionaryRef theDict)
{
  if (*(this + 8) == 1)
  {
    v4 = *this;
    if (*this)
    {
      CFRelease(v4);
    }
  }

  result = CFDictionaryCreateMutableCopy(0, 0, theDict);
  *this = result;
  *(this + 4) = 257;
  return result;
}

void CACFDictionary::~CACFDictionary(CACFDictionary *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    if (*this)
    {
      CFRelease(v2);
    }
  }
}

uint64_t CACFObject<void const*>::~CACFObject(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
      *a1 = 0;
    }
  }

  return a1;
}

uint64_t HALS_PlugIn::HostInterface_WriteToStorage(HALS_PlugIn *this, const AudioServerPlugInHostInterface *a2, const __CFString *a3, const void *a4)
{
  theDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  v14 = 257;
  Setting = HALS_SettingsManager::ReadSetting(*(*(*(this + 5) + 320) + 1776), *(*(this + 5) + 480));
  v11 = Setting;
  v12 = 1;
  if (Setting)
  {
    v8 = CFGetTypeID(Setting);
    if (v8 == CFDictionaryGetTypeID())
    {
      CACFDictionary::SetCFMutableDictionaryFromCopy(&theDict, v11);
    }

    else
    {
      HALS_SettingsManager::DeleteSetting(*(*(*(this + 5) + 320) + 1776), *(*(this + 5) + 480));
    }
  }

  v9 = theDict;
  if (HIBYTE(v14) == 1 && a3 && theDict)
  {
    CFDictionarySetValue(theDict, a2, a3);
    v9 = theDict;
  }

  HALS_SettingsManager::WriteSetting(*(*(*(this + 5) + 320) + 1776), *(*(this + 5) + 480), v9);
  CACFObject<void const*>::~CACFObject(&v11);
  CACFDictionary::~CACFDictionary(&theDict);
  return 0;
}

void sub_1DE22BBC8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  v12 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v13 = v12[2];
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE22BBB0);
}

__CFString *HALS_PlugIn::HostInterface_CopyFromStorage(HALS_PlugIn *this, const AudioServerPlugInHostInterface *a2, __CFString *a3, const void **a4)
{
  v4 = a3;
  if (a3)
  {
    a3->isa = 0;
    Setting = HALS_SettingsManager::ReadSetting(*(*(*(this + 5) + 320) + 1776), *(*(this + 5) + 480));
    theDict = Setting;
    v14 = 1;
    if (Setting)
    {
      v8 = CFGetTypeID(Setting);
      if (v8 == CFDictionaryGetTypeID())
      {
        v11 = theDict;
        v12 = 0;
        if (theDict)
        {
          Value = CFDictionaryGetValue(theDict, a2);
          v4->isa = Value;
          if (!Value)
          {
            goto LABEL_10;
          }
        }

        else
        {
          Value = v4->isa;
          if (!v4->isa)
          {
LABEL_10:
            CACFDictionary::~CACFDictionary(&v11);
            goto LABEL_11;
          }
        }

        CFRetain(Value);
        goto LABEL_10;
      }

      HALS_SettingsManager::DeleteSetting(*(*(*(this + 5) + 320) + 1776), *(*(this + 5) + 480));
    }

LABEL_11:
    CACFObject<void const*>::~CACFObject(&theDict);
    return 0;
  }

  return v4;
}

void sub_1DE22BCF0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  CACFDictionary::~CACFDictionary(&a9);
  CACFObject<void const*>::~CACFObject(&a11);
  v13 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v14 = v13[2];
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE22BCD8);
}

uint64_t HALS_PlugIn::HostInterface_PropertiesChanged(HALS_PlugIn *this, const AudioServerPlugInHostInterface *a2, unsigned int a3, uint64_t a4, const AudioObjectPropertyAddress *a5)
{
  v37[2] = *MEMORY[0x1E69E9840];
  if (this && (v5 = *(this + 5)) != 0)
  {
    v29 = *(v5 + 16);
    __p = 0;
    v31 = 0;
    v32 = 0;
    std::vector<AudioObjectPropertyAddress>::__init_with_size[abi:ne200100]<AudioObjectPropertyAddress const*,AudioObjectPropertyAddress const*>(&__p, a4, a4 + 12 * a3, a3);
    v7 = __p;
    v8 = v31;
    v9 = __p;
    if (__p != v31)
    {
      v9 = __p;
      while ((AMCP::HAL::is_config_change_property(*v9) & 1) == 0)
      {
        v9 = (v9 + 12);
        if (v9 == v8)
        {
          goto LABEL_23;
        }
      }

      if (v9 != v8)
      {
        for (i = (v9 + 12); i != v8; i = (i + 12))
        {
          if ((AMCP::HAL::is_config_change_property(*i) & 1) == 0)
          {
            v16 = *i;
            *(v9 + 2) = *(i + 2);
            *v9 = v16;
            v9 = (v9 + 12);
          }
        }
      }
    }

    if (v9 != v8)
    {
      v6 = v8;
      v8 = v9;
      v31 = v9;
    }

LABEL_23:
    if (v7 != v8)
    {
      {
LABEL_25:
        v7 = (v7 + 12);
        if (v7 == v8)
        {
          goto LABEL_31;
        }
      }

      while (1)
      {
        v8 = (v8 - 12);
        if (v8 == v7)
        {
          break;
        }

        {
          v17 = *v7;
          *&buf[8] = *(v7 + 2);
          *buf = v17;
          v18 = *v8;
          *(v7 + 2) = *(v8 + 2);
          *v7 = v18;
          v19 = *buf;
          *(v8 + 2) = *&buf[8];
          *v8 = v19;
          goto LABEL_25;
        }
      }
    }

    v8 = v7;
LABEL_31:
    memset(buf, 0, sizeof(buf));
    std::vector<AudioObjectPropertyAddress>::__init_with_size[abi:ne200100]<std::__wrap_iter<AudioObjectPropertyAddress*>,std::__wrap_iter<AudioObjectPropertyAddress*>>(buf, __p, v8, 0xAAAAAAAAAAAAAAABLL * ((v8 - __p) >> 2));
    v20 = *buf;
    v21 = *&buf[8];
    memset(buf, 0, sizeof(buf));
    std::vector<AudioObjectPropertyAddress>::__init_with_size[abi:ne200100]<std::__wrap_iter<AudioObjectPropertyAddress*>,std::__wrap_iter<AudioObjectPropertyAddress*>>(buf, v8, v31, 0xAAAAAAAAAAAAAAABLL * ((v31 - v8) >> 2));
    v23 = *buf;
    v22 = *&buf[8];
    *buf = 0;
    *&buf[16] = 0;
    v34 = 0;
    *&buf[8] = 0;
    std::vector<AudioObjectPropertyAddress>::__init_with_size[abi:ne200100]<AudioObjectPropertyAddress*,AudioObjectPropertyAddress*>(&buf[8], v20, v21, 0xAAAAAAAAAAAAAAABLL * ((v21 - v20) >> 2));
    v35 = 1;
    v37[0] = 0;
    v37[1] = 0;
    v36 = 0;
    std::vector<AudioObjectPropertyAddress>::__init_with_size[abi:ne200100]<AudioObjectPropertyAddress*,AudioObjectPropertyAddress*>(&v36, v23, v22, 0xAAAAAAAAAAAAAAABLL * ((v22 - v23) >> 2));
    for (j = 0; j != 64; j += 32)
    {
      if (*&buf[j + 8] != *&buf[j + 16])
      {
        operator new();
      }
    }

    for (k = 0; k != -8; k -= 4)
    {
      v26 = v37[k - 1];
      if (v26)
      {
        v37[k] = v26;
        operator delete(v26);
      }
    }

    if (v23)
    {
      operator delete(v23);
    }

    if (v20)
    {
      operator delete(v20);
    }

    if (__p)
    {
      operator delete(__p);
    }

    v14 = 0;
  }

  else
  {
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = *v12;
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    else
    {
      v13 = *v12;
    }

    v14 = 560947818;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_PlugIn.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 788;
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_PlugIn::HostInterface_PropertiesChanged: the plugin object is not valid", buf, 0x12u);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_1DE22C33C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, void *__p, uint64_t a27)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE22C2F4);
}

uint64_t std::vector<AudioObjectPropertyAddress>::__init_with_size[abi:ne200100]<AudioObjectPropertyAddress const*,AudioObjectPropertyAddress const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<AudioObjectPropertyAddress>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE22C4B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<AudioObjectPropertyAddress>::__init_with_size[abi:ne200100]<std::__wrap_iter<AudioObjectPropertyAddress*>,std::__wrap_iter<AudioObjectPropertyAddress*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<AudioObjectPropertyAddress>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE22C530(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<HALS_PlugIn::HostInterface_PropertiesChanged(AudioServerPlugInHostInterface const*,unsigned int,unsigned int,AudioObjectPropertyAddress const*)::$_0,std::default_delete<HALS_PlugIn::HostInterface_PropertiesChanged(AudioServerPlugInHostInterface const*,unsigned int,unsigned int,AudioObjectPropertyAddress const*)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    MEMORY[0x1E12C1730](v2, 0x1020C4062D53EE8);
  }

  return a1;
}

uint64_t *applesauce::dispatch::v1::async<HALS_PlugIn::HostInterface_PropertiesChanged(AudioServerPlugInHostInterface const*,unsigned int,unsigned int,AudioObjectPropertyAddress const*)::$_0 &>(dispatch_queue_s *,HALS_PlugIn::HostInterface_PropertiesChanged(AudioServerPlugInHostInterface const*,unsigned int,unsigned int,AudioObjectPropertyAddress const*)::$_0 &)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = a1;
  HALS_PlugIn::HostInterface_PropertiesChanged(AudioServerPlugInHostInterface const*,unsigned int,unsigned int,AudioObjectPropertyAddress const*)::$_0::operator()(a1);
  return std::unique_ptr<HALS_PlugIn::HostInterface_PropertiesChanged(AudioServerPlugInHostInterface const*,unsigned int,unsigned int,AudioObjectPropertyAddress const*)::$_0,std::default_delete<HALS_PlugIn::HostInterface_PropertiesChanged(AudioServerPlugInHostInterface const*,unsigned int,unsigned int,AudioObjectPropertyAddress const*)::$_0>>::~unique_ptr[abi:ne200100](&v2);
}

void sub_1DE22C5E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<HALS_PlugIn::HostInterface_PropertiesChanged(AudioServerPlugInHostInterface const*,unsigned int,unsigned int,AudioObjectPropertyAddress const*)::$_0,std::default_delete<HALS_PlugIn::HostInterface_PropertiesChanged(AudioServerPlugInHostInterface const*,unsigned int,unsigned int,AudioObjectPropertyAddress const*)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void HALS_PlugIn::HostInterface_PropertiesChanged(AudioServerPlugInHostInterface const*,unsigned int,unsigned int,AudioObjectPropertyAddress const*)::$_0::operator()(uint64_t **a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 5));
  v4 = v2;
  if (!v2)
  {
    goto LABEL_48;
  }

  v5 = **a1;
  v6 = -1431655765 * (((*a1)[1] - v5) >> 2);
  v7 = *(a1 + 4);
  if (v7 != 1)
  {
    v9 = HALS_PlugIn::CopyObjectByUCID(v2, v7);
    v10 = v9;
    if (v9)
    {
      v11 = (*(*v9 + 40))(v9);
      if (v11)
      {
        v12 = v10[5];
        v13 = v10[6];
        if (v12 == v13 || v12 == 1633841016)
        {
          v15 = v12 == v13;
          if (v12 == 1633841016)
          {
            v15 = 0;
          }

          if (!v15)
          {
            goto LABEL_63;
          }
        }

        else if (v13 == 1633841016)
        {
LABEL_63:
          (*(*v10 + 240))(v10, v6, v5);
          goto LABEL_47;
        }

        if (v12 <= 1701078389)
        {
          if (v12 == 1633773415)
          {
            goto LABEL_46;
          }

          v16 = 1633969526;
        }

        else
        {
          if (v12 == 1701078390 || v12 == 1701733488)
          {
            goto LABEL_46;
          }

          v16 = 1919182198;
        }

        if (v12 != v16)
        {
          if (v12 == v13)
          {
            if (v12 == 1634956402)
            {
              goto LABEL_63;
            }
          }

          else
          {
            if (v13 <= 1701078389)
            {
              if (v13 == 1633773415)
              {
                goto LABEL_46;
              }

              v32 = 1633969526;
            }

            else
            {
              if (v13 == 1701078390 || v13 == 1919182198)
              {
                goto LABEL_46;
              }

              v32 = 1701733488;
            }

            if (v13 == v32)
            {
              goto LABEL_46;
            }

            if (v12 == v13 || v12 == 1634956402 || v13 == 1634956402)
            {
              goto LABEL_63;
            }
          }

          if (!HALS_Object::IsSubClass(v10[5], v10[6], 1633907820))
          {
            if (HALS_Object::IsSubClass(v12, v13, 1633905771))
            {
              (*(*v10 + 464))(v10, v6, v5);
            }

            goto LABEL_47;
          }

          goto LABEL_63;
        }

LABEL_46:
        (*(*v10 + 1008))(v10, v6, v5);
LABEL_47:
        HALS_ObjectMap::ReleaseObject(v10, v30);
        goto LABEL_48;
      }

      v25 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v25 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v11);
      }

      v27 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v26 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        v28 = *v27;
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      else
      {
        v28 = *v27;
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 136315394;
        v34 = "HALS_PlugIn.cpp";
        v35 = 1024;
        v36 = 853;
        _os_log_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_DEFAULT, "%32s:%-5d HALS_PlugIn::HostInterface_PropertiesChanged: the object is not active yet", &v33, 0x12u);
      }
    }

    else
    {
      v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v21 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
        v33 = 136315394;
        v34 = "HALS_PlugIn.cpp";
        v35 = 1024;
        v36 = 847;
        _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_PlugIn::HostInterface_PropertiesChanged: the object is not valid", &v33, 0x12u);
      }
    }

    HALS_ObjectMap::ReleaseObject(v10, v29);
    goto LABEL_48;
  }

  v8 = (*(*v2 + 40))(v2);
  if (v8)
  {
    (*(*v4 + 296))(v4, v6, v5);
  }

  else
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
    }

    v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = *v19;
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    else
    {
      v20 = *v19;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 136315394;
      v34 = "HALS_PlugIn.cpp";
      v35 = 1024;
      v36 = 835;
      _os_log_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_DEFAULT, "%32s:%-5d HALS_PlugIn::HostInterface_PropertiesChanged: the plug-in is not active yet", &v33, 0x12u);
    }
  }

LABEL_48:
  HALS_ObjectMap::ReleaseObject(v4, v3);
  v31 = *MEMORY[0x1E69E9840];
}

void sub_1DE22CBAC(_Unwind_Exception *exception_object, HALS_Object *a2)
{
  if (a2)
  {
    HALS_ObjectMap::ReleaseObject(v2, a2);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE22C9FCLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_Object::IsSubClass(HALS_Object *this, HALB_Info *a2, int a3)
{
  v5 = this;
  LODWORD(result) = HALB_Info::IsSubClass(this, a3);
  v7 = result;
  if (v5 == a2)
  {
    result = result;
  }

  else
  {
    result = 1;
  }

  if (v5 != a2 && (v7 & 1) == 0)
  {

    return HALB_Info::IsSubClass(a2, a3);
  }

  return result;
}

void std::__shared_ptr_emplace<std::vector<AudioObjectPropertyAddress>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<std::vector<AudioObjectPropertyAddress>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F596A0B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t anonymous namespace::ShouldDispatchSynchronously(_anonymous_namespace_ *this, const AudioObjectPropertyAddress *a2)
{
  v2 = *this;
  result = 1;
  if (v2 > 1684370978)
  {
    v4 = v2 == 1684370979;
    v5 = 1701733411;
  }

  else
  {
    v4 = v2 == 1651472419;
    v5 = 1668049699;
  }

  if (!v4 && v2 != v5)
  {
    return 0;
  }

  return result;
}

uint64_t ___ZN11HALS_PlugIn18InitializeHostInfoEv_block_invoke(uint64_t a1, const HALS_Object *a2, unsigned int a3, int *a4, unsigned int a5, int *a6)
{
  v10 = *(a1 + 32);
  if (HALS_ObjectMap::IsObjectMapped(v10, a2))
  {
    if (a5)
    {
      v11 = a5;
      do
      {
        v12 = *a6++;
        v14 = HALS_PlugIn::CopyDeviceByUCID(v10, v12);
        if (v14)
        {
          HALS_System::DeviceDied(*(v10 + 320), v14);
          (*(*v14 + 8))(v14);
          HALS_PlugIn::RemoveDevice(v10, v14);
        }

        HALS_ObjectMap::ReleaseObject(v14, v13);
        --v11;
      }

      while (v11);
    }

    memset(__p, 0, sizeof(__p));
    if (a3)
    {
      v15 = a3;
      do
      {
        v17 = HALS_PlugIn::CopyDeviceByUCID(v10, *a4);
        if (!v17)
        {
          operator new();
        }

        HALS_ObjectMap::ReleaseObject(v17, v16);
        ++a4;
        --v15;
      }

      while (v15);
    }

    v18 = *(v10 + 16);
    *&v21.mSelector = 0x676C6F6264657623;
    v21.mElement = 0;
    HALS_Object::PropertiesChanged(v10, v18, 0, 1, &v21);
    HALS_System::CheckForDefaultDeviceChanges(*(v10 + 320), __p);
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

void sub_1DE22D020(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  v12 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v13 = v12[2];
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE22D000);
}

void sub_1DE22D08C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE22CFFCLL);
}

uint64_t ___ZN11HALS_PlugIn18InitializeHostInfoEv_block_invoke_2(uint64_t a1, const HALS_Object *a2, int a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  if (HALS_ObjectMap::IsObjectMapped(v8, a2))
  {
    v9 = HALS_PlugIn::CopyObjectByUCID(v8, a3);
    v11 = v9;
    if (v9)
    {
      v12 = *(v9 + 5);
      if (v12 <= 1701078389)
      {
        v13 = v12 == 1633773415;
        v14 = 1633969526;
      }

      else
      {
        v13 = v12 == 1701078390 || v12 == 1701733488;
        v14 = 1919182198;
      }

      if (!v13 && v12 != v14)
      {
        v17 = *(v9 + 6);
        if (v12 == v17)
        {
          if (v12 == 1634956402)
          {
LABEL_19:
            (*(*v9 + 240))(v9, a4, a5);
            goto LABEL_15;
          }

          if (!HALB_Info::IsSubClass(*(v9 + 5), 1633907820) && v12 == v17)
          {
            goto LABEL_15;
          }

LABEL_26:
          (*(*v11 + 240))(v11, a4, a5);
          goto LABEL_15;
        }

        if (v17 <= 1701078389)
        {
          v18 = v17 == 1633773415;
          v19 = 1633969526;
        }

        else
        {
          v18 = v17 == 1701078390 || v17 == 1919182198;
          v19 = 1701733488;
        }

        if (!v18 && v17 != v19)
        {
          if (v12 == v17 || v12 == 1634956402 || v17 == 1634956402)
          {
            goto LABEL_19;
          }

          IsSubClass = HALB_Info::IsSubClass(*(v9 + 5), 1633907820);
          if (v12 != v17 && !IsSubClass && !HALB_Info::IsSubClass(v17, 1633907820))
          {
            goto LABEL_15;
          }

          goto LABEL_26;
        }
      }

      (*(*v9 + 1008))(v9, a4, a5);
    }

LABEL_15:
    HALS_ObjectMap::ReleaseObject(v11, v10);
  }

  return 0;
}

void sub_1DE22D2E8(void *a1, HALS_Object *a2)
{
  v3 = a2;
  HALS_ObjectMap::ReleaseObject(v2, a2);
  v5 = __cxa_begin_catch(a1);
  if (v3 == 2)
  {
    v6 = v5[2];
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE22D180);
}

void sub_1DE22D33C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE22D17CLL);
}

uint64_t ___ZN11HALS_PlugIn18InitializeHostInfoEv_block_invoke_3(uint64_t a1, const HALS_Object *a2, int a3, unsigned int a4, uint64_t a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  if (HALS_ObjectMap::IsObjectMapped(v8, a2))
  {
    v9 = HALS_PlugIn::CopyDeviceByUCID(v8, a3);
    v10 = v9;
    if (!v9)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v15 = 136315394;
        *&v15[4] = "HALS_PlugIn.cpp";
        *&v15[12] = 1024;
        *&v15[14] = 1233;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugIn::HostInfo_RequestDeviceConfigChange: no device with the given UC ID", v15, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 560947818;
    }

    *v15 = a4;
    *&v15[8] = a5;
    v15[16] = 1;
    HALS_PlugInDevice::HandlePlugIn_RequestConfigChange(v9, v15, 0);
    HALS_ObjectMap::ReleaseObject(v10, v11);
  }

  v12 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE22D4B4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE22D4CC(void *a1, HALS_Object *a2)
{
  if (a2)
  {
    v3 = a2;
    HALS_ObjectMap::ReleaseObject(0, a2);
    v4 = __cxa_begin_catch(a1);
    if (v3 == 2)
    {
      v5 = v4[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE22D3CCLL);
  }

  JUMPOUT(0x1DE22D4BCLL);
}

void sub_1DE22D51C(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE22D3C8);
  }

  JUMPOUT(0x1DE22D4BCLL);
}

uint64_t CACFString::operator=(uint64_t a1, CFTypeRef cf)
{
  v3 = *a1;
  if (v3 == cf)
  {
    v4 = v3;
  }

  else
  {
    v4 = cf;
    if (v3 && (*(a1 + 8) & 1) != 0)
    {
      CFRelease(v3);
    }

    *a1 = v4;
  }

  *(a1 + 8) = 1;
  if (v4)
  {
    CFRetain(v4);
  }

  return a1;
}

void ___ZN11HALS_PlugIn25RemoveAllDevicesAndNotifyEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v39 = 0;
  v40 = &v39;
  v41 = 0x4002000000;
  v42 = __Block_byref_object_copy_;
  v43 = __Block_byref_object_dispose_;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v2 = (*(*v1 + 7))(v1);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 0x40000000;
  v38[2] = ___ZN11HALS_PlugIn17_RemoveAllDevicesEv_block_invoke;
  v38[3] = &unk_1E86731C8;
  v38[4] = &v39;
  v38[5] = v1;
  HALB_CommandGate::ExecuteCommand(v2, v38);
  v3 = v40[5];
  v4 = v40[6];
  while (v3 != v4)
  {
    v5 = *v3;
    if (*v3)
    {
      HALS_System::DeviceDied(v1[40], *v3);
      (*(*v5 + 464))(v5);
      (*(*v5 + 8))(v5);
      HALS_PlugIn::RemoveDevice(v1, v5);
    }

    ++v3;
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  HALS_DeviceManager::CopyClockDeviceList(v1, &v35);
  v6 = v35;
  v7 = v36;
  while (v6 != v7)
  {
    v8 = *v6;
    v9 = v1[40];
    v10 = *(*v6 + 4);
    v11 = *(*v6 + 7);
    v12 = (*(**v6 + 208))(*v6);
    HALS_System::ClockDeviceDied(v9, v10, v11, v12);
    (*(*v8 + 8))(v8);
    HALS_PlugIn::RemoveClockDevice(v1, v8);
    ++v6;
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  HALS_DeviceManager::CopyBoxList(v1, &v32, 0);
  v13 = v32;
  for (i = v33; v13 != i; ++v13)
  {
    v15 = *v13;
    (*(**v13 + 8))(*v13);
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 0x40000000;
    v47[2] = ___ZN11HALS_PlugIn9RemoveBoxEP14HALS_PlugInBox_block_invoke;
    v47[3] = &__block_descriptor_tmp_35;
    v47[4] = v1;
    v47[5] = v15;
    v16 = (*(*v1 + 8))(v1);
    HALB_CommandGate::ExecuteCommand(v16, v47);
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x4002000000;
  v29 = __Block_byref_object_copy__22;
  v30 = __Block_byref_object_dispose__23;
  memset(v31, 0, sizeof(v31));
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 0x40000000;
  v25[2] = ___ZN11HALS_PlugIn17_RemoveAllDevicesEv_block_invoke_24;
  v25[3] = &unk_1E86731F0;
  v25[4] = &v26;
  v25[5] = v1;
  v17 = (*(*v1 + 8))(v1);
  HALB_CommandGate::ExecuteCommand(v17, v25);
  v18 = v27[5];
  v19 = v27[6];
  while (v18 != v19)
  {
    v20 = *v18;
    (*(**v18 + 8))(*v18);
    HALS_PlugIn::RemoveEndPoint(v1, v20);
    ++v18;
  }

  _Block_object_dispose(&v26, 8);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(v31, v21);
  HALS_DeviceManager::BasicBoxList::~BasicBoxList(&v32, v22);
  HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(&v35, v23);
  _Block_object_dispose(&v39, 8);
  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  v24 = *(v1 + 4);
  v39 = 0x676C6F6264657623;
  LODWORD(v40) = 0;
  HALS_Object::PropertiesChanged(v1, v24, 0, 1, &v39);
  HALS_System::CheckForDefaultDeviceChanges(v1[40]);
}

void sub_1DE22DA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, HALS_ObjectMap **a23, uint64_t a24, uint64_t a25, HALS_ObjectMap **a26)
{
  _Block_object_dispose(&a15, 8);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList((v26 + 40), v29);
  HALS_DeviceManager::BasicBoxList::~BasicBoxList(&a23, v30);
  HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(&a26, v31);
  _Block_object_dispose((v27 - 192), 8);
  v32 = *(v27 - 152);
  if (v32)
  {
    *(v27 - 144) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy_(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose_(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void *___ZN11HALS_PlugIn17_RemoveAllDevicesEv_block_invoke(void *result)
{
  v1 = result[5];
  v2 = *(result[4] + 8);
  if (v2 + 40 != v1 + 512)
  {
    v3 = *(v1 + 512);
    v4 = *(v1 + 520);
    v5 = v4 - v3;
    v6 = *(v2 + 56);
    v7 = *(v2 + 40);
    if (v6 - v7 < (v4 - v3))
    {
      v8 = v5 >> 3;
      if (v7)
      {
        *(v2 + 48) = v7;
        operator delete(v7);
        v6 = 0;
        *(v2 + 40) = 0;
        *(v2 + 48) = 0;
        *(v2 + 56) = 0;
      }

      if (!(v8 >> 61))
      {
        v9 = v6 >> 2;
        if (v6 >> 2 <= v8)
        {
          v9 = v5 >> 3;
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
          std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v10);
        }
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v11 = *(v2 + 48);
    v12 = v11 - v7;
    if (v11 - v7 >= v5)
    {
      if (v4 != v3)
      {
        result = memmove(v7, v3, v4 - v3);
      }

      v15 = &v7[v5];
    }

    else
    {
      if (v11 != v7)
      {
        result = memmove(*(v2 + 40), v3, v11 - v7);
        v11 = *(v2 + 48);
      }

      v13 = &v3[v12];
      v14 = v4 - &v3[v12];
      if (v14)
      {
        result = memmove(v11, v13, v14);
      }

      v15 = &v11[v14];
    }

    *(v2 + 48) = v15;
  }

  return result;
}

void sub_1DE22DC50(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZN11HALS_PlugIn9RemoveBoxEP14HALS_PlugInBox_block_invoke(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 584);
  v4 = *(v2 + 592);
  if (v3 != v4)
  {
    while (*v3 != *(a1 + 40))
    {
      if (++v3 == v4)
      {
        return;
      }
    }
  }

  if (v3 != v4)
  {
    HALS_ObjectMap::ReleaseObject(*v3, a2);
    v5 = *(v2 + 592);
    v6 = v5 - (v3 + 1);
    if (v5 != v3 + 1)
    {
      memmove(v3, v3 + 1, v5 - (v3 + 1));
    }

    *(v2 + 592) = v3 + v6;
  }
}

void asbd_to_dictionary(const CA::StreamDescription *a1, uint64_t *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  applesauce::CF::TypeRef::TypeRef(v16, "SampleRate");
  valuePtr = *a2;
  if (!CFNumberCreate(0, kCFNumberDoubleType, &valuePtr))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::TypeRef::TypeRef(&v18, "FormatID");
  LODWORD(valuePtr) = *(a2 + 2);
  if (!CFNumberCreate(0, kCFNumberIntType, &valuePtr))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v9, "Could not construct");
    __cxa_throw(v9, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::TypeRef::TypeRef(&v20, "FormatFlags");
  LODWORD(valuePtr) = *(a2 + 3);
  if (!CFNumberCreate(0, kCFNumberIntType, &valuePtr))
  {
    v10 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v10, "Could not construct");
    __cxa_throw(v10, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[15],unsigned int const&>(&v22, "BytesPerPacket", a2 + 4);
  applesauce::CF::TypeRef::TypeRef(&v23, "FramesPerPacket");
  LODWORD(valuePtr) = *(a2 + 5);
  if (!CFNumberCreate(0, kCFNumberIntType, &valuePtr))
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "Could not construct");
    __cxa_throw(v11, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::TypeRef::TypeRef(&v25, "BytesPerFrame");
  LODWORD(valuePtr) = *(a2 + 6);
  if (!CFNumberCreate(0, kCFNumberIntType, &valuePtr))
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v12, "Could not construct");
    __cxa_throw(v12, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::TypeRef::TypeRef(&v27, "ChannelsPerFrame");
  LODWORD(valuePtr) = *(a2 + 7);
  if (!CFNumberCreate(0, kCFNumberIntType, &valuePtr))
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "Could not construct");
    __cxa_throw(v13, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[15],unsigned int const&>(v29, "BitsPerChannel", a2 + 8);
  v14[0] = v16;
  v14[1] = 8;
  v4 = 0;
  *a1 = applesauce::CF::details::make_CFDictionaryRef(v14);
  do
  {
    v5 = *&v29[v4 + 8];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *&v29[v4];
    if (v6)
    {
      CFRelease(v6);
    }

    v4 -= 16;
  }

  while (v4 != -128);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1DE22E088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef((v13 + 104));
  applesauce::CF::TypeRef::~TypeRef(v12);
  do
  {
    v12 -= 2;
    applesauce::CF::TypeRefPair::~TypeRefPair(v12);
  }

  while (v12 != &a12);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[15],unsigned int const&>(applesauce::CF::TypeRef *a1, char *a2, int *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return a1;
}

void sub_1DE22E268(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef(uint64_t a1)
{
  v2 = *(a1 + 8);
  keys = 0;
  v32 = 0;
  v33 = 0;
  std::vector<void const*>::reserve(&keys, v2);
  values = 0;
  v29 = 0;
  v30 = 0;
  std::vector<void const*>::reserve(&values, v2);
  v3 = *(a1 + 8);
  v4 = keys;
  v5 = values;
  if (v3)
  {
    v6 = *a1;
    v26 = v2;
    v27 = *a1 + 16 * v3;
    v7 = v32;
    v8 = v33;
    v10 = v29;
    v9 = v30;
    do
    {
      v11 = *v6;
      if (v7 >= v8)
      {
        v12 = v7 - v4;
        v13 = (v7 - v4) >> 3;
        v14 = v13 + 1;
        if ((v13 + 1) >> 61)
        {
          keys = v4;
          values = v5;
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        if ((v8 - v4) >> 2 > v14)
        {
          v14 = (v8 - v4) >> 2;
        }

        if (v8 - v4 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](v15);
        }

        v16 = (8 * v13);
        v8 = 0;
        *v16 = v11;
        v7 = (v16 + 1);
        memcpy(0, v4, v12);
        if (v4)
        {
          operator delete(v4);
        }

        v4 = 0;
      }

      else
      {
        *v7 = v11;
        v7 += 8;
      }

      v17 = v6[1];
      if (v10 >= v9)
      {
        v18 = v10 - v5;
        v19 = (v10 - v5) >> 3;
        v20 = v19 + 1;
        if ((v19 + 1) >> 61)
        {
          keys = v4;
          values = v5;
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        if ((v9 - v5) >> 2 > v20)
        {
          v20 = (v9 - v5) >> 2;
        }

        if (v9 - v5 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](v21);
        }

        v22 = (8 * v19);
        v9 = 0;
        *v22 = v17;
        v10 = (v22 + 1);
        memcpy(0, v5, v18);
        if (v5)
        {
          operator delete(v5);
        }

        v5 = 0;
      }

      else
      {
        *v10 = v17;
        v10 += 8;
      }

      v6 += 2;
    }

    while (v6 != v27);
    v32 = v7;
    v33 = v8;
    v30 = v9;
    keys = v4;
    values = v5;
    v29 = v10;
    v2 = v26;
  }

  v23 = CFDictionaryCreate(0, v4, v5, v2, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  if (!v23)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (values)
  {
    operator delete(values);
  }

  if (keys)
  {
    operator delete(keys);
  }

  return v23;
}

void sub_1DE22E510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14)
{
  __cxa_free_exception(v14);
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

void applesauce::CF::TypeRefPair::~TypeRefPair(applesauce::CF::TypeRefPair *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

void *std::vector<void const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::allocator<void const*>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

applesauce::CF::TypeRef *applesauce::CF::TypeRef::TypeRef(applesauce::CF::TypeRef *this, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  if ((v9 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v4 = v9;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = CFStringCreateWithBytes(0, v3, v4, 0x8000100u, 0);
  *this = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return this;
}

void sub_1DE22E71C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void applesauce::CF::TypeRef::~TypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t dictionary_to_asbd(const applesauce::CF::DictionaryRef *a1, const __CFDictionary **a2)
{
  *(a1 + 4) = 0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  v2 = *a2;
  if (!*a2)
  {
    goto LABEL_63;
  }

  v5 = CFStringCreateWithBytes(0, "SampleRate", 10, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  Value = CFDictionaryGetValue(v2, v5);
  CFRelease(cf);
  if (Value)
  {
    v7 = COERCE_DOUBLE(applesauce::CF::convert_as<double,0>(Value));
    if ((v8 & 1) == 0)
    {
      v7 = 0.0;
    }
  }

  else
  {
    v7 = 0.0;
  }

  *a1 = v7;
  if (!*a2)
  {
    goto LABEL_63;
  }

  v9 = applesauce::CF::details::at_key<char const(&)[9]>(*a2, "FormatID");
  if (v9)
  {
    v9 = applesauce::CF::convert_as<unsigned int,0>(v9);
  }

  v10 = (v9 & 0x100000000) != 0 ? v9 : 0;
  *(a1 + 2) = v10;
  if (!*a2)
  {
    goto LABEL_63;
  }

  v11 = applesauce::CF::details::at_key<char const(&)[12]>(*a2, "FormatFlags");
  if (v11)
  {
    v11 = applesauce::CF::convert_as<unsigned int,0>(v11);
  }

  v12 = (v11 & 0x100000000) != 0 ? v11 : 0;
  *(a1 + 3) = v12;
  if (!*a2)
  {
    goto LABEL_63;
  }

  v13 = applesauce::CF::details::find_at_key_or_optional<unsigned int,char const(&)[15]>(*a2, "BytesPerPacket");
  v14 = (v13 & 0x100000000) != 0 ? v13 : 0;
  *(a1 + 4) = v14;
  v15 = *a2;
  if (!*a2)
  {
    goto LABEL_63;
  }

  v16 = CFStringCreateWithBytes(0, "FramesPerPacket", 15, 0x8000100u, 0);
  cfa = v16;
  if (!v16)
  {
    v20 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v20, "Could not construct");
    __cxa_throw(v20, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v17 = CFDictionaryGetValue(v15, v16);
  CFRelease(cfa);
  v18 = v17 ? applesauce::CF::convert_as<unsigned int,0>(v17) : 0;
  v21 = (v18 & 0x100000000) != 0 ? v18 : 0;
  *(a1 + 5) = v21;
  v22 = *a2;
  if (!*a2)
  {
    goto LABEL_63;
  }

  v23 = CFStringCreateWithBytes(0, "BytesPerFrame", 13, 0x8000100u, 0);
  cfb = v23;
  if (!v23)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v26, "Could not construct");
    __cxa_throw(v26, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v24 = CFDictionaryGetValue(v22, v23);
  CFRelease(cfb);
  v25 = v24 ? applesauce::CF::convert_as<unsigned int,0>(v24) : 0;
  v27 = (v25 & 0x100000000) != 0 ? v25 : 0;
  *(a1 + 6) = v27;
  v28 = *a2;
  if (!*a2)
  {
    goto LABEL_63;
  }

  v29 = CFStringCreateWithBytes(0, "ChannelsPerFrame", 16, 0x8000100u, 0);
  cfc = v29;
  if (!v29)
  {
    v32 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v32, "Could not construct");
    __cxa_throw(v32, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v30 = CFDictionaryGetValue(v28, v29);
  CFRelease(cfc);
  v31 = v30 ? applesauce::CF::convert_as<unsigned int,0>(v30) : 0;
  v33 = (v31 & 0x100000000) != 0 ? v31 : 0;
  *(a1 + 7) = v33;
  if (!*a2)
  {
LABEL_63:
    v36 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(v36);
    __cxa_throw(v36, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  result = applesauce::CF::details::find_at_key_or_optional<unsigned int,char const(&)[15]>(*a2, "BitsPerChannel");
  if ((result & 0x100000000) != 0)
  {
    v35 = result;
  }

  else
  {
    v35 = 0;
  }

  *(a1 + 8) = v35;
  return result;
}

void sub_1DE22ED20(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE22E85CLL);
}

uint64_t applesauce::CF::details::find_at_key_or_optional<unsigned int,char const(&)[15]>(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  Value = CFDictionaryGetValue(a1, v5);
  CFRelease(cf);
  if (!Value)
  {
    return 0;
  }

  return applesauce::CF::convert_as<unsigned int,0>(Value);
}

uint64_t applesauce::CF::convert_as<unsigned int,0>(const __CFNumber *a1)
{
  if (a1)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a1))
    {
      switch(CFNumberGetType(a1))
      {
        case kCFNumberSInt8Type:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(a1, kCFNumberSInt8Type, &valuePtr);
          goto LABEL_28;
        case kCFNumberSInt16Type:
          LOWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
          goto LABEL_21;
        case kCFNumberSInt32Type:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
          goto LABEL_36;
        case kCFNumberSInt64Type:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
          goto LABEL_36;
        case kCFNumberFloat32Type:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
          goto LABEL_13;
        case kCFNumberFloat64Type:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
          goto LABEL_25;
        case kCFNumberCharType:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
LABEL_28:
          LOBYTE(v11) = LOBYTE(valuePtr);
          if (!Value)
          {
            LOBYTE(v11) = 0;
          }

          v12 = SLOBYTE(valuePtr) < 0 && Value != 0;
          v13.i64[0] = Value != 0;
          v13.i64[1] = v12 << 63 >> 63;
          break;
        case kCFNumberShortType:
          LOWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
LABEL_21:
          if (v10)
          {
            v11 = SLOWORD(valuePtr) & 0xFFFFFFFFLL | 0x100000000;
          }

          else
          {
            v11 = 0;
          }

          goto LABEL_39;
        case kCFNumberIntType:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
          goto LABEL_36;
        case kCFNumberLongType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
          goto LABEL_36;
        case kCFNumberLongLongType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
          goto LABEL_36;
        case kCFNumberFloatType:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
LABEL_13:
          v9 = *&valuePtr;
          goto LABEL_37;
        case kCFNumberDoubleType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
          goto LABEL_25;
        case kCFNumberCFIndexType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
          goto LABEL_36;
        case kCFNumberNSIntegerType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_36:
          v9 = LODWORD(valuePtr);
          goto LABEL_37;
        case kCFNumberCGFloatType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberCGFloatType, &valuePtr);
LABEL_25:
          v9 = valuePtr;
LABEL_37:
          v11 = v9 | 0x100000000;
          if (!v8)
          {
            v11 = 0;
          }

LABEL_39:
          v13 = vshlq_u64(vdupq_n_s64(v11), xmmword_1DE757E40);
          break;
        default:
          LOBYTE(v11) = 0;
          v13 = 0uLL;
          break;
      }

      v14 = vandq_s8(vshlq_u64(v13, xmmword_1DE757E50), xmmword_1DE757E60);
      v4 = v14.i64[0] | v11 | v14.i64[1];
    }

    else
    {
      v5 = CFBooleanGetTypeID();
      if (v5 == CFGetTypeID(a1))
      {
        v6 = CFBooleanGetValue(a1);
        v7 = 0x100000000;
      }

      else
      {
        v6 = 0;
        v7 = 0;
      }

      v4 = v7 | v6;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 0xFFFFFFFFFFLL;
}

const void *applesauce::CF::details::at_key<char const(&)[12]>(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  Value = CFDictionaryGetValue(a1, v5);
  CFRelease(cf);
  return Value;
}

void sub_1DE22F218(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE22F1C8);
}

const void *applesauce::CF::details::at_key<char const(&)[9]>(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  Value = CFDictionaryGetValue(a1, v5);
  CFRelease(cf);
  return Value;
}

void sub_1DE22F31C(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE22F2CCLL);
}

unint64_t applesauce::CF::convert_as<double,0>(const __CFNumber *a1)
{
  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    switch(CFNumberGetType(a1))
    {
      case kCFNumberSInt8Type:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt8Type, &valuePtr);
        goto LABEL_23;
      case kCFNumberSInt16Type:
        LOWORD(valuePtr) = 0;
        v12 = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
        goto LABEL_18;
      case kCFNumberSInt32Type:
        LODWORD(valuePtr) = 0;
        v11 = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_27;
      case kCFNumberSInt64Type:
        valuePtr = 0;
        v6 = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
        goto LABEL_25;
      case kCFNumberFloat32Type:
        LODWORD(valuePtr) = 0;
        v7 = CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
        goto LABEL_10;
      case kCFNumberFloat64Type:
        valuePtr = 0;
        v10 = CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
        goto LABEL_20;
      case kCFNumberCharType:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
LABEL_23:
        v8 = Value == 0;
        v13 = valuePtr;
        goto LABEL_28;
      case kCFNumberShortType:
        LOWORD(valuePtr) = 0;
        v12 = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
LABEL_18:
        v8 = v12 == 0;
        v13 = valuePtr;
        goto LABEL_28;
      case kCFNumberIntType:
        LODWORD(valuePtr) = 0;
        v11 = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
LABEL_27:
        v8 = v11 == 0;
        v13 = valuePtr;
LABEL_28:
        v9 = v13;
        goto LABEL_29;
      case kCFNumberLongType:
        valuePtr = 0;
        v6 = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
        goto LABEL_25;
      case kCFNumberLongLongType:
        valuePtr = 0;
        v6 = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
        goto LABEL_25;
      case kCFNumberFloatType:
        LODWORD(valuePtr) = 0;
        v7 = CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
LABEL_10:
        v8 = v7 == 0;
        v9 = *&valuePtr;
        goto LABEL_29;
      case kCFNumberDoubleType:
        valuePtr = 0;
        v10 = CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
        goto LABEL_20;
      case kCFNumberCFIndexType:
        valuePtr = 0;
        v6 = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
        goto LABEL_25;
      case kCFNumberNSIntegerType:
        valuePtr = 0;
        v6 = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_25:
        v8 = v6 == 0;
        v9 = valuePtr;
LABEL_29:
        v14 = v9;
        goto LABEL_30;
      case kCFNumberCGFloatType:
        valuePtr = 0;
        v10 = CFNumberGetValue(a1, kCFNumberCGFloatType, &valuePtr);
LABEL_20:
        v8 = v10 == 0;
        v14 = *&valuePtr;
LABEL_30:
        if (v8)
        {
          v14 = 0.0;
        }

        v15 = *&v14 & 0xFFFFFFFFFFFFFF00;
        break;
      default:
        v15 = 0;
        LOBYTE(v14) = 0;
        break;
    }

    return LOBYTE(v14) | v15;
  }

  else
  {
    v4 = CFBooleanGetTypeID();
    if (v4 == CFGetTypeID(a1))
    {
      *&result = CFBooleanGetValue(a1);
    }

    else
    {
      *&result = 0.0;
    }
  }

  return result;
}

void get_temporary_folder(std::string *a1)
{
  v2 = "/Library/Preferences/Audio/";
  if (access("/Library/Preferences/Audio/", 6))
  {
    v3 = getenv("TMPDIR");
    if (v3)
    {
      v2 = v3;
    }

    else
    {
      v2 = "/tmp/";
    }
  }

  std::string::basic_string[abi:ne200100]<0>(a1, v2);
  size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
    if (!size)
    {
      return;
    }

    v5 = a1->__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&a1->__r_.__value_.__s + 23))
    {
      return;
    }

    v5 = a1;
  }

  if (v5->__r_.__value_.__s.__data_[size - 1] != 47)
  {
    std::string::push_back(a1, 47);
  }
}

void sub_1DE22F6B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void get_audio_capture_folder(uint64_t a1)
{
  get_temporary_folder(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (access(p_p, 6))
  {
    v3 = 1;
  }

  else
  {
    get_temporary_folder(&v10);
    v4 = std::string::append(&v10, "AudioCapture/", 0xDuLL);
    v11 = *v4;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v5 = SHIBYTE(v11.__r_.__value_.__r.__words[2]);
    v6 = v11.__r_.__value_.__r.__words[0];
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v11;
    }

    else
    {
      v7 = v11.__r_.__value_.__r.__words[0];
    }

    v3 = access(v7, 6) != 0;
    if (v5 < 0)
    {
      operator delete(v6);
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v3)
    {
      goto LABEL_15;
    }
  }

  else if (v3)
  {
LABEL_15:
    std::string::basic_string[abi:ne200100]<0>(a1, "/private/var/mobile/tmp/com.apple.audiomxd/AudioCapture/HAL/");
    return;
  }

  get_temporary_folder(&__p);
  v8 = std::string::append(&__p, "AudioCapture/HAL/", 0x11uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  *(a1 + 16) = *(&v8->__r_.__value_.__l + 2);
  *a1 = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1DE22F818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::File_Capture_Settings::instance(AMCP::Graph::File_Capture_Settings *this)
{
  {
    byte_1ECDAB0CC = 0;
    AMCP::Graph::File_Capture_Settings::instance(void)::s_instance = 0;
  }
}

void AMCP::Utility::Settings_Storage::at_or<applesauce::CF::BooleanRef,applesauce::CF::StringRef const&>(void *a1, uint64_t a2, const void **a3, void *a4)
{
  std::mutex::lock((a2 + 16));
  v8 = *(a2 + 112);
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::BooleanRef,applesauce::CF::StringRef const&>(&cf, v8, *a3);
  if (v12 == 1)
  {
    v9 = cf;
    if (cf)
    {
      CFRetain(cf);
      *a1 = v9;
      CFRelease(v9);
      goto LABEL_8;
    }

    a4 = a1;
  }

  else
  {
    *a1 = *a4;
  }

  *a4 = 0;
LABEL_8:

  std::mutex::unlock((a2 + 16));
}

uint64_t applesauce::CF::convert_to<BOOL,0>(const __CFBoolean *a1)
{
  TypeID = CFBooleanGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    LOBYTE(v3) = CFBooleanGetValue(a1) != 0;
  }

  else
  {
    v4 = CFNumberGetTypeID();
    if (v4 != CFGetTypeID(a1) || (v3 = applesauce::CF::details::number_convert_as<BOOL>(a1), v3 <= 0xFFu))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      applesauce::CF::convert_error(exception);
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return v3 & 1;
}

void applesauce::CF::BooleanRef::~BooleanRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t applesauce::CF::details::number_convert_as<BOOL>(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_19;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v15 = a1;
      v16 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v13 = a1;
      v14 = kCFNumberSInt32Type;
      goto LABEL_23;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_21;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberFloat64Type;
      goto LABEL_16;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_19:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      v9 = Value != 0;
      v10 = LOBYTE(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v15 = a1;
      v16 = kCFNumberShortType;
LABEL_14:
      Value = CFNumberGetValue(v15, v16, &valuePtr);
      v9 = Value != 0;
      v10 = LOWORD(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v13 = a1;
      v14 = kCFNumberIntType;
LABEL_23:
      Value = CFNumberGetValue(v13, v14, &valuePtr);
      v9 = Value != 0;
      v10 = LODWORD(valuePtr) == 0;
      goto LABEL_24;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_21;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_21;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      Value = CFNumberGetValue(v6, v7, &valuePtr);
      v9 = Value != 0;
      v10 = *&valuePtr == 0.0;
      goto LABEL_24;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberDoubleType;
      goto LABEL_16;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_21;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_21:
      Value = CFNumberGetValue(v4, v5, &valuePtr);
      v9 = Value != 0;
      v10 = *&valuePtr == 0;
      goto LABEL_24;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v11 = a1;
      v12 = kCFNumberCGFloatType;
LABEL_16:
      Value = CFNumberGetValue(v11, v12, &valuePtr);
      v9 = Value != 0;
      v10 = valuePtr == 0.0;
LABEL_24:
      if (v10)
      {
        v9 = 0;
      }

      if (Value)
      {
        Value = 256;
      }

      break;
    default:
      v9 = 0;
      Value = 0;
      break;
  }

  return Value | v9;
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::BooleanRef,applesauce::CF::StringRef const&>(_BYTE *a1, const __CFDictionary *a2, const void *a3)
{
  v4 = applesauce::CF::details::at_key<applesauce::CF::StringRef const&>(a2, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFBooleanGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

const void *applesauce::CF::details::at_key<applesauce::CF::StringRef const&>(const __CFDictionary *a1, const void *a2)
{
  if (a2)
  {
    return CFDictionaryGetValue(a1, a2);
  }

  else
  {
    return 0;
  }
}

void sub_1DE2301DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a2)
  {

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE23016CLL);
  }

  _Unwind_Resume(exception_object);
}

void std::function<void ()(NSString *,NSXPCConnection *)>::operator()(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v7, &v6);
}

void sub_1DE230974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__221(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void std::vector<Registrar_Connection_Info>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 16)
  {

    v5 = *(i - 16);
  }

  *(a1 + 8) = a2;
}

void std::__shared_ptr_emplace<std::vector<Registrar_Connection_Info>>::__on_zero_shared(uint64_t a1)
{
  v2 = (a1 + 24);
  v1 = *(a1 + 24);
  if (v1)
  {
    std::vector<Registrar_Connection_Info>::__base_destruct_at_end[abi:ne200100](a1 + 24, v1);
    v3 = *v2;

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<std::vector<Registrar_Connection_Info>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5960EB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::DAL::Multi_Reader_Ring_Buffer::remove_source(uint64_t a1, uint64_t a2, int a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a3 != 1)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v14;
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v15 = *v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v27 = "Multi_Reader_Ring_Buffer.cpp";
      v28 = 1024;
      v29 = 29;
      v30 = 2080;
      v31 = "not (buffer_alignment == Buffer_Alignment::Aligned_For_Input)";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Multi_Reader_Ring_Buffer has a source that's output aligned", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Multi_Reader_Ring_Buffer has a source that's output aligned", &v17);
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
    v32 = "virtual BOOL AMCP::DAL::Multi_Reader_Ring_Buffer::remove_source(const Source_ID &, Buffer_Alignment)";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Multi_Reader_Ring_Buffer.cpp";
    v34 = 29;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  os_unfair_lock_lock((a1 + 104));
  v5 = *(a1 + 112);
  *(a1 + 112) = v5 - 1;
  if (v5 == 1)
  {
    *(a1 + 116) = 1;
  }

  else if (v5 <= 0)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v8;
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    else
    {
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v27 = "Multi_Reader_Ring_Buffer.cpp";
      v28 = 1024;
      v29 = 36;
      v30 = 2080;
      v31 = "not (m_refcount >= 0)";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v17);
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
    v32 = "virtual BOOL AMCP::DAL::Multi_Reader_Ring_Buffer::remove_source(const Source_ID &, Buffer_Alignment)";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Multi_Reader_Ring_Buffer.cpp";
    v34 = 36;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  os_unfair_lock_unlock((a1 + 104));
  v10 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE23156C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v29 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v28);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v29 - 129));
  os_unfair_lock_unlock(v27 + 26);
  _Unwind_Resume(a1);
}

uint64_t boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &unk_1F5992140;
  v4 = std::logic_error::logic_error(a1, a2);
  v4->__vftable = (MEMORY[0x1E69E55A8] + 16);
  v4[1].__vftable = &unk_1F59921B8;
  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v6;
  *a1 = &unk_1F5991390;
  *(a1 + 16) = &unk_1F59913C8;
  *(a1 + 56) = &unk_1F5991400;
  v11 = 0;
  v7 = *(a2 + 24);
  if (v7)
  {
    (*(*v7 + 40))(&v10);
    boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt(&v11, v10);
    boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&v10);
    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt((a1 + 24), v8);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&v11);
  return a1;
}

{
  *(a1 + 56) = &unk_1F5992140;
  std::logic_error::logic_error(a1, a2)->__vftable = (MEMORY[0x1E69E55A8] + 16);
  v4 = *(a2 + 24);
  *(a1 + 16) = &unk_1F59921B8;
  *(a1 + 24) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *a1 = &unk_1F5991390;
  *(a1 + 16) = &unk_1F59913C8;
  *(a1 + 56) = &unk_1F5991400;
  return a1;
}

void sub_1DE23183C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(v10);
  _Unwind_Resume(a1);
}

void sub_1DE2319DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  boost::detail::shared_count::~shared_count(va);
  _Unwind_Resume(a1);
}

void boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(uint64_t a1)
{
  *(a1 + 16) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  JUMPOUT(0x1E12C0F10);
}

{
  *(a1 + 16) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  MEMORY[0x1E12C0F10](a1);

  JUMPOUT(0x1E12C1730);
}

void boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(uint64_t a1)
{
  *(a1 + 16) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  JUMPOUT(0x1E12C0F10);
}

{
  *(a1 + 16) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  JUMPOUT(0x1E12C0F10);
}

{
  *(a1 + 16) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  MEMORY[0x1E12C0F10](a1);

  JUMPOUT(0x1E12C1730);
}

void virtual thunk toboost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(void *a1)
{
  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(a1 + *(*a1 - 40));
}

{
  v1 = a1 + *(*a1 - 40);
  *(v1 + 2) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(v1 + 3);

  JUMPOUT(0x1E12C0F10);
}

void boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(exception, a1);
}

void sub_1DE231F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(v10);
  MEMORY[0x1E12C1730](v10, v11);
  _Unwind_Resume(a1);
}

void non-virtual thunk toboost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(void *a1)
{
  *a1 = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  JUMPOUT(0x1E12C0F10);
}

void non-virtual thunk toboost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(void *a1)
{
  v1 = a1 - 2;
  *a1 = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  MEMORY[0x1E12C0F10](v1);

  JUMPOUT(0x1E12C1730);
}

{
  *a1 = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  JUMPOUT(0x1E12C0F10);
}

void AMCP::DAL::Multi_Reader_Ring_Buffer::add_source(os_unfair_lock_s *a1, uint64_t a2, int a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a3 != 1)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *v9;
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v26 = "Multi_Reader_Ring_Buffer.cpp";
      v27 = 1024;
      v28 = 19;
      v29 = 2080;
      v30 = "not (buffer_alignment == Buffer_Alignment::Aligned_For_Input)";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Multi_Reader_Ring_Buffer has a source that's output aligned", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Multi_Reader_Ring_Buffer has a source that's output aligned", &v16);
    std::logic_error::logic_error(&v17, &v16);
    v17.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v18, &v17);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -1;
    v18.__vftable = &unk_1F5991430;
    v19 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v18);
    v31 = "virtual void AMCP::DAL::Multi_Reader_Ring_Buffer::add_source(const Source_ID &, Buffer_Alignment)";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Multi_Reader_Ring_Buffer.cpp";
    v33 = 19;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  os_unfair_lock_lock(a1 + 26);
  os_unfair_lock_opaque = a1[28]._os_unfair_lock_opaque;
  if ((os_unfair_lock_opaque & 0x80000000) != 0)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
      *buf = 136315650;
      v26 = "Multi_Reader_Ring_Buffer.cpp";
      v27 = 1024;
      v28 = 21;
      v29 = 2080;
      v30 = "not (m_refcount >= 0)";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v16);
    std::logic_error::logic_error(&v17, &v16);
    v17.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v18, &v17);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -1;
    v18.__vftable = &unk_1F5991430;
    v19 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v18);
    v31 = "virtual void AMCP::DAL::Multi_Reader_Ring_Buffer::add_source(const Source_ID &, Buffer_Alignment)";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Multi_Reader_Ring_Buffer.cpp";
    v33 = 21;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  a1[28]._os_unfair_lock_opaque = os_unfair_lock_opaque + 1;
  v6 = *MEMORY[0x1E69E9840];

  os_unfair_lock_unlock(a1 + 26);
}

void sub_1DE23265C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v29 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v28);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v29 - 129));
  os_unfair_lock_unlock(v27 + 26);
  _Unwind_Resume(a1);
}

void AMCP::DAL::Multi_Reader_Ring_Buffer::commit_direct_write(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(a1 + 26);
  AMCP::DAL::Ring_Buffer_Base::commit_direct_write(a1, v5, a3);

  os_unfair_lock_unlock(a1 + 26);
}

void AMCP::DAL::Multi_Reader_Ring_Buffer::set_anchor_time_and_nominal_buffer_size(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v38 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 104));
  v9 = *(a1 + 112);
  if (v9 < 0)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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
      *buf = 136315650;
      v30 = "Multi_Reader_Ring_Buffer.cpp";
      v31 = 1024;
      v32 = 62;
      v33 = 2080;
      v34 = "not (m_refcount >= 0)";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v28);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v20);
    std::logic_error::logic_error(&v21, &v20);
    v21.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v22, &v21);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = -1;
    v22.__vftable = &unk_1F5991430;
    v23 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v22);
    v35 = "virtual void AMCP::DAL::Multi_Reader_Ring_Buffer::set_anchor_time_and_nominal_buffer_size(const Source_ID &, const DAL_Time_Range &, Buffer_Alignment)";
    v36 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Multi_Reader_Ring_Buffer.cpp";
    v37 = 62;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v19);
  }

  if (a4 != 1)
  {
    v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v15 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
    }

    v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = *v17;
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    else
    {
      v18 = *v17;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v30 = "Multi_Reader_Ring_Buffer.cpp";
      v31 = 1024;
      v32 = 63;
      v33 = 2080;
      v34 = "not (buffer_alignment == Buffer_Alignment::Aligned_For_Input)";
      _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Multi_Reader_Ring_Buffer should only be used for input", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v28);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Multi_Reader_Ring_Buffer should only be used for input", &v20);
    std::logic_error::logic_error(&v21, &v20);
    v21.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v22, &v21);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = -1;
    v22.__vftable = &unk_1F5991430;
    v23 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v22);
    v35 = "virtual void AMCP::DAL::Multi_Reader_Ring_Buffer::set_anchor_time_and_nominal_buffer_size(const Source_ID &, const DAL_Time_Range &, Buffer_Alignment)";
    v36 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Multi_Reader_Ring_Buffer.cpp";
    v37 = 63;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v19);
  }

  if (v9 == 1 || *(a1 + 116) == 1)
  {
    *(a1 + 116) = 0;
    AMCP::DAL::Ring_Buffer_Base::set_anchor_time_and_nominal_buffer_size(a1, v8, a3);
  }

  v10 = *MEMORY[0x1E69E9840];

  os_unfair_lock_unlock((a1 + 104));
}

void sub_1DE232CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v29 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v28);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v29 - 129));
  os_unfair_lock_unlock(v27 + 26);
  _Unwind_Resume(a1);
}

double AMCP::DAL::Ring_Buffer_Base::get_format@<D0>(AMCP::DAL::Ring_Buffer_Base *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 11);
  if (v2)
  {
    v3 = *(v2 + 8);
    v4 = *(v2 + 24);
    *a2 = v3;
    *(a2 + 16) = v4;
    *(a2 + 32) = *(v2 + 40);
  }

  else
  {
    *(a2 + 32) = 0;
    *&v3 = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return *&v3;
}

void AMCP::DAL::Multi_Reader_Ring_Buffer::get_allowed_read_range(AMCP::DAL::Multi_Reader_Ring_Buffer *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 27))
  {
    AMCP::DAL::DAL_Buffer::get_timebase(&v5, this);
    AMCP::DAL::DAL_Time_Range::DAL_Time_Range(a2, &v5, 0.0, 4294967300.0);
    v3 = v6;
    if (v6)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else
  {
    v4 = *(*this + 64);

    v4();
  }
}

void AMCP::DAL::DAL_Buffer::get_timebase(AMCP::DAL::DAL_Buffer *this, uint64_t a2)
{
  (*(*a2 + 64))(v4, a2);
  v3 = v5;
  *this = v4[3];
  *(this + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void AMCP::DAL::Multi_Reader_Ring_Buffer::get_time_range(AMCP::DAL::Multi_Reader_Ring_Buffer *this@<X0>, uint64_t a2@<X8>)
{
  os_unfair_lock_lock(this + 26);
  *a2 = *(this + 8);
  v4 = *(this + 4);
  *(a2 + 16) = *(this + 3);
  *(a2 + 24) = v4;
  v5 = *(this + 5);
  *(a2 + 32) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 40) = *(this + 3);
  v6 = *(this + 9);
  *(a2 + 56) = *(this + 8);
  *(a2 + 64) = v6;
  v7 = *(this + 10);
  *(a2 + 72) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(this + 26);
}

uint64_t AMCP::DAL::Ring_Buffer_Base::get_container@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 96);
  *a2 = *(this + 88);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void AMCP::DAL::Multi_Reader_Ring_Buffer::~Multi_Reader_Ring_Buffer(AMCP::DAL::Multi_Reader_Ring_Buffer *this)
{
  *this = &unk_1F5984D48;
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5984D48;
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t AMCP::get_clock_property_traits_list(AMCP *this)
{
  {
    AMCP::get_clock_property_traits_list(void)::s_indesctructible_property_traits_list_ptr = 0;
  }

  if (atomic_load_explicit(&AMCP::get_clock_property_traits_list(void)::once, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&AMCP::get_clock_property_traits_list(void)::once, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_clock_property_traits_list(void)::$_0 &&>>);
  }

  return AMCP::get_clock_property_traits_list(void)::s_indesctructible_property_traits_list_ptr;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_clock_property_traits_list(void)::$_0 &&>>()
{
  v25[6] = *MEMORY[0x1E69E9840];
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v0, 1768189556, 1, 1, 0, &AMCP::Property_Traits<1768189556u>::k_valid_scopes, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v1, 1650682995, 1, 1, 0, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v2, 1668047219, 1, 1, 0, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v3, 1870098034, 1, 1, 0, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v4, 1869638759, 1, 1, 0, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, 0, 1869638759, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v5, 1870097955, 1, 0, 0, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, 0, 1870098020, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v6, 1819173229, 0, 0, 1, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, 0, 1819173229, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v7, 1819111268, 0, 0, 0, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, 0, 1819111268, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v8, 1819107691, 0, 0, 0, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, 0, 1819107691, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v9, 1768124270, 0, 0, 0, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, 0, 1768124270, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v10, 1667330160, 0, 0, 0, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, 0, 1667330160, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v11, 1936618861, 0, 0, 0, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, 0, 1936618861, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v12, 1719105134, 0, 0, 0, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, AMCP::Property_Traits<1818454126u>::k_valid_scopes, 0, 1719105134, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v13, 1818454126, 0, 0, 0, AMCP::Property_Traits<1818454126u>::k_valid_scopes, &AMCP::Property_Traits<1818452846u>::k_valid_scopes, -1, 1818454126, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v14, 1818452846, 0, 0, 0, &AMCP::Property_Traits<1818452846u>::k_valid_scopes, &AMCP::Property_Traits<1818455662u>::k_valid_scopes, -1, 1818452846, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v15, 1818455662, 0, 0, 0, &AMCP::Property_Traits<1818455662u>::k_valid_scopes, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, -1, 1818455662, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v16, 1920168547, 0, 0, 0, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, &AMCP::Property_Traits<1668575852u>::k_valid_scopes, 0, 0, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v17, 1668575852, 0, 0, 0, &AMCP::Property_Traits<1668575852u>::k_valid_scopes, &AMCP::Property_Traits<1885956452u>::k_valid_scopes, 0, 1668575852, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v18, 1969841184, 1, 1, 0, &AMCP::Property_Traits<1969841184u>::k_valid_scopes, &AMCP::Property_Traits<1836411236u>::k_valid_scopes, 0, 1668639076, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v19, 1836411236, 0, 0, 0, &AMCP::Property_Traits<1836411236u>::k_valid_scopes, &AMCP::Property_Traits<1751737454u>::k_valid_scopes, 0, 1836411236, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v20, 1953653102, 1, 0, 0, &AMCP::Property_Traits<1953653102u>::k_valid_scopes, &AMCP::Property_Traits<1651007861u>::k_valid_scopes, 0, 1953653102, 23);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v21, 1751737454, 1, 0, 0, &AMCP::Property_Traits<1751737454u>::k_valid_scopes, &AMCP::Property_Traits<1668049764u>::k_valid_scopes, 0, 1751737454, 2);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v22, 1668049764, 1, 0, 0, &AMCP::Property_Traits<1668049764u>::k_valid_scopes, &AMCP::Property_Traits<1819569763u>::k_valid_scopes, 0, 1668049764, 7);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v23, 1819569763, 1, 0, 0, &AMCP::Property_Traits<1819569763u>::k_valid_scopes, &AMCP::Property_Traits<1853059700u>::k_valid_scopes, 0, 1819569763, 24);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v24, 1853059700, 1, 0, 1, &AMCP::Property_Traits<1853059700u>::k_valid_scopes, &AMCP::Property_Traits<1853059619u>::k_valid_scopes, 0, 1853059700, 17);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v25, 1853059619, 1, 0, 0, &AMCP::Property_Traits<1853059619u>::k_valid_scopes, &AMCP::Property_Traits<1935763060u>::k_valid_scopes, 0, 1853059619, 25);
  operator new();
}

void sub_1DE233824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v13 = v12;
  MEMORY[0x1E12C1730](v13, 0x20C40960023A9);
  v15 = 1248;
  while (1)
  {
    v16 = *(&a12 + v15 - 40);
    if (v16)
    {
      *(&a12 + v15 - 32) = v16;
      operator delete(v16);
    }

    v15 -= 48;
    if (!v15)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(uint64_t a1, int a2, char a3, char a4, char a5, uint64_t a6, uint64_t a7, int a8, int a9, int a10)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 5) = a4;
  *(a1 + 6) = a5;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a1 + 8, a6, a7, (a7 - a6) >> 2);
  *(a1 + 32) = a8;
  *(a1 + 36) = a9;
  *(a1 + 40) = a10;
  return a1;
}

void ***std::unique_ptr<std::vector<AMCP::Live_Property_Traits>>::reset[abi:ne200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<AMCP::Live_Property_Traits>::__destroy_vector::operator()[abi:ne200100](&v3);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Live_Property_Traits *,false>(unsigned int *a1, char *a2, uint64_t a3, char a4)
{
LABEL_1:
  v165 = a1;
LABEL_2:
  v7 = v165;
  while (1)
  {
    v8 = &a2[-v7];
    v9 = 0xAAAAAAAAAAAAAAABLL * (&a2[-v7] >> 4);
    v10 = v9 - 2;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:
          v83 = *(v7 + 48);
          v85 = *(a2 - 12);
          v77 = a2 - 48;
          v84 = v85;
          if (v83 >= *v7)
          {
            if (v84 >= v83)
            {
              return;
            }

            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(v7 + 48, v77);
            if (*(v7 + 48) >= *v7)
            {
              return;
            }

            v79 = v7;
            v82 = v7 + 48;
          }

          else
          {
            if (v84 >= v83)
            {
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(v7, v7 + 48);
              if (*v77 >= *(v7 + 48))
              {
                return;
              }

              v79 = v7 + 48;
            }

            else
            {
              v79 = v7;
            }

LABEL_226:
            v82 = v77;
          }

LABEL_227:

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(v79, v82);
          return;
        case 4:

          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Live_Property_Traits *,0>(v7, (v7 + 48), (v7 + 96), a2 - 12);
          return;
        case 5:
          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Live_Property_Traits *,0>(v7, (v7 + 48), (v7 + 96), (v7 + 144));
          v81 = *(a2 - 12);
          v80 = (a2 - 48);
          if (v81 >= *(v7 + 144))
          {
            return;
          }

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(v7 + 144, v80);
          if (*(v7 + 144) >= *(v7 + 96))
          {
            return;
          }

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(v7 + 96, v7 + 144);
          if (*(v7 + 96) >= *(v7 + 48))
          {
            return;
          }

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(v7 + 48, v7 + 96);
          if (*(v7 + 48) >= *v7)
          {
            return;
          }

          v82 = v7 + 48;
          v79 = v7;
          goto LABEL_227;
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
        v78 = *(a2 - 12);
        v77 = a2 - 48;
        if (v78 >= *v7)
        {
          return;
        }

        v79 = v165;
        goto LABEL_226;
      }
    }

    if (v8 <= 1151)
    {
      break;
    }

    v173 = a2;
    if (!a3)
    {
      if (v7 != a2)
      {
        v104 = v10 >> 1;
        v105 = v10 >> 1;
        do
        {
          v106 = v105;
          if (v104 >= v105)
          {
            v107 = (2 * v105) | 1;
            v108 = (v7 + 48 * v107);
            if (2 * v106 + 2 >= v9)
            {
              v109 = *v108;
            }

            else
            {
              v109 = *v108;
              v110 = v108[12];
              if (*v108 <= v110)
              {
                v109 = v108[12];
              }

              if (*v108 < v110)
              {
                v108 += 12;
                v107 = 2 * v106 + 2;
              }
            }

            v111 = v7 + 48 * v106;
            v112 = *v111;
            if (v109 >= *v111)
            {
              v188 = *(v111 + 6);
              v182 = *(v111 + 4);
              v170 = *(v111 + 8);
              *(v111 + 8) = 0;
              *(v111 + 16) = 0;
              v113 = *(v111 + 32);
              v167 = *(v111 + 24);
              *(v111 + 24) = 0;
              v198 = v113;
              v205 = *(v111 + 40);
              do
              {
                v114 = v108;
                v115 = *v108;
                *(v111 + 3) = *(v114 + 3);
                *v111 = v115;
                v116 = *(v111 + 8);
                if (v116)
                {
                  *(v111 + 16) = v116;
                  operator delete(v116);
                  *(v111 + 8) = 0;
                  *(v111 + 16) = 0;
                  *(v111 + 24) = 0;
                }

                *(v111 + 8) = *(v114 + 2);
                *(v111 + 24) = *(v114 + 3);
                *(v114 + 1) = 0;
                *(v114 + 2) = 0;
                *(v114 + 3) = 0;
                v117 = *(v114 + 4);
                *(v111 + 40) = v114[10];
                *(v111 + 32) = v117;
                if (v104 < v107)
                {
                  break;
                }

                v108 = (v7 + 48 * ((2 * v107) | 1));
                if (2 * v107 + 2 >= v9)
                {
                  v118 = *v108;
                  v107 = (2 * v107) | 1;
                }

                else
                {
                  v118 = *v108;
                  v119 = v108[12];
                  if (*v108 <= v119)
                  {
                    v118 = v108[12];
                  }

                  if (*v108 >= v119)
                  {
                    v107 = (2 * v107) | 1;
                  }

                  else
                  {
                    v108 += 12;
                    v107 = 2 * v107 + 2;
                  }
                }

                v111 = v114;
              }

              while (v118 >= v112);
              *v114 = v112;
              *(v114 + 2) = v182;
              *(v114 + 6) = v188;
              v120 = *(v114 + 1);
              if (v120)
              {
                *(v114 + 2) = v120;
                operator delete(v120);
              }

              *(v114 + 2) = v170;
              *(v114 + 3) = v167;
              *(v114 + 4) = v198;
              v114[10] = v205;
              a2 = v173;
            }
          }

          v105 = v106 - 1;
        }

        while (v106);
        v121 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 4);
        do
        {
          if (v121 >= 2)
          {
            v176 = a2;
            v122 = 0;
            *&v191[3] = *(v7 + 3);
            *v191 = *v7;
            v123 = *(v7 + 16);
            v171 = *(v7 + 8);
            *(v7 + 8) = 0;
            *(v7 + 16) = 0;
            v124 = *(v7 + 24);
            v183 = *(v7 + 32);
            v190 = *(v7 + 40);
            v125 = v7;
            *(v7 + 24) = 0;
            do
            {
              v126 = v125 + 48 * v122;
              v127 = (v126 + 48);
              if (2 * v122 + 2 >= v121)
              {
                v122 = (2 * v122) | 1;
              }

              else
              {
                v129 = *(v126 + 96);
                v128 = (v126 + 96);
                if (*(v128 - 12) >= v129)
                {
                  v122 = (2 * v122) | 1;
                }

                else
                {
                  v127 = v128;
                  v122 = 2 * v122 + 2;
                }
              }

              v130 = *v127;
              *(v125 + 3) = *(v127 + 3);
              *v125 = v130;
              v131 = *(v125 + 8);
              if (v131)
              {
                *(v125 + 16) = v131;
                operator delete(v131);
                *(v125 + 8) = 0;
                *(v125 + 16) = 0;
                *(v125 + 24) = 0;
              }

              *(v125 + 8) = *(v127 + 8);
              *(v125 + 24) = *(v127 + 3);
              *(v127 + 1) = 0;
              *(v127 + 2) = 0;
              v133 = (v127 + 32);
              v132 = *(v127 + 4);
              *(v127 + 3) = 0;
              *(v125 + 40) = *(v127 + 10);
              *(v125 + 32) = v132;
              v125 = v127;
            }

            while (v122 <= ((v121 - 2) >> 1));
            v134 = v176 - 48;
            if (v127 == v176 - 48)
            {
              *(v127 + 3) = *&v191[3];
              *v127 = *v191;
              v150 = *(v127 + 1);
              if (v150)
              {
                *(v127 + 2) = v150;
                operator delete(v150);
              }

              *(v127 + 1) = v171;
              *(v127 + 2) = v123;
              *(v127 + 3) = v124;
              *v133 = v183;
              *(v127 + 10) = v190;
            }

            else
            {
              v135 = *v134;
              *(v127 + 3) = *(v176 - 45);
              *v127 = v135;
              v136 = *(v127 + 1);
              if (v136)
              {
                *(v127 + 2) = v136;
                operator delete(v136);
                *(v127 + 1) = 0;
                *(v127 + 2) = 0;
                *(v127 + 3) = 0;
              }

              v137 = v176 - 40;
              *(v127 + 8) = *(v176 - 40);
              *(v127 + 3) = *(v176 - 3);
              *(v137 + 1) = 0;
              *(v137 + 2) = 0;
              *v137 = 0;
              v138 = *(v176 - 2);
              *(v127 + 10) = *(v176 - 2);
              *v133 = v138;
              *(v176 - 45) = *&v191[3];
              *v134 = *v191;
              v139 = *(v176 - 5);
              if (v139)
              {
                *(v176 - 4) = v139;
                operator delete(v139);
              }

              *(v176 - 5) = v171;
              *(v176 - 4) = v123;
              *(v176 - 3) = v124;
              *(v176 - 2) = v190;
              *(v176 - 2) = v183;
              v140 = &v127[-v7 + 48];
              if (v140 >= 49)
              {
                v141 = (-2 - 0x5555555555555555 * (v140 >> 4)) >> 1;
                v142 = (v7 + 48 * v141);
                v143 = *v127;
                if (*v142 < *v127)
                {
                  v192 = *(v127 + 2);
                  v193 = v127[6];
                  v172 = *(v127 + 8);
                  v144 = *(v127 + 3);
                  *(v127 + 2) = 0;
                  *(v127 + 3) = 0;
                  *(v127 + 1) = 0;
                  v199 = *v133;
                  v206 = *(v127 + 10);
                  do
                  {
                    v145 = v142;
                    v146 = *v142;
                    *(v127 + 3) = *(v145 + 3);
                    *v127 = v146;
                    v147 = *(v127 + 1);
                    if (v147)
                    {
                      *(v127 + 2) = v147;
                      operator delete(v147);
                      *(v127 + 1) = 0;
                      *(v127 + 2) = 0;
                      *(v127 + 3) = 0;
                    }

                    *(v127 + 8) = *(v145 + 2);
                    *(v127 + 3) = *(v145 + 3);
                    *(v145 + 1) = 0;
                    *(v145 + 2) = 0;
                    *(v145 + 3) = 0;
                    v148 = *(v145 + 4);
                    *(v127 + 10) = v145[10];
                    *(v127 + 4) = v148;
                    if (!v141)
                    {
                      break;
                    }

                    v141 = (v141 - 1) >> 1;
                    v142 = (v7 + 48 * v141);
                    v127 = v145;
                  }

                  while (*v142 < v143);
                  *v145 = v143;
                  *(v145 + 2) = v192;
                  *(v145 + 6) = v193;
                  v149 = *(v145 + 1);
                  if (v149)
                  {
                    *(v145 + 2) = v149;
                    operator delete(v149);
                  }

                  *(v145 + 2) = v172;
                  *(v145 + 3) = v144;
                  *(v145 + 4) = v199;
                  v145[10] = v206;
                }
              }
            }

            a2 = v176;
          }

          a2 -= 48;
        }

        while (v121-- > 2);
      }

      return;
    }

    v11 = v9 >> 1;
    v12 = v7 + 48 * (v9 >> 1);
    v14 = (a2 - 48);
    v13 = *(a2 - 12);
    if (v8 >= 0x1801)
    {
      v15 = *v12;
      if (*v12 >= *v7)
      {
        if (v13 < v15)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(v12, (a2 - 48));
          if (*v12 < *v7)
          {
            v16 = v7;
            v17 = v12;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v16 = v7;
        if (v13 < v15)
        {
          goto LABEL_17;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(v7, v12);
        if (*v14 < *v12)
        {
          v16 = v12;
LABEL_17:
          v17 = (a2 - 48);
LABEL_26:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(v16, v17);
        }
      }

      v21 = v7 + 48 * v11;
      v24 = *(v21 - 48);
      v23 = (v21 - 48);
      v22 = v24;
      v27 = *(a2 - 24);
      v26 = a2 - 96;
      v25 = v27;
      if (v22 >= *(v7 + 48))
      {
        if (v25 < v22)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(v23, v26);
          if (*v23 < *(v7 + 48))
          {
            v28 = v7 + 48;
            v29 = v23;
            goto LABEL_39;
          }
        }
      }

      else
      {
        v28 = v7 + 48;
        if (v25 < v22)
        {
          goto LABEL_31;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(v28, v23);
        if (*v26 < *v23)
        {
          v28 = v23;
LABEL_31:
          v29 = v26;
LABEL_39:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(v28, v29);
        }
      }

      v30 = v7 + 48 * v11;
      v33 = *(v30 + 48);
      v32 = (v30 + 48);
      v31 = v33;
      v34 = *(v173 - 36);
      if (v33 >= *(v7 + 96))
      {
        if (v34 < v31)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(v32, (v173 - 144));
          if (*v32 < *(v7 + 96))
          {
            v35 = v7 + 96;
            v36 = v32;
            goto LABEL_48;
          }
        }
      }

      else
      {
        v35 = v7 + 96;
        if (v34 < v31)
        {
          goto LABEL_44;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(v35, v32);
        if (*(v173 - 36) < *v32)
        {
          v35 = v32;
LABEL_44:
          v36 = (v173 - 144);
LABEL_48:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(v35, v36);
        }
      }

      v37 = *v12;
      v38 = *v32;
      if (*v12 >= *v23)
      {
        a2 = v173;
        if (v38 < v37)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(v12, v32);
          if (*v12 < *v23)
          {
            v39 = v23;
            v40 = v12;
            goto LABEL_57;
          }
        }
      }

      else
      {
        a2 = v173;
        v39 = v23;
        if (v38 < v37)
        {
          goto LABEL_53;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(v23, v12);
        if (*v32 < *v12)
        {
          v39 = v12;
LABEL_53:
          v40 = v32;
LABEL_57:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(v39, v40);
        }
      }

      *&v178[3] = *(v7 + 3);
      *v178 = *v7;
      v41 = *(v7 + 8);
      v42 = *(v7 + 24);
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      v194 = *(v7 + 32);
      v201 = *(v7 + 40);
      v43 = *v12;
      *(v7 + 3) = *(v12 + 3);
      *v7 = v43;
      v44 = *(v7 + 8);
      if (v44)
      {
        *(v7 + 16) = v44;
        v168 = v41;
        operator delete(v44);
        v41 = v168;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
      }

      v45 = *(v12 + 32);
      *(v7 + 24) = *(v12 + 24);
      *(v7 + 8) = *(v12 + 8);
      *(v12 + 24) = 0;
      v46 = *(v12 + 40);
      *(v7 + 32) = v45;
      *(v7 + 40) = v46;
      *v12 = *v178;
      *(v12 + 3) = *&v178[3];
      *(v12 + 8) = v41;
      *(v12 + 24) = v42;
      *(v12 + 40) = v201;
      *(v12 + 32) = v194;
      v7 = v165;
      goto LABEL_61;
    }

    v18 = *v7;
    if (*v7 < *v12)
    {
      v19 = v12;
      if (v13 >= v18)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(v12, v7);
        if (*v14 >= *v7)
        {
          goto LABEL_61;
        }

        v19 = v7;
      }

      v20 = (a2 - 48);
      goto LABEL_35;
    }

    if (v13 < v18)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(v7, (a2 - 48));
      if (*v7 < *v12)
      {
        v19 = v12;
        v20 = v7;
LABEL_35:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(v19, v20);
      }
    }

LABEL_61:
    --a3;
    if (a4)
    {
      v47 = *v7;
    }

    else
    {
      v47 = *v7;
      if (*(v7 - 48) >= *v7)
      {
        v174 = *(v7 + 8);
        v180 = *(v7 + 4);
        v186 = *(v7 + 6);
        v64 = *(v7 + 24);
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        v65 = *(v7 + 32);
        *(v7 + 24) = 0;
        v203 = *(v7 + 40);
        v196 = v65;
        if (v47 >= *v14)
        {
          v67 = (v7 + 48);
          do
          {
            a1 = v67;
            if (v67 >= a2)
            {
              break;
            }

            v67 += 12;
          }

          while (v47 >= *a1);
        }

        else
        {
          a1 = v7;
          do
          {
            v66 = a1[12];
            a1 += 12;
          }

          while (v47 >= v66);
        }

        v68 = a2;
        if (a1 < a2)
        {
          v68 = a2;
          do
          {
            v69 = *(v68 - 48);
            v68 -= 48;
          }

          while (v47 < v69);
        }

        while (a1 < v68)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(a1, v68);
          do
          {
            v70 = a1[12];
            a1 += 12;
          }

          while (v47 >= v70);
          do
          {
            v71 = *(v68 - 48);
            v68 -= 48;
          }

          while (v47 < v71);
        }

        if (a1 - 12 != v7)
        {
          v72 = *(a1 - 12);
          *(v7 + 3) = *(a1 - 45);
          *v7 = v72;
          v73 = *(v7 + 8);
          if (v73)
          {
            *(v7 + 16) = v73;
            operator delete(v73);
            *(v7 + 8) = 0;
            *(v7 + 16) = 0;
            *(v7 + 24) = 0;
          }

          v74 = a1 - 10;
          *(v7 + 8) = *(a1 - 10);
          *(v7 + 24) = *(a1 - 3);
          *v74 = 0;
          *(v74 + 1) = 0;
          *(v74 + 2) = 0;
          v75 = *(a1 - 2);
          *(v7 + 40) = *(a1 - 2);
          *(v7 + 32) = v75;
        }

        *(a1 - 12) = v47;
        *(a1 - 42) = v186;
        *(a1 - 22) = v180;
        v76 = *(a1 - 5);
        if (v76)
        {
          *(a1 - 4) = v76;
          operator delete(v76);
        }

        a4 = 0;
        *(a1 - 10) = v174;
        *(a1 - 3) = v64;
        *(a1 - 2) = v203;
        *(a1 - 2) = v196;
        goto LABEL_1;
      }
    }

    v169 = *(v7 + 8);
    v179 = *(v7 + 4);
    v185 = *(v7 + 6);
    v48 = *(v7 + 24);
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    v202 = *(v7 + 40);
    v195 = *(v7 + 32);
    v49 = v7;
    do
    {
      v50 = v49;
      v51 = v49[12];
      v49 += 12;
    }

    while (v51 < v47);
    if (v50 == v7)
    {
      a2 = v173;
      do
      {
        if (v49 >= a2)
        {
          break;
        }

        v53 = *(a2 - 12);
        a2 -= 48;
      }

      while (v53 >= v47);
    }

    else
    {
      do
      {
        v52 = *(a2 - 12);
        a2 -= 48;
      }

      while (v52 >= v47);
    }

    if (v49 >= a2)
    {
      a1 = v49;
    }

    else
    {
      v54 = a2;
      a1 = v49;
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(a1, v54);
        do
        {
          v55 = a1[12];
          a1 += 12;
        }

        while (v55 < v47);
        do
        {
          v56 = *(v54 - 48);
          v54 -= 48;
        }

        while (v56 >= v47);
      }

      while (a1 < v54);
    }

    if (a1 - 12 != v7)
    {
      v57 = *(a1 - 12);
      *(v7 + 3) = *(a1 - 45);
      *v7 = v57;
      v58 = *(v7 + 8);
      if (v58)
      {
        *(v7 + 16) = v58;
        operator delete(v58);
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
      }

      v59 = a1 - 10;
      *(v7 + 8) = *(a1 - 10);
      *(v7 + 24) = *(a1 - 3);
      *v59 = 0;
      *(v59 + 1) = 0;
      *(v59 + 2) = 0;
      v60 = *(a1 - 2);
      *(v7 + 40) = *(a1 - 2);
      *(v7 + 32) = v60;
    }

    *(a1 - 12) = v47;
    *(a1 - 42) = v185;
    *(a1 - 22) = v179;
    v61 = *(a1 - 5);
    if (v61)
    {
      *(a1 - 4) = v61;
      operator delete(v61);
    }

    *(a1 - 10) = v169;
    *(a1 - 3) = v48;
    *(a1 - 2) = v202;
    *(a1 - 2) = v195;
    v62 = v49 >= a2;
    a2 = v173;
    if (!v62)
    {
      goto LABEL_92;
    }

    v63 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Live_Property_Traits *>(v7, a1 - 48);
    if (!std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Live_Property_Traits *>(a1, v173))
    {
      v165 = a1;
      if (v63)
      {
        goto LABEL_2;
      }

LABEL_92:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Live_Property_Traits *,false>(v7, a1 - 12, a3, a4 & 1);
      a4 = 0;
      goto LABEL_1;
    }

    a2 = (a1 - 12);
    if (v63)
    {
      return;
    }
  }

  v86 = v7 + 48;
  v88 = v7 == a2 || v86 == a2;
  if (a4)
  {
    if (!v88)
    {
      v89 = 0;
      v90 = v7;
      do
      {
        v91 = v86;
        v92 = *(v90 + 48);
        if (v92 < *v90)
        {
          v181 = *(v90 + 52);
          v187 = *(v90 + 54);
          v93 = *(v90 + 56);
          v175 = *(v90 + 64);
          *(v90 + 56) = 0;
          *(v90 + 64) = 0;
          *(v90 + 72) = 0;
          v197 = *(v90 + 80);
          v94 = v89;
          v204 = *(v90 + 88);
          while (1)
          {
            v95 = v7 + v94;
            *(v95 + 48) = *(v7 + v94);
            *(v95 + 51) = *(v7 + v94 + 3);
            v96 = *(v7 + v94 + 56);
            if (v96)
            {
              *(v95 + 64) = v96;
              operator delete(v96);
              *(v95 + 72) = 0;
            }

            *(v95 + 56) = *(v95 + 8);
            *(v95 + 8) = 0;
            *(v95 + 16) = 0;
            v97 = *(v95 + 24);
            v98 = *(v95 + 32);
            *(v95 + 24) = 0;
            *(v95 + 72) = v97;
            *(v95 + 80) = v98;
            *(v95 + 88) = *(v95 + 40);
            if (!v94)
            {
              break;
            }

            v99 = (v7 + v94);
            v100 = *(v7 + v94 - 48);
            v94 -= 48;
            if (v92 >= v100)
            {
              v101 = v7 + v94 + 48;
              v102 = v99 + 4;
              goto LABEL_145;
            }
          }

          v99 = v7;
          v102 = (v7 + 32);
          v101 = v7;
LABEL_145:
          *v101 = v92;
          *(v101 + 4) = v181;
          *(v101 + 6) = v187;
          v103 = v99[1];
          if (v103)
          {
            *(v101 + 16) = v103;
            operator delete(v103);
            v99[2] = 0;
            v99[3] = 0;
          }

          v99[1] = v93;
          *(v101 + 16) = v175;
          *(v102 + 2) = v204;
          *v102 = v197;
        }

        v86 = v91 + 48;
        v89 += 48;
        v90 = v91;
      }

      while ((v91 + 48) != a2);
    }
  }

  else if (!v88)
  {
    v152 = v7 + 24;
    do
    {
      v153 = v86;
      v154 = *(v7 + 48);
      if (v154 < *v7)
      {
        v184 = *(v7 + 52);
        v189 = *(v7 + 54);
        v177 = *(v7 + 56);
        *(v7 + 56) = 0;
        *(v7 + 64) = 0;
        v156 = *(v7 + 72);
        v155 = *(v7 + 80);
        *(v7 + 72) = 0;
        v200 = v155;
        v157 = v152;
        v207 = *(v7 + 88);
        do
        {
          v158 = v157;
          *(v157 + 24) = *(v157 - 24);
          *(v157 + 27) = *(v157 - 21);
          v159 = *(v157 + 32);
          if (v159)
          {
            *(v157 + 40) = v159;
            operator delete(v159);
            *(v157 + 48) = 0;
          }

          v160 = (v157 - 16);
          *(v157 + 32) = *(v157 - 16);
          v161 = *v157;
          v160[1] = 0;
          *v157 = 0;
          *v160 = 0;
          v162 = *(v157 + 8);
          *(v157 + 48) = v161;
          *(v157 + 56) = v162;
          *(v157 + 64) = *(v157 + 16);
          LODWORD(v162) = *(v157 - 72);
          v157 -= 48;
        }

        while (v154 < v162);
        v163 = v158 - 24;
        *(v158 - 24) = v154;
        *(v163 + 6) = v189;
        *(v163 + 4) = v184;
        v164 = *(v158 - 16);
        if (v164)
        {
          *(v158 - 8) = v164;
          operator delete(v164);
        }

        *(v158 - 16) = v177;
        *v158 = v156;
        *(v158 + 16) = v207;
        *(v158 + 8) = v200;
      }

      v86 = v153 + 48;
      v152 += 48;
      v7 = v153;
    }

    while ((v153 + 48) != a2);
  }
}
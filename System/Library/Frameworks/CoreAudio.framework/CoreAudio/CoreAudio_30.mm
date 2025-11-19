void sub_1DE42F1F8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__optional_storage_base<HALS_MetaDevice_HostedDSP::SubDeviceOffloadRequest,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<HALS_MetaDevice_HostedDSP::SubDeviceOffloadRequest,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 40) == a2[2].n128_u8[8])
  {
    if (*(a1 + 40))
    {
      std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1, a2);
      v4 = *(a1 + 32);
      *(a1 + 32) = a2[2].n128_u64[0];
      a2[2].n128_u64[0] = v4;
    }
  }

  else if (*(a1 + 40))
  {

    std::__optional_destruct_base<HALS_MetaDevice_HostedDSP::SubDeviceOffloadRequest,false>::reset[abi:ne200100](a1);
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    if (a2[1].n128_u8[8] == 1)
    {
      v5 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      *a1 = v5;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
      a2->n128_u64[0] = 0;
      *(a1 + 24) = 1;
    }

    *(a1 + 32) = a2[2].n128_u64[0];
    a2[2].n128_u64[0] = 0;
    *(a1 + 40) = 1;
  }
}

void std::__optional_destruct_base<HALS_MetaDevice_HostedDSP::SubDeviceOffloadRequest,false>::reset[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      CFRelease(v2);
    }

    if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 40) = 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(HALS_Stream *,HALS_Client *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void HostedDSPContextBuildArguments::~HostedDSPContextBuildArguments(HostedDSPContextBuildArguments *this)
{
  if (*(this + 88) == 1)
  {
    v2 = *(this + 10);
    if (v2)
    {
      CFRelease(v2);
    }

    if (*(this + 72) == 1 && *(this + 71) < 0)
    {
      operator delete(*(this + 6));
    }
  }

  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](this + 4, 0);
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](this + 3, 0);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 1));
}

OS::CF::MutableDictionary *OS::CF::MutableDictionary::MutableDictionary(OS::CF::MutableDictionary *this)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  *this = &unk_1F598E458;
  *(this + 1) = Mutable;
  return this;
}

void *OS::CF::Number::Number<unsigned int>(void *a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  *a1 = &unk_1F5991138;
  a1[1] = v3;
  return a1;
}

void OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    if (a3)
    {
      CFDictionarySetValue(a1, a2, a3);
    }
  }
}

void OS::CF::MutableDictionary::SetValueForKey<OS::CF::String>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    if (a3)
    {
      CFDictionarySetValue(a1, a2, a3);
    }
  }
}

{
  if (a1)
  {
    CFDictionarySetValue(a1, a2, a3);
  }
}

void OS::CF::MutableDictionary::SetValueForKey<OS::CF::Boolean>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    if (a3)
    {
      CFDictionarySetValue(a1, a2, a3);
    }
  }
}

uint64_t std::__function::__value_func<BOOL ()(HALS_Stream *,HALS_Client *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void OS::CF::MutableDictionary::SetValueForKey<OS::CF::MutableArray>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    if (a3)
    {
      CFDictionarySetValue(a1, a2, a3);
    }
  }
}

void OS::CF::MutableArray::AppendValue<OS::CF::Dictionary>(__CFArray *a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      CFArrayAppendValue(a1, a2);
    }
  }
}

void OS::CF::MutableArray::AppendValue<OS::CF::MutableDictionary>(__CFArray *a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      CFArrayAppendValue(a1, a2);
    }
  }
}

const __CFArray *OS::CF::ArrayBase<__CFArray *>::GetSize(const __CFArray *result)
{
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

void OS::CF::MutableArray::AppendValue<OS::CF::MutableArray>(__CFArray *a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      CFArrayAppendValue(a1, a2);
    }
  }
}

void OS::CF::MutableArray::AppendValue<OS::CF::Number>(__CFArray *a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      CFArrayAppendValue(a1, a2);
    }
  }
}

void *OS::CF::Number::Number<int>(void *a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  *a1 = &unk_1F5991138;
  a1[1] = v3;
  return a1;
}

void OS::CF::MutableDictionary::~MutableDictionary(OS::CF::MutableDictionary *this)
{
  OS::CF::UntypedObject::~UntypedObject(this);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<HALS_MetaDevice::_CreateLegacyIOContextDescription(HALS_Client *)::$_0,std::allocator<HALS_MetaDevice::_CreateLegacyIOContextDescription(HALS_Client *)::$_0>,BOOL ()(HALS_Stream *,HALS_Client *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK15HALS_MetaDevice33_CreateLegacyIOContextDescriptionEP11HALS_ClientE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_MetaDevice::_CreateLegacyIOContextDescription(HALS_Client *)::$_0,std::allocator<HALS_MetaDevice::_CreateLegacyIOContextDescription(HALS_Client *)::$_0>,BOOL ()(HALS_Stream *,HALS_Client *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F596EDE8;
  a2[1] = v2;
  return result;
}

BOOL HALS_MetaDevice::_ClientCanUseStream(HALS_MetaDevice *this, HALS_Stream *a2, HALS_Client *a3)
{
  if (a2)
  {
    v6 = (*(*a2 + 216))(a2);
    v7 = *(a2 + 52);
    if (v6)
    {
      if (!*(a2 + 52) || *(a2 + 14) != 1 && !HALS_Stream::IsHardwareReferenceStream(a2))
      {
        return 1;
      }

      v8 = (*(*a2 + 288))(a2);
      v9 = HALS_ObjectMap::CopyObjectByObjectID(v8);
      v11 = v9;
      ReferenceStreamStateForClient = 1;
      if (v9 && a3 && (*(this + 536) & 1) == 0)
      {
        ReferenceStreamStateForClient = HALS_ReferenceStreamStateManager::GetReferenceStreamStateForClient(*(v9 + 448), *(a3 + 4));
      }

LABEL_17:
      HALS_ObjectMap::ReleaseObject(v11, v10);
      return ReferenceStreamStateForClient;
    }

    if (*(a2 + 52) && (*(a2 + 14) == 1 || HALS_Stream::IsHardwareReferenceStream(a2)))
    {
      v13 = HALS_ObjectMap::CopyObjectByObjectID(*(a2 + 7));
      v11 = v13;
      ReferenceStreamStateForClient = 1;
      if (a3 && (*(this + 536) & 1) == 0)
      {
        ReferenceStreamStateForClient = HALS_ReferenceStreamStateManager::GetReferenceStreamStateForClient(*(v13 + 448), *(a3 + 4));
      }

      goto LABEL_17;
    }
  }

  return HALS_Device::_ClientCanUseStream(this, a2, a3);
}

uint64_t HALS_MetaDevice::_GetNumberStreamsForClient(std::mutex *this, uint64_t a2, HALS_Client *a3)
{
  std::mutex::lock(this + 11);
  if (a3)
  {
    v6 = *(a3 + 4);
  }

  else
  {
    if (this[10].__m_.__opaque[12] != 1)
    {
LABEL_17:
      std::mutex::unlock(this + 11);
      v16 = (*(this->__m_.__sig + 392))(this, a2);
      if (!v16)
      {
        return 0;
      }

      v17 = v16;
      LODWORD(v18) = 0;
      v19 = 0;
      do
      {
        v20 = (*(this->__m_.__sig + 400))(this, a2, v19);
        v21 = (*(this->__m_.__sig + 616))(this, v20, a3);
        HALS_ObjectMap::ReleaseObject(v20, v22);
        v18 = (v18 + v21);
        v19 = (v19 + 1);
      }

      while (v17 != v19);
      return v18;
    }

    v6 = 0;
  }

  v7 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(&this[10].__m_.__opaque[16], v6);
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = 6;
  if (a2)
  {
    v8 = 0;
  }

  v9 = &v7[v8];
  v10 = v9[3];
  v11 = v9 + 4;
  if (v10 == v11)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v12 = *(v10 + 7) - 2;
    if (v12 < 9 && ((0x14Fu >> v12) & 1) != 0)
    {
      break;
    }

    v13 = v10[1];
    if (v13)
    {
      do
      {
        v14 = v13;
        v13 = *v13;
      }

      while (v13);
    }

    else
    {
      do
      {
        v14 = v10[2];
        v15 = *v14 == v10;
        v10 = v14;
      }

      while (!v15);
    }

    v10 = v14;
    if (v14 == v11)
    {
      goto LABEL_17;
    }
  }

  std::mutex::unlock(this + 11);
  return 1;
}

void HALS_MetaDevice::_CopyStreamList(uint64_t a1, unsigned int a2, void *a3)
{
  a3[1] = *a3;
  v4 = a1 + 24 * a2;
  std::vector<HALS_Stream *>::reserve(a3, (*(v4 + 1616) - *(v4 + 1608)) >> 3);
  v6 = *(v4 + 1608);
  for (i = *(v4 + 1616); v6 != i; ++v6)
  {
    HALS_ObjectMap::RetainObject(*v6, v5);
    v8 = *v6;
    v10 = a3[1];
    v9 = a3[2];
    if (v10 >= v9)
    {
      v12 = (v10 - *a3) >> 3;
      if ((v12 + 1) >> 61)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v13 = v9 - *a3;
      v14 = v13 >> 2;
      if (v13 >> 2 <= (v12 + 1))
      {
        v14 = v12 + 1;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v14;
      }

      if (v15)
      {
        std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v15);
      }

      v16 = (8 * v12);
      *v16 = v8;
      v11 = 8 * v12 + 8;
      v17 = a3[1] - *a3;
      v18 = v16 - v17;
      memcpy(v16 - v17, *a3, v17);
      v19 = *a3;
      *a3 = v18;
      a3[1] = v11;
      a3[2] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v10 = v8;
      v11 = (v10 + 1);
    }

    a3[1] = v11;
  }
}

uint64_t HALS_MetaDevice::_GetTotalNumberChannels(HALS_MetaDevice *this, unsigned int a2)
{
  v2 = this + 24 * a2;
  v3 = *(v2 + 201);
  if (v3 == *(v2 + 202))
  {
    return 0;
  }

  LODWORD(v4) = 0;
  v5 = v2 + 1608;
  do
  {
    v6 = *v3++;
    v4 = HALS_Stream::GetNumberChannels(v6) + v4;
  }

  while (v3 != *(v5 + 1));
  return v4;
}

uint64_t HALS_MetaDevice::_CopyDefaultElementName(HALS_MetaDevice *this, int a2, unsigned int a3)
{
  if (a2 != 1869968496 && a2 != 1768845428)
  {
    return 0;
  }

  v18[7] = v3;
  v18[8] = v4;
  v6 = a3;
  if (a3)
  {
    v8 = *(this + 187);
    for (i = *(this + 188); v8 != i; v8 += 24)
    {
      v10 = *v8;
      if (*(v8 + 8) != *v8)
      {
        v11 = *v10;
        TotalNumberChannels = HALS_MetaSubDevice::GetTotalNumberChannels(*v10, a2 == 1768845428);
        if (v6 <= TotalNumberChannels)
        {
          if (v11)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v6 -= TotalNumberChannels;
        }
      }
    }

    return 0;
  }

  v11 = *(this + 196);
  if (!v11)
  {
    return 0;
  }

  v6 = 0;
LABEL_16:
  v16[0] = 1818454126;
  v16[1] = a2;
  v16[2] = v6;
  v14 = (*(*v11 + 96))(v11, *(v11 + 4), v16, 0);
  result = 0;
  if (v14)
  {
    v15 = *(v11 + 4);
    v18[0] = 0;
    v17 = 0;
    (*(*v11 + 120))(v11, v15, v16, 8, &v17, v18, 0, 0, 0);
    return v18[0];
  }

  return result;
}

BOOL HALS_MetaDevice::CanBeSeenByProcess(uint64_t a1, uint64_t a2)
{
  v3 = atomic_load((a1 + 1592));
  result = 1;
  if (a2 && (v3 & 1) != 0)
  {
    v5 = *(a2 + 240);
    if (v5 != -1)
    {
      return v5 == *(a1 + 1464);
    }
  }

  return result;
}

HALS_ObjectMap *HALS_MetaDevice::_CopyStreamByIndex(HALS_MetaDevice *this, HALS_Object *a2, unsigned int a3)
{
  v3 = this + 24 * a2;
  v4 = *(v3 + 202);
  v5 = *(v3 + 201);
  if (a3 >= ((v4 - v5) >> 3))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v5 + 8 * a3);
  }

  HALS_ObjectMap::RetainObject(v6, a2);
  return v6;
}

uint64_t HALS_MetaDevice::DoAnyQueuesHaveWorkAfterFlush(HALS_MetaDevice *this)
{
  v1 = atomic_load(this + 817);
  if (v1 & 1) != 0 || (v2 = atomic_load(this + 1153), (v2))
  {
    v3 = 1;
  }

  else
  {
    v3 = atomic_load(this + 1705);
  }

  return v3 & 1;
}

void HALS_MetaDevice::FlushAllQueues(HALS_MetaDevice *this)
{
  AMCP::Utility::Dispatch_Queue::flush_all_work((this + 784));
  AMCP::Utility::Dispatch_Queue::flush_all_work((this + 1120));

  AMCP::Utility::Dispatch_Queue::flush_all_work((this + 1672));
}

void HALS_MetaDevice::HandleGroupObjectPropertiesChanged(HALS_Device *a1, int a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, char a9, uint64_t a10, dispatch_object_t *a11)
{
  v50 = *MEMORY[0x1E69E9840];
  v42 = 0;
  v43 = &v42;
  v44 = 0x4802000000;
  v45 = __Block_byref_object_copy__6128;
  v46 = __Block_byref_object_dispose__6129;
  v47 = 0u;
  v48 = 0u;
  v36 = 0;
  v37 = &v36;
  v38 = 0x4002000000;
  v39 = __Block_byref_object_copy__1;
  v40 = __Block_byref_object_dispose__2;
  memset(v41, 0, sizeof(v41));
  v32 = 0;
  v33 = &v32;
  v34 = 0x2000000000;
  v35 = 0;
  v17 = *a11;
  if (*a11)
  {
    v18 = a7;
    dispatch_retain(*a11);
    dispatch_group_enter(v17);
    a7 = v18;
  }

  v31 = v17;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 0x40000000;
  v26[2] = ___ZN15HALS_MetaDevice34HandleGroupObjectPropertiesChangedEjjjPKjS1_jPK26AudioObjectPropertyAddressbRKNSt3__16vectorIjNS5_9allocatorIjEEEEN10applesauce8dispatch2v15groupE_block_invoke;
  v26[3] = &unk_1E8674AA8;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v26[8] = a5;
  v26[9] = a6;
  v30 = a7;
  v26[10] = a8;
  v26[4] = &v32;
  v26[5] = &v42;
  v26[6] = &v36;
  v26[7] = a1;
  v19 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v19, v26);
  if (*(v33 + 24) == 1)
  {
    HALS_Device::UpdateInternalIOContext(a1);
  }

  v20 = *(a1 + 4);
  v21 = v43;
  v22 = v37;
  v23 = *((*(*a1 + 56))(a1) + 72);
  if (v23 == pthread_self() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "HALS_Object.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 682;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_Object::GroupPropertiesChanged: Notifications are being sent from inside the command gate.", buf, 0x12u);
  }

  memset(buf, 0, sizeof(buf));
  HALS_NotificationManager::GroupPropertiesChanged(a9, v20, a3, (v21 + 5), v22 + 5, buf);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  if (v17)
  {
    dispatch_group_leave(v17);
    dispatch_release(v17);
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
  v32 = v41;
  std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](&v32);
  _Block_object_dispose(&v42, 8);
  if (v47)
  {
    *(&v47 + 1) = v47;
    operator delete(v47);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void sub_1DE4306E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, dispatch_object_t a25, void **a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  v32 = *(v30 - 128);
  if (v32)
  {
    *(v30 - 120) = v32;
    operator delete(v32);
  }

  applesauce::dispatch::v1::group_session::~group_session(&a25);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  a26 = a11;
  std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](&a26);
  _Block_object_dispose((v30 - 200), 8);
  v33 = *(v30 - 160);
  if (v33)
  {
    *(v30 - 152) = v33;
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6128(void *a1, uint64_t *a2)
{
  a1[5] = 0;
  a1[6] = 0;
  v3 = a1 + 5;
  a1[7] = 0;
  result = std::vector<CAPropertyAddress>::__init_with_size[abi:ne200100]<CAPropertyAddress*,CAPropertyAddress*>((a1 + 5), a2[5], a2[6], 0xAAAAAAAAAAAAAAABLL * ((a2[6] - a2[5]) >> 2));
  v3[3] = a2[8];
  return result;
}

void __Block_byref_object_dispose__6129(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void __Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = a1 + 40;
  *(v2 + 16) = 0;
  std::vector<CAPropertyAddressList>::__init_with_size[abi:ne200100]<CAPropertyAddressList*,CAPropertyAddressList*>(v2, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 5);
}

uint64_t ___ZN15HALS_MetaDevice34HandleGroupObjectPropertiesChangedEjjjPKjS1_jPK26AudioObjectPropertyAddressbRKNSt3__16vectorIjNS5_9allocatorIjEEEEN10applesauce8dispatch2v15groupE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 56) + 1032))(*(a1 + 56), *(a1 + 88), *(a1 + 92), *(a1 + 96), *(a1 + 64), *(a1 + 72), *(a1 + 100), *(a1 + 80), *(*(a1 + 40) + 8) + 40, *(*(a1 + 48) + 8) + 40);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE430894(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void applesauce::dispatch::v1::group_session::~group_session(dispatch_object_t *this)
{
  v2 = *this;
  if (v2)
  {
    dispatch_group_leave(v2);
    if (*this)
    {
      dispatch_release(*this);
    }
  }
}

void HALS_MetaDevice::HandleObjectPropertiesChanged(HALS_MetaDevice *this, const HALS_Object *a2, uint64_t a3, int a4, const AudioObjectPropertyAddress *a5)
{
  v37 = 0;
  v38 = &v37;
  v39 = 0x4802000000;
  v40 = __Block_byref_object_copy__6128;
  v41 = __Block_byref_object_dispose__6129;
  v42 = 0u;
  v43 = 0u;
  v31 = 0;
  v32 = &v31;
  v33 = 0x4002000000;
  v34 = __Block_byref_object_copy__1;
  v35 = __Block_byref_object_dispose__2;
  memset(v36, 0, sizeof(v36));
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 0x40000000;
  v24[2] = ___ZN15HALS_MetaDevice29HandleObjectPropertiesChangedEPK11HALS_ObjectjjPK26AudioObjectPropertyAddress_block_invoke;
  v24[3] = &unk_1E8674A80;
  v25 = a3;
  v26 = a4;
  v24[8] = a2;
  v24[9] = a5;
  v24[4] = &v27;
  v24[5] = &v37;
  v24[6] = &v31;
  v24[7] = this;
  v7 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v7, v24);
  if (*(v28 + 24) == 1)
  {
    HALS_Device::UpdateInternalIOContext(this);
  }

  v8 = v38[5];
  v9 = v38[6];
  v10 = v8 != v9;
  if (v8 != v9)
  {
    HALS_Object::PropertiesChanged(this, *(this + 4), a3, -1431655765 * ((v9 - v8) >> 2), v8);
  }

  v11 = v32[5];
  v12 = v32[6] - v11;
  if ((v12 & 0x1FFFFFFFE0) != 0)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      if (v14 >= v12 >> 5)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v15 = v11 + v13;
      v16 = HALS_ObjectMap::CopyObjectByObjectID(*(v11 + v13 + 24));
      v18 = v16;
      v19 = *(v15 + 8);
      if (*v15 != v19 && v16 != 0)
      {
        HALS_Object::PropertiesChanged(this, *(v16 + 16), 0, -1431655765 * ((v19 - *v15) >> 2), *v15);
        v10 = 1;
      }

      HALS_ObjectMap::ReleaseObject(v18, v17);
      ++v14;
      v11 = v32[5];
      v12 = v32[6] - v11;
      v13 += 32;
    }

    while (v14 < (v12 >> 5));
  }

  if (v10)
  {
    v21[0] = 0;
    v21[1] = 0;
    HALS_System::GetInstance(&v22, 0, v21);
    HALS_System::CheckForDefaultDeviceChanges(v22);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  v27 = v36;
  std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](&v27);
  _Block_object_dispose(&v37, 8);
  if (v42)
  {
    *(&v42 + 1) = v42;
    operator delete(v42);
  }
}

void sub_1DE430BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](&a24);
  _Block_object_dispose((v28 - 152), 8);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN15HALS_MetaDevice29HandleObjectPropertiesChangedEPK11HALS_ObjectjjPK26AudioObjectPropertyAddress_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 56) + 1024))(*(a1 + 56), *(a1 + 64), *(a1 + 80), *(a1 + 84), *(a1 + 72), *(*(a1 + 40) + 8) + 40, *(*(a1 + 48) + 8) + 40);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE430CBC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_MetaDevice::SetPropertyData(HALS_MetaDevice *this, const AudioObjectPropertyAddress *a2, AudioObjectPropertyAddress *a3, unsigned int a4, float *a5, unsigned int a6, _DWORD *a7, AudioObjectPropertyAddress *a8)
{
  v224 = *MEMORY[0x1E69E9840];
  if (((*(*this + 104))(this, a2, a3, a8) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v156 = 2003332927;
LABEL_226:
    exception[2] = v156;
  }

  mSelector = a3->mSelector;
  if (HALB_Info::PropertyRequiresHogMode(a3->mSelector, v15))
  {
    v17 = atomic_load(this + 40);
    if (a8)
    {
      v18 = a8[20].mSelector;
    }

    else
    {
      v18 = getpid();
    }

    if (v17 != -1 && v17 != v18)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      v156 = 560492391;
      goto LABEL_226;
    }

    mSelector = a3->mSelector;
  }

  v196 = 0;
  v194 = 0u;
  v195 = 0u;
  v192 = 0;
  v191 = 0;
  v193 = 0;
  if (mSelector > 1735554415)
  {
    if (mSelector <= 1853059699)
    {
      if (mSelector == 1735554416)
      {
        if (a4 <= 7)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_251;
          }

          *v208 = 136315394;
          *&v208[4] = "HALS_MetaDevice.cpp";
          *&v208[12] = 1024;
          *&v208[14] = 2500;
          v157 = MEMORY[0x1E69E9C10];
          v158 = "%25s:%-5d  HALS_MetaDevice::SetPropertyData: bad property data size for kAudioAggregateDevicePropertyFullSubDeviceList";
          goto LABEL_250;
        }

        HALS_DeviceState::HALS_DeviceState(v208);
        HALS_DeviceState::Capture(v208, this, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
        v197 = 0;
        v198 = &v197;
        v199 = 0x2000000000;
        LODWORD(v200) = 0;
        v188[0] = MEMORY[0x1E69E9820];
        v188[1] = 0x40000000;
        v188[2] = ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_110;
        v188[3] = &unk_1E8674EE8;
        v188[6] = a5;
        v188[7] = &v196;
        v188[5] = this;
        v188[4] = &v197;
        v80 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v80, v188);
        if (*(v198 + 24))
        {
          v171 = __cxa_allocate_exception(0x10uLL);
          v172 = *(v198 + 24);
          *v171 = off_1F5991DD8;
          v171[2] = v172;
        }

        HALS_DeviceState::HALS_DeviceState(&buf);
        HALS_DeviceState::Capture(v81, this, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
        HALS_DeviceState::Compare(v208, &buf, &v194, &v191);
        *&v207[0] = 0x676C6F62616D7374;
        DWORD2(v207[0]) = 0;
        CAPropertyAddressList::AppendUniqueItem(&v194, v207, v82);
        *&v207[0] = 0x676C6F6261706364;
        DWORD2(v207[0]) = 0;
        CAPropertyAddressList::AppendUniqueItem(&v194, v207, v83);
        *&v207[0] = 0x676C6F6267727570;
        DWORD2(v207[0]) = 0;
        CAPropertyAddressList::AppendUniqueItem(&v194, v207, v84);
        *&v207[0] = 0x676C6F6261677270;
        DWORD2(v207[0]) = 0;
        CAPropertyAddressList::AppendUniqueItem(&v194, v207, v85);
        *&v207[0] = 0x676C6F6261636F6DLL;
        DWORD2(v207[0]) = 0;
        CAPropertyAddressList::AppendUniqueItem(&v194, v207, v86);
        goto LABEL_102;
      }

      if (mSelector != 1819173229 && mSelector != 1851878764)
      {
        goto LABEL_68;
      }

      if (a4 <= 7)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_251;
        }

        *v208 = 136315394;
        *&v208[4] = "HALS_MetaDevice.cpp";
        *&v208[12] = 1024;
        *&v208[14] = 2463;
        v157 = MEMORY[0x1E69E9C10];
        v158 = "%25s:%-5d  HALS_MetaDevice::SetPropertyData: bad property data size for kAudioObjectPropertyName";
        goto LABEL_250;
      }

      *v208 = 0;
      *&v208[8] = v208;
      *&v208[16] = 0x2000000000;
      *&v208[24] = 0;
      v190[0] = MEMORY[0x1E69E9820];
      v190[1] = 0x40000000;
      v190[2] = ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke;
      v190[3] = &unk_1E8674E98;
      v190[6] = a5;
      v190[5] = this;
      v190[4] = v208;
      v30 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v30, v190);
      if (*(*&v208[8] + 24))
      {
        v159 = __cxa_allocate_exception(0x10uLL);
        v160 = *(*&v208[8] + 24);
        *v159 = off_1F5991DD8;
        v159[2] = v160;
      }

      strcpy(&buf, "manlbolg");
      BYTE9(buf) = 0;
      WORD5(buf) = 0;
      CAPropertyAddressList::AppendUniqueItem(&v194, &buf, v31);
    }

    else
    {
      if (mSelector > 1983996970)
      {
        if (mSelector == 1983996971)
        {
          v72 = AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0);
          if (v72)
          {
            HALS_Device::SetPropertyData(this, a2, a3, a4, a5, a6, a7, a8);
            v72 = AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0);
          }

          mScope = a3->mScope;
          v74 = mScope == 1768845428;
          if (mScope != 1768845428)
          {
            v119 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v119 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v72);
            }

            v121 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v120 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v120)
            {
              atomic_fetch_add_explicit(&v120->__shared_owners_, 1uLL, memory_order_relaxed);
              v122 = *v121;
              std::__shared_weak_count::__release_shared[abi:ne200100](v120);
            }

            else
            {
              v122 = *v121;
            }

            if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
            {
              *v208 = 136315650;
              *&v208[4] = "HALS_MetaDevice.cpp";
              *&v208[12] = 1024;
              *&v208[14] = 2767;
              *&v208[18] = 2080;
              *&v208[20] = "isInput == false";
              _os_log_error_impl(&dword_1DE1F9000, v122, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_MetaDevice::SetPropertyData: only valid for input scope kAudioDevicePropertyVoiceActivityDetectionEnable", v208, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v183);
            __cxa_allocate_exception(0x40uLL);
            *&__p = off_1F5991DD8;
            DWORD2(__p) = 1852797029;
            DWORD2(buf) = 1852797029;
            v220 = 0;
            v221 = 0;
            LODWORD(v222) = -1;
            *&buf = &unk_1F598E5D8;
            v218 = &unk_1F598E600;
            v219 = 0;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(v208, &buf);
            v209 = "virtual void HALS_MetaDevice::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
            v210 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Meta/HALS_MetaDevice.cpp";
            LODWORD(v211) = 2767;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(v207);
          }

          atomic_load(this + 1592);
          if (!a5)
          {
            v123 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v123 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v72);
            }

            v125 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v124 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v124)
            {
              atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
              v126 = *v125;
              std::__shared_weak_count::__release_shared[abi:ne200100](v124);
            }

            else
            {
              v126 = *v125;
            }

            if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
            {
              *v208 = 136315650;
              *&v208[4] = "HALS_MetaDevice.cpp";
              *&v208[12] = 1024;
              *&v208[14] = 2769;
              *&v208[18] = 2080;
              *&v208[20] = "inData == nullptr";
              _os_log_error_impl(&dword_1DE1F9000, v126, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_MetaDevice::SetPropertyData: inData is nullptr for kAudioDevicePropertyVoiceActivityDetectionEnable", v208, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v183);
            __cxa_allocate_exception(0x40uLL);
            *&__p = off_1F5991DD8;
            DWORD2(__p) = 1852797029;
            DWORD2(buf) = 1852797029;
            v220 = 0;
            v221 = 0;
            LODWORD(v222) = -1;
            *&buf = &unk_1F598E5D8;
            v218 = &unk_1F598E600;
            v219 = 0;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(v208, &buf);
            v209 = "virtual void HALS_MetaDevice::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
            v210 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Meta/HALS_MetaDevice.cpp";
            LODWORD(v211) = 2769;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(v207);
          }

          if (a4 != 4)
          {
            v131 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v131 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v72);
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
              *v208 = 136315650;
              *&v208[4] = "HALS_MetaDevice.cpp";
              *&v208[12] = 1024;
              *&v208[14] = 2770;
              *&v208[18] = 2080;
              *&v208[20] = "inDataSize != sizeof(UInt32)";
              _os_log_error_impl(&dword_1DE1F9000, v134, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_MetaDevice::SetPropertyData: inDataSize is not UInt32 for kAudioDevicePropertyVoiceActivityDetectionEnable", v208, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v183);
            __cxa_allocate_exception(0x40uLL);
            *&__p = off_1F5991DD8;
            DWORD2(__p) = 1852797029;
            DWORD2(buf) = 1852797029;
            v220 = 0;
            v221 = 0;
            LODWORD(v222) = -1;
            *&buf = &unk_1F598E5D8;
            v218 = &unk_1F598E600;
            v219 = 0;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(v208, &buf);
            v209 = "virtual void HALS_MetaDevice::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
            v210 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Meta/HALS_MetaDevice.cpp";
            LODWORD(v211) = 2770;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(v207);
          }

          if (!a8)
          {
            v139 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v139 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v72);
            }

            v141 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v140 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v140)
            {
              atomic_fetch_add_explicit(&v140->__shared_owners_, 1uLL, memory_order_relaxed);
              v142 = *v141;
              std::__shared_weak_count::__release_shared[abi:ne200100](v140);
            }

            else
            {
              v142 = *v141;
            }

            if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
            {
              *v208 = 136315650;
              *&v208[4] = "HALS_MetaDevice.cpp";
              *&v208[12] = 1024;
              *&v208[14] = 2771;
              *&v208[18] = 2080;
              *&v208[20] = "inClient == nullptr";
              _os_log_error_impl(&dword_1DE1F9000, v142, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_MetaDevice::SetPropertyData: inClient is null for kAudioDevicePropertyVoiceActivityDetectionEnable", v208, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v183);
            __cxa_allocate_exception(0x40uLL);
            *&__p = off_1F5991DD8;
            DWORD2(__p) = 1852797029;
            DWORD2(buf) = 1852797029;
            v220 = 0;
            v221 = 0;
            LODWORD(v222) = -1;
            *&buf = &unk_1F598E5D8;
            v218 = &unk_1F598E600;
            v219 = 0;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(v208, &buf);
            v209 = "virtual void HALS_MetaDevice::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
            v210 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Meta/HALS_MetaDevice.cpp";
            LODWORD(v211) = 2771;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(v207);
          }

          v75 = *a5;
          HALS_DeviceState::HALS_DeviceState(v208);
          HALS_DeviceState::Capture(v208, this, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
          v177[0] = MEMORY[0x1E69E9820];
          v177[1] = 0x40000000;
          v177[2] = ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_130;
          v177[3] = &__block_descriptor_tmp_131_6165;
          v178 = v75;
          v179 = v74;
          v177[4] = this;
          v177[5] = a8;
          v177[6] = &v196;
          v76 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v76, v177);
          v67 = v196;
          if (v196 == 1)
          {
            HALS_DeviceState::HALS_DeviceState(&buf);
            HALS_DeviceState::Capture(v77, this, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
            HALS_DeviceState::Compare(v208, &buf, &v194, &v191);
            v197 = 0x676C6F6261677270;
            LODWORD(v198) = 0;
            CAPropertyAddressList::AppendUniqueItem(&v194, &v197, v78);
            v197 = 0x676C6F6261636F6DLL;
            LODWORD(v198) = 0;
            CAPropertyAddressList::AppendUniqueItem(&v194, &v197, v79);
            HALS_DeviceState::~HALS_DeviceState(&buf);
          }

          HALS_DeviceState::~HALS_DeviceState(v208);
          goto LABEL_99;
        }

        if (mSelector == 1986622324)
        {
          v39 = AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0);
          if (v39)
          {
            HALS_Device::SetPropertyData(this, a2, a3, a4, a5, a6, a7, a8);
            v39 = AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0);
          }

          v40 = a3->mScope;
          v41 = v40 == 1768845428;
          if (v40 != 1768845428)
          {
            v115 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v115 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v39);
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
              *v208 = 136315650;
              *&v208[4] = "HALS_MetaDevice.cpp";
              *&v208[12] = 1024;
              *&v208[14] = 2703;
              *&v208[18] = 2080;
              *&v208[20] = "isInput == false";
              _os_log_error_impl(&dword_1DE1F9000, v118, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_MetaDevice::SetPropertyData: only valid for input scope kAudioDevicePropertyVocalIsolationType", v208, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v183);
            __cxa_allocate_exception(0x40uLL);
            *&__p = off_1F5991DD8;
            DWORD2(__p) = 1852797029;
            DWORD2(buf) = 1852797029;
            v220 = 0;
            v221 = 0;
            LODWORD(v222) = -1;
            *&buf = &unk_1F598E5D8;
            v218 = &unk_1F598E600;
            v219 = 0;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(v208, &buf);
            v209 = "virtual void HALS_MetaDevice::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
            v210 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Meta/HALS_MetaDevice.cpp";
            LODWORD(v211) = 2703;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(v207);
          }

          NumberStreamsExcludingReferenceStreams = HALS_Device::GetNumberStreamsExcludingReferenceStreams(this, 1);
          if (!NumberStreamsExcludingReferenceStreams)
          {
            v127 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v127 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(NumberStreamsExcludingReferenceStreams);
            }

            v129 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v128 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v128)
            {
              atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
              v130 = *v129;
              std::__shared_weak_count::__release_shared[abi:ne200100](v128);
            }

            else
            {
              v130 = *v129;
            }

            if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
            {
              *v208 = 136315650;
              *&v208[4] = "HALS_MetaDevice.cpp";
              *&v208[12] = 1024;
              *&v208[14] = 2705;
              *&v208[18] = 2080;
              *&v208[20] = "hasNonTapInputStream == false";
              _os_log_error_impl(&dword_1DE1F9000, v130, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_MetaDevice::SetPropertyData: Device does not have non-tap input streams for  kAudioDevicePropertyVocalIsolationType", v208, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v183);
            __cxa_allocate_exception(0x40uLL);
            *&__p = off_1F5991DD8;
            DWORD2(__p) = 1852797029;
            DWORD2(buf) = 1852797029;
            v220 = 0;
            v221 = 0;
            LODWORD(v222) = -1;
            *&buf = &unk_1F598E5D8;
            v218 = &unk_1F598E600;
            v219 = 0;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(v208, &buf);
            v209 = "virtual void HALS_MetaDevice::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
            v210 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Meta/HALS_MetaDevice.cpp";
            LODWORD(v211) = 2705;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(v207);
          }

          atomic_load(this + 1592);
          if (!a5)
          {
            v135 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v135 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(NumberStreamsExcludingReferenceStreams);
            }

            v137 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v136 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v136)
            {
              atomic_fetch_add_explicit(&v136->__shared_owners_, 1uLL, memory_order_relaxed);
              v138 = *v137;
              std::__shared_weak_count::__release_shared[abi:ne200100](v136);
            }

            else
            {
              v138 = *v137;
            }

            if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
            {
              *v208 = 136315650;
              *&v208[4] = "HALS_MetaDevice.cpp";
              *&v208[12] = 1024;
              *&v208[14] = 2707;
              *&v208[18] = 2080;
              *&v208[20] = "inData == nullptr";
              _os_log_error_impl(&dword_1DE1F9000, v138, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_MetaDevice::SetPropertyData: inData is nullptr for kAudioDevicePropertyVocalIsolationType", v208, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v183);
            __cxa_allocate_exception(0x40uLL);
            *&__p = off_1F5991DD8;
            DWORD2(__p) = 1852797029;
            DWORD2(buf) = 1852797029;
            v220 = 0;
            v221 = 0;
            LODWORD(v222) = -1;
            *&buf = &unk_1F598E5D8;
            v218 = &unk_1F598E600;
            v219 = 0;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(v208, &buf);
            v209 = "virtual void HALS_MetaDevice::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
            v210 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Meta/HALS_MetaDevice.cpp";
            LODWORD(v211) = 2707;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(v207);
          }

          if (a4 != 4)
          {
            v143 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v143 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(NumberStreamsExcludingReferenceStreams);
            }

            v145 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v144 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v144)
            {
              atomic_fetch_add_explicit(&v144->__shared_owners_, 1uLL, memory_order_relaxed);
              v146 = *v145;
              std::__shared_weak_count::__release_shared[abi:ne200100](v144);
            }

            else
            {
              v146 = *v145;
            }

            if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
            {
              *v208 = 136315650;
              *&v208[4] = "HALS_MetaDevice.cpp";
              *&v208[12] = 1024;
              *&v208[14] = 2708;
              *&v208[18] = 2080;
              *&v208[20] = "inDataSize != sizeof(UInt32)";
              _os_log_error_impl(&dword_1DE1F9000, v146, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_MetaDevice::SetPropertyData: inDataSize is not UInt32 for kAudioDevicePropertyVocalIsolationType", v208, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v183);
            __cxa_allocate_exception(0x40uLL);
            *&__p = off_1F5991DD8;
            DWORD2(__p) = 1852797029;
            DWORD2(buf) = 1852797029;
            v220 = 0;
            v221 = 0;
            LODWORD(v222) = -1;
            *&buf = &unk_1F598E5D8;
            v218 = &unk_1F598E600;
            v219 = 0;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(v208, &buf);
            v209 = "virtual void HALS_MetaDevice::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
            v210 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Meta/HALS_MetaDevice.cpp";
            LODWORD(v211) = 2708;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(v207);
          }

          if (!a8)
          {
            v147 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v147 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(NumberStreamsExcludingReferenceStreams);
            }

            v149 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v148 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v148)
            {
              atomic_fetch_add_explicit(&v148->__shared_owners_, 1uLL, memory_order_relaxed);
              v150 = *v149;
              std::__shared_weak_count::__release_shared[abi:ne200100](v148);
            }

            else
            {
              v150 = *v149;
            }

            if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
            {
              *v208 = 136315650;
              *&v208[4] = "HALS_MetaDevice.cpp";
              *&v208[12] = 1024;
              *&v208[14] = 2709;
              *&v208[18] = 2080;
              *&v208[20] = "inClient == nullptr";
              _os_log_error_impl(&dword_1DE1F9000, v150, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_MetaDevice::SetPropertyData: inClient is null for kAudioDevicePropertyVocalIsolationType", v208, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v183);
            __cxa_allocate_exception(0x40uLL);
            *&__p = off_1F5991DD8;
            DWORD2(__p) = 1852797029;
            DWORD2(buf) = 1852797029;
            v220 = 0;
            v221 = 0;
            LODWORD(v222) = -1;
            *&buf = &unk_1F598E5D8;
            v218 = &unk_1F598E600;
            v219 = 0;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(v208, &buf);
            v209 = "virtual void HALS_MetaDevice::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
            v210 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Meta/HALS_MetaDevice.cpp";
            LODWORD(v211) = 2709;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(v207);
          }

          v43 = *a5;
          if (*a5 >= 3u)
          {
            v151 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v151 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(NumberStreamsExcludingReferenceStreams);
            }

            v153 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v152 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v152)
            {
              atomic_fetch_add_explicit(&v152->__shared_owners_, 1uLL, memory_order_relaxed);
              v154 = *v153;
              std::__shared_weak_count::__release_shared[abi:ne200100](v152);
            }

            else
            {
              v154 = *v153;
            }

            if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
            {
              *v208 = 136315650;
              *&v208[4] = "HALS_MetaDevice.cpp";
              *&v208[12] = 1024;
              *&v208[14] = 2711;
              *&v208[18] = 2080;
              *&v208[20] = "dataValue > kAudioDevicePropertyVocalIsolationTypeBasic";
              _os_log_error_impl(&dword_1DE1F9000, v154, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_MetaDevice::SetPropertyData inData is an invalid value for kAudioDevicePropertyVocalIsolationType", v208, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v183);
            __cxa_allocate_exception(0x40uLL);
            *&__p = off_1F5991DD8;
            DWORD2(__p) = 1852797029;
            DWORD2(buf) = 1852797029;
            v220 = 0;
            v221 = 0;
            LODWORD(v222) = -1;
            *&buf = &unk_1F598E5D8;
            v218 = &unk_1F598E600;
            v219 = 0;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(v208, &buf);
            v209 = "virtual void HALS_MetaDevice::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
            v210 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Meta/HALS_MetaDevice.cpp";
            LODWORD(v211) = 2711;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(v207);
          }

          HALS_DeviceState::HALS_DeviceState(v208);
          HALS_DeviceState::Capture(v208, this, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
          v180[0] = MEMORY[0x1E69E9820];
          v180[1] = 0x40000000;
          v180[2] = ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_127;
          v180[3] = &__block_descriptor_tmp_128;
          v181 = v43;
          v180[4] = this;
          v180[5] = a8;
          v182 = v41;
          v180[6] = &v196;
          v44 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v44, v180);
          if (v196 == 1)
          {
            memset(v207, 0, sizeof(v207));
            strcpy(&buf, "#mtsbolg");
            BYTE9(buf) = 0;
            WORD5(buf) = 0;
            CAPropertyAddressList::AppendUniqueItem(v207, &buf, v45);
            strcpy(&buf, "tmfsbolg");
            BYTE9(buf) = 0;
            WORD5(buf) = 0;
            CAPropertyAddressList::AppendUniqueItem(v207, &buf, v46);
            strcpy(&buf, "#mfsbolg");
            BYTE9(buf) = 0;
            WORD5(buf) = 0;
            CAPropertyAddressList::AppendUniqueItem(v207, &buf, v47);
            strcpy(&buf, "yalsbolg");
            BYTE9(buf) = 0;
            WORD5(buf) = 0;
            CAPropertyAddressList::AppendUniqueItem(v207, &buf, v48);
            v49 = *&v207[0];
            HALS_Object::PropertiesChanged(this, *(this + 4), a8[1].mScope, -1431655765 * ((*(&v207[0] + 1) - *&v207[0]) >> 2), *&v207[0]);
            __p = 0u;
            v206 = 0u;
            strcpy(&buf, "tmfsbolg");
            BYTE9(buf) = 0;
            WORD5(buf) = 0;
            CAPropertyAddressList::AppendUniqueItem(&__p, &buf, v50);
            strcpy(&buf, "amfsbolg");
            BYTE9(buf) = 0;
            WORD5(buf) = 0;
            CAPropertyAddressList::AppendUniqueItem(&__p, &buf, v51);
            strcpy(&buf, " tfpbolg");
            BYTE9(buf) = 0;
            WORD5(buf) = 0;
            CAPropertyAddressList::AppendUniqueItem(&__p, &buf, v52);
            strcpy(&buf, "atfpbolg");
            BYTE9(buf) = 0;
            WORD5(buf) = 0;
            CAPropertyAddressList::AppendUniqueItem(&__p, &buf, v53);
            *&buf = 0;
            *(&buf + 1) = &buf;
            v218 = 0x4002000000;
            v219 = __Block_byref_object_copy__139;
            v220 = __Block_byref_object_dispose__140;
            v221 = 0;
            v222 = 0;
            v223 = 0;
            v197 = MEMORY[0x1E69E9820];
            v198 = 0x40000000;
            v199 = ___ZN15HALS_MetaDevice25NotifyDSPChangedForClientEbP11HALS_Client_block_invoke;
            v200 = &unk_1E8675090;
            v204 = 1;
            v203 = a8;
            v202 = this;
            p_buf = &buf;
            v54 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v54, &v197);
            v55 = *(*(&buf + 1) + 40);
            v56 = *(*(&buf + 1) + 48);
            if (v55 != v56)
            {
              v57 = __p;
              v58 = -1431655765 * ((*(&__p + 1) - __p) >> 2);
              do
              {
                HALS_Object::PropertiesChanged(this, *v55++, a8[1].mScope, v58, v57);
              }

              while (v55 != v56);
            }

            _Block_object_dispose(&buf, 8);
            if (v221)
            {
              v222 = v221;
              operator delete(v221);
            }

            if (__p)
            {
              operator delete(__p);
            }

            if (v49)
            {
              operator delete(v49);
            }

            HALS_DeviceState::HALS_DeviceState(&buf);
            HALS_DeviceState::Capture(v59, this, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
            HALS_DeviceState::Compare(v208, &buf, &v194, &v191);
            v197 = 0x676C6F6261677270;
            LODWORD(v198) = 0;
            CAPropertyAddressList::AppendUniqueItem(&v194, &v197, v60);
            v197 = 0x676C6F6261636F6DLL;
            LODWORD(v198) = 0;
            CAPropertyAddressList::AppendUniqueItem(&v194, &v197, v61);
            HALS_DeviceState::~HALS_DeviceState(&buf);
            goto LABEL_73;
          }

          HALS_DeviceState::~HALS_DeviceState(v208);
          goto LABEL_98;
        }

        goto LABEL_68;
      }

      if (mSelector == 1853059700)
      {
        if (a4 <= 7)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_251;
          }

          *v208 = 136315394;
          *&v208[4] = "HALS_MetaDevice.cpp";
          *&v208[12] = 1024;
          *&v208[14] = 2482;
          v157 = MEMORY[0x1E69E9C10];
          v158 = "%25s:%-5d  HALS_MetaDevice::SetPropertyData: bad property data size for kAudioDevicePropertyNominalSampleRate";
          goto LABEL_250;
        }

        *v208 = 0;
        *&v208[8] = v208;
        *&v208[16] = 0x2000000000;
        *&v208[24] = 0;
        v189[0] = MEMORY[0x1E69E9820];
        v189[1] = 0x40000000;
        v189[2] = ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_108;
        v189[3] = &unk_1E8674EC0;
        v189[6] = a5;
        v189[7] = a8;
        v189[5] = this;
        v189[4] = v208;
        v70 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v70, v189);
        if (*(*&v208[8] + 24))
        {
          v167 = __cxa_allocate_exception(0x10uLL);
          v168 = *(*&v208[8] + 24);
          *v167 = off_1F5991DD8;
          v167[2] = v168;
        }

        goto LABEL_80;
      }

      if (mSelector != 1952542755)
      {
LABEL_68:
        HALS_Device::SetPropertyData(this, a2, a3, a4, a5, a6, a7, a8);
LABEL_98:
        v67 = 0;
LABEL_99:
        v66 = 0;
        goto LABEL_103;
      }

      if (a4 <= 7)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_251;
        }

        *v208 = 136315394;
        *&v208[4] = "HALS_MetaDevice.cpp";
        *&v208[12] = 1024;
        *&v208[14] = 2814;
        v157 = MEMORY[0x1E69E9C10];
        v158 = "%25s:%-5d  HALS_MetaDevice::SetPropertyData: bad property data size for kAudioAggregateDevicePropertyTapList";
        goto LABEL_250;
      }

      HALS_MetaDevice::UnregisterTaps(this);
      *v208 = 0;
      *&v208[8] = v208;
      *&v208[16] = 0x2000000000;
      *&v208[24] = 0;
      v176[0] = MEMORY[0x1E69E9820];
      v176[1] = 0x40000000;
      v176[2] = ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_132;
      v176[3] = &unk_1E8674FF0;
      v176[6] = a5;
      v176[7] = &v196;
      v176[4] = v208;
      v176[5] = this;
      v24 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v24, v176);
      if (*(*&v208[8] + 24))
      {
        v169 = __cxa_allocate_exception(0x10uLL);
        v170 = *(*&v208[8] + 24);
        *v169 = off_1F5991DD8;
        v169[2] = v170;
      }

      strcpy(&buf, "patabolg");
      BYTE9(buf) = 0;
      WORD5(buf) = 0;
      CAPropertyAddressList::AppendUniqueItem(&v194, &buf, v25);
      strcpy(&buf, "#patbolg");
      BYTE9(buf) = 0;
      WORD5(buf) = 0;
      CAPropertyAddressList::AppendUniqueItem(&v194, &buf, v26);
      HALS_MetaDevice::RegisterTaps(this);
    }

    _Block_object_dispose(v208, 8);
LABEL_74:
    v66 = 0;
    v67 = 1;
    goto LABEL_103;
  }

  if (mSelector > 1667461732)
  {
    if ((mSelector - 1685278561) <= 0x11 && ((1 << (mSelector - 97)) & 0x20003) != 0 || mSelector == 1667461733)
    {
      v33 = *(this + 208);
      if (v33 && (mSelector == 1685278578 || mSelector == 1685278561))
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v218 = 0x2000000000;
        LOBYTE(v219) = 0;
        v34 = *v33;
        *v208 = MEMORY[0x1E69E9820];
        *&v208[8] = 0x40000000;
        *&v208[16] = ___ZN25HALS_MetaDevice_HostedDSP15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke;
        *&v208[24] = &unk_1E8673018;
        v211 = a3;
        v212 = a5;
        v215 = a4;
        v216 = a6;
        v213 = a7;
        v214 = a8;
        v210 = v33;
        v209 = &buf;
        v35 = (*(*v34 + 64))(v34);
        HALB_CommandGate::ExecuteCommand(v35, v208);
        if (*(*(&buf + 1) + 24) == 1)
        {
          v36 = *v33;
          v37 = *(*v33 + 16);
          if (a8)
          {
            v38 = a8[1].mScope;
          }

          else
          {
            v38 = 0;
          }

          mElement = a3->mElement;
          v197 = *&a3->mSelector;
          LODWORD(v198) = mElement;
          HALS_Object::PropertiesChanged(v36, v37, v38, 1, &v197);
        }

        v71 = &buf;
        goto LABEL_97;
      }
    }

    else if (mSelector == 1685087596)
    {
      if (a4 <= 3)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_251;
        }

        *v208 = 136315394;
        *&v208[4] = "HALS_MetaDevice.cpp";
        *&v208[12] = 1024;
        *&v208[14] = 2681;
        v157 = MEMORY[0x1E69E9C10];
        v158 = "%25s:%-5d  HALS_MetaDevice::SetPropertyData: bad property data size for kAudioDevicePropertyEnableListening";
        goto LABEL_250;
      }

      *v208 = 0;
      *&v208[8] = v208;
      *&v208[16] = 0x2000000000;
      *&v208[24] = 0;
      v184[0] = MEMORY[0x1E69E9820];
      v184[1] = 0x40000000;
      v184[2] = ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_118;
      v184[3] = &unk_1E8674F88;
      v184[5] = this;
      v184[6] = a5;
      v184[4] = v208;
      v27 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v27, v184);
      if (*(*&v208[8] + 24))
      {
        v28 = __cxa_allocate_exception(0x10uLL);
        v29 = *(*&v208[8] + 24);
        *v28 = off_1F5991DD8;
        v28[2] = v29;
      }

LABEL_80:
      v71 = v208;
LABEL_97:
      _Block_object_dispose(v71, 8);
      goto LABEL_98;
    }

    goto LABEL_68;
  }

  if (mSelector != 1633906541)
  {
    if (mSelector == 1634562932)
    {
      if (a4 > 7)
      {
        HALS_DeviceState::HALS_DeviceState(v208);
        HALS_DeviceState::Capture(v208, this, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
        v197 = 0;
        v198 = &v197;
        v199 = 0x2000000000;
        LODWORD(v200) = 0;
        v186[0] = MEMORY[0x1E69E9820];
        v186[1] = 0x40000000;
        v186[2] = ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_114;
        v186[3] = &unk_1E8674F38;
        v186[6] = a5;
        v186[7] = &v196;
        v186[4] = &v197;
        v186[5] = this;
        v62 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v62, v186);
        if (*(v198 + 24))
        {
          v163 = __cxa_allocate_exception(0x10uLL);
          v164 = *(v198 + 24);
          *v163 = off_1F5991DD8;
          v163[2] = v164;
        }

        HALS_DeviceState::HALS_DeviceState(&buf);
        HALS_DeviceState::Capture(v63, this, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
        HALS_DeviceState::Compare(v208, &buf, &v194, &v191);
        *&v207[0] = 0x676C6F62616D7374;
        DWORD2(v207[0]) = 0;
        CAPropertyAddressList::AppendUniqueItem(&v194, v207, v64);
        *&v207[0] = 0x676C6F6261636F6DLL;
        DWORD2(v207[0]) = 0;
        CAPropertyAddressList::AppendUniqueItem(&v194, v207, v65);
        goto LABEL_72;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v208 = 136315394;
        *&v208[4] = "HALS_MetaDevice.cpp";
        *&v208[12] = 1024;
        *&v208[14] = 2609;
        v157 = MEMORY[0x1E69E9C10];
        v158 = "%25s:%-5d  HALS_MetaDevice::SetPropertyData: bad property data size for kAudioAggregateDevicePropertyMainSubDevice";
        goto LABEL_250;
      }

LABEL_251:
      v173 = __cxa_allocate_exception(0x10uLL);
      *v173 = off_1F5991DD8;
      v173[2] = 561211770;
    }

    if (mSelector == 1634755428)
    {
      if (a4 > 7)
      {
        HALS_DeviceState::HALS_DeviceState(v208);
        HALS_DeviceState::Capture(v208, this, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
        v197 = 0;
        v198 = &v197;
        v199 = 0x2000000000;
        LODWORD(v200) = 0;
        v185[0] = MEMORY[0x1E69E9820];
        v185[1] = 0x40000000;
        v185[2] = ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_116;
        v185[3] = &unk_1E8674F60;
        v185[6] = a5;
        v185[7] = &v196;
        v185[4] = &v197;
        v185[5] = this;
        v20 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v20, v185);
        if (*(v198 + 24))
        {
          v161 = __cxa_allocate_exception(0x10uLL);
          v162 = *(v198 + 24);
          *v161 = off_1F5991DD8;
          v161[2] = v162;
        }

        HALS_DeviceState::HALS_DeviceState(&buf);
        HALS_DeviceState::Capture(v21, this, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
        HALS_DeviceState::Compare(v208, &buf, &v194, &v191);
        *&v207[0] = 0x676C6F6261706364;
        DWORD2(v207[0]) = 0;
        CAPropertyAddressList::AppendUniqueItem(&v194, v207, v22);
        *&v207[0] = 0x676C6F6261636F6DLL;
        DWORD2(v207[0]) = 0;
        CAPropertyAddressList::AppendUniqueItem(&v194, v207, v23);
        HALS_Device::UpdateInternalIOContext(this);
LABEL_72:
        HALS_DeviceState::~HALS_DeviceState(&buf);
        _Block_object_dispose(&v197, 8);
LABEL_73:
        HALS_DeviceState::~HALS_DeviceState(v208);
        goto LABEL_74;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v208 = 136315394;
        *&v208[4] = "HALS_MetaDevice.cpp";
        *&v208[12] = 1024;
        *&v208[14] = 2645;
        v157 = MEMORY[0x1E69E9C10];
        v158 = "%25s:%-5d  HALS_MetaDevice::SetPropertyData: bad property data size for kAudioAggregateDevicePropertyClockDevice";
LABEL_250:
        _os_log_impl(&dword_1DE1F9000, v157, OS_LOG_TYPE_ERROR, v158, v208, 0x12u);
        goto LABEL_251;
      }

      goto LABEL_251;
    }

    goto LABEL_68;
  }

  if (a4 <= 7)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_251;
    }

    *v208 = 136315394;
    *&v208[4] = "HALS_MetaDevice.cpp";
    *&v208[12] = 1024;
    *&v208[14] = 2540;
    v157 = MEMORY[0x1E69E9C10];
    v158 = "%25s:%-5d  HALS_MetaDevice::SetPropertyData: bad property data size for kAudioAggregateDevicePropertyComposition";
    goto LABEL_250;
  }

  v68 = pthread_self();
  if (AMCP::Utility::is_thread_configured_for_realtime(v68, v69))
  {
    std::vector<void *>::vector[abi:ne200100](&v197);
  }

  HALS_DeviceState::HALS_DeviceState(v208);
  HALS_DeviceState::Capture(v208, this, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
  HALS_MetaDevice::UnregisterTaps(this);
  v197 = 0;
  v198 = &v197;
  v199 = 0x2000000000;
  LODWORD(v200) = 0;
  v187[0] = MEMORY[0x1E69E9820];
  v187[1] = 0x40000000;
  v187[2] = ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_112;
  v187[3] = &unk_1E8674F10;
  v187[6] = a5;
  v187[7] = &v196;
  v187[4] = &v197;
  v187[5] = this;
  v88 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v88, v187);
  if (*(v198 + 24))
  {
    v165 = __cxa_allocate_exception(0x10uLL);
    v166 = *(v198 + 24);
    *v165 = off_1F5991DD8;
    v165[2] = v166;
  }

  HALS_DeviceState::HALS_DeviceState(&buf);
  HALS_DeviceState::Capture(v89, this, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
  HALS_DeviceState::Compare(v208, &buf, &v194, &v191);
  *&v207[0] = 0x676C6F62616D7374;
  DWORD2(v207[0]) = 0;
  CAPropertyAddressList::AppendUniqueItem(&v194, v207, v90);
  *&v207[0] = 0x676C6F6261706364;
  DWORD2(v207[0]) = 0;
  CAPropertyAddressList::AppendUniqueItem(&v194, v207, v91);
  *&v207[0] = 0x676C6F6267727570;
  DWORD2(v207[0]) = 0;
  CAPropertyAddressList::AppendUniqueItem(&v194, v207, v92);
  *&v207[0] = 0x676C6F6261746170;
  DWORD2(v207[0]) = 0;
  CAPropertyAddressList::AppendUniqueItem(&v194, v207, v93);
  *&v207[0] = 0x676C6F6261636F6DLL;
  DWORD2(v207[0]) = 0;
  CAPropertyAddressList::AppendUniqueItem(&v194, v207, v94);
  *&v207[0] = 0x676C6F6274617023;
  DWORD2(v207[0]) = 0;
  CAPropertyAddressList::AppendUniqueItem(&v194, v207, v95);
  HALS_MetaDevice::RegisterTaps(this);
LABEL_102:
  HALS_DeviceState::~HALS_DeviceState(&buf);
  _Block_object_dispose(&v197, 8);
  HALS_DeviceState::~HALS_DeviceState(v208);
  v67 = 1;
  v66 = 1;
LABEL_103:
  if ((v196 & 0x100) != 0 || v196 == 1)
  {
    strcpy(&buf, "#mtsbolg");
    BYTE9(buf) = 0;
    WORD5(buf) = 0;
    CAPropertyAddressList::AppendUniqueItem(&v194, &buf, v32);
    if ((v196 & 0x100) != 0)
    {
      strcpy(&buf, "#mtstpni");
      BYTE9(buf) = 0;
      WORD5(buf) = 0;
      CAPropertyAddressList::AppendUniqueItem(&v194, &buf, v32);
    }
  }

  if (v196 == 1)
  {
    strcpy(&buf, "#mtsptuo");
    BYTE9(buf) = 0;
    WORD5(buf) = 0;
    CAPropertyAddressList::AppendUniqueItem(&v194, &buf, v32);
  }

  if ((v196 & 0x100) != 0 || v196 == 1)
  {
    if (v194 == *(&v194 + 1))
    {
      v96 = v191;
      while (v96 != v192)
      {
        v97 = *v96;
        v98 = *(v96 + 1);
        v96 = (v96 + 32);
        if (v97 != v98)
        {
          goto LABEL_115;
        }
      }
    }

    else
    {
LABEL_115:
      strcpy(&buf, "ffidbolg");
      BYTE9(buf) = 0;
      WORD5(buf) = 0;
      CAPropertyAddressList::AppendUniqueItem(&v194, &buf, v32);
    }
  }

  v99 = v194;
  if (v194 != *(&v194 + 1))
  {
    if (a8)
    {
      v100 = a8[1].mScope;
    }

    else
    {
      v100 = 0;
    }

    HALS_Object::PropertiesChanged(this, *(this + 4), v100, -1431655765 * ((*(&v194 + 1) - v194) >> 2), v194);
  }

  v101 = v191;
  v102 = v192 - v191;
  if (((v192 - v191) & 0x1FFFFFFFE0) != 0)
  {
    v103 = 0;
    v104 = 0;
    do
    {
      if (v104 >= v102 >> 5)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v105 = v101 + v103;
      v106 = HALS_ObjectMap::CopyObjectByObjectID(*(v101 + v103 + 24));
      v108 = v106;
      v109 = *(v105 + 1);
      if (*v105 != v109 && v106 != 0)
      {
        if (a8)
        {
          v111 = a8[1].mScope;
        }

        else
        {
          v111 = 0;
        }

        HALS_Object::PropertiesChanged(this, *(v106 + 16), v111, -1431655765 * ((v109 - *v105) >> 2), *v105);
      }

      HALS_ObjectMap::ReleaseObject(v108, v107);
      ++v104;
      v101 = v191;
      v102 = v192 - v191;
      v103 += 32;
    }

    while (v104 < ((v192 - v191) >> 5));
  }

  if (((v67 | v66) & 1) != 0 && ((v196 & 0x100) != 0 || v196 == 1))
  {
    v112 = *(*(this + 182) + 16);
    v113 = a8 ? a8[1].mScope : 0;
    strcpy(v208, "#vedbolg");
    v208[9] = 0;
    *&v208[10] = 0;
    HALS_Object::PropertiesChanged(this, v112, v113, 1, v208);
    v175[0] = 0;
    v175[1] = 0;
    HALS_System::GetInstance(v208, 0, v175);
    HALS_System::CheckForDefaultDeviceChanges(*v208);
    if (*&v208[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v208[8]);
    }
  }

  *v208 = &v191;
  std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](v208);
  if (v99)
  {
    operator delete(v99);
  }

  v114 = *MEMORY[0x1E69E9840];
}

void sub_1DE4343C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (SLOBYTE(STACK[0x377]) < 0)
  {
    operator delete(STACK[0x360]);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&STACK[0x380]);
  MEMORY[0x1E12C15F0](a12);
  v14 = STACK[0x300];
  if (STACK[0x300])
  {
    STACK[0x308] = v14;
    operator delete(v14);
  }

  *(v12 - 208) = &STACK[0x2B8];
  std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100]((v12 - 208));
  if (STACK[0x2D0])
  {
    operator delete(STACK[0x2D0]);
  }

  _Unwind_Resume(a1);
}

void ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = **(a1 + 48);
  OS::CF::MutableDictionary::MutableDictionary(&v4, *(v1 + 1488));
  if (v2)
  {
    OS::CF::MutableDictionary::SetValueForKey<OS::CF::String>(theDict, @"name", v2);
  }

  else
  {
    OS::CF::MutableDictionary::RemoveKey(theDict, @"name");
  }

  Copy = theDict;
  if (theDict)
  {
    Copy = CFDictionaryCreateCopy(0, theDict);
  }

  OS::CF::UntypedObject::operator=(v1 + 1480, Copy);
  OS::CF::UntypedObject::~UntypedObject(&v4);
}

void ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_108(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = **(a1 + 48);
  v3 = *(a1 + 56);
  v4 = v1[187];
  v5 = v1[188];
  while (v4 != v5)
  {
    v6 = *v4;
    v7 = v4[1];
    while (v6 != v7)
    {
      v8 = HALS_MetaSubDevice::CopyRealIODevice(*v6);
      v10 = v8;
      if (v8)
      {
        (*(*v8 + 280))(v8, v3, v2);
      }

      HALS_ObjectMap::ReleaseObject(v10, v9);
      ++v6;
    }

    v4 += 3;
  }

  v11 = v1[193];
  for (i = v1[194]; v11 != i; v11 += 8)
  {
    v13 = HALS_ObjectMap::CopyObjectByObjectID(*(*v11 + 72));
    v15 = v13;
    if (v13)
    {
      v16 = *(v13 + 264);
      v17 = *(v15 + 34);
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        if (v2 != 0.0)
        {
          v18 = *(v16 + 40);
          v24 = *(v16 + 24);
          v25 = v18;
          v26 = *(v16 + 56);
          *&v24 = v2;
          HALS_MultiTap::set_format(v16, &v24, 0);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      else if (v2 != 0.0)
      {
        v19 = *(v16 + 40);
        v24 = *(v16 + 24);
        v25 = v19;
        v26 = *(v16 + 56);
        *&v24 = v2;
        HALS_MultiTap::set_format(v16, &v24, 0);
      }
    }

    HALS_ObjectMap::ReleaseObject(v15, v14);
  }

  v20 = v1[197];
  if (v20)
  {
    v21 = HALS_MetaSubDevice::CopyRealIODevice(v20);
    v23 = v21;
    if (v21)
    {
      (*(*v21 + 280))(v21, v3, v2);
    }

    HALS_ObjectMap::ReleaseObject(v23, v22);
  }
}

void sub_1DE4349C8(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v28 = a2;
  HALS_ObjectMap::ReleaseObject(v27, a2);
  v30 = __cxa_begin_catch(a1);
  if (v28 == 2)
  {
    v31 = v30[2];
  }

  else
  {
    v31 = 2003329396;
  }

  *(*(*(v26 + 32) + 8) + 24) = v31;

  __cxa_end_catch();
}

void ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_110(uint64_t a1)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *v2;
  if (*v2)
  {
    CFRetain(*v2);
  }

  v15 = &unk_1F59910D0;
  v16 = v4;
  OS::CF::MutableArray::MutableArray(&v13);
  Size = OS::CF::ArrayBase<__CFArray const*>::GetSize(v16);
  if (Size)
  {
    v6 = Size;
    for (i = 0; i != v6; ++i)
    {
      OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::String>(&v11, &v15, i);
      if (v12)
      {
        v17[0] = @"uid";
        v17[1] = v12;
        OS::CF::Dictionary::Dictionary(v10, v17, 1uLL);
        OS::CF::MutableArray::AppendValue<OS::CF::Dictionary>(v14, v10[1]);
        OS::CF::UntypedObject::~UntypedObject(v10);
      }

      OS::CF::UntypedObject::~UntypedObject(&v11);
    }
  }

  OS::CF::MutableDictionary::MutableDictionary(&v11, v3[186]);
  OS::CF::MutableDictionary::SetValueForKey<OS::CF::MutableArray>(v12, @"subdevices", v14);
  Copy = v12;
  if (v12)
  {
    Copy = CFDictionaryCreateCopy(0, v12);
  }

  OS::CF::UntypedObject::operator=((v3 + 185), Copy);
  HALS_MetaDeviceDescription::UpdateSubDeviceList(v3 + 184, 0);
  HALS_MetaDeviceDescription::UpdateSubTapList((v3 + 184));
  OS::CF::UntypedObject::~UntypedObject(&v11);
  OS::CF::UntypedObject::~UntypedObject(&v13);
  OS::CF::UntypedObject::~UntypedObject(&v15);
  HALS_MetaDevice::_UpdateStreams(v3, *(a1 + 56));
  v9 = *MEMORY[0x1E69E9840];
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x1E12C1140](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

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

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    ++v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_1DE434E24(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1DE434DE4);
  }

  __cxa_rethrow();
}

void HALS_MetaDevice::UnregisterTaps(HALS_MetaDevice *this)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3802000000;
  v24 = __Block_byref_object_copy__134;
  v25 = __Block_byref_object_dispose__135;
  v26[0] = &unk_1F59910D0;
  v26[1] = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 0x40000000;
  v20[2] = ___ZN15HALS_MetaDevice14UnregisterTapsEv_block_invoke;
  v20[3] = &unk_1E8675040;
  v20[4] = &v21;
  v20[5] = this;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v20);
  v3 = v22[6];
  if (v3)
  {
    for (i = 0; OS::CF::ArrayBase<__CFArray const*>::GetSize(v3) > i; ++i)
    {
      OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(v18, (v22 + 5), i);
      if (theDict)
      {
        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v16, theDict, @"uid");
        v13[0] = 0;
        v13[1] = 0;
        HALS_System::GetInstance(&v14, 0, v13);
        v6 = HALS_System::CopyTapByUUID(v14, v17);
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        if (v6)
        {
          v7 = *(v6 + 33);
          v8 = *(v6 + 34);
          if (v8)
          {
            atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
            HALS_MultiTap::unregister_meta_device(v7, *(this + 4));
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }

          else
          {
            HALS_MultiTap::unregister_meta_device(v7, *(this + 4));
          }

          v12[0] = 0;
          v12[1] = 0;
          HALS_System::GetInstance(&v14, 0, v12);
          v9 = v14;
          v10 = *(v6 + 34);
          v11[0] = *(v6 + 33);
          v11[1] = v10;
          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          HALS_System::RemoveTapFromAllContexts(v9, v11);
          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          }

          if (v15)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          }
        }

        HALS_ObjectMap::ReleaseObject(v6, v5);
        OS::CF::UntypedObject::~UntypedObject(v16);
      }

      OS::CF::UntypedObject::~UntypedObject(v18);
      v3 = v22[6];
    }
  }

  _Block_object_dispose(&v21, 8);
  OS::CF::UntypedObject::~UntypedObject(v26);
}

void sub_1DE435100(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 120), 8);
  OS::CF::UntypedObject::~UntypedObject(v1);
  _Unwind_Resume(a1);
}

void ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_112(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *v2;
  if (*v2)
  {
    CFRetain(*v2);
    v5 = v3 + 1480;
    v6 = v4;
  }

  else
  {
    v5 = v3 + 1480;
    v6 = 0;
  }

  OS::CF::UntypedObject::operator=(v5, v6);
  HALS_MetaDeviceDescription::UpdateSubDeviceList((v3 + 1472), 0);
  HALS_MetaDeviceDescription::UpdateSubTapList((v3 + 1472));
  atomic_store(HALS_MetaDeviceDescription::IsPrivate((v3 + 1472)), (v3 + 1592));
  atomic_store(HALS_MetaDeviceDescription::IsolatedUseCaseID((v3 + 1472)), (v3 + 1600));
  HALS_MetaDevice::_UpdateStreams(v3, *(a1 + 56));
}

void sub_1DE43521C(void *a1, int a2)
{
  v4 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v5 = v4[2];
  }

  else
  {
    v5 = 2003329396;
  }

  *(*(*(v2 + 32) + 8) + 24) = v5;

  __cxa_end_catch();
}

void HALS_MetaDevice::RegisterTaps(HALS_MetaDevice *this)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3802000000;
  v20 = __Block_byref_object_copy__134;
  v21 = __Block_byref_object_dispose__135;
  v22[0] = &unk_1F59910D0;
  v22[1] = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 0x40000000;
  v16[2] = ___ZN15HALS_MetaDevice12RegisterTapsEv_block_invoke;
  v16[3] = &unk_1E8675018;
  v16[4] = &v17;
  v16[5] = this;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v16);
  v3 = v18[6];
  if (v3)
  {
    for (i = 0; OS::CF::ArrayBase<__CFArray const*>::GetSize(v3) > i; ++i)
    {
      OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(v14, (v18 + 5), i);
      if (theDict)
      {
        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v12, theDict, @"uid");
        v9[0] = 0;
        v9[1] = 0;
        HALS_System::GetInstance(&v10, 0, v9);
        v6 = HALS_System::CopyTapByUUID(v10, v13);
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        if (v6 && *(v6 + 256) == 1)
        {
          v7 = *(v6 + 264);
          v8 = *(v6 + 272);
          if (v8)
          {
            atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
            HALS_MultiTap::register_meta_device(v7, *(this + 4));
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }

          else
          {
            HALS_MultiTap::register_meta_device(v7, *(this + 4));
          }

          HALS_Tap::AddTapToAllContexts(v6);
        }

        HALS_ObjectMap::ReleaseObject(v6, v5);
        OS::CF::UntypedObject::~UntypedObject(v12);
      }

      OS::CF::UntypedObject::~UntypedObject(v14);
      v3 = v18[6];
    }
  }

  _Block_object_dispose(&v17, 8);
  OS::CF::UntypedObject::~UntypedObject(v22);
}

void sub_1DE43547C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  OS::CF::UntypedObject::~UntypedObject(v16);
  _Unwind_Resume(a1);
}

void ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_114(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *v2;
  if (*v2 && HALS_MetaDeviceDescription::IsDeviceInRawDescription(v3 + 184, *v2))
  {
    OS::CF::MutableDictionary::MutableDictionary(&v6, v3[186]);
    OS::CF::MutableDictionary::SetValueForKey<OS::CF::String>(theDict, @"master", v4);
    Copy = theDict;
    if (theDict)
    {
      Copy = CFDictionaryCreateCopy(0, theDict);
    }

    OS::CF::UntypedObject::operator=((v3 + 185), Copy);
    HALS_MetaDeviceDescription::UpdateSubDeviceList(v3 + 184, 0);
    HALS_MetaDeviceDescription::UpdateSubTapList((v3 + 184));
    OS::CF::UntypedObject::~UntypedObject(&v6);
  }

  HALS_MetaDevice::_UpdateStreams(v3, *(a1 + 56));
}

void sub_1DE435594(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OS::CF::UntypedObject::~UntypedObject(&v21);
  v19 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v20 = v19[2];
  }

  else
  {
    v20 = 2003329396;
  }

  *(*(*(v16 + 32) + 8) + 24) = v20;

  __cxa_end_catch();
}

void ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_116(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 40);
  v3 = **(a1 + 48);
  if (v3)
  {
    OS::CF::MutableDictionary::MutableDictionary(v41, *(v2 + 1488));
    OS::CF::MutableDictionary::SetValueForKey<OS::CF::String>(theDict, @"clock", v3);
    applesauce::CF::StringRef::from_get(&cf, v3);
    ClockSubDevice = HALS_MetaDeviceDescription::AllocateClockSubDevice(v2 + 1472, &cf);
    v32 = v1;
    v33 = v2;
    if (cf)
    {
      CFRelease(cf);
    }

    v34 = ClockSubDevice;
    if (ClockSubDevice)
    {
      ClockDomain = HALS_MetaSubDevice::GetClockDomain(ClockSubDevice);
      v6 = *(v2 + 1496);
      v35 = *(v2 + 1504);
      if (v6 != v35)
      {
        v7 = ClockDomain;
        v36 = ClockDomain;
        while (1)
        {
          v8 = *v6;
          v39 = v6[1];
          v37 = v6;
          if (*v6 != v39)
          {
            break;
          }

LABEL_48:
          v6 += 3;
          if (v6 == v35)
          {
            goto LABEL_49;
          }
        }

        while (1)
        {
          v45 = 0x676C6F6264726674;
          v46 = 0;
          v9 = HALS_MetaSubDevice::GetClockDomain(*v8);
          v10 = v9 && v9 == v7;
          v11 = !v10;
          v44 = v11;
          (*(**v8 + 128))(*v8, *(*v8 + 4), &v45, 4, &v44, 0, 0, 0);
          if (v44)
          {
            break;
          }

LABEL_47:
          if (++v8 == v39)
          {
            goto LABEL_48;
          }
        }

        v12 = HALS_MetaSubDevice::CopyRealDeviceUID(*v8);
        v13 = v12;
        v43 = v12;
        if (v12)
        {
          v14 = CFGetTypeID(v12);
          if (v14 != CFStringGetTypeID())
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }
        }

        v60 = &unk_1F59910D0;
        v61 = 0;
        if (theDict)
        {
          value = 0;
          if (CFDictionaryGetValueIfPresent(theDict, @"subdevices", &value))
          {
            v15 = value ? CFGetTypeID(value) : 0;
            if (v15 == CFArrayGetTypeID())
            {
              v16 = value;
              if (value)
              {
                CFRetain(value);
                v17 = v61;
                v61 = v16;
                if (!v17)
                {
LABEL_29:
                  v38 = v8;
                  OS::CF::MutableArray::MutableArray(&value);
                  Size = OS::CF::ArrayBase<__CFArray const*>::GetSize(v61);
                  if (Size)
                  {
                    v19 = Size;
                    v20 = 0;
                    v21 = 0;
                    for (i = 0; i < v19; v20 = ++i)
                    {
                      OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Array>(v56, &v60, v20);
                      OS::CF::MutableArray::MutableArray(v54);
                      v23 = OS::CF::ArrayBase<__CFArray const*>::GetSize(v57);
                      if (v23)
                      {
                        v24 = v23;
                        v25 = 0;
                        v26 = 1;
                        do
                        {
                          OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(v52, v56, v25);
                          OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v50, v53, @"uid");
                          if (v13)
                          {
                            CFRetain(v13);
                          }

                          v48 = &unk_1F5991188;
                          v49 = v13;
                          v27 = OS::CF::operator==(theString1, v13);
                          OS::CF::UntypedObject::~UntypedObject(&v48);
                          if (v27)
                          {
                            OS::CF::MutableDictionary::MutableDictionary(&v48, v53);
                            v21 = 1;
                            OS::CF::Number::Number<int>(v47, 1);
                            OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(v49, @"drift", v47[1]);
                            OS::CF::UntypedObject::~UntypedObject(v47);
                            OS::CF::MutableArray::AppendValue<OS::CF::MutableDictionary>(v55, v49);
                            OS::CF::UntypedObject::~UntypedObject(&v48);
                          }

                          else
                          {
                            OS::CF::MutableArray::AppendValue<OS::CF::Dictionary>(v59, v53);
                          }

                          OS::CF::UntypedObject::~UntypedObject(v50);
                          OS::CF::UntypedObject::~UntypedObject(v52);
                          v25 = v26;
                        }

                        while (v24 > v26++);
                      }

                      if (v21)
                      {
                        OS::CF::MutableArray::AppendValue<OS::CF::MutableArray>(v59, v55);
                      }

                      OS::CF::UntypedObject::~UntypedObject(v54);
                      OS::CF::UntypedObject::~UntypedObject(v56);
                    }

                    v7 = v36;
                    v6 = v37;
                    if (v21)
                    {
                      OS::CF::MutableDictionary::SetValueForKey<OS::CF::MutableArray>(theDict, @"subdevices", v59);
                    }
                  }

                  OS::CF::UntypedObject::~UntypedObject(&value);
                  v8 = v38;
                  goto LABEL_45;
                }
              }

              else
              {
                v17 = v61;
                v61 = 0;
                if (!v17)
                {
                  goto LABEL_45;
                }
              }

              CFRelease(v17);
            }
          }

          if (v61)
          {
            goto LABEL_29;
          }
        }

LABEL_45:
        OS::CF::UntypedObject::~UntypedObject(&v60);
        if (v13)
        {
          CFRelease(v13);
        }

        goto LABEL_47;
      }
    }

LABEL_49:
    Copy = theDict;
    if (theDict)
    {
      Copy = CFDictionaryCreateCopy(0, theDict);
    }

    v1 = v32;
    v2 = v33;
    OS::CF::UntypedObject::operator=(v33 + 1480, Copy);
    HALS_MetaDeviceDescription::UpdateSubDeviceList((v33 + 1472), 0);
    HALS_MetaDeviceDescription::UpdateSubTapList((v33 + 1472));
    HALS_ObjectMap::ReleaseObject(v34, v30);
    OS::CF::UntypedObject::~UntypedObject(v41);
  }

  HALS_MetaDevice::_UpdateStreams(v2, *(v1 + 56));
}

void sub_1DE435AA4(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, HALS_ObjectMap *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v57 = a2;
  HALS_ObjectMap::ReleaseObject(v62, a2);
  OS::CF::UntypedObject::~UntypedObject(&v63);
  v59 = __cxa_begin_catch(a1);
  if (v57 == 2)
  {
    v60 = v59[2];
  }

  else
  {
    v60 = 2003329396;
  }

  *(*(*(v61 + 32) + 8) + 24) = v60;

  __cxa_end_catch();
}

void ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_118(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 1496);
  v3 = *(v1 + 1504);
  if (v2 != v3)
  {
    v4 = **(a1 + 48) != 0;
    do
    {
      v5 = *v2;
      v6 = v2[1];
      while (v5 != v6)
      {
        v7 = HALS_MetaSubDevice::CopyRealDevice<HALS_Device>(*v5);
        v9 = v7;
        if (v7)
        {
          v10 = v7[4];
          v11 = 0x676C6F626470656CLL;
          v12 = 0;
          v13 = v4;
          (*(*v7 + 128))(v7, v10, &v11, 4, &v13, 0, 0, 0);
        }

        HALS_ObjectMap::ReleaseObject(v9, v8);
        ++v5;
      }

      v2 += 3;
    }

    while (v2 != v3);
  }
}

void sub_1DE435CA8(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v24 = a2;
  HALS_ObjectMap::ReleaseObject(v23, a2);
  v26 = __cxa_begin_catch(a1);
  if (v24 == 2)
  {
    v27 = v26[2];
  }

  else
  {
    v27 = 2003329396;
  }

  *(*(*(v22 + 32) + 8) + 24) = v27;

  __cxa_end_catch();
}

void ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_127(uint64_t a1)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  if (v3 == 2)
  {
    LODWORD(v25[0]) = 3;
    std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v20, v25, 1);
    HALS_MetaDeviceDescription::SetSubDSPTypesForClient(&v2[23], v20);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v20[1]);
    v8 = *(a1 + 60);
    v9 = *(a1 + 40);
    LODWORD(v25[0]) = 3;
    std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v19, v25, 1);
    v21 = 2;
    std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v18, &v21, 1);
    v6 = HALS_Device::_ConfigureDSPTypesForClient(v2, v8, v9, v19, v18);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v18[1]);
    v7 = v19[1];
  }

  else if (v3 == 1)
  {
    LODWORD(v25[0]) = 2;
    std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v24, v25, 1);
    HALS_MetaDeviceDescription::SetSubDSPTypesForClient(&v2[23], v24);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v24[1]);
    v4 = *(a1 + 60);
    v5 = *(a1 + 40);
    LODWORD(v25[0]) = 2;
    std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v23, v25, 1);
    v21 = 3;
    std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v22, &v21, 1);
    v6 = HALS_Device::_ConfigureDSPTypesForClient(v2, v4, v5, v23, v22);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v22[1]);
    v7 = v23[1];
  }

  else
  {
    v17[0] = 0;
    v17[1] = 0;
    v16 = v17;
    HALS_MetaDeviceDescription::SetSubDSPTypesForClient(&v2[23], &v16);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v17[0]);
    v10 = *(a1 + 60);
    v11 = *(a1 + 40);
    v15[0] = 0;
    v15[1] = 0;
    v14 = v15;
    v25[0] = 0x200000003;
    std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v13, v25, 2);
    v6 = HALS_Device::_ConfigureDSPTypesForClient(v2, v10, v11, &v14, v13);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v13[1]);
    v7 = v15[0];
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v7);
  **(a1 + 48) = v6;
  v12 = *MEMORY[0x1E69E9840];
}

void sub_1DE435F48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a2)
  {
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a19);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a22);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE435F14);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_130(uint64_t a1)
{
  v2 = *(a1 + 60);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(a1 + 56))
  {
    v12 = 6;
    std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v13, &v12, 1);
    v11[0] = 0;
    v11[1] = 0;
    v10 = v11;
    v5 = HALS_Device::_ConfigureDSPTypesForClient(v4, v2, v3, v13, &v10);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v11[0]);
    v6 = v13[1];
  }

  else
  {
    v9[0] = 0;
    v9[1] = 0;
    v8 = v9;
    v12 = 6;
    std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](v7, &v12, 1);
    v5 = HALS_Device::_ConfigureDSPTypesForClient(v4, v2, v3, &v8, v7);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v7[1]);
    v6 = v9[0];
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v6);
  **(a1 + 48) = v5;
}

void sub_1DE4360D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14)
{
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a11);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(a14);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE4360C4);
}

void ___ZN15HALS_MetaDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_132(uint64_t a1)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *v2;
  if (*v2)
  {
    CFRetain(*v2);
  }

  v15 = &unk_1F59910D0;
  v16 = v4;
  OS::CF::MutableArray::MutableArray(&v13);
  Size = OS::CF::ArrayBase<__CFArray const*>::GetSize(v16);
  if (Size)
  {
    v6 = Size;
    for (i = 0; i != v6; ++i)
    {
      OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::String>(&v11, &v15, i);
      if (v12)
      {
        v17[0] = @"uid";
        v17[1] = v12;
        OS::CF::Dictionary::Dictionary(v10, v17, 1uLL);
        OS::CF::MutableArray::AppendValue<OS::CF::Dictionary>(v14, v10[1]);
        OS::CF::UntypedObject::~UntypedObject(v10);
      }

      OS::CF::UntypedObject::~UntypedObject(&v11);
    }
  }

  OS::CF::MutableDictionary::MutableDictionary(&v11, v3[186]);
  OS::CF::MutableDictionary::SetValueForKey<OS::CF::MutableArray>(v12, @"taps", v14);
  Copy = v12;
  if (v12)
  {
    Copy = CFDictionaryCreateCopy(0, v12);
  }

  OS::CF::UntypedObject::operator=((v3 + 185), Copy);
  HALS_MetaDeviceDescription::UpdateSubDeviceList(v3 + 184, 0);
  HALS_MetaDeviceDescription::UpdateSubTapList((v3 + 184));
  OS::CF::UntypedObject::~UntypedObject(&v11);
  OS::CF::UntypedObject::~UntypedObject(&v13);
  OS::CF::UntypedObject::~UntypedObject(&v15);
  HALS_MetaDevice::_UpdateStreams(v3, *(a1 + 56));
  v9 = *MEMORY[0x1E69E9840];
}

void *std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](void *a1, unsigned int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 4 * a3;
    do
    {
      std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_hint_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType const&>(a1, v4, *a2++);
      v6 -= 4;
    }

    while (v6);
  }

  return a1;
}

__n128 __Block_byref_object_copy__139(void *a1, uint64_t a2)
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

void __Block_byref_object_dispose__140(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZN15HALS_MetaDevice25NotifyDSPChangedForClientEbP11HALS_Client_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = (*(*v2 + 576))(v2, *(a1 + 56), *(a1 + 48));
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    do
    {
      v6 = (*(*v2 + 600))(v2, *(a1 + 56), v5, *(a1 + 48));
      v8 = v6;
      if (v6 && *(v6 + 56) == 2)
      {
        v9 = *(*(a1 + 32) + 8);
        v10 = *(v6 + 16);
        v12 = v9[6];
        v11 = v9[7];
        if (v12 >= v11)
        {
          v14 = v9[5];
          v15 = v12 - v14;
          v16 = (v12 - v14) >> 2;
          v17 = v16 + 1;
          if ((v16 + 1) >> 62)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v18 = v11 - v14;
          if (v18 >> 1 > v17)
          {
            v17 = v18 >> 1;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v19 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v19);
          }

          v20 = (v12 - v14) >> 2;
          v21 = (4 * v16);
          v22 = (4 * v16 - 4 * v20);
          *v21 = v10;
          v13 = v21 + 1;
          memcpy(v22, v14, v15);
          v23 = v9[5];
          v9[5] = v22;
          v9[6] = v13;
          v9[7] = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v12 = v10;
          v13 = v12 + 4;
        }

        v9[6] = v13;
      }

      HALS_ObjectMap::ReleaseObject(v8, v7);
      v5 = (v5 + 1);
    }

    while (v4 != v5);
  }
}

uint64_t __Block_byref_object_copy__134(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 40) = &unk_1F59910D0;
  return result;
}

uint64_t ___ZN15HALS_MetaDevice12RegisterTapsEv_block_invoke(uint64_t a1)
{
  v2 = HALS_MetaDeviceDescription::CopyTapList(*(*(a1 + 40) + 1488));
  v3 = *(*(a1 + 32) + 8) + 40;

  return OS::CF::UntypedObject::operator=(v3, v2);
}

uint64_t ___ZN15HALS_MetaDevice14UnregisterTapsEv_block_invoke(uint64_t a1)
{
  v2 = HALS_MetaDeviceDescription::CopyTapList(*(*(a1 + 40) + 1488));
  v3 = *(*(a1 + 32) + 8) + 40;

  return OS::CF::UntypedObject::operator=(v3, v2);
}

void HALS_MetaDevice::GetPropertyData(HALS_MetaDevice *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, unsigned int *a5, int *a6, uint64_t a7, int *a8, HALS_Client *a9)
{
  v154 = *MEMORY[0x1E69E9840];
  if (((*(*this + 96))(this, a2, a3, a9) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  mScope = a3->mScope;
  if (a3->mSelector <= 1735356004)
  {
    if (mSelector <= 1684107363)
    {
      if (mSelector <= 1634755427)
      {
        if (mSelector > 1634429293)
        {
          if (mSelector != 1634429294)
          {
            if (mSelector == 1634562932)
            {
              if (a4 <= 7)
              {
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "HALS_MetaDevice.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 2285;
                  _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioAggregateDevicePropertyMainSubDevice", buf, 0x12u);
                }

                v85 = __cxa_allocate_exception(0x10uLL);
                *v85 = off_1F5991DD8;
                v85[2] = 561211770;
              }

              v105[0] = MEMORY[0x1E69E9820];
              v105[1] = 0x40000000;
              v105[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_90;
              v105[3] = &__block_descriptor_tmp_91_6194;
              v105[4] = this;
              v105[5] = a6;
              v40 = (*(*this + 64))(this);
              HALB_CommandGate::ExecuteCommand(v40, v105);
              goto LABEL_167;
            }

            goto LABEL_115;
          }

          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_MetaDevice.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 2068;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioDevicePropertyRelatedDevices", buf, 0x12u);
            }

            v96 = __cxa_allocate_exception(0x10uLL);
            *v96 = off_1F5991DD8;
            v96[2] = 561211770;
          }

          v133[0] = MEMORY[0x1E69E9820];
          v133[1] = 0x40000000;
          v133[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_63;
          v133[3] = &__block_descriptor_tmp_64;
          v133[4] = this;
          v133[5] = a6;
          v67 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v67, v133);
          goto LABEL_170;
        }

        if (mSelector == 1633906541)
        {
          if (a4 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_MetaDevice.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 2276;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioAggregateDevicePropertyComposition", buf, 0x12u);
            }

            v94 = __cxa_allocate_exception(0x10uLL);
            *v94 = off_1F5991DD8;
            v94[2] = 561211770;
          }

          v106[0] = MEMORY[0x1E69E9820];
          v106[1] = 0x40000000;
          v106[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_88;
          v106[3] = &__block_descriptor_tmp_89;
          v106[4] = this;
          v106[5] = a6;
          v64 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v64, v106);
          goto LABEL_167;
        }

        if (mSelector != 1634169456)
        {
          goto LABEL_115;
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2000000000;
        LODWORD(v145) = 0;
        v109[0] = MEMORY[0x1E69E9820];
        v109[1] = 0x40000000;
        v109[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2_85;
        v109[3] = &unk_1E8674D18;
        v109[5] = this;
        v109[4] = buf;
        v110 = a4;
        v109[6] = a6;
        v21 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v21, v109);
LABEL_130:
        v36 = 4 * *(*&buf[8] + 24);
        goto LABEL_131;
      }

      if (mSelector <= 1667461732)
      {
        if (mSelector == 1634755428)
        {
          if (a4 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_MetaDevice.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 2294;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioAggregateDevicePropertyClockDevice", buf, 0x12u);
            }

            v95 = __cxa_allocate_exception(0x10uLL);
            *v95 = off_1F5991DD8;
            v95[2] = 561211770;
          }

          v104[0] = MEMORY[0x1E69E9820];
          v104[1] = 0x40000000;
          v104[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_92;
          v104[3] = &__block_descriptor_tmp_94;
          v104[4] = this;
          v104[5] = a6;
          v65 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v65, v104);
          goto LABEL_167;
        }

        if (mSelector != 1635017072)
        {
          goto LABEL_115;
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2000000000;
        LODWORD(v145) = 0;
        v107[0] = MEMORY[0x1E69E9820];
        v107[1] = 0x40000000;
        v107[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_3;
        v107[3] = &unk_1E8674D40;
        v107[4] = buf;
        v107[5] = this;
        v108 = a4;
        v107[6] = a6;
        v34 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v34, v107);
        goto LABEL_130;
      }

      if (mSelector != 1667461733)
      {
        if (mSelector != 1668049764)
        {
          goto LABEL_115;
        }

        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_MetaDevice.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 2357;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_GetPropertyData: bad property data size for kAudioDevicePropertyClockDomain", buf, 0x12u);
          }

          v86 = __cxa_allocate_exception(0x10uLL);
          *v86 = off_1F5991DD8;
          v86[2] = 561211770;
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2000000000;
        v145 = 0;
        v102[0] = MEMORY[0x1E69E9820];
        v102[1] = 0x40000000;
        v102[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_97;
        v102[3] = &unk_1E8674DF0;
        v102[4] = buf;
        v102[5] = this;
        v41 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v41, v102);
        v42 = *(*&buf[8] + 24);
        if (v42)
        {
          (*(*v42 + 120))(v42, 0, a3, a4, a5, a6, a7, a8, a9);
LABEL_132:
          _Block_object_dispose(buf, 8);
          goto LABEL_172;
        }

        *a6 = 0;
        goto LABEL_83;
      }
    }

    else
    {
      if (mSelector <= 1685278560)
      {
        if (mSelector > 1684893795)
        {
          if (mSelector == 1684893796)
          {
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_MetaDevice.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 2397;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioDevicePropertyMaximumPastData", buf, 0x12u);
              }

              v88 = __cxa_allocate_exception(0x10uLL);
              *v88 = off_1F5991DD8;
              v88[2] = 561211770;
            }

            v99[0] = MEMORY[0x1E69E9820];
            v99[1] = 0x40000000;
            v99[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_103;
            v99[3] = &__block_descriptor_tmp_104;
            v99[4] = this;
            v99[5] = a6;
            v55 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v55, v99);
          }

          else
          {
            if (mSelector != 1685087596)
            {
              goto LABEL_115;
            }

            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_MetaDevice.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 2406;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioDevicePropertyEnableListening", buf, 0x12u);
              }

              v82 = __cxa_allocate_exception(0x10uLL);
              *v82 = off_1F5991DD8;
              v82[2] = 561211770;
            }

            v98[0] = MEMORY[0x1E69E9820];
            v98[1] = 0x40000000;
            v98[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_105;
            v98[3] = &__block_descriptor_tmp_106;
            v98[4] = this;
            v98[5] = a6;
            v38 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v38, v98);
          }
        }

        else if (mSelector == 1684107364)
        {
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_MetaDevice.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 2388;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioDevicePropertyAvailablePastData", buf, 0x12u);
            }

            v87 = __cxa_allocate_exception(0x10uLL);
            *v87 = off_1F5991DD8;
            v87[2] = 561211770;
          }

          v100[0] = MEMORY[0x1E69E9820];
          v100[1] = 0x40000000;
          v100[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_101;
          v100[3] = &__block_descriptor_tmp_102_6203;
          v100[4] = this;
          v100[5] = a6;
          v54 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v54, v100);
        }

        else
        {
          if (mSelector != 1684434036)
          {
            goto LABEL_115;
          }

          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_MetaDevice.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 2088;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioDevicePropertyDeviceCanBeDefaultDevice", buf, 0x12u);
            }

            v81 = __cxa_allocate_exception(0x10uLL);
            *v81 = off_1F5991DD8;
            v81[2] = 561211770;
          }

          v128[0] = MEMORY[0x1E69E9820];
          v128[1] = 0x40000000;
          v128[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_65;
          v128[3] = &__block_descriptor_tmp_66;
          v128[4] = this;
          v128[5] = a6;
          v129 = mScope == 1768845428;
          v128[6] = a9;
          v33 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v33, v128);
        }

        goto LABEL_170;
      }

      if ((mSelector - 1685278561) > 0x11 || ((1 << (mSelector - 97)) & 0x20003) == 0)
      {
        if (mSelector == 1685287012)
        {
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_MetaDevice.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 2379;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioDevicePropertySupportsPastData", buf, 0x12u);
            }

            v93 = __cxa_allocate_exception(0x10uLL);
            *v93 = off_1F5991DD8;
            v93[2] = 561211770;
          }

          v101[0] = MEMORY[0x1E69E9820];
          v101[1] = 0x40000000;
          v101[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_99;
          v101[3] = &__block_descriptor_tmp_100_6201;
          v101[4] = this;
          v101[5] = a6;
          v63 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v63, v101);
          goto LABEL_170;
        }

        if (mSelector != 1735354734)
        {
          goto LABEL_115;
        }

        goto LABEL_118;
      }
    }

    v43 = *(this + 208);
    if (!v43 || mSelector != 1685278578 && mSelector != 1685278561)
    {
      goto LABEL_115;
    }

    v44 = *v43;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZNK25HALS_MetaDevice_HostedDSP15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
    v145 = &__block_descriptor_tmp_5;
    v146 = v43;
    v147 = a3;
    v148 = a5;
    v149 = a6;
    v152 = a4;
    v153 = a7;
    v150 = a8;
    v151 = a9;
    v45 = (*(*v44 + 64))(v44);
    HALB_CommandGate::ExecuteCommand(v45, buf);
LABEL_172:
    v68 = *MEMORY[0x1E69E9840];
    return;
  }

  if (mSelector > 1853059618)
  {
    if (mSelector > 1935763059)
    {
      if (mSelector > 1936876643)
      {
        if (mSelector == 1936876644)
        {
          TotalNumberChannelsForClient = HALS_Device::GetTotalNumberChannelsForClient(this, mScope == 1768845428, a9);
          v70 = caulk::numeric::exceptional_mul<unsigned int>(TotalNumberChannelsForClient);
          v71 = caulk::numeric::exceptional_add<unsigned int>(v70);
          if (v71 > a4)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_MetaDevice.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 2135;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioDevicePropertyDefaultChannelLayout", buf, 0x12u);
            }

            v97 = __cxa_allocate_exception(0x10uLL);
            *v97 = off_1F5991DD8;
            v97[2] = 561211770;
          }

          *a6 = 0;
          a6[2] = TotalNumberChannelsForClient;
          if (TotalNumberChannelsForClient)
          {
            v72 = TotalNumberChannelsForClient;
            v73 = a6 + 4;
            do
            {
              *(v73 - 1) = -1;
              *v73 = 0;
              v73[1] = 0;
              v73 = (v73 + 20);
              --v72;
            }

            while (v72);
          }

          *a5 = v71;
          goto LABEL_172;
        }

        if (mSelector != 1952542755)
        {
          if (mSelector != 1953653102)
          {
            goto LABEL_115;
          }

          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_MetaDevice.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 2059;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioDevicePropertyTransportType", buf, 0x12u);
            }

            v78 = __cxa_allocate_exception(0x10uLL);
            *v78 = off_1F5991DD8;
            v78[2] = 561211770;
          }

          v20 = 1735554416;
LABEL_141:
          *a6 = v20;
          goto LABEL_170;
        }

        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_MetaDevice.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 2317;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioAggregateDevicePropertyFullSubDeviceList", buf, 0x12u);
          }

          v92 = __cxa_allocate_exception(0x10uLL);
          *v92 = off_1F5991DD8;
          v92[2] = 561211770;
        }

        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
        LOWORD(v139) = 257;
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3802000000;
        v145 = __Block_byref_object_copy__78;
        v146 = __Block_byref_object_dispose__79;
        v147 = 0;
        LOWORD(v148) = 1;
        v103[0] = MEMORY[0x1E69E9820];
        v103[1] = 0x40000000;
        v103[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_95;
        v103[3] = &unk_1E8674DC8;
        v103[4] = buf;
        v103[5] = this;
        v59 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v59, v103);
        if (*(*&buf[8] + 40))
        {
          theArray = 0;
          LOWORD(v132) = 1;
          CACFDictionary::GetCACFArray((*&buf[8] + 40), @"taps", &theArray);
          if (theArray)
          {
            Count = CFArrayGetCount(theArray);
            if (Count)
            {
              for (i = 0; i != Count; ++i)
              {
                v115 = 0;
                v116 = 1;
                CACFArray::GetCACFDictionary(&theArray, i, &v115);
                if (v115)
                {
                  value = 0;
                  LOBYTE(v114) = 1;
                  CACFDictionary::GetCACFString(&v115, @"uid", &value);
                  if (value && Mutable && BYTE1(v139) == 1)
                  {
                    CFArrayAppendValue(Mutable, value);
                  }

                  CACFString::~CACFString(&value);
                }

                CACFDictionary::~CACFDictionary(&v115);
              }
            }
          }

          CACFArray::~CACFArray(&theArray);
        }

        if (Mutable)
        {
          CFRetain(Mutable);
          v62 = Mutable;
        }

        else
        {
          v62 = 0;
        }

        *a6 = v62;
        *a5 = 8;
        _Block_object_dispose(buf, 8);
LABEL_183:
        CACFDictionary::~CACFDictionary(&v147);
        CACFArray::~CACFArray(&Mutable);
        goto LABEL_172;
      }

      if (mSelector == 1935763060)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_MetaDevice.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 2124;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioDevicePropertySafetyOffset", buf, 0x12u);
          }

          v90 = __cxa_allocate_exception(0x10uLL);
          *v90 = off_1F5991DD8;
          v90[2] = 561211770;
        }

        v122[0] = MEMORY[0x1E69E9820];
        v122[1] = 0x40000000;
        v122[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_71;
        v122[3] = &__block_descriptor_tmp_72;
        v122[4] = this;
        v122[5] = a6;
        v123 = mScope == 1768845428;
        v57 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v57, v122);
      }

      else
      {
        if (mSelector != 1936092276)
        {
          goto LABEL_115;
        }

        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_MetaDevice.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 2097;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioDevicePropertyDeviceCanBeDefaultSystemDevice", buf, 0x12u);
          }

          v84 = __cxa_allocate_exception(0x10uLL);
          *v84 = off_1F5991DD8;
          v84[2] = 561211770;
        }

        v126[0] = MEMORY[0x1E69E9820];
        v126[1] = 0x40000000;
        v126[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_67;
        v126[3] = &__block_descriptor_tmp_68;
        v126[4] = this;
        v126[5] = a6;
        v127 = mScope == 1768845428;
        v126[6] = a9;
        v39 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v39, v126);
      }

LABEL_170:
      v66 = 4;
      goto LABEL_171;
    }

    if (mSelector <= 1870098019)
    {
      if (mSelector != 1853059619)
      {
        if (mSelector == 1853059700)
        {
          if (a4 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_MetaDevice.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 2147;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioDevicePropertyNominalSampleRate", buf, 0x12u);
            }

            v80 = __cxa_allocate_exception(0x10uLL);
            *v80 = off_1F5991DD8;
            v80[2] = 561211770;
          }

          v121[0] = MEMORY[0x1E69E9820];
          v121[1] = 0x40000000;
          v121[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_73;
          v121[3] = &__block_descriptor_tmp_74_6185;
          v121[4] = this;
          v121[5] = a6;
          v32 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v32, v121);
          goto LABEL_167;
        }

        goto LABEL_115;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      LODWORD(v145) = a4 >> 4;
      v119[0] = MEMORY[0x1E69E9820];
      v119[1] = 0x40000000;
      v119[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2;
      v119[3] = &unk_1E8674CA0;
      v120 = a4;
      v119[5] = this;
      v119[4] = buf;
      v119[6] = a6;
      v52 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v52, v119);
      v36 = 16 * *(*&buf[8] + 24);
      goto LABEL_131;
    }

    if (mSelector != 1870098020)
    {
      if (mSelector != 1919512167)
      {
        goto LABEL_115;
      }

      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_MetaDevice.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 2115;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioDevicePropertyZeroTimeStampPeriod", buf, 0x12u);
        }

        v37 = __cxa_allocate_exception(0x10uLL);
        *v37 = off_1F5991DD8;
        v37[2] = 561211770;
      }

      goto LABEL_170;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    LODWORD(v145) = 0;
    v135[0] = MEMORY[0x1E69E9820];
    v135[1] = 0x40000000;
    v135[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
    v135[3] = &unk_1E8674B98;
    v135[5] = this;
    v135[4] = buf;
    v136 = a4 >> 2;
    v137 = a7 >> 2;
    v135[6] = a8;
    v135[7] = a6;
    v53 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v53, v135);
    goto LABEL_130;
  }

  if (mSelector <= 1769302371)
  {
    if (mSelector <= 1751412336)
    {
      if (mSelector != 1735356005)
      {
        if (mSelector != 1735554416)
        {
          goto LABEL_115;
        }

        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_MetaDevice.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 2178;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioAggregateDevicePropertyFullSubDeviceList", buf, 0x12u);
          }

          v79 = __cxa_allocate_exception(0x10uLL);
          *v79 = off_1F5991DD8;
          v79[2] = 561211770;
        }

        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
        LOWORD(v139) = 257;
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3802000000;
        v145 = __Block_byref_object_copy__78;
        v146 = __Block_byref_object_dispose__79;
        v147 = 0;
        LOWORD(v148) = 1;
        v117[0] = MEMORY[0x1E69E9820];
        v117[1] = 0x40000000;
        v117[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_80;
        v117[3] = &unk_1E8674CF0;
        v117[5] = this;
        v117[4] = buf;
        v22 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v22, v117);
        if (*(*&buf[8] + 40))
        {
          theArray = 0;
          LOWORD(v132) = 1;
          CACFDictionary::GetCACFArray((*&buf[8] + 40), @"subdevices", &theArray);
          if (theArray)
          {
            v23 = CFArrayGetCount(theArray);
            if (v23)
            {
              for (j = 0; j != v23; ++j)
              {
                v115 = 0;
                v116 = 1;
                CACFArray::GetCACFDictionary(&theArray, j, &v115);
                if (v115)
                {
                  value = 0;
                  LOBYTE(v114) = 1;
                  CACFDictionary::GetCACFString(&v115, @"uid", &value);
                  if (value && Mutable && BYTE1(v139) == 1)
                  {
                    CFArrayAppendValue(Mutable, value);
                  }

                  CACFString::~CACFString(&value);
                }

                else
                {
                  value = 0;
                  v114 = 1;
                  cf = 0;
                  CFType = CACFArray::GetCFType(&theArray, j, &cf);
                  v26 = cf;
                  if (cf)
                  {
                    v27 = CFType;
                  }

                  else
                  {
                    v27 = 0;
                  }

                  if (v27 == 1)
                  {
                    v28 = CFGetTypeID(cf);
                    if (v28 == CFArrayGetTypeID())
                    {
                      CACFArray::operator=(&value, v26);
                    }
                  }

                  if (value)
                  {
                    v29 = CFArrayGetCount(value);
                    if (v29)
                    {
                      for (k = 0; k != v29; ++k)
                      {
                        CACFArray::GetCACFDictionary(&value, k, &v115);
                        if (v115)
                        {
                          cf = 0;
                          v112 = 1;
                          CACFDictionary::GetCACFString(&v115, @"uid", &cf);
                          if (cf && Mutable && BYTE1(v139) == 1)
                          {
                            CFArrayAppendValue(Mutable, cf);
                          }

                          CACFString::~CACFString(&cf);
                        }
                      }
                    }
                  }

                  CACFArray::~CACFArray(&value);
                }

                CACFDictionary::~CACFDictionary(&v115);
              }
            }
          }

          CACFArray::~CACFArray(&theArray);
        }

        if (Mutable)
        {
          CFRetain(Mutable);
          v31 = Mutable;
        }

        else
        {
          v31 = 0;
        }

        *a6 = v31;
        *a5 = 8;
        _Block_object_dispose(buf, 8);
        goto LABEL_183;
      }

LABEL_118:
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_MetaDevice.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 2078;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioDevicePropertyDeviceIsRunning", buf, 0x12u);
        }

        v76 = __cxa_allocate_exception(0x10uLL);
        *v76 = off_1F5991DD8;
        v76[2] = 561211770;
      }

      v47 = *(this + 4);
      v130[1] = 0;
      v130[0] = 0;
      HALS_System::GetInstance(&theArray, 0, v130);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x4002000000;
      v145 = __Block_byref_object_copy__46;
      v146 = __Block_byref_object_dispose__47;
      v147 = 0;
      v148 = 0;
      v149 = 0;
      Mutable = MEMORY[0x1E69E9820];
      v139 = 0x40000000;
      v140 = ___ZN11HALS_System37IsUnderlyingIOContextRunningForDeviceEj_block_invoke;
      v141 = &unk_1E8675DF0;
      v142 = buf;
      v143 = theArray;
      v48 = (*(*theArray + 64))(theArray);
      HALB_CommandGate::ExecuteCommand(v48, &Mutable);
      v49 = *(*&buf[8] + 40);
      v50 = *(*&buf[8] + 48);
      while (1)
      {
        if (v49 == v50)
        {
          v51 = 0;
          goto LABEL_126;
        }

        if (*v49 && (*(**(*v49 + 104) + 768))(*(*v49 + 104)) == v47 && ((*(**(*v49 + 104) + 160))(*(*v49 + 104)) & 1) != 0)
        {
          break;
        }

        v49 += 8;
      }

      v51 = 1;
LABEL_126:
      _Block_object_dispose(buf, 8);
      v115 = &v147;
      std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&v115);
      *a6 = v51;
      if (v132)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v132);
      }

      goto LABEL_170;
    }

    if (mSelector != 1751412337 && mSelector != 1751737454)
    {
      goto LABEL_115;
    }

    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_MetaDevice.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2165;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioDevicePropertyIsHidden", buf, 0x12u);
      }

      v75 = __cxa_allocate_exception(0x10uLL);
      *v75 = off_1F5991DD8;
      v75[2] = 561211770;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    LOBYTE(v145) = 0;
    v118[0] = MEMORY[0x1E69E9820];
    v118[1] = 0x40000000;
    v118[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_76;
    v118[3] = &unk_1E8674CC8;
    v118[5] = this;
    v118[4] = buf;
    v35 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v35, v118);
    *a6 = *(*&buf[8] + 24);
LABEL_83:
    v36 = 4;
LABEL_131:
    *a5 = v36;
    goto LABEL_132;
  }

  if (mSelector <= 1819173228)
  {
    if (mSelector != 1769302372)
    {
      if (mSelector == 1819107691)
      {
        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_MetaDevice.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 2050;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioObjectPropertyManufacturer", buf, 0x12u);
          }

          v83 = __cxa_allocate_exception(0x10uLL);
          *v83 = off_1F5991DD8;
          v83[2] = 561211770;
        }

        *a6 = @"Apple Inc.";
        goto LABEL_167;
      }

      goto LABEL_115;
    }

    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_MetaDevice.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 2415;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioDevicePropertyUseCaseID", buf, 0x12u);
      }

      v89 = __cxa_allocate_exception(0x10uLL);
      *v89 = off_1F5991DD8;
      v89[2] = 561211770;
    }

    v56 = (*(*this + 472))(this);
    if ((v56 & 0x100000000) != 0)
    {
      v20 = v56;
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_141;
  }

  switch(mSelector)
  {
    case 1819173229:
LABEL_9:
      if (a4 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_MetaDevice.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 2041;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioObjectPropertyName", buf, 0x12u);
        }

        v77 = __cxa_allocate_exception(0x10uLL);
        *v77 = off_1F5991DD8;
        v77[2] = 561211770;
      }

      v134[0] = MEMORY[0x1E69E9820];
      v134[1] = 0x40000000;
      v134[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_58;
      v134[3] = &__block_descriptor_tmp_59_6172;
      v134[4] = this;
      v134[5] = a6;
      v19 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v19, v134);
LABEL_167:
      v66 = 8;
LABEL_171:
      *a5 = v66;
      goto LABEL_172;
    case 1819569763:
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_MetaDevice.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 2106;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDevice::GetPropertyData: bad property data size for kAudioDevicePropertyLatency", buf, 0x12u);
        }

        v91 = __cxa_allocate_exception(0x10uLL);
        *v91 = off_1F5991DD8;
        v91[2] = 561211770;
      }

      v124[0] = MEMORY[0x1E69E9820];
      v124[1] = 0x40000000;
      v124[2] = ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_69;
      v124[3] = &__block_descriptor_tmp_70;
      v124[4] = this;
      v124[5] = a6;
      v125 = mScope == 1768845428;
      v124[6] = a9;
      v58 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v58, v124);
      goto LABEL_170;
    case 1851878764:
      goto LABEL_9;
  }

LABEL_115:
  v46 = *MEMORY[0x1E69E9840];

  HALS_Device::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_1DE4390F4(_Unwind_Exception *a1)
{
  CACFArray::~CACFArray(&STACK[0x448]);
  _Block_object_dispose((v2 - 192), 8);
  CACFDictionary::~CACFDictionary((v1 + 40));
  CACFArray::~CACFArray((v2 - 240));
  _Unwind_Resume(a1);
}

void ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, HALS_Object *a4)
{
  v5 = *(a1 + 40);
  if (*(*(*(a1 + 32) + 8) + 24) < *(a1 + 64))
  {
    v6 = 0;
    v7 = 1;
    do
    {
      NumberStreams = HALS_IODevice::GetNumberStreams(v5, v6 & 1);
      v9 = NumberStreams;
      v10 = *(*(*(a1 + 32) + 8) + 24);
      v11 = *(a1 + 64);
      if (v10 < v11 && NumberStreams != 0)
      {
        v13 = 1;
        do
        {
          v16 = (*(*v5 + 400))(v5, v6 & 1, v13 - 1);
          if (v16 && HALS_Object::IsObjectClassInClassIDList(*(a1 + 68), *(a1 + 48), v16, v15))
          {
            *(*(a1 + 56) + 4 * (*(*(*(a1 + 32) + 8) + 24))++) = *(v16 + 16);
          }

          HALS_ObjectMap::ReleaseObject(v16, v14);
          v10 = *(*(*(a1 + 32) + 8) + 24);
          v11 = *(a1 + 64);
        }

        while (v10 < v11 && v13++ < v9);
      }

      v18 = (v10 < v11) & v7;
      v6 = 1;
      v7 = 0;
    }

    while ((v18 & 1) != 0);
  }

  v19 = *(v5 + 187);
  v20 = *(v5 + 188);
  if (v19 != v20)
  {
    v21 = 0;
    v22 = *(v5 + 187);
    do
    {
      v24 = *v22;
      v23 = *(v22 + 1);
      v22 = (v22 + 24);
      v21 += (v23 - v24) >> 3;
    }

    while (v22 != v20);
    if (v21)
    {
      for (i = 0; i != v21; ++i)
      {
        SubDeviceByIndex = HALS_MetaDeviceDescription::GetSubDeviceByIndex(v19, v20, i);
        if (HALS_Object::IsObjectClassInClassIDList(*(a1 + 68), *(a1 + 48), SubDeviceByIndex, v27))
        {
          *(*(a1 + 56) + 4 * (*(*(*(a1 + 32) + 8) + 24))++) = *(SubDeviceByIndex + 16);
        }
      }
    }
  }

  v28 = *(v5 + 194);
  v29 = *(v5 + 193);
  v30 = (v28 - v29) >> 3;
  if (!v30)
  {
    return;
  }

  v31 = 0;
  do
  {
    if (v29 == v28)
    {
      goto LABEL_37;
    }

    v32 = 0;
    v33 = v29;
    while (1)
    {
      if (v32 != v31)
      {
        ++v32;
        goto LABEL_33;
      }

      v34 = *v33;
      v32 = v31;
      if (*v33)
      {
        break;
      }

LABEL_33:
      if (++v33 == v28)
      {
        goto LABEL_37;
      }
    }

    if (HALS_Object::IsObjectClassInClassIDList(*(a1 + 68), *(a1 + 48), *v33, a4))
    {
      *(*(a1 + 56) + 4 * (*(*(*(a1 + 32) + 8) + 24))++) = v34[4];
    }

LABEL_37:
    ++v31;
  }

  while (v31 != v30);
}

void sub_1DE4394A8(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

CFTypeRef ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_58(uint64_t a1)
{
  result = HALS_MetaDeviceDescription::CopyDeviceName(*(*(a1 + 32) + 1488));
  **(a1 + 40) = result;
  return result;
}

uint64_t ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_65(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = (*(*v2 + 72))(v2, *(a1 + 56), *(a1 + 48));
  if (result)
  {
    result = HALS_MetaDeviceDescription::CanBeDefaultDevice(v2 + 184, *(a1 + 56), 0);
  }

  **(a1 + 40) = result;
  return result;
}

void sub_1DE439598(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_67(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = (*(*v2 + 72))(v2, *(a1 + 56), *(a1 + 48));
  if (result)
  {
    result = HALS_MetaDeviceDescription::CanBeDefaultDevice(v2 + 184, *(a1 + 56), 1);
  }

  **(a1 + 40) = result;
  return result;
}

void sub_1DE439630(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_69(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(a1 + 48);
  v5 = *(v2 + 1576);
  if (v5 || (v5 = *(v2 + 1568)) != 0)
  {
    v6 = HALS_MetaSubDevice::CopyRealIODevice(v5);
    v8 = v6;
    if (v6)
    {
      v9 = (*(*v6 + 312))(v6, v3);
    }

    else
    {
      v9 = 0;
    }

    HALS_ObjectMap::ReleaseObject(v8, v7);
  }

  else
  {
    v9 = 0;
  }

  result = HALS_Device_HostedDSP_ClientInfo::get_dsp_latency_for_client(v2 + 648, v3, v4);
  if ((result & 0x100000000) != 0)
  {
    v11 = result;
  }

  else
  {
    v11 = 0;
  }

  **(a1 + 40) = v11 + v9;
  return result;
}

void sub_1DE43971C(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  HALS_ObjectMap::ReleaseObject(v16, a2);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_71(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v2[197];
  if (v4 || (v4 = v2[196]) != 0)
  {
    v5 = HALS_MetaSubDevice::CopyRealIODevice(v4);
    v7 = v5;
    if (v5)
    {
      v8 = (*(*v5 + 320))(v5, v3);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = v2[194];
    v10 = v2[193];
    if (((v9 - v10) & 0x7FFFFFFF8) == 0 || v3 == 0)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v12 = HALS_ObjectMap::CopyObjectByObjectID(*(*v10 + 72));
    v7 = v12;
    if (v12)
    {
      v14 = *(v12 + 264);
      v13 = *(v12 + 272);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        v8 = *(v14 + 68);
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      else
      {
        v8 = *(v14 + 68);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  HALS_ObjectMap::ReleaseObject(v7, v6);
LABEL_7:
  **(a1 + 40) = v8;
}

void sub_1DE439874(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  HALS_ObjectMap::ReleaseObject(v14, a2);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_1DE4398EC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 56) >> 4;
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  *(v3 + 24) = 0;
  v4 = (v3 + 24);
  v5 = *(a1 + 48);
  v6 = *(v2 + 1576);
  if (v6 || (v6 = *(v2 + 1568)) != 0)
  {
    v7 = HALS_MetaSubDevice::CopyRealIODevice(v6);
    v9 = v7;
    if (v7)
    {
      (*(*v7 + 296))(v7, v1, v4, v5);
    }

    HALS_ObjectMap::ReleaseObject(v9, v8);
  }

  else if (((*(v2 + 1552) - *(v2 + 1544)) & 0x7FFFFFFF8) != 0)
  {
    get_tap_sample_rate_range(v17);
    v10 = v17[0];
    v11 = (v17[1] - v17[0]) >> 4;
    if (v11 >= v1)
    {
      LODWORD(v11) = v1;
    }

    *v4 = v11;
    v12 = HALS_ObjectMap::CopyObjectByObjectID(*(**(v2 + 1544) + 72));
    if (v12)
    {
      v14 = *v4;
      if (v14)
      {
        v15 = v10;
        do
        {
          v16 = *v15++;
          *v5++ = v16;
          --v14;
        }

        while (v14);
      }
    }

    HALS_ObjectMap::ReleaseObject(v12, v13);
    if (v10)
    {
      operator delete(v10);
    }
  }
}

void sub_1DE439A34(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (v20)
  {
    operator delete(v20);
  }

  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

const __CFBoolean *___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_76(uint64_t a1)
{
  result = HALS_MetaDeviceDescription::IsHidden((*(a1 + 40) + 1472));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

CFTypeRef __Block_byref_object_copy__78(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  v4 = *(a2 + 48);
  *(a1 + 48) = v4;
  *(a1 + 49) = *(a2 + 49);
  if (v4 == 1 && result != 0)
  {
    return CFRetain(result);
  }

  return result;
}

void ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_80(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = HALS_MetaDeviceDescription::CopyRawDescription((*(a1 + 40) + 1472));
  v3 = *(v1 + 40);
  if (v3 != v2)
  {
    if (v3 && (*(v1 + 48) & 1) != 0)
    {
      CFRelease(v3);
    }

    *(v1 + 40) = v2;
    *(v1 + 49) = 0;
  }

  *(v1 + 48) = 1;
}

void sub_1DE439B60(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2_85(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4 = *(v2 + 1496);
  v5 = *(v2 + 1504);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v8 = *v4;
      v7 = v4[1];
      v4 += 3;
      v6 += (v7 - v8) >> 3;
    }

    while (v4 != v5);
  }

  if (v6 >= v3 >> 2)
  {
    v9 = v3 >> 2;
  }

  else
  {
    v9 = v6;
  }

  *(*(*(a1 + 32) + 8) + 24) = v9;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v10 = 0;
    do
    {
      SubDeviceByIndex = HALS_MetaDeviceDescription::GetSubDeviceByIndex(*(v2 + 1496), *(v2 + 1504), v10);
      v12 = HALS_MetaSubDevice::CopyRealIODevice(SubDeviceByIndex);
      *(*(a1 + 48) + 4 * v10) = *(v12 + 4);
      HALS_ObjectMap::ReleaseObject(v12, v13);
      ++v10;
    }

    while (v10 < *(*(*(a1 + 32) + 8) + 24));
  }
}

void sub_1DE439C4C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = (*(v1 + 1552) - *(v1 + 1544)) >> 3;
  v3 = *(a1 + 56);
  v4 = v2 >= v3 >> 2;
  v5 = v3 >> 2;
  if (v4)
  {
    LODWORD(v2) = v5;
  }

  *(*(*(a1 + 32) + 8) + 24) = v2;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    for (i = 0; i < *(*(*(a1 + 32) + 8) + 24); ++i)
    {
      v8 = 0;
      v9 = *(v1 + 1544);
      while (v8 != i)
      {
        ++v8;
LABEL_11:
        v9 += 8;
      }

      v8 = i;
      if (!*v9)
      {
        goto LABEL_11;
      }

      v10 = HALS_ObjectMap::CopyObjectByObjectID(*(*v9 + 72));
      *(*(a1 + 48) + 4 * i) = *(v10 + 4);
      HALS_ObjectMap::ReleaseObject(v10, v11);
    }
  }
}

void sub_1DE439D3C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

CFDictionaryRef ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_88(uint64_t a1)
{
  result = HALS_MetaDeviceDescription::CopyRawDescription((*(a1 + 32) + 1472));
  **(a1 + 40) = result;
  return result;
}

void sub_1DE439D94(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

HALS_MetaSubDevice *___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_90(uint64_t a1)
{
  result = *(*(a1 + 32) + 1568);
  if (result)
  {
    result = HALS_MetaSubDevice::CopyRealDeviceUID(result);
  }

  **(a1 + 40) = result;
  return result;
}

void sub_1DE439DEC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_92(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1576);
  if (v2)
  {
    v3 = HALS_MetaSubDevice::CopyRealDeviceUID(v2);
    cf = v3;
    if (v3)
    {
      v4 = CFGetTypeID(v3);
      if (v4 != CFStringGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      if (cf)
      {
        **(a1 + 40) = PropertyListDeepImmutableCopy(cf);
        goto LABEL_8;
      }
    }
  }

  else
  {
    cf = 0;
  }

  v6 = CFStringCreateWithCString(0, "", 0x600u);
  v7 = 0;
  **(a1 + 40) = v6;
  CACFString::~CACFString(&v6);
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1DE439EF0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12)
{
  __cxa_free_exception(v12);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a12);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE439EA4);
}

void ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_95(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = HALS_MetaDeviceDescription::CopyRawDescription((*(a1 + 40) + 1472));
  v3 = *(v1 + 40);
  if (v3 != v2)
  {
    if (v3 && (*(v1 + 48) & 1) != 0)
    {
      CFRelease(v3);
    }

    *(v1 + 40) = v2;
    *(v1 + 49) = 0;
  }

  *(v1 + 48) = 1;
}

void sub_1DE439F9C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_97(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 1576);
  if (!v2)
  {
    v2 = *(v1 + 1568);
  }

  *(*(*(result + 32) + 8) + 24) = v2;
  return result;
}

void ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_99(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1496);
  v4 = *(v2 + 1504);
  if (v3 == v4)
  {
    v11 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = *v3;
      v7 = v3[1];
      while (v6 != v7)
      {
        v8 = HALS_MetaSubDevice::CopyRealIODevice(*v6);
        v10 = v8;
        if (v8)
        {
          v5 |= (*(*v8 + 416))(v8);
        }

        HALS_ObjectMap::ReleaseObject(v10, v9);
        ++v6;
      }

      v3 += 3;
    }

    while (v3 != v4);
    v11 = v5 & 1;
  }

  **(a1 + 40) = v11;
}

void sub_1DE43A0AC(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  HALS_ObjectMap::ReleaseObject(v18, a2);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_101(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1496);
  v4 = *(v2 + 1504);
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = *v3;
      v7 = v3[1];
      while (v6 != v7)
      {
        v8 = HALS_MetaSubDevice::CopyRealIODevice(*v6);
        v10 = v8;
        if (v8)
        {
          v11 = (*(*v8 + 424))(v8);
          if (v5 <= v11)
          {
            v5 = v11;
          }
        }

        HALS_ObjectMap::ReleaseObject(v10, v9);
        ++v6;
      }

      v3 += 3;
    }

    while (v3 != v4);
  }

  **(a1 + 40) = v5;
}

void sub_1DE43A1C8(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  HALS_ObjectMap::ReleaseObject(v18, a2);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_103(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1496);
  v4 = *(v2 + 1504);
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = *v3;
      v7 = v3[1];
      while (v6 != v7)
      {
        v8 = HALS_MetaSubDevice::CopyRealIODevice(*v6);
        v10 = v8;
        if (v8)
        {
          v11 = (*(*v8 + 432))(v8);
          if (v5 <= v11)
          {
            v5 = v11;
          }
        }

        HALS_ObjectMap::ReleaseObject(v10, v9);
        ++v6;
      }

      v3 += 3;
    }

    while (v3 != v4);
  }

  **(a1 + 40) = v5;
}

void sub_1DE43A2E4(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  HALS_ObjectMap::ReleaseObject(v18, a2);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_MetaDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_105(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1496);
  v4 = *(v2 + 1504);
  while (v3 != v4)
  {
    v5 = *v3;
    v6 = v3[1];
    while (v5 != v6)
    {
      v7 = HALS_MetaSubDevice::CopyRealDevice<HALS_Device>(*v5);
      HALS_ObjectMap::ReleaseObject(v7, v8);
      ++v5;
    }

    v3 += 3;
  }

  **(a1 + 40) = 0;
}

void sub_1DE43A3A4(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_MetaDevice::GetPropertyDataSize(HALS_MetaDevice *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, _DWORD *a5, AudioObjectPropertyAddress *a6)
{
  v47 = *MEMORY[0x1E69E9840];
  if (((*(*this + 96))(this, a2, a3, a6) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  v13 = 4;
  if (a3->mSelector <= 1685087595)
  {
    if (mSelector <= 1634755427)
    {
      if (mSelector > 1634429293)
      {
        if (mSelector == 1634429294)
        {
          goto LABEL_46;
        }

        if (mSelector != 1634562932)
        {
          goto LABEL_39;
        }

        goto LABEL_42;
      }

      if (mSelector == 1633906541)
      {
        goto LABEL_42;
      }

      if (mSelector != 1634169456)
      {
        goto LABEL_39;
      }

      *buf = 0;
      v38 = buf;
      v39 = 0x2000000000;
      LODWORD(v40) = 0;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 0x40000000;
      v29[2] = ___ZNK15HALS_MetaDevice19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_3;
      v29[3] = &unk_1E8674B48;
      v29[4] = buf;
      v29[5] = this;
      v17 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v17, v29);
    }

    else
    {
      if (mSelector > 1667461732)
      {
        if (mSelector == 1667461733)
        {
          goto LABEL_25;
        }

        if (mSelector == 1684107364)
        {
LABEL_46:
          v26 = *MEMORY[0x1E69E9840];
          return v13;
        }

        v15 = 1684893796;
        goto LABEL_38;
      }

      if (mSelector == 1634755428)
      {
        goto LABEL_42;
      }

      if (mSelector != 1635017072)
      {
        goto LABEL_39;
      }

      *buf = 0;
      v38 = buf;
      v39 = 0x2000000000;
      LODWORD(v40) = 0;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 0x40000000;
      v28[2] = ___ZNK15HALS_MetaDevice19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_4;
      v28[3] = &unk_1E8674B70;
      v28[4] = buf;
      v28[5] = this;
      v22 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v22, v28);
    }

LABEL_35:
    v13 = (4 * *(v38 + 24));
LABEL_44:
    v21 = buf;
    goto LABEL_45;
  }

  if (mSelector > 1735554415)
  {
    if (mSelector > 1853059618)
    {
      if (mSelector == 1853059619)
      {
        *buf = 0;
        v38 = buf;
        v39 = 0x2000000000;
        LODWORD(v40) = 0;
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 0x40000000;
        v30[2] = ___ZNK15HALS_MetaDevice19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_2;
        v30[3] = &unk_1E8674B20;
        v30[4] = buf;
        v30[5] = this;
        v25 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v25, v30);
        v13 = (16 * *(v38 + 24));
        goto LABEL_44;
      }

      if (mSelector != 1952542755)
      {
        if (mSelector != 1870098020)
        {
          goto LABEL_39;
        }

        *buf = 0;
        v38 = buf;
        v39 = 0x2000000000;
        LODWORD(v40) = 0;
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 0x40000000;
        v31[2] = ___ZNK15HALS_MetaDevice19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke;
        v31[3] = &unk_1E8674AF8;
        v32 = a4 >> 2;
        v31[5] = this;
        v31[6] = a5;
        v31[4] = buf;
        v16 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v16, v31);
        goto LABEL_35;
      }

LABEL_42:
      v13 = 8;
      goto LABEL_46;
    }

    if (mSelector == 1735554416)
    {
      goto LABEL_42;
    }

    v15 = 1769302372;
LABEL_38:
    if (mSelector != v15)
    {
      goto LABEL_39;
    }

    goto LABEL_46;
  }

  if ((mSelector - 1685278561) > 0x11 || ((1 << (mSelector - 97)) & 0x20003) == 0)
  {
    if (mSelector == 1685087596)
    {
      goto LABEL_46;
    }

    v15 = 1685287012;
    goto LABEL_38;
  }

LABEL_25:
  v18 = *(this + 208);
  if (v18 && (mSelector == 1685278578 || mSelector == 1685278561))
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x2000000000;
    v36 = 0;
    v19 = *v18;
    *buf = MEMORY[0x1E69E9820];
    v38 = 0x40000000;
    v39 = ___ZNK25HALS_MetaDevice_HostedDSP19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke;
    v40 = &unk_1E8672FD0;
    v46 = a4;
    v43 = a3;
    v44 = a5;
    v45 = a6;
    v41 = &v33;
    v42 = v18;
    v20 = (*(*v19 + 64))(v19);
    HALB_CommandGate::ExecuteCommand(v20, buf);
    v13 = *(v34 + 6);
    v21 = &v33;
LABEL_45:
    _Block_object_dispose(v21, 8);
    goto LABEL_46;
  }

LABEL_39:
  v23 = *MEMORY[0x1E69E9840];

  return HALS_Device::GetPropertyDataSize(this, v11, a3, a4, a5, a6);
}

void ___ZNK15HALS_MetaDevice19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 40);
  v4 = 1;
  do
  {
    v5 = v4;
    v7 = (*(*v3 + 392))(v3, v2 & 1);
    if (v7)
    {
      v8 = 0;
      do
      {
        v11 = (*(*v3 + 400))(v3, v2 & 1, v8);
        if (v11 && HALS_Object::IsObjectClassInClassIDList(*(a1 + 56), *(a1 + 48), v11, v10))
        {
          ++*(*(*(a1 + 32) + 8) + 24);
        }

        HALS_ObjectMap::ReleaseObject(v11, v9);
        v8 = (v8 + 1);
      }

      while (v7 != v8);
    }

    v4 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  v12 = v3[187];
  v13 = v3[188];
  if (v12 != v13)
  {
    v14 = 0;
    v15 = v3[187];
    do
    {
      v17 = *v15;
      v16 = *(v15 + 1);
      v15 = (v15 + 24);
      v14 += (v16 - v17) >> 3;
    }

    while (v15 != v13);
    if (v14)
    {
      for (i = 0; i != v14; ++i)
      {
        SubDeviceByIndex = HALS_MetaDeviceDescription::GetSubDeviceByIndex(v12, v13, i);
        if (HALS_Object::IsObjectClassInClassIDList(*(a1 + 56), *(a1 + 48), SubDeviceByIndex, v20))
        {
          ++*(*(*(a1 + 32) + 8) + 24);
        }
      }
    }
  }

  v21 = v3[194];
  v22 = v3[193];
  v23 = (v21 - v22) >> 3;
  if (!v23)
  {
    return;
  }

  v24 = 0;
  do
  {
    if (v22 == v21)
    {
      goto LABEL_29;
    }

    v25 = 0;
    v26 = v22;
    while (1)
    {
      if (v25 != v24)
      {
        ++v25;
        goto LABEL_25;
      }

      v25 = v24;
      if (*v26)
      {
        break;
      }

LABEL_25:
      if (++v26 == v21)
      {
        goto LABEL_29;
      }
    }

    if (HALS_Object::IsObjectClassInClassIDList(*(a1 + 56), *(a1 + 48), *v26, v6))
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }

LABEL_29:
    ++v24;
  }

  while (v24 != v23);
}

void sub_1DE43AD20(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_MetaDevice19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v2[197];
  if (v3 || (v3 = v2[196]) != 0)
  {
    v4 = HALS_MetaSubDevice::CopyRealIODevice(v3);
    v6 = v4;
    if (v4)
    {
      LODWORD(v7) = (*(*v4 + 288))(v4);
    }

    else
    {
      LODWORD(v7) = 0;
    }

    HALS_ObjectMap::ReleaseObject(v6, v5);
  }

  else if (((v2[194] - v2[193]) & 0x7FFFFFFF8) != 0)
  {
    get_tap_sample_rate_range(v8);
    v7 = (v8[1] - v8[0]) >> 4;
    if (v8[0])
    {
      operator delete(v8[0]);
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v7;
}

void sub_1DE43AE30(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  HALS_ObjectMap::ReleaseObject(v18, a2);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZNK15HALS_MetaDevice19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_3(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 1496);
  v3 = *(v1 + 1504);
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v6 = *v2;
      v5 = v2[1];
      v2 += 3;
      v4 += (v5 - v6) >> 3;
    }

    while (v2 != v3);
  }

  *(*(*(result + 32) + 8) + 24) = v4;
  return result;
}

uint64_t HALS_MetaDevice::IsPropertySettable(HALS_MetaDevice *this, unsigned int a2, AudioObjectPropertyAddress *a3, const AudioObjectPropertyAddress *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  if (((*(*this + 96))(this) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  v9 = 1;
  if (a3->mSelector <= 1685278560)
  {
    if (mSelector <= 1635017071)
    {
      if (mSelector <= 1634562931)
      {
        if (mSelector == 1633906541)
        {
          goto LABEL_42;
        }

        v11 = 1634169456;
        goto LABEL_23;
      }

      if (mSelector == 1634562932)
      {
        goto LABEL_42;
      }

      v10 = 1634755428;
    }

    else
    {
      if (mSelector <= 1684107363)
      {
        if (mSelector != 1635017072)
        {
          if (mSelector != 1667461733)
          {
            goto LABEL_43;
          }

          goto LABEL_37;
        }

        goto LABEL_41;
      }

      if (mSelector == 1684107364 || mSelector == 1684893796)
      {
        goto LABEL_41;
      }

      v10 = 1685087596;
    }

    if (mSelector != v10)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (mSelector > 1819173228)
  {
    if (mSelector <= 1952542754)
    {
      if (mSelector == 1819173229 || mSelector == 1851878764)
      {
        goto LABEL_42;
      }

      v11 = 1869180523;
LABEL_23:
      if (mSelector != v11)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    if (mSelector == 1952542755)
    {
      goto LABEL_42;
    }

    if (mSelector != 1983996971 && mSelector != 1986622324 || AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0))
    {
      goto LABEL_43;
    }

    if (a3->mScope == 1768845428)
    {
      atomic_load(this + 1592);
      goto LABEL_42;
    }

LABEL_41:
    v9 = 0;
    goto LABEL_42;
  }

  if (mSelector > 1685287011)
  {
    if (mSelector != 1685287012)
    {
      if (mSelector == 1735554416)
      {
        goto LABEL_42;
      }

      v11 = 1769302372;
      goto LABEL_23;
    }

    goto LABEL_41;
  }

  if ((mSelector - 1685278561) <= 0x11 && ((1 << (mSelector - 97)) & 0x20003) != 0)
  {
LABEL_37:
    v12 = *(this + 208);
    if (!v12 || mSelector != 1685278578 && mSelector != 1685278561)
    {
      goto LABEL_43;
    }

    v19 = 0;
    v20 = &v19;
    v21 = 0x2000000000;
    v22 = 0;
    v13 = *v12;
    *buf = MEMORY[0x1E69E9820];
    v24 = 0x40000000;
    v25 = ___ZNK25HALS_MetaDevice_HostedDSP18IsPropertySettableEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke;
    v26 = &unk_1E8672FA8;
    v29 = a3;
    v30 = a4;
    v27 = &v19;
    v28 = v12;
    v14 = (*(*v13 + 64))(v13);
    HALB_CommandGate::ExecuteCommand(v14, buf);
    v9 = *(v20 + 24);
    _Block_object_dispose(&v19, 8);
LABEL_42:
    v15 = *MEMORY[0x1E69E9840];
    return v9 & 1;
  }

LABEL_43:
  v17 = *MEMORY[0x1E69E9840];

  return HALS_Device::IsPropertySettable(this, v7, a3, a4);
}

uint64_t HALS_MetaDevice::HasProperty(HALS_MetaDevice *this, int a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v22 = a2;
  v20[0] = this;
  v20[1] = &v22;
  v20[2] = a3;
  v20[3] = &v21;
  v21 = a4;
  v19 = 0;
  if (!(*(*this + 184))(this, a3, a4))
  {
    goto LABEL_56;
  }

  mSelector = a3->mSelector;
  HasProperty = 1;
  if (a3->mSelector > 1685287011)
  {
    if (mSelector > 1851878763)
    {
      if (mSelector > 1952542754)
      {
        if (mSelector != 1952542755)
        {
          if (mSelector != 1983996971 && mSelector != 1986622324)
          {
            goto LABEL_45;
          }

          if (HALS_MetaDevice::HasProperty(unsigned int,AudioObjectPropertyAddress const&,HALS_Client *)const::$_0::operator()(v20, &v19))
          {
            HasProperty = v19;
            goto LABEL_57;
          }

          if (a3->mScope == 1768845428)
          {
            atomic_load(this + 1592);
            goto LABEL_57;
          }

          goto LABEL_56;
        }

        goto LABEL_57;
      }

      if (mSelector != 1851878764)
      {
        if (mSelector == 1852793963)
        {
          goto LABEL_56;
        }

        v9 = 1869180523;
        goto LABEL_21;
      }
    }

    else
    {
      if (mSelector <= 1769302371)
      {
        if (mSelector == 1685287012)
        {
          goto LABEL_57;
        }

        if (mSelector == 1685414763)
        {
          goto LABEL_56;
        }

        v10 = 1735554416;
        goto LABEL_44;
      }

      if (mSelector == 1769302372)
      {
        HasProperty = a3->mScope == 1735159650 && a3->mElement == 0;
        goto LABEL_57;
      }

      if (mSelector == 1819107691)
      {
        goto LABEL_57;
      }

      if (mSelector != 1819173229)
      {
LABEL_45:
        HasProperty = HALS_Device::HasProperty(this, v6, a3, v21);
        goto LABEL_57;
      }
    }

    *buf = 0;
    v28 = buf;
    v29 = 0x3802000000;
    v30 = __Block_byref_object_copy__49;
    v31 = __Block_byref_object_dispose__50;
    v32 = &unk_1F5991188;
    v33 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 0x40000000;
    v18[2] = ___ZNK15HALS_MetaDevice11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke;
    v18[3] = &unk_1E8674AD0;
    v18[4] = buf;
    v18[5] = this;
    v11 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v11, v18);
    HasProperty = *(v28 + 48) != 0;
    _Block_object_dispose(buf, 8);
    OS::CF::UntypedObject::~UntypedObject(&v32);
    goto LABEL_57;
  }

  if (mSelector > 1667461732)
  {
    if (mSelector <= 1685087595)
    {
      if (mSelector != 1667461733)
      {
        if (mSelector == 1684107364)
        {
          goto LABEL_57;
        }

        v10 = 1684893796;
        goto LABEL_44;
      }
    }

    else if ((mSelector - 1685278561) > 0x11 || ((1 << (mSelector - 97)) & 0x20003) == 0)
    {
      v10 = 1685087596;
      goto LABEL_44;
    }

    v12 = *(this + 208);
    if (!v12 || mSelector != 1685278578 && mSelector != 1685278561)
    {
      goto LABEL_45;
    }

    v23 = 0;
    v24 = &v23;
    v25 = 0x2000000000;
    v26 = 0;
    v13 = *v12;
    *buf = MEMORY[0x1E69E9820];
    v28 = 0x40000000;
    v29 = ___ZNK25HALS_MetaDevice_HostedDSP11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke;
    v30 = &unk_1E8672F80;
    v33 = a3;
    v34 = v21;
    v31 = &v23;
    v32 = v12;
    v14 = (*(*v13 + 64))(v13);
    HALB_CommandGate::ExecuteCommand(v14, buf);
    HasProperty = *(v24 + 24);
    _Block_object_dispose(&v23, 8);
    goto LABEL_57;
  }

  if (mSelector <= 1634755427)
  {
    if (mSelector == 1633906541 || mSelector == 1634169456)
    {
      goto LABEL_57;
    }

    v10 = 1634562932;
    goto LABEL_44;
  }

  if (mSelector > 1634758773)
  {
    if (mSelector == 1634758774)
    {
      goto LABEL_56;
    }

    v10 = 1635017072;
LABEL_44:
    if (mSelector == v10)
    {
      goto LABEL_57;
    }

    goto LABEL_45;
  }

  if (mSelector != 1634755428)
  {
    v9 = 1634758765;
LABEL_21:
    if (mSelector != v9)
    {
      goto LABEL_45;
    }

LABEL_56:
    HasProperty = 0;
  }

LABEL_57:
  v16 = *MEMORY[0x1E69E9840];
  return HasProperty & 1;
}

void sub_1DE43B9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__49(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 40) = &unk_1F5991188;
  return result;
}

uint64_t ___ZNK15HALS_MetaDevice11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke(uint64_t a1)
{
  v2 = HALS_MetaDeviceDescription::CopyDeviceName(*(*(a1 + 40) + 1488));
  v3 = *(*(a1 + 32) + 8) + 40;

  return OS::CF::UntypedObject::operator=(v3, v2);
}

uint64_t HALS_MetaDevice::HasProperty(unsigned int,AudioObjectPropertyAddress const&,HALS_Client *)const::$_0::operator()(uint64_t a1, _BYTE *a2)
{
  v4 = *a1;
  v6 = AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0);
  if (v6)
  {
    *a2 = HALS_Device::HasProperty(v4, v5, *(a1 + 16), **(a1 + 24));
  }

  return v6;
}

uint64_t HALS_MetaDevice::_Deactivate(HALS_MetaDevice *this)
{
  v19 = *MEMORY[0x1E69E9840];
  if (((*(this + 194) - *(this + 193)) & 0x7FFFFFFF8) != 0)
  {
    HALS_MetaDevice::UnregisterTaps(this);
  }

  v2 = 0;
  v3 = 1;
  do
  {
    v4 = v3;
    v5 = (this + 24 * v2 + 1608);
    v6 = *v5;
    if (v5[1] != *v5)
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = *(v6 + 8 * v7);
        (*(*v9 + 8))(v9);
        HALS_ObjectMap::ObjectIsDead(v9, v10);
        v7 = v8;
        v6 = *v5;
        ++v8;
      }

      while (v7 < (v5[1] - *v5) >> 3);
    }

    v3 = 0;
    v5[1] = v6;
    v2 = 1;
  }

  while ((v4 & 1) != 0);
  v11 = *((*(**(this + 184) + 64))() + 72);
  if (v11 != pthread_self())
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "HALS_MetaDeviceDescription.cpp";
      v17 = 1024;
      v18 = 64;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaDeviceDescription::Deactivate: inner methods have to be called from inside the command gate", &v15, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  HALS_MetaDeviceDescription::TeardownSubDeviceList((this + 1472));
  HALS_MetaDeviceDescription::TeardownSubTapList((this + 1472));
  v12 = *MEMORY[0x1E69E9840];

  return HALS_Device::_Deactivate(this);
}

void HALS_MetaDevice::~HALS_MetaDevice(void **this)
{
  HALS_MetaDevice::~HALS_MetaDevice(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F596E9C8;
  if (*(this + 2031) < 0)
  {
    operator delete(this[251]);
  }

  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 209));
  v2 = this[208];
  this[208] = 0;
  if (v2)
  {
    MEMORY[0x1E12C1730](v2, 0x20C4093837F09);
  }

  for (i = 0; i != -6; i -= 3)
  {
    v4 = this[i + 204];
    if (v4)
    {
      this[i + 205] = v4;
      operator delete(v4);
    }
  }

  HALS_MetaDeviceDescription::~HALS_MetaDeviceDescription((this + 184));

  HALS_Device::~HALS_Device(this);
}

void HALS_MetaDevice::Activate(const __CFDictionary **this)
{
  HALS_MetaDevice::_UpdateStreams(this, &v8);
  if (*(this + 1660) == 1)
  {
    v2 = *(this + 414);
  }

  else
  {
    v2 = 0;
  }

  v3 = HALS_ObjectMap::CopyObjectByObjectID(v2);
  if (AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0))
  {
    v4 = this[208];
    v5 = *v4;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = ___ZN25HALS_MetaDevice_HostedDSP40InitializeDSPStateFromSubdeviceForClientEbP11HALS_Client_block_invoke;
    v9[3] = &__block_descriptor_tmp_8;
    v9[4] = v4;
    v9[5] = v3;
    v6 = (*(*v5 + 64))(v5);
    HALB_CommandGate::ExecuteCommand(v6, v9);
  }

  else
  {
    HALS_MetaDevice::InheritSubdeviceDSPForClient(this, 1, v3);
  }

  HALS_Device::Activate(this);
  HALS_ObjectMap::ReleaseObject(v3, v7);
}

void ___ZN15HALS_MetaDevice17RealDeviceArrivedEP11HALS_Device_block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  v2 = *(*(a1 + 32) + 8);
  v3 = *(*(a1 + 40) + 8);
  if (HALS_MetaDeviceDescription::IsDeviceInRawDescription(v1 + 184, *(a1 + 56)))
  {
    *v19 = 0;
    HALS_DeviceState::HALS_DeviceState(v21);
    HALS_DeviceState::Capture(v21, v1, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
    HALS_MetaDeviceDescription::UpdateSubDeviceList(v1 + 184, 0);
    HALS_MetaDevice::_UpdateStreams(v1, v19);
    HALS_DeviceState::HALS_DeviceState(v20);
    HALS_DeviceState::Capture(v20, v1, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
    HALS_DeviceState::Compare(v21, v20, (v2 + 40), (v3 + 40));
    *&v18.mSelector = 0x676C6F62616D7374;
    v18.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v2 + 40), &v18, v4);
    *&v18.mSelector = 0x676C6F6261706364;
    v18.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v2 + 40), &v18, v5);
    *&v18.mSelector = 0x676C6F6267727570;
    v18.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v2 + 40), &v18, v6);
    *&v18.mSelector = 0x676C6F6261677270;
    v18.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v2 + 40), &v18, v7);
    *&v18.mSelector = 0x676C6F6261636F6DLL;
    v18.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v2 + 40), &v18, v8);
    *&v18.mSelector = 0x676C6F6261746170;
    v18.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v2 + 40), &v18, v9);
    *&v18.mSelector = 0x676C6F6274617023;
    v18.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v2 + 40), &v18, v10);
    v12 = v19[1];
    if (v19[1] || v19[0])
    {
      *&v18.mSelector = 0x676C6F6273746D23;
      v18.mElement = 0;
      CAPropertyAddressList::AppendUniqueItem((v2 + 40), &v18, v11);
      if (v12)
      {
        *&v18.mSelector = 0x696E707473746D23;
        v18.mElement = 0;
        CAPropertyAddressList::AppendUniqueItem((v2 + 40), &v18, v13);
        if (!v19[0])
        {
LABEL_9:
          if (*(v2 + 40) == *(v2 + 48))
          {
            v14 = *(v3 + 40);
            while (v14 != *(v3 + 48))
            {
              v15 = *v14;
              v16 = v14[1];
              v14 += 4;
              if (v15 != v16)
              {
                goto LABEL_13;
              }
            }
          }

          else
          {
LABEL_13:
            *&v18.mSelector = 0x676C6F6264696666;
            v18.mElement = 0;
            CAPropertyAddressList::AppendUniqueItem((v2 + 40), &v18, v13);
          }

          goto LABEL_14;
        }

LABEL_8:
        *&v18.mSelector = 0x6F75747073746D23;
        v18.mElement = 0;
        CAPropertyAddressList::AppendUniqueItem((v2 + 40), &v18, v13);
        goto LABEL_9;
      }

      if (v19[0])
      {
        goto LABEL_8;
      }
    }

LABEL_14:
    HALS_DeviceState::~HALS_DeviceState(v20);
    HALS_DeviceState::~HALS_DeviceState(v21);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1DE43C19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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
  v16 = va_arg(va1, void);
  HALS_DeviceState::~HALS_DeviceState(va);
  HALS_DeviceState::~HALS_DeviceState(va1);
  _Unwind_Resume(a1);
}

void ___ZN15HALS_MetaDevice14RealDeviceDiedEP11HALS_Device_block_invoke(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1[6];
  v2 = a1[7];
  v3 = *(a1[4] + 8);
  v4 = *(a1[5] + 8);
  if (HALS_MetaDeviceDescription::IsDeviceInRawDescription(v1 + 184, v2))
  {
    *v20 = 0;
    HALS_DeviceState::HALS_DeviceState(v22);
    HALS_DeviceState::Capture(v22, v1, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
    HALS_MetaDeviceDescription::UpdateSubDeviceList(v1 + 184, v2);
    HALS_MetaDevice::_UpdateStreams(v1, v20);
    HALS_DeviceState::HALS_DeviceState(v21);
    HALS_DeviceState::Capture(v21, v1, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
    HALS_DeviceState::Compare(v22, v21, (v3 + 40), (v4 + 40));
    *&v19.mSelector = 0x676C6F62616D7374;
    v19.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v3 + 40), &v19, v5);
    *&v19.mSelector = 0x676C6F6261706364;
    v19.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v3 + 40), &v19, v6);
    *&v19.mSelector = 0x676C6F6267727570;
    v19.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v3 + 40), &v19, v7);
    *&v19.mSelector = 0x676C6F6261677270;
    v19.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v3 + 40), &v19, v8);
    *&v19.mSelector = 0x676C6F6261636F6DLL;
    v19.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v3 + 40), &v19, v9);
    *&v19.mSelector = 0x676C6F6261746170;
    v19.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v3 + 40), &v19, v10);
    *&v19.mSelector = 0x676C6F6274617023;
    v19.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v3 + 40), &v19, v11);
    v13 = v20[1];
    if (v20[1] || v20[0])
    {
      *&v19.mSelector = 0x676C6F6273746D23;
      v19.mElement = 0;
      CAPropertyAddressList::AppendUniqueItem((v3 + 40), &v19, v12);
      if (v13)
      {
        *&v19.mSelector = 0x696E707473746D23;
        v19.mElement = 0;
        CAPropertyAddressList::AppendUniqueItem((v3 + 40), &v19, v14);
        if (!v20[0])
        {
LABEL_9:
          if (*(v3 + 40) == *(v3 + 48))
          {
            v15 = *(v4 + 40);
            while (v15 != *(v4 + 48))
            {
              v16 = *v15;
              v17 = v15[1];
              v15 += 4;
              if (v16 != v17)
              {
                goto LABEL_13;
              }
            }
          }

          else
          {
LABEL_13:
            *&v19.mSelector = 0x676C6F6264696666;
            v19.mElement = 0;
            CAPropertyAddressList::AppendUniqueItem((v3 + 40), &v19, v14);
          }

          goto LABEL_14;
        }

LABEL_8:
        *&v19.mSelector = 0x6F75747073746D23;
        v19.mElement = 0;
        CAPropertyAddressList::AppendUniqueItem((v3 + 40), &v19, v14);
        goto LABEL_9;
      }

      if (v20[0])
      {
        goto LABEL_8;
      }
    }

LABEL_14:
    HALS_DeviceState::~HALS_DeviceState(v21);
    HALS_DeviceState::~HALS_DeviceState(v22);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1DE43C47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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
  v16 = va_arg(va1, void);
  HALS_DeviceState::~HALS_DeviceState(va);
  HALS_DeviceState::~HALS_DeviceState(va1);
  _Unwind_Resume(a1);
}

void ___ZN15HALS_MetaDevice25HandleTapSampleRateChangeEv_block_invoke(void *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v1 = a1[6];
  if (((*(v1 + 1552) - *(v1 + 1544)) & 0x7FFFFFFF8) != 0)
  {
    *v37 = 0;
    HALS_DeviceState::HALS_DeviceState(v39);
    HALS_DeviceState::Capture(v39, v1, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
    HALS_MetaDeviceDescription::UpdateSubDeviceList((v1 + 1472), 0);
    HALS_MetaDevice::_UpdateStreams(v1, v37);
    HALS_DeviceState::HALS_DeviceState(v38);
    HALS_DeviceState::Capture(v38, v1, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
    HALS_DeviceState::Compare(v39, v38, (*(a1[4] + 8) + 40), (*(a1[5] + 8) + 40));
    v3 = *(a1[4] + 8);
    *&v36.mSelector = 0x676C6F62616D7374;
    v36.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v3 + 40), &v36, v4);
    v5 = *(a1[4] + 8);
    *&v36.mSelector = 0x676C6F6261706364;
    v36.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v5 + 40), &v36, v6);
    v7 = *(a1[4] + 8);
    *&v36.mSelector = 0x676C6F6267727570;
    v36.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v7 + 40), &v36, v8);
    v9 = *(a1[4] + 8);
    *&v36.mSelector = 0x676C6F6261677270;
    v36.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v9 + 40), &v36, v10);
    v11 = *(a1[4] + 8);
    *&v36.mSelector = 0x676C6F6261636F6DLL;
    v36.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v11 + 40), &v36, v12);
    v13 = *(a1[4] + 8);
    *&v36.mSelector = 0x676C6F6261746170;
    v36.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v13 + 40), &v36, v14);
    v15 = *(a1[4] + 8);
    *&v36.mSelector = 0x676C6F6274617023;
    v36.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v15 + 40), &v36, v16);
    v17 = *(a1[4] + 8);
    *&v36.mSelector = 0x676C6F626E737274;
    v36.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v17 + 40), &v36, v18);
    v19 = *(a1[4] + 8);
    *&v36.mSelector = 0x676C6F6261737274;
    v36.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v19 + 40), &v36, v20);
    v21 = *(a1[4] + 8);
    *&v36.mSelector = 0x676C6F626E737223;
    v36.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem((v21 + 40), &v36, v22);
    v24 = v37[1];
    if (v37[1] || v37[0])
    {
      *&v36.mSelector = 0x676C6F6273746D23;
      v36.mElement = 0;
      CAPropertyAddressList::AppendUniqueItem((*(a1[4] + 8) + 40), &v36, v23);
      if (v24)
      {
        *&v36.mSelector = 0x696E707473746D23;
        v36.mElement = 0;
        CAPropertyAddressList::AppendUniqueItem((*(a1[4] + 8) + 40), &v36, v25);
        if (!v37[0])
        {
LABEL_9:
          v26 = *(a1[4] + 8);
          v28 = *(v26 + 40);
          v29 = *(v26 + 48);
          v27 = (v26 + 40);
          if (v28 == v29)
          {
            v30 = *(a1[5] + 8);
            v31 = *(v30 + 40);
            v32 = *(v30 + 48);
            while (v31 != v32)
            {
              v33 = *v31;
              v34 = v31[1];
              v31 += 4;
              if (v33 != v34)
              {
                goto LABEL_13;
              }
            }
          }

          else
          {
LABEL_13:
            *&v36.mSelector = 0x676C6F6264696666;
            v36.mElement = 0;
            CAPropertyAddressList::AppendUniqueItem(v27, &v36, v25);
          }

          goto LABEL_14;
        }

LABEL_8:
        *&v36.mSelector = 0x6F75747073746D23;
        v36.mElement = 0;
        CAPropertyAddressList::AppendUniqueItem((*(a1[4] + 8) + 40), &v36, v25);
        goto LABEL_9;
      }

      if (v37[0])
      {
        goto LABEL_8;
      }
    }

LABEL_14:
    HALS_DeviceState::~HALS_DeviceState(v38);
    HALS_DeviceState::~HALS_DeviceState(v39);
  }

  v35 = *MEMORY[0x1E69E9840];
}

void sub_1DE43C824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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
  v16 = va_arg(va1, void);
  HALS_DeviceState::~HALS_DeviceState(va);
  HALS_DeviceState::~HALS_DeviceState(va1);
  _Unwind_Resume(a1);
}

uint64_t ___ZN15HALS_MetaDevice6HasTapEN10applesauce2CF9StringRefE_block_invoke(uint64_t a1)
{
  v2 = HALS_MetaDeviceDescription::CopyTapList(*(*(a1 + 40) + 1488));
  v3 = *(*(a1 + 32) + 8) + 40;

  return OS::CF::UntypedObject::operator=(v3, v2);
}

CFDictionaryRef ___ZN15HALS_MetaDevice16UpdateTapReadersEN10applesauce2CF9StringRefE_block_invoke(uint64_t a1)
{
  result = HALS_MetaDeviceDescription::CopyRawDescription((*(a1 + 40) + 1472));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t HALS_AHPObject::SetPropertyData(HALS_AHPObject *this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  if (((*(*this + 104))(this, a2, a3, a8) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    v21 = mSelector == 1937007734;
    v22 = 1869638759;
  }

  else
  {
    v21 = mSelector == 1650682995;
    v22 = 1668047219;
  }

  if (v21 || mSelector == v22)
  {
    HALS_Object::SetPropertyData(this, a2, a3, v16, v17, v18, v19, a8);
  }

  v24 = *(*(this + 6) + 32);

  return HALS_AHPPlugIn::ObjectSetPropertyData(v24, a2, a3, a6, a7, a4, a5);
}

uint64_t HALS_AHPObject::GetPropertyData(HALS_AHPObject *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, uint64_t *a6, uint64_t a7, const void *a8, HALS_Client *a9)
{
  if (((*(*this + 96))(this, a2, a3, a9) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    v19 = mSelector == 1937007734;
    v20 = 1869638759;
  }

  else
  {
    v19 = mSelector == 1650682995;
    v20 = 1668047219;
  }

  if (v19 || mSelector == v20)
  {

    return HALS_Object::GetPropertyData(this, v17, a3, a4, a5, a6);
  }

  else
  {
    *a5 = a4;
    v23 = *(*(this + 6) + 32);

    return HALS_AHPPlugIn::ObjectGetPropertyData(v23, a2, a3, a7, a8, a5, a6);
  }
}

uint64_t HALS_AHPObject::GetPropertyDataSize(HALS_AHPObject *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, HALS_Client *a6)
{
  v11 = (*(*this + 96))(this, a2, a3, a6);
  if ((v11 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    v14 = mSelector == 1937007734;
    v15 = 1869638759;
  }

  else
  {
    v14 = mSelector == 1650682995;
    v15 = 1668047219;
  }

  if (v14 || mSelector == v15)
  {

    return HALS_Object::GetPropertyDataSize(v11, v12, a3);
  }

  else
  {
    v18 = *(*(this + 6) + 32);

    return HALS_AHPPlugIn::ObjectGetPropertyDataSize(v18, a2, a3, a4, a5);
  }
}

uint64_t HALS_AHPObject::IsPropertySettable(HALS_AHPObject *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  v7 = (*(*this + 96))(this, a2, a3, a4);
  if ((v7 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1869638758)
  {
    v10 = mSelector == 1937007734;
    v11 = 1869638759;
  }

  else
  {
    v10 = mSelector == 1650682995;
    v11 = 1668047219;
  }

  if (v10 || mSelector == v11)
  {

    return HALS_Object::IsPropertySettable(v7, v8, a3);
  }

  else
  {
    v14 = *(*(this + 6) + 32);

    return HALS_AHPPlugIn::ObjectIsPropertySettable(v14, a2, a3);
  }
}

BOOL HALS_AHPObject::HasProperty(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = *a3;
  result = 1;
  if (*a3 > 1869638758)
  {
    v6 = v4 == 1869638759;
    v7 = 1937007734;
  }

  else
  {
    v6 = v4 == 1650682995;
    v7 = 1668047219;
  }

  if (!v6 && v4 != v7)
  {
    return (*(**(*(a1 + 48) + 32) + 184))(*(*(a1 + 48) + 32)) != 0;
  }

  return result;
}

void HALS_AHPObject::~HALS_AHPObject(HALS_AHPObject *this)
{
  HALS_Object::~HALS_Object(this);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<AMCP::Tone_Generator::generate_or_compare_audio(AMCP::DAL::DAL_Time const&,AMCP::DAL::DAL_Timed_Segment &,AMCP::DAL::Container const&,AMCP::Tone_Generator::Generate_Or_Compare,double)::$_0,std::tuple<char const*,int>>::perform(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v10 = 136315394;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Cannot compare empty range", &v10, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<AMCP::Tone_Generator::generate_or_compare_audio(AMCP::DAL::DAL_Time const&,AMCP::DAL::DAL_Timed_Segment &,AMCP::DAL::Container const&,AMCP::Tone_Generator::Generate_Or_Compare,double)::$_0,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

float AMCP::DAL::Sample_Setter<float>::get_sample(AMCP::Log::AMCP_Scope_Registry *a1, unint64_t a2, unint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 1);
  if (a2 >= (*(a1 + 2) - v3) >> 4)
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
      v26 = "Sample_Format_Handler.h";
      v27 = 1024;
      v28 = 144;
      v29 = 2080;
      v30 = "not (stream < m_sample_group.size())";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
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
    v31 = "virtual float AMCP::DAL::Sample_Setter<float>::get_sample(size_t, size_t) [T = float]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v33 = 144;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  v4 = (v3 + 16 * a2);
  if (v4[1] <= a3)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      v26 = "Sample_Format_Handler.h";
      v27 = 1024;
      v28 = 145;
      v29 = 2080;
      v30 = "not (index < m_sample_group[stream].m_number_of_samples)";
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
    v31 = "virtual float AMCP::DAL::Sample_Setter<float>::get_sample(size_t, size_t) [T = float]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v33 = 145;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  result = *(*v4 + 4 * a3);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE43D528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

float AMCP::DAL::Sample_Setter<float>::subtract_sample(AMCP::Log::AMCP_Scope_Registry *a1, unint64_t a2, unint64_t a3, float a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  if (a2 >= (*(a1 + 2) - v4) >> 4)
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = *v11;
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    else
    {
      v12 = *v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v28 = "Sample_Format_Handler.h";
      v29 = 1024;
      v30 = 138;
      v31 = 2080;
      v32 = "not (stream < m_sample_group.size())";
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v18);
    std::logic_error::logic_error(&v19, &v18);
    v19.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5991430;
    v21 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v20);
    v33 = "virtual void AMCP::DAL::Sample_Setter<float>::subtract_sample(size_t, size_t, float) [T = float]";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v35 = 138;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v5 = (v4 + 16 * a2);
  if (v5[1] <= a3)
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = *v15;
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    else
    {
      v16 = *v15;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v28 = "Sample_Format_Handler.h";
      v29 = 1024;
      v30 = 139;
      v31 = 2080;
      v32 = "not (index < m_sample_group[stream].m_number_of_samples)";
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v18);
    std::logic_error::logic_error(&v19, &v18);
    v19.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5991430;
    v21 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v20);
    v33 = "virtual void AMCP::DAL::Sample_Setter<float>::subtract_sample(size_t, size_t, float) [T = float]";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v35 = 139;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v6 = *v5;
  result = *(v6 + 4 * a3) - a4;
  *(v6 + 4 * a3) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE43DA80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

float AMCP::DAL::Sample_Setter<float>::add_sample(AMCP::Log::AMCP_Scope_Registry *a1, unint64_t a2, unint64_t a3, float a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  if (a2 >= (*(a1 + 2) - v4) >> 4)
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = *v11;
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    else
    {
      v12 = *v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v28 = "Sample_Format_Handler.h";
      v29 = 1024;
      v30 = 132;
      v31 = 2080;
      v32 = "not (stream < m_sample_group.size())";
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v18);
    std::logic_error::logic_error(&v19, &v18);
    v19.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5991430;
    v21 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v20);
    v33 = "virtual void AMCP::DAL::Sample_Setter<float>::add_sample(size_t, size_t, float) [T = float]";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v35 = 132;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v5 = (v4 + 16 * a2);
  if (v5[1] <= a3)
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = *v15;
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    else
    {
      v16 = *v15;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v28 = "Sample_Format_Handler.h";
      v29 = 1024;
      v30 = 133;
      v31 = 2080;
      v32 = "not (index < m_sample_group[stream].m_number_of_samples)";
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v18);
    std::logic_error::logic_error(&v19, &v18);
    v19.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5991430;
    v21 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v20);
    v33 = "virtual void AMCP::DAL::Sample_Setter<float>::add_sample(size_t, size_t, float) [T = float]";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v35 = 133;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v6 = *v5;
  result = *(v6 + 4 * a3) + a4;
  *(v6 + 4 * a3) = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE43DFD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

AMCP::Log::AMCP_Scope_Registry *AMCP::DAL::Sample_Setter<float>::set_sample(AMCP::Log::AMCP_Scope_Registry *result, unint64_t a2, unint64_t a3, float a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = *(result + 1);
  if (a2 >= (*(result + 2) - v4) >> 4)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
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
      v26 = "Sample_Format_Handler.h";
      v27 = 1024;
      v28 = 126;
      v29 = 2080;
      v30 = "not (stream < m_sample_group.size())";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
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
    v31 = "virtual void AMCP::DAL::Sample_Setter<float>::set_sample(size_t, size_t, float) [T = float]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v33 = 126;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  v5 = (v4 + 16 * a2);
  if (v5[1] <= a3)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
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
      v26 = "Sample_Format_Handler.h";
      v27 = 1024;
      v28 = 127;
      v29 = 2080;
      v30 = "not (index < m_sample_group[stream].m_number_of_samples)";
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
    v31 = "virtual void AMCP::DAL::Sample_Setter<float>::set_sample(size_t, size_t, float) [T = float]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v33 = 127;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  *(*v5 + 4 * a3) = a4;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE43E528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

uint64_t AMCP::DAL::Sample_Setter<float>::length_in_frames(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 1);
  if (v1 == *(a1 + 2))
  {
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

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v19 = "Sample_Format_Handler.h";
      v20 = 1024;
      v21 = 121;
      v22 = 2080;
      v23 = "not (not m_sample_group.empty())";
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v17);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v9);
    std::logic_error::logic_error(&v10, &v9);
    v10.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v11, &v10);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = -1;
    v11.__vftable = &unk_1F5991430;
    v12 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v11);
    v24 = "virtual size_t AMCP::DAL::Sample_Setter<float>::length_in_frames() const [T = float]";
    v25 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v26 = 121;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v8);
  }

  result = *(v1 + 8);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE43E848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

void AMCP::DAL::Sample_Setter<float>::~Sample_Setter(void *a1)
{
  *a1 = &unk_1F596F050;
  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *AMCP::DAL::Sample_Setter<float>::~Sample_Setter(void *a1)
{
  *a1 = &unk_1F596F050;
  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100]((a1 + 1));
  return a1;
}

float AMCP::DAL::Sample_Setter<int>::get_sample(AMCP::Log::AMCP_Scope_Registry *a1, unint64_t a2, unint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 1);
  if (a2 >= (*(a1 + 2) - v3) >> 4)
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
      v26 = "Sample_Format_Handler.h";
      v27 = 1024;
      v28 = 144;
      v29 = 2080;
      v30 = "not (stream < m_sample_group.size())";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
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
    v31 = "virtual float AMCP::DAL::Sample_Setter<int>::get_sample(size_t, size_t) [T = int]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v33 = 144;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  v4 = (v3 + 16 * a2);
  if (v4[1] <= a3)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      v26 = "Sample_Format_Handler.h";
      v27 = 1024;
      v28 = 145;
      v29 = 2080;
      v30 = "not (index < m_sample_group[stream].m_number_of_samples)";
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
    v31 = "virtual float AMCP::DAL::Sample_Setter<int>::get_sample(size_t, size_t) [T = int]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v33 = 145;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  v5 = *MEMORY[0x1E69E9840];
  return *(*v4 + 4 * a3) / 2147483650.0;
}

void sub_1DE43EE58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

double AMCP::DAL::Sample_Setter<int>::subtract_sample(AMCP::Log::AMCP_Scope_Registry *a1, unint64_t a2, unint64_t a3, float a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  if (a2 >= (*(a1 + 2) - v4) >> 4)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      *buf = 136315650;
      v27 = "Sample_Format_Handler.h";
      v28 = 1024;
      v29 = 138;
      v30 = 2080;
      v31 = "not (stream < m_sample_group.size())";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
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
    v32 = "virtual void AMCP::DAL::Sample_Setter<int>::subtract_sample(size_t, size_t, float) [T = int]";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v34 = 138;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v5 = (v4 + 16 * a2);
  if (v5[1] <= a3)
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
      v27 = "Sample_Format_Handler.h";
      v28 = 1024;
      v29 = 139;
      v30 = 2080;
      v31 = "not (index < m_sample_group[stream].m_number_of_samples)";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
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
    v32 = "virtual void AMCP::DAL::Sample_Setter<int>::subtract_sample(size_t, size_t, float) [T = int]";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v34 = 139;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  result = fminf(fmaxf(a4, -1.0), 1.0) * 2147483650.0;
  *(*v5 + 4 * a3) -= result;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE43F3D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

double AMCP::DAL::Sample_Setter<int>::add_sample(AMCP::Log::AMCP_Scope_Registry *a1, unint64_t a2, unint64_t a3, float a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  if (a2 >= (*(a1 + 2) - v4) >> 4)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      *buf = 136315650;
      v27 = "Sample_Format_Handler.h";
      v28 = 1024;
      v29 = 132;
      v30 = 2080;
      v31 = "not (stream < m_sample_group.size())";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
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
    v32 = "virtual void AMCP::DAL::Sample_Setter<int>::add_sample(size_t, size_t, float) [T = int]";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v34 = 132;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v5 = (v4 + 16 * a2);
  if (v5[1] <= a3)
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
      v27 = "Sample_Format_Handler.h";
      v28 = 1024;
      v29 = 133;
      v30 = 2080;
      v31 = "not (index < m_sample_group[stream].m_number_of_samples)";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
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
    v32 = "virtual void AMCP::DAL::Sample_Setter<int>::add_sample(size_t, size_t, float) [T = int]";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v34 = 133;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  result = fminf(fmaxf(a4, -1.0), 1.0) * 2147483650.0;
  *(*v5 + 4 * a3) += result;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE43F950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

double AMCP::DAL::Sample_Setter<int>::set_sample(AMCP::Log::AMCP_Scope_Registry *a1, unint64_t a2, unint64_t a3, float a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  if (a2 >= (*(a1 + 2) - v4) >> 4)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      *buf = 136315650;
      v27 = "Sample_Format_Handler.h";
      v28 = 1024;
      v29 = 126;
      v30 = 2080;
      v31 = "not (stream < m_sample_group.size())";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
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
    v32 = "virtual void AMCP::DAL::Sample_Setter<int>::set_sample(size_t, size_t, float) [T = int]";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v34 = 126;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v5 = (v4 + 16 * a2);
  if (v5[1] <= a3)
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
      v27 = "Sample_Format_Handler.h";
      v28 = 1024;
      v29 = 127;
      v30 = 2080;
      v31 = "not (index < m_sample_group[stream].m_number_of_samples)";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
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
    v32 = "virtual void AMCP::DAL::Sample_Setter<int>::set_sample(size_t, size_t, float) [T = int]";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v34 = 127;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  result = fminf(fmaxf(a4, -1.0), 1.0) * 2147483650.0;
  *(*v5 + 4 * a3) = result;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE43FEC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

uint64_t AMCP::DAL::Sample_Setter<int>::length_in_frames(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 1);
  if (v1 == *(a1 + 2))
  {
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

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v19 = "Sample_Format_Handler.h";
      v20 = 1024;
      v21 = 121;
      v22 = 2080;
      v23 = "not (not m_sample_group.empty())";
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v17);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v9);
    std::logic_error::logic_error(&v10, &v9);
    v10.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v11, &v10);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = -1;
    v11.__vftable = &unk_1F5991430;
    v12 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v11);
    v24 = "virtual size_t AMCP::DAL::Sample_Setter<int>::length_in_frames() const [T = int]";
    v25 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v26 = 121;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v8);
  }

  result = *(v1 + 8);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE4401E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

void AMCP::DAL::Sample_Setter<int>::~Sample_Setter(void *a1)
{
  *a1 = &unk_1F596EFE8;
  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *AMCP::DAL::Sample_Setter<int>::~Sample_Setter(void *a1)
{
  *a1 = &unk_1F596EFE8;
  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100]((a1 + 1));
  return a1;
}

float AMCP::DAL::Sample_Setter<short>::get_sample(AMCP::Log::AMCP_Scope_Registry *a1, unint64_t a2, unint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 1);
  if (a2 >= (*(a1 + 2) - v3) >> 4)
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
      v26 = "Sample_Format_Handler.h";
      v27 = 1024;
      v28 = 144;
      v29 = 2080;
      v30 = "not (stream < m_sample_group.size())";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
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
    v31 = "virtual float AMCP::DAL::Sample_Setter<short>::get_sample(size_t, size_t) [T = short]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v33 = 144;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  v4 = (v3 + 16 * a2);
  if (v4[1] <= a3)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      v26 = "Sample_Format_Handler.h";
      v27 = 1024;
      v28 = 145;
      v29 = 2080;
      v30 = "not (index < m_sample_group[stream].m_number_of_samples)";
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
    v31 = "virtual float AMCP::DAL::Sample_Setter<short>::get_sample(size_t, size_t) [T = short]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v33 = 145;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  v5 = *MEMORY[0x1E69E9840];
  return *(*v4 + 2 * a3) / 32767.0;
}

void sub_1DE4407F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

double AMCP::DAL::Sample_Setter<short>::subtract_sample(AMCP::Log::AMCP_Scope_Registry *a1, unint64_t a2, unint64_t a3, float a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  if (a2 >= (*(a1 + 2) - v4) >> 4)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      *buf = 136315650;
      v27 = "Sample_Format_Handler.h";
      v28 = 1024;
      v29 = 138;
      v30 = 2080;
      v31 = "not (stream < m_sample_group.size())";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
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
    v32 = "virtual void AMCP::DAL::Sample_Setter<short>::subtract_sample(size_t, size_t, float) [T = short]";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v34 = 138;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v5 = (v4 + 16 * a2);
  if (v5[1] <= a3)
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
      v27 = "Sample_Format_Handler.h";
      v28 = 1024;
      v29 = 139;
      v30 = 2080;
      v31 = "not (index < m_sample_group[stream].m_number_of_samples)";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
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
    v32 = "virtual void AMCP::DAL::Sample_Setter<short>::subtract_sample(size_t, size_t, float) [T = short]";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v34 = 139;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  result = fminf(fmaxf(a4, -1.0), 1.0) * 32767.0;
  *(*v5 + 2 * a3) -= result;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE440D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

double AMCP::DAL::Sample_Setter<short>::add_sample(AMCP::Log::AMCP_Scope_Registry *a1, unint64_t a2, unint64_t a3, float a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  if (a2 >= (*(a1 + 2) - v4) >> 4)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      *buf = 136315650;
      v27 = "Sample_Format_Handler.h";
      v28 = 1024;
      v29 = 132;
      v30 = 2080;
      v31 = "not (stream < m_sample_group.size())";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
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
    v32 = "virtual void AMCP::DAL::Sample_Setter<short>::add_sample(size_t, size_t, float) [T = short]";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v34 = 132;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v5 = (v4 + 16 * a2);
  if (v5[1] <= a3)
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
      v27 = "Sample_Format_Handler.h";
      v28 = 1024;
      v29 = 133;
      v30 = 2080;
      v31 = "not (index < m_sample_group[stream].m_number_of_samples)";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
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
    v32 = "virtual void AMCP::DAL::Sample_Setter<short>::add_sample(size_t, size_t, float) [T = short]";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v34 = 133;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  result = fminf(fmaxf(a4, -1.0), 1.0) * 32767.0;
  *(*v5 + 2 * a3) += result;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE4412EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

double AMCP::DAL::Sample_Setter<short>::set_sample(AMCP::Log::AMCP_Scope_Registry *a1, unint64_t a2, unint64_t a3, float a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  if (a2 >= (*(a1 + 2) - v4) >> 4)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      *buf = 136315650;
      v27 = "Sample_Format_Handler.h";
      v28 = 1024;
      v29 = 126;
      v30 = 2080;
      v31 = "not (stream < m_sample_group.size())";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
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
    v32 = "virtual void AMCP::DAL::Sample_Setter<short>::set_sample(size_t, size_t, float) [T = short]";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v34 = 126;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v5 = (v4 + 16 * a2);
  if (v5[1] <= a3)
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
      v27 = "Sample_Format_Handler.h";
      v28 = 1024;
      v29 = 127;
      v30 = 2080;
      v31 = "not (index < m_sample_group[stream].m_number_of_samples)";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
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
    v32 = "virtual void AMCP::DAL::Sample_Setter<short>::set_sample(size_t, size_t, float) [T = short]";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v34 = 127;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  result = fminf(fmaxf(a4, -1.0), 1.0) * 32767.0;
  *(*v5 + 2 * a3) = result;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE441860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

uint64_t AMCP::DAL::Sample_Setter<short>::length_in_frames(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 1);
  if (v1 == *(a1 + 2))
  {
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

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v19 = "Sample_Format_Handler.h";
      v20 = 1024;
      v21 = 121;
      v22 = 2080;
      v23 = "not (not m_sample_group.empty())";
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v17);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v9);
    std::logic_error::logic_error(&v10, &v9);
    v10.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v11, &v10);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = -1;
    v11.__vftable = &unk_1F5991430;
    v12 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v11);
    v24 = "virtual size_t AMCP::DAL::Sample_Setter<short>::length_in_frames() const [T = short]";
    v25 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Sample_Format_Handler.h";
    v26 = 121;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v8);
  }

  result = *(v1 + 8);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE441B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

void AMCP::DAL::Sample_Setter<short>::~Sample_Setter(void *a1)
{
  *a1 = &unk_1F596EF70;
  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *AMCP::DAL::Sample_Setter<short>::~Sample_Setter(void *a1)
{
  *a1 = &unk_1F596EF70;
  std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100]((a1 + 1));
  return a1;
}

void AMCP::Null_Driver::~Null_Driver(AMCP::Null_Driver *this)
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

AMCP::Object *AMCP::Null_Driver::Null_Driver(AMCP::Object *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  cf = CFStringCreateWithBytes(0, "com.apple.audio.Null-Driver", 27, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  AMCP::Driver::Driver(a1, a2, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  *a1 = &unk_1F596F110;
  v4 = AMCP::Object::constructed_correct_class(a1, 0x6E756C6C);
  if ((v4 & 1) == 0)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
      v14 = "Null_Driver.cpp";
      v15 = 1024;
      v16 = 25;
      v17 = 2080;
      v18 = "constructed_correct_class(k_class_id_null_driver)";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", buf, 0x1Cu);
    }

    abort();
  }

  v5 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE441F44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void AMCP::Null_Driver::create_objects(AMCP::Null_Driver *this@<X0>, const applesauce::CF::ArrayRef *a2@<X1>, void *a3@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = *(this + 3);
  if (v5 && (v7 = std::__shared_weak_count::lock(v5)) != 0)
  {
    v8 = v7;
    v9 = *(this + 2);
    if (v9)
    {
      v29 = 0x676C6F626E756C6CLL;
      v30 = 0;
      operation = AMCP::Core::Core::find_operation(&v31, v9, &v29);
      v11 = v31;
      if (!v31)
      {
        v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v21 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(operation);
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
          *buf = 136315394;
          *&buf[4] = "Core.h";
          v44 = 1024;
          v45 = 202;
          _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Operation does not have requested function", &v34);
        std::runtime_error::runtime_error(&v35, &v34);
        std::runtime_error::runtime_error(&v36, &v35);
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = -1;
        v36.__vftable = &unk_1F5992170;
        v37 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
        v46 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = std::vector<unsigned int>, Argument_Types = <const applesauce::CF::ArrayRef &>]";
        v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
        v48 = 202;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
      }

      v12 = AMCP::Implementation::get_type_marker<std::function<std::vector<unsigned int> ()(applesauce::CF::ArrayRef const&)>>();
      v13 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v11, v12);
      if (!v13)
      {
        v25 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v25 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(0);
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

        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          v44 = 1024;
          v45 = 154;
          _os_log_error_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Operation does not have requested function", &v34);
        std::runtime_error::runtime_error(&v35, &v34);
        std::runtime_error::runtime_error(&v36, &v35);
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = -1;
        v36.__vftable = &unk_1F5992170;
        v37 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
        v46 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::vector<unsigned int>, Argument_Types = <const applesauce::CF::ArrayRef &>]";
        v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v48 = 154;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
      }

      v14 = v13;
      if (!*(v13 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::vector<unsigned int> ()(applesauce::CF::ArrayRef const&)>>(), (v13 = (*(v14 + 7))(4, v14 + 24, 0, buf)) == 0))
      {
        v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v17 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v13);
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
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          v44 = 1024;
          v45 = 161;
          _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v42);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Invalid cast", &v34);
        std::runtime_error::runtime_error(&v35, &v34);
        std::runtime_error::runtime_error(&v36, &v35);
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = -1;
        v36.__vftable = &unk_1F5992170;
        v37 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v36);
        v46 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::vector<unsigned int>, Argument_Types = <const applesauce::CF::ArrayRef &>]";
        v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v48 = 161;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
      }

      v15 = *(v13 + 3);
      if (!v15)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v15 + 48))(v15, a2);
      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1DE4426EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, std::runtime_error a26, char a27)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    if (a13)
    {
      operator delete(a13);
    }

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v29 - 128);
    boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a27);
    std::runtime_error::~runtime_error(&a26);
    if (a25 < 0)
    {
      operator delete(a20);
    }

    if (v28)
    {
      __cxa_free_exception(v27);
    }

    AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v29 - 129));
    if (a12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a12);
    }

    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<std::vector<unsigned int> ()(applesauce::CF::ArrayRef const&)>>()
{
  v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return *(v0 + 16);
}

void AMCP::Null_Driver::destroy_objects(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  if (v3 && (v5 = std::__shared_weak_count::lock(v3)) != 0)
  {
    v6 = v5;
    v7 = *(a1 + 16);
    if (v7)
    {
      v14 = 0x676C6F626E756C6CLL;
      v15 = 0;
      AMCP::Core::Core::find_operation(&v26, v7, &v14);
      if (!v26)
      {
        v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v10 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(0);
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

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v29 = "Core.h";
          v30 = 1024;
          v31 = 202;
          _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Operation does not have requested function", &v17);
        std::runtime_error::runtime_error(&v18, &v17);
        std::runtime_error::runtime_error(&v19, &v18);
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = -1;
        v19.__vftable = &unk_1F5992170;
        v20 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v19);
        v32 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = void, Argument_Types = <const std::vector<unsigned int> &>]";
        v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
        v34 = 202;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
      }

      AMCP::Core::Operation::call_function<void,std::vector<unsigned int> const&>(v26, a2);
      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }
    }

    v8 = *MEMORY[0x1E69E9840];

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v9 = *MEMORY[0x1E69E9840];
  }
}

void sub_1DE442B14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::runtime_error a24, char a25)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    if (a11)
    {
      operator delete(a11);
    }

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 128);
    boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a25);
    std::runtime_error::~runtime_error(&a24);
    if (a23 < 0)
    {
      operator delete(a18);
    }

    if (v26)
    {
      __cxa_free_exception(v25);
    }

    AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 145));
    v29 = *(v27 - 136);
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOUAEngine::_WriteToStream_Write(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v66 = *MEMORY[0x1E69E9840];
  v10 = *(a3 + 168);
  v11 = *(a1[101] + 16);
  if (*(a3 + 128) == 1667326771)
  {
    v12 = 4;
  }

  else
  {
    v12 = *(a3 + 144);
  }

  v13 = *(a4 + 144) % v11;
  v14 = a5;
  if (v13 + a5 <= v11)
  {
    v15 = a5;
  }

  else
  {
    v15 = v11 - v13;
  }

  if (*a6)
  {
    v16 = (*a6 + *(a6 + 8));
  }

  else
  {
    v16 = 0;
  }

  memcpy(&v10[v13 * v12], v16, v15 * v12);
  if (v14 != v15)
  {
    memcpy(v10, &v16[v15 * v12], (v14 - v15) * v12);
  }

  _X0 = *(a4 + 80);
  v18 = a1[148];
  v19 = *(a4 + 144);
  v20 = *v18;
  v21 = v18[1];
  do
  {
    _X5 = v18[1];
    __asm { CASP            X4, X5, X0, X1, [X8] }

    _ZF = _X4 == v20;
    v20 = _X4;
  }

  while (!_ZF);
  v28 = a1[152];
  if (!v28)
  {
    goto LABEL_23;
  }

  v29 = a1 + 152;
  do
  {
    v30 = *(v28 + 32);
    _CF = v30 >= a2;
    v31 = v30 < a2;
    if (_CF)
    {
      v29 = v28;
    }

    v28 = *(v28 + 8 * v31);
  }

  while (v28);
  if (v29 == a1 + 152 || *(v29 + 8) > a2)
  {
LABEL_23:
    v32 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v32 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(_X0);
    }

    v34 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v33 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      v35 = *v34;
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    else
    {
      v35 = *v34;
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v57 = "HALS_IOUAEngine.cpp";
      v58 = 1024;
      v59 = 356;
      v60 = 2080;
      v61 = "io_ipc_info_iter == m_io_ipc_info_map.end()";
      v62 = 2048;
      *v63 = a2;
      _os_log_error_impl(&dword_1DE1F9000, v35, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to find IOThread, io ipc info not found, context id %lu", buf, 0x26u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v55);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v48, "Failed to find IOThread, io ipc info not found");
    std::runtime_error::runtime_error(&v49, &v48);
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = -1;
    v49.__vftable = &unk_1F5992170;
    v50 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v49);
    *&v63[2] = "virtual int HALS_IOUAEngine::_WriteToStream_Write(AudioObjectID, HALS_IOEngine2_StreamInfo &, const AudioServerPlugInIOCycleInfo &, UInt32, const HALS_BufferInfo &)";
    v64 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAEngine.cpp";
    v65 = 356;
    std::vector<void *>::vector[abi:ne200100](&v47);
  }

  v36 = v29[5];
  v37 = v29[6];
  if (v37)
  {
    atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v38 = a1[150];
  *v38 = a5;
  *(v38 + 24) = 1;
  *(v38 + 8) = *(a4 + 144);
  *(v38 + 16) = *(a4 + 152);
  v39 = caulk::mach::os_eventlink::timed_wait_signal_or_error(v36, a5 / v36[9]);
  if (v39 & 0x100000000) != 0 && (v39)
  {
    v40 = 0;
  }

  else
  {
    v41 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v42 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v42)
    {
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*MEMORY[0x1E69E3C08])
    {
      __break(1u);
    }

    v40 = 2003329396;
    v43 = *(v41 + 8);
    v44 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v44 + 16) = 0;
    *(v44 + 20) = 16;
    *(v44 + 24) = "HALS_IOUAEngine.cpp";
    *(v44 + 32) = 373;
    *v44 = &unk_1F596F780;
    *(v44 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v43, v44);
    if (v42)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
    }
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  v45 = *MEMORY[0x1E69E9840];
  return v40;
}

void sub_1DE443148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, std::runtime_error a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, std::runtime_error a28, void *a29, uint64_t a30)
{
  std::runtime_error::~runtime_error(v30);
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  a29 = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a30);
  std::runtime_error::~runtime_error(&a28);
  a19 = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((v31 + 24));
  std::runtime_error::~runtime_error(&a18);
  std::runtime_error::~runtime_error(&a17);
  __cxa_free_exception(v30);
  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a27);
  _Unwind_Resume(a1);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOUAEngine::_WriteToStream_Write(unsigned int,HALS_IOEngine2_StreamInfo &,AudioServerPlugInIOCycleInfo const&,unsigned int,HALS_BufferInfo const&)::$_0,std::tuple<char const*,int>>::perform(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v10 = 136315394;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Timed out signalling event link", &v10, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOUAEngine::_WriteToStream_Write(unsigned int,HALS_IOEngine2_StreamInfo &,AudioServerPlugInIOCycleInfo const&,unsigned int,HALS_BufferInfo const&)::$_0,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_IOUAEngine::_ReadFromStream_Read(AMCP::Log::AMCP_Scope_Registry *a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v66 = *MEMORY[0x1E69E9840];
  if (!*a6)
  {
    goto LABEL_45;
  }

  v8 = *(a1 + 152);
  if (!v8)
  {
    goto LABEL_10;
  }

  v12 = (*a6 + *(a6 + 8));
  v13 = (a1 + 1216);
  do
  {
    v14 = *(v8 + 32);
    _CF = v14 >= a2;
    v16 = v14 < a2;
    if (_CF)
    {
      v13 = v8;
    }

    v8 = *(v8 + 8 * v16);
  }

  while (v8);
  if (v13 == (a1 + 1216) || *(v13 + 8) > a2)
  {
LABEL_10:
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      *buf = 136315906;
      v57 = "HALS_IOUAEngine.cpp";
      v58 = 1024;
      v59 = 264;
      v60 = 2080;
      v61 = "io_ipc_info_iter == m_io_ipc_info_map.end()";
      v62 = 2048;
      *v63 = a2;
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to find IOThread, io ipc info not found, context id %lu", buf, 0x26u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v55);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v48, "Failed to find IOThread, io ipc info not found");
    std::runtime_error::runtime_error(&v49, &v48);
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = -1;
    v49.__vftable = &unk_1F5992170;
    v50 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v49);
    *&v63[2] = "virtual void HALS_IOUAEngine::_ReadFromStream_Read(AudioObjectID, HALS_IOEngine2_StreamInfo &, const AudioServerPlugInIOCycleInfo &, UInt32, const HALS_BufferInfo &)";
    v64 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUAEngine.cpp";
    v65 = 264;
    std::vector<void *>::vector[abi:ne200100](&v47);
  }

  v21 = v13[5];
  v22 = v13[6];
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = *(a1 + 150);
  *v23 = a5;
  *(v23 + 24) = 0;
  *(v23 + 8) = *(a4 + 80);
  *(v23 + 16) = *(a4 + 88);
  v24 = caulk::mach::os_eventlink::timed_wait_signal_or_error(v21, a5 / v21[9]);
  if ((v24 & 0x100000000) == 0 || (v24 & 1) == 0)
  {
    v26 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v27 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*MEMORY[0x1E69E3C08])
    {
      __break(1u);
      goto LABEL_30;
    }

    v28 = *(v26 + 8);
    v29 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v29 + 16) = 0;
    *(v29 + 20) = 16;
    *(v29 + 24) = "HALS_IOUAEngine.cpp";
    *(v29 + 32) = 281;
    *v29 = &unk_1F596F728;
    *(v29 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v28, v29);
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }
  }

  v25 = *(a4 + 80);
  if (v25 < 0.0)
  {
    bzero(v12, a5);
    goto LABEL_38;
  }

LABEL_30:
  v30 = *(a3 + 168);
  v31 = *(*(a1 + 101) + 16);
  if (*(a3 + 128) == 1667326771)
  {
    v32 = 4;
  }

  else
  {
    v32 = *(a3 + 144);
  }

  v33 = v25 % v31;
  if (v33 + a5 <= v31)
  {
    v34 = a5;
  }

  else
  {
    v34 = v31 - v33;
  }

  memcpy(v12, &v30[v33 * v32], v34 * v32);
  if (a5 != v34)
  {
    memcpy(&v12[v34 * v32], v30, (a5 - v34) * v32);
  }

LABEL_38:
  _X0 = *(a4 + 80);
  v36 = *(a1 + 148);
  v37 = *(a4 + 144);
  v38 = *v36;
  v39 = v36[1];
  do
  {
    _X5 = v36[1];
    __asm { CASP            X4, X5, X0, X1, [X8] }

    _ZF = _X4 == v38;
    v38 = _X4;
  }

  while (!_ZF);
  if (!v22)
  {
LABEL_45:
    v46 = *MEMORY[0x1E69E9840];
    return;
  }

  v45 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
}
void sub_23748C474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

std::string *std::__optional_copy_base<DataIPFilterEndpoint,false>::__optional_copy_base[abi:ne200100](std::string *a1, uint64_t a2)
{
  a1->__r_.__value_.__s.__data_[0] = 0;
  a1[2].__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 48) == 1)
  {
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](a1, a2);
    v4 = *(a2 + 32);
    a1[1].__r_.__value_.__s.__data_[16] = *(a2 + 40);
    a1[1].__r_.__value_.__l.__size_ = v4;
    a1[2].__r_.__value_.__s.__data_[0] = 1;
  }

  return a1;
}

void sub_23748C544(_Unwind_Exception *exception_object)
{
  if (*(v1 + 48) == 1 && *(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const void *std::stringbuf::str[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  result = std::stringbuf::view[abi:ne200100](a2);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  a1[v5] = 0;
  return result;
}

uint64_t RestServiceBase::RestServiceBase(uint64_t a1, uint64_t *a2, NSObject **a3, uint64_t a4)
{
  v7 = *a2;
  v6 = a2[1];
  *a1 = &unk_284A73FB0;
  *(a1 + 8) = v7;
  *(a1 + 16) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *a4, *(a4 + 8));
  }

  else
  {
    v13 = *a4;
  }

  v8 = *a3;
  v12 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  queue[1] = 0;
  ctu::RestModule::RestModule();
  if (v12)
  {
    dispatch_release(v12);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  *(a1 + 40) = 0;
  ctu::RestModule::getQueue(queue, (a1 + 24));
  v10 = a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN8dispatch9sync_implIZN15RestServiceBaseC1ERKNSt3__110shared_ptrIK8RegistryEERKNS_5queueERKNS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEE3__0EEvP16dispatch_queue_sOT_NS2_17integral_constantIbLb1EEE_block_invoke;
  block[3] = &__block_descriptor_tmp_2;
  block[4] = &v10;
  dispatch_sync(queue[0], block);
  if (queue[0])
  {
    dispatch_release(queue[0]);
  }

  return a1;
}

void sub_23748C798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, dispatch_object_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v20 = *(v18 + 16);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(exception_object);
}

void RestServiceBase::~RestServiceBase(RestServiceBase *this)
{
  *this = &unk_284A73FB0;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  RestServiceBase::~RestServiceBase(this);

  JUMPOUT(0x2383CBEF0);
}

_DWORD *RestServiceBase::handleRestServiceStateChange(_DWORD *result, int a2)
{
  v2 = result[10];
  if (v2 != a2)
  {
    if (v2 == 2)
    {
      if (a2 == 1)
      {
        return (*(*result + 24))();
      }
    }

    else if (v2 == 1)
    {
      return (*(*result + 16))();
    }
  }

  return result;
}

void ___ZN8dispatch9sync_implIZN15RestServiceBaseC1ERKNSt3__110shared_ptrIK8RegistryEERKNS_5queueERKNS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEE3__0EEvP16dispatch_queue_sOT_NS2_17integral_constantIbLb1EEE_block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = **(a1 + 32);
  operator new();
}

void sub_23748CA4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<void ctu::rest::property_sink_t<rest_service_state>::bind_impl<void (RestServiceBase::*&)(RestServiceState),RestServiceBase>(ctu::RestModule &,RestServiceBase *,void (RestServiceBase::*&)(RestServiceState) &&,std::integral_constant<BOOL,false>)::{lambda(xpc::object const&)#1},std::allocator<xpc::object const&>,void ()(xpc)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284A73FF0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void ctu::rest::property_sink_t<rest_service_state>::bind_impl<void (RestServiceBase::*&)(RestServiceState),RestServiceBase>(ctu::RestModule &,RestServiceBase *,void (RestServiceBase::*&)(RestServiceState) &&,std::integral_constant<BOOL,false>)::{lambda(xpc::object const&)#1},std::allocator<xpc::object const&>,void ()(xpc)>::operator()(void *a1, xpc *this)
{
  v3 = a1[1];
  v4 = *v3;
  *v3 = xpc::dyn_cast_or_default(this, 0);
  v5 = a1[3];
  v6 = a1[4];
  v7 = (a1[2] + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  return v5(v7, v4);
}

uint64_t std::__function::__func<void ctu::rest::property_sink_t<rest_service_state>::bind_impl<void (RestServiceBase::*&)(RestServiceState),RestServiceBase>(ctu::RestModule &,RestServiceBase *,void (RestServiceBase::*&)(RestServiceState) &&,std::integral_constant<BOOL,false>)::{lambda(xpc::object const&)#1},std::allocator<xpc::object const&>,void ()(xpc)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t CellInfoUpdate::getCollection<Cdma1xCell>(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    memset(v3, 0, sizeof(v3));
    *(a1 + 24) = 1;
    v4 = v3;
    std::vector<Cdma1xCell>::__destroy_vector::operator()[abi:ne200100](&v4);
  }

  return a1;
}

uint64_t CellInfoUpdate::getCollection<CdmaEvdoCell>(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    memset(v3, 0, sizeof(v3));
    *(a1 + 56) = 1;
    v4 = v3;
    std::vector<CdmaEvdoCell>::__destroy_vector::operator()[abi:ne200100](&v4);
  }

  return a1 + 32;
}

uint64_t CellInfoUpdate::getCollection<UmtsCell>(uint64_t a1)
{
  if ((*(a1 + 88) & 1) == 0)
  {
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    memset(v3, 0, sizeof(v3));
    *(a1 + 88) = 1;
    v4 = v3;
    std::vector<UmtsCell>::__destroy_vector::operator()[abi:ne200100](&v4);
  }

  return a1 + 64;
}

uint64_t CellInfoUpdate::getCollection<GsmCell>(uint64_t a1)
{
  if ((*(a1 + 120) & 1) == 0)
  {
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    memset(v3, 0, sizeof(v3));
    *(a1 + 120) = 1;
    v4 = v3;
    std::vector<GsmCell>::__destroy_vector::operator()[abi:ne200100](&v4);
  }

  return a1 + 96;
}

uint64_t CellInfoUpdate::getCollection<TDSCDMACell>(uint64_t a1)
{
  if ((*(a1 + 184) & 1) == 0)
  {
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    memset(v3, 0, sizeof(v3));
    *(a1 + 184) = 1;
    v4 = v3;
    std::vector<UmtsCell>::__destroy_vector::operator()[abi:ne200100](&v4);
  }

  return a1 + 160;
}

uint64_t CellInfoUpdate::getCollection<NrCell>(uint64_t a1)
{
  if ((*(a1 + 216) & 1) == 0)
  {
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
    memset(v3, 0, sizeof(v3));
    *(a1 + 216) = 1;
    v4 = v3;
    std::vector<NrCell>::__destroy_vector::operator()[abi:ne200100](&v4);
  }

  return a1 + 192;
}

void GsmCell::dumpState(GsmCell *this, os_log_t *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *this;
    v5 = *(this + 4);
    v6 = *(this + 71);
    if (v6 < 0)
    {
      v6 = *(this + 7);
    }

    v7 = v6 == 3;
    v8 = *(this + 20);
    if (v7)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v10 = *(this + 72);
    v11 = *(this + 37);
    v12 = *(this + 38);
    v13 = *(this + 39);
    v14 = *(this + 20);
    v15 = *(this + 21);
    v17[0] = 67111425;
    v17[1] = v4;
    v18 = 1024;
    v19 = v5;
    v20 = 1024;
    v21 = v9;
    v22 = 1024;
    v23 = v8;
    v24 = 1024;
    v25 = v10;
    v26 = 1024;
    v27 = v11;
    v28 = 1025;
    v29 = v12;
    v30 = 1024;
    v31 = v13;
    v32 = 1025;
    v33 = v14;
    v34 = 1025;
    v35 = v15;
    _os_log_impl(&dword_2373EA000, v3, OS_LOG_TYPE_DEFAULT, "#I Index: %d, MCC: %03d, MNC: %0.*d, Band info: %u, Area code: %d, Cell ID: %{private}d, ARFCN: %d, Latitude: %{private}d, Longitude: %{private}d", v17, 0x3Eu);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void GsmCellInformation::dumpState(GsmCell **this, os_log_t *a2)
{
  v2 = *this;
  v3 = this[1];
  if (*this != v3)
  {
    do
    {
      GsmCell::dumpState(v2, a2);
      v2 = (v2 + 88);
    }

    while (v2 != v3);
  }
}

void UmtsCell::dumpState(UmtsCell *this, os_log_t *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *this;
    v5 = *(this + 4);
    v6 = *(this + 71);
    if (v6 < 0)
    {
      v6 = *(this + 7);
    }

    v7 = v6 == 3;
    v8 = *(this + 20);
    if (v7)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v10 = *(this + 72);
    v11 = *(this + 37);
    v12 = *(this + 19);
    v13 = *(this + 40);
    v14 = *(this + 21);
    v15 = *(this + 22);
    v17[0] = 67111425;
    v17[1] = v4;
    v18 = 1024;
    v19 = v5;
    v20 = 1024;
    v21 = v9;
    v22 = 1024;
    v23 = v8;
    v24 = 1024;
    v25 = v10;
    v26 = 1024;
    v27 = v11;
    v28 = 1025;
    v29 = v12;
    v30 = 1024;
    v31 = v13;
    v32 = 1025;
    v33 = v14;
    v34 = 1025;
    v35 = v15;
    _os_log_impl(&dword_2373EA000, v3, OS_LOG_TYPE_DEFAULT, "#I Index: %d, MCC: %03d, MNC: %0.*d, Band info: %u, Area code: %d, Cell ID: %{private}d, UARFCN: %d, Latitude: %{private}d, Longitude: %{private}d", v17, 0x3Eu);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void UmtsCellInformation::dumpState(UmtsCell **this, os_log_t *a2)
{
  v4 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I UMTS Serving Cells:", v7, 2u);
  }

  v6 = *this;
  v5 = this[1];
  while (v6 != v5)
  {
    UmtsCell::dumpState(v6, a2);
    v6 = (v6 + 96);
  }
}

void TDSCDMACell::dumpState(TDSCDMACell *this, os_log_t *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *this;
    v5 = *(this + 4);
    v6 = *(this + 71);
    if (v6 < 0)
    {
      v6 = *(this + 7);
    }

    v7 = v6 == 3;
    v8 = *(this + 20);
    if (v7)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v10 = *(this + 72);
    v11 = *(this + 37);
    v12 = *(this + 19);
    v13 = *(this + 40);
    v14 = *(this + 41);
    v16 = *(this + 21);
    v15 = *(this + 22);
    v18[0] = 67111681;
    v18[1] = v4;
    v19 = 1024;
    v20 = v5;
    v21 = 1024;
    v22 = v9;
    v23 = 1024;
    v24 = v8;
    v25 = 1024;
    v26 = v10;
    v27 = 1024;
    v28 = v11;
    v29 = 1025;
    v30 = v12;
    v31 = 1024;
    v32 = v13;
    v33 = 1024;
    v34 = v14;
    v35 = 1025;
    v36 = v16;
    v37 = 1025;
    v38 = v15;
    _os_log_impl(&dword_2373EA000, v3, OS_LOG_TYPE_DEFAULT, "#I Index: %d, MCC: %03d, MNC: %0.*d, Band info: %u, Area code: %d, Cell ID: %{private}d, UARFCN: %d, Cell parameter: %u, Latitude: %{private}d, Longitude: %{private}d", v18, 0x44u);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void TDSCDMACellInformation::dumpState(TDSCDMACell **this, os_log_t *a2)
{
  v4 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I TDSCDMA Serving Cells:", v7, 2u);
  }

  v6 = *this;
  v5 = this[1];
  while (v6 != v5)
  {
    TDSCDMACell::dumpState(v6, a2);
    v6 = (v6 + 96);
  }
}

void Cdma1xCell::dumpState(Cdma1xCell *this, os_log_t *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *this;
    v5 = *(this + 4);
    v6 = *(this + 71);
    if (v6 < 0)
    {
      v6 = *(this + 7);
    }

    v7 = v6 == 3;
    v8 = *(this + 20);
    if (v7)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v10 = *(this + 72);
    v11 = *(this + 37);
    v12 = *(this + 38);
    v13 = *(this + 39);
    v14 = *(this + 40);
    v16 = *(this + 21);
    v15 = *(this + 22);
    v17 = *(this + 46);
    v18 = *(this + 47);
    v19 = *(this + 96);
    v20 = *(this + 97);
    v22[0] = 67112705;
    v22[1] = v4;
    v23 = 1024;
    v24 = v5;
    v25 = 1024;
    v26 = v9;
    v27 = 1024;
    v28 = v8;
    v29 = 1024;
    v30 = v10;
    v31 = 1024;
    v32 = v11;
    v33 = 1024;
    v34 = v12;
    v35 = 1024;
    v36 = v13;
    v37 = 1024;
    v38 = v14;
    v39 = 1025;
    v40 = v16;
    v41 = 1025;
    v42 = v15;
    v43 = 1024;
    v44 = v17;
    v45 = 1024;
    v46 = v18;
    v47 = 1024;
    v48 = v19;
    v49 = 1024;
    v50 = v20;
    _os_log_impl(&dword_2373EA000, v3, OS_LOG_TYPE_DEFAULT, "#I Index: %d, MCC: %03d, MNC: %0.*d, Band class: %u, Channel number: %d, SID: %u, NID: %u, Base ID: %u, Latitude: %{private}d, Longitude: %{private}d, Zone ID: %u, PN Offset: %u, LTM Offset: %u, Day light savings: %u", v22, 0x5Cu);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void Cdma1xCellInformation::dumpState(Cdma1xCell **this, os_log_t *a2)
{
  v4 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I CDMA 1x Serving Cells:", v7, 2u);
  }

  v6 = *this;
  v5 = this[1];
  while (v6 != v5)
  {
    Cdma1xCell::dumpState(v6, a2);
    v6 = (v6 + 104);
  }
}

void CdmaEvdoCell::dumpState(CdmaEvdoCell *this, os_log_t *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *this;
    v5 = *(this + 4);
    v6 = *(this + 40);
    v7 = *(this + 21);
    asString(this + 44, __p);
    if (v14 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    v9 = *(this + 15);
    v10 = *(this + 16);
    v11 = *(this + 34);
    *buf = 67110915;
    v16 = v4;
    v17 = 1024;
    v18 = v5;
    v19 = 1024;
    v20 = v6;
    v21 = 1024;
    v22 = v7;
    v23 = 2080;
    v24 = v8;
    v25 = 1025;
    v26 = v9;
    v27 = 1025;
    v28 = v10;
    v29 = 1024;
    v30 = v11;
    _os_log_impl(&dword_2373EA000, v3, OS_LOG_TYPE_DEFAULT, "#I Index: %d, MCC: %03d, Band class: %u, Channel number: %d, Sector ID: %s, Latitude: %{private}d, Longitude: %{private}d, PN Offset: %u", buf, 0x36u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void CdmaEvdoCellInformation::dumpState(CdmaEvdoCell **this, os_log_t *a2)
{
  v4 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I CDMA EVDO Serving Cells:", v7, 2u);
  }

  v6 = *this;
  v5 = this[1];
  while (v6 != v5)
  {
    CdmaEvdoCell::dumpState(v6, a2);
    v6 = (v6 + 72);
  }
}

void NrCell::dumpState(NrCell *this, os_log_t *a2)
{
  v79 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 71);
    if (v4 < 0)
    {
      v4 = *(this + 7);
    }

    if (v4 == 3)
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    v32 = v5;
    v6 = *(this + 31);
    if (v6 > 3)
    {
      v7 = "???";
    }

    else
    {
      v7 = off_278A32600[v6];
    }

    v34 = v7;
    v8 = *(this + 33);
    if (v8 > 3)
    {
      v9 = "???";
    }

    else
    {
      v9 = off_278A32620[v8];
    }

    v33 = v9;
    v10 = *this;
    v11 = *(this + 4);
    v12 = *(this + 20);
    v13 = *(this + 36);
    v14 = *(this + 19);
    v15 = *(this + 10);
    v16 = *(this + 22);
    v17 = *(this + 46);
    v22 = *(this + 24);
    v23 = *(this + 25);
    v24 = *(this + 52);
    v25 = *(this + 106);
    v26 = *(this + 27);
    v27 = *(this + 112);
    v29 = *(this + 29);
    v30 = *(this + 60);
    v31 = *(this + 32);
    v18 = *(this + 34);
    if (v18 > 3)
    {
      v19 = "???";
    }

    else
    {
      v19 = off_278A32640[v18];
    }

    v28 = v19;
    v20 = asString(*(this + 35));
    *buf = 67114499;
    v36 = v10;
    v37 = 1024;
    v38 = v11;
    v39 = 1024;
    v40 = v32;
    v41 = 1024;
    v42 = v12;
    v43 = 1024;
    v44 = v13;
    v45 = 1024;
    v46 = v14;
    v47 = 2049;
    v48 = v15;
    v49 = 1024;
    v50 = v16;
    v51 = 1024;
    v52 = v17;
    v53 = 1025;
    v54 = v22;
    v55 = 1025;
    v56 = v23;
    v57 = 1024;
    v58 = v24;
    v59 = 1024;
    v60 = v25;
    v61 = 1024;
    v62 = v26;
    v63 = 1024;
    v64 = v27;
    v65 = 1024;
    v66 = v29;
    v67 = 1024;
    v68 = v30;
    v69 = 2080;
    v70 = v34;
    v71 = 1024;
    v72 = v31;
    v73 = 2080;
    v74 = v33;
    v75 = 2080;
    v76 = v28;
    v77 = 2080;
    v78 = v20;
    _os_log_impl(&dword_2373EA000, v3, OS_LOG_TYPE_DEFAULT, "#I Index: %d, MCC: %03d, MNC: %0.*d, Band info: %u, Area code: %d, Cell ID: %{private}llu, EARFCN: %d, PID: %u, Latitude: %{private}d, Longitude: %{private}d, Bandwidth: %u, SCS: %u, GSCN: %d, BWP Support: %u, Throughput: %u, PMax: %u, NR frequency type: %s, NR RedCap info: %u, NetworkID: {%s, %s, %s}", buf, 0x9Au);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void NrCellInformation::dumpState(NrCell **this, os_log_t *a2)
{
  v4 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I NR Serving Cells:", v7, 2u);
  }

  v6 = *this;
  v5 = this[1];
  while (v6 != v5)
  {
    NrCell::dumpState(v6, a2);
    v6 = (v6 + 144);
  }
}

void GsmNeighborCell::dumpState(GsmNeighborCell *this, os_log_t *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *this;
    v5 = *(this + 1);
    v7[0] = 67109376;
    v7[1] = v4;
    v8 = 1024;
    v9 = v5;
    _os_log_impl(&dword_2373EA000, v3, OS_LOG_TYPE_DEFAULT, "#I ARFCN: %u, RSSI: %u", v7, 0xEu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void UmtsNeighborCell::dumpState(UmtsNeighborCell *this, os_log_t *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *this;
    v5 = *(this + 1);
    v6 = *(this + 2);
    v7 = *(this + 3);
    v9[0] = 67109888;
    v9[1] = v4;
    v10 = 1024;
    v11 = v5;
    v12 = 1024;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    _os_log_impl(&dword_2373EA000, v3, OS_LOG_TYPE_DEFAULT, "#I UARFCN: %u, SCN: %u, RSCP: %u, ECN0: %u", v9, 0x1Au);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void LteNeighborCell::dumpState(LteNeighborCell *this, os_log_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *this;
    v5 = *(this + 2);
    v6 = *(this + 3);
    v7 = *(this + 4);
    v8 = *(this + 3);
    v9 = *(this + 16);
    v10 = *(this + 5);
    v12[0] = 67110656;
    v12[1] = v4;
    v13 = 1024;
    v14 = v5;
    v15 = 1024;
    v16 = v6;
    v17 = 1024;
    v18 = v7;
    v19 = 1024;
    v20 = v8;
    v21 = 1024;
    v22 = v9;
    v23 = 1024;
    v24 = v10;
    _os_log_impl(&dword_2373EA000, v3, OS_LOG_TYPE_DEFAULT, "#I EARFCN: %u, PCI: %u, RSRP: %u, RSRP: %u, Bandwidth: %u, Neighbor Type: %u, Throughput: %u", v12, 0x2Cu);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void TDSCDMANeighborCell::dumpState(TDSCDMANeighborCell *this, os_log_t *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *this;
    v5 = *(this + 2);
    v6 = *(this + 2);
    v7 = *(this + 3);
    v9[0] = 67109888;
    v9[1] = v4;
    v10 = 1024;
    v11 = v5;
    v12 = 1024;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    _os_log_impl(&dword_2373EA000, v3, OS_LOG_TYPE_DEFAULT, "#I UARFCN: %u, Cell parameters: %u, RSCP: %u, RSSI: %u", v9, 0x1Au);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void Cdma1xNeighborCell::dumpState(Cdma1xNeighborCell *this, os_log_t *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *this;
    v5 = *(this + 2);
    v6 = *(this + 2);
    v7 = *(this + 6);
    v9[0] = 67109888;
    v9[1] = v4;
    v10 = 1024;
    v11 = v5;
    v12 = 1024;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    _os_log_impl(&dword_2373EA000, v3, OS_LOG_TYPE_DEFAULT, "#I Neighbor PN: %u, Band class: %u, Channel number: %u, ECIO: %u", v9, 0x1Au);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void CdmaEvdoNeighborCell::dumpState(CdmaEvdoNeighborCell *this, os_log_t *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *this;
    v5 = *(this + 2);
    v6 = *(this + 2);
    v7 = *(this + 6);
    v9[0] = 67109888;
    v9[1] = v4;
    v10 = 1024;
    v11 = v5;
    v12 = 1024;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    _os_log_impl(&dword_2373EA000, v3, OS_LOG_TYPE_DEFAULT, "#I Neighbor PN: %u, Band class: %u, Channel number: %u, ECIO: %u", v9, 0x1Au);
  }

  v8 = *MEMORY[0x277D85DE8];
}

BOOL NrNeighborCell::dumpState(NrNeighborCell *this, os_log_t *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (*this)
  {
    v4 = *a2;
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(this + 2);
      v6 = *(this + 3);
      v7 = *(this + 4);
      v8 = *(this + 10);
      v9 = *(this + 11);
      v10 = *(this + 3);
      v11 = *(this + 16);
      v12 = *(this + 17);
      v13 = *(this + 5);
      v16[0] = 67111424;
      v16[1] = v2;
      v17 = 1024;
      v18 = v5;
      v19 = 1024;
      v20 = v6;
      v21 = 1024;
      v22 = v7;
      v23 = 1024;
      v24 = v8;
      v25 = 1024;
      v26 = v9;
      v27 = 1024;
      v28 = v10;
      v29 = 1024;
      v30 = v11;
      v31 = 1024;
      v32 = v12;
      v33 = 1024;
      v34 = v13;
      _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I NRARFCN: %u, PCI: %u, RSRP: %u, RSRQ: %u, SCS: %u, Is SA: %u, Bandwidth: %u, BWP Support: %u, Neighbor Type: %u, Throughput: %u", v16, 0x3Eu);
    }
  }

  result = v2 != 0;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void UmtsNeighborInformation::dumpState(uint64_t **this, os_log_t *a2)
{
  v4 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I UMTS Neighbor cells:", buf, 2u);
  }

  v6 = *this;
  v5 = this[1];
  while (v6 != v5)
  {
    v7 = *v6++;
    v8 = v7;
    UmtsNeighborCell::dumpState(&v8, a2);
  }
}

void GsmNeighborInformation::dumpState(int **this, os_log_t *a2)
{
  v4 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I GSM Neighbor cells:", buf, 2u);
  }

  v6 = *this;
  v5 = this[1];
  while (v6 != v5)
  {
    v7 = *v6++;
    v8 = v7;
    GsmNeighborCell::dumpState(&v8, a2);
  }
}

void Cdma1xNeighborInformation::dumpState(Cdma1xNeighborInformation *this, os_log_t *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I CDMA 1x Neighbor Cells", v12, 2u);
    v4 = *a2;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *this;
    v6 = *(this + 2);
    v7 = *(this + 2);
    v8 = *(this + 6);
    v12[0] = 67109888;
    v12[1] = v5;
    v13 = 1024;
    v14 = v6;
    v15 = 1024;
    v16 = v7;
    v17 = 1024;
    v18 = v8;
    _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I Ref PN: %u, Ref band class: %u, Ref channel number: %u, Ref ECIO: %u", v12, 0x1Au);
  }

  v10 = *(this + 1);
  v9 = *(this + 2);
  while (v10 != v9)
  {
    Cdma1xNeighborCell::dumpState(v10, a2);
    v10 = (v10 + 8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void CdmaEvdoNeighborInformation::dumpState(CdmaEvdoNeighborInformation *this, os_log_t *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I CDMA EVDO Neighbor Cells", v12, 2u);
    v4 = *a2;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *this;
    v6 = *(this + 2);
    v7 = *(this + 2);
    v8 = *(this + 6);
    v12[0] = 67109888;
    v12[1] = v5;
    v13 = 1024;
    v14 = v6;
    v15 = 1024;
    v16 = v7;
    v17 = 1024;
    v18 = v8;
    _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I Ref PN: %u, Ref band class: %u, Ref channel number: %u, Ref ECIO: %u", v12, 0x1Au);
  }

  v10 = *(this + 1);
  v9 = *(this + 2);
  while (v10 != v9)
  {
    CdmaEvdoNeighborCell::dumpState(v10, a2);
    v10 = (v10 + 8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void TDSCDMANeighborInformation::dumpState(TDSCDMANeighborCell **this, os_log_t *a2)
{
  v4 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I TDSCDMA Neighbor cells:", v7, 2u);
  }

  v6 = *this;
  v5 = this[1];
  while (v6 != v5)
  {
    TDSCDMANeighborCell::dumpState(v6, a2);
    v6 = (v6 + 8);
  }
}

void std::__destroy_at[abi:ne200100]<Cdma1xCell,0>(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 39) < 0)
  {
    v2 = *(a1 + 16);

    operator delete(v2);
  }
}

void std::vector<Cdma1xCell>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 104;
        std::__destroy_at[abi:ne200100]<Cdma1xCell,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<CdmaEvdoCell>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 72)
  {
    if (*(i - 33) < 0)
    {
      operator delete(*(i - 56));
    }
  }

  a1[1] = v2;
}

void std::vector<CdmaEvdoCell>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<CdmaEvdoCell>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<UmtsCell>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 96;
        std::__destroy_at[abi:ne200100]<Cdma1xCell,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<GsmCell>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 88;
        std::__destroy_at[abi:ne200100]<Cdma1xCell,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<LteCell>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 128;
        std::__destroy_at[abi:ne200100]<Cdma1xCell,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<NrCell>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 144;
        std::__destroy_at[abi:ne200100]<Cdma1xCell,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::unordered_map<subscriber::SimFilePath,subscriber::FileId>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        v2[5] = v4;
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

void subscriber::initSimFilePathMap(subscriber *this)
{
  if (subscriber::initSimFilePathMap(void)::pred != -1)
  {
    dispatch_once(&subscriber::initSimFilePathMap(void)::pred, &__block_literal_global);
  }
}

void sub_23748F0AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, void *a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  v30 = *(v28 - 120);
  if (v30)
  {
    *(v28 - 112) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(exception_object);
}

void subscriber::initGSM()
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = 13;
  v0 = 2131771136;
  memset(v1, 0, sizeof(v1));
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(v1, &v0, v1, 2);
}

void sub_237490220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p)
{
  v11 = *(v9 - 72);
  if (v11)
  {
    *(v9 - 64) = v11;
    operator delete(v11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t subscriber::FileId::FileId(uint64_t a1, __int16 a2, uint64_t *a3)
{
  *a1 = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a1 + 8, *a3, a3[1], (a3[1] - *a3) >> 1);
  return a1;
}

{
  *a1 = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a1 + 8, *a3, a3[1], (a3[1] - *a3) >> 1);
  return a1;
}

void subscriber::initC2K(uint64_t a1, __int16 a2)
{
  v4 = 12;
  v2[0] = 16128;
  v2[1] = a2;
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(__p, v2, __p, 2);
}

void sub_237490980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *(v20 - 48);
  if (v22)
  {
    *(v20 - 40) = v22;
    operator delete(v22);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t subscriber::getFileId@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = &_MergedGlobals_5;
  if (result <= 2)
  {
    if (!result)
    {
      goto LABEL_28;
    }

    v5 = result == 2;
    v4 = &xmmword_280CE84C8;
  }

  else
  {
    v4 = &xmmword_280CE8518;
    if (result == 5)
    {
      v3 = &xmmword_280CE8540;
    }

    if (result == 4)
    {
      v3 = &xmmword_280CE84F0;
    }

    v5 = result == 3;
  }

  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v7 = *(v6 + 1);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v9 = a2;
      if (v7 <= a2)
      {
        v9 = a2 % v7;
      }
    }

    else
    {
      v9 = (v7 - 1) & a2;
    }

    v10 = *(*v6 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == a2)
        {
          if (*(i + 4) == a2)
          {
            *a3 = *(i + 12);
            *(a3 + 16) = 0;
            *(a3 + 24) = 0;
            *(a3 + 8) = 0;
            return std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a3 + 8, i[4], i[5], (i[5] - i[4]) >> 1);
          }
        }

        else
        {
          if (v8.u32[0] > 1uLL)
          {
            if (v12 >= v7)
            {
              v12 %= v7;
            }
          }

          else
          {
            v12 &= v7 - 1;
          }

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

LABEL_28:
  *a3 = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  return result;
}

uint64_t subscriber::FileId::FileId(uint64_t this)
{
  *this = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  return this;
}

{
  *this = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  return this;
}

uint64_t subscriber::getSimFilePath(int a1, unsigned __int16 *a2)
{
  v3 = &_MergedGlobals_5;
  if (a1 <= 2)
  {
    if (!a1)
    {
      return 40;
    }

    v5 = a1 == 2;
    v4 = &xmmword_280CE84C8;
  }

  else
  {
    v4 = &xmmword_280CE8518;
    if (a1 == 5)
    {
      v3 = &xmmword_280CE8540;
    }

    if (a1 == 4)
    {
      v3 = &xmmword_280CE84F0;
    }

    v5 = a1 == 3;
  }

  if (v5)
  {
    v3 = v4;
  }

  v6 = *(v3 + 2);
  if (!v6)
  {
    return 40;
  }

  while (!subscriber::operator==(v6 + 12, a2))
  {
    v6 = *v6;
    if (!v6)
    {
      return 40;
    }
  }

  return *(v6 + 4);
}

BOOL subscriber::operator==(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 == *a2 && (v3 = a1 + 4, v2 = *(a1 + 1), v4 = *(v3 + 1) - v2, v6 = a2 + 4, v5 = *(a2 + 1), v4 == *(v6 + 1) - v5))
  {
    return memcmp(v2, v5, v4) == 0;
  }

  else
  {
    return 0;
  }
}

BOOL subscriber::operator<(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  if ((_ZNSt3__133lexicographical_compare_three_wayB8ne200100INS_11__wrap_iterIPKtEES4_NS_17__synth_three_wayMUlTyTyRKT_RKT0_E_EEEDTclfp3_defp_defp1_EES5_S5_S8_S8_T1_(v4, v5, v6, v7) & 0x80) != 0)
  {
    return 1;
  }

  if (v5 - v4 == v7 - v6 && !memcmp(v4, v6, v5 - v4))
  {
    return *a1 < *a2;
  }

  return 0;
}

BOOL subscriber::operator<=(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  if ((_ZNSt3__133lexicographical_compare_three_wayB8ne200100INS_11__wrap_iterIPKtEES4_NS_17__synth_three_wayMUlTyTyRKT_RKT0_E_EEEDTclfp3_defp_defp1_EES5_S5_S8_S8_T1_(v4, v5, v6, v7) & 0x80) != 0)
  {
    return 1;
  }

  if (v5 - v4 == v7 - v6 && !memcmp(v4, v6, v5 - v4))
  {
    return *a1 <= *a2;
  }

  return 0;
}

uint64_t subscriber::FileId::FileId(uint64_t a1, unsigned __int8 **a2)
{
  *(a1 + 8) = 0;
  v3 = (a1 + 8);
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v5 = *a2;
  v4 = a2[1];
  if (*a2 != v4 && ((v4 - v5) & 1) == 0 && v5 < v4)
  {
    v7 = 0;
    v8 = 0;
    v9 = v5 + 1;
    do
    {
      v10 = *v9 | (*v5 << 8);
      if (!v10)
      {
        break;
      }

      if (v8)
      {
        v11 = *(a1 + 24);
        if (v7 >= v11)
        {
          v12 = *v3;
          v13 = v7 - *v3;
          v14 = v13 >> 1;
          if (v13 >> 1 <= -2)
          {
            std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
          }

          v15 = v11 - v12;
          if (v15 <= v14 + 1)
          {
            v16 = v14 + 1;
          }

          else
          {
            v16 = v15;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v17 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v16;
          }

          if (v17)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(v3, v17);
          }

          *(2 * v14) = v8;
          v7 = (2 * v14 + 2);
          memcpy(0, v12, v13);
          v18 = *(a1 + 8);
          *(a1 + 8) = 0;
          *(a1 + 16) = v7;
          *(a1 + 24) = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v7 = v8;
          v7 += 2;
        }

        *(a1 + 16) = v7;
        v4 = a2[1];
      }

      *a1 = v10;
      v5 += 2;
      v9 += 2;
      v8 = v10;
    }

    while (v5 < v4);
  }

  return a1;
}

void sub_237490FB0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *subscriber::operator<<(void *a1, unsigned __int16 *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "FileId(id=0x", 12);
  *(v4 + *(*v4 - 24) + 8) |= 0x4000u;
  v17 = 48;
  v5 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, &v17);
  v6 = *v5;
  *(v5 + *(*v5 - 24) + 24) = 4;
  *(v5 + *(v6 - 24) + 8) = *(v5 + *(v6 - 24) + 8) & 0xFFFFFFB5 | 8;
  v7 = *a2;
  MEMORY[0x2383CBD40]();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "; path=[", 8);
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  while (v8 != v9)
  {
    v10 = *v8++;
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "0x", 2);
    *(v11 + *(*v11 - 24) + 8) |= 0x4000u;
    v16 = 48;
    v12 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, &v16);
    v13 = *v12;
    *(v12 + *(*v12 - 24) + 24) = 4;
    *(v12 + *(v13 - 24) + 8) = *(v12 + *(v13 - 24) + 8) & 0xFFFFFFB5 | 8;
    v14 = MEMORY[0x2383CBD40]();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " ", 1);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "])", 2);
  return a1;
}

uint64_t subscriber::asString@<X0>(subscriber *this@<X0>, _BYTE *a2@<X8>)
{
  v17 = 0;
  v15 = 0u;
  memset(v16, 0, sizeof(v16));
  *__p = 0u;
  v14 = 0u;
  v11 = 0u;
  *__src = 0u;
  v9 = 0u;
  v10 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  subscriber::operator<<(&v9, this);
  if ((BYTE8(v15) & 0x10) != 0)
  {
    v6 = v15;
    if (v15 < __src[1])
    {
      *&v15 = __src[1];
      v6 = __src[1];
    }

    v7 = __src[0];
  }

  else
  {
    if ((BYTE8(v15) & 8) == 0)
    {
      v5 = 0;
      a2[23] = 0;
      goto LABEL_14;
    }

    v7 = *(&v10 + 1);
    v6 = *(&v11 + 1);
  }

  v5 = v6 - v7;
  if ((v6 - v7) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  a2[23] = v5;
  if (v5)
  {
    memmove(a2, v7, v5);
  }

LABEL_14:
  a2[v5] = 0;
  *&v9 = *MEMORY[0x277D82828];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v9 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v9 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v10);
  std::ostream::~ostream();
  return MEMORY[0x2383CBE70](v16);
}

void sub_23749140C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ostringstream::~ostringstream(&a9, MEMORY[0x277D82828]);
  MEMORY[0x2383CBE70](v9 + 112);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<subscriber::SimFilePath,subscriber::FileId>,std::__unordered_map_hasher<subscriber::SimFilePath,std::__hash_value_type<subscriber::SimFilePath,subscriber::FileId>,std::hash<subscriber::SimFilePath>,std::equal_to<subscriber::SimFilePath>,true>,std::__unordered_map_equal<subscriber::SimFilePath,std::__hash_value_type<subscriber::SimFilePath,subscriber::FileId>,std::equal_to<subscriber::SimFilePath>,std::hash<subscriber::SimFilePath>,true>,std::allocator<std::__hash_value_type<subscriber::SimFilePath,subscriber::FileId>>>::__emplace_unique_key_args<subscriber::SimFilePath,subscriber::SimFilePath,subscriber::FileId>(void *result, unsigned int a2)
{
  v2 = result[1];
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

  v5 = *(*result + 8 * v4);
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

  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<subscriber::SimFilePath,subscriber::FileId>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[4];
    if (v3)
    {
      __p[5] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_237491780(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned short>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, a2);
  }

  std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t _ZNSt3__133lexicographical_compare_three_wayB8ne200100INS_11__wrap_iterIPKtEES4_NS_17__synth_three_wayMUlTyTyRKT_RKT0_E_EEEDTclfp3_defp_defp1_EES5_S5_S8_S8_T1_(unsigned __int16 *a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  v4 = (a2 - a1) >> 1;
  v5 = (a4 - a3) >> 1;
  if (v5 >= v4)
  {
    v6 = (a2 - a1) >> 1;
  }

  else
  {
    v6 = (a4 - a3) >> 1;
  }

  if (v6 < 1)
  {
LABEL_7:
    v9 = v4 == v5;
    if (v4 < v5)
    {
      v10 = -1;
    }

    else
    {
      v10 = 1;
    }

    if (v9)
    {
      return 0;
    }

    else
    {
      return v10;
    }
  }

  else
  {
    while (1)
    {
      v7 = *a1;
      v8 = *a3;
      if (v7 != v8)
      {
        break;
      }

      ++a1;
      ++a3;
      if (!--v6)
      {
        goto LABEL_7;
      }
    }

    if (v7 < v8)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2374918D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<subscriber::SimFilePath,subscriber::FileId>,std::__unordered_map_hasher<subscriber::SimFilePath,std::__hash_value_type<subscriber::SimFilePath,subscriber::FileId>,std::hash<subscriber::SimFilePath>,std::equal_to<subscriber::SimFilePath>,true>,std::__unordered_map_equal<subscriber::SimFilePath,std::__hash_value_type<subscriber::SimFilePath,subscriber::FileId>,std::equal_to<subscriber::SimFilePath>,std::hash<subscriber::SimFilePath>,true>,std::allocator<std::__hash_value_type<subscriber::SimFilePath,subscriber::FileId>>>::__emplace_unique_key_args<subscriber::SimFilePath,std::pair<subscriber::SimFilePath const,subscriber::FileId>>(void *result, unsigned int a2)
{
  v2 = result[1];
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

  v5 = *(*result + 8 * v4);
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

  return result;
}

uint64_t _GLOBAL__sub_I_SimFileDefinitions_cpp()
{
  _MergedGlobals_5 = 0u;
  *algn_280CE84B0 = 0u;
  dword_280CE84C0 = 1065353216;
  __cxa_atexit(std::unordered_map<subscriber::SimFilePath,subscriber::FileId>::~unordered_map[abi:ne200100], &_MergedGlobals_5, &dword_2373EA000);
  unk_280CE84D8 = 0u;
  xmmword_280CE84C8 = 0u;
  dword_280CE84E8 = 1065353216;
  __cxa_atexit(std::unordered_map<subscriber::SimFilePath,subscriber::FileId>::~unordered_map[abi:ne200100], &xmmword_280CE84C8, &dword_2373EA000);
  xmmword_280CE8500 = 0u;
  xmmword_280CE84F0 = 0u;
  dword_280CE8510 = 1065353216;
  __cxa_atexit(std::unordered_map<subscriber::SimFilePath,subscriber::FileId>::~unordered_map[abi:ne200100], &xmmword_280CE84F0, &dword_2373EA000);
  unk_280CE8528 = 0u;
  xmmword_280CE8518 = 0u;
  dword_280CE8538 = 1065353216;
  __cxa_atexit(std::unordered_map<subscriber::SimFilePath,subscriber::FileId>::~unordered_map[abi:ne200100], &xmmword_280CE8518, &dword_2373EA000);
  xmmword_280CE8540 = 0u;
  unk_280CE8550 = 0u;
  dword_280CE8560 = 1065353216;

  return __cxa_atexit(std::unordered_map<subscriber::SimFilePath,subscriber::FileId>::~unordered_map[abi:ne200100], &xmmword_280CE8540, &dword_2373EA000);
}

BOOL cellplan::RemotePlanPhoneDeviceInfo::operator==(void *a1, void *a2)
{
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  v6 = *(a2 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  if (v5 != v6)
  {
    return 0;
  }

  v32 = v2;
  v33 = v3;
  v8 = a2;
  v9 = a1;
  if (v4 < 0)
  {
    a1 = *a1;
  }

  v10 = *a2;
  if (v7 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v5))
  {
    return 0;
  }

  v12 = *(v9 + 24);
  v13 = *(v8 + 24);
  if (v12 == 1 && (v13 & 1) != 0)
  {
    v14 = *(v9 + 55);
    if (v14 >= 0)
    {
      v15 = *(v9 + 55);
    }

    else
    {
      v15 = v9[5];
    }

    v16 = *(v8 + 55);
    v17 = v16;
    if ((v16 & 0x80u) != 0)
    {
      v16 = v8[5];
    }

    if (v15 != v16)
    {
      return 0;
    }

    v18 = v14 >= 0 ? v9 + 4 : v9[4];
    v19 = v17 >= 0 ? v8 + 4 : v8[4];
    if (memcmp(v18, v19, v15))
    {
      return 0;
    }
  }

  else if (v12 != v13)
  {
    return 0;
  }

  v20 = *(v9 + 79);
  if (v20 >= 0)
  {
    v21 = *(v9 + 79);
  }

  else
  {
    v21 = v9[8];
  }

  v22 = *(v8 + 79);
  v23 = v22;
  if ((v22 & 0x80u) != 0)
  {
    v22 = v8[8];
  }

  if (v21 != v22)
  {
    return 0;
  }

  v24 = v20 >= 0 ? v9 + 7 : v9[7];
  v25 = v23 >= 0 ? v8 + 7 : v8[7];
  if (memcmp(v24, v25, v21))
  {
    return 0;
  }

  v26 = v9[10];
  v27 = v9[11];
  v28 = v8[10];
  if (v27 - v26 != v8[11] - v28)
  {
    return 0;
  }

  while (v26 != v27)
  {
    result = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(&v31, v26, v28);
    if (!result)
    {
      return result;
    }

    v26 += 3;
    v28 += 3;
  }

  v29 = *(v9 + 104);
  v30 = *(v8 + 104);
  if (v29 == 1 && (v30 & 1) != 0)
  {
    return entitlements::RemoteSubscriptionQueryInfo::operator==(v9 + 14, v8 + 14);
  }

  else
  {
    return v29 == v30;
  }
}

uint64_t cellplan::RemotePlanSubscriptionPairedDeviceInfo::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v6 = *(a1 + 103);
  if (v6 >= 0)
  {
    v7 = *(a1 + 103);
  }

  else
  {
    v7 = *(a1 + 88);
  }

  v8 = *(a2 + 103);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 88);
  }

  if (v7 != v8)
  {
    return 0;
  }

  v10 = v6 >= 0 ? (a1 + 80) : *(a1 + 80);
  v11 = v9 >= 0 ? (a2 + 80) : *(a2 + 80);
  if (memcmp(v10, v11, v7) || *(a1 + 104) != *(a2 + 104))
  {
    return 0;
  }

  v12 = *(a1 + 16);
  v13 = *(a2 + 16);
  if (v12 == 1 && (v13 & 1) != 0)
  {
    v14 = *(a1 + 47);
    if (v14 >= 0)
    {
      v15 = *(a1 + 47);
    }

    else
    {
      v15 = *(a1 + 32);
    }

    v16 = *(a2 + 47);
    v17 = v16;
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(a2 + 32);
    }

    if (v15 != v16)
    {
      return 0;
    }

    v18 = v14 >= 0 ? (a1 + 24) : *(a1 + 24);
    v19 = v17 >= 0 ? (a2 + 24) : *(a2 + 24);
    if (memcmp(v18, v19, v15))
    {
      return 0;
    }

    result = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 24), (a2 + 24));
    if (!result)
    {
      return result;
    }
  }

  else if (v12 != v13)
  {
    return 0;
  }

  v20 = *(a1 + 48);
  v21 = *(a2 + 48);
  if (v20 == 1 && (v21 & 1) != 0)
  {
    v22 = *(a1 + 79);
    if (v22 >= 0)
    {
      v23 = *(a1 + 79);
    }

    else
    {
      v23 = *(a1 + 64);
    }

    v24 = *(a2 + 79);
    v25 = v24;
    if ((v24 & 0x80u) != 0)
    {
      v24 = *(a2 + 64);
    }

    if (v23 != v24)
    {
      return 0;
    }

    v26 = v22 >= 0 ? (a1 + 56) : *(a1 + 56);
    v27 = v25 >= 0 ? (a2 + 56) : *(a2 + 56);
    if (memcmp(v26, v27, v23))
    {
      return 0;
    }

    result = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 56), (a2 + 56));
    if (!result)
    {
      return result;
    }
  }

  else if (v20 != v21)
  {
    return 0;
  }

  v28 = *(a1 + 112);
  v29 = *(a2 + 112);
  if (v28 != 1 || (v29 & 1) == 0)
  {
    return v28 == v29;
  }

  v30 = *(a1 + 143);
  if (v30 >= 0)
  {
    v31 = *(a1 + 143);
  }

  else
  {
    v31 = *(a1 + 128);
  }

  v32 = *(a2 + 143);
  v33 = v32;
  if ((v32 & 0x80u) != 0)
  {
    v32 = *(a2 + 128);
  }

  if (v31 != v32)
  {
    return 0;
  }

  v36 = *(a2 + 120);
  v35 = (a2 + 120);
  v34 = v36;
  v39 = *(a1 + 120);
  v38 = (a1 + 120);
  v37 = v39;
  v40 = v30 >= 0 ? v38 : v37;
  v41 = v33 >= 0 ? v35 : v34;
  if (memcmp(v40, v41, v31))
  {
    return 0;
  }

  result = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v38, v35);
  if (result)
  {
    return 1;
  }

  return result;
}

BOOL cellplan::RemoteSubscriptionStateInfo::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v5 = *(a1 + 39);
  if (v5 >= 0)
  {
    v6 = *(a1 + 39);
  }

  else
  {
    v6 = *(a1 + 24);
  }

  v7 = *(a2 + 39);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 24);
  }

  if (v6 != v7)
  {
    return 0;
  }

  v9 = v5 >= 0 ? (a1 + 16) : *(a1 + 16);
  v10 = v8 >= 0 ? (a2 + 16) : *(a2 + 16);
  if (memcmp(v9, v10, v6))
  {
    return 0;
  }

  v11 = *(a1 + 63);
  if (v11 >= 0)
  {
    v12 = *(a1 + 63);
  }

  else
  {
    v12 = *(a1 + 48);
  }

  v13 = *(a2 + 63);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a2 + 48);
  }

  if (v12 != v13)
  {
    return 0;
  }

  v15 = v11 >= 0 ? (a1 + 40) : *(a1 + 40);
  v16 = v14 >= 0 ? (a2 + 40) : *(a2 + 40);
  if (memcmp(v15, v16, v12) || *(a1 + 64) != *(a2 + 64) || *(a1 + 65) != *(a2 + 65))
  {
    return 0;
  }

  v17 = *(a1 + 95);
  if (v17 >= 0)
  {
    v18 = *(a1 + 95);
  }

  else
  {
    v18 = *(a1 + 80);
  }

  v19 = *(a2 + 95);
  v20 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(a2 + 80);
  }

  if (v18 != v19)
  {
    return 0;
  }

  v21 = v17 >= 0 ? (a1 + 72) : *(a1 + 72);
  v22 = v20 >= 0 ? (a2 + 72) : *(a2 + 72);
  if (memcmp(v21, v22, v18) || !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 96), (a2 + 96)) || !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 120), (a2 + 120)))
  {
    return 0;
  }

  return std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 144), (a2 + 144));
}

uint64_t cellplan::RemotePlanSubscriptionInfo::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == 1 && (v5 & 1) != 0)
  {
    v6 = a1[31];
    if (v6 >= 0)
    {
      v7 = a1[31];
    }

    else
    {
      v7 = *(a1 + 2);
    }

    v8 = a2[31];
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a2 + 2);
    }

    if (v7 != v8)
    {
      return 0;
    }

    v10 = v6 >= 0 ? a1 + 8 : *(a1 + 1);
    v11 = v9 >= 0 ? a2 + 8 : *(a2 + 1);
    if (memcmp(v10, v11, v7))
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v12 = a1[32];
  v13 = a2[32];
  if (v12 == 1 && (v13 & 1) != 0)
  {
    v14 = a1[63];
    if (v14 >= 0)
    {
      v15 = a1[63];
    }

    else
    {
      v15 = *(a1 + 6);
    }

    v16 = a2[63];
    v17 = v16;
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(a2 + 6);
    }

    if (v15 == v16)
    {
      v18 = v14 >= 0 ? a1 + 40 : *(a1 + 5);
      v19 = v17 >= 0 ? a2 + 40 : *(a2 + 5);
      if (!memcmp(v18, v19, v15))
      {
        goto LABEL_35;
      }
    }

    return 0;
  }

  if (v12 != v13)
  {
    return 0;
  }

LABEL_35:
  v20 = *(a1 + 8);
  v21 = *(a1 + 9);
  v22 = *(a2 + 8);
  if (v21 - v20 != *(a2 + 9) - v22)
  {
    return 0;
  }

  while (v20 != v21)
  {
    result = cellplan::RemotePlanSubscriptionPairedDeviceInfo::operator==(v20, v22);
    if (!result)
    {
      return result;
    }

    v20 += 144;
    v22 += 144;
  }

  v26 = a1 + 88;
  v24 = *(a1 + 11);
  v25 = *(v26 + 1);
  v28 = a2 + 88;
  v27 = *(a2 + 11);
  if (v25 - v24 != *(v28 + 1) - v27)
  {
    return 0;
  }

  if (v24 == v25)
  {
    return 1;
  }

  do
  {
    result = cellplan::RemoteSubscriptionStateInfo::operator==(v24, v27);
    if (!result)
    {
      break;
    }

    v24 += 168;
    v27 += 168;
  }

  while (v24 != v25);
  return result;
}

void cellplan::asString(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v98 = *MEMORY[0x277D85DE8];
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::basic_string[abi:ne200100]<0>(a2, "secondary-devices-paired: {");
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v87 = a1;
  if (v4 != v5)
  {
    v6 = v4 + 112;
    do
    {
      memset(v96, 0, sizeof(v96));
      v95 = 0u;
      memset(v94, 0, sizeof(v94));
      *v92 = 0u;
      memset(v93, 0, sizeof(v93));
      *v91 = *(v6 - 112);
      boost::optional<std::string>::optional(v92, v6 - 96);
      boost::optional<std::string>::optional(&v93[2], v6 - 64);
      if (*(v6 - 9) < 0)
      {
        std::string::__init_copy_ctor_external(&v94[1], *(v6 - 32), *(v6 - 24));
      }

      else
      {
        v7 = *(v6 - 32);
        *&v95 = *(v6 - 16);
        v94[1] = v7;
      }

      BYTE8(v95) = *(v6 - 8);
      boost::optional<std::string>::optional(v96, v6);
      std::string::append(a2, "\n{", 2uLL);
      if (*v91 != 0)
      {
        ctu::hex(v91, 0x10);
        v8 = std::string::insert(&v88, 0, "eid: ", 5uLL);
        v9 = *&v8->__r_.__value_.__l.__data_;
        v89.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
        *&v89.__r_.__value_.__l.__data_ = v9;
        v8->__r_.__value_.__l.__size_ = 0;
        v8->__r_.__value_.__r.__words[2] = 0;
        v8->__r_.__value_.__r.__words[0] = 0;
        v10 = std::string::append(&v89, "; ", 2uLL);
        v11 = *&v10->__r_.__value_.__l.__data_;
        __p[0].__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
        *&__p[0].__r_.__value_.__l.__data_ = v11;
        v10->__r_.__value_.__l.__size_ = 0;
        v10->__r_.__value_.__r.__words[2] = 0;
        v10->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0].__r_.__value_.__r.__words[0];
        }

        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p[0].__r_.__value_.__l.__size_;
        }

        std::string::append(a2, v12, size);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v89.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v88.__r_.__value_.__l.__data_);
        }
      }

      if (LOBYTE(v92[0]) == 1)
      {
        std::operator+<char>();
        v14 = std::string::append(&v89, "; ", 2uLL);
        v15 = *&v14->__r_.__value_.__l.__data_;
        __p[0].__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
        *&__p[0].__r_.__value_.__l.__data_ = v15;
        v14->__r_.__value_.__l.__size_ = 0;
        v14->__r_.__value_.__r.__words[2] = 0;
        v14->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = __p;
        }

        else
        {
          v16 = __p[0].__r_.__value_.__r.__words[0];
        }

        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
        }

        else
        {
          v17 = __p[0].__r_.__value_.__l.__size_;
        }

        std::string::append(a2, v16, v17);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v89.__r_.__value_.__l.__data_);
        }
      }

      if (LOBYTE(v93[2]) == 1)
      {
        std::operator+<char>();
        v18 = std::string::append(&v89, "; ", 2uLL);
        v19 = *&v18->__r_.__value_.__l.__data_;
        __p[0].__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
        *&__p[0].__r_.__value_.__l.__data_ = v19;
        v18->__r_.__value_.__l.__size_ = 0;
        v18->__r_.__value_.__r.__words[2] = 0;
        v18->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = __p;
        }

        else
        {
          v20 = __p[0].__r_.__value_.__r.__words[0];
        }

        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = __p[0].__r_.__value_.__l.__size_;
        }

        std::string::append(a2, v20, v21);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v89.__r_.__value_.__l.__data_);
        }
      }

      std::operator+<char>();
      v22 = std::string::append(&v89, "; ", 2uLL);
      v23 = *&v22->__r_.__value_.__l.__data_;
      __p[0].__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
      *&__p[0].__r_.__value_.__l.__data_ = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = __p;
      }

      else
      {
        v24 = __p[0].__r_.__value_.__r.__words[0];
      }

      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        v25 = __p[0].__r_.__value_.__l.__size_;
      }

      std::string::append(a2, v24, v25);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }

      v26 = asString(BYTE8(v95));
      std::string::basic_string[abi:ne200100]<0>(&v88, v26);
      v27 = std::string::insert(&v88, 0, "activation-status: ", 0x13uLL);
      v28 = *&v27->__r_.__value_.__l.__data_;
      v89.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
      *&v89.__r_.__value_.__l.__data_ = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      v29 = std::string::append(&v89, "; ", 2uLL);
      v30 = *&v29->__r_.__value_.__l.__data_;
      __p[0].__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&__p[0].__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = __p;
      }

      else
      {
        v31 = __p[0].__r_.__value_.__r.__words[0];
      }

      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        v32 = __p[0].__r_.__value_.__l.__size_;
      }

      std::string::append(a2, v31, v32);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v88.__r_.__value_.__l.__data_);
      }

      if (LOBYTE(v96[0]) == 1)
      {
        std::operator+<char>();
        v33 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        v34 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p[0].__r_.__value_.__r.__words[2]) : __p[0].__r_.__value_.__l.__size_;
        std::string::append(a2, v33, v34);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      std::string::append(a2, "}", 1uLL);
      if (LOBYTE(v96[0]) == 1)
      {
        if (SHIBYTE(v96[3]) < 0)
        {
          operator delete(v96[1]);
        }

        LOBYTE(v96[0]) = 0;
      }

      if (SBYTE7(v95) < 0)
      {
        operator delete(*&v94[1]);
      }

      if (LOBYTE(v93[2]) == 1)
      {
        if (SHIBYTE(v94[0]) < 0)
        {
          operator delete(v93[3]);
        }

        LOBYTE(v93[2]) = 0;
      }

      if (LOBYTE(v92[0]) == 1 && SHIBYTE(v93[1]) < 0)
      {
        operator delete(v92[1]);
      }

      v35 = v6 - 112;
      v6 += 144;
    }

    while (v35 + 144 != v5);
  }

  std::string::append(a2, "}\n", 2uLL);
  std::string::append(a2, "linked-subscriptions: {", 0x17uLL);
  v36 = *(v87 + 88);
  v37 = *(v87 + 96);
  if (v36 != v37)
  {
    v38 = v36 + 80;
    do
    {
      memset(&v97, 0, sizeof(v97));
      v95 = 0u;
      memset(v96, 0, sizeof(v96));
      memset(v94, 0, sizeof(v94));
      memset(v93, 0, sizeof(v93));
      *v91 = 0u;
      *v92 = 0u;
      *v91 = *(v38 - 80);
      if (*(v38 - 41) < 0)
      {
        std::string::__init_copy_ctor_external(v92, *(v38 - 64), *(v38 - 56));
      }

      else
      {
        v39 = *(v38 - 64);
        v93[0] = *(v38 - 48);
        *v92 = v39;
      }

      if (*(v38 - 17) < 0)
      {
        std::string::__init_copy_ctor_external(&v93[1], *(v38 - 40), *(v38 - 32));
      }

      else
      {
        v40 = *(v38 - 40);
        v93[3] = *(v38 - 24);
        *&v93[1] = v40;
      }

      LOWORD(v94[0]) = *(v38 - 16);
      if (*(v38 + 15) < 0)
      {
        std::string::__init_copy_ctor_external((v94 + 8), *(v38 - 8), *v38);
      }

      else
      {
        v41 = *(v38 - 8);
        *(&v94[1] + 1) = *(v38 + 8);
        *(v94 + 8) = v41;
      }

      if (*(v38 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v95, *(v38 + 16), *(v38 + 24));
      }

      else
      {
        v42 = *(v38 + 16);
        v96[0] = *(v38 + 32);
        v95 = v42;
      }

      if (*(v38 + 63) < 0)
      {
        std::string::__init_copy_ctor_external(&v96[1], *(v38 + 40), *(v38 + 48));
      }

      else
      {
        v43 = *(v38 + 40);
        v96[3] = *(v38 + 56);
        *&v96[1] = v43;
      }

      if (*(v38 + 87) < 0)
      {
        std::string::__init_copy_ctor_external(&v97, *(v38 + 64), *(v38 + 72));
      }

      else
      {
        v44 = *(v38 + 64);
        v97.__r_.__value_.__r.__words[2] = *(v38 + 80);
        *&v97.__r_.__value_.__l.__data_ = v44;
      }

      std::string::append(a2, "\n{", 2uLL);
      if (*v91 != 0)
      {
        ctu::hex(v91, 0x10);
        v45 = std::string::insert(&v88, 0, "eid: ", 5uLL);
        v46 = *&v45->__r_.__value_.__l.__data_;
        v89.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
        *&v89.__r_.__value_.__l.__data_ = v46;
        v45->__r_.__value_.__l.__size_ = 0;
        v45->__r_.__value_.__r.__words[2] = 0;
        v45->__r_.__value_.__r.__words[0] = 0;
        v47 = std::string::append(&v89, "; ", 2uLL);
        v48 = *&v47->__r_.__value_.__l.__data_;
        __p[0].__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
        *&__p[0].__r_.__value_.__l.__data_ = v48;
        v47->__r_.__value_.__l.__size_ = 0;
        v47->__r_.__value_.__r.__words[2] = 0;
        v47->__r_.__value_.__r.__words[0] = 0;
        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v49 = __p;
        }

        else
        {
          v49 = __p[0].__r_.__value_.__r.__words[0];
        }

        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v50 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
        }

        else
        {
          v50 = __p[0].__r_.__value_.__l.__size_;
        }

        std::string::append(a2, v49, v50);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v89.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v88.__r_.__value_.__l.__data_);
        }
      }

      std::operator+<char>();
      v51 = std::string::append(&v89, "; ", 2uLL);
      v52 = *&v51->__r_.__value_.__l.__data_;
      __p[0].__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
      *&__p[0].__r_.__value_.__l.__data_ = v52;
      v51->__r_.__value_.__l.__size_ = 0;
      v51->__r_.__value_.__r.__words[2] = 0;
      v51->__r_.__value_.__r.__words[0] = 0;
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v53 = __p;
      }

      else
      {
        v53 = __p[0].__r_.__value_.__r.__words[0];
      }

      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v54 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        v54 = __p[0].__r_.__value_.__l.__size_;
      }

      std::string::append(a2, v53, v54);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }

      std::operator+<char>();
      v55 = std::string::append(&v89, "; ", 2uLL);
      v56 = *&v55->__r_.__value_.__l.__data_;
      __p[0].__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
      *&__p[0].__r_.__value_.__l.__data_ = v56;
      v55->__r_.__value_.__l.__size_ = 0;
      v55->__r_.__value_.__r.__words[2] = 0;
      v55->__r_.__value_.__r.__words[0] = 0;
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v57 = __p;
      }

      else
      {
        v57 = __p[0].__r_.__value_.__r.__words[0];
      }

      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        v58 = __p[0].__r_.__value_.__l.__size_;
      }

      std::string::append(a2, v57, v58);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }

      v59 = asString(LOBYTE(v94[0]));
      std::string::basic_string[abi:ne200100]<0>(&v88, v59);
      v60 = std::string::insert(&v88, 0, "activation-status: ", 0x13uLL);
      v61 = *&v60->__r_.__value_.__l.__data_;
      v89.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
      *&v89.__r_.__value_.__l.__data_ = v61;
      v60->__r_.__value_.__l.__size_ = 0;
      v60->__r_.__value_.__r.__words[2] = 0;
      v60->__r_.__value_.__r.__words[0] = 0;
      v62 = std::string::append(&v89, "; ", 2uLL);
      v63 = *&v62->__r_.__value_.__l.__data_;
      __p[0].__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
      *&__p[0].__r_.__value_.__l.__data_ = v63;
      v62->__r_.__value_.__l.__size_ = 0;
      v62->__r_.__value_.__r.__words[2] = 0;
      v62->__r_.__value_.__r.__words[0] = 0;
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v64 = __p;
      }

      else
      {
        v64 = __p[0].__r_.__value_.__r.__words[0];
      }

      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v65 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        v65 = __p[0].__r_.__value_.__l.__size_;
      }

      std::string::append(a2, v64, v65);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v88.__r_.__value_.__l.__data_);
      }

      v66 = "???";
      if (BYTE1(v94[0]) <= 2uLL)
      {
        v66 = off_278A32A88[BYTE1(v94[0])];
      }

      std::string::basic_string[abi:ne200100]<0>(&v88, v66);
      v67 = std::string::insert(&v88, 0, "association-subscription:", 0x19uLL);
      v68 = *&v67->__r_.__value_.__l.__data_;
      v89.__r_.__value_.__r.__words[2] = v67->__r_.__value_.__r.__words[2];
      *&v89.__r_.__value_.__l.__data_ = v68;
      v67->__r_.__value_.__l.__size_ = 0;
      v67->__r_.__value_.__r.__words[2] = 0;
      v67->__r_.__value_.__r.__words[0] = 0;
      v69 = std::string::append(&v89, "; ", 2uLL);
      v70 = *&v69->__r_.__value_.__l.__data_;
      __p[0].__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
      *&__p[0].__r_.__value_.__l.__data_ = v70;
      v69->__r_.__value_.__l.__size_ = 0;
      v69->__r_.__value_.__r.__words[2] = 0;
      v69->__r_.__value_.__r.__words[0] = 0;
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v71 = __p;
      }

      else
      {
        v71 = __p[0].__r_.__value_.__r.__words[0];
      }

      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v72 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        v72 = __p[0].__r_.__value_.__l.__size_;
      }

      std::string::append(a2, v71, v72);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v88.__r_.__value_.__l.__data_);
      }

      std::operator+<char>();
      v73 = std::string::append(&v89, "; ", 2uLL);
      v74 = *&v73->__r_.__value_.__l.__data_;
      __p[0].__r_.__value_.__r.__words[2] = v73->__r_.__value_.__r.__words[2];
      *&__p[0].__r_.__value_.__l.__data_ = v74;
      v73->__r_.__value_.__l.__size_ = 0;
      v73->__r_.__value_.__r.__words[2] = 0;
      v73->__r_.__value_.__r.__words[0] = 0;
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v75 = __p;
      }

      else
      {
        v75 = __p[0].__r_.__value_.__r.__words[0];
      }

      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v76 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        v76 = __p[0].__r_.__value_.__l.__size_;
      }

      std::string::append(a2, v75, v76);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }

      std::operator+<char>();
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v77 = __p;
      }

      else
      {
        v77 = __p[0].__r_.__value_.__r.__words[0];
      }

      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v78 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        v78 = __p[0].__r_.__value_.__l.__size_;
      }

      std::string::append(a2, v77, v78);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      std::string::append(a2, "}", 1uLL);
      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v96[3]) < 0)
      {
        operator delete(v96[1]);
      }

      if (SHIBYTE(v96[0]) < 0)
      {
        operator delete(v95);
      }

      if (SHIBYTE(v94[1]) < 0)
      {
        operator delete(*(&v94[0] + 1));
      }

      if (SHIBYTE(v93[3]) < 0)
      {
        operator delete(v93[1]);
      }

      if (SHIBYTE(v93[0]) < 0)
      {
        operator delete(v92[0]);
      }

      v79 = v38 - 80;
      v38 += 168;
    }

    while (v79 + 168 != v37);
  }

  std::string::append(a2, "}\n", 2uLL);
  if (*v87 == 1)
  {
    std::operator+<char>();
    v80 = std::string::append(__p, "\n", 1uLL);
    v81 = *&v80->__r_.__value_.__l.__data_;
    v92[0] = v80->__r_.__value_.__r.__words[2];
    *v91 = v81;
    v80->__r_.__value_.__l.__size_ = 0;
    v80->__r_.__value_.__r.__words[2] = 0;
    v80->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v92[0]) >= 0)
    {
      v82 = v91;
    }

    else
    {
      v82 = v91[0];
    }

    if (SHIBYTE(v92[0]) >= 0)
    {
      v83 = HIBYTE(v92[0]);
    }

    else
    {
      v83 = v91[1];
    }

    std::string::append(a2, v82, v83);
    if (SHIBYTE(v92[0]) < 0)
    {
      operator delete(v91[0]);
    }

    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }
  }

  if (*(v87 + 32) == 1)
  {
    std::operator+<char>();
    if (SHIBYTE(v92[0]) >= 0)
    {
      v84 = v91;
    }

    else
    {
      v84 = v91[0];
    }

    if (SHIBYTE(v92[0]) >= 0)
    {
      v85 = HIBYTE(v92[0]);
    }

    else
    {
      v85 = v91[1];
    }

    std::string::append(a2, v84, v85);
    if (SHIBYTE(v92[0]) < 0)
    {
      operator delete(v91[0]);
    }
  }

  v86 = *MEMORY[0x277D85DE8];
}

void sub_23749310C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(a1);
}

const char *cellplan::asString(int a1)
{
  if ((a1 - 1) > 2)
  {
    return "Successful";
  }

  else
  {
    return off_278A32AA0[a1 - 1];
  }
}

{
  if ((a1 - 1) > 3)
  {
    return "Unknown";
  }

  else
  {
    return off_278A32AB8[a1 - 1];
  }
}

BOOL cellplan::operator!=(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 1;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  v8 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3) || *(v7 + 6) != *(v6 + 6))
  {
    return 1;
  }

  v9 = *(v7 + 55);
  if (v9 >= 0)
  {
    v10 = *(v7 + 55);
  }

  else
  {
    v10 = v7[5];
  }

  v11 = *(v6 + 55);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = v6[5];
  }

  if (v10 != v11)
  {
    return 1;
  }

  v13 = v9 >= 0 ? v7 + 4 : v7[4];
  v14 = v12 >= 0 ? v6 + 4 : v6[4];
  if (memcmp(v13, v14, v10))
  {
    return 1;
  }

  v15 = *(v7 + 79);
  if (v15 >= 0)
  {
    v16 = *(v7 + 79);
  }

  else
  {
    v16 = v7[8];
  }

  v17 = *(v6 + 79);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = v6[8];
  }

  if (v16 == v17 && (v15 >= 0 ? (v19 = v7 + 7) : (v19 = v7[7]), v18 >= 0 ? (v20 = v6 + 7) : (v20 = v6[7]), !memcmp(v19, v20, v16)))
  {
    return *(v7 + 20) != *(v6 + 20);
  }

  else
  {
    return 1;
  }
}

BOOL cellplan::operator==(void *a1, void *a2)
{
  return !cellplan::operator!=(a1, a2);
}

{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  v8 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3) || *(v7 + 6) != *(v6 + 6))
  {
    return 0;
  }

  v9 = *(v7 + 32);
  v10 = *(v6 + 32);
  if (v9 == 1 && (v10 & 1) != 0)
  {
    v11 = *(v7 + 63);
    if (v11 >= 0)
    {
      v12 = *(v7 + 63);
    }

    else
    {
      v12 = v7[6];
    }

    v13 = *(v6 + 63);
    v14 = v13;
    if ((v13 & 0x80u) != 0)
    {
      v13 = v6[6];
    }

    if (v12 != v13)
    {
      return 0;
    }

    v15 = v11 >= 0 ? v7 + 5 : v7[5];
    v16 = v14 >= 0 ? v6 + 5 : v6[5];
    if (memcmp(v15, v16, v12))
    {
      return 0;
    }
  }

  else if (v9 != v10)
  {
    return 0;
  }

  v18 = *(v7 + 64);
  v19 = *(v6 + 64);
  if (v18 != 1 || (v19 & 1) == 0)
  {
    if (v18 == v19)
    {
      return *(v7 + 24) == *(v6 + 24);
    }

    return 0;
  }

  v20 = *(v7 + 95);
  if (v20 >= 0)
  {
    v21 = *(v7 + 95);
  }

  else
  {
    v21 = v7[10];
  }

  v22 = *(v6 + 95);
  v23 = v22;
  if ((v22 & 0x80u) != 0)
  {
    v22 = v6[10];
  }

  if (v21 != v22)
  {
    return 0;
  }

  v24 = v20 >= 0 ? v7 + 9 : v7[9];
  v25 = v23 >= 0 ? v6 + 9 : v6[9];
  if (memcmp(v24, v25, v21))
  {
    return 0;
  }

  return *(v7 + 24) == *(v6 + 24);
}

BOOL cellplan::LinkedPlanStatusInfo::isValid(cellplan::LinkedPlanStatusInfo *this)
{
  if ((*(this + 23) & 0x8000000000000000) != 0)
  {
    if (*(this + 1))
    {
      return *(this + 48) != 0;
    }
  }

  else if (*(this + 23))
  {
    return *(this + 48) != 0;
  }

  return 0;
}

BOOL cellplan::deserializeRemotePlanSimSubscriptionStatus(unsigned int a1, unsigned int *a2)
{
  if (a1 <= 4)
  {
    *a2 = a1;
  }

  return a1 < 5;
}

void *cellplan::operator<<(void *a1, uint64_t a2)
{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "RemoteSimSubscriptionInfo(\n  ", 29);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "  device-id: ", 13);
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "\n", 1);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "  status: ", 10);
  v11 = *(a2 + 24) - 1;
  if (v11 > 3)
  {
    v12 = "Unknown";
  }

  else
  {
    v12 = off_278A32AB8[v11];
  }

  v13 = strlen(v12);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "\n", 1);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "  iccid: ", 9);
  if (*(a2 + 32) == 1)
  {
    if (*(a2 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v31, *(a2 + 40), *(a2 + 48));
    }

    else
    {
      v31 = *(a2 + 40);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v31, "");
  }

  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v31;
  }

  else
  {
    v17 = v31.__r_.__value_.__r.__words[0];
  }

  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v31.__r_.__value_.__l.__size_;
  }

  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, size);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "\n", 1);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "  carrier-name: ", 16);
  if (*(a2 + 64) == 1)
  {
    if (*(a2 + 95) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a2 + 72), *(a2 + 80));
    }

    else
    {
      __p = *(a2 + 72);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = __p.__r_.__value_.__l.__size_;
  }

  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, p_p, v23);
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "\n", 1);
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "  subscription-slot: ", 21);
  v27 = subscriber::operator<<(v26, (a2 + 96));
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "\n)", 2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  return v28;
}

void sub_2374939FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cellplan::RemoteSimSelectionModel::RemoteSimSelectionModel(uint64_t this)
{
  *this = 0;
  *(this + 24) = 0;
  *(this + 56) = 0;
  *(this + 60) = 0;
  return this;
}

{
  *this = 0;
  *(this + 24) = 0;
  *(this + 56) = 0;
  *(this + 60) = 0;
  return this;
}

uint64_t cellplan::RemoteSimSelectionModel::RemoteSimSelectionModel(uint64_t a1, _OWORD *a2, __int128 *a3, int a4)
{
  *a1 = 0;
  *(a1 + 1) = *a2;
  *a1 = 1;
  *(a1 + 24) = 0;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a1 + 48) = *(a3 + 2);
    *(a1 + 32) = v6;
  }

  *(a1 + 24) = 1;
  *(a1 + 56) = a4;
  *(a1 + 60) = 0;
  return a1;
}

double cellplan::RemoteSimSelectionModel::noSimModel@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 56) = 1;
  return result;
}

void cellplan::RemoteSimSelectionModel::nonEsimOverrideModel(const std::string *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 60) = 1;
  *(a3 + 56) = a2;
  boost::optional_detail::optional_base<std::string>::assign((a3 + 24), a1);
}

uint64_t cellplan::RemoteSimSelectionModel::operator BOOL(uint64_t a1)
{
  if (*a1 == 1 && *(a1 + 24) == 1 && *(a1 + 56))
  {
    LOBYTE(v1) = 1;
  }

  else
  {
    v1 = *(a1 + 56);
    if (v1 != 1)
    {
      LOBYTE(v1) = *(a1 + 60);
    }
  }

  return v1 & 1;
}

uint64_t cellplan::RemoteSimSelectionModel::hasValidProfile(cellplan::RemoteSimSelectionModel *this)
{
  if (*this == 1)
  {
    v1 = *(this + 24);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

BOOL cellplan::RemoteSimSelectionModel::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 60) != *(a2 + 60))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (v4 == 1 && (v5 & 1) != 0)
  {
    v6 = *(a1 + 55);
    if (v6 >= 0)
    {
      v7 = *(a1 + 55);
    }

    else
    {
      v7 = *(a1 + 40);
    }

    v8 = *(a2 + 55);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a2 + 40);
    }

    if (v7 != v8)
    {
      return 0;
    }

    v10 = v6 >= 0 ? (a1 + 32) : *(a1 + 32);
    v11 = v9 >= 0 ? (a2 + 32) : *(a2 + 32);
    if (memcmp(v10, v11, v7))
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  return *(a1 + 56) == *(a2 + 56);
}

__n128 cellplan::RemoteSimSelectionModel::getCsn@<Q0>(cellplan::RemoteSimSelectionModel *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  if (*this == 1)
  {
    result = *(this + 1);
    *(a2 + 1) = result;
    *a2 = 1;
  }

  return result;
}

uint64_t boost::optional<std::string>::optional(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  if (*a2 == 1)
  {
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v3 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v3;
    }

    *a1 = 1;
  }

  return a1;
}

BOOL cellplan::RemoteDeviceIdentifiers::operator==(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (v4 == 1 && (v5 & 1) != 0)
  {
    v6 = *(a1 + 55);
    if (v6 >= 0)
    {
      v7 = *(a1 + 55);
    }

    else
    {
      v7 = *(a1 + 40);
    }

    v8 = *(a2 + 55);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = a2[5];
    }

    if (v7 != v8)
    {
      return 0;
    }

    v10 = v6 >= 0 ? (a1 + 32) : *(a1 + 32);
    v11 = v9 >= 0 ? a2 + 4 : a2[4];
    if (memcmp(v10, v11, v7))
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v12 = *(a1 + 56);
  v13 = *(a2 + 56);
  if (v12 != 1 || (v13 & 1) == 0)
  {
    if (v12 == v13)
    {
      goto LABEL_35;
    }

    return 0;
  }

  v14 = *(a1 + 87);
  if (v14 >= 0)
  {
    v15 = *(a1 + 87);
  }

  else
  {
    v15 = *(a1 + 72);
  }

  v16 = *(a2 + 87);
  v17 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v16 = a2[9];
  }

  if (v15 != v16)
  {
    return 0;
  }

  v18 = v14 >= 0 ? (a1 + 64) : *(a1 + 64);
  v19 = v17 >= 0 ? a2 + 8 : a2[8];
  if (memcmp(v18, v19, v15))
  {
    return 0;
  }

LABEL_35:
  if (*(a1 + 88) != *(a2 + 88))
  {
    return 0;
  }

  v20 = *(a1 + 23);
  if (v20 >= 0)
  {
    v21 = *(a1 + 23);
  }

  else
  {
    v21 = *(a1 + 8);
  }

  v22 = *(a2 + 23);
  v23 = v22;
  if ((v22 & 0x80u) != 0)
  {
    v22 = a2[1];
  }

  if (v21 != v22)
  {
    return 0;
  }

  v24 = v20 >= 0 ? a1 : *a1;
  v25 = *a2;
  v26 = v23 >= 0 ? a2 : *a2;
  if (memcmp(v24, v26, v21))
  {
    return 0;
  }

  v27 = *(a1 + 120);
  v28 = *(a2 + 120);
  if (v27 == 1 && (v28 & 1) != 0)
  {
    v27 = *(a1 + 124);
    v28 = *(a2 + 31);
  }

  if (v27 != v28)
  {
    return 0;
  }

  v29 = *(a1 + 128);
  v30 = *(a2 + 128);
  if (v29 == 1 && (v30 & 1) != 0)
  {
    v29 = *(a1 + 132);
    v30 = *(a2 + 33);
  }

  if (v29 != v30)
  {
    return 0;
  }

  return std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 96), a2 + 12);
}

std::string *cellplan::RemoteDeviceIdentifiers::operator=(std::string *a1, const std::string *a2)
{
  std::string::operator=(a1, a2);
  boost::optional_detail::optional_base<std::string>::assign(&a1[1], &a2[1]);
  boost::optional_detail::optional_base<std::string>::assign(&a1[2].__r_.__value_.__l.__size_, &a2[2].__r_.__value_.__s.__data_[8]);
  a1[3].__r_.__value_.__s.__data_[16] = a2[3].__r_.__value_.__s.__data_[16];
  result = std::string::operator=(a1 + 4, a2 + 4);
  a1[5].__r_.__value_.__r.__words[0] = a2[5].__r_.__value_.__r.__words[0];
  a1[5].__r_.__value_.__l.__size_ = a2[5].__r_.__value_.__l.__size_;
  return result;
}

uint64_t cellplan::isPairedRemoteDevice(__int128 *a1, void *a2)
{
  v2 = *a1;
  for (i = *a1; ; i += 216)
  {
    if (i == *(a1 + 1))
    {
      return 0;
    }

    v4 = *(i + 176);
    if (v4 != *(i + 184))
    {
      v6 = *(v4 + 16);
      v5 = *(v4 + 24);
      if (v6 == *a2 && v5 == a2[1])
      {
        break;
      }
    }
  }

  return 1;
}

void cellplan::findProfile(__int128 *a1@<X0>, uint64_t a2@<X1>, VinylProfileDetails *a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *a1;
  if (*a1 == v5)
  {
LABEL_4:
    *a3 = 0;
    *(a3 + 216) = 0;
  }

  else
  {
    while (1)
    {
      RemoteVinylInfo::findProfile(v6 + 144, a2, v9);
      if (v10 == 1)
      {
        break;
      }

      v6 += 216;
      if (v6 == v5)
      {
        goto LABEL_4;
      }
    }

    *a3 = 0;
    *(a3 + 216) = 0;
    VinylProfileDetails::VinylProfileDetails(a3, v9);
    *(a3 + 216) = 1;
    if (v10 == 1)
    {
      VinylProfileDetails::~VinylProfileDetails(v9);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2374940DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (*(v37 + 216) == 1)
  {
    VinylProfileDetails::~VinylProfileDetails(v37);
  }

  if (a37 == 1)
  {
    VinylProfileDetails::~VinylProfileDetails(&a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL cellplan::RemoteProvisioningDeviceInfo::operator==(unsigned __int8 *a1, uint64_t *a2)
{
  if (*a1 != *a2 || !cellplan::RemoteDeviceIdentifiers::operator==((a1 + 8), a2 + 1))
  {
    return 0;
  }

  return RemoteVinylInfo::operator==(a1 + 18, a2 + 18);
}

const char *cellplan::asString(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 0xA)
  {
    return "kRadioSkuCU";
  }

  else
  {
    return off_278A32AD8[v1];
  }
}

void cellplan::RemotePlanSubscriptionPairedDeviceInfo::~RemotePlanSubscriptionPairedDeviceInfo(void **this)
{
  if (*(this + 112) == 1)
  {
    if (*(this + 143) < 0)
    {
      operator delete(this[15]);
    }

    *(this + 112) = 0;
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 48) == 1)
  {
    if (*(this + 79) < 0)
    {
      operator delete(this[7]);
    }

    *(this + 48) = 0;
  }

  if (*(this + 16) == 1)
  {
    if (*(this + 47) < 0)
    {
      operator delete(this[3]);
    }

    *(this + 16) = 0;
  }
}

void cellplan::RemoteSubscriptionStateInfo::~RemoteSubscriptionStateInfo(void **this)
{
  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void cellplan::RemoteSimSelectionModel::~RemoteSimSelectionModel(void **this)
{
  if (*(this + 24) == 1)
  {
    if (*(this + 55) < 0)
    {
      operator delete(this[4]);
    }

    *(this + 24) = 0;
  }

  if (*this == 1)
  {
    *this = 0;
  }
}

BOOL entitlements::RemoteSubscriptionQueryInfo::operator==(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  v8 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  v9 = *(v7 + 28);
  v10 = *(v6 + 28);
  if (v9 == v10 && *(v7 + 28))
  {
    v9 = *(v7 + 6);
    v10 = *(v6 + 6);
  }

  if (v9 != v10)
  {
    return 0;
  }

  v11 = *(v7 + 36);
  v12 = *(v6 + 36);
  if (v11 == v12 && *(v7 + 36))
  {
    v11 = *(v7 + 8);
    v12 = *(v6 + 8);
  }

  if (v11 != v12)
  {
    return 0;
  }

  v13 = *(v7 + 63);
  if (v13 >= 0)
  {
    v14 = *(v7 + 63);
  }

  else
  {
    v14 = v7[6];
  }

  v15 = *(v6 + 63);
  v16 = v15;
  if ((v15 & 0x80u) != 0)
  {
    v15 = v6[6];
  }

  if (v14 != v15)
  {
    return 0;
  }

  v19 = v7[5];
  v18 = v7 + 5;
  v17 = v19;
  if (v13 >= 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = v17;
  }

  v23 = v6[5];
  v22 = v6 + 5;
  v21 = v23;
  if (v16 >= 0)
  {
    v24 = v22;
  }

  else
  {
    v24 = v21;
  }

  return memcmp(v20, v24, v14) == 0;
}

void boost::optional_detail::optional_base<std::string>::assign(_BYTE *a1, const std::string *a2)
{
  v4 = *a1;
  v3 = (a1 + 8);
  if (v4 == 1)
  {

    std::string::operator=(v3, a2);
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v3, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v5 = *&a2->__r_.__value_.__l.__data_;
      v3->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&v3->__r_.__value_.__l.__data_ = v5;
    }

    *a1 = 1;
  }
}

void NEPathEventObserverProxyInterface::~NEPathEventObserverProxyInterface(NEPathEventObserverProxyInterface *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 rest::ResetPayload::ResetPayload(__n128 *a1, __n128 *a2, unsigned __int8 a3)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  a1[1].n128_u8[8] = a3;
  return result;
}

{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  a1[1].n128_u8[8] = a3;
  return result;
}

void sub_237494974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

uint64_t emergency::CallAgent::CallAgent(uint64_t result, int a2)
{
  *result = &unk_284A74620;
  *(result + 8) = a2;
  *(result + 40) = 0;
  *(result + 72) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 116) = 0;
  return result;
}

void emergency::CallAgent::~CallAgent(emergency::CallAgent *this)
{
  *this = &unk_284A74620;
  v2 = this + 80;
  std::__function::__value_func<void ()(BOOL)>::operator=[abi:ne200100](this + 16);
  std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](this + 48);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 48);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](this + 16);
}

uint64_t emergency::CallAgent::dial(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ++*(a1 + 112);
  std::function<void ()(BOOL)>::operator=((a1 + 16), a3);
  std::function<void ()(void)>::operator=(a1 + 48, a4);

  return std::function<void ()(void)>::operator=(a1 + 80, a2);
}

void *std::function<void ()(BOOL)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<void ()(BOOL)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t std::function<void ()(void)>::operator=(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v7, a2);
  if (v7 != a1)
  {
    v3 = v8;
    v4 = *(a1 + 24);
    if (v8 == v7)
    {
      if (v4 == a1)
      {
        memset(v9, 0, 24);
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v7);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, a1);
        (*(v9[0] + 32))(v9);
      }

      else
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v4 == a1)
    {
      (*(*v4 + 24))(*(a1 + 24), v7);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v8;
      v8 = v7;
    }

    else
    {
      v8 = *(a1 + 24);
      *(a1 + 24) = v3;
    }
  }

  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v7);
  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_237494E28(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t emergency::CallAgent::clearCallbacks(emergency::CallAgent *this)
{
  *(this + 116) = 0;
  std::__function::__value_func<void ()(BOOL)>::operator=[abi:ne200100](this + 16);
  std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](this + 48);

  return std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](this + 80);
}

emergency::CallAgent *emergency::CallAgent::reportFailed(emergency::CallAgent *this, char a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (*(this + 5))
  {
    v3 = this;
    memset(v5, 0, sizeof(v5));
    std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](v5, this + 16);
    emergency::CallAgent::clearCallbacks(v3);
    std::function<void ()(BOOL)>::operator()(v5, a2);
    this = std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v5);
  }

  v4 = *MEMORY[0x277D85DE8];
  return this;
}

emergency::CallAgent *emergency::CallAgent::reportContextGone(emergency::CallAgent *this)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(this + 9))
  {
    v1 = this;
    v3 = 0u;
    v4 = 0u;
    std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](&v3, this + 48);
    emergency::CallAgent::clearCallbacks(v1);
    if (!*(&v4 + 1))
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(**(&v4 + 1) + 48))(*(&v4 + 1));
    this = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v3);
  }

  v2 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t emergency::CallAgent::readyToDial(emergency::CallAgent *this)
{
  *(this + 116) = 1;
  result = *(this + 13);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(BOOL)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

void *std::__function::__value_func<void ()(BOOL)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v6, 0, 24);
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2374953BC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void sub_237495BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v10 - 64));
  _Unwind_Resume(a1);
}

void sub_237496234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v10 - 48));
  _Unwind_Resume(a1);
}

void sub_23749670C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, xpc_object_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void IMSClientFactory::IMSClientFactory(IMSClientFactory *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_284A74860;
}

{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_284A74860;
}

void IMSClientFactory::~IMSClientFactory(IMSClientFactory *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2383CBEF0);
}

void std::__shared_ptr_emplace<IMSClientFactory::create(void)::make_shared_enabler,std::allocator<IMSClientFactory::create(void)::make_shared_enabler>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A748C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CBEF0);
}

uint64_t IMSClientFactory::create(void)::make_shared_enabler::~make_shared_enabler(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void IMSClientFactory::create(void)::make_shared_enabler::~make_shared_enabler(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2383CBEF0);
}

const char *DataUtils::getDataContextName(int a1, const char *a2, unsigned int a3)
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = "unknown";
  }

  v6 = strlen(v5);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  __dst = 0;
  v25 = 0;
  v26 = 0;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v26) = v6;
  if (v6)
  {
    memcpy(&__dst, v5, v6);
  }

  *(&__dst + v7) = 0;
  v8 = HIBYTE(v26);
  if (v26 >= 0)
  {
    v9 = &__dst + HIBYTE(v26);
  }

  else
  {
    v9 = &__dst[v25];
  }

  if (v26 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if (p_dst != v9)
  {
    do
    {
      *p_dst = __toupper(*p_dst);
      ++p_dst;
    }

    while (p_dst != v9);
    v8 = HIBYTE(v26);
  }

  if (a1 == 2)
  {
    if (v8 < 0)
    {
      if (v25 != 3)
      {
        if (v25 != 4)
        {
          goto LABEL_54;
        }

        v11 = __dst;
        if (*__dst == 1129335117)
        {
          goto LABEL_98;
        }

        if (*__dst != 1212368212)
        {
LABEL_36:
          if (*v11 == 1262702413)
          {
            if (a3 < 0xA)
            {
              v13 = off_278A32CC8;
LABEL_67:
              v16 = v13[a3];
              goto LABEL_69;
            }

            v16 = "DATA.MOCKContext.2:N:";
            goto LABEL_69;
          }

LABEL_54:
          if (a3 >= 0xA)
          {
            v16 = "DATA.UNKContext.2:N:";
            goto LABEL_69;
          }

          v13 = off_278A32D18;
          goto LABEL_67;
        }

        goto LABEL_102;
      }

      if (*__dst != 16969 || __dst[2] != 73)
      {
        if (*__dst != 19793 || __dst[2] != 73)
        {
          goto LABEL_54;
        }

        goto LABEL_81;
      }
    }

    else
    {
      if (v8 != 3)
      {
        if (v8 != 4)
        {
          goto LABEL_54;
        }

        if (__dst != 1212368212)
        {
          if (__dst != 1129335117)
          {
            v11 = &__dst;
            goto LABEL_36;
          }

LABEL_98:
          if (a3 < 0xA)
          {
            v13 = off_278A32C28;
            goto LABEL_67;
          }

          v16 = "DATA.MipcContext.2:N:";
          goto LABEL_69;
        }

LABEL_102:
        if (a3 < 0xA)
        {
          v13 = off_278A32C78;
          goto LABEL_67;
        }

        v16 = "DATA.TechContext.2:N:";
        goto LABEL_69;
      }

      if (__dst != 16969 || BYTE2(__dst) != 73)
      {
        if (__dst != 19793 || BYTE2(__dst) != 73)
        {
          goto LABEL_54;
        }

LABEL_81:
        if (a3 < 0xA)
        {
          v13 = off_278A32BD8;
          goto LABEL_67;
        }

        v16 = "DATA.QMIContext.2:N:";
        goto LABEL_69;
      }
    }

    if (a3 < 0xA)
    {
      v13 = off_278A32B88;
      goto LABEL_67;
    }

    v16 = "DATA.IBIContext.2:N:";
    goto LABEL_69;
  }

  if ((v8 & 0x80) == 0)
  {
    if (v8 != 3)
    {
      if (v8 == 4)
      {
        if (__dst != 1212368212)
        {
          if (__dst != 1129335117)
          {
            v12 = &__dst;
            goto LABEL_43;
          }

LABEL_100:
          if (a3 < 0xA)
          {
            v13 = off_278A32E08;
            goto LABEL_67;
          }

          v16 = "DATA.MipcContext.1:N:";
          goto LABEL_69;
        }

        goto LABEL_104;
      }

LABEL_65:
      if (a3 <= 9)
      {
        v13 = off_278A32EF8;
        goto LABEL_67;
      }

      v16 = "DATA.UNKContext.1:N:";
      goto LABEL_69;
    }

    if (__dst != 16969 || BYTE2(__dst) != 73)
    {
      if (__dst != 19793 || BYTE2(__dst) != 73)
      {
        goto LABEL_65;
      }

LABEL_92:
      if (a3 < 0xA)
      {
        v13 = off_278A32DB8;
        goto LABEL_67;
      }

      v16 = "DATA.QMIContext.1:N:";
      goto LABEL_69;
    }

    goto LABEL_96;
  }

  if (v25 == 3)
  {
    if (*__dst != 16969 || __dst[2] != 73)
    {
      if (*__dst != 19793 || __dst[2] != 73)
      {
        goto LABEL_65;
      }

      goto LABEL_92;
    }

LABEL_96:
    if (a3 < 0xA)
    {
      v13 = off_278A32D68;
      goto LABEL_67;
    }

    v16 = "DATA.IBIContext.1:N:";
    goto LABEL_69;
  }

  if (v25 != 4)
  {
    goto LABEL_65;
  }

  v12 = __dst;
  if (*__dst == 1129335117)
  {
    goto LABEL_100;
  }

  if (*__dst == 1212368212)
  {
LABEL_104:
    if (a3 < 0xA)
    {
      v13 = off_278A32E58;
      goto LABEL_67;
    }

    v16 = "DATA.TechContext.1:N:";
    goto LABEL_69;
  }

LABEL_43:
  if (*v12 != 1262702413)
  {
    goto LABEL_65;
  }

  if (a3 < 0xA)
  {
    v13 = off_278A32EA8;
    goto LABEL_67;
  }

  v16 = "DATA.MOCKContext.1:N:";
LABEL_69:
  if (v8 < 0)
  {
    operator delete(__dst);
  }

  return v16;
}

void sub_237496F54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DataUtils::loadPlistFromBundleResource(os_log_t *this@<X0>, const ctu::OsLogLogger *a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  MainBundle = CFBundleGetMainBundle();
  if (MainBundle)
  {
    v8 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a2, 0x8000100u);
    v14 = v8;
    if (v8)
    {
      v9 = CFBundleCopyResourceURL(MainBundle, v8, @"plist", &stru_284A760D0);
      v13 = v9;
      if (v9)
      {
        DataUtils::loadPlistFromFile(v9, &v12);
        if (&v12 != a3)
        {
          *buf = *a3;
          *a3 = v12;
          v12 = 0;
          ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(buf);
        }

        ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&v12);
      }

      else
      {
        v11 = *this;
        if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2373EA000, v11, OS_LOG_TYPE_DEFAULT, "#N Unable to create default tech plist file URL", buf, 2u);
        }
      }

      ctu::SharedRef<__CFURL const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFURL const>::~SharedRef(&v13);
    }

    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v14);
  }

  else
  {
    v10 = *this;
    if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2373EA000, v10, OS_LOG_TYPE_DEFAULT, "#N Unable to locate the bundle", buf, 2u);
    }
  }
}

void sub_2374970C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  ctu::SharedRef<__CFURL const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFURL const>::~SharedRef(va);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(va1);
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(v3);
  _Unwind_Resume(a1);
}

void DataUtils::loadPlistFromFile(CFURLRef fileURL@<X0>, void *a2@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  if (fileURL)
  {
    stream = 0;
    v5 = *MEMORY[0x277CBECE8];
    v6 = CFReadStreamCreateWithFile(*MEMORY[0x277CBECE8], fileURL);
    stream = v6;
    if (v6)
    {
      CFReadStreamOpen(v6);
      error = 0;
      v7 = CFPropertyListCreateWithStream(v5, stream, 0, 1uLL, 0, &error);
      *a2 = v7;
      *buf = 0;
      ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(buf);
      CFReadStreamClose(stream);
      if (!error)
      {
        ctu::SharedRef<__CFReadStream,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFReadStream>::~SharedRef(&stream);
        goto LABEL_13;
      }

      CFErrorGetDomain(error);
      memset(buf, 0, sizeof(buf));
      ctu::cf::assign();
      *__p = *buf;
      v15 = *&buf[16];
      v8 = sCTOsLogDefault;
      v9 = error;
      if (os_log_type_enabled(sCTOsLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        Code = CFErrorGetCode(v9);
        v11 = __p;
        if (v15 < 0)
        {
          v11 = __p[0];
        }

        *buf = 136316162;
        *&buf[4] = "DATA";
        *&buf[12] = 2080;
        *&buf[14] = "loadPlistFromFile";
        *&buf[22] = 2112;
        v19 = fileURL;
        v20 = 2048;
        v21 = Code;
        v22 = 2080;
        v23 = v11;
        _os_log_impl(&dword_2373EA000, v8, OS_LOG_TYPE_DEFAULT, "#I %s: %s: Failed to create %@ PropertyList: %ld: %s", buf, 0x34u);
        v9 = error;
      }

      CFRelease(v9);
      *a2 = 0;
      *buf = v7;
      ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(buf);
      if (SHIBYTE(v15) < 0)
      {
        operator delete(__p[0]);
      }
    }

    ctu::SharedRef<__CFReadStream,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFReadStream>::~SharedRef(&stream);
    v12 = sCTOsLogDefault;
    if (os_log_type_enabled(sCTOsLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "DATA";
      *&buf[12] = 2080;
      *&buf[14] = "loadPlistFromFile";
      _os_log_impl(&dword_2373EA000, v12, OS_LOG_TYPE_DEFAULT, "#I %s: %s: Failed to reading default tech plist file", buf, 0x16u);
    }
  }

LABEL_13:
  v13 = *MEMORY[0x277D85DE8];
}

void sub_237497354(_Unwind_Exception *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (a7 < 0)
  {
    operator delete(a2);
  }

  ctu::SharedRef<__CFReadStream,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFReadStream>::~SharedRef(va);
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(v9);
  _Unwind_Resume(a1);
}

BOOL DataUtils::deepMergeDictionary(DataUtils *this, __CFDictionary *a2, const __CFDictionary *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v8 = 1;
    goto LABEL_38;
  }

  if (!this)
  {
    v26 = sCTOsLogDefault;
    v8 = 0;
    if (os_log_type_enabled(sCTOsLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *value = 136315394;
      *&value[4] = "DATA";
      v35 = 2080;
      v36 = "deepMergeDictionary";
      _os_log_impl(&dword_2373EA000, v26, OS_LOG_TYPE_DEFAULT, "#I %s: %s: deepMerge Faled, cannot merge when source is NULL", value, 0x16u);
      v8 = 0;
    }

    goto LABEL_38;
  }

  Count = CFDictionaryGetCount(a2);
  v6 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
  v7 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
  CFDictionaryGetKeysAndValues(a2, v6, v7);
  if (Count < 1)
  {
    v8 = 1;
    goto LABEL_37;
  }

  v8 = 0;
  v9 = 0;
  allocator = *MEMORY[0x277CBECE8];
  while (1)
  {
    v10 = v7[v9];
    v11 = CFDictionaryGetValue(this, v6[v9]);
    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = CFGetTypeID(v10);
    v13 = v12 == CFGetTypeID(v11);
    v14 = CFGetTypeID(v10);
    if (!v13)
    {
      break;
    }

    if (v14 != CFDictionaryGetTypeID())
    {
      v24 = CFGetTypeID(v10);
      if (v24 == CFArrayGetTypeID())
      {
        *value = 0;
        *value = CFArrayCreateMutableCopy(0, 0, v11);
        if ((DataUtils::deepMergeArray(*value, v10, v25) & 1) == 0)
        {
          v29 = value;
          goto LABEL_36;
        }

        CFDictionarySetValue(this, v6[v9], *value);
        v23 = value;
LABEL_23:
        ctu::SharedRef<__CFArray,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray>::~SharedRef(v23);
        goto LABEL_24;
      }

LABEL_10:
      CFDictionarySetValue(this, v6[v9], v10);
      goto LABEL_24;
    }

    *value = 0;
    *value = CFDictionaryCreateMutableCopy(0, 0, v11);
    if ((DataUtils::deepMergeDictionary(*value, v10, v15) & 1) == 0)
    {
      ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(value);
      goto LABEL_37;
    }

    CFDictionarySetValue(this, v6[v9], *value);
    ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(value);
LABEL_24:
    v8 = ++v9 >= Count;
    if (Count == v9)
    {
      goto LABEL_37;
    }
  }

  if (v14 == CFArrayGetTypeID())
  {
    v16 = CFGetTypeID(v11);
    if (v16 == CFStringGetTypeID() || (v17 = CFGetTypeID(v11), v17 == CFNumberGetTypeID()))
    {
      v18 = sCTOsLogDefault;
      if (os_log_type_enabled(sCTOsLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v6[v9];
        *value = 136315650;
        *&value[4] = "DATA";
        v35 = 2080;
        v36 = "deepMergeDictionary";
        v37 = 2112;
        v38 = v19;
        _os_log_impl(&dword_2373EA000, v18, OS_LOG_TYPE_DEFAULT, "#I %s: %s: deepMerge: replacing scalar value with array of values for key %@", value, 0x20u);
      }

      v33 = 0;
      Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x277CBF128]);
      if (Mutable)
      {
        v22 = v33;
        v33 = Mutable;
        *value = v22;
        ctu::SharedRef<__CFArray,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray>::~SharedRef(value);
      }

      if ((DataUtils::deepMergeArray(v33, v10, v21) & 1) == 0)
      {
        v29 = &v33;
LABEL_36:
        ctu::SharedRef<__CFArray,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray>::~SharedRef(v29);
        goto LABEL_37;
      }

      CFDictionarySetValue(this, v6[v9], v33);
      v23 = &v33;
      goto LABEL_23;
    }
  }

  v27 = sCTOsLogDefault;
  if (os_log_type_enabled(sCTOsLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v28 = v6[v9];
    *value = 136316162;
    *&value[4] = "DATA";
    v35 = 2080;
    v36 = "deepMergeDictionary";
    v37 = 2112;
    v38 = v10;
    v39 = 2112;
    v40 = v11;
    v41 = 2112;
    v42 = v28;
    _os_log_impl(&dword_2373EA000, v27, OS_LOG_TYPE_DEFAULT, "#I %s: %s: deepMerge Faled, cannot merge %@ -> %@ for key %@", value, 0x34u);
  }

LABEL_37:
  free(v6);
  free(v7);
LABEL_38:
  v30 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_237497828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ctu::SharedRef<__CFArray,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray>::~SharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t DataUtils::deepMergeArray(DataUtils *this, __CFArray *a2, const __CFArray *a3)
{
  result = 0;
  v29 = *MEMORY[0x277D85DE8];
  if (!this || !a2)
  {
    goto LABEL_23;
  }

  Count = CFArrayGetCount(this);
  v7 = CFArrayGetCount(a2);
  if (v7 < 1)
  {
LABEL_17:
    result = 1;
    goto LABEL_23;
  }

  v8 = v7;
  v9 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v9);
    if (v9 >= Count)
    {
      CFArrayAppendValue(this, ValueAtIndex);
      goto LABEL_11;
    }

    v11 = CFArrayGetValueAtIndex(this, v9);
    v12 = CFGetTypeID(ValueAtIndex);
    if (v12 != CFGetTypeID(v11))
    {
      break;
    }

    v13 = CFGetTypeID(ValueAtIndex);
    if (v13 == CFDictionaryGetTypeID())
    {
      *value = 0;
      *value = CFDictionaryCreateMutableCopy(0, 0, v11);
      if ((DataUtils::deepMergeDictionary(*value, ValueAtIndex, v14) & 1) == 0)
      {
        ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(value);
        goto LABEL_22;
      }

      CFArraySetValueAtIndex(this, v9, *value);
      ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(value);
    }

    else
    {
      v15 = CFGetTypeID(ValueAtIndex);
      if (v15 == CFArrayGetTypeID())
      {
        *value = 0;
        *value = CFArrayCreateMutableCopy(0, 0, v11);
        if ((DataUtils::deepMergeArray(*value, ValueAtIndex, v16) & 1) == 0)
        {
          ctu::SharedRef<__CFArray,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray>::~SharedRef(value);
          goto LABEL_22;
        }

        CFArraySetValueAtIndex(this, v9, *value);
        ctu::SharedRef<__CFArray,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray>::~SharedRef(value);
      }

      else
      {
        CFArraySetValueAtIndex(this, v9, ValueAtIndex);
      }
    }

LABEL_11:
    if (v8 == ++v9)
    {
      goto LABEL_17;
    }
  }

  v17 = sCTOsLogDefault;
  v18 = os_log_type_enabled(sCTOsLogDefault, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (!v18)
  {
    goto LABEL_23;
  }

  *value = 136316162;
  *&value[4] = "DATA";
  v21 = 2080;
  v22 = "deepMergeArray";
  v23 = 2112;
  v24 = ValueAtIndex;
  v25 = 2112;
  v26 = v11;
  v27 = 2048;
  v28 = v9;
  _os_log_impl(&dword_2373EA000, v17, OS_LOG_TYPE_DEFAULT, "#I %s: %s: deepMerge Faled, cannot merge %@ -> %@ at index %ld", value, 0x34u);
LABEL_22:
  result = 0;
LABEL_23:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DataUtils::replaceStringHolder(CFMutableStringRef *a1, const __CFString *a2, uint64_t a3)
{
  result = 0;
  if (a2 && *a1)
  {
    v6 = CFStringFind(*a1, a2, 1uLL);
    if (v6.location != -1)
    {
      replacement = 0;
      (*(a3 + 16))(&replacement, a3);
      if (replacement)
      {
        CFStringReplace(*a1, v6, replacement);
        ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&replacement);
        return 1;
      }

      ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&replacement);
    }

    return 0;
  }

  return result;
}

void sub_237497BB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(va);
  _Unwind_Resume(a1);
}

__CFString *DataUtils::getMatchingEAPMethod(const __CFString *this, const __CFString *a2)
{
  v3 = @"EAP-SIM";
  if (CFStringCompare(this, @"EAP-SIM", 1uLL))
  {
    v3 = @"EAP-AKA";
    if (CFStringCompare(this, @"EAP-AKA", 1uLL))
    {
      v3 = @"EAP-MSCHAPv2";
      if (CFStringCompare(this, @"EAP-MSCHAPv2", 1uLL))
      {
        v3 = @"EAP-GTC";
        if (CFStringCompare(this, @"EAP-GTC", 1uLL))
        {
          v3 = @"EAP-TLS";
          if (CFStringCompare(this, @"EAP-TLS", 1uLL))
          {
            v3 = @"Any";
            if (CFStringCompare(this, @"Any", 1uLL))
            {
              v3 = @"None";
              if (CFStringCompare(this, @"None", 1uLL))
              {
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v3;
}

uint64_t DataUtils::isFaceTimeAllowedOverCellByUser(void *a1, int a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = a1 + 1;
  v3 = *a1;
  if (*a1 != a1 + 1)
  {
    do
    {
      memset(&v15, 0, sizeof(v15));
      if (*(v3 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v15, v3[4], v3[5]);
      }

      else
      {
        v15 = *(v3 + 4);
      }

      v4 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
      if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v5 = (&v15 + HIBYTE(v15.__r_.__value_.__r.__words[2]));
      }

      else
      {
        v5 = (v15.__r_.__value_.__r.__words[0] + v15.__r_.__value_.__l.__size_);
      }

      if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = &v15;
      }

      else
      {
        v6 = v15.__r_.__value_.__r.__words[0];
      }

      if (v6 != v5)
      {
        do
        {
          v6->__r_.__value_.__s.__data_[0] = __tolower(v6->__r_.__value_.__s.__data_[0]);
          v6 = (v6 + 1);
        }

        while (v6 != v5);
        v4 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
      }

      if ((v4 & 0x80) != 0)
      {
        if (v15.__r_.__value_.__l.__size_ == 18)
        {
          v11 = *v15.__r_.__value_.__l.__data_ != 0x6C7070612E6D6F63 || *(v15.__r_.__value_.__r.__words[0] + 8) != 0x6974656361662E65 || *(v15.__r_.__value_.__r.__words[0] + 16) != 25965;
          operator delete(v15.__r_.__value_.__l.__data_);
          if (!v11)
          {
            return v3 == v2;
          }
        }

        else
        {
          operator delete(v15.__r_.__value_.__l.__data_);
        }
      }

      else if (v4 == 18)
      {
        v7 = v15.__r_.__value_.__r.__words[0] == 0x6C7070612E6D6F63 && v15.__r_.__value_.__l.__size_ == 0x6974656361662E65;
        if (v7 && LOWORD(v15.__r_.__value_.__r.__words[2]) == 25965)
        {
          return v3 == v2;
        }
      }

      v12 = v3[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v3[2];
          v7 = *v13 == v3;
          v3 = v13;
        }

        while (!v7);
      }

      v3 = v13;
    }

    while (v13 != v2);
    v3 = v2;
  }

  return v3 == v2;
}

void sub_237497E40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataUtils::getPcscfAddressOverrideKey(int a1)
{
  v1 = &kCFSettingsModelKeyPCSCFAddress2;
  if (a1 != 2)
  {
    v1 = &kCFSettingsModelKeyPCSCFAddress;
  }

  return *v1;
}

uint64_t DataUtils::otherSimSlot(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return dword_2374BF130[a1];
  }
}

void DataUtils::tokenizeWithBasicDelimiters()
{
  memset(v0, 0, sizeof(v0));
  std::regex_traits<char>::regex_traits(v0);
  memset(&v0[24], 0, 40);
  std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>();
}

void anonymous namespace::tokenize()
{
  MEMORY[0x28223BE20]();
  v6 = 0u;
  memset(v11, 0, 32);
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = *(v0 + 23);
  if ((v2 & 0x80u) == 0)
  {
    v3 = v0;
  }

  else
  {
    v3 = *v0;
  }

  if ((v2 & 0x80u) != 0)
  {
    v2 = *(v0 + 8);
  }

  v4 = v3 + v2;
  v5[7] = 0;
  *&v6 = 0;
  BYTE8(v6) = 0;
  v7 = 0uLL;
  LOBYTE(v8) = 0;
  *&v11[32] = 0;
  *&v9 = 0;
  memset(&v5[1], 0, 41);
  v18 = 0uLL;
  v17 = 0uLL;
  v16 = 0uLL;
  v15 = 0uLL;
  *v14 = 0uLL;
  v13 = 0uLL;
  *__p = 0uLL;
  std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v1, v3, (v3 + v2), __p, 0);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&v5[1], v3, v4, __p, 0);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v10 = 0uLL;
  v11[0] = 0;
  memset(&v11[8], 0, 32);
  operator new();
}

void sub_237498914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::~regex_token_iterator((v65 - 256));
  std::pair<std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>,std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>>::~pair(&STACK[0xAB0]);
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::~regex_token_iterator(&STACK[0x770]);
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::~regex_token_iterator(&STACK[0x840]);
  *(v63 + 8) = v64;
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::~regex_token_iterator(&STACK[0x5C0]);
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::~regex_token_iterator(&STACK[0x690]);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x760]);
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::~regex_token_iterator(&STACK[0x280]);
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::~regex_token_iterator(&STACK[0x350]);
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::~regex_token_iterator(&a11);
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::~regex_token_iterator(&a37);
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::~regex_token_iterator(&a63);
  _Unwind_Resume(a1);
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this);
}

void DataUtils::tokenize(uint64_t a1, uint64_t *a2)
{
  memset(v5, 0, sizeof(v5));
  std::regex_traits<char>::regex_traits(v5);
  memset(&v5[24], 0, 40);
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
    v4 = a2[1];
  }

  std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>();
}

const __CFString *DataUtils::normalizeAppCategory@<X0>(const __CFString *this@<X0>, void *a2@<X8>)
{
  if (this)
  {
    this = CFStringGetLength(this);
    if (this)
    {
      memset(buffer, 0, sizeof(buffer));
      std::vector<unsigned short>::__vallocate[abi:ne200100](buffer, this);
    }
  }

  *a2 = 0;
  return this;
}

void sub_237498D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *DataUtils::defaultIPFamily(DataUtils *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_6, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_6))
  {
    qword_280CE8570 = &unk_284A73EA0;
    dword_280CE8578 = 1;
    byte_280CE857C = 1;
    __cxa_atexit(CIPFamily::~CIPFamily, &qword_280CE8570, &dword_2373EA000);
    __cxa_guard_release(&_MergedGlobals_6);
  }

  return &qword_280CE8570;
}

uint64_t DataUtils::getIntIPProtocol(ctu::cf::map_adapter *a1, const char *a2)
{
  ctu::cf::MakeCFString::MakeCFString(&v5, a2);
  Int = ctu::cf::map_adapter::getInt(a1, v5);
  MEMORY[0x2383CB860](&v5);
  return Int;
}

BOOL DataUtils::needsThirdPartyProtection(_BOOL8 result, uint64_t *a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = *(a2 + 23);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = a2;
    if (v4 != 7)
    {
      goto LABEL_11;
    }

LABEL_7:
    v6 = *v5;
    v7 = *(v5 + 3);
    if (v6 == 1601201264 && v7 == 812673375)
    {
      return 0;
    }

    goto LABEL_11;
  }

  if (a2[1] == 7)
  {
    v5 = *a2;
    goto LABEL_7;
  }

LABEL_11:
  if (v4 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v9 = *a2;
    v10 = a2[1];
  }

  if (ctu::starts_with())
  {
    if (v3)
    {
      return 0;
    }

    return (v3 & 0xFF0000000) == 0 && (v3 & 0xFFFFFFF00FFDFFFELL) == 0;
  }

  v11 = *(a2 + 23);
  if (v11 < 0)
  {
    v12 = *a2;
  }

  if (v11 >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    v13 = a2[1];
  }

  v14 = ctu::starts_with();
  result = 0;
  if (!v3 && (v14 & 1) != 0)
  {
    return (v3 & 0xFF0000000) == 0 && (v3 & 0xFFFFFFF00FFDFFFELL) == 0;
  }

  return result;
}

const void **ctu::SharedRef<__CFReadStream,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFReadStream>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::SharedRef<__CFArray,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::~regex_token_iterator(void *a1)
{
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(uint64_t a1, std::sub_match<const char *> *a2, std::sub_match<const char *> *a3, std::vector<std::csub_match> *this, unsigned int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  v10 = *(a1 + 28);
  this[1].__begin_ = a3;
  v11 = &this[1];
  this[1].__end_ = a3;
  LOBYTE(this[1].__end_cap_.__value_) = 0;
  std::vector<std::sub_match<char const*>>::assign(this, (v10 + 1), &this[1]);
  this[2].__begin_ = a2;
  this[2].__end_ = a2;
  LOBYTE(this[2].__end_cap_.__value_) = 0;
  *&this[3].__begin_ = v11->std::pair<const char *, const char *>;
  LOBYTE(this[3].__end_cap_.__value_) = this[1].__end_cap_.__value_;
  if ((v9 & 0x800) == 0)
  {
    this[4].__end_ = a2;
  }

  LOBYTE(this[4].__begin_) = 1;
  if (!std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, this, v9, (v9 & 0x800) == 0))
  {
    if (a2 == a3 || (v9 & 0x40) != 0)
    {
      goto LABEL_18;
    }

    v18 = &a2->first + 1;
    if (v18 != a3)
    {
      do
      {
        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
        v19 = std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v18, a3, this, v9 | 0x80, 0);
        begin = this->__begin_;
        end = this->__end_;
        if (v19)
        {
          goto LABEL_8;
        }

        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3), v11);
      }

      while (++v18 != a3);
    }

    std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
    if (!std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v18, a3, this, v9 | 0x80, 0))
    {
LABEL_18:
      result = 0;
      this->__end_ = this->__begin_;
      return result;
    }
  }

  begin = this->__begin_;
  end = this->__end_;
LABEL_8:
  if (end == begin)
  {
    v14 = v11;
  }

  else
  {
    v14 = begin;
  }

  first = v14->first;
  this[2].__end_ = v14->first;
  LOBYTE(this[2].__end_cap_.__value_) = this[2].__begin_ != first;
  second = v14->second;
  this[3].__begin_ = second;
  LOBYTE(this[3].__end_cap_.__value_) = second != this[3].__end_;
  return 1;
}

void *std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(void *result, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v5 = result;
  v6 = a4[6];
  v7 = a4[1] - *a4;
  v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
  v10 = *result;
  v9 = result[1];
  v11 = v9 - *result;
  v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
  v13 = v8 - v12;
  if (v8 <= v12)
  {
    if (v8 < v12)
    {
      v9 = v10 + v7;
      result[1] = v10 + v7;
    }
  }

  else
  {
    v14 = result[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - v9) >> 3) < v13)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        v15 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v10) >> 3);
        v16 = 2 * v15;
        if (2 * v15 <= v8)
        {
          v16 = v8;
        }

        if (v15 >= 0x555555555555555)
        {
          v17 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v17 = v16;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(v17);
      }

      std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
    }

    v18 = v9 + 24 * v13;
    v19 = 24 * v8 - 8 * (v11 >> 3);
    do
    {
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      v9 += 24;
      v19 -= 24;
    }

    while (v19);
    result[1] = v18;
    v9 = v18;
  }

  v20 = *result;
  if (v9 == *result)
  {
    v23 = a2 - v6;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = a2 - v6;
    v25 = *a4;
    v24 = a4[1];
    do
    {
      v26 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v25) >> 3);
      v27 = (v25 + v21);
      if (v26 <= v22)
      {
        v28 = a4 + 3;
      }

      else
      {
        v28 = v27;
      }

      *(v20 + v21) = v23 + *v28;
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v22)
      {
        v29 = a4 + 3;
      }

      else
      {
        v29 = (*a4 + v21);
      }

      *(*v5 + v21 + 8) = v23 + v29[1];
      v25 = *a4;
      v24 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v24 - *a4) >> 3) <= v22)
      {
        v30 = a4 + 3;
      }

      else
      {
        v30 = (*a4 + v21);
      }

      v31 = *(v30 + 16);
      v20 = *v5;
      v32 = v5[1];
      result = (*v5 + v21);
      *(result + 16) = v31;
      ++v22;
      v21 += 24;
    }

    while (v22 < 0xAAAAAAAAAAAAAAABLL * ((v32 - v20) >> 3));
  }

  v5[3] = a3;
  v5[4] = a3;
  *(v5 + 40) = 0;
  v33 = v23 + a4[6];
  v5[6] = v33;
  v5[7] = v23 + a4[7];
  *(v5 + 64) = *(a4 + 64);
  v5[9] = v23 + a4[9];
  v5[10] = v23 + a4[10];
  *(v5 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    v5[13] = v33;
  }

  *(v5 + 96) = *(a4 + 96);
  return result;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, uint64_t a5, char a6)
{
  v7 = a5;
  if ((*(a1 + 24) & 0x1F0) == 0)
  {

    return std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, a4, a5, a6);
  }

  if (!*(a1 + 28))
  {
    memset(v125, 0, 48);
    v63 = *(a1 + 40);
    if (!v63)
    {
LABEL_186:
      std::deque<std::__state<char>>::~deque[abi:ne200100](v125);
      return v63;
    }

    LODWORD(v127[0]) = 0;
    *(v127 + 8) = 0uLL;
    *(&v127[1] + 8) = 0uLL;
    *(&v127[2] + 8) = 0uLL;
    *(&v127[3] + 8) = 0uLL;
    *(&v127[4] + 8) = 0uLL;
    *(&v127[5] + 5) = 0;
    std::deque<std::__state<char>>::push_back(v125, v127);
    if (*(&v127[3] + 1))
    {
      operator delete(*(&v127[3] + 1));
    }

    if (*&v127[2])
    {
      operator delete(*&v127[2]);
    }

    v119 = a4;
    v64 = v125[0].i64[1];
    v65 = v125[2].i64[1] + v125[2].i64[0] - 1;
    v66 = v65 / 0x2A;
    v67 = *(v125[0].i64[1] + 8 * (v65 / 0x2A));
    v68 = 3 * (v65 % 0x2A);
    v69 = v67 + 32 * v68;
    *v69 = 0;
    *(v69 + 8) = a2;
    *(*(v64 + 8 * v66) + 32 * v68 + 16) = a2;
    *(*(v64 + 8 * v66) + 32 * v68 + 24) = a3;
    std::vector<std::pair<unsigned long,char const*>>::resize((*(v64 + 8 * v66) + 32 * v68 + 56), *(a1 + 32));
    v120 = 0;
    v121 = 0;
    v70 = 0;
    v124 = a3 - a2;
    v71 = v125[2].i64[1];
    v72 = v125[0].i64[1];
    v73 = v125[2].i64[1] + v125[2].i64[0] - 1;
    v74 = v73 / 0x2A;
    v75 = 3 * (v73 % 0x2A);
    *(*(v125[0].i64[1] + 8 * v74) + 32 * v75 + 80) = v63;
    v76 = *(v72 + 8 * v74) + 32 * v75;
    *(v76 + 88) = v7;
    *(v76 + 92) = a6;
    v77 = 0xC30C30C30C30C30DLL;
    while (1)
    {
      if ((++v70 & 0xFFF) == 0 && (v70 >> 12) >= v124)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
      }

      v79 = v71 + v125[2].i64[0] - 1;
      v80 = (((v79 >> 1) * v77) >> 64) >> 4;
      v81 = *(v125[0].i64[1] + 8 * v80) + 96 * (v79 - 42 * v80);
      v83 = (v81 + 80);
      v82 = *(v81 + 80);
      if (v82)
      {
        (*(*v82 + 16))(v82, v81);
      }

      v84 = *v81;
      if (*v81 <= -995)
      {
        switch(v84)
        {
          case -1000:
            v89 = *(v81 + 16);
            v91 = (v7 & 0x1000) == 0 || v89 == a3;
            v92 = v89 != a2 || (v7 & 0x20) == 0;
            if (!v92 || !v91)
            {
              goto LABEL_181;
            }

            v93 = &v89[-*(v81 + 8)];
            v94 = v120;
            if (v120 <= v93)
            {
              v94 = v93;
            }

            if ((v121 & 1) == 0)
            {
              v94 = v93;
            }

            if (v94 == v124)
            {
              v95 = v125[0].i64[1];
              v96 = v125[1].i64[0];
              if (v125[1].i64[0] == v125[0].i64[1])
              {
                v96 = v125[0].i64[1];
              }

              else
              {
                v97 = v7;
                v98 = (((v125[2].i64[0] >> 1) * v77) >> 64) >> 4;
                v99 = v77;
                v100 = (v125[0].i64[1] + 8 * v98);
                v101 = (*v100 + 96 * (v125[2].i64[0] - 42 * v98));
                v102 = v99;
                v103 = ((((v125[2].i64[1] + v125[2].i64[0]) >> 1) * v99) >> 64) >> 4;
                v104 = *(v125[0].i64[1] + 8 * v103) + 96 * (v125[2].i64[1] + v125[2].i64[0] - 42 * v103);
                if (v101 != v104)
                {
                  do
                  {
                    std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v101);
                    v101 += 12;
                    if ((v101 - *v100) == 4032)
                    {
                      v105 = v100[1];
                      ++v100;
                      v101 = v105;
                    }
                  }

                  while (v101 != v104);
                  v95 = v125[0].i64[1];
                  v96 = v125[1].i64[0];
                }

                v7 = v97;
                v77 = v102;
              }

              v125[2].i64[1] = 0;
              v108 = (v96 - v95) >> 3;
              if (v108 >= 3)
              {
                do
                {
                  operator delete(*v95);
                  v95 = (v125[0].i64[1] + 8);
                  v125[0].i64[1] = v95;
                  v108 = (v125[1].i64[0] - v95) >> 3;
                }

                while (v108 > 2);
              }

              if (v108 == 1)
              {
                v109 = 21;
LABEL_172:
                v125[2].i64[0] = v109;
              }

              else if (v108 == 2)
              {
                v109 = 42;
                goto LABEL_172;
              }

              v121 = 1;
              v120 = a3 - a2;
              break;
            }

            v120 = v94;
            std::deque<std::__state<char>>::pop_back(v125);
            v121 = 1;
            break;
          case -999:
            break;
          case -995:
            v85 = v125[2].u64[0];
            v86 = v125[0].i64[1];
            v87 = v125[1].i64[0];
            if (!v125[2].i64[0])
            {
              v88 = 42 * ((v125[1].i64[0] - v125[0].i64[1]) >> 3) - 1;
              if (v125[1].i64[0] == v125[0].i64[1])
              {
                v88 = 0;
              }

              if ((v88 - v125[2].i64[1]) < 0x2A)
              {
                if (v125[1].i64[0] - v125[0].i64[1] < (v125[1].i64[1] - v125[0].i64[0]))
                {
                  if (v125[0].i64[1] != v125[0].i64[0])
                  {
                    operator new();
                  }

                  operator new();
                }

                if (v125[1].i64[1] == v125[0].i64[0])
                {
                  v110 = 1;
                }

                else
                {
                  v110 = (v125[1].i64[1] - v125[0].i64[0]) >> 2;
                }

                *&v127[2] = v125;
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v110);
              }

              v125[2].i64[0] = 42;
              *&v127[0] = *(v125[1].i64[0] - 8);
              v125[1].i64[0] -= 8;
              std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(v125, v127);
              v85 = v125[2].u64[0];
              v86 = v125[0].i64[1];
              v87 = v125[1].i64[0];
            }

            v111 = (((v85 >> 1) * v77) >> 64) >> 4;
            v112 = (v86 + 8 * v111);
            v113 = *v112 + 96 * (v85 - 42 * v111);
            if (v87 == v86)
            {
              v114 = 0;
            }

            else
            {
              v114 = v113;
            }

            if (v114 == *v112)
            {
              v114 = *(v112 - 1) + 4032;
            }

            v115 = *(v81 + 16);
            *(v114 - 96) = *v81;
            *(v114 - 80) = v115;
            *(v114 - 56) = 0;
            *(v114 - 48) = 0;
            *(v114 - 64) = 0;
            *(v114 - 64) = *(v81 + 32);
            *(v114 - 48) = *(v81 + 48);
            *(v81 + 32) = 0;
            *(v81 + 40) = 0;
            *(v81 + 48) = 0;
            *(v114 - 40) = 0;
            *(v114 - 32) = 0;
            *(v114 - 24) = 0;
            *(v114 - 40) = *(v81 + 56);
            *(v114 - 24) = *(v81 + 72);
            *(v81 + 56) = 0;
            *(v81 + 64) = 0;
            *(v81 + 72) = 0;
            v116 = *v83;
            *(v114 - 11) = *(v81 + 85);
            *(v114 - 16) = v116;
            v125[2] = vaddq_s64(v125[2], xmmword_2374BF120);
            goto LABEL_181;
          default:
            goto LABEL_189;
        }
      }

      else
      {
        if (v84 > -993)
        {
          if (v84 == -992)
          {
            memset(v127, 0, sizeof(v127));
            v106 = *(v81 + 16);
            v127[0] = *v81;
            v127[1] = v106;
            std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v127[2], *(v81 + 32), *(v81 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v81 + 40) - *(v81 + 32)) >> 3));
            memset(&v127[3] + 8, 0, 24);
            std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(&v127[3] + 8, *(v81 + 56), *(v81 + 64), (*(v81 + 64) - *(v81 + 56)) >> 4);
            v107 = *v83;
            *(&v127[5] + 5) = *(v81 + 85);
            *&v127[5] = v107;
            (*(**(v81 + 80) + 24))(*(v81 + 80), 1, v81);
            (*(**&v127[5] + 24))(*&v127[5], 0, v127);
            std::deque<std::__state<char>>::push_back(v125, v127);
            if (*(&v127[3] + 1))
            {
              *&v127[4] = *(&v127[3] + 1);
              operator delete(*(&v127[3] + 1));
            }

            if (*&v127[2])
            {
              *(&v127[2] + 1) = *&v127[2];
              operator delete(*&v127[2]);
            }
          }

          else if (v84 != -991)
          {
LABEL_189:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
          }

          goto LABEL_182;
        }

        if (v84 != -994)
        {
          if (v84 != -993)
          {
            goto LABEL_189;
          }

LABEL_181:
          std::deque<std::__state<char>>::pop_back(v125);
        }
      }

LABEL_182:
      v71 = v125[2].i64[1];
      if (!v125[2].i64[1])
      {
        if (v121)
        {
          v117 = *v119;
          *v117 = a2;
          *(v117 + 8) = &a2[v120];
          v63 = 1;
          *(v117 + 16) = 1;
        }

        else
        {
          v63 = 0;
        }

        goto LABEL_186;
      }
    }
  }

  v12 = a5;
  v128 = 0;
  v129 = 0;
  v130 = 0;
  memset(v127, 0, sizeof(v127));
  v13 = *(a1 + 40);
  if (!v13)
  {
LABEL_94:
    v63 = 0;
    goto LABEL_95;
  }

  __x.second = a3;
  *&__x.matched = 0;
  __x.first = a3;
  v125[0].i32[0] = 0;
  *(v125 + 8) = 0uLL;
  *(&v125[1] + 8) = 0uLL;
  *(&v125[2] + 8) = 0uLL;
  *(&v125[3] + 8) = 0uLL;
  *(&v125[4] + 8) = 0uLL;
  *(v125[5].i64 + 5) = 0;
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v128, v125);
  if (v125[3].i64[1])
  {
    operator delete(v125[3].i64[1]);
  }

  if (v125[2].i64[0])
  {
    operator delete(v125[2].i64[0]);
  }

  v118 = a4;
  v14 = v129;
  v129[-6].i32[0] = 0;
  *(v14 - 11) = a2;
  *(v14 - 10) = a2;
  *(v14 - 9) = a3;
  std::vector<std::sub_match<char const*>>::resize((v14 - 8), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize(&v129[-3].u64[1], *(a1 + 32));
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v122 = a3;
  v123 = a2;
  v18 = a3 - a2;
  v19 = v129;
  v129[-1].i64[0] = v13;
  v19[-1].i32[2] = v12;
  v19[-1].i8[12] = a6;
  do
  {
    v20 = (++v17 & 0xFFF) != 0 || (v17 >> 12) < v18;
    if (!v20)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    i64 = v19[-1].i64;
    v21 = v19[-1].i64[0];
    v23 = v19 - 6;
    if (v21)
    {
      (*(*v21 + 16))(v21, v19 - 6);
    }

    v24 = v23->i32[0];
    if (v23->i32[0] > -994)
    {
      switch(v24)
      {
        case -993:
          goto LABEL_40;
        case -992:
          memset(v125, 0, sizeof(v125));
          v37 = v19[-5];
          v125[0] = *v23;
          v125[1] = v37;
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(v125[2].i64, v19[-4].i64[0], v19[-4].i64[1], 0xAAAAAAAAAAAAAAABLL * ((v19[-4].i64[1] - v19[-4].i64[0]) >> 3));
          memset(&v125[3].u64[1], 0, 24);
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(&v125[3].i64[1], v19[-3].i64[1], v19[-2].i64[0], (v19[-2].i64[0] - v19[-3].i64[1]) >> 4);
          v38 = *i64;
          *(v125[5].i64 + 5) = *(v19[-1].i64 + 5);
          v125[5].i64[0] = v38;
          (*(**i64 + 24))(*i64, 1, v19 - 6);
          (*(*v125[5].i64[0] + 24))(v125[5].i64[0], 0, v125);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v128, v125);
          if (v125[3].i64[1])
          {
            v125[4].i64[0] = v125[3].i64[1];
            operator delete(v125[3].i64[1]);
          }

          if (v125[2].i64[0])
          {
            v125[2].i64[1] = v125[2].i64[0];
            operator delete(v125[2].i64[0]);
          }

          break;
        case -991:
          break;
        default:
LABEL_188:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
      }
    }

    else
    {
      if ((v24 + 995) < 2)
      {
        goto LABEL_45;
      }

      if (v24 != -1000)
      {
        goto LABEL_188;
      }

      v25 = v19[-5].i64[0];
      if ((v12 & 0x20) != 0 && v25 == v123 || (v12 & 0x1000) != 0 && v25 != v122)
      {
LABEL_40:
        v36 = v129 - 6;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v129[-6].i64);
        v129 = v36;
        goto LABEL_45;
      }

      v26 = &v25[-v19[-6].i64[1]];
      if ((v16 & (v15 >= v26)) == 0)
      {
        v27 = v19[-5];
        v127[0] = *v23;
        v127[1] = v27;
        if (v127 != v23)
        {
          v29 = v19[-4].i64[0];
          v28 = v19[-4].i64[1];
          v30 = v28 - v29;
          v31 = *&v127[3];
          v32 = *&v127[2];
          if (*&v127[3] - *&v127[2] < v28 - v29)
          {
            if (*&v127[2])
            {
              *(&v127[2] + 1) = *&v127[2];
              operator delete(*&v127[2]);
              v31 = 0;
              memset(&v127[2], 0, 24);
            }

            v33 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 3);
            if (v33 <= 0xAAAAAAAAAAAAAAALL)
            {
              v34 = 0xAAAAAAAAAAAAAAABLL * (v31 >> 3);
              if (2 * v34 > v33)
              {
                v33 = 2 * v34;
              }

              if (v34 >= 0x555555555555555)
              {
                v35 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v35 = v33;
              }

              if (v35 <= 0xAAAAAAAAAAAAAAALL)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(v35);
              }
            }

            std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
          }

          v39 = *(&v127[2] + 1);
          if (*(&v127[2] + 1) - *&v127[2] >= v30)
          {
            while (v29 != v28)
            {
              *v32 = *v29;
              *(v32 + 16) = *(v29 + 16);
              v29 += 24;
              v32 += 24;
            }
          }

          else
          {
            v40 = (v29 + *(&v127[2] + 1) - *&v127[2]);
            if (*(&v127[2] + 1) != *&v127[2])
            {
              do
              {
                *v32 = *v29;
                *(v32 + 16) = *(v29 + 16);
                v29 += 24;
                v32 += 24;
              }

              while (v29 != v40);
            }

            if (v40 == v28)
            {
              v32 = v39;
            }

            else
            {
              v32 = v39;
              do
              {
                v41 = *v40;
                *(v39 + 16) = *(v40 + 2);
                *v39 = v41;
                v39 += 24;
                v40 = (v40 + 24);
                v32 += 24;
              }

              while (v40 != v28);
            }
          }

          *(&v127[2] + 1) = v32;
          v43 = v19[-3].i64[1];
          v42 = v19[-2].i64[0];
          v44 = v42 - v43;
          v45 = *(&v127[4] + 1);
          v46 = *(&v127[3] + 1);
          if (*(&v127[4] + 1) - *(&v127[3] + 1) < (v42 - v43))
          {
            if (*(&v127[3] + 1))
            {
              *&v127[4] = *(&v127[3] + 1);
              operator delete(*(&v127[3] + 1));
              v45 = 0;
              memset(&v127[3] + 8, 0, 24);
            }

            v47 = v44 >> 4;
            if (!((v44 >> 4) >> 60))
            {
              if (v45 >> 3 > v47)
              {
                v47 = v45 >> 3;
              }

              if (v45 >= 0x7FFFFFFFFFFFFFF0)
              {
                v48 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v48 = v47;
              }

              if (!(v48 >> 60))
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(v48);
              }
            }

            std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
          }

          v49 = *&v127[4];
          if (*&v127[4] - *(&v127[3] + 1) >= v44)
          {
            while (v43 != v42)
            {
              *v46 = *v43;
              v46[1] = *(v43 + 1);
              v43 += 16;
              v46 += 2;
            }
          }

          else
          {
            v50 = &v43[*&v127[4] - *(&v127[3] + 1)];
            if (*&v127[4] != *(&v127[3] + 1))
            {
              do
              {
                *v46 = *v43;
                v46[1] = *(v43 + 1);
                v43 += 16;
                v46 += 2;
              }

              while (v43 != v50);
            }

            if (v50 == v42)
            {
              v46 = v49;
            }

            else
            {
              v46 = v49;
              do
              {
                v51 = *v50;
                v50 += 16;
                *v49++ = v51;
                v46 += 2;
              }

              while (v50 != v42);
            }
          }

          *&v127[4] = v46;
        }

        v52 = *i64;
        *(&v127[5] + 5) = *(i64 + 5);
        *&v127[5] = v52;
        v15 = v26;
      }

      v53 = v129;
      if (v15 == v18)
      {
        v54 = v128;
        while (v53 != v54)
        {
          v53 -= 12;
          std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v53);
        }

        v129 = v54;
        v16 = 1;
        v15 = v18;
      }

      else
      {
        v55 = v129 - 6;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v129[-6].i64);
        v129 = v55;
        v16 = 1;
      }
    }

LABEL_45:
    v19 = v129;
  }

  while (v128 != v129);
  if ((v16 & 1) == 0)
  {
    goto LABEL_94;
  }

  v57 = *v118;
  *v57 = v123;
  *(v57 + 8) = &v123[v15];
  *(v57 + 16) = 1;
  if (*(&v127[2] + 1) != *&v127[2])
  {
    v58 = 0xAAAAAAAAAAAAAAABLL * ((*(&v127[2] + 1) - *&v127[2]) >> 3);
    v59 = (*&v127[2] + 16);
    v60 = 1;
    do
    {
      v61 = v57 + 24 * v60;
      *v61 = *(v59 - 1);
      v62 = *v59;
      v59 += 24;
      *(v61 + 16) = v62;
      v20 = v58 > v60++;
    }

    while (v20);
  }

  v63 = 1;
LABEL_95:
  if (*(&v127[3] + 1))
  {
    *&v127[4] = *(&v127[3] + 1);
    operator delete(*(&v127[3] + 1));
  }

  if (*&v127[2])
  {
    *(&v127[2] + 1) = *&v127[2];
    operator delete(*&v127[2]);
  }

  *&v127[0] = &v128;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v127);
  return v63;
}

void sub_23749A480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  operator delete(v38);
  if (__p)
  {
    operator delete(__p);
  }

  std::deque<std::__state<char>>::~deque[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3) < __n)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (__n <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= __n)
      {
        v8 = __n;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](this, v9);
    }

    std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
  }

  end = this->__end_;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  if (v11 >= __n)
  {
    v12 = __n;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  }

  if (v12)
  {
    v13 = __u->std::pair<const char *, const char *>;
    matched = __u->matched;
    v15 = begin;
    do
    {
      v15->std::pair<const char *, const char *> = v13;
      v15->matched = matched;
      ++v15;
      --v12;
    }

    while (v12);
  }

  if (__n <= v11)
  {
    this->__end_ = &begin[__n];
  }

  else
  {
    v16 = &end[__n - v11];
    v17 = 24 * __n - 8 * ((end - begin) >> 3);
    do
    {
      v18 = __u->std::pair<const char *, const char *>;
      *&end->matched = *&__u->matched;
      end->std::pair<const char *, const char *> = v18;
      ++end;
      v17 -= 24;
    }

    while (v17);
    this->__end_ = v16;
  }
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  __x.second = a3;
  *&__x.matched = 0;
  __x.first = a3;
  LODWORD(v36[0]) = 0;
  memset(v36 + 8, 0, 80);
  *(&v36[5] + 5) = 0;
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v38, v36);
  if (*(&v36[3] + 1))
  {
    operator delete(*(&v36[3] + 1));
  }

  if (*&v36[2])
  {
    operator delete(*&v36[2]);
  }

  v35 = a4;
  v13 = v39;
  *(v39 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 64), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v39 - 40), *(a1 + 32));
  v14 = v39;
  *(v39 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v17 = (v14 - 16);
    v16 = *(v14 - 16);
    v18 = (v14 - 96);
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 96);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          memset(v36, 0, sizeof(v36));
          v22 = *(v14 - 80);
          v36[0] = *v18;
          v36[1] = v22;
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v36[2], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          memset(&v36[3] + 8, 0, 24);
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(&v36[3] + 8, *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v23 = *v17;
          *(&v36[5] + 5) = *(v14 - 11);
          *&v36[5] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 96);
          (*(**&v36[5] + 24))(*&v36[5], 0, v36);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v38, v36);
          if (*(&v36[3] + 1))
          {
            *&v36[4] = *(&v36[3] + 1);
            operator delete(*(&v36[3] + 1));
          }

          if (*&v36[2])
          {
            *(&v36[2] + 1) = *&v36[2];
            operator delete(*&v36[2]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v39;
    ++v15;
    if (v38 == v39)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = v39 - 96;
    std::__destroy_at[abi:ne200100]<std::__state<char>,0>((v39 - 96));
    v39 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 64);
  v28 = *(v14 - 56) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *&v36[0] = &v38;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v36);
  return v24;
}

void sub_23749AA18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::__state<char>::~__state(&a11);
  a11 = v16 - 112;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void std::vector<std::__state<char>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 5);
    v9 = v8 + 1;
    if (v8 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x155555555555555)
    {
      v11 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = *(a2 + 16);
    v13 = 96 * v8;
    *v13 = *a2;
    *(v13 + 16) = v12;
    *(v13 + 32) = *(a2 + 32);
    *(v13 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(v13 + 56) = *(a2 + 56);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v14 = *(a2 + 72);
    v15 = *(a2 + 80);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(v13 + 85) = *(a2 + 85);
    *(v13 + 72) = v14;
    *(v13 + 80) = v15;
    v16 = *a1;
    v17 = a1[1];
    v18 = v13 + *a1 - v17;
    if (*a1 != v17)
    {
      v19 = *a1;
      v20 = v13 + *a1 - v17;
      do
      {
        v21 = *(v19 + 1);
        *v20 = *v19;
        *(v20 + 16) = v21;
        *(v20 + 40) = 0;
        *(v20 + 48) = 0;
        *(v20 + 32) = *(v19 + 2);
        *(v20 + 48) = v19[6];
        v19[4] = 0;
        v19[5] = 0;
        v19[6] = 0;
        *(v20 + 64) = 0;
        *(v20 + 72) = 0;
        *(v20 + 56) = *(v19 + 7);
        *(v20 + 72) = v19[9];
        v19[7] = 0;
        v19[8] = 0;
        v19[9] = 0;
        v22 = v19[10];
        *(v20 + 85) = *(v19 + 85);
        *(v20 + 80) = v22;
        v19 += 12;
        v20 += 96;
      }

      while (v19 != v17);
      do
      {
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v16);
        v16 += 12;
      }

      while (v16 != v17);
      v16 = *a1;
    }

    v7 = v13 + 96;
    *a1 = v18;
    a1[1] = v7;
    a1[2] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v5;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v6 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v6;
    v7 = v3 + 96;
  }

  a1[1] = v7;
}

void *std::__state<char>::~__state(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::vector<std::sub_match<char const*>>::resize(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __sz, std::vector<std::csub_match>::const_reference __x)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  v7 = __sz - v6;
  if (__sz <= v6)
  {
    if (__sz < v6)
    {
      this->__end_ = &begin[__sz];
    }
  }

  else
  {
    value = this->__end_cap_.__value_;
    if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) < v7)
    {
      if (__sz <= 0xAAAAAAAAAAAAAAALL)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
        v10 = 2 * v9;
        if (2 * v9 <= __sz)
        {
          v10 = __sz;
        }

        if (v9 >= 0x555555555555555)
        {
          v11 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v11 = v10;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(v11);
      }

      std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
    }

    v12 = &end[v7];
    v13 = 24 * __sz - 8 * (v5 >> 3);
    do
    {
      v14 = __x->std::pair<const char *, const char *>;
      *&end->matched = *&__x->matched;
      end->std::pair<const char *, const char *> = v14;
      ++end;
      v13 -= 24;
    }

    while (v13);
    this->__end_ = v12;
  }
}

void std::vector<std::pair<unsigned long,char const*>>::resize(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __sz)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  if (__sz <= v5)
  {
    if (__sz >= v5)
    {
      return;
    }

    v11 = &begin[__sz];
  }

  else
  {
    v6 = __sz - v5;
    value = this->__end_cap_.__value_;
    if (v6 > value - end)
    {
      if (!(__sz >> 60))
      {
        v8 = value - begin;
        v9 = v8 >> 3;
        if (v8 >> 3 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(v10);
      }

      std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
    }

    bzero(this->__end_, 16 * v6);
    v11 = &end[v6];
  }

  this->__end_ = v11;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2383CBBD0](exception, 12);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2383CBBD0](exception, 16);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__destroy_at[abi:ne200100]<std::__state<char>,0>(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23749B188(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(a2);
  }

  std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23749B24C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(a2);
  }

  std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
}

void std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

__n128 std::deque<std::__state<char>>::push_back(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = v5 - v4;
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = 42 * ((v5 - v4) >> 3) - 1;
  }

  v8 = a1[4];
  v9 = a1[5] + v8;
  if (v7 == v9)
  {
    if (v8 < 0x2A)
    {
      v10 = a1[3];
      v11 = &v10[-*a1];
      if (v6 < v11)
      {
        if (v10 != v5)
        {
          operator new();
        }

        operator new();
      }

      if (v10 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11 >> 2;
      }

      v17[4] = a1;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v12);
    }

    a1[4] = v8 - 42;
    v17[0] = *v4;
    a1[1] = v4 + 8;
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, v17);
    v4 = a1[1];
    v9 = a1[5] + a1[4];
  }

  v13 = *&v4[8 * (v9 / 0x2A)] + 96 * (v9 % 0x2A);
  v14 = *(a2 + 16);
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  *(v13 + 32) = 0;
  *(v13 + 32) = *(a2 + 32);
  *(v13 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  result = *(a2 + 56);
  *(v13 + 56) = result;
  *(v13 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v16 = *(a2 + 80);
  *(v13 + 85) = *(a2 + 85);
  *(v13 + 80) = v16;
  ++a1[5];
  return result;
}

void sub_23749B628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  operator delete(v10);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::deque<std::__state<char>>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  std::__destroy_at[abi:ne200100]<std::__state<char>,0>((*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)));
  v3 = a1[2];
  v4 = v3 == a1[1];
  v5 = 42 * ((v3 - a1[1]) >> 3) - 1;
  v7 = a1[4];
  v6 = a1[5];
  a1[5] = v6 - 1;
  if (v4)
  {
    v5 = 0;
  }

  if ((v5 - (v6 + v7) - 83) <= 0xFFFFFFFFFFFFFFABLL)
  {
    operator delete(*(v3 - 8));
    a1[2] -= 8;
  }
}

void *std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::deque<std::__state<char>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x2A];
    v7 = *v6 + 96 * (v5 % 0x2A);
    v8 = v3[(*(a1 + 40) + v5) / 0x2A] + 96 * ((*(a1 + 40) + v5) % 0x2A);
    if (v7 != v8)
    {
      do
      {
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 42;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(const std::regex_iterator<std::__wrap_iter<const char *>, char> *this, const std::regex_iterator<std::__wrap_iter<const char *>, char> *__x)
{
  p_match = &this->__match_;
  begin = this->__match_.__matches_.__begin_;
  end = p_match->__matches_.__end_;
  v9 = &__x->__match_;
  v7 = __x->__match_.__matches_.__begin_;
  v8 = v9->__matches_.__end_;
  v10 = v8 == v7 && end == begin;
  if (end != begin && v8 != v7)
  {
    return this->__begin_.__i_ == __x->__begin_.__i_ && this->__end_.__i_ == __x->__end_.__i_ && this->__pregex_ == __x->__pregex_ && this->__flags_ == __x->__flags_ && std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](begin, v7) == 0;
  }

  return v10;
}

uint64_t std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<char const*,char const*>(&__dst, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  }

  else
  {
    __dst = 0;
    v20 = 0;
    v21 = 0;
  }

  if (*(a2 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<char const*,char const*>(&v16, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    v3 = HIBYTE(v18);
    v5 = v16;
    v4 = v17;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  v6 = SHIBYTE(v21);
  v7 = __dst;
  if (v21 >= 0)
  {
    v8 = HIBYTE(v21);
  }

  else
  {
    v8 = v20;
  }

  if (v21 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if ((v3 & 0x80u) == 0)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if ((v3 & 0x80u) == 0)
  {
    v11 = &v16;
  }

  else
  {
    v11 = v5;
  }

  if (v10 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = memcmp(p_dst, v11, v12);
  if ((v3 & 0x80) != 0)
  {
    operator delete(v5);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(v7);
LABEL_24:
  v14 = v10 < v8;
  if (v8 < v10)
  {
    v14 = -1;
  }

  if (v13)
  {
    return v13;
  }

  else
  {
    return v14;
  }
}

void sub_23749BC98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::regex_token_iterator<std::__wrap_iter<const char *>, char> *__cdecl std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_token_iterator(std::regex_token_iterator<std::__wrap_iter<const char *>, char> *this, const std::regex_token_iterator<std::__wrap_iter<const char *>, char> *a2)
{
  v4 = *&a2->__position_.__begin_.__i_;
  *(&this->__position_.__end_.__i_ + 4) = *(&a2->__position_.__end_.__i_ + 4);
  *&this->__position_.__begin_.__i_ = v4;
  this->__position_.__match_.__matches_.__begin_ = 0;
  this->__position_.__match_.__matches_.__end_ = 0;
  this->__position_.__match_.__matches_.__end_cap_.__value_ = 0;
  std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__init_with_size[abi:ne200100]<std::sub_match<std::__wrap_iter<char const*>>*,std::sub_match<std::__wrap_iter<char const*>>*>(&this->__position_.__match_, a2->__position_.__match_.__matches_.__begin_, a2->__position_.__match_.__matches_.__end_, 0xAAAAAAAAAAAAAAABLL * ((a2->__position_.__match_.__matches_.__end_ - a2->__position_.__match_.__matches_.__begin_) >> 3));
  v5 = a2->__position_.__match_.__unmatched_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>>;
  *&this->__position_.__match_.__unmatched_.matched = *&a2->__position_.__match_.__unmatched_.matched;
  this->__position_.__match_.__unmatched_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = v5;
  v6 = *&a2->__position_.__match_.__prefix_.second.__i_;
  v7 = a2->__position_.__match_.__suffix_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>>;
  v8 = *&a2->__position_.__match_.__suffix_.matched;
  this->__position_.__match_.__position_start_.__i_ = a2->__position_.__match_.__position_start_.__i_;
  *&this->__position_.__match_.__suffix_.matched = v8;
  this->__position_.__match_.__suffix_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = v7;
  *&this->__position_.__match_.__prefix_.second.__i_ = v6;
  this->__result_ = a2->__result_;
  v9 = a2->__suffix_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>>;
  *&this->__suffix_.matched = *&a2->__suffix_.matched;
  this->__suffix_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = v9;
  n = a2->__n_;
  this->__subs_.__begin_ = 0;
  this->__n_ = n;
  this->__subs_.__end_ = 0;
  this->__subs_.__end_cap_.__value_ = 0;
  begin = a2->__subs_.__begin_;
  end = a2->__subs_.__end_;
  if (end != begin)
  {
    if (((end - begin) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
  }

  if (a2->__result_ == &a2->__suffix_)
  {
    p_suffix = &this->__suffix_;
LABEL_12:
    this->__result_ = p_suffix;
    return this;
  }

  if (this->__result_)
  {
    v13 = *(4 * this->__n_);
    if (v13 == -1)
    {
      p_suffix = &this->__position_.__match_.__prefix_;
    }

    else
    {
      v14 = this->__position_.__match_.__matches_.__begin_;
      v15 = 0xAAAAAAAAAAAAAAABLL * ((this->__position_.__match_.__matches_.__end_ - v14) >> 3);
      v16 = &v14[v13];
      if (v15 <= v13)
      {
        p_suffix = &this->__position_.__match_.__unmatched_;
      }

      else
      {
        p_suffix = v16;
      }
    }

    goto LABEL_12;
  }

  return this;
}

void sub_23749BE50(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 192) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__init_with_size[abi:ne200100]<std::sub_match<std::__wrap_iter<char const*>>*,std::sub_match<std::__wrap_iter<char const*>>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(a4);
    }

    std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
  }
}

void sub_23749BF14(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(const std::regex_token_iterator<std::__wrap_iter<const char *>, char> *this, const std::regex_token_iterator<std::__wrap_iter<const char *>, char> *__x)
{
  v2 = this->__result_;
  v3 = __x->__result_;
  if (!(v2 | v3))
  {
    LOBYTE(v4) = 1;
    return v4;
  }

  p_suffix = &this->__suffix_;
  v8 = &__x->__suffix_;
  if (v2 == &this->__suffix_ && v3 == v8)
  {
    if (!std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](&this->__suffix_, v8))
    {
      LOBYTE(v4) = 1;
      return v4;
    }

    v2 = this->__result_;
    if (!v2)
    {
      goto LABEL_17;
    }
  }

  else if (!v2)
  {
    goto LABEL_17;
  }

  v10 = __x->__result_;
  if (!v10)
  {
    goto LABEL_17;
  }

  LOBYTE(v4) = 0;
  if (v2 != p_suffix && v10 != &__x->__suffix_)
  {
    v4 = std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(&this->__position_, &__x->__position_);
    if (v4)
    {
      if (this->__n_ == __x->__n_)
      {
        begin = this->__subs_.__begin_;
        v12 = (this->__subs_.__end_ - begin);
        v13 = __x->__subs_.__begin_;
        if (v12 == (__x->__subs_.__end_ - v13))
        {
          LOBYTE(v4) = memcmp(begin, v13, v12) == 0;
          return v4;
        }
      }

LABEL_17:
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

std::regex_token_iterator<std::__wrap_iter<const char *>, char> *__cdecl std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++(std::regex_token_iterator<std::__wrap_iter<const char *>, char> *this)
{
  memset(&v30[1] + 12, 0, 116);
  v30[0] = *&this->__position_.__begin_.__i_;
  *(v30 + 12) = *(&this->__position_.__end_.__i_ + 4);
  p_match = &this->__position_.__match_;
  begin = this->__position_.__match_.__matches_.__begin_;
  memset(&v30[2], 0, 24);
  std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__init_with_size[abi:ne200100]<std::sub_match<std::__wrap_iter<char const*>>*,std::sub_match<std::__wrap_iter<char const*>>*>(&v30[2], begin, this->__position_.__match_.__matches_.__end_, 0xAAAAAAAAAAAAAAABLL * ((this->__position_.__match_.__matches_.__end_ - begin) >> 3));
  v4 = this->__result_;
  *(&v30[8] + 1) = this->__position_.__match_.__position_start_.__i_;
  *(&v30[5] + 8) = *&this->__position_.__match_.__prefix_.second.__i_;
  *(&v30[6] + 8) = this->__position_.__match_.__suffix_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>>;
  *(&v30[7] + 8) = *&this->__position_.__match_.__suffix_.matched;
  *(&v30[3] + 8) = this->__position_.__match_.__unmatched_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>>;
  *(&v30[4] + 8) = *&this->__position_.__match_.__unmatched_.matched;
  p_suffix = &this->__suffix_;
  if (v4 == &this->__suffix_)
  {
LABEL_37:
    p_suffix = 0;
    goto LABEL_38;
  }

  v6 = this->__subs_.__begin_;
  v7 = this->__n_ + 1;
  if (v7 < this->__subs_.__end_ - v6)
  {
    this->__n_ = v7;
    v8 = v6[v7];
    goto LABEL_28;
  }

  this->__n_ = 0;
  flags = this->__position_.__flags_;
  v10 = flags | 0x800;
  this->__position_.__flags_ = flags | 0x800;
  v11 = this->__position_.__match_.__matches_.__begin_;
  if (this->__position_.__match_.__matches_.__end_ == v11)
  {
    p_unmatched = &this->__position_.__match_.__unmatched_;
  }

  else
  {
    p_unmatched = this->__position_.__match_.__matches_.__begin_;
  }

  i = p_unmatched->second.__i_;
  if (p_unmatched->first.__i_ != i)
  {
    v14 = p_unmatched->second.__i_;
LABEL_9:
    this->__position_.__flags_ = v10 | 0x80;
    v16 = this->__position_.__end_.__i_;
    pregex = this->__position_.__pregex_;
    memset(&__p, 0, 112);
    v17 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(pregex, v14, v16, &__p, v10 | 0x80);
    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(p_match, v14, v16, &__p, (v10 & 0x800) != 0);
    if (__p.__begin_.__i_)
    {
      operator delete(__p.__begin_.__i_);
    }

    if (v17)
    {
      this->__position_.__match_.__prefix_.first.__i_ = i;
      this->__position_.__match_.__prefix_.matched = this->__position_.__match_.__prefix_.second.__i_ != i;
      goto LABEL_22;
    }

    v11 = p_match->__matches_.__begin_;
    goto LABEL_19;
  }

  v18 = this->__position_.__end_.__i_;
  if (v18 == i)
  {
LABEL_19:
    if (v11)
    {
      this->__position_.__match_.__matches_.__end_ = v11;
      operator delete(v11);
      p_match->__matches_.__begin_ = 0;
      p_match->__matches_.__end_ = 0;
      p_match->__matches_.__end_cap_.__value_ = 0;
    }

    this->__position_.__match_.__ready_ = 0;
    *&p_match->__matches_.__begin_ = 0u;
    *&p_match->__matches_.__end_cap_.__value_ = 0u;
    *(&p_match->__unmatched_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> + 1) = 0u;
    this->__position_.__match_.__prefix_.first.__i_ = 0;
    this->__position_.__match_.__prefix_.second.__i_ = 0;
    this->__position_.__match_.__prefix_.matched = 0;
    this->__position_.__match_.__suffix_.first.__i_ = 0;
    this->__position_.__match_.__suffix_.second.__i_ = 0;
    this->__position_.__match_.__suffix_.matched = 0;
    this->__position_.__match_.__position_start_.__i_ = 0;
    goto LABEL_22;
  }

  v19 = this->__position_.__pregex_;
  memset(&__p, 0, 112);
  v20 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v19, i, v18, &__p, flags | 0x860);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(p_match, i, v18, &__p, 1);
  if (__p.__begin_.__i_)
  {
    operator delete(__p.__begin_.__i_);
  }

  if ((v20 & 1) == 0)
  {
    v14 = (i + 1);
    v10 = this->__position_.__flags_;
    goto LABEL_9;
  }

LABEL_22:
  memset(&__p.__match_.__prefix_, 0, 17);
  memset(&__p.__match_.__suffix_, 0, 17);
  __p.__match_.__ready_ = 0;
  __p.__match_.__position_start_.__i_ = 0;
  memset(&__p.__match_, 0, 41);
  memset(&__p, 0, 28);
  if (std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(&this->__position_, &__p))
  {
    v21 = this->__subs_.__begin_;
    end = this->__subs_.__end_;
    if (v21 != end)
    {
      while (*v21 != -1)
      {
        if (++v21 == end)
        {
          goto LABEL_37;
        }
      }
    }

    if (v21 != end && BYTE8(v30[7]) == 1)
    {
      v26 = *(&v30[6] + 1);
      v27 = *&v30[7];
      if (*&v30[7] != *(&v30[6] + 1))
      {
        this->__suffix_.matched = 1;
        this->__suffix_.first.__i_ = v26;
        this->__suffix_.second.__i_ = v27;
        goto LABEL_38;
      }
    }

    goto LABEL_37;
  }

  v8 = this->__subs_.__begin_[this->__n_];
LABEL_28:
  if (v8 == -1)
  {
    p_suffix = &this->__position_.__match_.__prefix_;
  }

  else
  {
    v23 = this->__position_.__match_.__matches_.__begin_;
    v24 = 0xAAAAAAAAAAAAAAABLL * ((this->__position_.__match_.__matches_.__end_ - v23) >> 3);
    v25 = &v23[v8];
    if (v24 <= v8)
    {
      p_suffix = &this->__position_.__match_.__unmatched_;
    }

    else
    {
      p_suffix = v25;
    }
  }

LABEL_38:
  this->__result_ = p_suffix;
  if (*&v30[2])
  {
    operator delete(*&v30[2]);
  }

  return this;
}

void sub_23749C370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a31)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>,std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>>::~pair(void *a1)
{
  v2 = a1[49];
  if (v2)
  {
    a1[50] = v2;
    operator delete(v2);
  }

  v3 = a1[30];
  if (v3)
  {
    a1[31] = v3;
    operator delete(v3);
  }

  v4 = a1[23];
  if (v4)
  {
    a1[24] = v4;
    operator delete(v4);
  }

  v5 = a1[4];
  if (v5)
  {
    a1[5] = v5;
    operator delete(v5);
  }

  return a1;
}

std::regex_traits<char> *__cdecl std::regex_traits<char>::regex_traits(std::regex_traits<char> *this)
{
  v2 = MEMORY[0x2383CBE00]();
  this->__ct_ = std::locale::use_facet(v2, MEMORY[0x277D82680]);
  this->__col_ = std::locale::use_facet(&this->__loc_, MEMORY[0x277D826A0]);
  return this;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2383CBBD0](exception, 17);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_23749C960(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3)
  {
    do
    {
      if (*v7 != 124)
      {
        break;
      }

      v9 = a1->__end_;
      v10 = ++v7;
      do
      {
        v11 = v7;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
      }

      while (v7 != v11);
      if (v11 == v10)
      {
        operator new();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }

    while (v11 != a3);
  }

  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
      ++v3;
    }

    if (v3 != a3)
    {
      do
      {
        v6 = v3;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(this, v3, a3);
        v3 = v7;
      }

      while (v7 != v6);
      if (v6 != a3 && v7 + 1 == a3 && *v7 == 36)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
        ++v3;
      }
    }

    if (v3 != a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  v8 = v7;
  while (v8 != a3 && *v8 == 124)
  {
    v9 = a1->__end_;
    v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, v8 + 1, a3);
    if (v10 == v8 + 1)
    {
      goto LABEL_8;
    }

    v8 = v10;
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
  }

  return v8;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2383CBBD0](exception, 14);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void (__cdecl ***std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x2383CBEF0);
}

void std::__owns_one_state<char>::~__owns_one_state(std::__owns_one_state<char> *this)
{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }
}

{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }

  JUMPOUT(0x2383CBEF0);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = *a2;
  if (v6 > 0x5B)
  {
    if (v6 != 92)
    {
      if (v6 != 94)
      {
        goto LABEL_65;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
      return a2 + 1;
    }

    if (a2 + 1 != a3)
    {
      v11 = a2[1];
      if (v11 == 66)
      {
        v12 = 1;
        goto LABEL_56;
      }

      if (v11 == 98)
      {
        v12 = 0;
LABEL_56:
        std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(this, v12);
        return a2 + 2;
      }
    }

    end = this->__end_;
    marked_count = this->__marked_count_;
    goto LABEL_37;
  }

  if (v6 == 36)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
    return a2 + 1;
  }

  if (v6 != 40)
  {
    goto LABEL_65;
  }

  if (a2 + 1 == a3 || a2[1] != 63 || a2 + 2 == a3)
  {
    goto LABEL_22;
  }

  v7 = a2[2];
  if (v7 == 33)
  {
    memset(&v38, 0, sizeof(v38));
    std::regex_traits<char>::regex_traits(&v38.__traits_);
    memset(&v38.__flags_, 0, 40);
    v38.__flags_ = this->__flags_;
    v8 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v38, a2 + 3, a3);
    v29 = v38.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v38, 1, this->__marked_count_);
    this->__marked_count_ += v29;
    if (v8 == a3 || *v8 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    goto LABEL_63;
  }

  if (v7 != 61)
  {
LABEL_22:
    end = this->__end_;
    marked_count = this->__marked_count_;
LABEL_23:
    if (a2 + 1 == a3)
    {
      goto LABEL_100;
    }

    if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
    {
      p_open_count = &this->__open_count_;
      ++this->__open_count_;
      v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, a2 + 3, a3);
      if (v16 == a3)
      {
        goto LABEL_100;
      }

      v17 = v16;
      if (*v16 != 41)
      {
        goto LABEL_100;
      }
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
      v18 = this->__marked_count_;
      p_open_count = &this->__open_count_;
      ++this->__open_count_;
      v19 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, a2 + 1, a3);
      if (v19 == a3 || (v17 = v19, *v19 != 41))
      {
LABEL_100:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, v18);
    }

    --*p_open_count;
    v20 = v17 + 1;
LABEL_34:
    result = a2;
    if (v20 == a2)
    {
      return result;
    }

    goto LABEL_95;
  }

  memset(&v38, 0, sizeof(v38));
  std::regex_traits<char>::regex_traits(&v38.__traits_);
  memset(&v38.__flags_, 0, 40);
  v38.__flags_ = this->__flags_;
  v8 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v38, a2 + 3, a3);
  v9 = v38.__marked_count_;
  std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v38, 0, this->__marked_count_);
  this->__marked_count_ += v9;
  if (v8 == a3 || *v8 != 41)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_63:
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v38.__traits_.__loc_);
  result = v8 + 1;
  if (v8 + 1 != a2)
  {
    return result;
  }

  v6 = *a2;
LABEL_65:
  end = this->__end_;
  marked_count = this->__marked_count_;
  if (v6 > 62)
  {
    v30 = (v6 - 92);
    if (v30 > 0x21)
    {
LABEL_74:
      if (v6 != 91)
      {
        if (v6 == 63)
        {
          goto LABEL_99;
        }

        goto LABEL_82;
      }

      v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
      goto LABEL_34;
    }

    if (((1 << (v6 - 92)) & 0x300000006) != 0)
    {
      return a2;
    }

    if (v6 != 92)
    {
      if (v30 == 31)
      {
        goto LABEL_99;
      }

      goto LABEL_74;
    }

LABEL_37:
    v21 = a2 + 1;
    if (a2 + 1 == a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
    }

    v22 = *v21;
    if (v22 == 48)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, 0);
LABEL_94:
      v20 = a2 + 2;
      goto LABEL_95;
    }

    if ((v22 - 49) <= 8)
    {
      v23 = (v22 - 48);
      v20 = a2 + 2;
      if (a2 + 2 != a3)
      {
        while (1)
        {
          v24 = *v20;
          if ((v24 - 48) > 9)
          {
            break;
          }

          if (v23 >= 0x19999999)
          {
            goto LABEL_101;
          }

          v23 = v24 + 10 * v23 - 48;
          if (++v20 == a3)
          {
            v20 = a3;
            break;
          }
        }

        if (!v23)
        {
          goto LABEL_101;
        }
      }

      if (v23 > marked_count)
      {
LABEL_101:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(this, v23);
      if (v20 != v21)
      {
        goto LABEL_34;
      }

      v22 = *v21;
    }

    if (v22 > 99)
    {
      if (v22 == 119)
      {
        v25 = this;
        v26 = 0;
        goto LABEL_86;
      }

      if (v22 == 115)
      {
        v35 = this;
        v36 = 0;
LABEL_92:
        started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v35, v36);
        v32 = started->__mask_ | 0x4000;
        goto LABEL_93;
      }

      if (v22 != 100)
      {
        goto LABEL_87;
      }

      v27 = this;
      v28 = 0;
    }

    else
    {
      if (v22 != 68)
      {
        if (v22 != 83)
        {
          if (v22 == 87)
          {
            v25 = this;
            v26 = 1;
LABEL_86:
            v33 = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v25, v26);
            v33->__mask_ |= 0x500u;
            std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v33, 95);
            goto LABEL_94;
          }

LABEL_87:
          v34 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(this, a2 + 1, a3, 0);
          if (v34 == v21)
          {
            v20 = a2;
          }

          else
          {
            v20 = v34;
          }

          goto LABEL_34;
        }

        v35 = this;
        v36 = 1;
        goto LABEL_92;
      }

      v27 = this;
      v28 = 1;
    }

    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v27, v28);
    v32 = started->__mask_ | 0x400;
LABEL_93:
    started->__mask_ = v32;
    goto LABEL_94;
  }

  if (v6 > 40)
  {
    if (v6 != 41)
    {
      if (v6 == 46)
      {
        operator new();
      }

      if ((v6 - 42) < 2)
      {
LABEL_99:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
      }

      goto LABEL_82;
    }

    return a2;
  }

  if (v6 == 36)
  {
    return a2;
  }

  if (v6 == 40)
  {
    goto LABEL_23;
  }

LABEL_82:
  std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v6);
  v20 = a2 + 1;
LABEL_95:
  v37 = this->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(this, v20, a3, end, marked_count + 1, v37);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t a5, size_t a6)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a6;
  v7 = a5;
  v10 = a1;
  v11 = *(a1 + 24) & 0x1F0;
  v12 = *a2;
  if (v12 > 0x3E)
  {
    if (v12 == 63)
    {
      v13 = a2 + 1;
      if (v11)
      {
        v20 = 1;
      }

      else
      {
        v20 = v13 == a3;
      }

      if (!v20 && *v13 == 63)
      {
        v13 = a2 + 2;
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v18 = 1;
        goto LABEL_33;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v18 = 1;
      goto LABEL_45;
    }

    if (v12 != 123)
    {
      return a2;
    }

    LODWORD(__max) = 0;
    v15 = a2 + 1;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(a2 + 1, a3, &__max);
    if (v16 != v15)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v13 = v16 + 1;
            if (!v11 && v13 != a3 && *v13 == 63)
            {
              v13 = v16 + 2;
              v14 = __max;
              a5 = v7;
              a6 = v6;
              a1 = v10;
              v18 = __max;
LABEL_33:
              v21 = __s;
              v22 = 0;
LABEL_46:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v14, v18, v21, a5, a6, v22);
              return v13;
            }

            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            v18 = __max;
LABEL_45:
            v21 = __s;
            v22 = 1;
            goto LABEL_46;
          }

          goto LABEL_58;
        }

        v23 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_58;
        }

        if (*v23 == 125)
        {
          v13 = v16 + 2;
          if (!v11 && v13 != a3 && *v13 == 63)
          {
            v13 = v16 + 3;
            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            goto LABEL_26;
          }

          v14 = __max;
          a5 = v7;
          a6 = v6;
          a1 = v10;
LABEL_36:
          v18 = -1;
          goto LABEL_45;
        }

        v27 = -1;
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v16 + 1, a3, &v27);
        if (v25 != v23 && v25 != a3 && *v25 == 125)
        {
          v18 = v27;
          v14 = __max;
          if (v27 >= __max)
          {
            v13 = v25 + 1;
            v22 = 1;
            if (!v11 && v13 != a3)
            {
              v26 = v25[1];
              v22 = v26 != 63;
              if (v26 == 63)
              {
                v13 = v25 + 2;
              }
            }

            a5 = v7;
            a6 = v6;
            a1 = v10;
            v21 = __s;
            goto LABEL_46;
          }

          goto LABEL_58;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

LABEL_58:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v12 == 42)
  {
    v13 = a2 + 1;
    if (v11)
    {
      v19 = 1;
    }

    else
    {
      v19 = v13 == a3;
    }

    if (!v19 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_26;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    goto LABEL_36;
  }

  if (v12 == 43)
  {
    v13 = a2 + 1;
    if (!v11 && v13 != a3 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 1;
LABEL_26:
      v18 = -1;
      goto LABEL_33;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_36;
  }

  return a2;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2383CBBD0](exception, 6);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void (__cdecl ***std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x2383CBEF0);
}
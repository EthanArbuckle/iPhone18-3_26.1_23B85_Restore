uint64_t std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::UpdateMaterial(Phase::Handle64,Phase::Dispatch::MaterialData const&)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::UpdateMaterial(Phase::Handle64,Phase::Dispatch::MaterialData const&)::$_0>,void ()(Phase::Geometry::System *)>::~__func(id *a1)
{

  JUMPOUT(0x23EE864A0);
}

id std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::UpdateMaterial(Phase::Handle64,Phase::Dispatch::MaterialData const&)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::UpdateMaterial(Phase::Handle64,Phase::Dispatch::MaterialData const&)::$_0>,void ()(Phase::Geometry::System *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_284D327E0;
  a2[1] = *(a1 + 8);
  a2[2] = *(a1 + 16);
  a2[3] = *(a1 + 24);
  result = *(a1 + 32);
  v5 = *(a1 + 40);
  a2[4] = result;
  a2[5] = v5;
  return result;
}

void std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::UpdateMaterial(Phase::Handle64,Phase::Dispatch::MaterialData const&)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::UpdateMaterial(Phase::Handle64,Phase::Dispatch::MaterialData const&)::$_0>,void ()(Phase::Geometry::System *)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::UpdateMaterial(Phase::Handle64,Phase::Dispatch::MaterialData const&)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::UpdateMaterial(Phase::Handle64,Phase::Dispatch::MaterialData const&)::$_0>,void ()(Phase::Geometry::System *)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::UpdateMaterial(Phase::Handle64,Phase::Dispatch::MaterialData const&)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::UpdateMaterial(Phase::Handle64,Phase::Dispatch::MaterialData const&)::$_0>,void ()(Phase::Geometry::System *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  UniqueSlot = Phase::details::SharedSlotMap<Phase::Geometry::Material,Phase::Handle64>::GetUniqueSlot(*a2 + 1176, *(a1 + 40));
  if (!UniqueSlot)
  {
    goto LABEL_16;
  }

  v5 = UniqueSlot;
  shared_owners = UniqueSlot->__shared_owners_;
  if (shared_owners && *(shared_owners + 8) >= 1)
  {
    v7 = *(v3 + 1376);
    if (!v7)
    {
      std::terminate();
    }

    v8 = v5->__vftable;
    Phase::Geometry::MaterialFactory::Create(v7, v5->__vftable, 0, v19);
    v9 = *v19;
    if (*v19)
    {
      *(*v19 + 8) = *(v8 + 1);
    }

    v10 = *&v19[8];
    *v19 = 0;
    *&v19[8] = 0;
    UniqueSlot = v5->__shared_owners_;
    v5->__vftable = v9;
    v5->__shared_owners_ = v10;
    if (UniqueSlot)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](UniqueSlot);
      UniqueSlot = *&v19[8];
      if (*&v19[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v19[8]);
      }
    }
  }

  v11 = v5->__vftable;
  if (!v11)
  {
LABEL_16:
    v17 = **(Phase::Logger::GetInstance(UniqueSlot) + 848);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *v19 = 136315394;
    *&v19[4] = "DispatcherGeometryClientDirect.mm";
    *&v19[12] = 1024;
    *&v19[14] = 564;
    v18 = "%25s:%-5d Unable to find geo material to update.";
    goto LABEL_18;
  }

  v12 = **(v11 + 5);
  if (v12)
  {
    Phase::Dispatch::sCopyMaterialData((a1 + 8), v12);
    v14 = qword_23A555248;
    v15 = 40;
    while (1)
    {
      v16 = *(*(v11 + 5) + v15);
      if (!v16)
      {
        break;
      }

      Phase::Dispatch::sConvertMaterialData((a1 + 8), v16, *v14);
      v15 += 40;
      ++v14;
      if (v15 == 160)
      {
        return;
      }
    }

    v17 = **(Phase::Logger::GetInstance(v13) + 848);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v19 = 136315394;
      *&v19[4] = "DispatcherGeometryClientDirect.mm";
      *&v19[12] = 1024;
      *&v19[14] = 584;
      v18 = "%25s:%-5d Unable to find internal geo material map to update.";
      goto LABEL_18;
    }
  }

  else
  {
    v17 = **(Phase::Logger::GetInstance(UniqueSlot) + 848);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v19 = 136315394;
      *&v19[4] = "DispatcherGeometryClientDirect.mm";
      *&v19[12] = 1024;
      *&v19[14] = 572;
      v18 = "%25s:%-5d Unable to find user geo material map to update.";
LABEL_18:
      _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, v18, v19, 0x12u);
    }
  }
}

void sub_23A3A867C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2)
  {
    v9 = __cxa_begin_catch(exception_object);
    v10 = **(Phase::Logger::GetInstance(v9) + 848);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 136315394;
      *(&a9 + 4) = "DispatcherGeometryClientDirect.mm";
      WORD6(a9) = 1024;
      *(&a9 + 14) = 593;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to update geo material.", &a9, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x23A3A8590);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::details::SharedSlotMap<Phase::Geometry::Material,Phase::Handle64>::GetUniqueSlot(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    return 0;
  }

  v3 = a2;
  result = *a1 + 24 * a2;
  if (*(result + 20) != HIDWORD(a2))
  {
    return 0;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    if (*(v5 + 8) >= 1)
    {
      Phase::details::SharedSlotMap<Phase::Geometry::Material,Phase::Handle64>::Realloc(a1);
      return *a1 + 24 * v3;
    }
  }

  return result;
}

void Phase::details::SharedSlotMap<Phase::Geometry::Material,Phase::Handle64>::Realloc(uint64_t *a1)
{
  v1 = *(a1 + 4);
  if (v1)
  {
    Phase::details::SharedSlotMap<Phase::Geometry::Material,Phase::Handle64>::AllocSlots(v1, &v13);
    if (*(a1 + 4))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v5 = *a1;
        v6 = (*a1 + v3);
        v7 = v13;
        v9 = *v6;
        v8 = v6[1];
        if (v8)
        {
          atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
        }

        v10 = (v7 + v3);
        v11 = *(v7 + v3 + 8);
        *v10 = v9;
        v10[1] = v8;
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        v10[2] = *(v5 + v3 + 16);
        ++v4;
        v3 += 24;
      }

      while (v4 < *(a1 + 4));
    }

    std::__shared_mutex_base::lock((a1 + 4));
    v12 = *a1;
    *a1 = v13;
    v13 = v12;
    std::__shared_mutex_base::unlock((a1 + 4));
    if (*(&v13 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
    }
  }
}

void sub_23A3A888C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void Phase::details::SharedSlotMap<Phase::Geometry::Material,Phase::Handle64>::AllocSlots(unint64_t a1@<X1>, void *a2@<X8>)
{
  if (a1)
  {
    is_mul_ok(a1, 0x18uLL);
    operator new[]();
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_23A3A89C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<Phase::SharedSlotMapState<Phase::Geometry::Entity,Phase::Handle64>::Slot>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<Phase::SharedSlotMapState<Phase::Geometry::Material,Phase::Handle64>::Slot *,std::shared_ptr<Phase::SharedSlotMapState<Phase::Geometry::Material,Phase::Handle64>::Slot[]>::__shared_ptr_default_delete<Phase::SharedSlotMapState<Phase::Geometry::Material,Phase::Handle64>::Slot[],Phase::SharedSlotMapState<Phase::Geometry::Material,Phase::Handle64>::Slot>,std::allocator<Phase::SharedSlotMapState<Phase::Geometry::Material,Phase::Handle64>::Slot>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__function::__value_func<void ()(Phase::Geometry::System *)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::SetSourceGain(Phase::Handle64,float)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::SetSourceGain(Phase::Handle64,float)::$_0>,void ()(Phase::Geometry::System *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D32860;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::SetSourceGain(Phase::Handle64,float)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::SetSourceGain(Phase::Handle64,float)::$_0>,void ()(Phase::Geometry::System *)>::operator()(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v3 = Phase::Geometry::GetUniqueEntityChecked<Phase::Geometry::Source>(*a2 + 1672, *(a1 + 8));
    if (v3)
    {
      v3[21] = *(a1 + 16);
    }

    else
    {
      v4 = **(Phase::Logger::GetInstance(0) + 848);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = 136315394;
        v6 = "DispatcherGeometryClientDirect.mm";
        v7 = 1024;
        v8 = 622;
        _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Couldn't set gain on the source, geometry system doesn't have the source!", &v5, 0x12u);
      }
    }
  }
}

_DWORD *Phase::Geometry::GetUniqueEntityChecked<Phase::Geometry::Source>(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA = _ZN5Phase7details13SharedSlotMapINS_8Geometry6EntityENS_8Handle64EE13GetSlotToEditIRZNS_13SharedSlotMapIS3_S4_NS2_13EntityFactoryEE9GetUniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA_(a1, a2, &v4);
  if (!UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA)
  {
    return 0;
  }

  result = *UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA;
  if (!result || *result != 3)
  {
    return 0;
  }

  return result;
}

__n128 std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::SetListenerGain(Phase::Handle64,float)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::SetListenerGain(Phase::Handle64,float)::$_0>,void ()(Phase::Geometry::System *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D328A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::SetListenerGain(Phase::Handle64,float)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::SetListenerGain(Phase::Handle64,float)::$_0>,void ()(Phase::Geometry::System *)>::operator()(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v3 = Phase::Geometry::GetUniqueEntityChecked<Phase::Geometry::Listener>(*a2 + 1672, *(a1 + 8));
    if (v3)
    {
      v3[22] = *(a1 + 16);
    }

    else
    {
      v4 = **(Phase::Logger::GetInstance(0) + 848);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = 136315394;
        v6 = "DispatcherGeometryClientDirect.mm";
        v7 = 1024;
        v8 = 646;
        _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Couldn't set gain on the listener, geometry system doesn't have the listener!", &v5, 0x12u);
      }
    }
  }
}

_DWORD *Phase::Geometry::GetUniqueEntityChecked<Phase::Geometry::Listener>(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA = _ZN5Phase7details13SharedSlotMapINS_8Geometry6EntityENS_8Handle64EE13GetSlotToEditIRZNS_13SharedSlotMapIS3_S4_NS2_13EntityFactoryEE9GetUniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA_(a1, a2, &v4);
  if (!UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA)
  {
    return 0;
  }

  result = *UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA;
  if (!result || *result != 2)
  {
    return 0;
  }

  return result;
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::SetRoomAcousticTrackingMode(PHASERoomAcousticTrackingMode)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::SetRoomAcousticTrackingMode(PHASERoomAcousticTrackingMode)::$_0>,void ()(Phase::Geometry::System *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D328F0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::SetRoomAcousticTrackingMode(PHASERoomAcousticTrackingMode)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::SetRoomAcousticTrackingMode(PHASERoomAcousticTrackingMode)::$_0>,void ()(Phase::Geometry::System *)>::operator()(uint64_t result, uint64_t a2)
{
  if (*a2)
  {
    *(*a2 + 1912) = *(result + 8);
  }

  return result;
}

void std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::SetRoomAcousticTarget(Phase::Geometry::TargetRoomAcousticParametersMultiBand const&)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::SetRoomAcousticTarget(Phase::Geometry::TargetRoomAcousticParametersMultiBand const&)::$_0>,void ()(Phase::Geometry::System *)>::operator()(uint64_t a1, std::chrono::steady_clock::time_point **a2, double a3)
{
  v4 = *a2;
  if (*a2)
  {
    memcpy(&v4[239].__d_.__rep_ + 4, (a1 + 8), 0x2C0uLL);
    v4[328].__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  }

  v5 = *(a1 + 712);
  if (v5)
  {

    Phase::Controller::RoomCongruenceManager::SetTargetRoomAcousticParameters(v5, a1 + 8, a3);
  }
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::SetRoomAcousticMaximumReverbTime(float)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::SetRoomAcousticMaximumReverbTime(float)::$_0>,void ()(Phase::Geometry::System *)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_284D32980;
  *(a2 + 8) = *(result + 8);
  return result;
}

float std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::SetRoomAcousticMaximumReverbTime(float)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::SetRoomAcousticMaximumReverbTime(float)::$_0>,void ()(Phase::Geometry::System *)>::operator()(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    result = *(a1 + 8);
    *(*a2 + 2632) = result;
  }

  return result;
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::SetRoomAcousticSoftLimiting(BOOL)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::SetRoomAcousticSoftLimiting(BOOL)::$_0>,void ()(Phase::Geometry::System *)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_284D329C8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::SetRoomAcousticSoftLimiting(BOOL)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::SetRoomAcousticSoftLimiting(BOOL)::$_0>,void ()(Phase::Geometry::System *)>::operator()(uint64_t result, uint64_t a2)
{
  if (*a2)
  {
    *(*a2 + 2636) = *(result + 8);
  }

  return result;
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::SetRoomAcousticSmoothing(float)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::SetRoomAcousticSmoothing(float)::$_0>,void ()(Phase::Geometry::System *)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_284D32A10;
  *(a2 + 8) = *(result + 8);
  return result;
}

float std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::SetRoomAcousticSmoothing(float)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::SetRoomAcousticSmoothing(float)::$_0>,void ()(Phase::Geometry::System *)>::operator()(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    result = *(a1 + 8);
    *(*a2 + 2640) = result;
  }

  return result;
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::SetSpaceBlendTargetPreset(unsigned long long)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::SetSpaceBlendTargetPreset(unsigned long long)::$_0>,void ()(Phase::Geometry::System *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D32A58;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::SetSpaceBlendTargetPreset(unsigned long long)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::SetSpaceBlendTargetPreset(unsigned long long)::$_0>,void ()(Phase::Geometry::System *)>::operator()(uint64_t result, uint64_t a2)
{
  if (*a2)
  {
    *(*a2 + 2648) = *(result + 8);
  }

  return result;
}

float std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::SetSpaceBlendTargetPresetOrientation(Phase::Quaternion<float>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::SetSpaceBlendTargetPresetOrientation(Phase::Quaternion<float>)::$_0>,void ()(Phase::Geometry::System *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D32AA0;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  result = *(a1 + 20);
  *(a2 + 20) = result;
  return result;
}

float std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::SetSpaceBlendTargetPresetOrientation(Phase::Quaternion<float>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::SetSpaceBlendTargetPresetOrientation(Phase::Quaternion<float>)::$_0>,void ()(Phase::Geometry::System *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(v2 + 2656) = *(a1 + 8);
    *(v2 + 2660) = *(a1 + 12);
    *(v2 + 2664) = *(a1 + 16);
    result = *(a1 + 20);
    *(v2 + 2668) = result;
  }

  return result;
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::SetSpaceBlendLevel(float)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::SetSpaceBlendLevel(float)::$_0>,void ()(Phase::Geometry::System *)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_284D32AE8;
  *(a2 + 8) = *(result + 8);
  return result;
}

float std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::SetSpaceBlendLevel(float)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::SetSpaceBlendLevel(float)::$_0>,void ()(Phase::Geometry::System *)>::operator()(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    result = *(a1 + 8);
    *(*a2 + 2672) = result;
  }

  return result;
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::SetSceneClassification(PHASESceneClassification)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::SetSceneClassification(PHASESceneClassification)::$_0>,void ()(Phase::Geometry::System *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D32B30;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::SetSceneClassification(PHASESceneClassification)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::SetSceneClassification(PHASESceneClassification)::$_0>,void ()(Phase::Geometry::System *)>::operator()(uint64_t result, uint64_t a2)
{
  if (*a2)
  {
    v2 = *(result + 8);
    if (v2 == 1935886702)
    {
      v3 = 0;
    }

    else
    {
      if (v2 != 1935888245)
      {
        return result;
      }

      v3 = 1;
    }

    *(*a2 + 2676) = v3;
  }

  return result;
}

__n128 std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::SetOccluderIsStatic(Phase::Handle64,BOOL)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::SetOccluderIsStatic(Phase::Handle64,BOOL)::$_0>,void ()(Phase::Geometry::System *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D32B78;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::SetOccluderIsStatic(Phase::Handle64,BOOL)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::SetOccluderIsStatic(Phase::Handle64,BOOL)::$_0>,void ()(Phase::Geometry::System *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  if (*a2)
  {
    v4 = *(a1 + 8);
    *v8 = v2 + 1672;
    UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA = _ZN5Phase7details13SharedSlotMapINS_8Geometry6EntityENS_8Handle64EE13GetSlotToEditIRZNS_13SharedSlotMapIS3_S4_NS2_13EntityFactoryEE9GetUniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA_(v2 + 1672, v4, v8);
    if (UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA && (v6 = *UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA) != 0 && *v6 == 4)
    {
      *(v6 + 156) = *(a1 + 16);
    }

    else
    {
      v7 = **(Phase::Logger::GetInstance(UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA) + 848);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v8 = 136315394;
        *&v8[4] = "DispatcherGeometryClientDirect.mm";
        v9 = 1024;
        v10 = 852;
        _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Couldn't set isStatic on the occluder, geometry system doesn't have the occluder!", v8, 0x12u);
      }
    }
  }
}

void *std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingSource(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingSource(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::~__func(void *a1)
{
  *a1 = &unk_284D32BC0;
  std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

void std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingSource(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingSource(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::~__func(void *a1)
{
  *a1 = &unk_284D32BC0;
  std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingSource(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingSource(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_284D32BC0;
  a2[1] = v2;
  return std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>::__value_func[abi:ne200100]((a2 + 2), a1 + 16);
}

void std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingSource(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingSource(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>::~__value_func[abi:ne200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingSource(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingSource(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>::__value_func[abi:ne200100](v5, a1 + 16);
  Phase::SpatialModeler::DirectPathTransmissionDebugger::BeginTrackingSource(v2 + 8, v3, v5);
  return std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>::~__value_func[abi:ne200100](v5);
}

void sub_23A3A9948(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingSource(Phase::Handle64)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingSource(Phase::Handle64)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D32C08;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingSource(Phase::Handle64)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingSource(Phase::Handle64)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3.mData = *(a1 + 8);
  return Phase::SpatialModeler::DirectPathTransmissionDebugger::EndTrackingSource((v2 + 8), v3);
}

void *std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingAudibleGeometry(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingAudibleGeometry(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::~__func(void *a1)
{
  *a1 = &unk_284D32C50;
  std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

void std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingAudibleGeometry(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingAudibleGeometry(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::~__func(void *a1)
{
  *a1 = &unk_284D32C50;
  std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingAudibleGeometry(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingAudibleGeometry(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_284D32C50;
  a2[1] = v2;
  return std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>::__value_func[abi:ne200100]((a2 + 2), a1 + 16);
}

void std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingAudibleGeometry(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingAudibleGeometry(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>::~__value_func[abi:ne200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingAudibleGeometry(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingAudibleGeometry(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>::__value_func[abi:ne200100](v5, a1 + 16);
  Phase::SpatialModeler::DirectPathTransmissionDebugger::BeginTrackingAudibleGeometry(v2 + 8, v3, v5);
  return std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>::~__value_func[abi:ne200100](v5);
}

void sub_23A3A9CA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingAudibleGeometry(Phase::Handle64)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingAudibleGeometry(Phase::Handle64)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D32C98;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingAudibleGeometry(Phase::Handle64)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingAudibleGeometry(Phase::Handle64)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3.mData = *(a1 + 8);
  return Phase::SpatialModeler::DirectPathTransmissionDebugger::EndTrackingAudibleGeometry((v2 + 8), v3);
}

uint64_t std::__function::__value_func<void ()(unsigned int,void const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::GetShapeInfo(Phase::Handle64,std::function<void ()(unsigned int,void const*)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::GetShapeInfo(Phase::Handle64,std::function<void ()(unsigned int,void const*)>)::$_0>,void ()(Phase::Geometry::System *)>::~__func(void *a1)
{
  *a1 = &unk_284D32CE0;
  std::__function::__value_func<void ()(unsigned int,void const*)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

void std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::GetShapeInfo(Phase::Handle64,std::function<void ()(unsigned int,void const*)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::GetShapeInfo(Phase::Handle64,std::function<void ()(unsigned int,void const*)>)::$_0>,void ()(Phase::Geometry::System *)>::~__func(void *a1)
{
  *a1 = &unk_284D32CE0;
  std::__function::__value_func<void ()(unsigned int,void const*)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::GetShapeInfo(Phase::Handle64,std::function<void ()(unsigned int,void const*)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::GetShapeInfo(Phase::Handle64,std::function<void ()(unsigned int,void const*)>)::$_0>,void ()(Phase::Geometry::System *)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_284D32CE0;
  a2[1] = v2;
  return std::__function::__value_func<void ()(unsigned int,void const*)>::__value_func[abi:ne200100]((a2 + 2), a1 + 16);
}

void std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::GetShapeInfo(Phase::Handle64,std::function<void ()(unsigned int,void const*)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::GetShapeInfo(Phase::Handle64,std::function<void ()(unsigned int,void const*)>)::$_0>,void ()(Phase::Geometry::System *)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int,void const*)>::~__value_func[abi:ne200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::GetShapeInfo(Phase::Handle64,std::function<void ()(unsigned int,void const*)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::GetShapeInfo(Phase::Handle64,std::function<void ()(unsigned int,void const*)>)::$_0>,void ()(Phase::Geometry::System *)>::operator()(uint64_t result, uint64_t *a2)
{
  v11[5] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  if (*a2)
  {
    v3 = result;
    v4 = *(result + 8);
    if (*(v2 + 1440) > v4)
    {
      v5 = *(v2 + 1424) + 24 * v4;
      if (*(v5 + 20) == HIDWORD(v4))
      {
        v6 = *v5;
        if (*v5)
        {
          if (*v6 == 2)
          {
            Phase::Geometry::GetVoxelTreeDebugInfo(*v5, &v10);
            v7 = *(v3 + 40);
            v9 = *v6;
            v8 = &v10;
            if (!v7)
            {
              std::__throw_bad_function_call[abi:ne200100]();
            }

            (*(*v7 + 48))(v7, &v9, &v8);
            std::unique_ptr<Phase::Geometry::VoxelTreeDebugInfo::VoxelSubtreeDebugInfo [],std::function<void ()(void *)>>::reset[abi:ne200100](&v10);
            return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v11);
          }
        }
      }
    }
  }

  return result;
}

uint64_t *std::unique_ptr<Phase::Geometry::VoxelTreeDebugInfo::VoxelSubtreeDebugInfo [],std::function<void ()(void *)>>::reset[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return std::function<void ()(void *)>::operator()((result + 1), v1);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(unsigned long,Phase::Vector<unsigned short,3ul> *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::GetVoxels(Phase::Handle64,unsigned long,unsigned long,std::function<void ()(unsigned long,Phase::Vector<unsigned short,3ul> *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::GetVoxels(Phase::Handle64,unsigned long,unsigned long,std::function<void ()(unsigned long,Phase::Vector<unsigned short,3ul> *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::~__func(void *a1)
{
  *a1 = &unk_284D32D28;
  std::__function::__value_func<void ()(unsigned long,Phase::Vector<unsigned short,3ul> *)>::~__value_func[abi:ne200100]((a1 + 4));
  return a1;
}

void std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::GetVoxels(Phase::Handle64,unsigned long,unsigned long,std::function<void ()(unsigned long,Phase::Vector<unsigned short,3ul> *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::GetVoxels(Phase::Handle64,unsigned long,unsigned long,std::function<void ()(unsigned long,Phase::Vector<unsigned short,3ul> *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::~__func(void *a1)
{
  *a1 = &unk_284D32D28;
  std::__function::__value_func<void ()(unsigned long,Phase::Vector<unsigned short,3ul> *)>::~__value_func[abi:ne200100]((a1 + 4));

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::GetVoxels(Phase::Handle64,unsigned long,unsigned long,std::function<void ()(unsigned long,Phase::Vector<unsigned short,3ul> *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::GetVoxels(Phase::Handle64,unsigned long,unsigned long,std::function<void ()(unsigned long,Phase::Vector<unsigned short,3ul> *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D32D28;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return std::__function::__value_func<void ()(unsigned long,Phase::Vector<unsigned short,3ul> *)>::__value_func[abi:ne200100](a2 + 32, a1 + 32);
}

void std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::GetVoxels(Phase::Handle64,unsigned long,unsigned long,std::function<void ()(unsigned long,Phase::Vector<unsigned short,3ul> *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::GetVoxels(Phase::Handle64,unsigned long,unsigned long,std::function<void ()(unsigned long,Phase::Vector<unsigned short,3ul> *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned long,Phase::Vector<unsigned short,3ul> *)>::~__value_func[abi:ne200100](a1 + 32);

  operator delete(a1);
}

void std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::GetVoxels(Phase::Handle64,unsigned long,unsigned long,std::function<void ()(unsigned long,Phase::Vector<unsigned short,3ul> *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::GetVoxels(Phase::Handle64,unsigned long,unsigned long,std::function<void ()(unsigned long,Phase::Vector<unsigned short,3ul> *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::operator()(void *a1, Phase::Logger ****a2)
{
  Phase::Geometry::ShapeDebugger::GetVoxels(*a2, a1[1], a1[2], a1[3], &v4);
  v3 = a1[7];
  v7 = __p;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - __p) >> 1);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(v3, &v8, &v7);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

void sub_23A3AA400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingRayTraceIntersections(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingRayTraceIntersections(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::~__func(void *a1)
{
  *a1 = &unk_284D32D70;
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

void std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingRayTraceIntersections(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingRayTraceIntersections(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::~__func(void *a1)
{
  *a1 = &unk_284D32D70;
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingRayTraceIntersections(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingRayTraceIntersections(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_284D32D70;
  a2[1] = v2;
  return std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::__value_func[abi:ne200100]((a2 + 2), a1 + 16);
}

void std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingRayTraceIntersections(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingRayTraceIntersections(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingRayTraceIntersections(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingRayTraceIntersections(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::__value_func[abi:ne200100](v5, a1 + 16);
  Phase::SpatialModeler::RoomSimulationDebugger::BeginTrackingIntersections(v2 + 40, v3, v5);
  return std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](v5);
}

void sub_23A3AA6CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingRayTraceIntersections(Phase::Handle64)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingRayTraceIntersections(Phase::Handle64)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D32DB8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingRayTraceIntersections(Phase::Handle64)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingRayTraceIntersections(Phase::Handle64)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3.mData = *(a1 + 8);
  return Phase::SpatialModeler::RoomSimulationDebugger::EndTrackingIntersections((v2 + 40), v3);
}

void *std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingEnergyHistogram(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingEnergyHistogram(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::~__func(void *a1)
{
  *a1 = &unk_284D32E00;
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

void std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingEnergyHistogram(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingEnergyHistogram(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::~__func(void *a1)
{
  *a1 = &unk_284D32E00;
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingEnergyHistogram(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingEnergyHistogram(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_284D32E00;
  a2[1] = v2;
  return std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::__value_func[abi:ne200100]((a2 + 2), a1 + 16);
}

void std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingEnergyHistogram(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingEnergyHistogram(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingEnergyHistogram(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingEnergyHistogram(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::__value_func[abi:ne200100](v5, a1 + 16);
  Phase::SpatialModeler::RoomSimulationDebugger::BeginTrackingEnergyHistogram(v2 + 40, v3, v5);
  return std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](v5);
}

void sub_23A3AAA2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingEnergyHistogram(Phase::Handle64)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingEnergyHistogram(Phase::Handle64)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D32E48;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingEnergyHistogram(Phase::Handle64)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingEnergyHistogram(Phase::Handle64)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3.mData = *(a1 + 8);
  return Phase::SpatialModeler::RoomSimulationDebugger::EndTrackingEnergyHistogram((v2 + 40), v3);
}

void *std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingImageSourceLocations(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingImageSourceLocations(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::~__func(void *a1)
{
  *a1 = &unk_284D32E90;
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

void std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingImageSourceLocations(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingImageSourceLocations(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::~__func(void *a1)
{
  *a1 = &unk_284D32E90;
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingImageSourceLocations(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingImageSourceLocations(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_284D32E90;
  a2[1] = v2;
  return std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::__value_func[abi:ne200100]((a2 + 2), a1 + 16);
}

void std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingImageSourceLocations(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingImageSourceLocations(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingImageSourceLocations(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingImageSourceLocations(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::__value_func[abi:ne200100](v5, a1 + 16);
  Phase::SpatialModeler::RoomSimulationDebugger::BeginTrackingImageSourceLocations(v2 + 40, v3, v5);
  return std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](v5);
}

void sub_23A3AAD0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingImageSourceLocations(Phase::Handle64)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingImageSourceLocations(Phase::Handle64)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D32ED8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingImageSourceLocations(Phase::Handle64)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingImageSourceLocations(Phase::Handle64)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3.mData = *(a1 + 8);
  return Phase::SpatialModeler::RoomSimulationDebugger::EndTrackingImageSourceLocations((v2 + 40), v3);
}

void *std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingListenerEarlyResponseMetadata(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingListenerEarlyResponseMetadata(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::~__func(void *a1)
{
  *a1 = &unk_284D32F20;
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

void std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingListenerEarlyResponseMetadata(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingListenerEarlyResponseMetadata(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::~__func(void *a1)
{
  *a1 = &unk_284D32F20;
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingListenerEarlyResponseMetadata(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingListenerEarlyResponseMetadata(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_284D32F20;
  a2[1] = v2;
  return std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::__value_func[abi:ne200100]((a2 + 2), a1 + 16);
}

void std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingListenerEarlyResponseMetadata(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingListenerEarlyResponseMetadata(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingListenerEarlyResponseMetadata(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingListenerEarlyResponseMetadata(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::__value_func[abi:ne200100](v5, a1 + 16);
  Phase::SpatialModeler::RoomSimulationDebugger::BeginTrackingListenerEarlyResponseMetadata(v2 + 40, v3, v5);
  return std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](v5);
}

void sub_23A3AAFEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingListenerEarlyResponseMetadata(Phase::Handle64)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingListenerEarlyResponseMetadata(Phase::Handle64)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D32F68;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingListenerEarlyResponseMetadata(Phase::Handle64)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingListenerEarlyResponseMetadata(Phase::Handle64)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3.mData = *(a1 + 8);
  return Phase::SpatialModeler::RoomSimulationDebugger::EndTrackingListenerEarlyResponseMetadata((v2 + 40), v3);
}

void *std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingListenerLateReverbMetadata(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingListenerLateReverbMetadata(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::~__func(void *a1)
{
  *a1 = &unk_284D32FB0;
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

void std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingListenerLateReverbMetadata(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingListenerLateReverbMetadata(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::~__func(void *a1)
{
  *a1 = &unk_284D32FB0;
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingListenerLateReverbMetadata(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingListenerLateReverbMetadata(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_284D32FB0;
  a2[1] = v2;
  return std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::__value_func[abi:ne200100]((a2 + 2), a1 + 16);
}

void std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingListenerLateReverbMetadata(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingListenerLateReverbMetadata(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingListenerLateReverbMetadata(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingListenerLateReverbMetadata(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::__value_func[abi:ne200100](v5, a1 + 16);
  Phase::SpatialModeler::RoomSimulationDebugger::BeginTrackingListenerLateReverbMetadata(v2 + 40, v3, v5);
  return std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](v5);
}

void sub_23A3AB2CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingListenerLateReverbMetadata(Phase::Handle64)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingListenerLateReverbMetadata(Phase::Handle64)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D32FF8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingListenerLateReverbMetadata(Phase::Handle64)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingListenerLateReverbMetadata(Phase::Handle64)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3.mData = *(a1 + 8);
  return Phase::SpatialModeler::RoomSimulationDebugger::EndTrackingListenerLateReverbMetadata((v2 + 40), v3);
}

void *std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingRoomData(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingRoomData(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::~__func(void *a1)
{
  *a1 = &unk_284D33040;
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

void std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingRoomData(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingRoomData(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::~__func(void *a1)
{
  *a1 = &unk_284D33040;
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingRoomData(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingRoomData(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_284D33040;
  a2[1] = v2;
  return std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::__value_func[abi:ne200100]((a2 + 2), a1 + 16);
}

void std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingRoomData(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingRoomData(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingRoomData(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingRoomData(Phase::Handle64,std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::__value_func[abi:ne200100](v5, a1 + 16);
  Phase::SpatialModeler::RoomSimulationDebugger::BeginTrackingRoomData(v2 + 40, v3, v5);
  return std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](v5);
}

void sub_23A3AB5AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingRoomData(Phase::Handle64)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingRoomData(Phase::Handle64)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D33088;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingRoomData(Phase::Handle64)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingRoomData(Phase::Handle64)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3.mData = *(a1 + 8);
  return Phase::SpatialModeler::RoomSimulationDebugger::EndTrackingRoomData((v2 + 40), v3);
}

__n128 std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::SetRoomSimulationRuntimeDebugParameters(Phase::SpatialModeler::RoomSimulationDebugger::RuntimeDebugParameters)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::SetRoomSimulationRuntimeDebugParameters(Phase::SpatialModeler::RoomSimulationDebugger::RuntimeDebugParameters)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D330D0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<Phase::Dispatch::GeometryClientDirectDispatcher::SetRoomSimulationRuntimeDebugParameters(Phase::SpatialModeler::RoomSimulationDebugger::RuntimeDebugParameters)::$_0,std::allocator<Phase::Dispatch::GeometryClientDirectDispatcher::SetRoomSimulationRuntimeDebugParameters(Phase::SpatialModeler::RoomSimulationDebugger::RuntimeDebugParameters)::$_0>,void ()(Phase::Geometry::SystemDebugger *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  result = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  *(v2 + 88) = *(a1 + 56);
  *(v2 + 72) = v5;
  *(v2 + 56) = v4;
  *(v2 + 40) = result;
  return result;
}

uint64_t Phase::Dispatch::TransactionExecutor<Phase::Dispatch::MiscServerMessageType>::TransactionExecutor(uint64_t a1)
{
  *a1 = &unk_284D32120;
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

void *Phase::Dispatch::MiscClientDirectDispatcher::MiscClientDirectDispatcher(void *a1, Phase::Logger *a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_284D33140;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v7 = Phase::Controller::TaskManager::GetService<Phase::Controller::VoiceManager>(a2, 8);
  a1[1] = v7;
  if (!v7 || (a1[2] = a3) == 0)
  {
    std::terminate();
  }

  a1[3] = a4;
  return a1;
}

uint64_t Phase::Dispatch::MiscClientDirectDispatcher::GetGeometryPermutations@<X0>(Phase::Dispatch::MiscClientDirectDispatcher *this@<X0>, void *a2@<X8>)
{
  v2 = **(this + 1);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<Phase::Controller::GeometryPermutation>::__init_with_size[abi:ne200100]<Phase::Controller::GeometryPermutation*,Phase::Controller::GeometryPermutation*>(a2, *(v2 + 624), *(v2 + 632), 0xCCCCCCCCCCCCCCCDLL * ((*(v2 + 632) - *(v2 + 624)) >> 4));
}

uint64_t Phase::Dispatch::MiscClientDirectDispatcher::SetSpatialCategoryUpdateRate(unsigned __int8 ***a1, int a2, float a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = **(Phase::Logger::GetInstance(a1) + 864);
  v7 = a3;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315906;
    v10 = "DispatcherMiscClientDirect.mm";
    v11 = 1024;
    v12 = 43;
    v13 = 1024;
    v14 = a2;
    v15 = 2048;
    v16 = v7;
    _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting Spatial Category %d Update Rate: %f", &v9, 0x22u);
  }

  return Phase::Controller::VoiceManager::Implementation::SetSpatialCategoryUpdateRate(*a1[1], a2, v7);
}

uint64_t Phase::Dispatch::MiscClientDirectDispatcher::SetSpatialCategoryBandCount(unsigned __int8 ***a1, int a2, unint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = **(Phase::Logger::GetInstance(a1) + 864);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315906;
    v9 = "DispatcherMiscClientDirect.mm";
    v10 = 1024;
    v11 = 51;
    v12 = 1024;
    v13 = a2;
    v14 = 2048;
    v15 = a3;
    _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting Spatial Category %d Band Count: %zu", &v8, 0x22u);
  }

  return Phase::Controller::VoiceManager::Implementation::SetSpatialCategoryBandCount(*a1[1], a2, a3);
}

uint64_t Phase::Dispatch::MiscClientDirectDispatcher::SetSpatialCategoryMaxClusterCount(unsigned __int8 ***a1, int a2, unint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = **(Phase::Logger::GetInstance(a1) + 864);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315906;
    v9 = "DispatcherMiscClientDirect.mm";
    v10 = 1024;
    v11 = 62;
    v12 = 1024;
    v13 = a2;
    v14 = 2048;
    v15 = a3;
    _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting Spatial Category %d Max Cluster Count: %zu", &v8, 0x22u);
  }

  return Phase::Controller::VoiceManager::Implementation::SetSpatialCategoryMaxClusterCount(*a1[1], a2, a3);
}

void Phase::Dispatch::MiscClientDirectDispatcher::SetUnitsPerMeter(Phase::Dispatch::MiscClientDirectDispatcher *this, double a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = **(Phase::Logger::GetInstance(this) + 864);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315650;
    v6 = "DispatcherMiscClientDirect.mm";
    v7 = 1024;
    v8 = 70;
    v9 = 2048;
    v10 = a2;
    _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting Units Per Meter: %f", &v5, 0x1Cu);
  }

  Phase::Controller::SubmixSystem::SetUnitsPerMeter((**(this + 1) + 224), a2);
}

uint64_t Phase::Dispatch::MiscClientDirectDispatcher::SetProfileOverride(Phase::Dispatch::MiscClientDirectDispatcher *this, uint64_t a2, double a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = *(this + 2);
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

  *v7 = &unk_284D331B8;
  *(v7 + 8) = v5;
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v6, 32);
  atomic_store(0, (v6 + 40));
  return result;
}

void sub_23A3ABF88(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A3ABE9CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Dispatch::MiscClientDirectDispatcher::ClearProfileOverride(Phase::Dispatch::MiscClientDirectDispatcher *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *(this + 2);
  v2 = **(v1 + 8);
  v10 = 0;
  v9 = 1;
  v3 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v2, 16, &v10, &v9);
  if (!v3)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v7 = **(v2 + 48);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "CommandQueue.hpp";
      v13 = 1024;
      v14 = 100;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v9)
  {
    v4 = **(v2 + 48);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v12 = "CommandQueue.hpp";
      v13 = 1024;
      v14 = 89;
      v15 = 2048;
      v16 = v10;
      v17 = 2048;
      v18 = 16;
      _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v3 = &unk_284D331E0;
  v3[1] = v1;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v2, 16);
  atomic_store(0, (v2 + 40));
  return result;
}

void sub_23A3AC1E8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A3AC104);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A3AC548(_Unwind_Exception *a1)
{
  v8 = v5;
  MEMORY[0x23EE864A0](v8, 0x1010C40A79CA2DELL);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>>>::~__hash_table(v7 + 240);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long)>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long)>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long)>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long)>>>>::~__hash_table(v7 + 184);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v6);
  v10 = v2[43];
  if (v10)
  {
    v2[44] = v10;
    operator delete(v10);
  }

  v11 = v2[40];
  if (v11)
  {
    v2[41] = v11;
    operator delete(v11);
  }

  v12 = v2[37];
  if (v12)
  {
    v2[38] = v12;
    operator delete(v12);
  }

  v13 = v2[34];
  if (v13)
  {
    v2[35] = v13;
    operator delete(v13);
  }

  std::deque<Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand>::~deque[abi:ne200100](v7);
  Phase::LockFreeQueueSPSC::~LockFreeQueueSPSC(v4);
  Phase::LockFreeQueueSPSC::~LockFreeQueueSPSC(v3);
  std::deque<double>::~deque[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void Phase::Controller::DVM23::DspVoiceManager23::~DspVoiceManager23(void **this)
{
  free(this[10]);
  if (*this)
  {
    (*(**this + 8))(*this);
  }

  v2 = this[22];
  if (v2)
  {
    v3 = std::__hash_table<std::__hash_value_type<Phase::DspLayer23::KernelType,std::unique_ptr<Phase::Controller::VoicePoolEntry const>>,std::__unordered_map_hasher<Phase::DspLayer23::KernelType,std::__hash_value_type<Phase::DspLayer23::KernelType,std::unique_ptr<Phase::Controller::VoicePoolEntry const>>,std::hash<Phase::DspLayer23::KernelType>,std::equal_to<Phase::DspLayer23::KernelType>,true>,std::__unordered_map_equal<Phase::DspLayer23::KernelType,std::__hash_value_type<Phase::DspLayer23::KernelType,std::unique_ptr<Phase::Controller::VoicePoolEntry const>>,std::equal_to<Phase::DspLayer23::KernelType>,std::hash<Phase::DspLayer23::KernelType>,true>,std::allocator<std::__hash_value_type<Phase::DspLayer23::KernelType,std::unique_ptr<Phase::Controller::VoicePoolEntry const>>>>::~__hash_table(v2);
    MEMORY[0x23EE864A0](v3, 0x10A0C408EF24B1CLL);
  }

  v4 = this[21];
  if (v4)
  {
    free(v4[17]);
    MEMORY[0x23EE864A0](v4, 0x1070C402DE1326DLL);
  }

  v5 = this[2];
  v6 = this[3];
  if (v6 == v5)
  {
    v7 = this + 6;
    v6 = this[2];
  }

  else
  {
    v7 = this + 6;
    v8 = this[5];
    v9 = &v5[v8 >> 9];
    v10 = *v9;
    v11 = (*v9 + 8 * (v8 & 0x1FF));
    v12 = *(v5 + (((this[6] + v8) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((this[6] + v8) & 0x1FF);
    if (v11 != v12)
    {
      do
      {
        if (*v11)
        {
          Phase::Controller::DVM23::DvmVoicePool::~DvmVoicePool(*v11);
          MEMORY[0x23EE864A0]();
          v10 = *v9;
        }

        if (++v11 - v10 == 4096)
        {
          v13 = v9[1];
          ++v9;
          v10 = v13;
          v11 = v13;
        }
      }

      while (v11 != v12);
      v5 = this[2];
      v6 = this[3];
    }
  }

  *v7 = 0;
  v14 = v6 - v5;
  if (v14 >= 3)
  {
    do
    {
      operator delete(*v5);
      v15 = this[3];
      v5 = (this[2] + 8);
      this[2] = v5;
      v14 = (v15 - v5) >> 3;
    }

    while (v14 > 2);
  }

  if (v14 == 1)
  {
    v16 = 256;
  }

  else
  {
    if (v14 != 2)
    {
      goto LABEL_23;
    }

    v16 = 512;
  }

  this[5] = v16;
LABEL_23:
  for (i = this[48]; i; i = *i)
  {
    v18 = i[3];
    if (v18)
    {
      Phase::Controller::DVM23::DvmVoicePool::~DvmVoicePool(v18);
      MEMORY[0x23EE864A0]();
    }
  }

  std::__hash_table<std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::Parameter<double>>>>::clear(this + 46);
  v19 = this[23];
  if (v19)
  {
    Phase::DspLayer23::VoiceEngine::~VoiceEngine(v19);
    MEMORY[0x23EE864A0]();
  }

  v20 = this[63];
  if (v20)
  {
    free(v20[2]);
    MEMORY[0x23EE864A0](v20, 0x1010C40A79CA2DELL);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>>>::~__hash_table((this + 58));
  std::__hash_table<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long)>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long)>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long)>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long)>>>>::~__hash_table((this + 51));
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table((this + 46));
  v21 = this[43];
  if (v21)
  {
    this[44] = v21;
    operator delete(v21);
  }

  v22 = this[40];
  if (v22)
  {
    this[41] = v22;
    operator delete(v22);
  }

  v23 = this[37];
  if (v23)
  {
    this[38] = v23;
    operator delete(v23);
  }

  v24 = this[34];
  if (v24)
  {
    this[35] = v24;
    operator delete(v24);
  }

  std::deque<Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand>::~deque[abi:ne200100]((this + 28));
  Phase::LockFreeQueueSPSC::~LockFreeQueueSPSC(this + 16);
  Phase::LockFreeQueueSPSC::~LockFreeQueueSPSC(this + 11);
  std::deque<double>::~deque[abi:ne200100]((this + 1));
}

double Phase::Controller::DVM23::DspVoiceManager23::Reset(Phase::Controller::DVM23::DspVoiceManager23 *this)
{
  Phase::Controller::DVM_RT::Reset(*(this + 21));
  Phase::DspLayer23::VoiceEngine::Reset(*(this + 23));
  *(this + 35) = 0;
  *(this + 33) = 0;
  **(this + 19) = 0;
  *(this + 25) = 0;
  *(this + 23) = 0;
  **(this + 14) = 0;
  bzero(*(this + 10), 0x100000uLL);
  v2 = *(this + 10);
  *(this + 7) = v2;
  *(this + 4) = xmmword_23A555280;
  *v2 = xmmword_23A555290;
  *(v2 + 16) = 20;
  Phase::Controller::DVM23::VoiceGraph::Reset(*this);
  v3 = *(this + 2);
  v4 = *(this + 3);
  if (v4 == v3)
  {
    v5 = (this + 48);
    v4 = *(this + 2);
  }

  else
  {
    v5 = (this + 48);
    v6 = *(this + 5);
    v7 = &v3[v6 >> 9];
    v8 = *v7;
    v9 = (*v7 + 8 * (v6 & 0x1FF));
    v10 = *(v3 + (((*(this + 6) + v6) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 6) + v6) & 0x1FF);
    if (v9 != v10)
    {
      do
      {
        if (*v9)
        {
          Phase::Controller::DVM23::DvmVoicePool::~DvmVoicePool(*v9);
          MEMORY[0x23EE864A0]();
          v8 = *v7;
        }

        if (++v9 - v8 == 4096)
        {
          v11 = v7[1];
          ++v7;
          v8 = v11;
          v9 = v11;
        }
      }

      while (v9 != v10);
      v3 = *(this + 2);
      v4 = *(this + 3);
    }
  }

  *v5 = 0;
  v12 = v4 - v3;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v3);
      v13 = *(this + 3);
      v3 = (*(this + 2) + 8);
      *(this + 2) = v3;
      v12 = (v13 - v3) >> 3;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v14 = 256;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_17;
    }

    v14 = 512;
  }

  *(this + 5) = v14;
LABEL_17:
  for (i = *(this + 48); i; i = *i)
  {
    v16 = i[3];
    if (v16)
    {
      Phase::Controller::DVM23::DvmVoicePool::~DvmVoicePool(v16);
      MEMORY[0x23EE864A0]();
    }
  }

  std::__hash_table<std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::Parameter<double>>>>::clear(this + 46);
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 216) = 0;
  *(this + 28) = xmmword_23A555270;
  v17 = *(this + 29);
  v18 = *(this + 30);
  *(this + 33) = 0;
  v19 = (v18 - v17) >> 3;
  if (v19 >= 3)
  {
    do
    {
      operator delete(*v17);
      v20 = *(this + 30);
      v17 = (*(this + 29) + 8);
      *(this + 29) = v17;
      v19 = (v20 - v17) >> 3;
    }

    while (v19 > 2);
  }

  if (v19 == 1)
  {
    v21 = 51;
  }

  else
  {
    if (v19 != 2)
    {
      goto LABEL_28;
    }

    v21 = 102;
  }

  *(this + 32) = v21;
LABEL_28:
  *(this + 35) = *(this + 34);
  *(this + 38) = *(this + 37);
  *(this + 41) = *(this + 40);
  *(this + 44) = *(this + 43);
  if (*(this + 54))
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long)>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long)>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long)>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long)>>>>::__deallocate_node(*(this + 53));
    *(this + 53) = 0;
    v22 = *(this + 52);
    if (v22)
    {
      for (j = 0; j != v22; ++j)
      {
        *(*(this + 51) + 8 * j) = 0;
      }
    }

    *(this + 54) = 0;
  }

  if (*(this + 61))
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>>>::__deallocate_node(*(this + 60));
    *(this + 60) = 0;
    v24 = *(this + 59);
    if (v24)
    {
      for (k = 0; k != v24; ++k)
      {
        *(*(this + 58) + 8 * k) = 0;
      }
    }

    *(this + 61) = 0;
  }

  *(this + 71) = 0;
  *(this + 69) = 0;
  result = 0.0;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  return result;
}

uint64_t Phase::Controller::DVM23::DspVoiceManager23::IsGraphEmpty(Phase::Controller::DVM23::VoiceGraph **this)
{
  Graph = Phase::Controller::DVM23::VoiceGraph::GetGraph(*this);
  if (!Graph)
  {
    return 1;
  }

  return Phase::Controller::DVM23::VoiceGraph::IsEmpty(Graph);
}

uint64_t Phase::Controller::DVM23::DspVoiceManager23::AddVoice(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (!Phase::Controller::DVM23::VoiceGraph::GetGraph(*a1))
  {
    return 3;
  }

  v6 = *(a1 + 176);
  v9 = a3;
  v7 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>>>::find<unsigned long long>(v6, &v9);
  if (!v7 || !v7[3])
  {
    return 5;
  }

  if (!Phase::Controller::DVM23::VoiceGraph::GetVoice(*a1, *a2))
  {
    operator new();
  }

  return 2;
}

uint64_t Phase::Controller::DVM23::DspVoiceManager23::RemoveVoice(Phase::Controller::DVM23::VoiceGraph **this, uint64_t a2)
{
  Voice = Phase::Controller::DVM23::VoiceGraph::GetVoice(*this, a2);
  if (!Voice)
  {
    return 1;
  }

  v3 = Voice;
  v4 = *(Voice + 88);
  if (v4)
  {
    v5 = v4 == 7;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && (v4 != 6 || *(Voice + 80)))
  {
    return 6;
  }

  Phase::Controller::DVM23::VoiceGraph::RemoveNode(*(Voice + 56), Voice);
  (*(*v3 + 8))(v3);
  return 0;
}

uint64_t Phase::Controller::DVM23::DspVoiceManager23::AddGraph(Phase::Controller::DVM23::VoiceGraph **this, unint64_t *a2, unint64_t a3, int a4, int a5, const char *a6)
{
  Graph = Phase::Controller::DVM23::VoiceGraph::GetGraph(*this);
  if (!Graph)
  {
    return 3;
  }

  if (!Phase::Controller::DVM23::VoiceGraph::GetGraph(Graph))
  {
    operator new();
  }

  return 4;
}

uint64_t Phase::Controller::DVM23::DspVoiceManager23::RemoveGraph(Phase::Controller::DVM23::VoiceGraph **this)
{
  v11 = *MEMORY[0x277D85DE8];
  Graph = Phase::Controller::DVM23::VoiceGraph::GetGraph(*this);
  if (!Graph)
  {
    return 3;
  }

  v3 = Graph;
  v7 = &unk_284D33208;
  v8 = this;
  v10 = &v7;
  v4 = (*(*Graph + 56))(Graph, &v7);
  std::__function::__value_func<BOOL ()(Phase::Controller::DVM23::Voice *)>::~__value_func[abi:ne200100](&v7);
  if (!v4)
  {
    return 6;
  }

  v5 = this[26];
  v7 = &unk_284D33250;
  v8 = v5;
  v9 = this;
  v10 = &v7;
  ((*v3)[7])(v3, &v7);
  std::__function::__value_func<BOOL ()(Phase::Controller::DVM23::Voice *)>::~__value_func[abi:ne200100](&v7);
  Phase::Controller::DVM23::VoiceGraph::RemoveNode(v3[7], v3);
  ((*v3)[1])(v3);
  return 0;
}

uint64_t Phase::Controller::DVM23::DspVoiceManager23::AddConnection(int64x2_t *this, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (this[13].i8[8])
  {
    return 12;
  }

  v10 = (*(*this->i64[0] + 80))(this->i64[0]);
  v11 = (*(*this->i64[0] + 80))(this->i64[0], a4);
  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    return 9;
  }

  v13 = v11;
  v14 = *(v10 + 7);
  v15 = *(v13 + 7);
  if (v14 == v15)
  {
    if (v10 == v13)
    {
      if ((*(*v10 + 16))(v10) == 0xFFFFFFFFFFFFFFCLL && Phase::Controller::DVM23::VoiceGraph::AddConnection(v10, *(*(v10 + 9) + 8 * a3), 0, *(*(v10 + 12) + 8 * a5), 0))
      {
        Phase::Controller::DVM23::VoiceNode::InputVoiceConnections(v10, a3, v26);
        v24 = v26[0];
        Phase::Controller::DVM23::VoiceNode::OutputVoiceConnections(v13, a5, v26);
        goto LABEL_23;
      }
    }

    else if (Phase::Controller::DVM23::VoiceGraph::AddConnection(v14, v10, a3, v13, a5))
    {
      Phase::Controller::DVM23::VoiceNode::TailVoiceConnections(v10, a3, v26);
      v24 = v26[0];
      Phase::Controller::DVM23::VoiceNode::HeadVoiceConnections(v13, a5, v26);
      goto LABEL_23;
    }

    return 9;
  }

  if (v10 == v15)
  {
    if (Phase::Controller::DVM23::VoiceGraph::AddConnectionFromGraphInput(v10, a3, v13, a5))
    {
      Phase::Controller::DVM23::VoiceNode::InputVoiceConnections(v10, a3, v26);
      v24 = v26[0];
      Phase::Controller::DVM23::VoiceNode::HeadVoiceConnections(v13, a5, v26);
      goto LABEL_23;
    }

    return 9;
  }

  if (v13 != v14 || !Phase::Controller::DVM23::VoiceGraph::AddConnectionToGraphOutput(v13, a5, v10, a3))
  {
    return 9;
  }

  Phase::Controller::DVM23::VoiceNode::TailVoiceConnections(v10, a3, v26);
  v24 = v26[0];
  Phase::Controller::DVM23::VoiceNode::OutputVoiceConnections(v13, a5, v26);
LABEL_23:
  v25 = v26[0];
  if (v24 != *(&v24 + 1))
  {
    v16 = v24;
    do
    {
      for (i = v25; i != *(&v25 + 1); i += 4)
      {
        v18 = *v16;
        v19 = *(*v16 + 88);
        if (v19)
        {
          v20 = v19 == 7;
        }

        else
        {
          v20 = 1;
        }

        if (!v20 && (v19 != 6 || *(v18 + 10)))
        {
          v21 = *i;
          v22 = *(*i + 88);
          v23 = !v22 || v22 == 7;
          if (!v23 && (v22 != 6 || *(v21 + 10)))
          {
            Phase::Controller::DVM23::DspVoiceManager23::RegisterConnectionCommand(this, v18, v16[2], v21, i[2]);
          }
        }
      }

      v16 += 4;
    }

    while (v16 != *(&v24 + 1));
  }

  if (v25)
  {
    operator delete(v25);
  }

  if (v24)
  {
    operator delete(v24);
  }

  return 0;
}

void sub_23A3AD3C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

int64x2_t *Phase::Controller::DVM23::DspVoiceManager23::RegisterConnectionCommand(int64x2_t *this, Phase::Controller::DVM23::Voice *a2, int a3, Phase::Controller::DVM23::Voice *a4, int a5)
{
  v28 = a2;
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v5 = this[16].u64[0];
  v6 = v5 + this[16].i64[1];
  v7 = this[14].i64[1];
  v8 = this[15].i64[0];
  v9 = (v7 + 8 * (v6 / 0x66));
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = *v9 + 40 * (v6 % 0x66);
  }

  v11 = v5 / 0x66;
  v12 = v5 % 0x66;
  while (1)
  {
    if (v8 == v7)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v7 + 8 * v11) + 40 * v12;
    }

    if (v13 == v10)
    {
      v24 = 1;
      return std::deque<Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand>::emplace_back<BOOL,Phase::Controller::DVM23::Voice *&,int &,Phase::Controller::DVM23::Voice *&,int &>(this[14].i64, &v24, &v28, &v27, &v26, &v25);
    }

    v14 = *v9;
    if (v10 == *v9)
    {
      break;
    }

    if (*(v10 - 32) == a2 && *(v10 - 24) == a3 && *(v10 - 16) == a4 && *(v10 - 8) == a5)
    {
      v16 = v10;
      goto LABEL_24;
    }

LABEL_20:
    v10 -= 40;
  }

  v15 = *(v9 - 1);
  if (*(v15 + 4048) != a2 || *(v15 + 4056) != a3 || *(v15 + 4064) != a4 || *(v15 + 4072) != a5)
  {
    v10 = v15 + 4080;
    --v9;
    goto LABEL_20;
  }

  v16 = v15 + 4080;
  v14 = v10;
LABEL_24:
  if ((*(v16 - 40) & 1) == 0)
  {
    v17 = v10 - v14;
    v18 = 0xCCCCCCCCCCCCCCCDLL * (v17 >> 3);
    if (v17 < 41)
    {
      v22 = 102 - v18;
      v20 = &v9[-(v22 / 0x66)];
      v21 = (*v20 + 40 * (102 * (v22 / 0x66) - v22) + 4040);
    }

    else
    {
      v19 = v18 - 1;
      v20 = &v9[v19 / 0x66];
      v21 = (*v20 + 40 * (v19 % 0x66));
    }

    v23 = this + 14;

    return std::deque<Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand>::erase(v23, v20, v21);
  }

  return this;
}

uint64_t Phase::Controller::DVM23::DspVoiceManager23::RemoveConnection(int64x2_t *this, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (this[13].i8[8])
  {
    return 12;
  }

  v10 = (*(*this->i64[0] + 80))(this->i64[0]);
  v11 = (*(*this->i64[0] + 80))(this->i64[0], a4);
  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    return 9;
  }

  v13 = v11;
  v14 = *(v10 + 7);
  v15 = v13[7];
  if (v14 == v15)
  {
    if (v10 == v13)
    {
      if ((*(*v10 + 16))(v10) == 0xFFFFFFFFFFFFFFCLL && Phase::Controller::DVM23::VoiceGraph::RemovePassthroughConnection(v10, a3, a5))
      {
        Phase::Controller::DVM23::VoiceNode::InputVoiceConnections(v10, a3, &v50);
        *__p = v50;
        Phase::Controller::DVM23::VoiceNode::OutputVoiceConnections(v13, a5, &v50);
        goto LABEL_26;
      }
    }

    else
    {
      v16 = Phase::Controller::DVM23::GraphNode<Phase::Controller::DVM23::VoiceNode,Phase::Controller::DVM23::VoiceNodeConnection>::RemoveOutputConnection(v10, a3, v13, a5);
      v17 = Phase::Controller::DVM23::GraphNode<Phase::Controller::DVM23::VoiceNode,Phase::Controller::DVM23::VoiceNodeConnection>::RemoveInputConnection(v13, a5, v10, a3);
      if (v16)
      {
        v18 = v17 == 0;
      }

      else
      {
        v18 = 1;
      }

      if (!v18)
      {
        Phase::Controller::DVM23::VoiceNode::TailVoiceConnections(v10, a3, &v50);
        *__p = v50;
        Phase::Controller::DVM23::VoiceNode::HeadVoiceConnections(v13, a5, &v50);
        goto LABEL_26;
      }
    }

    return 9;
  }

  if (v10 == v15)
  {
    if (Phase::Controller::DVM23::VoiceGraph::RemoveConnectionFromGraphInput(v13[7], a3, v13, a5))
    {
      Phase::Controller::DVM23::VoiceNode::InputVoiceConnections(v10, a3, &v50);
      *__p = v50;
      Phase::Controller::DVM23::VoiceNode::HeadVoiceConnections(v13, a5, &v50);
      goto LABEL_26;
    }

    return 9;
  }

  if (v13 != v14 || !Phase::Controller::DVM23::VoiceGraph::RemoveConnectionFromGraphInput(v14, a5, v10, a3))
  {
    return 9;
  }

  Phase::Controller::DVM23::VoiceNode::TailVoiceConnections(v10, a3, &v50);
  *__p = v50;
  Phase::Controller::DVM23::VoiceNode::OutputVoiceConnections(v13, a5, &v50);
LABEL_26:
  v48 = v50;
  if (__p[0] == __p[1])
  {
    goto LABEL_75;
  }

  v19 = __p[0];
  do
  {
    v20 = v48;
    if (v48 == *(&v48 + 1))
    {
      goto LABEL_74;
    }

    do
    {
      v21 = *v19;
      v22 = *(*v19 + 88);
      if (v22)
      {
        v23 = v22 == 7;
      }

      else
      {
        v23 = 1;
      }

      if (v23 || v22 == 6 && !*(v21 + 80))
      {
        goto LABEL_43;
      }

      v24 = *v20;
      v25 = *(*v20 + 88);
      v26 = v25 > 7;
      v27 = (1 << v25) & 0xC1;
      v28 = v26 || v27 == 0;
      if (!v28 || v22 == 6)
      {
        goto LABEL_43;
      }

      v30 = v19[2];
      v31 = v20[2];
      *&v50 = *v19;
      v54 = v30;
      v53 = v24;
      v52 = v31;
      v32 = this[16].u64[0];
      v33 = v32 + this[16].i64[1];
      v34 = this[14].i64[1];
      v35 = this[15].i64[0];
      v36 = (v34 + 8 * (v33 / 0x66));
      if (v35 == v34)
      {
        v37 = 0;
      }

      else
      {
        v37 = *v36 + 40 * (v33 % 0x66);
      }

      v38 = v32 / 0x66;
      v39 = v32 % 0x66;
      while (1)
      {
        if (v35 == v34)
        {
          v40 = 0;
        }

        else
        {
          v40 = *(v34 + 8 * v38) + 40 * v39;
        }

        if (v40 == v37)
        {
          v51 = 0;
          std::deque<Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand>::emplace_back<BOOL,Phase::Controller::DVM23::Voice *&,int &,Phase::Controller::DVM23::Voice *&,int &>(this[14].i64, &v51, &v50, &v54, &v53, &v52);
          goto LABEL_43;
        }

        v41 = *v36;
        if (v37 == *v36)
        {
          break;
        }

        if (*(v37 - 40) == 1 && *(v37 - 32) == v21 && *(v37 - 24) == v30 && *(v37 - 16) == v24 && *(v37 - 8) == v31)
        {
          goto LABEL_70;
        }

LABEL_66:
        v37 -= 40;
      }

      v42 = *(v36 - 1);
      if ((*(v42 + 4040) & 1) == 0 || *(v42 + 4048) != v21 || *(v42 + 4056) != v30 || *(v42 + 4064) != v24 || *(v42 + 4072) != v31)
      {
        v37 = v42 + 4080;
        --v36;
        goto LABEL_66;
      }

      v41 = v37;
LABEL_70:
      v43 = 0xCCCCCCCCCCCCCCCDLL * ((v37 - v41) >> 3);
      if ((v37 - v41) < 41)
      {
        v47 = 102 - v43;
        v45 = &v36[-(v47 / 0x66)];
        v46 = (*v45 + 40 * (102 * (v47 / 0x66) - v47) + 4040);
      }

      else
      {
        v44 = v43 - 1;
        v45 = &v36[v44 / 0x66];
        v46 = (*v45 + 40 * (v44 % 0x66));
      }

      std::deque<Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand>::erase(this + 14, v45, v46);
LABEL_43:
      v20 += 4;
    }

    while (v20 != *(&v48 + 1));
LABEL_74:
    v19 += 4;
  }

  while (v19 != __p[1]);
LABEL_75:
  if (v48)
  {
    operator delete(v48);
  }

  result = __p[0];
  if (__p[0])
  {
    operator delete(__p[0]);
    return 0;
  }

  return result;
}

void sub_23A3ADADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::DVM23::DspVoiceManager23::SetVoicePlaystate(void *a1, uint64_t a2, unsigned int a3, int a4)
{
  v76 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 88);
  NextPlaystate = Phase::Controller::DVM23::GetNextPlaystate(v8, a3);
  if (NextPlaystate == 8)
  {
    v10 = *(a2 + 80);
    if (v10)
    {
      v11 = *(v10 + 40);
    }

    else
    {
      v11 = 0;
    }

    v17 = **(Phase::Logger::GetInstance(NextPlaystate) + 80);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = (*(*a2 + 16))(a2);
      v19 = Phase::DspLayer23::KernelTypeToString(v18);
      v20 = *(a2 + 64);
      v21 = Phase::Controller::DVM23::PlaystateToString(*(a2 + 88));
      if (a3 > 3)
      {
        v22 = "Unknown PlaystateCommand";
      }

      else
      {
        v22 = off_278B4F160[a3];
      }

      v62 = 136316674;
      v63 = "DspVoiceManager23.cpp";
      v64 = 1024;
      v65 = 634;
      v66 = 2080;
      v67 = v19;
      v68 = 2048;
      v69 = v11;
      v70 = 2048;
      v71 = v20;
      v72 = 2080;
      v73 = v21;
      v74 = 2080;
      v75 = v22;
      _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid Voice playstate change request: (%s)%p[%llx] %s -> %s", &v62, 0x44u);
    }

    return 7;
  }

  else
  {
    v12 = NextPlaystate;
    if (NextPlaystate == v8)
    {
      return 8;
    }

    else
    {
      *(a2 + 88) = NextPlaystate;
      v14 = a1[35];
      v15 = a1[36];
      if (v14 >= v15)
      {
        v23 = a1[34];
        v24 = v14 - v23;
        v25 = (v14 - v23) >> 4;
        v26 = v25 + 1;
        if ((v25 + 1) >> 60)
        {
          std::vector<Phase::Controller::DVM23::DspVoiceManager23::VoicePlaystateChange>::__throw_length_error[abi:ne200100]();
        }

        v27 = v15 - v23;
        if (v27 >> 3 > v26)
        {
          v26 = v27 >> 3;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF0)
        {
          v28 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v26;
        }

        if (v28)
        {
          if (!(v28 >> 60))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v29 = v25;
        v30 = 16 * v25;
        *v30 = a2;
        *(v30 + 8) = a3;
        *(v30 + 12) = a4;
        v16 = 16 * v25 + 16;
        v31 = (v30 - 16 * v29);
        memcpy(v31, v23, v24);
        a1[34] = v31;
        a1[35] = v16;
        a1[36] = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v14 = a2;
        v16 = v14 + 16;
        *(v14 + 8) = a3;
        *(v14 + 12) = a4;
      }

      a1[35] = v16;
      if (v12 == 1)
      {
        v32 = *(a2 + 120);
        if (v32)
        {
          v33 = a1[38];
          do
          {
            v34 = v32[2];
            v35 = v32[3];
            v36 = a1[39];
            if (v33 >= v36)
            {
              v37 = a1[37];
              v38 = v33 - v37;
              v39 = (v33 - v37) >> 5;
              v40 = v39 + 1;
              if ((v39 + 1) >> 59)
              {
                std::vector<Phase::Controller::DVM23::DspVoiceManager23::VoicePlaystateChange>::__throw_length_error[abi:ne200100]();
              }

              v41 = v36 - v37;
              if (v41 >> 4 > v40)
              {
                v40 = v41 >> 4;
              }

              if (v41 >= 0x7FFFFFFFFFFFFFE0)
              {
                v42 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v42 = v40;
              }

              if (v42)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::DVM23::DspVoiceManager23::VoiceParameterChange>>(v42);
              }

              v43 = v39;
              v44 = 32 * v39;
              *v44 = a2;
              *(v44 + 8) = v34;
              *(v44 + 16) = v35;
              *(v44 + 24) = a4;
              v33 = 32 * v39 + 32;
              v45 = (v44 - 32 * v43);
              memcpy(v45, v37, v38);
              v46 = a1[37];
              a1[37] = v45;
              a1[38] = v33;
              a1[39] = 0;
              if (v46)
              {
                operator delete(v46);
              }
            }

            else
            {
              *v33 = a2;
              *(v33 + 8) = v34;
              *(v33 + 16) = v35;
              *(v33 + 24) = a4;
              v33 += 32;
            }

            a1[38] = v33;
            v32 = *v32;
          }

          while (v32);
        }

        v47 = *(a2 + 160);
        if (v47)
        {
          v48 = a1[41];
          do
          {
            v49 = v47[2];
            v50 = v47[3];
            v51 = v47[4];
            v52 = a1[42];
            if (v48 >= v52)
            {
              v53 = a1[40];
              v54 = v48 - v53;
              v55 = 0xCCCCCCCCCCCCCCCDLL * ((v48 - v53) >> 3);
              v56 = v55 + 1;
              if (v55 + 1 > 0x666666666666666)
              {
                std::vector<Phase::Controller::DVM23::DspVoiceManager23::VoicePlaystateChange>::__throw_length_error[abi:ne200100]();
              }

              v57 = 0xCCCCCCCCCCCCCCCDLL * ((v52 - v53) >> 3);
              if (2 * v57 > v56)
              {
                v56 = 2 * v57;
              }

              if (v57 >= 0x333333333333333)
              {
                v58 = 0x666666666666666;
              }

              else
              {
                v58 = v56;
              }

              if (v58)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::DVM23::DspVoiceManager23::VoiceDataChange>>((a1 + 40), v58);
              }

              v59 = 40 * v55;
              *v59 = a2;
              *(v59 + 8) = v49;
              *(v59 + 16) = v50;
              *(v59 + 24) = v51;
              *(v59 + 32) = a4;
              v48 = 40 * v55 + 40;
              v60 = v59 - v54;
              memcpy((v59 - v54), v53, v54);
              v61 = a1[40];
              a1[40] = v60;
              a1[41] = v48;
              a1[42] = 0;
              if (v61)
              {
                operator delete(v61);
              }
            }

            else
            {
              *v48 = a2;
              *(v48 + 8) = v49;
              *(v48 + 16) = v50;
              *(v48 + 24) = v51;
              *(v48 + 32) = a4;
              v48 += 40;
            }

            a1[41] = v48;
            v47 = *v47;
          }

          while (v47);
        }
      }

      return 0;
    }
  }
}

const char *Phase::DspLayer23::KernelTypeToString(unint64_t a1)
{
  if (a1 > 0x25)
  {
    return "Unknown KernelType";
  }

  else
  {
    return off_278B4F180[a1];
  }
}

{
  if (a1 > 0x25)
  {
    return "Unknown KernelType";
  }

  else
  {
    return off_278B4F318[a1];
  }
}

{
  if (a1 > 0x25)
  {
    return "Unknown KernelType";
  }

  else
  {
    return off_278B4FF20[a1];
  }
}

uint64_t Phase::Controller::DVM23::DspVoiceManager23::SetVoicePlaystate(uint64_t a1, uint64_t a2, unsigned int a3, double a4)
{
  if (*(a1 + 216))
  {
    return 12;
  }

  Voice = Phase::Controller::DVM23::VoiceGraph::GetVoice(*a1, a2);
  if (!Voice)
  {
    return 1;
  }

  v9 = (*(*(a1 + 184) + 80) / 1000.0 * a4);

  return Phase::Controller::DVM23::DspVoiceManager23::SetVoicePlaystate(a1, Voice, a3, v9);
}

uint64_t Phase::Controller::DVM23::DspVoiceManager23::SetGraphPlaystate(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 216))
  {
    return 12;
  }

  if (!Phase::Controller::DVM23::VoiceGraph::GetGraph(*a1))
  {
    return 3;
  }

  if (Phase::Controller::DVM23::DspVoiceManager23::IsGraphPlaystateCommandValid(a1, a2, a3))
  {
    operator new();
  }

  return 7;
}

void sub_23A3AE268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(unsigned long long,Phase::Controller::DVM23::Playstate)>::~__value_func[abi:ne200100](v6 + 8);
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::DVM23::DspVoiceManager23::IsGraphPlaystateCommandValid(Phase::Controller::DVM23::VoiceGraph **a1, uint64_t a2, int a3)
{
  v10 = *MEMORY[0x277D85DE8];
  Graph = Phase::Controller::DVM23::VoiceGraph::GetGraph(*a1);
  if (!Graph)
  {
    return 0;
  }

  v7 = &unk_284D33328;
  v8 = a3;
  v9 = &v7;
  v5 = (*(*Graph + 56))(Graph, &v7);
  std::__function::__value_func<BOOL ()(Phase::Controller::DVM23::Voice *)>::~__value_func[abi:ne200100](&v7);
  return v5;
}

void sub_23A3AE36C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(Phase::Controller::DVM23::Voice *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t Phase::Controller::DVM23::DspVoiceManager23::RequestCallback(void *a1, int a2, uint64_t a3)
{
  v31[3] = *MEMORY[0x277D85DE8];
  v5 = a1[56];
  a1[56] = v5 + 1;
  v6 = a1[52];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v5;
    if (*&v6 <= v5)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(a1[51] + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != v5)
  {
    goto LABEL_17;
  }

  v12 = *(a3 + 24);
  if (v12)
  {
    if (v12 == a3)
    {
      v30 = &v29;
      (*(*v12 + 24))(v12, &v29);
    }

    else
    {
      v30 = (*(*v12 + 16))(v12);
    }
  }

  else
  {
    v30 = 0;
  }

  v13 = v10 + 3;
  if (&v29 != v10 + 3)
  {
    v14 = v30;
    v15 = v10[6];
    if (v30 == &v29)
    {
      if (v15 == v13)
      {
        (*(*v30 + 24))();
        (*(*v30 + 32))(v30);
        v30 = 0;
        (*(*v10[6] + 24))(v10[6], &v29);
        (*(*v10[6] + 32))(v10[6]);
        v10[6] = 0;
        v30 = &v29;
        (*(v31[0] + 24))(v31, v10 + 3);
        (*(v31[0] + 32))(v31);
      }

      else
      {
        (*(*v30 + 24))();
        (*(*v30 + 32))(v30);
        v30 = v10[6];
      }

      v10[6] = v13;
    }

    else if (v15 == v13)
    {
      (*(*v15 + 24))(v10[6], &v29);
      (*(*v10[6] + 32))(v10[6]);
      v10[6] = v30;
      v30 = &v29;
    }

    else
    {
      v30 = v10[6];
      v10[6] = v14;
    }
  }

  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](&v29);
  v16 = a1[44];
  v17 = a1[45];
  if (v16 >= v17)
  {
    v19 = a1[43];
    v20 = v16 - v19;
    v21 = (v16 - v19) >> 4;
    v22 = v21 + 1;
    if ((v21 + 1) >> 60)
    {
      std::vector<Phase::Controller::DVM23::DspVoiceManager23::VoicePlaystateChange>::__throw_length_error[abi:ne200100]();
    }

    v23 = v17 - v19;
    if (v23 >> 3 > v22)
    {
      v22 = v23 >> 3;
    }

    if (v23 >= 0x7FFFFFFFFFFFFFF0)
    {
      v22 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::DVM23::DspVoiceManager23::CallbackRequest>>((a1 + 43), v22);
    }

    v24 = v21;
    v25 = 16 * v21;
    *v25 = v5;
    *(v25 + 8) = a2;
    *(v25 + 12) = 0;
    v18 = 16 * v21 + 16;
    v26 = (v25 - 16 * v24);
    memcpy(v26, v19, v20);
    v27 = a1[43];
    a1[43] = v26;
    a1[44] = v18;
    a1[45] = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v16 = v5;
    *(v16 + 8) = a2;
    v18 = v16 + 16;
    *(v16 + 12) = 0;
  }

  a1[44] = v18;
  return v5;
}

void sub_23A3AEB3C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::DVM23::DspVoiceManager23::IsGraphPlaystateUniform(Phase::Controller::DVM23::VoiceGraph **a1, uint64_t a2, int a3)
{
  v10 = *MEMORY[0x277D85DE8];
  Graph = Phase::Controller::DVM23::VoiceGraph::GetGraph(*a1);
  if (!Graph)
  {
    return 0;
  }

  v7 = &unk_284D33370;
  v8 = a3;
  v9 = &v7;
  v5 = (*(*Graph + 56))(Graph, &v7);
  std::__function::__value_func<BOOL ()(Phase::Controller::DVM23::Voice *)>::~__value_func[abi:ne200100](&v7);
  return v5;
}

void sub_23A3AEC30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(Phase::Controller::DVM23::Voice *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::DVM23::DspVoiceManager23::IsGraphPlaystateTransitional(Phase::Controller::DVM23::VoiceGraph **this)
{
  v4[4] = *MEMORY[0x277D85DE8];
  Graph = Phase::Controller::DVM23::VoiceGraph::GetGraph(*this);
  if (!Graph)
  {
    return 0;
  }

  v4[0] = &unk_284D333B8;
  v4[3] = v4;
  v2 = (*(*Graph + 56))(Graph, v4) ^ 1;
  std::__function::__value_func<BOOL ()(Phase::Controller::DVM23::Voice *)>::~__value_func[abi:ne200100](v4);
  return v2;
}

void sub_23A3AED04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(Phase::Controller::DVM23::Voice *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::DVM23::DspVoiceManager23::SetVoiceParameter(Phase::Controller::DVM23::VoiceGraph **this, uint64_t a2, unint64_t a3, double a4)
{
  Voice = Phase::Controller::DVM23::VoiceGraph::GetVoice(*this, a2);
  if (!Voice)
  {
    return 1;
  }

  v8 = Voice;
  if (Voice[22] == 6)
  {
    return 0;
  }

  v10 = this[22];
  v30 = (*(*Voice + 16))(Voice);
  v11 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>>>::find<unsigned long long>(v10, &v30);
  if (v11)
  {
    v12 = v11[3];
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v12 + 144);
  if (v13 <= a3)
  {
    return 10;
  }

  v14 = *(v12 + 136);
  v15 = v14 + 56 * a3;
  if (*(v15 + 8) == a3)
  {
    goto LABEL_10;
  }

  if (v13 < 1)
  {
    return 10;
  }

  v15 = v14;
  result = 10;
  while (*(v15 + 8) != a3)
  {
    v15 += 56;
    if (!--v13)
    {
      return result;
    }
  }

LABEL_10:
  if (*(v15 + 32) > a4 || *(v15 + 40) < a4)
  {
    return 11;
  }

  v29 = a3;
  v30 = &v29;
  v16 = std::__hash_table<std::__hash_value_type<unsigned long long,double>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,double>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v8 + 13, &v29);
  result = 0;
  v16[3] = a4;
  v17 = v8[22];
  if (v17 && v17 != 7)
  {
    if (v17 == 6 && !*(v8 + 10))
    {
      return 0;
    }

    v18 = this[38];
    v19 = this[39];
    if (v18 >= v19)
    {
      v21 = this[37];
      v22 = v18 - v21;
      v23 = (v18 - v21) >> 5;
      v24 = v23 + 1;
      if ((v23 + 1) >> 59)
      {
        std::vector<Phase::Controller::DVM23::DspVoiceManager23::VoicePlaystateChange>::__throw_length_error[abi:ne200100]();
      }

      v25 = v19 - v21;
      if (v25 >> 4 > v24)
      {
        v24 = v25 >> 4;
      }

      if (v25 >= 0x7FFFFFFFFFFFFFE0)
      {
        v26 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v24;
      }

      if (v26)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::DVM23::DspVoiceManager23::VoiceParameterChange>>(v26);
      }

      v27 = 32 * v23;
      *v27 = v8;
      *(v27 + 8) = a3;
      *(v27 + 16) = a4;
      *(v27 + 24) = 0;
      v20 = 32 * v23 + 32;
      memcpy(0, v21, v22);
      v28 = this[37];
      this[37] = 0;
      this[38] = v20;
      this[39] = 0;
      if (v28)
      {
        operator delete(v28);
      }
    }

    else
    {
      *v18 = v8;
      *(v18 + 1) = a3;
      *(v18 + 2) = a4;
      v20 = v18 + 32;
      *(v18 + 6) = 0;
    }

    result = 0;
    this[38] = v20;
  }

  return result;
}

uint64_t Phase::Controller::DVM23::DspVoiceManager23::SetVoiceData(Phase::Controller::DVM23::VoiceGraph **this, uint64_t a2, unint64_t a3, void *a4, uint64_t a5)
{
  Voice = Phase::Controller::DVM23::VoiceGraph::GetVoice(*this, a2);
  if (!Voice)
  {
    return 1;
  }

  v10 = Voice;
  if (*(Voice + 88) == 6)
  {
    return 0;
  }

  v27[0] = a3;
  v27[2] = v27;
  v11 = std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<void *,unsigned long long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<void *,unsigned long long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<void *,unsigned long long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<void *,unsigned long long>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((Voice + 144), v27);
  v11[3] = a4;
  v11[4] = a5;
  v12 = *(v10 + 88);
  v13 = !v12 || v12 == 7;
  if (v13 || v12 == 6 && !*(v10 + 80))
  {
    return 0;
  }

  v15 = this[41];
  v16 = this[42];
  if (v15 >= v16)
  {
    v18 = 0x666666666666666;
    v19 = this[40];
    v20 = v15 - v19;
    v21 = 0xCCCCCCCCCCCCCCCDLL * ((v15 - v19) >> 3);
    v22 = v21 + 1;
    if (v21 + 1 > 0x666666666666666)
    {
      std::vector<Phase::Controller::DVM23::DspVoiceManager23::VoicePlaystateChange>::__throw_length_error[abi:ne200100]();
    }

    v23 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - v19) >> 3);
    if (2 * v23 > v22)
    {
      v22 = 2 * v23;
    }

    if (v23 < 0x333333333333333)
    {
      v18 = v22;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::DVM23::DspVoiceManager23::VoiceDataChange>>((this + 40), v18);
    }

    v24 = 40 * v21;
    *v24 = v10;
    *(v24 + 8) = a3;
    *(v24 + 16) = a4;
    *(v24 + 24) = a5;
    *(v24 + 32) = 0;
    v17 = 40 * v21 + 40;
    v25 = (40 * v21 - v20);
    memcpy(v25, v19, v20);
    v26 = this[40];
    this[40] = v25;
    this[41] = v17;
    this[42] = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v15 = v10;
    *(v15 + 1) = a3;
    *(v15 + 2) = a4;
    *(v15 + 3) = a5;
    v17 = v15 + 40;
    *(v15 + 8) = 0;
  }

  result = 0;
  this[41] = v17;
  return result;
}

double Phase::Controller::DVM23::DspVoiceManager23::GetTailDelayMs(Phase::Controller::DVM23::VoiceGraph **this)
{
  Graph = Phase::Controller::DVM23::VoiceGraph::GetGraph(*this);
  if (Graph)
  {
    return Phase::Controller::DVM23::VoiceGraph::CalculateDelayFrames(Graph, 0, *this) / (*(this[23] + 10) / 1000.0);
  }

  else
  {
    return 0.0;
  }
}

void *std::deque<Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand>::erase(int64x2_t *a1, void *a2, char *a3)
{
  v3 = a1;
  v4 = a1[2].u64[0];
  v5 = a1->i64[1];
  v6 = a1[1].i64[0];
  v7 = (v5 + 8 * (v4 / 0x66));
  if (v6 == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = *v7 + 40 * (v4 % 0x66);
  }

  if (a3 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 102 * (a2 - v7) - 0x3333333333333333 * (&a3[-*a2] >> 3) + 0x3333333333333333 * ((v8 - *v7) >> 3);
  }

  v54 = (v5 + 8 * (v4 / 0x66));
  v55 = v8;
  std::__deque_iterator<Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand*,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand&,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand**,long,102l>::operator+=[abi:ne200100](&v54, v9);
  v10 = v54;
  v11 = v3[2].i64[1];
  v12 = v55 - *v54;
  v13 = 0xCCCCCCCCCCCCCCCDLL * (v12 >> 3);
  if (v9 <= (v11 - 1) >> 1)
  {
    if (v12 < -39)
    {
      v27 = 100 - v13;
      v20 = &v54[-(v27 / 0x66)];
      v21 = *v20 + 40 * (102 * (v27 / 0x66) - v27) + 4040;
    }

    else
    {
      v19 = v13 + 1;
      v20 = &v54[v19 / 0x66];
      v21 = *v20 + 40 * (v19 % 0x66);
    }

    if (v54 == v7)
    {
      v28 = v8;
      v29 = v55;
    }

    else
    {
      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand *,std::__deque_iterator<Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand *,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand&,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand **,long,102l>,0>(&v54, *v54, v55, v20, v21);
      v20 = v55;
      v21 = v56;
      v30 = (v10 - 1);
      while (v30 != v7)
      {
        v31 = *v30--;
        std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand *,std::__deque_iterator<Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand *,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand&,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand **,long,102l>,0>(&v54, v31, v31 + 4080, v20, v21);
        v20 = v55;
        v21 = v56;
      }

      v29 = *v30 + 4080;
      v28 = v8;
    }

    std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand *,std::__deque_iterator<Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand *,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand&,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand **,long,102l>,0>(&v54, v28, v29, v20, v21);
    v32 = vaddq_s64(v3[2], xmmword_23A5552A0);
    v3[2] = v32;
    v33 = v32.i64[0];
    v34 = v3->i64[1];
    if (v32.i64[0] >= 0xCCuLL)
    {
      operator delete(*v34);
      v34 = (v3->i64[1] + 8);
      v3->i64[1] = v34;
      v33 = v3[2].i64[0] - 102;
      v3[2].i64[0] = v33;
    }
  }

  else
  {
    v52 = v9;
    v53 = v3;
    if (v12 < -39)
    {
      v22 = 100 - v13;
      v23 = (100 - v13) / 0x66;
      v16 = &v54[-v23];
      v17 = *v16;
      v18 = *v16 + 40 * (102 * v23 - v22) + 4040;
    }

    else
    {
      v14 = v13 + 1;
      v15 = (v13 + 1) / 0x66;
      v16 = &v54[v15];
      v17 = *v16;
      v18 = *v16 + 40 * (v14 - 102 * v15);
    }

    v24 = v11 + v4;
    v25 = (v5 + 8 * (v24 / 0x66));
    if (v6 == v5)
    {
      v26 = 0;
    }

    else
    {
      v26 = *v25 + 40 * (v24 % 0x66);
    }

    if (v16 == v25)
    {
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand *,std::__deque_iterator<Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand *,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand&,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand **,long,102l>,0>(&v54, v18, v26, v54, v55);
      v3 = v53;
    }

    else
    {
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand *,std::__deque_iterator<Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand *,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand&,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand **,long,102l>,0>(&v54, v18, v17 + 4080, v54, v55);
      v35 = v55;
      v36 = v56;
      v37 = v16 + 1;
      if (v16 + 1 != v25)
      {
        v51 = v26;
        v38 = *v55;
        do
        {
          v39 = 0;
          v40 = *v37;
          for (++v35; ; ++v35)
          {
            v41 = 0xCCCCCCCCCCCCCCCDLL * ((v38 - v36 + 4080) >> 3);
            if ((0xCCCCCCCCCCCCCCCDLL * ((4080 - v39) >> 3)) < v41)
            {
              v41 = 0xCCCCCCCCCCCCCCCDLL * ((4080 - v39) >> 3);
            }

            v42 = 5 * v41;
            v43 = 40 * v41;
            if (v41)
            {
              memmove(v36, &v40[v39], v43 - 4);
            }

            v39 += 8 * v42;
            if (v39 == 4080)
            {
              break;
            }

            v44 = *v35;
            v38 = v44;
            v36 = v44;
          }

          v36 += v43;
          v38 = *(v35 - 1);
          if (v38 + 4080 == v36)
          {
            v38 = *v35;
            v36 = *v35;
          }

          else
          {
            --v35;
          }

          ++v37;
        }

        while (v37 != v25);
        v26 = v51;
      }

      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand *,std::__deque_iterator<Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand *,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand&,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand **,long,102l>,0>(&v54, *v37, v26, v35, v36);
      v3 = v53;
    }

    v9 = v52;
    v34 = v3->i64[1];
    v45 = v3[1].i64[0];
    v46 = 102 * (v45 - v34) - 1;
    v33 = v3[2].u64[0];
    v47 = v3[2].i64[1];
    v3[2].i64[1] = v47 - 1;
    if (v45 == v34)
    {
      v46 = 0;
    }

    if (v46 - (v47 + v33) - 203 <= 0xFFFFFFFFFFFFFF33)
    {
      operator delete(*(v45 - 1));
      v34 = v3->i64[1];
      v3[1].i64[0] -= 8;
      v33 = v3[2].u64[0];
    }
  }

  v48 = &v34[v33 / 0x66];
  if (v3[1].i64[0] == v34)
  {
    v49 = 0;
  }

  else
  {
    v49 = *v48 + 40 * (v33 % 0x66);
  }

  v54 = v48;
  v55 = v49;
  return std::__deque_iterator<Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand*,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand&,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand**,long,102l>::operator+=[abi:ne200100](&v54, v9);
}

void *std::deque<Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand>::emplace_back<BOOL,Phase::Controller::DVM23::Voice *&,int &,Phase::Controller::DVM23::Voice *&,int &>(void *result, _BYTE *a2, uint64_t *a3, int *a4, uint64_t *a5, int *a6)
{
  v11 = result;
  v12 = result[1];
  v13 = result[2];
  if (v13 == v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = 102 * ((v13 - v12) >> 3) - 1;
  }

  v16 = result[4];
  v15 = result[5];
  v17 = v15 + v16;
  if (v14 == v15 + v16)
  {
    if (v16 < 0x66)
    {
      v18 = result[3];
      v19 = v18 - *result;
      if (v13 - v12 < v19)
      {
        operator new();
      }

      v20 = v19 >> 2;
      if (v18 == *result)
      {
        v21 = 1;
      }

      else
      {
        v21 = v20;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::reference_wrapper<Phase::SpatialModeler::PriorityQueueEntry>>>(v21);
    }

    result[4] = v16 - 102;
    v27 = *v12;
    result[1] = v12 + 8;
    result = std::__split_buffer<Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand *>::emplace_back<Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand *&>(result, &v27);
    v15 = v11[5];
    v12 = v11[1];
    v17 = v11[4] + v15;
  }

  v22 = *a3;
  v23 = *a4;
  v24 = *a5;
  v25 = *a6;
  v26 = *&v12[8 * (v17 / 0x66)] + 40 * (v17 % 0x66);
  *v26 = *a2;
  *(v26 + 8) = v22;
  *(v26 + 16) = v23;
  *(v26 + 24) = v24;
  *(v26 + 32) = v25;
  v11[5] = v15 + 1;
  return result;
}

void sub_23A3AFAA8(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::DVM23::DspVoiceManager23::FindLatestParentPool(uint64_t result, void *a2, uint64_t a3)
{
  v3 = a2[2];
  v4 = (v3 + 8 * (a2[5] >> 9));
  if (a2[3] == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4 + 8 * (a2[5] & 0x1FFLL);
  }

  if ((-858993459 * ((*(a3 + 16) - *(a3 + 8)) >> 3)) >= 1)
  {
    operator new();
  }

  *result = v4;
  *(result + 8) = v5;
  *(result + 16) = 0;
  return result;
}

uint64_t Phase::Controller::DVM23::DspVoiceManager23::FindEarliestChildPool(uint64_t result, void *a2, uint64_t a3)
{
  v3 = a2[5] + a2[6];
  v4 = a2[2];
  v5 = (v4 + 8 * (v3 >> 9));
  if (a2[3] == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5 + 8 * (v3 & 0x1FF);
  }

  if ((-858993459 * ((*(a3 + 40) - *(a3 + 32)) >> 3)) >= 1)
  {
    operator new();
  }

  *result = v5;
  *(result + 8) = v6;
  *(result + 16) = 0;
  return result;
}

uint64_t Phase::Controller::DVM23::DspVoiceManager23::FindPoolForVoice(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1[6])
  {
    return 0;
  }

  if (*(a3 + 16) == 1)
  {
    v6 = *a3;
    if (*(a4 + 16) == 1 && v6 >= *a4 && (v6 != *a4 || *(a3 + 8) >= *(a4 + 8)))
    {
      return 0;
    }

    v7 = (*(a3 + 8) - *v6) >> 3;
    if (v7 < 0)
    {
      v15 = 510 - v7;
      v9 = &v6[-(v15 >> 9)];
      v10 = *v9;
      v11 = ~v15 & 0x1FFLL;
    }

    else
    {
      v8 = v7 + 1;
      v9 = &v6[v8 >> 9];
      v10 = *v9;
      v11 = v8 & 0x1FF;
    }

    v14 = v10 + 8 * v11;
  }

  else
  {
    v13 = a1[2];
    v9 = (v13 + 8 * (a1[5] >> 9));
    if (a1[3] == v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = *v9 + 8 * (a1[5] & 0x1FFLL);
    }
  }

  v16 = *(a4 + 8);
  v17 = (*(*a2 + 16))(a2);
  if (v16 != v14)
  {
    v18 = v17;
    while ((*(**(*v14 + 40) + 184))(*(*v14 + 40)) != v18)
    {
      v14 += 8;
      if (v14 - *v9 == 4096)
      {
        v19 = v9[1];
        ++v9;
        v14 = v19;
      }

      if (v14 == v16)
      {
        v14 = v16;
        break;
      }
    }
  }

  if (v14 != *(a4 + 8))
  {
    while (1)
    {
      v20 = *(*v14 + 24);
      if (v20 != (*(**(*v14 + 40) + 112))(*(*v14 + 40)))
      {
        break;
      }

      v21 = (v14 - *v9) >> 3;
      if (v21 < 0)
      {
        v23 = 510 - v21;
        v9 -= v23 >> 9;
        v14 = *v9 + 8 * (~v23 & 0x1FF);
      }

      else
      {
        v22 = v21 + 1;
        v9 += v22 >> 9;
        v14 = *v9 + 8 * (v22 & 0x1FF);
      }

      v24 = *(a4 + 8);
      v25 = (*(*a2 + 16))(a2);
      if (v24 != v14)
      {
        v26 = v25;
        while ((*(**(*v14 + 40) + 184))(*(*v14 + 40)) != v26)
        {
          v14 += 8;
          if (v14 - *v9 == 4096)
          {
            v27 = v9[1];
            ++v9;
            v14 = v27;
          }

          if (v14 == v24)
          {
            v14 = v24;
            break;
          }
        }
      }

      if (v14 == *(a4 + 8))
      {
        return 0;
      }
    }

    if (v14 != *(a4 + 8))
    {
      v28 = *(*v14 + 24);
      if (v28 != (*(**(*v14 + 40) + 112))(*(*v14 + 40)))
      {
        return *v14;
      }
    }
  }

  return 0;
}

void Phase::Controller::DVM23::DspVoiceManager23::CreateAndPositionNewPoolForVoice(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 176);
  v4 = (*(*a2 + 16))(a2);
  Phase::Controller::VoicePoolRegistry::CreateVoicePoolInstance(v3, v4, *(a1 + 184), *(a1 + 192));
  operator new();
}

void sub_23A3B0CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  operator delete(v14);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__deque_iterator<Phase::Controller::DVM23::DvmVoicePool *,Phase::Controller::DVM23::DvmVoicePool **,Phase::Controller::DVM23::DvmVoicePool *&,Phase::Controller::DVM23::DvmVoicePool ***,long,512l>::operator+[abi:ne200100](void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3 + ((a2 - *result) >> 3);
    if (v3 < 1)
    {
      result -= (511 - v3) >> 9;
    }

    else
    {
      result += v3 >> 9;
    }
  }

  return result;
}

uint64_t *Phase::Controller::DVM23::DspVoiceManager23::OrderVoice(Phase::Controller::DVM23::DspVoiceManager23 *this, Phase::Controller::DVM23::Voice *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v31 = *(a2 + 10);
  if (!v31)
  {
    if ((-858993459 * ((*(a2 + 2) - *(a2 + 1)) >> 3)) >= 1)
    {
      v4 = 0;
      do
      {
        v32 = &unk_284D33490;
        v33 = this;
        v34 = &v32;
        Phase::Controller::DVM23::VoiceNode::PerInputVoiceConnection(a2, v4, &v32);
        std::__function::__value_func<void ()(Phase::Controller::DVM23::Voice *,int)>::~__value_func[abi:ne200100](&v32);
        ++v4;
      }

      while (v4 < (-858993459 * ((*(a2 + 2) - *(a2 + 1)) >> 3)));
    }

    Phase::Controller::DVM23::DspVoiceManager23::FindLatestParentPool(&v32, this, a2);
    Phase::Controller::DVM23::DspVoiceManager23::FindEarliestChildPool(&v28, this, a2);
    PoolForVoice = Phase::Controller::DVM23::DspVoiceManager23::FindPoolForVoice(this, a2, &v32, &v28);
    v18 = PoolForVoice;
    v31 = PoolForVoice;
    if (!PoolForVoice)
    {
      Phase::Controller::DVM23::DspVoiceManager23::CreateAndPositionNewPoolForVoice(this, a2);
    }

    v25 = a2;
    result = std::__hash_table<Phase::Controller::DVM23::Voice *,std::hash<Phase::Controller::DVM23::Voice *>,std::equal_to<Phase::Controller::DVM23::Voice *>,std::allocator<Phase::Controller::DVM23::Voice *>>::__emplace_unique_key_args<Phase::Controller::DVM23::Voice *,Phase::Controller::DVM23::Voice * const&>(PoolForVoice, &v25);
    *(v25 + 10) = v18;
    return result;
  }

  Phase::Controller::DVM23::DspVoiceManager23::FindLatestParentPool(&v28, this, a2);
  Phase::Controller::DVM23::DspVoiceManager23::FindEarliestChildPool(&v25, this, a2);
  v5 = *(this + 5);
  v6 = *(this + 2);
  v7 = *(this + 3);
  v8 = (v6 + 8 * (v5 >> 9));
  if (v7 == v6)
  {
    v9 = 0;
    v12 = 0;
    v10 = *(this + 6);
    v11 = (v6 + 8 * ((v10 + v5) >> 9));
  }

  else
  {
    v9 = (*v8 + 8 * (*(this + 5) & 0x1FFLL));
    v10 = *(this + 6);
    v11 = (v6 + 8 * ((v10 + v5) >> 9));
    v12 = (*v11 + 8 * ((v10 + v5) & 0x1FF));
  }

  result = std::__find_segment_if[abi:ne200100]<std::__deque_iterator<Phase::Controller::DVM23::DvmVoicePool *,Phase::Controller::DVM23::DvmVoicePool * const*,Phase::Controller::DVM23::DvmVoicePool * const&,Phase::Controller::DVM23::DvmVoicePool * const* const*,long,512l>,std::__find_segment<Phase::Controller::DVM23::DvmVoicePool *>,std::__identity>(v8, v9, v11, v12, &v31);
  if (v30 == 1)
  {
    if (v28 >= result)
    {
      v15 = v28 == result && v29 < v14;
    }

    else
    {
      v15 = 1;
    }

    if ((v27 & 1) == 0)
    {
      LOBYTE(v16) = 1;
      goto LABEL_31;
    }
  }

  else
  {
    v15 = 1;
    LOBYTE(v16) = 1;
    if (v27 != 1)
    {
      goto LABEL_31;
    }
  }

  if (v25 <= result)
  {
    if (v25 == result)
    {
      v16 = v26 > v14;
      if (!v30)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v16 = 0;
      if (!v30)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v16 = 1;
    if (!v30)
    {
      goto LABEL_31;
    }
  }

  if (v28 < v25 || v28 == v25 && v29 < v26)
  {
LABEL_31:
    if (!v15 || !v16)
    {
      v19 = Phase::Controller::DVM23::DspVoiceManager23::FindPoolForVoice(this, a2, &v28, &v25);
      if (!v19)
      {
        Phase::Controller::DVM23::DspVoiceManager23::CreateAndPositionNewPoolForVoice(this, a2);
      }

      v32 = a2;
      std::__hash_table<Phase::Controller::DVM23::Voice *,std::hash<Phase::Controller::DVM23::Voice *>,std::equal_to<Phase::Controller::DVM23::Voice *>,std::allocator<Phase::Controller::DVM23::Voice *>>::__erase_unique<Phase::Controller::DVM23::Voice *>(v31, &v32);
      *(v32 + 10) = 0;
      v32 = a2;
      std::__hash_table<Phase::Controller::DVM23::Voice *,std::hash<Phase::Controller::DVM23::Voice *>,std::equal_to<Phase::Controller::DVM23::Voice *>,std::allocator<Phase::Controller::DVM23::Voice *>>::__emplace_unique_key_args<Phase::Controller::DVM23::Voice *,Phase::Controller::DVM23::Voice * const&>(v19, &v32);
      *(v32 + 10) = v19;
      return Phase::PhaseOSCBundle::WriteNextMessage<Phase::Controller::DVM_RT::DVMRTOSCCommand,int,Phase::DspLayer23::VoicePool *,Phase::DspLayer23::VoicePool *,unsigned long long>(this + 7, v31[5], v19[5], *(a2 + 8));
    }

    return result;
  }

  if (!v15 && !v16)
  {
    __assert_rtn("OrderVoice", "DspVoiceManager23.cpp", 1226, "false");
  }

  if (!v15)
  {
    if (v7 == v6)
    {
      v21 = 0;
    }

    else
    {
      v21 = *(v6 + 8 * ((v10 + v5) >> 9)) + 8 * ((v10 + v5) & 0x1FF);
    }

    v23[0] = v6 + 8 * ((v10 + v5) >> 9);
    v23[1] = v21;
    v24 = 0;
    v19 = Phase::Controller::DVM23::DspVoiceManager23::FindPoolForVoice(this, a2, &v28, v23);
    if (!v19)
    {
      Phase::Controller::DVM23::DspVoiceManager23::CreateAndPositionNewPoolForVoice(this, a2);
    }

    v32 = a2;
    std::__hash_table<Phase::Controller::DVM23::Voice *,std::hash<Phase::Controller::DVM23::Voice *>,std::equal_to<Phase::Controller::DVM23::Voice *>,std::allocator<Phase::Controller::DVM23::Voice *>>::__erase_unique<Phase::Controller::DVM23::Voice *>(v31, &v32);
    *(v32 + 10) = 0;
    v32 = a2;
    std::__hash_table<Phase::Controller::DVM23::Voice *,std::hash<Phase::Controller::DVM23::Voice *>,std::equal_to<Phase::Controller::DVM23::Voice *>,std::allocator<Phase::Controller::DVM23::Voice *>>::__emplace_unique_key_args<Phase::Controller::DVM23::Voice *,Phase::Controller::DVM23::Voice * const&>(v19, &v32);
    *(v32 + 10) = v19;
    if ((-858993459 * ((*(a2 + 5) - *(a2 + 4)) >> 3)) >= 1)
    {
      v22 = 0;
      do
      {
        v32 = &unk_284D334D8;
        v33 = this;
        v34 = &v32;
        Phase::Controller::DVM23::VoiceNode::PerOutputVoiceConnection(a2, v22, &v32);
        std::__function::__value_func<void ()(Phase::Controller::DVM23::Voice *,int)>::~__value_func[abi:ne200100](&v32);
        ++v22;
      }

      while (v22 < (-858993459 * ((*(a2 + 5) - *(a2 + 4)) >> 3)));
    }

    return Phase::PhaseOSCBundle::WriteNextMessage<Phase::Controller::DVM_RT::DVMRTOSCCommand,int,Phase::DspLayer23::VoicePool *,Phase::DspLayer23::VoicePool *,unsigned long long>(this + 7, v31[5], v19[5], *(a2 + 8));
  }

  if (v16)
  {
    __assert_rtn("OrderVoice", "DspVoiceManager23.cpp", 1292, "false");
  }

  if ((-858993459 * ((*(a2 + 5) - *(a2 + 4)) >> 3)) >= 1)
  {
    v20 = 0;
    do
    {
      v32 = &unk_284D33520;
      v33 = this;
      v34 = &v32;
      Phase::Controller::DVM23::VoiceNode::PerOutputVoiceConnection(a2, v20, &v32);
      result = std::__function::__value_func<void ()(Phase::Controller::DVM23::Voice *,int)>::~__value_func[abi:ne200100](&v32);
      ++v20;
    }

    while (v20 < (-858993459 * ((*(a2 + 5) - *(a2 + 4)) >> 3)));
  }

  return result;
}

void sub_23A3B136C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__function::__value_func<void ()(Phase::Controller::DVM23::Voice *,int)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *Phase::PhaseOSCBundle::WriteNextMessage<Phase::Controller::DVM_RT::DVMRTOSCCommand,int,Phase::DspLayer23::VoicePool *,Phase::DspLayer23::VoicePool *,unsigned long long>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = result[2];
  if ((result[1] - v4 - 4) >= 0x2C)
  {
    v5 = *result + v4;
    *(v5 + 4) = 12;
    strcpy((v5 + 12), "ipph");
    *(v5 + 20) = 0;
    *(v5 + 24) = a2;
    *(v5 + 32) = a3;
    v6 = *result;
    v7 = result[2];
    *(v6 + v7) = 44;
    *(v5 + 40) = a4;
    *(v6 + 16) += 48;
    result[2] = v7 + 48;
  }

  return result;
}

BOOL Phase::Controller::DVM23::DspVoiceManager23::ProcessMessagesFromRT(Phase::Controller::DVM23::DspVoiceManager23 *this)
{
  v16 = *MEMORY[0x277D85DE8];
  for (result = Phase::LockFreeQueueSPSC::HasData((this + 128)); result; result = Phase::LockFreeQueueSPSC::HasData((this + 128)))
  {
    v3 = (*(this + 18) + *(this + 33));
    v5 = v3 + 4;
    v4 = *v3;
    if (v4)
    {
      if (*(v3 + 2) == 0x656C646E756223)
      {
        v14[0] = v3 + 4;
        v14[1] = v4;
        v14[2] = 20;
        v6 = *(v3 + 3);
        *(this + 26) = v6;
        memset(buf, 0, 32);
        while (Phase::PhaseOSCBundle::GetNextMessage(v14, buf))
        {
          Phase::Controller::DVM23::DspVoiceManager23::ProcessMessageFromRT(this, v6, buf, v7, v8, v9);
        }
      }

      else
      {
        *&buf[24] = 0;
        *buf = v3 + 4;
        *&buf[8] = v4;
        *&buf[16] = ((strlen(v3 + 24) >> 2 << 34) + 0xC00000000) >> 32;
        Phase::Controller::DVM23::DspVoiceManager23::ProcessMessageFromRT(this, 1, buf, v11, v12, v13);
      }

      *(this + 33) += ((*(*(this + 18) + *(this + 33)) + 15) & 0xFFFFFFF0) + 16;
    }

    else
    {
      v10 = **(Phase::Logger::GetInstance(result) + 80);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "DspVoiceManager23.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1710;
        *&buf[18] = 2048;
        *&buf[20] = v5;
        *&buf[28] = 2048;
        *&buf[30] = v4;
        _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Pipe from RT claims that data is available, but does not provide a buffer. %p %zu", buf, 0x26u);
      }
    }
  }

  return result;
}

double Phase::Controller::DVM23::DspVoiceManager23::SendAndClearRtBundle(Phase::Controller::DVM23::DspVoiceManager23 *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *(*(this + 7) + 16);
  if (v1 != 20)
  {
    v10 = 0;
    v3 = Phase::LockFreeQueueSPSC::GetWriteBuffer(this + 88, v1, &v10);
    if (v3 && (v4 = *(this + 7), v5 = v4[4], v10 >= v5))
    {
      memcpy(v3, v4, v5);
      Phase::LockFreeQueueSPSC::CommitBytes(this + 88, *(*(this + 7) + 16));
      v9 = *(this + 10);
      *(this + 7) = v9;
      *(this + 4) = xmmword_23A555280;
      result = 9.53373278e-307;
      *v9 = xmmword_23A555290;
      *(v9 + 16) = 20;
      *(this + 216) = 0;
    }

    else
    {
      *(this + 216) = 1;
      v6 = **(Phase::Logger::GetInstance(v3) + 80);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = *(*(this + 7) + 16);
        *buf = 136315906;
        v12 = "DspVoiceManager23.cpp";
        v13 = 1024;
        v14 = 1661;
        v15 = 1024;
        v16 = v8;
        v17 = 2048;
        v18 = v10;
        _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to write message bundle (%d bytes) to pipe (available bytes %zu); no space!", buf, 0x22u);
      }
    }
  }

  return result;
}

uint64_t Phase::Controller::DVM23::DspVoiceManager23::EndChanges(Phase::Controller::DVM23::DspVoiceManager23 *this)
{
  v91 = *MEMORY[0x277D85DE8];
  v86.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  Phase::Controller::DVM23::DspVoiceManager23::SendAndClearRtBundle(this);
  if (*(*(this + 7) + 16) == 20)
  {
    v2 = *(this + 34);
    v3 = *(this + 35);
    if (v2 != v3)
    {
      do
      {
        v4 = v2[2];
        if (v4 != 2)
        {
          if (v4 == 1)
          {
            v7 = v2[3];
            v8 = *(*(*v2 + 80) + 40);
            v9 = *(*v2 + 64);
            v10 = (this + 56);
            v11 = 3;
          }

          else
          {
            if (v4)
            {
              __assert_rtn("EndChanges", "DspVoiceManager23.cpp", 1386, "false && Invalid PlaystateCommand");
            }

            v5 = *v2;
            v6 = *(*v2 + 80);
            if (!v6)
            {
              Phase::Controller::DVM23::DspVoiceManager23::OrderVoice(this, *v2);
              v6 = *(v5 + 80);
            }

            v7 = v2[3];
            v8 = *(v6 + 40);
            v9 = *(v5 + 64);
            v10 = (this + 56);
            v11 = 2;
          }

          Phase::PhaseOSCBundle::WriteNextMessage<Phase::Controller::DVM_RT::DVMRTOSCCommand,unsigned int,Phase::DspLayer23::VoicePool *,unsigned long long>(v10, v11, v7, v8, v9);
        }

        v2 += 4;
      }

      while (v2 != v3);
      v2 = *(this + 34);
      v3 = *(this + 35);
    }

    for (; v2 != v3; v2 += 4)
    {
      v12 = *v2;
      if (*(*v2 + 88) == 1)
      {
        if ((-858993459 * ((*(v12 + 2) - *(v12 + 1)) >> 3)) >= 1)
        {
          *&buf[24] = 0;
          operator new();
        }

        if ((-858993459 * ((*(v12 + 5) - *(v12 + 4)) >> 3)) >= 1)
        {
          *&buf[24] = 0;
          operator new();
        }
      }
    }

    v13 = *(this + 29);
    v14 = *(this + 30);
    if (v14 != v13)
    {
      v15 = *(this + 32);
      v16 = v15 / 0x66;
      v17 = (v13 + 8 * (v15 / 0x66));
      v18 = *v17;
      v19 = *v17 + 40 * (v15 % 0x66);
      v20 = *(v13 + 8 * ((*(this + 33) + v15) / 0x66)) + 40 * ((*(this + 33) + v15) % 0x66);
      if (v19 != v20)
      {
        do
        {
          if ((*v19 & 1) == 0)
          {
            Phase::PhaseOSCBundle::WriteNextMessage<Phase::Controller::DVM_RT::DVMRTOSCCommand,int,Phase::DspLayer23::VoicePool *,unsigned long long,int,Phase::DspLayer23::VoicePool *,unsigned long long,int>(this + 7, 6u, *(*(*(v19 + 8) + 80) + 40), *(*(v19 + 8) + 64), *(v19 + 16), *(*(*(v19 + 24) + 80) + 40), *(*(v19 + 24) + 64), *(v19 + 32));
            v18 = *v17;
          }

          v19 += 40;
          if (v19 - v18 == 4080)
          {
            v21 = v17[1];
            ++v17;
            v18 = v21;
            v19 = v21;
          }
        }

        while (v19 != v20);
        v15 = *(this + 32);
        v13 = *(this + 29);
        v14 = *(this + 30);
        v16 = v15 / 0x66;
      }

      if (v14 != v13)
      {
        v22 = (v13 + 8 * v16);
        v23 = *v22 + 40 * (v15 % 0x66);
        v24 = *(v13 + 8 * ((*(this + 33) + v15) / 0x66)) + 40 * ((*(this + 33) + v15) % 0x66);
        while (v23 != v24)
        {
          if (*v23 == 1)
          {
            Phase::Controller::DVM23::DspVoiceManager23::OrderVoice(this, *(v23 + 8));
            Phase::Controller::DVM23::DspVoiceManager23::OrderVoice(this, *(v23 + 24));
            if (*(*(v23 + 8) + 88) != 6)
            {
              v25 = *(v23 + 24);
              if (*(v25 + 88) != 6)
              {
                Phase::PhaseOSCBundle::WriteNextMessage<Phase::Controller::DVM_RT::DVMRTOSCCommand,int,Phase::DspLayer23::VoicePool *,unsigned long long,int,Phase::DspLayer23::VoicePool *,unsigned long long,int>(this + 7, 5u, *(*(*(v23 + 8) + 80) + 40), *(*(v23 + 8) + 64), *(v23 + 16), *(*(v25 + 80) + 40), *(v25 + 64), *(v23 + 32));
              }
            }
          }

          v23 += 40;
          if (v23 - *v22 == 4080)
          {
            v26 = v22[1];
            ++v22;
            v23 = v26;
          }
        }
      }
    }

    *&buf[8] = 0;
    *&buf[16] = 0;
    *buf = &buf[8];
    v27 = *(this + 40);
    if (v27 != *(this + 41))
    {
      v28 = (v27 + 32);
      v29 = *(this + 9);
      if ((*(this + 8) - v29 - 4) >= 0x3C)
      {
        v31 = *(v28 - 2);
        v30 = *(v28 - 1);
        v33 = *(v28 - 4);
        v32 = *(v28 - 3);
        v34 = *(v33 + 64);
        v35 = *(*(v33 + 80) + 40);
        v36 = *v28;
        v37 = *(this + 7) + v29;
        *(v37 + 4) = 8;
        *(v37 + 20) = v36;
        *(v37 + 24) = v35;
        *(v37 + 32) = v34;
        strcpy((v37 + 12), "iphhph");
        *(v37 + 40) = v32;
        *(v37 + 48) = v31;
        *(v37 + 56) = v30;
        v38 = *(this + 7);
        v39 = *(this + 9);
        *(v38 + v39) = 60;
        *(v38 + 16) += 64;
        *(this + 9) = v39 + 64;
      }

      std::__tree<std::pair<Phase::Controller::DVM23::Voice *,unsigned int>>::__emplace_unique_impl<Phase::Controller::DVM23::Voice * const&,unsigned int const&>();
    }

    v40 = *(this + 37);
    if (v40 != *(this + 38))
    {
      v41 = (v40 + 24);
      v42 = *(this + 9);
      if ((*(this + 8) - v42 - 4) >= 0x34)
      {
        v43 = *(v41 - 1);
        v45 = *(v41 - 3);
        v44 = *(v41 - 2);
        v46 = *(v45 + 64);
        v47 = *(*(v45 + 80) + 40);
        v48 = *v41;
        v49 = *(this + 7) + v42;
        *(v49 + 4) = 7;
        *(v49 + 20) = v48;
        *(v49 + 24) = v47;
        *(v49 + 32) = v46;
        strcpy((v49 + 12), "iphhd");
        *(v49 + 40) = v44;
        *(v49 + 48) = v43;
        v50 = *(this + 7);
        v51 = *(this + 9);
        *(v50 + v51) = 52;
        *(v50 + 16) += 56;
        *(this + 9) = v51 + 56;
      }

      std::__tree<std::pair<Phase::Controller::DVM23::Voice *,unsigned int>>::__emplace_unique_impl<Phase::Controller::DVM23::Voice * const&,unsigned int const&>();
    }

    v52 = *buf;
    if (*buf != &buf[8])
    {
      do
      {
        Phase::PhaseOSCBundle::WriteNextMessage<Phase::Controller::DVM_RT::DVMRTOSCCommand,unsigned int,Phase::DspLayer23::VoicePool *,unsigned long long>(this + 7, 9u, *(v52 + 10), *(*(*(v52 + 4) + 80) + 40), *(*(v52 + 4) + 64));
        v53 = *(v52 + 1);
        if (v53)
        {
          do
          {
            v54 = v53;
            v53 = *v53;
          }

          while (v53);
        }

        else
        {
          do
          {
            v54 = *(v52 + 2);
            v55 = *v54 == v52;
            v52 = v54;
          }

          while (!v55);
        }

        v52 = v54;
      }

      while (v54 != &buf[8]);
    }

    std::__tree<std::pair<Phase::Controller::DVM23::Voice *,unsigned int>>::destroy(*&buf[8]);
    v57 = *(this + 34);
    for (i = *(this + 35); v57 != i; v57 += 4)
    {
      if (v57[2] == 2)
      {
        v59 = *v57;
        v60 = *(*v57 + 80);
        v61 = v57[3];
        if (v60)
        {
          Phase::PhaseOSCBundle::WriteNextMessage<Phase::Controller::DVM_RT::DVMRTOSCCommand,unsigned int,Phase::DspLayer23::VoicePool *,unsigned long long>(this + 7, 4u, v61, *(v60 + 40), *(v59 + 64));
        }

        else
        {
          if (v61)
          {
            v62 = **(Phase::Logger::GetInstance(v56) + 80);
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
            {
              v63 = (*(*v59 + 16))(v59);
              v64 = Phase::DspLayer23::KernelTypeToString(v63);
              v65 = *(v59 + 64);
              v66 = v57[3];
              *buf = 136316162;
              *&buf[4] = "DspVoiceManager23.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1537;
              *&buf[18] = 2080;
              *&buf[20] = v64;
              *&buf[28] = 2048;
              *&buf[30] = v65;
              v88 = 1024;
              v89 = v66;
              _os_log_impl(&dword_23A302000, v62, OS_LOG_TYPE_DEBUG, "%25s:%-5d A prepared Voice (%s)[%llx] is being stopped with a delay of %d frames. The DVM will not honour the delay, and instead remove the Voice immediately.", buf, 0x2Cu);
            }
          }

          *(v59 + 88) = 0;
          *buf = *(v59 + 64);
          v56 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(this + 58, buf);
          v67 = v56;
          if (v56)
          {
            std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::operator()(v56[6], *(this + 26), *(v59 + 64), 7);
            std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>>>::remove(buf, this + 58, v67);
            v56 = std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,void *>>>>::~unique_ptr[abi:ne200100](buf);
          }
        }
      }
    }

    v68 = *(this + 43);
    v69 = *(this + 44);
    if (v68 != v69)
    {
      v70 = *(this + 9);
      do
      {
        if ((*(this + 8) - v70 - 4) >= 0x18)
        {
          v71 = *v68;
          v72 = *(v68 + 2);
          if (*(v68 + 12))
          {
            v73 = 11;
          }

          else
          {
            v73 = 10;
          }

          v74 = *(this + 7) + v70;
          *(v74 + 4) = v73;
          strcpy((v74 + 12), "ih");
          *(v74 + 16) = v72;
          *(v74 + 20) = v71;
          v75 = *(this + 7);
          v76 = *(this + 9);
          *(v75 + v76) = 24;
          *(v75 + 16) += 28;
          v70 = v76 + 28;
          *(this + 9) = v76 + 28;
        }

        v68 += 2;
      }

      while (v68 != v69);
    }

    v77 = *(this + 29);
    v78 = *(this + 30);
    *(this + 33) = 0;
    v79 = (v78 - v77) >> 3;
    if (v79 >= 3)
    {
      do
      {
        operator delete(*v77);
        v80 = *(this + 30);
        v77 = (*(this + 29) + 8);
        *(this + 29) = v77;
        v79 = (v80 - v77) >> 3;
      }

      while (v79 > 2);
    }

    if (v79 == 1)
    {
      v81 = 51;
    }

    else
    {
      if (v79 != 2)
      {
LABEL_77:
        *(this + 35) = *(this + 34);
        *(this + 38) = *(this + 37);
        *(this + 41) = *(this + 40);
        *(this + 44) = *(this + 43);
        goto LABEL_78;
      }

      v81 = 102;
    }

    *(this + 32) = v81;
    goto LABEL_77;
  }

LABEL_78:
  Phase::Controller::DVM23::DspVoiceManager23::SendAndClearRtBundle(this);
  v83 = v82;
  v84.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  *(this + 70) = (v84.__d_.__rep_ - v86.__d_.__rep_) / 1000;
  if (*(Phase::Logger::GetInstance(v84.__d_.__rep_) + 1641) == 1)
  {
    *(*(this + 63) + 8) = 0;
    memset(buf, 0, 32);
    *&buf[32] = 1065353216;
    operator new();
  }

  if (*(this + 26) - *(this + 71) >= *(*(this + 23) + 80))
  {
    *(*(this + 63) + 8) = 0;
    *v90 = 0;
    operator new();
  }

  ++*(this + 25);
  return v83;
}

void sub_23A3B264C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

double Phase::PhaseOSCBundle::WriteNextMessage<Phase::Controller::DVM_RT::DVMRTOSCCommand,unsigned int,Phase::DspLayer23::VoicePool *,unsigned long long>(uint64_t *a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[2];
  if ((a1[1] - v5 - 4) >= 0x20)
  {
    v6 = *a1 + v5;
    *(v6 + 4) = a2;
    *(v6 + 16) = a3;
    *(v6 + 20) = a4;
    *&result = 6844521;
    *(v6 + 12) = 6844521;
    v8 = *a1;
    v9 = a1[2];
    *(v8 + v9) = 32;
    *(v6 + 28) = a5;
    *(v8 + 16) += 36;
    a1[2] = v9 + 36;
  }

  return result;
}

double Phase::PhaseOSCBundle::WriteNextMessage<Phase::Controller::DVM_RT::DVMRTOSCCommand,int,Phase::DspLayer23::VoicePool *,unsigned long long,int,Phase::DspLayer23::VoicePool *,unsigned long long,int>(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = a1[2];
  if ((a1[1] - v8 - 4) >= 0x3C)
  {
    v9 = *a1 + v8;
    *(v9 + 4) = a2;
    strcpy((v9 + 12), "iphiphi");
    *(v9 + 20) = 0;
    *(v9 + 24) = a3;
    *(v9 + 32) = a4;
    *(v9 + 40) = a5;
    *&result = 1885956208;
    *(v9 + 44) = a6;
    *(v9 + 60) = a8;
    v11 = *a1;
    v12 = a1[2];
    *(v11 + v12) = 60;
    *(v9 + 52) = a7;
    *(v11 + 16) += 64;
    a1[2] = v12 + 64;
  }

  return result;
}

uint64_t std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a2;
  v7 = a3;
  v5 = 0;
  v6 = a4;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v8, &v7, &v6, &v5);
}

BOOL Phase::PhaseOSCBundle::GetNextMessage(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v2 < v4)
  {
    v7 = *(v3 + v2);
    *a2 = v3 + v2 + 4;
    a2[1] = v7;
    a2[2] = ((strlen((v3 + v2 + 12)) >> 2 << 34) + 0xC00000000) >> 32;
    a2[3] = 0;
    a1[2] = v7 + v2 + 4;
  }

  return v2 < v4;
}

void Phase::Controller::DVM23::DspVoiceManager23::ProcessMessageFromRT(Phase::Controller::DVM23::DspVoiceManager23 *this, uint64_t a2, Phase::PhaseOSCMessage *a3, double a4, double a5, double a6)
{
  v208 = *MEMORY[0x277D85DE8];
  v8 = *a3;
  v9 = **a3;
  if (v9 > 3)
  {
    if (v9 <= 5)
    {
      if (v9 == 4)
      {
        v62 = *(a3 + 1);
        v63 = vaddq_s64(v62, xmmword_23A5552B0);
        v64 = v8 + *(a3 + 2);
        v65 = *v64;
        *(a3 + 1) = v63;
        v190 = v65;
        v66 = *(v8 + v63.i64[0]);
        v67 = *(v64 + 2);
        v68 = *(v64 + 6);
        *(a3 + 1) = vaddq_s64(v62, xmmword_23A5552F0);
        if (v68)
        {
          v187 = v68;
          v161 = v67;
          Voice = Phase::Controller::DVM23::VoiceGraph::GetVoice(*this, v67);
          if (Voice)
          {
            v163 = *(this + 2);
            if (*(this + 3) != v163)
            {
              v172 = Voice;
              v173 = *(this + 5);
              v174 = (v163 + 8 * (v173 >> 9));
              v175 = *v174;
              v176 = *v174 + 8 * (v173 & 0x1FF);
              v177 = *(v163 + (((*(this + 6) + v173) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 6) + v173) & 0x1FF);
              if (v176 == v177)
              {
                v178 = *v174 + 8 * (v173 & 0x1FF);
              }

              else
              {
                v179 = *v174;
                v178 = *v174 + 8 * (v173 & 0x1FF);
                v180 = v174;
                do
                {
                  if (*(*v178 + 40) == v65)
                  {
                    goto LABEL_152;
                  }

                  v178 += 8;
                  if (v178 - v179 == 4096)
                  {
                    v181 = v180[1];
                    ++v180;
                    v179 = v181;
                    v178 = v181;
                  }
                }

                while (v178 != v177);
                v178 = v177;
LABEL_152:
                if (v176 != v177)
                {
                  do
                  {
                    if (*(*v176 + 40) == v66)
                    {
                      goto LABEL_158;
                    }

                    v176 += 8;
                    if (v176 - v175 == 4096)
                    {
                      v182 = v174[1];
                      ++v174;
                      v175 = v182;
                      v176 = v182;
                    }
                  }

                  while (v176 != v177);
                  v176 = v177;
                }
              }

LABEL_158:
              if (v177 != v178 && v177 != v176)
              {
                v183 = *v178;
                v184 = *v176;
                *buf = v172;
                std::__hash_table<Phase::Controller::DVM23::Voice *,std::hash<Phase::Controller::DVM23::Voice *>,std::equal_to<Phase::Controller::DVM23::Voice *>,std::allocator<Phase::Controller::DVM23::Voice *>>::__erase_unique<Phase::Controller::DVM23::Voice *>(v184, buf);
                *(*buf + 80) = 0;
                *buf = v172;
                Voice = std::__hash_table<Phase::Controller::DVM23::Voice *,std::hash<Phase::Controller::DVM23::Voice *>,std::equal_to<Phase::Controller::DVM23::Voice *>,std::allocator<Phase::Controller::DVM23::Voice *>>::__emplace_unique_key_args<Phase::Controller::DVM23::Voice *,Phase::Controller::DVM23::Voice * const&>(v183, buf);
                *(*buf + 80) = v183;
              }
            }
          }

          v164 = **(Phase::Logger::GetInstance(Voice) + 80);
          if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
          {
            v165 = (*(*v65 + 184))(v65);
            v166 = Phase::DspLayer23::KernelTypeToString(v165);
            v167 = (*(*v66 + 184))(v66);
            v168 = Phase::DspLayer23::KernelTypeToString(v167);
            v169 = Phase::DspLayer23::DspLayerErrorToString(v187);
            *buf = 136317186;
            *&buf[4] = "DspVoiceManager23.cpp";
            v192 = 1024;
            v193 = 1885;
            v194 = 2080;
            v195 = v166;
            v196 = 2048;
            v197 = v65;
            v198 = 2048;
            v199 = v161;
            v200 = 2080;
            *v201 = v168;
            *&v201[8] = 2048;
            *v202 = v66;
            *&v202[8] = 2048;
            *v203 = a2;
            *&v203[8] = 2080;
            *v204 = v169;
            _os_log_impl(&dword_23A302000, v164, OS_LOG_TYPE_ERROR, "%25s:%-5d (%s)%p[%llx] could not be moved to (%s)%p @ frame %llu: %s", buf, 0x58u);
          }

          __assert_rtn("ProcessMessageFromRT", "DspVoiceManager23.cpp", 1886, "false");
        }

        v69 = *(this + 2);
        if (*(this + 3) == v69)
        {
          goto LABEL_64;
        }

        v70 = *(this + 5);
        v71 = (v69 + 8 * (v70 >> 9));
        v72 = *v71;
        v73 = *v71 + 8 * (v70 & 0x1FF);
        v74 = *(v69 + (((*(this + 6) + v70) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 6) + v70) & 0x1FF);
        if (v73 != v74)
        {
          while (*(*v73 + 40) != v65)
          {
            v73 += 8;
            if (v73 - v72 == 4096)
            {
              v75 = v71[1];
              ++v71;
              v72 = v75;
              v73 = v75;
            }

            if (v73 == v74)
            {
              goto LABEL_64;
            }
          }
        }

        if (v74 == v73)
        {
LABEL_64:
          if (!std::__hash_table<std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>,std::__unordered_map_hasher<Phase::DspLayer23::VoicePool *,std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>,std::hash<Phase::DspLayer23::VoicePool *>,std::equal_to<Phase::DspLayer23::VoicePool *>,true>,std::__unordered_map_equal<Phase::DspLayer23::VoicePool *,std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>,std::equal_to<Phase::DspLayer23::VoicePool *>,std::hash<Phase::DspLayer23::VoicePool *>,true>,std::allocator<std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>>>::find<Phase::DspLayer23::VoicePool *>(this + 46, v65))
          {
            v110 = **(Phase::Logger::GetInstance(0) + 80);
            if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
            {
              v111 = (*(*v65 + 184))(v65);
              *buf = 136316162;
              *&buf[4] = "DspVoiceManager23.cpp";
              v192 = 1024;
              v193 = 1857;
              v194 = 2080;
              v195 = Phase::DspLayer23::KernelTypeToString(v111);
              v196 = 2048;
              v197 = v65;
              v198 = 2048;
              v199 = a2;
              _os_log_impl(&dword_23A302000, v110, OS_LOG_TYPE_ERROR, "%25s:%-5d (%s)%p could not be found in the VoicePool Order @ frame %llu", buf, 0x30u);
            }

            __assert_rtn("ProcessMessageFromRT", "DspVoiceManager23.cpp", 1858, "false");
          }
        }

        else
        {
          v109 = *v73;
          if (!*(*v73 + 24))
          {
            std::deque<Phase::Controller::DVM23::DvmVoicePool *>::erase(this + 8, v71, v73);
            *buf = &v190;
            std::__hash_table<std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>,std::__unordered_map_hasher<Phase::DspLayer23::VoicePool *,std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>,std::hash<Phase::DspLayer23::VoicePool *>,std::equal_to<Phase::DspLayer23::VoicePool *>,true>,std::__unordered_map_equal<Phase::DspLayer23::VoicePool *,std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>,std::equal_to<Phase::DspLayer23::VoicePool *>,std::hash<Phase::DspLayer23::VoicePool *>,true>,std::allocator<std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>>>::__emplace_unique_key_args<Phase::DspLayer23::VoicePool *,std::piecewise_construct_t const&,std::tuple<Phase::DspLayer23::VoicePool * const&>,std::tuple<>>(this + 46, v65)[3] = v109;
            Phase::PhaseOSCBundle::WriteNextMessage<Phase::Controller::DVM_RT::DVMRTOSCCommand,int,Phase::DspLayer23::VoicePool *>(this + 7, v190);
          }
        }
      }

      else
      {
        v27 = *(v8 + *(a3 + 2));
        *(a3 + 1) = vaddq_s64(*(a3 + 1), xmmword_23A5552B0);
        v190 = v27;
        v28 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(this + 51, &v190);
        if (!v28)
        {
          v121 = **(Phase::Logger::GetInstance(0) + 80);
          if (!os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
          {
            return;
          }

          *buf = 136315906;
          *&buf[4] = "DspVoiceManager23.cpp";
          v192 = 1024;
          v193 = 1949;
          v194 = 2048;
          v195 = v190;
          v196 = 2048;
          v197 = a2;
          v26 = "%25s:%-5d Unknown VoiceEngine callback %llu @ frame %llu. Has it been cancelled?";
          v59 = v121;
          v60 = OS_LOG_TYPE_DEBUG;
          goto LABEL_96;
        }

        *(this + 57) = v190;
        v29 = v28[6];
        *buf = a2;
        if (!v29)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v29 + 48))(v29, buf);
        v30 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(this + 51, &v190);
        if (v30)
        {
          std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>>>::remove(this + 51, v30, buf);
          std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long)>>,void *>>>>::~unique_ptr[abi:ne200100](buf);
        }
      }

      return;
    }

    if (v9 != 6)
    {
      if (v9 != 7)
      {
        goto LABEL_54;
      }

      v47 = (v8 + *(a3 + 2));
      v49 = *v47;
      v48 = v47[1];
      v50 = v47[2];
      *(a3 + 1) = vaddq_s64(*(a3 + 1), xmmword_23A5552D0);
      v51 = Phase::Controller::DVM23::VoiceGraph::GetVoice(*this, v48);
      if (v51)
      {
        *(v51 + 96) = v50;
        return;
      }

      v119 = **(Phase::Logger::GetInstance(0) + 80);
      if (!os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v120 = (*(*v49 + 184))(v49);
      *buf = 136316162;
      *&buf[4] = "DspVoiceManager23.cpp";
      v192 = 1024;
      v193 = 1972;
      v194 = 2080;
      v195 = Phase::DspLayer23::KernelTypeToString(v120);
      v196 = 2048;
      v197 = v49;
      v198 = 2048;
      v199 = v48;
      v26 = "%25s:%-5d DVMNRTOSCCommand::SetVoiceTailFrames: Unknown Voice (%s)%p[%llx]";
LABEL_83:
      v59 = v119;
      v60 = OS_LOG_TYPE_ERROR;
      v61 = 48;
      goto LABEL_97;
    }

    v96 = v8 + *(a3 + 2);
    v97 = *v96;
    v98 = *(v96 + 2);
    *(a3 + 1) = vaddq_s64(*(a3 + 1), xmmword_23A5552C0);
    if (v98)
    {
      v99 = **(Phase::Logger::GetInstance(this) + 80);
      if (!os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v100 = (*(*v97 + 184))(v97);
      *buf = 136316418;
      *&buf[4] = "DspVoiceManager23.cpp";
      v192 = 1024;
      v193 = 1918;
      v194 = 2080;
      v195 = Phase::DspLayer23::KernelTypeToString(v100);
      v196 = 2048;
      v197 = v97;
      v198 = 2048;
      v199 = a2;
      v200 = 2080;
      *v201 = Phase::DspLayer23::DspLayerErrorToString(v98);
      v26 = "%25s:%-5d Error while removing VoicePool (%s)%p @ frame %llu: %s";
      v59 = v99;
      v60 = OS_LOG_TYPE_ERROR;
      v61 = 58;
      goto LABEL_97;
    }

    v112 = std::__hash_table<std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>,std::__unordered_map_hasher<Phase::DspLayer23::VoicePool *,std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>,std::hash<Phase::DspLayer23::VoicePool *>,std::equal_to<Phase::DspLayer23::VoicePool *>,true>,std::__unordered_map_equal<Phase::DspLayer23::VoicePool *,std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>,std::equal_to<Phase::DspLayer23::VoicePool *>,std::hash<Phase::DspLayer23::VoicePool *>,true>,std::allocator<std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>>>::find<Phase::DspLayer23::VoicePool *>(this + 46, v97);
    if (!v112)
    {
      v119 = **(Phase::Logger::GetInstance(0) + 80);
      if (!os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v124 = (*(*v97 + 184))(v97);
      *buf = 136316162;
      *&buf[4] = "DspVoiceManager23.cpp";
      v192 = 1024;
      v193 = 1912;
      v194 = 2080;
      v195 = Phase::DspLayer23::KernelTypeToString(v124);
      v196 = 2048;
      v197 = v97;
      v198 = 2048;
      v199 = a2;
      v26 = "%25s:%-5d Removed DspVoicePool (%s)%p but did not find corresponding DvmVoicePool @ frame %llu";
      goto LABEL_83;
    }

    v113 = v112;
    v114 = v112[3];
    if (v114)
    {
      Phase::Controller::DVM23::DvmVoicePool::~DvmVoicePool(v114);
      MEMORY[0x23EE864A0]();
    }

    v115 = *(this + 376);
    v116 = *v113;
    v117 = v113[1];
    v118 = vcnt_s8(v115);
    v118.i16[0] = vaddlv_u8(v118);
    if (v118.u32[0] > 1uLL)
    {
      if (v117 >= *&v115)
      {
        v117 %= *&v115;
      }
    }

    else
    {
      v117 &= *&v115 - 1;
    }

    v148 = *(this + 46);
    v149 = *(v148 + 8 * v117);
    do
    {
      v150 = v149;
      v149 = *v149;
    }

    while (v149 != v113);
    if (v150 == (this + 384))
    {
      goto LABEL_119;
    }

    v151 = v150[1];
    if (v118.u32[0] > 1uLL)
    {
      if (v151 >= *&v115)
      {
        v151 %= *&v115;
      }
    }

    else
    {
      v151 &= *&v115 - 1;
    }

    if (v151 != v117)
    {
LABEL_119:
      if (v116)
      {
        v152 = *(v116 + 8);
        if (v118.u32[0] > 1uLL)
        {
          v153 = *(v116 + 8);
          if (v152 >= *&v115)
          {
            v153 = v152 % *&v115;
          }
        }

        else
        {
          v153 = v152 & (*&v115 - 1);
        }

        if (v153 == v117)
        {
          goto LABEL_123;
        }
      }

      *(v148 + 8 * v117) = 0;
      v116 = *v113;
    }

    if (!v116)
    {
LABEL_129:
      *v150 = v116;
      *v113 = 0;
      --*(this + 49);

      operator delete(v113);
      return;
    }

    v152 = *(v116 + 8);
LABEL_123:
    if (v118.u32[0] > 1uLL)
    {
      if (v152 >= *&v115)
      {
        v152 %= *&v115;
      }
    }

    else
    {
      v152 &= *&v115 - 1;
    }

    if (v152 != v117)
    {
      *(*(this + 46) + 8 * v152) = v150;
      v116 = *v113;
    }

    goto LABEL_129;
  }

  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v76 = *(a3 + 2);
      v77 = *(a3 + 3);
      *(this + 132) += *(v8 + v76);
      v78 = *(v8 + v76 + 8);
      LODWORD(a6) = *(v8 + v76 + 4);
      *(this + 133) += *(v8 + v76 + 12);
      *(this + 134) += *(v8 + v76 + 16);
      *(this + 135) += *(v8 + v76 + 20);
      *(this + 136) = *(v8 + v76 + 24);
      *(this + 137) = *(v8 + v76 + 28);
      v79 = *(v8 + v76 + 32);
      v76 += 36;
      *(this + 138) = v79;
      v80 = (v8 + v76);
      v82 = *v80;
      v81 = v80 + 2;
      *(a3 + 2) = ((v82 + 11) & 0xFFFFFFFFFFFFFFFCLL) + v76;
      *(a3 + 3) = v77 + 10;
      ++*(this + 139);
      v83 = *(this + 64);
      v84 = *(this + 65);
      *(this + 65) = (1.0 - v83) * *&a6 + v83 * v84;
      if (v78)
      {
        v85 = 0;
        v86 = *(this + 2);
        v87 = *(this + 3);
        do
        {
          if (v87 != v86)
          {
            v88 = &v81[8 * v85];
            v89 = *(this + 5);
            v90 = (v86 + 8 * (v89 >> 9));
            v91 = *v90;
            v92 = *v90 + 8 * (v89 & 0x1FF);
            v93 = *(v86 + (((*(this + 6) + v89) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 6) + v89) & 0x1FF);
            if (v92 != v93)
            {
              while (*(*v92 + 40) != *v88)
              {
                v92 += 8;
                if (v92 - v91 == 4096)
                {
                  v94 = v90[1];
                  ++v90;
                  v91 = v94;
                  v92 = v94;
                }

                if (v92 == v93)
                {
                  v92 = v93;
                  break;
                }
              }
            }

            v95 = *(this + 6) + *(this + 5);
            if (v92 != *(v86 + ((v95 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v95 & 0x1FF))
            {
              LODWORD(v84) = v88[2];
              v84 = (1.0 - v83) * *&v84;
              *(*v92 + 48) = v84 + v83 * *(*v92 + 48);
            }
          }

          ++v85;
        }

        while (v85 != v78);
      }
    }

    else
    {
      v31 = vaddq_s64(*(a3 + 1), xmmword_23A555320);
      v32 = v8 + *(a3 + 2);
      v33 = *v32;
      v190 = *v32;
      v189 = *(v32 + 1);
      v34 = v189;
      v35 = *(v32 + 4);
      v36 = *(v32 + 6);
      v37 = *(v32 + 8);
      *(a3 + 1) = v31;
      v38 = Phase::Controller::DVM23::VoiceGraph::GetVoice(*this, v34);
      if (v37)
      {
        *(v38 + 88) = v36;
        v159 = **(Phase::Logger::GetInstance(v38) + 80);
        if (os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
        {
          v160 = (*(*v33 + 184))(v33);
          *buf = 136317186;
          *&buf[4] = "DspVoiceManager23.cpp";
          v192 = 1024;
          v193 = 1797;
          v194 = 2080;
          v195 = Phase::DspLayer23::KernelTypeToString(v160);
          v196 = 2048;
          v197 = v33;
          v198 = 2048;
          v199 = v34;
          v200 = 2080;
          *v201 = Phase::Controller::DVM23::PlaystateToString(v35);
          *&v201[8] = 2080;
          *v202 = Phase::Controller::DVM23::PlaystateToString(v36);
          *&v202[8] = 2048;
          *v203 = a2;
          *&v203[8] = 2080;
          *v204 = Phase::DspLayer23::DspLayerErrorToString(v37);
          _os_log_impl(&dword_23A302000, v159, OS_LOG_TYPE_ERROR, "%25s:%-5d DVM::ProcessMessageFromRT::PlaystateChangeAck Voice (%s)%p[%llx] could not be put into playstate %s, now currently at playstate %s @ frame %llu: %s", buf, 0x58u);
        }

        __assert_rtn("ProcessMessageFromRT", "DspVoiceManager23.cpp", 1798, "false");
      }

      if (!v38)
      {
        v170 = **(Phase::Logger::GetInstance(0) + 80);
        if (os_log_type_enabled(v170, OS_LOG_TYPE_ERROR))
        {
          v171 = (*(*v33 + 184))(v33);
          *buf = 136316418;
          *&buf[4] = "DspVoiceManager23.cpp";
          v192 = 1024;
          v193 = 1783;
          v194 = 2080;
          v195 = Phase::DspLayer23::KernelTypeToString(v171);
          v196 = 2048;
          v197 = v33;
          v198 = 2048;
          v199 = v34;
          v200 = 2048;
          *v201 = a2;
          _os_log_impl(&dword_23A302000, v170, OS_LOG_TYPE_ERROR, "%25s:%-5d DVM::ProcessMessageFromRT::PlaystateChangeAck Unknown Voice (%s)%p[%llx] @ frame %llu", buf, 0x3Au);
        }

        __assert_rtn("ProcessMessageFromRT", "DspVoiceManager23.cpp", 1784, "false");
      }

      *(v38 + 88) = v36;
      if (v36 == 7)
      {
        *(v38 + 88) = 0;
        v39 = *(v38 + 80);
        v188 = v39;
        *buf = v38;
        std::__hash_table<Phase::Controller::DVM23::Voice *,std::hash<Phase::Controller::DVM23::Voice *>,std::equal_to<Phase::Controller::DVM23::Voice *>,std::allocator<Phase::Controller::DVM23::Voice *>>::__erase_unique<Phase::Controller::DVM23::Voice *>(v39, buf);
        *(*buf + 80) = 0;
        if (!v39[3])
        {
          v40 = *(this + 5);
          v41 = *(this + 2);
          v42 = (v41 + 8 * (v40 >> 9));
          if (*(this + 3) == v41)
          {
            v43 = 0;
            v46 = 0;
            v45 = (v41 + 8 * ((*(this + 6) + v40) >> 9));
          }

          else
          {
            v43 = (*v42 + 8 * (*(this + 5) & 0x1FFLL));
            v44 = *(this + 6) + v40;
            v45 = (v41 + 8 * (v44 >> 9));
            v46 = (*v45 + 8 * (v44 & 0x1FF));
          }

          v154 = std::__find_segment_if[abi:ne200100]<std::__deque_iterator<Phase::Controller::DVM23::DvmVoicePool *,Phase::Controller::DVM23::DvmVoicePool * const*,Phase::Controller::DVM23::DvmVoicePool * const&,Phase::Controller::DVM23::DvmVoicePool * const* const*,long,512l>,std::__find_segment<Phase::Controller::DVM23::DvmVoicePool *>,std::__identity>(v42, v43, v45, v46, &v188);
          std::deque<Phase::Controller::DVM23::DvmVoicePool *>::erase(this + 8, v154, v155);
          v156 = v188;
          *buf = &v190;
          std::__hash_table<std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>,std::__unordered_map_hasher<Phase::DspLayer23::VoicePool *,std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>,std::hash<Phase::DspLayer23::VoicePool *>,std::equal_to<Phase::DspLayer23::VoicePool *>,true>,std::__unordered_map_equal<Phase::DspLayer23::VoicePool *,std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>,std::equal_to<Phase::DspLayer23::VoicePool *>,std::hash<Phase::DspLayer23::VoicePool *>,true>,std::allocator<std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>>>::__emplace_unique_key_args<Phase::DspLayer23::VoicePool *,std::piecewise_construct_t const&,std::tuple<Phase::DspLayer23::VoicePool * const&>,std::tuple<>>(this + 46, v33)[3] = v156;
          Phase::PhaseOSCBundle::WriteNextMessage<Phase::Controller::DVM_RT::DVMRTOSCCommand,int,Phase::DspLayer23::VoicePool *>(this + 7, v190);
        }
      }

      v157 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(this + 58, &v189);
      v158 = v157;
      if (v157)
      {
        std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::operator()(v157[6], a2, v189, v36);
        if (v36 == 7)
        {
          std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>>>::remove(buf, this + 58, v158);
          std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,void *>>>>::~unique_ptr[abi:ne200100](buf);
        }
      }
    }
  }

  else
  {
    if (v9)
    {
      if (v9 == 1)
      {
        v10 = *(a3 + 1);
        v11 = v8 + *(a3 + 2);
        v12 = *v11;
        v13 = vaddq_s64(v10, xmmword_23A5552B0);
        *(a3 + 1) = v13;
        if (v12 <= 2)
        {
          switch(v12)
          {
            case 0:
              NextString = Phase::PhaseOSCMessage::GetNextString(a3);
              v123 = **(Phase::Logger::GetInstance(NextString) + 1184);
              if (!os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
              {
                return;
              }

              *buf = 136315906;
              *&buf[4] = "DspVoiceManager23.cpp";
              v192 = 1024;
              v193 = 2046;
              v194 = 2048;
              v195 = a2;
              v196 = 2080;
              v197 = NextString;
              v26 = "%25s:%-5d Unknown command received @ VE frame %llu: %s";
              goto LABEL_95;
            case 1:
              v147 = Phase::PhaseOSCMessage::GetNextString(a3);
              v123 = **(Phase::Logger::GetInstance(v147) + 1184);
              if (!os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
              {
                return;
              }

              *buf = 136315906;
              *&buf[4] = "DspVoiceManager23.cpp";
              v192 = 1024;
              v193 = 2053;
              v194 = 2048;
              v195 = a2;
              v196 = 2080;
              v197 = v147;
              v26 = "%25s:%-5d Message scheduled for past @ VE frame %llu: %s";
              goto LABEL_95;
            case 2:
              v102 = *(v8 + v13.i64[0]);
              v104 = *(v11 + 2);
              v103 = *(v11 + 3);
              v106 = *(v11 + 4);
              v105 = *(v11 + 5);
              *(a3 + 1) = vaddq_s64(v10, xmmword_23A555310);
              v107 = **(Phase::Logger::GetInstance(this) + 1184);
              if (!os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
              {
                return;
              }

              v108 = (*(*v102 + 184))(v102);
              *buf = 136317186;
              *&buf[4] = "DspVoiceManager23.cpp";
              v192 = 1024;
              v193 = 2067;
              v194 = 2080;
              v195 = Phase::DspLayer23::KernelTypeToString(v108);
              v196 = 2048;
              v197 = v102;
              v198 = 2048;
              v199 = v104;
              v200 = 2048;
              *v201 = v103;
              *&v201[8] = 2048;
              *v202 = v106;
              *&v202[8] = 2080;
              *v203 = Phase::DspLayer23::DspLayerErrorToString(v105);
              *&v203[8] = 2048;
              *v204 = a2;
              v26 = "%25s:%-5d Voice parameter could not be set (%s)%p[%llx] id:%llu v:%f with error %s @ VE frame %llu";
              v59 = v107;
              v60 = OS_LOG_TYPE_ERROR;
              v61 = 88;
              goto LABEL_97;
          }
        }

        else
        {
          if (v12 <= 4)
          {
            if (v12 == 3)
            {
              v127 = *(v8 + v13.i64[0]);
              v129 = *(v11 + 2);
              v128 = *(v11 + 3);
              v130 = vaddq_s64(v10, xmmword_23A5552F0);
              *(a3 + 1) = v130;
              v131 = *(v8 + v130.i64[0]);
              v133 = *(v11 + 5);
              v132 = *(v11 + 6);
              *(a3 + 1) = vaddq_s64(v10, xmmword_23A555300);
              v134 = **(Phase::Logger::GetInstance(this) + 1184);
              if (!os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
              {
                return;
              }

              v135 = (*(*v127 + 184))(v127);
              *buf = 136317442;
              *&buf[4] = "DspVoiceManager23.cpp";
              v192 = 1024;
              v193 = 2082;
              v194 = 2080;
              v195 = Phase::DspLayer23::KernelTypeToString(v135);
              v196 = 2048;
              v197 = v127;
              v198 = 2048;
              v199 = v129;
              v200 = 2048;
              *v201 = v128;
              *&v201[8] = 2048;
              *v202 = v131;
              *&v202[8] = 2048;
              *v203 = v133;
              *&v203[8] = 2080;
              *v204 = Phase::DspLayer23::DspLayerErrorToString(v132);
              *&v204[8] = 2048;
              *v205 = a2;
              v26 = "%25s:%-5d Voice data could not be set (%s)%p[%llx] id:%llu data:%p(%llu) with error %s @ VE frame %llu";
              v59 = v134;
              v60 = OS_LOG_TYPE_ERROR;
              v61 = 98;
              goto LABEL_97;
            }

            v14 = *(v8 + v13.i64[0]);
            v15 = *(v11 + 2);
            v16 = *(v11 + 6);
            v17 = vaddq_s64(v10, xmmword_23A5552D0);
            *(a3 + 1) = v17;
            v18 = *(v8 + v17.i64[0]);
            v19 = *(v11 + 36);
            v20 = *(v11 + 11);
            v21 = *(v11 + 6);
            *(a3 + 1) = vaddq_s64(v10, xmmword_23A5552E0);
            v22 = **(Phase::Logger::GetInstance(this) + 1184);
            if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              return;
            }

            v23 = (*(*v14 + 184))(v14);
            v185 = v19;
            v24 = Phase::DspLayer23::KernelTypeToString(v23);
            v25 = (*(*v18 + 184))(v18);
            *buf = 136317954;
            *&buf[4] = "DspVoiceManager23.cpp";
            v192 = 1024;
            v193 = 2098;
            v194 = 2080;
            v195 = v24;
            v196 = 2048;
            v197 = v14;
            v198 = 2048;
            v199 = v15;
            v200 = 1024;
            *v201 = v16;
            *&v201[4] = 1024;
            *&v201[6] = v20;
            *v202 = 2080;
            *&v202[2] = Phase::DspLayer23::KernelTypeToString(v25);
            *v203 = 2048;
            *&v203[2] = v18;
            *v204 = 2048;
            *&v204[2] = v185;
            *v205 = 2080;
            *&v205[2] = Phase::DspLayer23::DspLayerErrorToString(v21);
            v206 = 2048;
            v207 = a2;
            v26 = "%25s:%-5d Failed to connect Voices (%s)%p[%llx]:%i --> %i:(%s)%p[%llx] with error %s @ VE frame %llu";
            goto LABEL_92;
          }

          if (v12 == 5)
          {
            v136 = *(v8 + v13.i64[0]);
            v137 = *(v11 + 2);
            v138 = *(v11 + 6);
            v139 = vaddq_s64(v10, xmmword_23A5552D0);
            *(a3 + 1) = v139;
            v140 = *(v8 + v139.i64[0]);
            v141 = *(v11 + 36);
            v142 = *(v11 + 11);
            v143 = *(v11 + 6);
            *(a3 + 1) = vaddq_s64(v10, xmmword_23A5552E0);
            v22 = **(Phase::Logger::GetInstance(this) + 1184);
            if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              return;
            }

            v144 = (*(*v136 + 184))(v136);
            v186 = v141;
            v145 = Phase::DspLayer23::KernelTypeToString(v144);
            v146 = (*(*v140 + 184))(v140);
            *buf = 136317954;
            *&buf[4] = "DspVoiceManager23.cpp";
            v192 = 1024;
            v193 = 2114;
            v194 = 2080;
            v195 = v145;
            v196 = 2048;
            v197 = v136;
            v198 = 2048;
            v199 = v137;
            v200 = 1024;
            *v201 = v138;
            *&v201[4] = 1024;
            *&v201[6] = v142;
            *v202 = 2080;
            *&v202[2] = Phase::DspLayer23::KernelTypeToString(v146);
            *v203 = 2048;
            *&v203[2] = v140;
            *v204 = 2048;
            *&v204[2] = v186;
            *v205 = 2080;
            *&v205[2] = Phase::DspLayer23::DspLayerErrorToString(v143);
            v206 = 2048;
            v207 = a2;
            v26 = "%25s:%-5d Failed to disconnect Voices (%s)%p[%llx]:%i -x> %i:(%s)%p[%llx] with error %s @ VE frame %llu";
LABEL_92:
            v59 = v22;
            v60 = OS_LOG_TYPE_ERROR;
            v61 = 110;
            goto LABEL_97;
          }

          if (v12 == 6)
          {
            v122 = *(v8 + v13.i64[0]);
            *(a3 + 1) = vaddq_s64(v10, xmmword_23A5552C0);
            v123 = **(Phase::Logger::GetInstance(this) + 1184);
            if (!os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
            {
              return;
            }

            *buf = 136315906;
            *&buf[4] = "DspVoiceManager23.cpp";
            v192 = 1024;
            v193 = 2121;
            v194 = 2048;
            v195 = v122;
            v196 = 2048;
            v197 = a2;
            v26 = "%25s:%-5d The scheduled message queue is full (%llu messages) @ VE frame %llu.";
LABEL_95:
            v59 = v123;
            v60 = OS_LOG_TYPE_ERROR;
LABEL_96:
            v61 = 38;
            goto LABEL_97;
          }
        }

        v126 = **(Phase::Logger::GetInstance(this) + 1184);
        if (!os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        *buf = 136315650;
        *&buf[4] = "DspVoiceManager23.cpp";
        v192 = 1024;
        v193 = 2126;
        v194 = 2048;
        v195 = a2;
        v26 = "%25s:%-5d A very bad DVM-RT error has occurred @ VE frame %llu.";
        v59 = v126;
        v60 = OS_LOG_TYPE_ERROR;
        v61 = 28;
        goto LABEL_97;
      }

LABEL_54:
      v101 = **(Phase::Logger::GetInstance(this) + 80);
      if (!os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 136315906;
      *&buf[4] = "DspVoiceManager23.cpp";
      v192 = 1024;
      v193 = 2137;
      v194 = 2048;
      v195 = a2;
      v196 = 1024;
      LODWORD(v197) = v9;
      v26 = "%25s:%-5d DVM-NRT::ProcessMessageFromRT(%llu) has received an unknown message with command: %d";
      v59 = v101;
      v60 = OS_LOG_TYPE_ERROR;
      v61 = 34;
      goto LABEL_97;
    }

    v52 = (v8 + *(a3 + 2));
    v54 = *v52;
    v53 = v52[1];
    *(a3 + 1) = vaddq_s64(*(a3 + 1), xmmword_23A5552C0);
    v55 = Phase::Controller::DVM23::DspVoiceManager23::SetVoicePlaystate(this, v53, 2u, 0.0);
    if ((v55 & 7) != 0)
    {
      v56 = v55;
      v57 = **(Phase::Logger::GetInstance(v55) + 80);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        v58 = (*(*v54 + 184))(v54);
        *buf = 136316674;
        *&buf[4] = "DspVoiceManager23.cpp";
        v192 = 1024;
        v193 = 1990;
        v194 = 2048;
        v195 = a2;
        v196 = 2080;
        v197 = Phase::DspLayer23::KernelTypeToString(v58);
        v198 = 2048;
        v199 = v54;
        v200 = 2048;
        *v201 = v53;
        *&v201[8] = 1024;
        *v202 = v56;
        v26 = "%25s:%-5d DVM-NRT::VoiceStopRequested(%llu) is unable to stop (%s)%p[%llx]: %d";
        v59 = v57;
        v60 = OS_LOG_TYPE_ERROR;
        v61 = 64;
LABEL_97:
        _os_log_impl(&dword_23A302000, v59, v60, v26, buf, v61);
      }
    }
  }
}

void std::deque<Phase::Controller::DVM23::DvmVoicePool *>::erase(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = (v5 + 8 * (v4 >> 9));
  if (v6 == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = *v7 + 8 * (*(a1 + 32) & 0x1FFLL);
  }

  if (a3 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = ((a3 - *a2) >> 3) + ((a2 - v7) << 6) - ((v8 - *v7) >> 3);
  }

  v10 = std::__deque_iterator<Phase::Controller::DVM23::DvmVoicePool *,Phase::Controller::DVM23::DvmVoicePool **,Phase::Controller::DVM23::DvmVoicePool *&,Phase::Controller::DVM23::DvmVoicePool ***,long,512l>::operator+[abi:ne200100]((v5 + 8 * (v4 >> 9)), v8, v9);
  v12 = v10;
  v13 = v11;
  v14 = *(a1 + 40);
  v15 = (v11 - *v10) >> 3;
  if (v9 <= (v14 - 1) >> 1)
  {
    if (v15 < 0)
    {
      v26 = 510 - v15;
      v19 = &v10[-(v26 >> 9)];
      v20 = &(*v19)[8 * (~v26 & 0x1FF)];
    }

    else
    {
      v18 = v15 + 1;
      v19 = &v10[v18 >> 9];
      v20 = &(*v19)[8 * (v18 & 0x1FF)];
    }

    if (v10 == v7)
    {
      v27 = v8;
      v28 = v13;
    }

    else
    {
      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<Phase::Controller::DVM23::DvmVoicePool **,std::__deque_iterator<Phase::Controller::DVM23::DvmVoicePool *,Phase::Controller::DVM23::DvmVoicePool **,Phase::Controller::DVM23::DvmVoicePool *&,Phase::Controller::DVM23::DvmVoicePool ***,long,512l>,0>(&v60, *v10, v11, v19, v20);
      v29 = v61;
      v30 = v62;
      v31 = (v12 - 1);
      if (v12 - 1 != v7)
      {
        v32 = *v61;
        do
        {
          v33 = *v31;
          v34 = (*v31 + 4096);
          while (1)
          {
            v35 = v30 - v32;
            if ((v34 - v33) >> 3 >= v35 >> 3)
            {
              v36 = v35 >> 3;
            }

            else
            {
              v36 = (v34 - v33) >> 3;
            }

            v34 -= 8 * v36;
            v30 -= 8 * v36;
            if (v36)
            {
              memmove(v30, v34, 8 * v36);
            }

            if (v34 == v33)
            {
              break;
            }

            v37 = *--v29;
            v32 = v37;
            v30 = v37 + 4096;
          }

          v32 = *v29;
          if (*v29 + 4096 == v30)
          {
            v38 = v29[1];
            ++v29;
            v32 = v38;
            v30 = v38;
          }

          v31 -= 8;
        }

        while (v31 != v7);
      }

      v28 = (*v31 + 4096);
      v27 = v8;
      v19 = v29;
      v20 = v30;
    }

    std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<Phase::Controller::DVM23::DvmVoicePool **,std::__deque_iterator<Phase::Controller::DVM23::DvmVoicePool *,Phase::Controller::DVM23::DvmVoicePool **,Phase::Controller::DVM23::DvmVoicePool *&,Phase::Controller::DVM23::DvmVoicePool ***,long,512l>,0>(&v60, v27, v28, v19, v20);
    v39 = vaddq_s64(*(a1 + 32), xmmword_23A5552A0);
    *(a1 + 32) = v39;
    if (v39.i64[0] >= 0x400uLL)
    {
      operator delete(**(a1 + 8));
      *(a1 + 8) += 8;
      *(a1 + 32) -= 512;
    }
  }

  else
  {
    if (v15 < 0)
    {
      v21 = 510 - v15;
      v16 = ~v21;
      v17 = &v10[-(v21 >> 9)];
    }

    else
    {
      v16 = v15 + 1;
      v17 = &v10[(v15 + 1) >> 9];
    }

    v22 = &(*v17)[8 * (v16 & 0x1FF)];
    v23 = v14 + v4;
    v24 = (v5 + 8 * (v23 >> 9));
    if (v6 == v5)
    {
      v25 = 0;
    }

    else
    {
      v25 = &(*v24)[8 * (v23 & 0x1FF)];
    }

    if (v17 == v24)
    {
      v49 = v25;
      v50 = v10;
      v51 = v13;
    }

    else
    {
      std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,Phase::Controller::DVM23::DvmVoicePool **,Phase::Controller::DVM23::DvmVoicePool **,std::__deque_iterator<Phase::Controller::DVM23::DvmVoicePool *,Phase::Controller::DVM23::DvmVoicePool **,Phase::Controller::DVM23::DvmVoicePool *&,Phase::Controller::DVM23::DvmVoicePool ***,long,512l>,0>(&v60, v22, *v17 + 4096, v10, v13);
      v40 = v61;
      v41 = v62;
      v42 = v17 + 1;
      if (v17 + 1 != v24)
      {
        v59 = v25;
        v43 = *v61;
        do
        {
          v44 = 0;
          v45 = *v42;
          for (++v40; ; ++v40)
          {
            v46 = v43 - v41 + 4096;
            if ((4096 - v44) >> 3 >= v46 >> 3)
            {
              v47 = v46 >> 3;
            }

            else
            {
              v47 = (4096 - v44) >> 3;
            }

            if (v47)
            {
              memmove(v41, &v45[v44], 8 * v47);
            }

            v44 += 8 * v47;
            if (v44 == 4096)
            {
              break;
            }

            v48 = *v40;
            v43 = v48;
            v41 = v48;
          }

          v41 += 8 * v47;
          v43 = *(v40 - 1);
          if (v43 + 4096 == v41)
          {
            v43 = *v40;
            v41 = *v40;
          }

          else
          {
            --v40;
          }

          ++v42;
        }

        while (v42 != v24);
        v25 = v59;
      }

      v22 = *v42;
      v49 = v25;
      v50 = v40;
      v51 = v41;
    }

    std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,Phase::Controller::DVM23::DvmVoicePool **,Phase::Controller::DVM23::DvmVoicePool **,std::__deque_iterator<Phase::Controller::DVM23::DvmVoicePool *,Phase::Controller::DVM23::DvmVoicePool **,Phase::Controller::DVM23::DvmVoicePool *&,Phase::Controller::DVM23::DvmVoicePool ***,long,512l>,0>(&v60, v22, v49, v50, v51);
    v53 = *(a1 + 8);
    v52 = *(a1 + 16);
    v54 = v52 - v53;
    v55 = v52 == v53;
    v57 = *(a1 + 32);
    v56 = *(a1 + 40);
    *(a1 + 40) = v56 - 1;
    v58 = (v54 << 6) - 1;
    if (v55)
    {
      v58 = 0;
    }

    if ((v58 - (v56 + v57) - 1023) <= 0xFFFFFFFFFFFFFBFFLL)
    {
      operator delete(*(v52 - 8));
      *(a1 + 16) -= 8;
    }
  }
}

uint64_t *Phase::PhaseOSCBundle::WriteNextMessage<Phase::Controller::DVM_RT::DVMRTOSCCommand,int,Phase::DspLayer23::VoicePool *>(uint64_t *result, uint64_t a2)
{
  v2 = result[2];
  if ((result[1] - v2 - 4) >= 0x18)
  {
    v3 = *result + v2;
    strcpy((v3 + 12), "ip");
    *(v3 + 16) = 0;
    *(v3 + 20) = a2;
    v4 = *result;
    v5 = result[2];
    *(v4 + v5) = 24;
    *(v3 + 4) = 1;
    *(v4 + 16) += 28;
    result[2] = v5 + 28;
  }

  return result;
}

const char *Phase::DspLayer23::DspLayerErrorToString(unsigned int a1)
{
  if (a1 > 0xC)
  {
    return "Unknown DspLayerError";
  }

  else
  {
    return off_278B4F2B0[a1];
  }
}

uint64_t Phase::PhaseOSCMessage::GetNextString(Phase::PhaseOSCMessage *this)
{
  v2 = *this;
  v3 = *(this + 2);
  v4 = strlen((*this + v3));
  v5 = *(this + 3) + 1;
  *(this + 2) = v3 + (((v4 >> 2 << 34) + 0x400000000) >> 32);
  *(this + 3) = v5;
  return v2 + v3;
}

uint64_t Phase::Controller::DVM23::DspVoiceManager23::CancelCallback(Phase::Controller::DVM23::DspVoiceManager23 *this, unint64_t a2)
{
  v14 = a2;
  if (*(this + 57) == a2)
  {
    return 0;
  }

  result = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(this + 51, &v14);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>>>::remove(this + 51, result, v15);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long)>>,void *>>>>::~unique_ptr[abi:ne200100](v15);
    v4 = *(this + 44);
    v5 = *(this + 45);
    if (v4 >= v5)
    {
      v7 = *(this + 43);
      v8 = v4 - v7;
      v9 = (v4 - v7) >> 4;
      v10 = v9 + 1;
      if ((v9 + 1) >> 60)
      {
        std::vector<Phase::Controller::DVM23::DspVoiceManager23::VoicePlaystateChange>::__throw_length_error[abi:ne200100]();
      }

      v11 = v5 - v7;
      if (v11 >> 3 > v10)
      {
        v10 = v11 >> 3;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::DVM23::DspVoiceManager23::CallbackRequest>>(this + 344, v10);
      }

      v12 = 16 * v9;
      *v12 = v14;
      *(v12 + 8) = 0;
      *(v12 + 12) = 1;
      v6 = 16 * v9 + 16;
      memcpy(0, v7, v8);
      v13 = *(this + 43);
      *(this + 43) = 0;
      *(this + 44) = v6;
      *(this + 45) = 0;
      if (v13)
      {
        operator delete(v13);
      }
    }

    else
    {
      *v4 = v14;
      *(v4 + 8) = 0;
      *(v4 + 12) = 1;
      v6 = v4 + 16;
    }

    *(this + 44) = v6;
    return 1;
  }

  return result;
}

BOOL Phase::Controller::DVM23::DspVoiceManager23::RegisterVoicePlaystateChangeCallback(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8[0] = a2;
  v5 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>((a1 + 464), v8);
  if (!v5)
  {
    v8[2] = v8;
    v6 = std::__hash_table<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 464), v8);
    std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::operator=(v6 + 3, a3);
  }

  return v5 == 0;
}

void *std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::DVM23::DspVoiceManager23::VoiceParameterChange>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::DVM23::DspVoiceManager23::VoiceDataChange>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__function::__value_func<void ()(unsigned long long,Phase::Controller::DVM23::Playstate)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__deque_iterator<Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand*,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand&,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand**,long,102l>::operator+=[abi:ne200100](void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x3333333333333333 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v5 = 101 - v3;
      v6 = &v2[-(v5 / 0x66)];
      *result = v6;
      v4 = *v6 + 40 * (102 * (v5 / 0x66) - v5) + 4040;
    }

    else
    {
      *result = &v2[v3 / 0x66];
      v4 = v2[v3 / 0x66] + 40 * (v3 % 0x66);
    }

    result[1] = v4;
  }

  return result;
}

void *std::__find_segment_if[abi:ne200100]<std::__deque_iterator<Phase::Controller::DVM23::DvmVoicePool *,Phase::Controller::DVM23::DvmVoicePool * const*,Phase::Controller::DVM23::DvmVoicePool * const&,Phase::Controller::DVM23::DvmVoicePool * const* const*,long,512l>,std::__find_segment<Phase::Controller::DVM23::DvmVoicePool *>,std::__identity>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  if (a1 == a3)
  {
    if (a2 != a4)
    {
      while (*a2 != *a5)
      {
        if (++a2 == a4)
        {
          a2 = a4;
          break;
        }
      }
    }

    if (a1)
    {
      if ((*a1 + 4096) == a2)
      {
        ++a1;
      }

      return a1;
    }

    return 0;
  }

  else
  {
    v5 = *a1 + 4096;
    if (v5 == a2)
    {
      goto LABEL_20;
    }

    while (*a2 != *a5)
    {
      if (++a2 == v5)
      {
        goto LABEL_20;
      }
    }

    if (a2 != v5)
    {
      return a1;
    }

LABEL_20:
    while (1)
    {
      v7 = a1[1];
      if (a1 + 1 == a3)
      {
        break;
      }

      v6 = 0;
      ++a1;
      do
      {
        if (v7[v6] == *a5)
        {
          break;
        }

        ++v6;
      }

      while (v6 != 512);
      if (v6 != 512)
      {
        return a1;
      }
    }

    if (v7 != a4)
    {
      v8 = 0;
      do
      {
        if (v7[v8] == *a5)
        {
          break;
        }

        ++v8;
      }

      while (&v7[v8] != a4);
      if (v8 == 512)
      {
        a1 += 2;
        return a1;
      }
    }
  }

  return a3;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::DVM23::DspVoiceManager23::CallbackRequest>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::deque<Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 51;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 102;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long)>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long)>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long)>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long)>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long)>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long)>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long)>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long)>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long)>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long)>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long)>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long)>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100]((v1 + 3));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__function::__value_func<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100]((v1 + 3));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t std::__function::__value_func<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<Phase::Controller::DVM23::DspVoiceManager23::RemoveGraph(unsigned long long)::$_0,std::allocator<Phase::Controller::DVM23::DspVoiceManager23::RemoveGraph(unsigned long long)::$_0>,BOOL ()(Phase::Controller::DVM23::Voice *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D33208;
  a2[1] = v2;
  return result;
}

BOOL std::__function::__func<Phase::Controller::DVM23::DspVoiceManager23::RemoveGraph(unsigned long long)::$_0,std::allocator<Phase::Controller::DVM23::DspVoiceManager23::RemoveGraph(unsigned long long)::$_0>,BOOL ()(Phase::Controller::DVM23::Voice *)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 88);
  if (v2)
  {
    v3 = v2 == 7;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 1;
  }

  if (v2 == 6)
  {
    return *(*a2 + 80) == 0;
  }

  return 0;
}

uint64_t std::__function::__value_func<BOOL ()(Phase::Controller::DVM23::Voice *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__function::__value_func<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100](v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

__n128 std::__function::__func<Phase::Controller::DVM23::DspVoiceManager23::RemoveGraph(unsigned long long)::$_1,std::allocator<Phase::Controller::DVM23::DspVoiceManager23::RemoveGraph(unsigned long long)::$_1>,BOOL ()(Phase::Controller::DVM23::Voice *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D33250;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<Phase::Controller::DVM23::DspVoiceManager23::RemoveGraph(unsigned long long)::$_1,std::allocator<Phase::Controller::DVM23::DspVoiceManager23::RemoveGraph(unsigned long long)::$_1>,BOOL ()(Phase::Controller::DVM23::Voice *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 16);
  v8[0] = *(*a2 + 64);
  v5 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>((v4 + 464), v8);
  if (v5)
  {
    v6 = v5;
    std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::operator()(v5[6], *(a1 + 8), *(v3 + 64), 7);
    std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>>>::remove(v8, (v4 + 464), v6);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,void *>>>>::~unique_ptr[abi:ne200100](v8);
  }

  return 1;
}

__n128 std::__function::__func<Phase::Controller::DVM23::DspVoiceManager23::SetGraphPlaystate(unsigned long long,Phase::Controller::DVM23::PlaystateCommand,double,std::function<void ()(unsigned long long,Phase::Controller::DVM23::Playstate)> &&,unsigned long long &)::$_0,std::allocator<unsigned long long &>,BOOL ()(Phase::Controller::DVM23::Voice *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D33298;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__value_func<void ()(unsigned long long,Phase::Controller::DVM23::Playstate)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<Phase::Controller::DVM23::DspVoiceManager23::SetGraphPlaystate(unsigned long long,Phase::Controller::DVM23::PlaystateCommand,double,std::function<void ()(unsigned long long,Phase::Controller::DVM23::Playstate)> &&,unsigned long long &)::$_1,std::allocator<unsigned long long &>,void ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_284D332E0;
  std::__function::__value_func<void ()(unsigned long long,Phase::Controller::DVM23::Playstate)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

void std::__function::__func<Phase::Controller::DVM23::DspVoiceManager23::SetGraphPlaystate(unsigned long long,Phase::Controller::DVM23::PlaystateCommand,double,std::function<void ()(unsigned long long,Phase::Controller::DVM23::Playstate)> &&,unsigned long long &)::$_1,std::allocator<unsigned long long &>,void ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_284D332E0;
  std::__function::__value_func<void ()(unsigned long long,Phase::Controller::DVM23::Playstate)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__function::__func<Phase::Controller::DVM23::DspVoiceManager23::SetGraphPlaystate(unsigned long long,Phase::Controller::DVM23::PlaystateCommand,double,std::function<void ()(unsigned long long,Phase::Controller::DVM23::Playstate)> &&,unsigned long long &)::$_1,std::allocator<unsigned long long &>,void ()(unsigned long long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D332E0;
  *(a2 + 8) = *(a1 + 8);
  return std::__function::__value_func<void ()(unsigned long long,Phase::Controller::DVM23::Playstate)>::__value_func[abi:ne200100](a2 + 16, a1 + 16);
}

void std::__function::__func<Phase::Controller::DVM23::DspVoiceManager23::SetGraphPlaystate(unsigned long long,Phase::Controller::DVM23::PlaystateCommand,double,std::function<void ()(unsigned long long,Phase::Controller::DVM23::Playstate)> &&,unsigned long long &)::$_1,std::allocator<unsigned long long &>,void ()(unsigned long long)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned long long,Phase::Controller::DVM23::Playstate)>::~__value_func[abi:ne200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__function::__func<Phase::Controller::DVM23::DspVoiceManager23::SetGraphPlaystate(unsigned long long,Phase::Controller::DVM23::PlaystateCommand,double,std::function<void ()(unsigned long long,Phase::Controller::DVM23::Playstate)> &&,unsigned long long &)::$_1,std::allocator<unsigned long long &>,void ()(unsigned long long)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 40);
  v6 = *a2;
  v5 = v2;
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t std::__function::__func<Phase::Controller::DVM23::DspVoiceManager23::IsGraphPlaystateCommandValid(unsigned long long,Phase::Controller::DVM23::PlaystateCommand)::$_0,std::allocator<Phase::Controller::DVM23::DspVoiceManager23::IsGraphPlaystateCommandValid(unsigned long long,Phase::Controller::DVM23::PlaystateCommand)::$_0>,BOOL ()(Phase::Controller::DVM23::Voice *)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_284D33328;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<Phase::Controller::DVM23::DspVoiceManager23::IsGraphPlaystateUniform(unsigned long long,Phase::Controller::DVM23::Playstate)::$_0,std::allocator<Phase::Controller::DVM23::DspVoiceManager23::IsGraphPlaystateUniform(unsigned long long,Phase::Controller::DVM23::Playstate)::$_0>,BOOL ()(Phase::Controller::DVM23::Voice *)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_284D33370;
  *(a2 + 8) = *(result + 8);
  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand *,std::__deque_iterator<Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand *,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand&,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand **,long,102l>,0>(void *result, char *a2, char *a3, void *a4, char *a5)
{
  v6 = a4;
  v8 = result;
  if (a2 == a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = a3;
    v10 = *a4;
    v11 = a3;
    while (1)
    {
      v12 = 0xCCCCCCCCCCCCCCCDLL * (&a5[-v10] >> 3);
      if ((0xCCCCCCCCCCCCCCCDLL * ((v11 - a2) >> 3)) < v12)
      {
        v12 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - a2) >> 3);
      }

      v11 -= 40 * v12;
      a5 -= 40 * v12;
      if (v12)
      {
        result = memmove(a5, v11, 40 * v12 - 4);
      }

      if (v11 == a2)
      {
        break;
      }

      v13 = *--v6;
      v10 = v13;
      a5 = (v13 + 4080);
    }

    if ((*v6 + 4080) == a5)
    {
      v14 = v6[1];
      ++v6;
      a5 = v14;
    }
  }

  *v8 = v9;
  v8[1] = v6;
  v8[2] = a5;
  return result;
}

void *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand *,std::__deque_iterator<Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand *,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand&,Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand **,long,102l>,0>(void *result, _BYTE *__src, _BYTE *a3, void **a4, char *__dst)
{
  v6 = a4;
  v7 = __src;
  v8 = result;
  if (__src != a3)
  {
    v6 = a4 + 1;
    v10 = *a4;
    while (1)
    {
      v11 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - __dst + 4080) >> 3);
      if ((0xCCCCCCCCCCCCCCCDLL * ((a3 - v7) >> 3)) < v11)
      {
        v11 = 0xCCCCCCCCCCCCCCCDLL * ((a3 - v7) >> 3);
      }

      v12 = 5 * v11;
      v13 = 40 * v11;
      if (v11)
      {
        result = memmove(__dst, v7, v13 - 4);
      }

      v7 += 8 * v12;
      if (v7 == a3)
      {
        break;
      }

      v14 = *v6++;
      v10 = v14;
      __dst = v14;
    }

    __dst += v13;
    if (*(v6 - 1) + 4080 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *v8 = v7;
  v8[1] = v6;
  v8[2] = __dst;
  return result;
}

void *std::__split_buffer<Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand *>::emplace_back<Phase::Controller::DVM23::DspVoiceManager23::VoiceDisConnectionCommand *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::reference_wrapper<Phase::SpatialModeler::PriorityQueueEntry>>>(v11);
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

__n128 std::__function::__func<Phase::Controller::DVM23::DspVoiceManager23::FindLatestParentPool(Phase::Controller::DVM23::Voice *,std::__deque_iterator<Phase::Controller::DVM23::DvmVoicePool *,Phase::Controller::DVM23::DvmVoicePool * const*,Phase::Controller::DVM23::DvmVoicePool * const&,Phase::Controller::DVM23::DvmVoicePool * const* const*,long,512l>)::$_0,std::allocator<Phase::Controller::DVM23::DspVoiceManager23::FindLatestParentPool(Phase::Controller::DVM23::Voice *,std::__deque_iterator<Phase::Controller::DVM23::DvmVoicePool *,Phase::Controller::DVM23::DvmVoicePool * const*,Phase::Controller::DVM23::DvmVoicePool * const&,Phase::Controller::DVM23::DvmVoicePool * const* const*,long,512l>)::$_0>,void ()(Phase::Controller::DVM23::Voice *,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D33400;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void *std::__function::__func<Phase::Controller::DVM23::DspVoiceManager23::FindLatestParentPool(Phase::Controller::DVM23::Voice *,std::__deque_iterator<Phase::Controller::DVM23::DvmVoicePool *,Phase::Controller::DVM23::DvmVoicePool * const*,Phase::Controller::DVM23::DvmVoicePool * const&,Phase::Controller::DVM23::DvmVoicePool * const* const*,long,512l>)::$_0,std::allocator<Phase::Controller::DVM23::DspVoiceManager23::FindLatestParentPool(Phase::Controller::DVM23::Voice *,std::__deque_iterator<Phase::Controller::DVM23::DvmVoicePool *,Phase::Controller::DVM23::DvmVoicePool * const*,Phase::Controller::DVM23::DvmVoicePool * const&,Phase::Controller::DVM23::DvmVoicePool * const* const*,long,512l>)::$_0>,void ()(Phase::Controller::DVM23::Voice *,int)>::operator()(void *result, uint64_t a2)
{
  v6 = *(*a2 + 80);
  if (v6)
  {
    v2 = result[3];
    *result[2] = 1;
    v3 = result[4];
    v4 = *(v3 + 8);
    result = std::__find_segment_if[abi:ne200100]<std::__deque_iterator<Phase::Controller::DVM23::DvmVoicePool *,Phase::Controller::DVM23::DvmVoicePool * const*,Phase::Controller::DVM23::DvmVoicePool * const&,Phase::Controller::DVM23::DvmVoicePool * const* const*,long,512l>,std::__find_segment<Phase::Controller::DVM23::DvmVoicePool *>,std::__identity>(*v2, v2[1], *v3, v4, &v6);
    if (v4 != v5)
    {
      *v2 = result;
      v2[1] = v5;
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(Phase::Controller::DVM23::Voice *,int)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<Phase::Controller::DVM23::DspVoiceManager23::FindEarliestChildPool(Phase::Controller::DVM23::Voice *,std::__deque_iterator<Phase::Controller::DVM23::DvmVoicePool *,Phase::Controller::DVM23::DvmVoicePool * const*,Phase::Controller::DVM23::DvmVoicePool * const&,Phase::Controller::DVM23::DvmVoicePool * const* const*,long,512l>)::$_0,std::allocator<Phase::Controller::DVM23::DspVoiceManager23::FindEarliestChildPool(Phase::Controller::DVM23::Voice *,std::__deque_iterator<Phase::Controller::DVM23::DvmVoicePool *,Phase::Controller::DVM23::DvmVoicePool * const*,Phase::Controller::DVM23::DvmVoicePool * const&,Phase::Controller::DVM23::DvmVoicePool * const* const*,long,512l>)::$_0>,void ()(Phase::Controller::DVM23::Voice *,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D33448;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void *std::__function::__func<Phase::Controller::DVM23::DspVoiceManager23::FindEarliestChildPool(Phase::Controller::DVM23::Voice *,std::__deque_iterator<Phase::Controller::DVM23::DvmVoicePool *,Phase::Controller::DVM23::DvmVoicePool * const*,Phase::Controller::DVM23::DvmVoicePool * const&,Phase::Controller::DVM23::DvmVoicePool * const* const*,long,512l>)::$_0,std::allocator<Phase::Controller::DVM23::DspVoiceManager23::FindEarliestChildPool(Phase::Controller::DVM23::Voice *,std::__deque_iterator<Phase::Controller::DVM23::DvmVoicePool *,Phase::Controller::DVM23::DvmVoicePool * const*,Phase::Controller::DVM23::DvmVoicePool * const&,Phase::Controller::DVM23::DvmVoicePool * const* const*,long,512l>)::$_0>,void ()(Phase::Controller::DVM23::Voice *,int)>::operator()(void *result, uint64_t a2)
{
  v6 = *(*a2 + 80);
  if (v6)
  {
    v2 = result[3];
    *result[2] = 1;
    v3 = result[4];
    v4 = *(v3 + 8);
    result = std::__find_segment_if[abi:ne200100]<std::__deque_iterator<Phase::Controller::DVM23::DvmVoicePool *,Phase::Controller::DVM23::DvmVoicePool * const*,Phase::Controller::DVM23::DvmVoicePool * const&,Phase::Controller::DVM23::DvmVoicePool * const* const*,long,512l>,std::__find_segment<Phase::Controller::DVM23::DvmVoicePool *>,std::__identity>(*v2, v2[1], *v3, v4, &v6);
    if (v4 != v5)
    {
      *v3 = result;
      *(v3 + 8) = v5;
    }
  }

  return result;
}

void *std::prev[abi:ne200100]<std::__deque_iterator<Phase::Controller::DVM23::DvmVoicePool *,Phase::Controller::DVM23::DvmVoicePool **,Phase::Controller::DVM23::DvmVoicePool *&,Phase::Controller::DVM23::DvmVoicePool ***,long,512l>,0>(void *a1, uint64_t a2)
{
  v2 = (a2 - *a1) >> 3;
  if (v2 < 2)
  {
    return &a1[-((512 - v2) >> 9)];
  }

  else
  {
    return &a1[(v2 - 1) >> 9];
  }
}

const void **std::__split_buffer<Phase::Controller::DVM23::DvmVoicePool **>::emplace_front<Phase::Controller::DVM23::DvmVoicePool **&>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<double *>>(v9);
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

void *std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,Phase::Controller::DVM23::DvmVoicePool **,Phase::Controller::DVM23::DvmVoicePool **,std::__deque_iterator<Phase::Controller::DVM23::DvmVoicePool *,Phase::Controller::DVM23::DvmVoicePool **,Phase::Controller::DVM23::DvmVoicePool *&,Phase::Controller::DVM23::DvmVoicePool ***,long,512l>,0>(void *result, _BYTE *__src, _BYTE *a3, void **a4, char *__dst)
{
  v6 = a4;
  v8 = result;
  if (__src != a3)
  {
    v9 = __src;
    v6 = a4 + 1;
    v10 = *a4;
    while (1)
    {
      v11 = v10 - __dst + 4096;
      v12 = (a3 - v9) >> 3 >= v11 >> 3 ? v11 >> 3 : (a3 - v9) >> 3;
      if (v12)
      {
        result = memmove(__dst, v9, 8 * v12);
      }

      v9 += 8 * v12;
      if (v9 == a3)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += 8 * v12;
    if (*(v6 - 1) + 4096 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *v8 = a3;
  v8[1] = v6;
  v8[2] = __dst;
  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<Phase::Controller::DVM23::DvmVoicePool **,std::__deque_iterator<Phase::Controller::DVM23::DvmVoicePool *,Phase::Controller::DVM23::DvmVoicePool **,Phase::Controller::DVM23::DvmVoicePool *&,Phase::Controller::DVM23::DvmVoicePool ***,long,512l>,0>(void *result, char *a2, char *a3, void *a4, char *a5)
{
  v6 = a4;
  v8 = result;
  if (a2 == a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = a3;
    v10 = *a4;
    v11 = a3;
    while (1)
    {
      v12 = &a5[-v10];
      if ((v11 - a2) >> 3 >= v12 >> 3)
      {
        v13 = v12 >> 3;
      }

      else
      {
        v13 = (v11 - a2) >> 3;
      }

      v11 -= 8 * v13;
      a5 -= 8 * v13;
      if (v13)
      {
        result = memmove(a5, v11, 8 * v13);
      }

      if (v11 == a2)
      {
        break;
      }

      v14 = *--v6;
      v10 = v14;
      a5 = (v14 + 4096);
    }

    if ((*v6 + 4096) == a5)
    {
      v15 = v6[1];
      ++v6;
      a5 = v15;
    }
  }

  *v8 = v9;
  v8[1] = v6;
  v8[2] = a5;
  return result;
}

uint64_t std::__function::__func<Phase::Controller::DVM23::DspVoiceManager23::OrderVoice(Phase::Controller::DVM23::Voice *)::$_0,std::allocator<Phase::Controller::DVM23::DspVoiceManager23::OrderVoice(Phase::Controller::DVM23::Voice *)::$_0>,void ()(Phase::Controller::DVM23::Voice *,int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D33490;
  a2[1] = v2;
  return result;
}

uint64_t *std::__function::__func<Phase::Controller::DVM23::DspVoiceManager23::OrderVoice(Phase::Controller::DVM23::Voice *)::$_0,std::allocator<Phase::Controller::DVM23::DspVoiceManager23::OrderVoice(Phase::Controller::DVM23::Voice *)::$_0>,void ()(Phase::Controller::DVM23::Voice *,int)>::operator()(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  if (*(v2 + 88) == 1 && !*(v2 + 80))
  {
    return Phase::Controller::DVM23::DspVoiceManager23::OrderVoice(result[1], v2);
  }

  return result;
}

uint64_t std::__function::__func<Phase::Controller::DVM23::DspVoiceManager23::OrderVoice(Phase::Controller::DVM23::Voice *)::$_1,std::allocator<Phase::Controller::DVM23::DspVoiceManager23::OrderVoice(Phase::Controller::DVM23::Voice *)::$_1>,void ()(Phase::Controller::DVM23::Voice *,int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D334D8;
  a2[1] = v2;
  return result;
}

uint64_t *std::__function::__func<Phase::Controller::DVM23::DspVoiceManager23::OrderVoice(Phase::Controller::DVM23::Voice *)::$_1,std::allocator<Phase::Controller::DVM23::DspVoiceManager23::OrderVoice(Phase::Controller::DVM23::Voice *)::$_1>,void ()(Phase::Controller::DVM23::Voice *,int)>::operator()(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(v2 + 88);
  if (v3)
  {
    v4 = v3 == 7;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && (v3 != 6 || *(v2 + 80)))
  {
    return Phase::Controller::DVM23::DspVoiceManager23::OrderVoice(result[1], v2);
  }

  return result;
}

uint64_t std::__function::__func<Phase::Controller::DVM23::DspVoiceManager23::OrderVoice(Phase::Controller::DVM23::Voice *)::$_2,std::allocator<Phase::Controller::DVM23::DspVoiceManager23::OrderVoice(Phase::Controller::DVM23::Voice *)::$_2>,void ()(Phase::Controller::DVM23::Voice *,int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D33520;
  a2[1] = v2;
  return result;
}

uint64_t *std::__function::__func<Phase::Controller::DVM23::DspVoiceManager23::OrderVoice(Phase::Controller::DVM23::Voice *)::$_2,std::allocator<Phase::Controller::DVM23::DspVoiceManager23::OrderVoice(Phase::Controller::DVM23::Voice *)::$_2>,void ()(Phase::Controller::DVM23::Voice *,int)>::operator()(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(v2 + 88);
  if (v3)
  {
    v4 = v3 == 7;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && (v3 != 6 || *(v2 + 80)))
  {
    return Phase::Controller::DVM23::DspVoiceManager23::OrderVoice(result[1], v2);
  }

  return result;
}

__n128 std::__function::__func<Phase::Controller::DVM23::DspVoiceManager23::EndChanges(void)::$_0,std::allocator<Phase::Controller::DVM23::DspVoiceManager23::EndChanges(void)::$_0>,void ()(Phase::Controller::DVM23::Voice *,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D33568;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 36) = 0;
  return result;
}

int64x2_t *std::__function::__func<Phase::Controller::DVM23::DspVoiceManager23::EndChanges(void)::$_0,std::allocator<Phase::Controller::DVM23::DspVoiceManager23::EndChanges(void)::$_0>,void ()(Phase::Controller::DVM23::Voice *,int)>::operator()(int64x2_t *result, uint64_t *a2, int *a3)
{
  v3 = *a2;
  v4 = *(v3 + 88);
  if (v4)
  {
    v5 = v4 == 7;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = *a3;
    if (v4 != 6 || *(v3 + 80))
    {
      return Phase::Controller::DVM23::DspVoiceManager23::RegisterConnectionCommand(result[1].i64[0], v3, v6, result[1].i64[1], result[2].i32[0]);
    }
  }

  return result;
}

__n128 std::__function::__func<Phase::Controller::DVM23::DspVoiceManager23::EndChanges(void)::$_1,std::allocator<Phase::Controller::DVM23::DspVoiceManager23::EndChanges(void)::$_1>,void ()(Phase::Controller::DVM23::Voice *,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D335B0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 36) = 0;
  return result;
}

int64x2_t *std::__function::__func<Phase::Controller::DVM23::DspVoiceManager23::EndChanges(void)::$_1,std::allocator<Phase::Controller::DVM23::DspVoiceManager23::EndChanges(void)::$_1>,void ()(Phase::Controller::DVM23::Voice *,int)>::operator()(int64x2_t *result, Phase::Controller::DVM23::Voice **a2, int *a3)
{
  v3 = *a2;
  v4 = *(*a2 + 22);
  if (v4)
  {
    v5 = v4 == 7;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && (v4 != 6 || *(v3 + 10)))
  {
    return Phase::Controller::DVM23::DspVoiceManager23::RegisterConnectionCommand(result[1].i64[0], result[1].i64[1], result[2].i32[0], v3, *a3);
  }

  return result;
}

void std::__tree<std::pair<Phase::Controller::DVM23::Voice *,unsigned int>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::pair<Phase::Controller::DVM23::Voice *,unsigned int>>::destroy(*a1);
    std::__tree<std::pair<Phase::Controller::DVM23::Voice *,unsigned int>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void *std::__hash_table<std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>,std::__unordered_map_hasher<Phase::DspLayer23::VoicePool *,std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>,std::hash<Phase::DspLayer23::VoicePool *>,std::equal_to<Phase::DspLayer23::VoicePool *>,true>,std::__unordered_map_equal<Phase::DspLayer23::VoicePool *,std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>,std::equal_to<Phase::DspLayer23::VoicePool *>,std::hash<Phase::DspLayer23::VoicePool *>,true>,std::allocator<std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>>>::__emplace_unique_key_args<Phase::DspLayer23::VoicePool *,std::piecewise_construct_t const&,std::tuple<Phase::DspLayer23::VoicePool * const&>,std::tuple<>>(void *a1, unint64_t a2)
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
    v7 = (*&v5 - 1) & v4;
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

void *std::__hash_table<std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>,std::__unordered_map_hasher<Phase::DspLayer23::VoicePool *,std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>,std::hash<Phase::DspLayer23::VoicePool *>,std::equal_to<Phase::DspLayer23::VoicePool *>,true>,std::__unordered_map_equal<Phase::DspLayer23::VoicePool *,std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>,std::equal_to<Phase::DspLayer23::VoicePool *>,std::hash<Phase::DspLayer23::VoicePool *>,true>,std::allocator<std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>>>::find<Phase::DspLayer23::VoicePool *>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v5;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void sub_23A3B6E24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::function<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
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

  return result;
}

void sub_23A3B7128(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

__n128 std::__function::__func<Phase::Controller::DVM23::DspVoiceManager23::LogRtMetrics(void)::$_0,std::allocator<Phase::Controller::DVM23::DspVoiceManager23::LogRtMetrics(void)::$_0>,BOOL ()(Phase::Controller::DVM23::Voice *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D335F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<Phase::Controller::DVM23::DspVoiceManager23::LogRtMetrics(void)::$_0,std::allocator<Phase::Controller::DVM23::DspVoiceManager23::LogRtMetrics(void)::$_0>,BOOL ()(Phase::Controller::DVM23::Voice *)>::operator()(uint64_t a1, void *a2)
{
  v3 = *a2;
  v4 = *(a1 + 16);
  v5 = (*(**a2 + 16))(*a2);
  v6 = v4[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v5;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*v4 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != v5)
  {
    goto LABEL_17;
  }

  v12 = *(v3 + 88);
  if (v12)
  {
    v13 = v12 == 7;
  }

  else
  {
    v13 = 1;
  }

  if (v13 || v12 == 6 && !*(v3 + 80))
  {
    v14 = 28;
  }

  else
  {
    v14 = 24;
  }

  ++*(v10 + v14);
  ++**(a1 + 24);
  return 1;
}

__n128 std::__function::__func<Phase::Controller::DVM23::DspVoiceManager23::LogHeartbeatMetrics(void)::$_0,std::allocator<Phase::Controller::DVM23::DspVoiceManager23::LogHeartbeatMetrics(void)::$_0>,BOOL ()(Phase::Controller::DVM23::Voice *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D33640;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<Phase::Controller::DVM23::DspVoiceManager23::LogHeartbeatMetrics(void)::$_0,std::allocator<Phase::Controller::DVM23::DspVoiceManager23::LogHeartbeatMetrics(void)::$_0>,BOOL ()(Phase::Controller::DVM23::Voice *)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 88);
  if (v2)
  {
    v3 = v2 == 7;
  }

  else
  {
    v3 = 1;
  }

  if (!v3 && (v2 != 6 || *(*a2 + 80)))
  {
    ++**(a1 + 16);
  }

  ++**(a1 + 24);
  return 1;
}

Phase::Controller::DVM_RT *Phase::Controller::DVM_RT::DVM_RT(Phase::Controller::DVM_RT *this, Phase::LockFreeQueueSPSC *a2, Phase::LockFreeQueueSPSC *a3, Phase::DspLayer23::VoiceEngine *a4)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 18) = 0;
  *(this + 19) = 0x2000;
  *(this + 17) = malloc_type_malloc(0x120000uLL, 0x10200401C95B2B0uLL);
  Phase::DspLayer23::BackedMapList<unsigned long long,Phase::Controller::DVM_RT::OSCData,false,1ull>::Clear(this + 120);
  v5 = *(this + 2);
  *(v5 + 184) = Phase::Controller::VoiceEngineCallback;
  *(v5 + 192) = this;
  return this;
}

void Phase::Controller::DVM_RT::Update(Phase::Controller::DVM_RT *this)
{
  v72 = *MEMORY[0x277D85DE8];
  rep = std::chrono::steady_clock::now().__d_.__rep_;
  v70[0] = 0;
  v2 = Phase::LockFreeQueueSPSC::GetWriteBuffer(*(this + 1), 0x2000, v70);
  if (v2)
  {
    v3 = SLODWORD(v70[0]);
    v4 = *(this + 2);
    v5 = *(v4 + 96);
    *(this + 3) = v2;
    *(this + 4) = v3;
    *(this + 5) = 20;
    *v2 = 0x656C646E756223;
    *(v2 + 1) = v5;
    v2[4] = 20;
    if (*(this + 18) && (v6 = *(this + 15), *v6 <= *(v4 + 96)))
    {
      v69 = 0;
      do
      {
        v50 = *v6;
        if (*v6 > *(*(this + 2) + 96))
        {
          break;
        }

        v51 = v6[1];
        buf[0].i64[0] = (v6 + 2);
        buf[0].i64[1] = v51;
        buf[1] = (((strlen(v6 + 24) >> 2 << 34) + 0xC00000000) >> 32);
        v52 = strlen(v6 + 24);
        if (v52 && *(v6 + 24) == 105)
        {
          *(v6 + (v52 & 0xFFFFFFFFFFFFFFFCLL) + 28) = 0;
        }

        Phase::Controller::DVM_RT::ProcessMessageFromNRT(this, buf, v53);
        v6 = v6[17];
        v54 = *(this + 15);
        if (v54)
        {
          v55 = *v54;
          if (*v54 >= v50)
          {
            v56 = 0;
LABEL_45:
            if (v55 == v50)
            {
              if (v56)
              {
                v57 = v56 + 17;
              }

              else
              {
                v57 = (this + 120);
              }

              *v57 = v54[17];
              v54[17] = *(this + 16);
              *(this + 16) = v54;
              --*(this + 18);
            }
          }

          else
          {
            while (1)
            {
              v56 = v54;
              v54 = v54[17];
              if (!v54)
              {
                break;
              }

              v55 = *v54;
              if (*v54 >= v50)
              {
                goto LABEL_45;
              }
            }
          }
        }

        ++v69;
      }

      while (v6);
    }

    else
    {
      v69 = 0;
    }

    if (Phase::LockFreeQueueSPSC::HasData(*this))
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = (*(*this + 16) + *(*this + 4));
        v10 = *v9;
        if (*(v9 + 2) == 0x656C646E756223)
        {
          memset(buf, 0, 32);
          v70[0] = (v9 + 16);
          v70[1] = v10;
          for (v70[2] = 20; Phase::PhaseOSCBundle::GetNextMessage(v70, buf); ++v7)
          {
            Phase::Controller::DVM_RT::ProcessMessageFromNRT(this, buf, v11);
          }
        }

        else
        {
          buf[1] = 0uLL;
          buf[0].i64[0] = (v9 + 16);
          buf[0].i64[1] = v10;
          buf[1] = (((strlen(v9 + 24) >> 2 << 34) + 0xC00000000) >> 32);
          Phase::Controller::DVM_RT::ProcessMessageFromNRT(this, buf, v12);
          ++v7;
        }

        v13 = *this;
        v8 += v10;
        *(v13 + 1) = *(*this + 4) + ((*(*(*this + 16) + *(*this + 4)) + 15) & 0xFFFFFFF0) + 16;
      }

      while (Phase::LockFreeQueueSPSC::HasData(v13));
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    v65 = v8;
    v64 = std::chrono::steady_clock::now().__d_.__rep_;
    Phase::DspLayer23::VoiceEngine::Process(*(this + 2));
    if (*(Phase::Logger::GetInstance(v20) + 1641))
    {
      v21 = *(this + 2);
      v23 = *v21;
      v22 = v21[1];
      v60 = *(this + 9);
      v68 = v21;
      ReservedMixChannelCount = Phase::DspLayer23::VoiceEngine::GetReservedMixChannelCount(v21);
      v24 = v22 - v23;
      MEMORY[0x28223BE20]();
      v62 = v25;
      v63 = &v58 - v25;
      bzero(&v58 - v25, v25);
      v59 = v24 >> 3;
      if ((v24 >> 3))
      {
        v26 = 0;
        v67 = v24 & 0x7FFFFFFF8;
        v27 = v63 + 12;
        do
        {
          v28 = *(*v68 + v26);
          v29 = v28[146];
          v30 = (*(*v28 + 88))(v28);
          v31 = (*(*v28 + 96))(v28);
          v32 = (*(*v28 + 112))(v28);
          v33 = (*(*v28 + 184))(v28);
          *(v27 - 12) = v28;
          *(v27 - 1) = v29;
          *v27 = v30;
          v26 += 8;
          *(v27 + 1) = v31;
          *(v27 + 2) = v32;
          *(v27 + 12) = v33;
          v27 += 32;
        }

        while (v67 != v26);
      }

      v34 = std::chrono::steady_clock::now().__d_.__rep_;
      v35 = *(this + 5);
      v36 = *(this + 3);
      v37 = v62;
      v38 = (v62 << 32) + 0x2C00000000;
      v39 = v38 >> 32;
      if ((v38 >> 32) + 20 <= (*(this + 4) - v35 - 4))
      {
        v40 = v36 + v35;
        *(v40 + 4) = 2;
        v41 = vmovn_s64(v60);
        v42 = rep;
        v43 = v63;
        *(v40 + 24) = v64 - rep;
        *(v40 + 28) = v34 - v42;
        *(v40 + 32) = v59;
        *(v40 + 36) = v7;
        v44 = v69;
        *(v40 + 40) = v65;
        *(v40 + 44) = v44;
        strcpy((v40 + 12), "iiiiiiiiib");
        *(v40 + 48) = v41;
        *(v40 + 56) = ReservedMixChannelCount;
        *(v40 + 60) = v37;
        memcpy((v40 + 68), v43, v37);
        v36 = *(this + 3);
        if (v39 >= -20)
        {
          v45 = *(this + 5);
          *(v36 + v45) = HIDWORD(v38) + 20;
          *(v36 + 16) += HIDWORD(v38) + 24;
          *(this + 5) = v39 + v45 + 24;
        }
      }
    }

    else
    {
      v36 = *(this + 3);
    }

    v46 = *(v36 + 16);
    if (v46 != 20)
    {
      v47 = Phase::LockFreeQueueSPSC::CommitBytes(*(this + 1), v46);
      if ((v47 & 1) == 0)
      {
        v17 = **(Phase::Logger::GetInstance(v47) + 1184);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v48 = *(*(this + 3) + 16);
          v49 = *(*(this + 2) + 96);
          buf[0].i32[0] = 136315906;
          *(buf[0].i64 + 4) = "DVM_RT.cpp";
          buf[0].i16[6] = 1024;
          *(&buf[0].i32[3] + 2) = 462;
          buf[1].i16[1] = 1024;
          buf[1].i32[1] = v48;
          buf[1].i16[4] = 2048;
          *(&buf[1].i64[1] + 2) = v49;
          v19 = "%25s:%-5d DVM_RT unable to write %iB into message pipe to DVM_NRT at Frame %llu. Pipe is full!";
          goto LABEL_32;
        }
      }
    }
  }

  else
  {
    v14 = *(*(this + 2) + 24);
    if (v14 >= 1)
    {
      v15 = 0;
      v16 = 8 * v14;
      do
      {
        bzero(*(*(*(this + 2) + 40) + v15), 4 * *(*(this + 2) + 72));
        v15 += 8;
      }

      while (v16 != v15);
    }

    v17 = **(Phase::Logger::GetInstance(v2) + 1184);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = *(*(this + 2) + 96);
      buf[0].i32[0] = 136315906;
      *(buf[0].i64 + 4) = "DVM_RT.cpp";
      buf[0].i16[6] = 1024;
      *(&buf[0].i32[3] + 2) = 233;
      buf[1].i16[1] = 1024;
      buf[1].i32[1] = 0x2000;
      buf[1].i16[4] = 2048;
      *(&buf[1].i64[1] + 2) = v18;
      v19 = "%25s:%-5d DVM_RT unable to reserve %iB in message pipe to DVM_NRT at Frame %llu, pipe is full! Did the main thread stop, pause, or stutter?";
LABEL_32:
      _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, v19, buf, 0x22u);
    }
  }
}

void Phase::Controller::DVM_RT::ProcessMessageFromNRT(Phase::Controller::DVM_RT *this, int64x2_t *a2, Phase::PhaseOSCMessage *a3)
{
  v85 = *MEMORY[0x277D85DE8];
  v4 = a2->i64[0];
  v5 = a2[1];
  v6 = (a2->i64[0] + a2[1].i64[0]);
  v7 = *v6;
  v8 = vaddq_s64(v5, xmmword_23A554A00);
  a2[1] = v8;
  if (v7 < 1)
  {
    if (v7)
    {
      Phase::Controller::DVM_RT::DVMRTOSCCommand_ToString(__p, a2);
      if (v83 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      v17 = (this + 24);
      v18 = 1;
LABEL_19:
      Phase::PhaseOSCBundle::WriteNextMessage<Phase::Controller::DVM_RT::DVMNRTOSCCommand,Phase::Controller::DVM_RT::DVMRTError,char const*>(v17, v18, v16);
      if (v83 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      switch(*v4)
      {
        case 0:
          v24 = *(v4 + v8.i64[0]);
          v25 = v6[3];
          a2[1] = vaddq_s64(v5, xmmword_23A5553F0);
          v26 = *(this + 2);

          Phase::DspLayer23::VoiceEngine::AddPool(v26, v24, v25);
          return;
        case 1:
          v50 = *(v4 + v8.i64[0]);
          a2[1] = vaddq_s64(v5, xmmword_23A555390);
          v51 = Phase::DspLayer23::VoiceEngine::RemovePool(*(this + 2), v50);

          Phase::PhaseOSCBundle::WriteNextMessage<Phase::Controller::DVM_RT::DVMNRTOSCCommand,Phase::DspLayer23::VoicePool *,Phase::DspLayer23::DspLayerError>(this + 3, v50, v51);
          return;
        case 2:
          v39 = *(v4 + v8.i64[0]);
          v40 = *(v6 + 3);
          a2[1] = vaddq_s64(v5, xmmword_23A5553A0);
          v41 = Phase::DspLayer23::VoiceEngine::PlayVoice(*(this + 2), v39, v40);
          v30 = v41;
          if (v41)
          {
            v42 = v41 == 3;
          }

          else
          {
            v42 = 1;
          }

          if (v42)
          {
            v31 = 2;
          }

          else if (Phase::DspLayer23::VoicePool::IsVoicePaused(v39, v40))
          {
            v31 = 4;
          }

          else
          {
            v31 = 7;
          }

          v77 = (this + 24);
          v78 = v39;
          v79 = v40;
          v80 = 2;
          goto LABEL_83;
        case 3:
          v43 = *(v4 + v8.i64[0]);
          v44 = *(v6 + 3);
          a2[1] = vaddq_s64(v5, xmmword_23A5553A0);
          v30 = Phase::DspLayer23::VoiceEngine::PauseVoice(*(this + 2), v43, v44);
          if ((v30 & 0xFFFFFFFB) != 0)
          {
            if (Phase::DspLayer23::VoicePool::IsVoicePlaying(v43, v44))
            {
              v31 = 2;
            }

            else
            {
              v31 = 7;
            }
          }

          else
          {
            v31 = 4;
          }

          v77 = (this + 24);
          v78 = v43;
          v79 = v44;
          v80 = 4;
          goto LABEL_83;
        case 4:
          v28 = *(v4 + v8.i64[0]);
          v29 = *(v6 + 3);
          a2[1] = vaddq_s64(v5, xmmword_23A5553A0);
          v30 = Phase::DspLayer23::VoiceEngine::StopVoice(*(this + 2), v28, v29);
          if (v30)
          {
            if (Phase::DspLayer23::VoicePool::IsVoicePlaying(v28, v29))
            {
              v31 = 2;
            }

            else if (Phase::DspLayer23::VoicePool::IsVoicePaused(v28, v29))
            {
              v31 = 4;
            }

            else
            {
              v31 = 7;
            }
          }

          else
          {
            v31 = 7;
          }

          v77 = (this + 24);
          v78 = v28;
          v79 = v29;
          v80 = 7;
LABEL_83:

          Phase::PhaseOSCBundle::WriteNextMessage<Phase::Controller::DVM_RT::DVMNRTOSCCommand,Phase::DspLayer23::VoicePool *,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError>(v77, v78, v79, v80, v31, v30);
          break;
        case 5:
          v52 = *(v4 + v8.i64[0]);
          v53 = *(v6 + 3);
          v54 = v6[5];
          v55 = vaddq_s64(v5, xmmword_23A5553D0);
          a2[1] = v55;
          v56 = *(v4 + v55.i64[0]);
          v57 = *(v6 + 4);
          v58 = v6[10];
          a2[1] = vaddq_s64(v5, xmmword_23A5553E0);
          v59 = Phase::DspLayer23::VoiceEngine::ConnectVoices(*(this + 2), v52, v53, v54, v56, v57, v58);
          if (v59)
          {
            Phase::PhaseOSCBundle::WriteNextMessage<Phase::Controller::DVM_RT::DVMNRTOSCCommand,Phase::Controller::DVM_RT::DVMRTError,Phase::DspLayer23::VoicePool *,unsigned long long,int,Phase::DspLayer23::VoicePool *,unsigned long long,int,Phase::DspLayer23::DspLayerError>(this + 3, 4u, v52, v53, v54, v56, v57, v58, v59);
          }

          break;
        case 6:
          v60 = *(v4 + v8.i64[0]);
          v61 = *(v6 + 3);
          v62 = v6[5];
          v63 = vaddq_s64(v5, xmmword_23A5553D0);
          a2[1] = v63;
          v64 = *(v4 + v63.i64[0]);
          v65 = *(v6 + 4);
          v66 = v6[10];
          a2[1] = vaddq_s64(v5, xmmword_23A5553E0);
          v67 = Phase::DspLayer23::VoiceEngine::DisconnectVoices(*(this + 2), v60, v61, v62, v64, v65, v66);
          if (v67)
          {
            Phase::PhaseOSCBundle::WriteNextMessage<Phase::Controller::DVM_RT::DVMNRTOSCCommand,Phase::Controller::DVM_RT::DVMRTError,Phase::DspLayer23::VoicePool *,unsigned long long,int,Phase::DspLayer23::VoicePool *,unsigned long long,int,Phase::DspLayer23::DspLayerError>(this + 3, 5u, v60, v61, v62, v64, v65, v66, v67);
          }

          break;
        case 7:
          v45 = *(v4 + v8.i64[0]);
          v46 = *(v6 + 3);
          v47 = *(v6 + 5);
          v48 = *(v6 + 7);
          a2[1] = vaddq_s64(v5, xmmword_23A5553C0);
          v49 = (*(*v45 + 136))(v45, v46, v47, v48);
          if (v49)
          {

            Phase::PhaseOSCBundle::WriteNextMessage<Phase::Controller::DVM_RT::DVMNRTOSCCommand,Phase::Controller::DVM_RT::DVMRTError,Phase::DspLayer23::VoicePool *,unsigned long long,unsigned long long,double,Phase::DspLayer23::DspLayerError>(this + 3, v45, v46, v47, v49, v48);
          }

          break;
        case 8:
          v70 = *(v4 + v8.i64[0]);
          v71 = *(v6 + 3);
          v72 = *(v6 + 5);
          v73 = vaddq_s64(v5, xmmword_23A5552D0);
          a2[1] = v73;
          v74 = *(v4 + v73.i64[0]);
          v75 = *(v6 + 9);
          a2[1] = vaddq_s64(v5, xmmword_23A5553B0);
          v76 = (*(*v70 + 160))(v70, v71, v72, v74, v75);
          if (v76)
          {

            Phase::PhaseOSCBundle::WriteNextMessage<Phase::Controller::DVM_RT::DVMNRTOSCCommand,Phase::Controller::DVM_RT::DVMRTError,Phase::DspLayer23::VoicePool *,unsigned long long,unsigned long long,unsigned long long,unsigned long long,Phase::DspLayer23::DspLayerError>(this + 3, v70, v71, v72, v72, v75, v76);
          }

          break;
        case 9:
          v37 = *(v4 + v8.i64[0]);
          a2[1] = vaddq_s64(v5, xmmword_23A5553A0);
          v38 = *(*v37 + 144);

          v38();
          break;
        case 0xA:
          v68 = *(v4 + v8.i64[0]);
          a2[1] = vaddq_s64(v5, xmmword_23A555390);
          v69 = (this + 24);

          Phase::PhaseOSCBundle::WriteNextMessage<Phase::Controller::DVM_RT::DVMNRTOSCCommand,unsigned long long>(v69, v68);
          break;
        case 0xB:
          v27 = *(v4 + v8.i64[0]);
          a2[1] = vaddq_s64(v5, xmmword_23A555390);
          __p[0] = &unk_284D33688;
          __p[1] = v27;
          v84 = __p;
          Phase::DspLayer23::BackedMapList<unsigned long long,Phase::Controller::DVM_RT::OSCData,false,1ull>::RemoveIf(this + 15, __p);
          std::__function::__value_func<BOOL ()(unsigned long long,Phase::Controller::DVM_RT::OSCData &)>::~__value_func[abi:ne200100](__p);
          break;
        case 0xC:
          v32 = *(v4 + v8.i64[0]);
          v33 = vaddq_s64(v5, xmmword_23A555390);
          a2[1] = v33;
          v34 = *(v4 + v33.i64[0]);
          v35 = *(v6 + 5);
          a2[1] = vaddq_s64(v5, xmmword_23A5552D0);
          v36 = Phase::DspLayer23::VoiceEngine::MoveVoice(*(this + 2), v32, v34, v35);
          if (!v36)
          {
            Phase::Controller::DVM_RT::RewriteScheduledCommandsForVoice(*(this + 15), v32, v34, v35);
          }

          Phase::PhaseOSCBundle::WriteNextMessage<Phase::Controller::DVM_RT::DVMNRTOSCCommand,Phase::DspLayer23::VoicePool *,Phase::DspLayer23::VoicePool *,unsigned long long,Phase::DspLayer23::DspLayerError>(this + 3, v32, v34, v35, v36);
          break;
        default:
          Phase::Controller::DVM_RT::DVMRTOSCCommand_ToString(__p, a2);
          if (v83 >= 0)
          {
            v16 = __p;
          }

          else
          {
            v16 = __p[0];
          }

          v17 = (this + 24);
          v18 = 0;
          goto LABEL_19;
      }
    }
  }

  else
  {
    v9 = (this + 120);
    v10 = *(this + 15);
    v11 = *(*(this + 2) + 96) + v7;
    if (v10 && *v10 <= v11)
    {
      do
      {
        v12 = v10;
        v10 = v10[17];
      }

      while (v10 && *v10 <= v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = *(this + 16);
    if (v13)
    {
      *(this + 16) = v13[17];
      *v13 = v11;
      v13[17] = v10;
      if (v12)
      {
        v9 = (v12 + 17);
      }

      *v9 = v13;
      ++*(this + 18);
      v14 = a2->u64[1];
      v13[1] = v14;
      v15 = a2->i64[0];

      memcpy(v13 + 2, v15, v14);
    }

    else
    {
      v19 = *(this + 5);
      if ((*(this + 4) - v19 - 4) >= 0x1C)
      {
        v20 = *(this + 19);
        v21 = *(this + 3) + v19;
        *(v21 + 4) = 1;
        strcpy((v21 + 12), "hh");
        *(v21 + 16) = 6;
        *(v21 + 24) = v20;
        v22 = *(this + 3);
        v23 = *(this + 5);
        *(v22 + v23) = 28;
        *(v22 + 16) += 32;
        *(this + 5) = v23 + 32;
      }
    }
  }
}

void sub_23A3B8808(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(unsigned long long,Phase::Controller::DVM_RT::OSCData &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *Phase::PhaseOSCBundle::WriteNextMessage<Phase::Controller::DVM_RT::DVMNRTOSCCommand,Phase::DspLayer23::VoicePool *,Phase::DspLayer23::DspLayerError>(uint64_t *result, uint64_t a2, unsigned int a3)
{
  v3 = result[2];
  if ((result[1] - v3 - 4) >= 0x1C)
  {
    v4 = *result + v3;
    *(v4 + 4) = 6;
    strcpy((v4 + 12), "ph");
    v5 = *result;
    *(v4 + 16) = a2;
    v6 = result[2];
    *(v5 + v6) = 28;
    *(v4 + 24) = a3;
    *(v5 + 16) += 32;
    result[2] = v6 + 32;
  }

  return result;
}

uint64_t *Phase::PhaseOSCBundle::WriteNextMessage<Phase::Controller::DVM_RT::DVMNRTOSCCommand,Phase::DspLayer23::VoicePool *,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError>(uint64_t *result, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6)
{
  v6 = result[2];
  if ((result[1] - v6 - 4) >= 0x38)
  {
    v7 = *result + v6;
    *(v7 + 4) = 3;
    *(v7 + 20) = a2;
    *(v7 + 28) = a3;
    *(v7 + 36) = a4;
    strcpy((v7 + 12), "phhhh");
    *(v7 + 44) = a5;
    v8 = *result;
    v9 = result[2];
    *(v8 + v9) = 56;
    *(v7 + 52) = a6;
    *(v8 + 16) += 60;
    result[2] = v9 + 60;
  }

  return result;
}

size_t Phase::Controller::DVM_RT::RewriteScheduledCommandsForVoice(size_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v7 = result;
    do
    {
      v9 = v7 + 16;
      v8 = *(v7 + 16);
      v10 = v8 > 9;
      v11 = (1 << v8) & 0x39C;
      if (!v10 && v11 != 0)
      {
        result = strlen((v7 + 24));
        v13 = v9 + (((result >> 2 << 34) + 0xC00000000) >> 32);
        v14 = *(v13 + 12) == a4 && *(v13 + 4) == a2;
        if (v14 && result >= 2)
        {
          v16 = 1 << (*(v7 + 24) - 100);
          v17 = (result & 0xFFFFFFFFFFFFFFFCLL) + 16;
          if ((v16 & 0x24) == 0)
          {
            v17 = (result & 0xFFFFFFFFFFFFFFFCLL) + 12;
          }

          if ((v16 & 0x1011) != 0)
          {
            v17 = (result & 0xFFFFFFFFFFFFFFFCLL) + 20;
          }

          if (*(v7 + 24) - 100 > 0xC)
          {
            v17 = (result & 0xFFFFFFFFFFFFFFFCLL) + 12;
          }

          if (*(v7 + 25) == 112)
          {
            *(v9 + v17) = a3;
          }
        }
      }

      v7 = *(v7 + 136);
    }

    while (v7);
  }

  return result;
}

uint64_t *Phase::PhaseOSCBundle::WriteNextMessage<Phase::Controller::DVM_RT::DVMNRTOSCCommand,Phase::DspLayer23::VoicePool *,Phase::DspLayer23::VoicePool *,unsigned long long,Phase::DspLayer23::DspLayerError>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = result[2];
  if ((result[1] - v5 - 4) >= 0x30)
  {
    v6 = *result + v5;
    *(v6 + 4) = 4;
    *(v6 + 20) = a2;
    *(v6 + 28) = a3;
    *(v6 + 36) = a4;
    strcpy((v6 + 12), "pphh");
    v7 = *result;
    v8 = result[2];
    *(v7 + v8) = 48;
    *(v6 + 44) = a5;
    *(v7 + 16) += 52;
    result[2] = v8 + 52;
  }

  return result;
}

uint64_t *Phase::PhaseOSCBundle::WriteNextMessage<Phase::Controller::DVM_RT::DVMNRTOSCCommand,Phase::Controller::DVM_RT::DVMRTError,Phase::DspLayer23::VoicePool *,unsigned long long,int,Phase::DspLayer23::VoicePool *,unsigned long long,int,Phase::DspLayer23::DspLayerError>(uint64_t *result, unsigned int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8, int a9)
{
  v9 = result[2];
  if ((result[1] - v9 - 4) >= 0x4C)
  {
    v10 = *result + v9;
    *(v10 + 4) = 1;
    *(v10 + 24) = a2;
    *(v10 + 32) = a3;
    *(v10 + 40) = a4;
    *(v10 + 48) = a5;
    *(v10 + 52) = a6;
    *(v10 + 60) = a7;
    *(v10 + 68) = a8;
    strcpy((v10 + 12), "hphiphih");
    v11 = *result;
    v12 = result[2];
    *(v11 + v12) = 76;
    *(v10 + 72) = a9;
    *(v11 + 16) += 80;
    result[2] = v12 + 80;
  }

  return result;
}

uint64_t *Phase::PhaseOSCBundle::WriteNextMessage<Phase::Controller::DVM_RT::DVMNRTOSCCommand,Phase::Controller::DVM_RT::DVMRTError,Phase::DspLayer23::VoicePool *,unsigned long long,unsigned long long,double,Phase::DspLayer23::DspLayerError>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, double a6)
{
  v6 = result[2];
  if ((result[1] - v6 - 4) >= 0x40)
  {
    v7 = *result + v6;
    *(v7 + 4) = 1;
    strcpy((v7 + 12), "hphhdh");
    *(v7 + 20) = 2;
    *(v7 + 28) = a2;
    *(v7 + 36) = a3;
    *(v7 + 44) = a4;
    *(v7 + 52) = a6;
    v8 = *result;
    v9 = result[2];
    *(v8 + v9) = 64;
    *(v7 + 60) = a5;
    *(v8 + 16) += 68;
    result[2] = v9 + 68;
  }

  return result;
}

double Phase::PhaseOSCBundle::WriteNextMessage<Phase::Controller::DVM_RT::DVMNRTOSCCommand,Phase::Controller::DVM_RT::DVMRTError,Phase::DspLayer23::VoicePool *,unsigned long long,unsigned long long,unsigned long long,unsigned long long,Phase::DspLayer23::DspLayerError>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = a1[2];
  if ((a1[1] - v7 - 4) >= 0x48)
  {
    v8 = *a1 + v7;
    *(v8 + 4) = 1;
    strcpy((v8 + 12), "hphhhhh");
    *(v8 + 20) = 3;
    *(v8 + 28) = a2;
    *(v8 + 36) = a3;
    *(v8 + 44) = a4;
    *&result = 1751672944;
    *(v8 + 52) = a5;
    *(v8 + 60) = a6;
    v10 = *a1;
    v11 = a1[2];
    *(v10 + v11) = 72;
    *(v8 + 68) = a7;
    *(v10 + 16) += 76;
    a1[2] = v11 + 76;
  }

  return result;
}

uint64_t *Phase::PhaseOSCBundle::WriteNextMessage<Phase::Controller::DVM_RT::DVMNRTOSCCommand,unsigned long long>(uint64_t *result, uint64_t a2)
{
  v2 = result[2];
  if ((result[1] - v2 - 4) >= 0x14)
  {
    v3 = *result + v2;
    *(v3 + 4) = 5;
    *(v3 + 12) = 104;
    v4 = *result;
    v5 = result[2];
    *(v4 + v5) = 20;
    *(v3 + 16) = a2;
    *(v4 + 16) += 24;
    result[2] = v5 + 24;
  }

  return result;
}

void **Phase::DspLayer23::BackedMapList<unsigned long long,Phase::Controller::DVM_RT::OSCData,false,1ull>::RemoveIf(void **result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    v4 = result;
    v5 = 0;
    while (1)
    {
      v6 = v2;
      v7 = *(a2 + 24);
      v9 = *v2;
      if (!v7)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      result = (*(*v7 + 48))(v7, &v9, v2 + 1);
      v2 = v6[17];
      if (result)
      {
        break;
      }

      v5 = v6;
      if (!v2)
      {
        return result;
      }
    }

    v8 = v5 + 17;
    if (!v5)
    {
      v8 = v4;
    }

    *v8 = v2;
    v6[17] = v4[1];
    v4[1] = v6;
    v4[3] = (v4[3] - 1);
  }

  return result;
}

unint64_t Phase::PhaseOSCBundle::WriteNextMessage<Phase::Controller::DVM_RT::DVMNRTOSCCommand,Phase::Controller::DVM_RT::DVMRTError,char const*>(uint64_t *a1, unsigned int a2, char *__s)
{
  v6 = a1[2];
  v7 = a1[1] - v6 - 4;
  result = strlen(__s);
  if ((((result >> 2 << 34) + 0xC00000000) >> 32) + 12 <= v7)
  {
    v9 = *a1 + v6;
    *(v9 + 4) = 1;
    strcpy((v9 + 12), "hs");
    *(v9 + 16) = a2;
    v10 = strlen(__s);
    result = memcpy((v9 + 24), __s, v10 + 1);
    v11 = (v10 >> 2 << 34) + 0xC00000000;
    v12 = v11 >> 32;
    if (v11 >> 32 >= -12)
    {
      v13 = HIDWORD(v11);
      v14 = *a1;
      v15 = a1[2];
      *(v14 + v15) = v13 + 12;
      *(v14 + 16) += v13 + 16;
      a1[2] = v12 + v15 + 16;
    }
  }

  return result;
}

_BYTE *Phase::Controller::DVM_RT::DVMRTOSCCommand_ToString(Phase::Controller::DVM_RT *this, int64x2_t *a2)
{
  v77 = *MEMORY[0x277D85DE8];
  v4 = a2->i64[0];
  v5 = (a2->i64[0] + 8);
  v6 = ((strlen(v5) >> 2 << 34) + 0xC00000000) >> 32;
  v7 = *v4;
  v8 = v4 + v6;
  v9 = *(v4 + v6);
  v10 = v6 + 4;
  a2[1].i64[0] = v6 + 4;
  a2[1].i64[1] = 1;
  if (v7 > 5)
  {
    if (v7 > 8)
    {
      if (v7 == 9)
      {
        v48 = *(v4 + v10);
        a2[1].i64[0] = v6 + 12;
        a2[1].i64[1] = 2;
        v49 = (*(*v48 + 184))(v48);
        Phase::DspLayer23::KernelTypeToString(v49);
        a2[1] = vaddq_s64(a2[1], xmmword_23A5552B0);
        snprintf(__str, 0x80uLL, "UpdateVoice<%i> (%s)%p[%llx]");
        goto LABEL_29;
      }

      if (v7 == 10)
      {
        a2[1].i64[0] = v6 + 12;
        a2[1].i64[1] = 2;
        snprintf(__str, 0x80uLL, "ScheduleDvmCallback<%i> id:%llu");
        goto LABEL_29;
      }

      if (v7 != 12)
      {
LABEL_30:
        a2[1].i64[0] = ((strlen(v5) >> 2 << 34) + 0xC00000000) >> 32;
        a2[1].i64[1] = 0;
        v57 = snprintf(__str, 0x400uLL, "0x%08llX", v7);
        v75 = vdupq_n_s64(1uLL);
        while (1)
        {
          while (1)
          {
            v59 = *v5++;
            v58 = v59;
            if (v59 > 101)
            {
              break;
            }

            if (v58 > 97)
            {
              if (v58 == 98)
              {
                v65.i64[1] = v75.i64[1];
                v65.i64[0] = (*(a2->i64[0] + a2[1].i64[0]) + 11) & 0xFFFFFFFFFFFFFFFCLL;
                a2[1] = vaddq_s64(v65, a2[1]);
                v62 = snprintf(&__str[v57], 1024 - v57, " [%llub ...]");
                goto LABEL_52;
              }

              if (v58 == 100)
              {
                v63 = &__str[v57];
                v64 = 1024 - v57;
                a2[1] = vaddq_s64(a2[1], xmmword_23A5552B0);
LABEL_50:
                v62 = snprintf(v63, v64, " %g");
                goto LABEL_52;
              }
            }

            else if (v58 == 70 || v58 == 84)
            {
              v60 = &__str[v57];
              v61 = 1024 - v57;
              if (v58 == 84)
              {
                v62 = snprintf(v60, v61, " true", v66);
              }

              else
              {
                v62 = snprintf(v60, v61, " false");
              }

LABEL_52:
              v57 += v62;
            }

            else if (!v58)
            {
              goto LABEL_29;
            }
          }

          if (v58 > 104)
          {
            if (v58 == 112)
            {
              a2[1] = vaddq_s64(a2[1], xmmword_23A5552B0);
              v62 = snprintf(&__str[v57], 1024 - v57, " %p");
              goto LABEL_52;
            }

            if (v58 == 105)
            {
              a2[1] = vaddq_s64(a2[1], xmmword_23A554A00);
              v62 = snprintf(&__str[v57], 1024 - v57, " %i");
              goto LABEL_52;
            }
          }

          else
          {
            if (v58 == 102)
            {
              v63 = &__str[v57];
              v64 = 1024 - v57;
              a2[1] = vaddq_s64(a2[1], xmmword_23A554A00);
              goto LABEL_50;
            }

            if (v58 == 104)
            {
              a2[1] = vaddq_s64(a2[1], xmmword_23A5552B0);
              v62 = snprintf(&__str[v57], 1024 - v57, " %lli");
              goto LABEL_52;
            }
          }
        }
      }

      v25 = *(v4 + v10);
      a2[1].i64[0] = v6 + 12;
      a2[1].i64[1] = 2;
      v34 = *(v4 + v6 + 12);
      v35 = *(v8 + 20);
      a2[1].i64[0] = v6 + 28;
      a2[1].i64[1] = 4;
      v36 = (*(*v25 + 184))(v25);
      v32 = Phase::DspLayer23::KernelTypeToString(v36);
      v37 = (*(*v34 + 184))(v34);
      v71 = v34;
      v72 = v35;
      v69 = v35;
      v70 = Phase::DspLayer23::KernelTypeToString(v37);
      v24 = "MoveVoice<%i> (%s)%p[%llx] >>> (%s)%p[%llx]";
      goto LABEL_21;
    }

    if (v7 != 6)
    {
      if (v7 == 7)
      {
        v52 = *(v4 + v10);
        a2[1].i64[0] = v6 + 12;
        a2[1].i64[1] = 2;
        v53 = (*(*v52 + 184))(v52);
        Phase::DspLayer23::KernelTypeToString(v53);
        a2[1] = vaddq_s64(a2[1], xmmword_23A555400);
        snprintf(__str, 0x80uLL, "SetParameter<%i> (%s)%p[%llx] param:%llu val:%g");
        goto LABEL_29;
      }

      v13 = *(v4 + v10);
      a2[1].i64[0] = v6 + 12;
      a2[1].i64[1] = 2;
      v14 = (*(*v13 + 184))(v13);
      v15 = Phase::DspLayer23::KernelTypeToString(v14);
      v16 = a2[1];
      v17 = vaddq_s64(v16, xmmword_23A5552C0);
      v18 = a2->i64[0];
      v19 = (a2->i64[0] + a2[1].i64[0]);
      v20 = *v19;
      v21 = v19[1];
      a2[1] = v17;
      v22 = *(v18 + v17.i64[0]);
      v23 = v19[3];
      a2[1] = vaddq_s64(v16, xmmword_23A5552F0);
      v71 = v22;
      v72 = v23;
      v69 = v20;
      v70 = v21;
      v24 = "SetBuffer<%i> (%s)%p[%llx] buff:%llu %p len:%llu";
      v67 = v15;
      v68 = v13;
      goto LABEL_22;
    }

    v25 = *(v4 + v10);
    v26 = *(v8 + 12);
    a2[1].i64[0] = v6 + 24;
    a2[1].i64[1] = 4;
    v40 = *(v4 + v6 + 24);
    v41 = *(v8 + 4);
    a2[1].i64[0] = v6 + 44;
    a2[1].i64[1] = 7;
    v42 = *(v8 + 5);
    v43 = *(v8 + 10);
    v44 = (*(*v25 + 184))(v25);
    v32 = Phase::DspLayer23::KernelTypeToString(v44);
    v45 = (*(*v40 + 184))(v40);
    v73 = v40;
    v74 = v41;
    v71 = v43;
    v72 = Phase::DspLayer23::KernelTypeToString(v45);
    v70 = v42;
    v24 = "DisconnectVoices<%i> (%s)%p[%llx]:%i -x> %i:(%s)%p[%llx]";
LABEL_20:
    v69 = v26;
LABEL_21:
    v67 = v32;
    v68 = v25;
LABEL_22:
    snprintf(__str, 0x80uLL, v24, v9, v67, v68, v69, v70, v71, v72, v73, v74);
    goto LABEL_29;
  }

  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v46 = *(v4 + v10);
      a2[1].i64[0] = v6 + 12;
      a2[1].i64[1] = 2;
      v47 = (*(*v46 + 184))(v46);
      Phase::DspLayer23::KernelTypeToString(v47);
      a2[1] = vaddq_s64(a2[1], xmmword_23A5552B0);
      snprintf(__str, 0x80uLL, "PauseVoice<%i> (%s)%p[%llx]");
      goto LABEL_29;
    }

    if (v7 == 4)
    {
      v54 = *(v4 + v10);
      a2[1].i64[0] = v6 + 12;
      a2[1].i64[1] = 2;
      v55 = (*(*v54 + 184))(v54);
      Phase::DspLayer23::KernelTypeToString(v55);
      a2[1] = vaddq_s64(a2[1], xmmword_23A5552B0);
      snprintf(__str, 0x80uLL, "StopVoice<%i> (%s)%p[%llx]");
      goto LABEL_29;
    }

    v25 = *(v4 + v10);
    v26 = *(v8 + 12);
    a2[1].i64[0] = v6 + 24;
    a2[1].i64[1] = 4;
    v27 = *(v4 + v6 + 24);
    v28 = *(v8 + 4);
    a2[1].i64[0] = v6 + 44;
    a2[1].i64[1] = 7;
    v29 = *(v8 + 5);
    v30 = *(v8 + 10);
    v31 = (*(*v25 + 184))(v25);
    v32 = Phase::DspLayer23::KernelTypeToString(v31);
    v33 = (*(*v27 + 184))(v27);
    v73 = v27;
    v74 = v28;
    v71 = v30;
    v72 = Phase::DspLayer23::KernelTypeToString(v33);
    v70 = v29;
    v24 = "ConnectVoices<%i> (%s)%p[%llx]:%i --> %i:(%s)%p[%llx]";
    goto LABEL_20;
  }

  if (!v7)
  {
    v38 = *(v4 + v10);
    a2[1].i64[0] = v6 + 12;
    a2[1].i64[1] = 2;
    v39 = (*(*v38 + 184))(v38);
    Phase::DspLayer23::KernelTypeToString(v39);
    a2[1] = vaddq_s64(a2[1], xmmword_23A554A00);
    snprintf(__str, 0x80uLL, "AddPool<%i> (%s)%p @ %i");
    goto LABEL_29;
  }

  if (v7 == 1)
  {
    v50 = *(v4 + v10);
    a2[1].i64[0] = v6 + 12;
    a2[1].i64[1] = 2;
    v51 = (*(*v50 + 184))(v50);
    Phase::DspLayer23::KernelTypeToString(v51);
    snprintf(__str, 0x80uLL, "RemovePool<%i> (%s)%p");
    goto LABEL_29;
  }

  if (v7 != 2)
  {
    goto LABEL_30;
  }

  v11 = *(v4 + v10);
  a2[1].i64[0] = v6 + 12;
  a2[1].i64[1] = 2;
  v12 = (*(*v11 + 184))(v11);
  Phase::DspLayer23::KernelTypeToString(v12);
  a2[1] = vaddq_s64(a2[1], xmmword_23A5552B0);
  snprintf(__str, 0x80uLL, "PlayVoice<%i> (%s)%p[%llx]");
LABEL_29:
  a2[1].i64[0] = ((strlen((a2->i64[0] + 8)) >> 2 << 34) + 0xC00000000) >> 32;
  a2[1].i64[1] = 0;
  return std::string::basic_string[abi:ne200100]<0>(this, __str);
}

uint64_t Phase::PhaseOSCBundle::WriteNextMessage<Phase::Controller::DVM_RT::DVMNRTOSCCommand,Phase::DspLayer23::VoicePool *,unsigned long long>(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  if ((a1[1] - v4 - 4) < 0x1C)
  {
    return -1;
  }

  v6 = *a1 + v4;
  *(v6 + 4) = a2;
  strcpy((v6 + 12), "ph");
  v7 = *a1;
  *(v6 + 16) = a3;
  v8 = a1[2];
  v5 = 28;
  *(v7 + v8) = 28;
  *(v6 + 24) = a4;
  *(v7 + 16) += 32;
  a1[2] = v8 + 32;
  return v5;
}

void Phase::Controller::DVM_RT::Reset(Phase::Controller::DVM_RT *this)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = **(Phase::Logger::GetInstance(this) + 1184);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(this + 2) + 96);
    v4 = 136315650;
    v5 = "DVM_RT.cpp";
    v6 = 1024;
    v7 = 974;
    v8 = 2048;
    v9 = v3;
    _os_log_impl(&dword_23A302000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d DVM-RT is reset @ Frame %llu", &v4, 0x1Cu);
  }

  Phase::DspLayer23::BackedMapList<unsigned long long,Phase::Controller::DVM_RT::OSCData,false,1ull>::Clear(this + 120);
}

void Phase::DspLayer23::BackedMapList<unsigned long long,Phase::Controller::DVM_RT::OSCData,false,1ull>::Clear(uint64_t a1)
{
  *a1 = 0;
  bzero(*(a1 + 16), 144 * *(a1 + 32));
  v2 = *(a1 + 16);
  *(a1 + 8) = v2;
  v3 = *(a1 + 32) - 1;
  if (*(a1 + 32) != 1)
  {
    v4 = (v2 + 136);
    v5 = 1;
    do
    {
      *v4 = v2 + 144 * v5;
      v4 += 18;
    }

    while (v3 > v5++);
  }

  *(v2 + 144 * v3 + 136) = 0;
  *(a1 + 24) = 0;
}

uint64_t std::__function::__func<Phase::Controller::DVM_RT::ProcessMessageFromNRT(unsigned long long,Phase::PhaseOSCMessage &,BOOL)::$_0,std::allocator<Phase::Controller::DVM_RT::ProcessMessageFromNRT(unsigned long long,Phase::PhaseOSCMessage &,BOOL)::$_0>,BOOL ()(unsigned long long,Phase::Controller::DVM_RT::OSCData &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D33688;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<BOOL ()(unsigned long long,Phase::Controller::DVM_RT::OSCData &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void Phase::Controller::VoiceEngineCallback(Phase::Controller *this, uint64_t a2, Phase::DspLayer23::VoicePool *a3, int64x2_t *a4, Phase::PhaseOSCMessage *a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = (*(*a2 + 184))(a2);
  if (v9 - 3 >= 0xC)
  {
    if (v9 == 2 || v9 == 0)
    {

      Phase::PhaseOSCBundle::WriteNextMessage<Phase::Controller::DVM_RT::DVMNRTOSCCommand,Phase::DspLayer23::VoicePool *,unsigned long long>(this + 3, 0, a2, a3);
    }
  }

  else
  {
    v10 = *(a4->i64[0] + a4[1].i64[0]);
    a4[1] = vaddq_s64(a4[1], xmmword_23A5552B0);
    if (v10)
    {
      v11 = (*(*v10 + 40))(v10);
      v12 = (*(*v10 + 56))(v10);
      v13 = *(this + 5);
      if ((*(this + 4) - v13 - 4) >= 0x2C)
      {
        v14 = *(this + 3) + v13;
        *(v14 + 4) = 7;
        *(v14 + 20) = a2;
        *(v14 + 28) = a3;
        strcpy((v14 + 12), "phhi");
        *(v14 + 44) = 0;
        v15 = *(this + 3);
        v16 = *(this + 5);
        *(v15 + v16) = 44;
        *(v14 + 36) = v12 + v11;
        *(v15 + 16) += 48;
        *(this + 5) = v16 + 48;
      }
    }

    else
    {
      v17 = **(Phase::Logger::GetInstance(v9) + 1184);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = *(*(this + 2) + 96);
        v20 = 136316162;
        v21 = "DVM_RT_VoiceEngineCallback.cpp";
        v22 = 1024;
        v23 = 74;
        v24 = 2048;
        v25 = a2;
        v26 = 2048;
        v27 = a3;
        v28 = 2048;
        v29 = v18;
        _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d VoiceEngineCallback: (Convolver)%p:%llu is NULL @ Frame %llu", &v20, 0x30u);
      }
    }
  }
}

uint64_t Phase::Controller::DVM23::TranslateDvmError(unsigned int a1)
{
  if (a1 > 0xD)
  {
    return 9;
  }

  else
  {
    return dword_23A555418[a1];
  }
}

const char *Phase::Controller::DVM23::DvmAdapterErrorCodeToString(unsigned int a1)
{
  if (a1 > 9)
  {
    return "Unknown (CVM) PlayState";
  }

  else
  {
    return off_278B4F448[a1];
  }
}

void Phase::Controller::DVM23::DvmAdapter::DvmAdapter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0;
  v5 = malloc_type_malloc(0x2EE00uLL, 0x100004052888210uLL);
  v6 = *(a3 + 32);
  *(a1 + 80) = 0u;
  *(a1 + 56) = v5;
  *(a1 + 64) = 0;
  *(a1 + 72) = v6;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  operator new();
}

void sub_23A3B9F40(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<Phase::Controller::DVM23::GraphController *,std::list<Phase::Controller::PlayState>>,std::__unordered_map_hasher<Phase::Controller::DVM23::GraphController *,std::__hash_value_type<Phase::Controller::DVM23::GraphController *,std::list<Phase::Controller::PlayState>>,std::hash<Phase::Controller::DVM23::GraphController *>,std::equal_to<Phase::Controller::DVM23::GraphController *>,true>,std::__unordered_map_equal<Phase::Controller::DVM23::GraphController *,std::__hash_value_type<Phase::Controller::DVM23::GraphController *,std::list<Phase::Controller::PlayState>>,std::equal_to<Phase::Controller::DVM23::GraphController *>,std::hash<Phase::Controller::DVM23::GraphController *>,true>,std::allocator<std::__hash_value_type<Phase::Controller::DVM23::GraphController *,std::list<Phase::Controller::PlayState>>>>::~__hash_table(v2);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v1 + 8);
  _Unwind_Resume(a1);
}

void Phase::Controller::DVM23::DvmAdapter::~DvmAdapter(void **this)
{
  v10 = *MEMORY[0x277D85DE8];
  Phase::Controller::DVM23::DvmAdapter::Reset(this);
  if (*this)
  {
    Phase::Controller::DVM23::DspVoiceManager23::~DspVoiceManager23(*this);
    MEMORY[0x23EE864A0]();
  }

  free(this[7]);
  v3 = **(Phase::Logger::GetInstance(v2) + 80);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315650;
    v5 = "DvmAdapter.mm";
    v6 = 1024;
    v7 = 136;
    v8 = 2048;
    v9 = this;
    _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d DVM instance %p has been destroyed!", &v4, 0x1Cu);
  }

  std::__hash_table<std::__hash_value_type<Phase::Controller::DVM23::GraphController *,std::list<Phase::Controller::PlayState>>,std::__unordered_map_hasher<Phase::Controller::DVM23::GraphController *,std::__hash_value_type<Phase::Controller::DVM23::GraphController *,std::list<Phase::Controller::PlayState>>,std::hash<Phase::Controller::DVM23::GraphController *>,std::equal_to<Phase::Controller::DVM23::GraphController *>,true>,std::__unordered_map_equal<Phase::Controller::DVM23::GraphController *,std::__hash_value_type<Phase::Controller::DVM23::GraphController *,std::list<Phase::Controller::PlayState>>,std::equal_to<Phase::Controller::DVM23::GraphController *>,std::hash<Phase::Controller::DVM23::GraphController *>,true>,std::allocator<std::__hash_value_type<Phase::Controller::DVM23::GraphController *,std::list<Phase::Controller::PlayState>>>>::~__hash_table((this + 10));
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table((this + 1));
}

void sub_23A3BA0B0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void Phase::Controller::DVM23::DvmAdapter::Reset(Phase::Controller::DVM23::DvmAdapter *this)
{
  v19 = *MEMORY[0x277D85DE8];
  for (i = *(this + 3); i; i = *i)
  {
    v3 = i[4];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  if (*(this + 4))
  {
    v4 = *(this + 3);
    if (v4)
    {
      do
      {
        v5 = *v4;
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    *(this + 3) = 0;
    v6 = *(this + 2);
    if (v6)
    {
      for (j = 0; j != v6; ++j)
      {
        *(*(this + 1) + 8 * j) = 0;
      }
    }

    *(this + 4) = 0;
  }

  if (*(this + 13))
  {
    std::__hash_table<std::__hash_value_type<Phase::Controller::DVM23::GraphController *,std::list<Phase::Controller::PlayState>>,std::__unordered_map_hasher<Phase::Controller::DVM23::GraphController *,std::__hash_value_type<Phase::Controller::DVM23::GraphController *,std::list<Phase::Controller::PlayState>>,std::hash<Phase::Controller::DVM23::GraphController *>,std::equal_to<Phase::Controller::DVM23::GraphController *>,true>,std::__unordered_map_equal<Phase::Controller::DVM23::GraphController *,std::__hash_value_type<Phase::Controller::DVM23::GraphController *,std::list<Phase::Controller::PlayState>>,std::equal_to<Phase::Controller::DVM23::GraphController *>,std::hash<Phase::Controller::DVM23::GraphController *>,true>,std::allocator<std::__hash_value_type<Phase::Controller::DVM23::GraphController *,std::list<Phase::Controller::PlayState>>>>::__deallocate_node(*(this + 12));
    *(this + 12) = 0;
    v8 = *(this + 11);
    if (v8)
    {
      for (k = 0; k != v8; ++k)
      {
        *(*(this + 10) + 8 * k) = 0;
      }
    }

    *(this + 13) = 0;
  }

  v10 = Phase::Controller::DVM23::DspVoiceManager23::Reset(*this);
  v11 = *(this + 6);
  if (v11)
  {
    v11 = (*(*v11 + 8))(v11, v10);
  }

  *(this + 6) = 0;
  v12 = **(Phase::Logger::GetInstance(v11) + 80);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = "DvmAdapter.mm";
    v15 = 1024;
    v16 = 151;
    v17 = 2048;
    v18 = this;
    _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d DVM instance %p has been reset!", &v13, 0x1Cu);
  }
}

uint64_t Phase::Controller::DVM23::DvmAdapter::AddGenerator(Phase::Logger *a1, uint64_t a2, unint64_t a3, unint64_t a4, int a5)
{
  v18 = *MEMORY[0x277D85DE8];
  __val[0] = a3;
  __val[1] = a4;
  v8 = **(Phase::Logger::GetInstance(a1) + 80);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 136315906;
    *&buf[1] = "DvmAdapter.mm";
    v12 = 1024;
    v13 = 166;
    v14 = 2048;
    v15 = a3;
    v16 = 1024;
    LODWORD(v17) = a5;
    _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Adding generatorId %llu, with %d channels!", buf, 0x22u);
  }

  if (!std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1 + 1, __val))
  {
    operator new();
  }

  return 0;
}

void sub_23A3BA524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::DVM23::DvmAdapter::RemoveGenerator(Phase::Logger *a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v8[0] = a2;
  v8[1] = a3;
  v5 = **(Phase::Logger::GetInstance(a1) + 80);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v10 = "DvmAdapter.mm";
    v11 = 1024;
    v12 = 190;
    v13 = 2048;
    v14 = a2;
    _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Removing generatorId %llu!", buf, 0x1Cu);
  }

  v6 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1 + 1, v8);
  if (v6)
  {
    return Phase::Controller::DVM23::DvmAdapter::SetPlayState(a1, v6[4], 0);
  }

  else
  {
    return 1;
  }
}

uint64_t Phase::Controller::DVM23::DvmAdapter::SetPlayState(uint64_t a1, unint64_t a2, int a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  (*(*a2 + 80))(a2);
  IsGraphPlaystateTransitional = Phase::Controller::DVM23::DspVoiceManager23::IsGraphPlaystateTransitional(v6);
  if (!IsGraphPlaystateTransitional)
  {
    v9 = 7;
    v10 = 3;
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v21 = *a1;
        *v29 = &unk_284D33760;
        *&v29[8] = a1;
        *&v29[16] = a2;
        *&v29[24] = v29;
        v9 = (*(*a2 + 56))(a2, v21, 1, v29);
        IsGraphPlaystateTransitional = std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100](v29);
        v10 = 1;
        if (!v9)
        {
          return Phase::Controller::DVM23::TranslateDvmError(v9);
        }

LABEL_20:
        v22 = **(Phase::Logger::GetInstance(IsGraphPlaystateTransitional) + 80);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = off_278B4F498[v10];
          v24 = *(a2 + 8);
          *v29 = 136315906;
          *&v29[4] = "DvmAdapter.mm";
          *&v29[12] = 1024;
          *&v29[14] = 1376;
          *&v29[18] = 2080;
          *&v29[20] = v23;
          *&v29[28] = 2048;
          *&v29[30] = v24;
          _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set playstate to %s on controllerId %llu", v29, 0x26u);
        }

        return Phase::Controller::DVM23::TranslateDvmError(v9);
      }

      if (a3 != 3)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (!a3)
      {
        v20 = *a1;
        *v29 = &unk_284D337A8;
        *&v29[8] = a1;
        *&v29[24] = v29;
        v9 = (*(*a2 + 56))(a2, v20, 2, v29);
        IsGraphPlaystateTransitional = std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100](v29);
        v10 = 2;
        if (!v9)
        {
          return Phase::Controller::DVM23::TranslateDvmError(v9);
        }

        goto LABEL_20;
      }

      if (a3 != 1)
      {
        goto LABEL_20;
      }
    }

    v19 = *a1;
    *v29 = &unk_284D33718;
    *&v29[8] = a1;
    *&v29[16] = a2;
    *&v29[24] = v29;
    v9 = (*(*a2 + 56))(a2, v19, 0, v29);
    IsGraphPlaystateTransitional = std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100](v29);
    v10 = 0;
    if (!v9)
    {
      return Phase::Controller::DVM23::TranslateDvmError(v9);
    }

    goto LABEL_20;
  }

  if (a3 > 3)
  {
    v8 = 8;
  }

  else
  {
    v8 = dword_23A555450[a3];
  }

  v11 = *a1;
  v12 = (*(*a2 + 80))(a2);
  if ((Phase::Controller::DVM23::DspVoiceManager23::IsGraphPlaystateUniform(v11, v12, v8) & 1) == 0)
  {
    v13 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
    v14 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v13 >> 47) ^ v13);
    v15 = 0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47));
    v16 = *(a1 + 88);
    if (v16)
    {
      v17 = vcnt_s8(v16);
      v17.i16[0] = vaddlv_u8(v17);
      if (v17.u32[0] > 1uLL)
      {
        v18 = 0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47));
        if (v15 >= *&v16)
        {
          v18 = v15 % *&v16;
        }
      }

      else
      {
        v18 = (*&v16 - 1) & v15;
      }

      v26 = *(*(a1 + 80) + 8 * v18);
      if (v26)
      {
        v27 = *v26;
        if (*v26)
        {
          do
          {
            v28 = v27[1];
            if (v28 == v15)
            {
              if (v27[2] == a2)
              {
                operator new();
              }
            }

            else
            {
              if (v17.u32[0] > 1uLL)
              {
                if (v28 >= *&v16)
                {
                  v28 %= *&v16;
                }
              }

              else
              {
                v28 &= *&v16 - 1;
              }

              if (v28 != v18)
              {
                break;
              }
            }

            v27 = *v27;
          }

          while (v27);
        }
      }
    }

    operator new();
  }

  return 0;
}

uint64_t Phase::Controller::DVM23::DvmAdapter::AddSubmix(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v20[0] = a2;
  v20[1] = a3;
  if (std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>((a1 + 8), v20))
  {
    return 0;
  }

  __p = 0;
  v19 = 0uLL;
  switch(a4)
  {
    case 3:
      std::to_string(v21, a2);
      v13 = std::string::insert(v21, 0, "Channel SubmixId", 0x10uLL);
      v14 = v13->__r_.__value_.__r.__words[0];
      v22[0] = v13->__r_.__value_.__l.__size_;
      *(v22 + 7) = *(&v13->__r_.__value_.__r.__words[1] + 7);
      v15 = HIBYTE(v13->__r_.__value_.__r.__words[2]);
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      *(&v19 + 7) = *(v22 + 7);
      __p = v14;
      *&v19 = v22[0];
      HIBYTE(v19) = v15;
      if ((v21[23] & 0x80000000) != 0)
      {
        operator delete(*v21);
      }

      operator new();
    case 2:
      std::to_string(v21, a2);
      v10 = std::string::insert(v21, 0, "Ambient SubmixId", 0x10uLL);
      v11 = v10->__r_.__value_.__r.__words[0];
      v22[0] = v10->__r_.__value_.__l.__size_;
      *(v22 + 7) = *(&v10->__r_.__value_.__r.__words[1] + 7);
      v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      *(&v19 + 7) = *(v22 + 7);
      __p = v11;
      *&v19 = v22[0];
      HIBYTE(v19) = v12;
      if ((v21[23] & 0x80000000) != 0)
      {
        operator delete(*v21);
      }

      operator new();
    case 1:
      std::to_string(v21, a2);
      v7 = std::string::insert(v21, 0, "Spatial SubmixId", 0x10uLL);
      v8 = v7->__r_.__value_.__r.__words[0];
      v22[0] = v7->__r_.__value_.__l.__size_;
      *(v22 + 7) = *(&v7->__r_.__value_.__r.__words[1] + 7);
      v9 = HIBYTE(v7->__r_.__value_.__r.__words[2]);
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      *(&v19 + 7) = *(v22 + 7);
      __p = v8;
      *&v19 = v22[0];
      HIBYTE(v19) = v9;
      if ((v21[23] & 0x80000000) != 0)
      {
        operator delete(*v21);
      }

      operator new();
  }

  v16 = **(Phase::Logger::GetInstance(0) + 80);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *v21 = 136315650;
    *&v21[4] = "DvmAdapter.mm";
    *&v21[12] = 1024;
    *&v21[14] = 242;
    *&v21[18] = 2048;
    *&v21[20] = a2;
    _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d Fail adding SubmixId %llu of unknown type!", v21, 0x1Cu);
  }

  return 9;
}

void sub_23A3BB420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}
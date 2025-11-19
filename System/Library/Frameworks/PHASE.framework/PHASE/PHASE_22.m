void *Phase::SpatialModeler::RoomSimulationDebugger::BeginTrackingEnergyHistogram(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[2] = v6;
  v4 = std::__tree<std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>,std::__map_value_compare<Phase::Handle64,std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>,std::less<Phase::Handle64>,true>,std::allocator<std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>>>::__emplace_unique_key_args<Phase::Handle64,std::piecewise_construct_t const&,std::tuple<Phase::Handle64 const&>,std::tuple<>>(a1 + 64, v6);
  return std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::operator=(v4 + 11, a3);
}

uint64_t Phase::SpatialModeler::RoomSimulationDebugger::EndTrackingEnergyHistogram(Phase::SpatialModeler::RoomSimulationDebugger *this, Handle64 a2)
{
  v4 = *(this + 9);
  result = this + 72;
  v3 = v4;
  if (v4)
  {
    v5 = result;
    do
    {
      v6 = *(v3 + 32);
      v7 = v6 >= a2.mData;
      v8 = v6 < a2.mData;
      if (v7)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
    if (v5 != result && *(v5 + 32) <= a2.mData)
    {
      return std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::operator=[abi:ne200100](v5 + 88);
    }
  }

  return result;
}

void *Phase::SpatialModeler::RoomSimulationDebugger::BeginTrackingImageSourceLocations(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[2] = v6;
  v4 = std::__tree<std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>,std::__map_value_compare<Phase::Handle64,std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>,std::less<Phase::Handle64>,true>,std::allocator<std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>>>::__emplace_unique_key_args<Phase::Handle64,std::piecewise_construct_t const&,std::tuple<Phase::Handle64 const&>,std::tuple<>>(a1 + 64, v6);
  return std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::operator=(v4 + 15, a3);
}

uint64_t Phase::SpatialModeler::RoomSimulationDebugger::EndTrackingImageSourceLocations(Phase::SpatialModeler::RoomSimulationDebugger *this, Handle64 a2)
{
  v4 = *(this + 9);
  result = this + 72;
  v3 = v4;
  if (v4)
  {
    v5 = result;
    do
    {
      v6 = *(v3 + 32);
      v7 = v6 >= a2.mData;
      v8 = v6 < a2.mData;
      if (v7)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
    if (v5 != result && *(v5 + 32) <= a2.mData)
    {
      return std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::operator=[abi:ne200100](v5 + 120);
    }
  }

  return result;
}

void *Phase::SpatialModeler::RoomSimulationDebugger::BeginTrackingListenerEarlyResponseMetadata(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[2] = v6;
  v4 = std::__tree<std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>,std::__map_value_compare<Phase::Handle64,std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>,std::less<Phase::Handle64>,true>,std::allocator<std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>>>::__emplace_unique_key_args<Phase::Handle64,std::piecewise_construct_t const&,std::tuple<Phase::Handle64 const&>,std::tuple<>>(a1 + 64, v6);
  return std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::operator=(v4 + 19, a3);
}

uint64_t Phase::SpatialModeler::RoomSimulationDebugger::EndTrackingListenerEarlyResponseMetadata(Phase::SpatialModeler::RoomSimulationDebugger *this, Handle64 a2)
{
  v4 = *(this + 9);
  result = this + 72;
  v3 = v4;
  if (v4)
  {
    v5 = result;
    do
    {
      v6 = *(v3 + 32);
      v7 = v6 >= a2.mData;
      v8 = v6 < a2.mData;
      if (v7)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
    if (v5 != result && *(v5 + 32) <= a2.mData)
    {
      return std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::operator=[abi:ne200100](v5 + 152);
    }
  }

  return result;
}

void *Phase::SpatialModeler::RoomSimulationDebugger::BeginTrackingListenerLateReverbMetadata(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[2] = v6;
  v4 = std::__tree<std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>,std::__map_value_compare<Phase::Handle64,std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>,std::less<Phase::Handle64>,true>,std::allocator<std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>>>::__emplace_unique_key_args<Phase::Handle64,std::piecewise_construct_t const&,std::tuple<Phase::Handle64 const&>,std::tuple<>>(a1 + 64, v6);
  return std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::operator=(v4 + 23, a3);
}

uint64_t Phase::SpatialModeler::RoomSimulationDebugger::EndTrackingListenerLateReverbMetadata(Phase::SpatialModeler::RoomSimulationDebugger *this, Handle64 a2)
{
  v4 = *(this + 9);
  result = this + 72;
  v3 = v4;
  if (v4)
  {
    v5 = result;
    do
    {
      v6 = *(v3 + 32);
      v7 = v6 >= a2.mData;
      v8 = v6 < a2.mData;
      if (v7)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
    if (v5 != result && *(v5 + 32) <= a2.mData)
    {
      return std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::operator=[abi:ne200100](v5 + 184);
    }
  }

  return result;
}

void *Phase::SpatialModeler::RoomSimulationDebugger::BeginTrackingRoomData(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[2] = v6;
  v4 = std::__tree<std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>,std::__map_value_compare<Phase::Handle64,std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>,std::less<Phase::Handle64>,true>,std::allocator<std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>>>::__emplace_unique_key_args<Phase::Handle64,std::piecewise_construct_t const&,std::tuple<Phase::Handle64 const&>,std::tuple<>>(a1 + 64, v6);
  return std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::operator=(v4 + 27, a3);
}

uint64_t Phase::SpatialModeler::RoomSimulationDebugger::EndTrackingRoomData(Phase::SpatialModeler::RoomSimulationDebugger *this, Handle64 a2)
{
  v4 = *(this + 9);
  result = this + 72;
  v3 = v4;
  if (v4)
  {
    v5 = result;
    do
    {
      v6 = *(v3 + 32);
      v7 = v6 >= a2.mData;
      v8 = v6 < a2.mData;
      if (v7)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
    if (v5 != result && *(v5 + 32) <= a2.mData)
    {
      return std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::operator=[abi:ne200100](v5 + 216);
    }
  }

  return result;
}

void Phase::SpatialModeler::RoomSimulationDebugger::ExecuteRoomDataCallbacks(int32x2_t *this, Phase::SpatialModeler::RayTracerState *a2, Phase::Geometry::System *a3, Phase::Geometry::SystemState *a4)
{
  if (*(a2 + 399))
  {
    v5 = Phase::Geometry::SystemDebugger::GetFromSystem(a2);
    if (v5)
    {
      v8 = *(v5 + 112);
      v6 = v5 + 112;
      v7 = v8;
      if (v8)
      {
        v9 = this[2822];
        v10 = v6;
        do
        {
          v11 = *(v7 + 32);
          v12 = v11 >= *&v9;
          v13 = v11 < *&v9;
          if (v12)
          {
            v10 = v7;
          }

          v7 = *(v7 + 8 * v13);
        }

        while (v7);
        if (v10 != v6 && *(v10 + 32) <= *&v9 && *(v10 + 240))
        {
          memset(&v38[9], 0, 24);
          memset(&v38[13], 0, 24);
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          memset(v54, 0, sizeof(v54));
          memset(v53, 0, sizeof(v53));
          v38[0] = 0;
          v38[1] = 0;
          memset(&v38[4], 0, 24);
          v38[2] = v9;
          v51 = this[2439].i32[0];
          v52 = vrev64_s32(this[2438]);
          v14 = this[2455].u32[1];
          v37 = 0;
          std::vector<float>::assign(v53, v14, &v37, v52);
          v16 = this[2455].u32[1];
          if (v16)
          {
            v17 = this + 2440;
            v18 = v53[0];
            do
            {
              v19 = v17->i32[0];
              v17 = (v17 + 4);
              v15.i32[0] = v19;
              *v18++ = v19;
              --v16;
            }

            while (v16);
          }

          v20 = this[2471].u32[1];
          v37 = 0;
          std::vector<float>::assign(&v53[3], v20, &v37, v15);
          v22 = this[2471].u32[1];
          if (v22)
          {
            v23 = this + 2456;
            v24 = v53[3];
            do
            {
              v25 = v23->i32[0];
              v23 = (v23 + 4);
              v21.i32[0] = v25;
              *v24++ = v25;
              --v22;
            }

            while (v22);
          }

          v26 = this[2487].u32[1];
          v37 = 0;
          std::vector<float>::assign(v54, v26, &v37, v21);
          v28 = this[2455].u32[1];
          if (v28)
          {
            v29 = this + 2472;
            v30 = v54[0];
            do
            {
              v31 = v29->i32[0];
              v29 = (v29 + 4);
              v27.i32[0] = v31;
              *v30++ = v31;
              --v28;
            }

            while (v28);
          }

          v32 = this[41].u32[1];
          v37 = 0;
          std::vector<float>::assign(&v54[3], v32, &v37, v27);
          v33 = this[41].u32[1];
          if (v33)
          {
            v34 = this + 26;
            v35 = v54[3];
            do
            {
              v36 = v34->i32[0];
              v34 = (v34 + 4);
              *v35++ = v36;
              --v33;
            }

            while (v33);
          }

          std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::operator()(v10 + 216, v38);
          Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView::~RoomSimulationDebugView(v38);
        }
      }
    }
  }
}

void sub_23A4E3154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView::~RoomSimulationDebugView(va);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>,std::__map_value_compare<Phase::Handle64,std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>,std::less<Phase::Handle64>,true>,std::allocator<std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>>>::__emplace_unique_key_args<Phase::Handle64,std::piecewise_construct_t const&,std::tuple<Phase::Handle64 const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
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

void *std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_23A4E34D8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::operator=[abi:ne200100](uint64_t a1)
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

_BYTE *Phase::SpatialModeler::RoomSimulationErrorCategory::message@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  if ((a1 - 1) > 8)
  {
    v3 = "(unrecognized error)";
  }

  else
  {
    v3 = off_278B4F9F8[a1 - 1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

void Phase::SpatialModeler::RoomSimulationErrorCategory::~RoomSimulationErrorCategory(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::SpatialModeler::RoomSimulationImpl::CheckClusterQueryInput@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[11];
  if (!v3 || *v3 != 3)
  {
    v9 = 3;
LABEL_16:
    *a3 = v9;
    *(a3 + 8) = result + 72;
    v8 = 2;
    goto LABEL_17;
  }

  v4 = a2[12];
  if (!v4 || *v4 != 2)
  {
    v9 = 4;
    goto LABEL_16;
  }

  v5 = a2[8];
  if (!v5)
  {
    v9 = 5;
    goto LABEL_16;
  }

  v6 = *(v3 + 152);
  if (*(v5 + 184) <= v6 || (v7 = *(v5 + 168) + 24 * v6, *(v7 + 20) != HIDWORD(v6)) || !*v7 || **v7 != 2)
  {
    v9 = 7;
    goto LABEL_16;
  }

  if (!*(v3 + 144))
  {
    v9 = 6;
    goto LABEL_16;
  }

  v8 = 1;
LABEL_17:
  *(a3 + 24) = v8;
  return result;
}

uint64_t Phase::SpatialModeler::RoomSimulationImpl::CheckSpatialQueryInput@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[11];
  if (!v3 || *v3 != 2)
  {
    v9 = 3;
LABEL_15:
    *a3 = v9;
    *(a3 + 8) = result + 72;
    v8 = 2;
    goto LABEL_16;
  }

  v4 = a2[12];
  if (!v4 || *v4 != 3)
  {
    v9 = 4;
    goto LABEL_15;
  }

  v5 = a2[8];
  if (!v5)
  {
    v9 = 5;
    goto LABEL_15;
  }

  v6 = *(v3 + 552);
  if (*(v5 + 184) <= v6 || (v7 = *(v5 + 168) + 24 * v6, *(v7 + 20) != HIDWORD(v6)) || !*v7 || **v7 != 2)
  {
    v9 = 7;
    goto LABEL_15;
  }

  v8 = 1;
LABEL_16:
  *(a3 + 24) = v8;
  return result;
}

void Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryCleanupCommon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a2 + 88) + 48))
  {
    v3 = 26720;
  }

  else
  {
    v3 = 1424;
  }

  v4 = *(a3 + 132112);
  v5 = (a3 + 132120);
  if (v4 != (a3 + 132120))
  {
    do
    {
      if (v4[7])
      {
        Phase::SpatialModeler::RayTracerState::FreeDirectivityHistogram((a1 + v3), v4 + 7);
      }

      v7 = v4[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v4[2];
          v9 = *v8 == v4;
          v4 = v8;
        }

        while (!v9);
      }

      v4 = v8;
    }

    while (v8 != v5);
  }
}

void Phase::SpatialModeler::RoomSimulationImpl::ParseOptionalProperties(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, float *a5@<X4>, float *a6@<X5>, uint64_t a7@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = *(a3 + 144);
  if (v8)
  {
    v10 = *(a3 + 104);
    v11 = v10 + 304 * v8;
    v12 = *a4;
    v13 = *(a2 + 184);
    v14 = 6;
    while (2)
    {
      v15 = *(v10 + 144);
      if (v13 <= v15 || (v16 = *(a2 + 168) + 24 * v15, *(v16 + 20) != HIDWORD(v15)) || (v17 = *v16) == 0 || *v17 != 3 || (v18 = *(v17 + 120), v18 != *(v17 + 128)) && ((v19 = *v18, *(a2 + 160) <= *v18) || (v20 = *(a2 + 144) + 24 * v19, *(v20 + 20) != HIDWORD(v19)) || !*v20))
      {
LABEL_27:
        *a7 = v14;
        *(a7 + 8) = a1 + 72;
        v29 = 2;
        goto LABEL_28;
      }

      v21 = 0;
      v22 = 0;
      v23 = v12;
      do
      {
        v24 = (v10 + v21);
        v25 = *(v10 + v21 + 160);
        switch(v25)
        {
          case 7:
            v28 = v24[21];
            *a6 = v28;
            break;
          case 6:
            v27 = *(v10 + v21 + 168);
            *a5 = v27;
            break;
          case 2:
            v12 = *(v10 + v21 + 168);
            if (v22)
            {
              v26 = v12 == v23;
              v12 = v23;
              if (!v26)
              {
                v30 = **(Phase::Logger::GetInstance(v24) + 1264);
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  v32 = 136315394;
                  v33 = "RoomSimulationImpl.cpp";
                  v34 = 1024;
                  v35 = 161;
                  _os_log_impl(&dword_23A302000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d Sources in a cluster query have different listener directivities.\n", &v32, 0x12u);
                }

                v14 = 8;
                goto LABEL_27;
              }
            }

            *a4 = v12;
            v22 = 1;
            v23 = v12;
            break;
        }

        v21 += 16;
      }

      while (v21 != 128);
      v10 += 304;
      if (v10 != v11)
      {
        continue;
      }

      break;
    }
  }

  v29 = 1;
LABEL_28:
  *(a7 + 24) = v29;
}

uint64_t Phase::SpatialModeler::RoomSimulationImpl::RoomSimulationBeginInitCommon@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  Phase::SpatialModeler::RoomSimulationImpl::CheckClusterQueryInput(a1, a2, v18);
  if (v18[6] == 2)
  {
    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a4, v18);
  }

  else
  {
    v8 = a2[8];
    v9 = a2[11];
    v10 = *(*(v8 + 168) + 24 * *(v9 + 152));
    v11 = 1344;
    if (*(v9 + 48))
    {
      v11 = 26640;
    }

    Phase::SpatialModeler::RoomSimulation::PersistingSimulationData::InitPersistingSimulationData(a1 + v11, a1, v8, (v9 + 104), *(*(v8 + 168) + 24 * *(v9 + 152)), *(a1 + 48));
    Phase::SpatialModeler::RayTracerState::InitRayTracerState(a3 + 112752, a1, v8, (v9 + 104), v10, *(a1 + 48));
    v13 = *(a1 + 16);
    if (v13 && *(v13 + 3192))
    {
      v14 = Phase::Geometry::SystemDebugger::GetFromSystem(v13);
      v12.i64[0] = *(v14 + 56);
      *(a3 + 112800) = v12.i64[0];
      *(a3 + 112832) = *(v14 + 48);
    }

    Phase::SpatialModeler::RoomSimulationLogging::logAreSourcesAndListenerInsideSceneBoundingBox(a3 + 112752, *(a1 + 32), "RoomSimulationBeginInitCommon", 29, v12);
    v15 = *(a1 + 1432);
    v16 = *(a1 + 1448);
    *(a3 + 112792) = *(a1 + 1464);
    *(a3 + 112760) = v15;
    *(a3 + 112776) = v16;
    *(a4 + 24) = 1;
  }

  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v18);
}

__n128 Phase::SpatialModeler::RoomSimulationImpl::RoomSimulationBeginHandleSustainQueryCommon(uint64_t a1, uint64_t a2, uint64_t a3, Phase::SpatialModeler::RayTracerState *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 64);
  if (*(v7 + 216) && (*(v7 + 980) & 1) == 0)
  {
    v8 = *(a1 + 48);
    UpdateRate = Phase::SpatialModeler::RoomSimulationConfig::GetUpdateRate(a4 + 12, *(a1 + 32));
    Phase::SpatialModeler::FilterTargetRoomAcousticParameters(v7 + 192, v8, a4, UpdateRate);
  }

  Phase::SpatialModeler::SimulationController::RequireSimulation((a1 + 80), (a3 + 112752), a4, v7, v12);
  v10 = *v13;
  *(a4 + 22840) = v12[2];
  *(a4 + 22856) = v10;
  *(a4 + 22870) = *&v13[14];
  result = v12[1];
  *(a4 + 22808) = v12[0];
  *(a4 + 22824) = result;
  return result;
}

float Phase::SpatialModeler::RoomSimulationConfig::GetUpdateRate(float *a1, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2 == 2)
  {
LABEL_6:
    v4 = 18;
    return a1[v4];
  }

  if (a2 != 3)
  {
    v5 = **(Phase::Logger::GetInstance(a1) + 1264);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = a1[18];
      v8 = 136315906;
      v9 = "RoomSimulationInitData.hpp";
      v10 = 1024;
      v11 = 103;
      v12 = 1024;
      v13 = a2;
      v14 = 2048;
      v15 = v6;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Spatial category %d not available in simulated modelers, returning mEarlyResponseUpdateRate %f", &v8, 0x22u);
    }

    goto LABEL_6;
  }

  v4 = 19;
  return a1[v4];
}

void Phase::SpatialModeler::RoomSimulationImpl::PrepareRayTrace(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = (a1 + 131760);
  *(a1 + 133784) = *(a2 + 21032);
  if (a4)
  {
    v7 = (a1 + 133680);
    if (a1 + 133680 != a2 + 20928)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v7, *(a2 + 20928), *(a2 + 20936), (*(a2 + 20936) - *(a2 + 20928)) >> 2);
    }
  }

  LODWORD(v8) = *(a1 + 112816);
  if (v8 > 0x100)
  {
    std::terminate();
  }

  if (v8)
  {
    v9 = 0;
    v10 = a1 + 112;
    do
    {
      Phase::SpatialModeler::RayTracerState::NextRay((a1 + 112752), v10);
      ++v9;
      v8 = *(a1 + 112816);
      v10 += 352;
    }

    while (v9 < v8);
  }

  *v6 = v8;
  *(a1 + 64) = a3;
  *(a1 + 88) = a1 + 112;
  *(a1 + 96) = v8;
  *(a1 + 100) = 352;
  *(a1 + 137808) = Phase::SpatialModeler::RoomSimulationImpl::RoomSimulationHandleIntersections;
}

uint64_t Phase::SpatialModeler::RoomSimulationImpl::RoomSimulationHandleIntersections@<X0>(Phase::Logger *a1@<X0>, void *a2@<X1>, float32x4_t *a3@<X2>, Phase::Logger *a4@<X8>)
{
  v6 = a1;
  v277 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(a1);
  v9 = os_signpost_id_generate(**(Instance + 224));
  v269 = v9;
  v223 = v6;
  LODWORD(v6) = *(v6 + 8);
  v10 = Phase::Logger::GetInstance(v9);
  if (v6 == 2)
  {
    if (!*(v10 + 1272))
    {
      goto LABEL_11;
    }

    v11 = Phase::Logger::GetInstance(v10);
    if (v9 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_11;
    }

    v12 = **(v11 + 1264);
    if (!os_signpost_enabled(v12))
    {
      goto LABEL_11;
    }

    buf[0].i16[0] = 0;
    v13 = "Phase_RoomSimulation_EarlyReflectionsnHandleIntersections";
    v14 = "EarlyReflectionsnHandleIntersections";
  }

  else
  {
    if (!*(v10 + 1272))
    {
      goto LABEL_11;
    }

    v15 = Phase::Logger::GetInstance(v10);
    if (v9 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_11;
    }

    v12 = **(v15 + 1264);
    if (!os_signpost_enabled(v12))
    {
      goto LABEL_11;
    }

    buf[0].i16[0] = 0;
    v13 = "Phase_RoomSimulation_LateReverbHandleIntersections";
    v14 = "LateReverbHandleIntersections";
  }

  _os_signpost_emit_with_name_impl(&dword_23A302000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, v13, v14, buf, 2u);
LABEL_11:
  v268[0] = &v269;
  v268[1] = v223;
  v16 = atomic_load(a3);
  if (v16 != 3)
  {
    v266[0] = 9;
    v266[1] = v223 + 9;
    v267 = 2;
    Phase::SpatialModeler::RoomSimulationImpl::RoomSimulationHandleIntersections(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(a4, v268, v266);
    v18 = v266;
    return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v18);
  }

  Phase::SpatialModeler::RoomSimulationImpl::CheckClusterQueryInput(v223, a2, v264);
  if (v265 == 2)
  {
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v263, v264);
    Phase::SpatialModeler::RoomSimulationImpl::RoomSimulationHandleIntersections(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(a4, v268, v263);
    v17 = v263;
    goto LABEL_14;
  }

  v20 = a2[8];
  v21 = a2[11];
  v22 = *(v21 + 152);
  if (*(v20 + 184) <= v22 || (v23 = *(v20 + 168) + 24 * v22, *(v23 + 20) != HIDWORD(v22)) || (v214 = *v23) == 0 || v214->i32[0] != 2)
  {
    v214 = 0;
  }

  v222 = a2[8];
  v210 = (*(**(a3[7047].i64[0] + 51952) + 16))(*(a3[7047].i64[0] + 51952), a3 + 7047);
  v25 = a3 + 8230;
  a3[8235].i32[1] = 0;
  v26 = v223[6];
  v27 = 0uLL;
  __b = 0u;
  v257 = 0u;
  v258 = 0u;
  v259 = 0u;
  v260 = 0u;
  v261 = 0u;
  memset(v262, 0, 28);
  *&v262[28] = v26.i32[0];
  if (v26)
  {
    memset_pattern16(&__b, &unk_23A597970, 4 * *&v26);
    v254 = 0u;
    memset(v255, 0, 28);
    v252 = 0u;
    v253 = 0u;
    v250 = 0u;
    v251 = 0u;
    v249 = 0u;
    HIDWORD(v255[1]) = v26.i32[0];
    memset_pattern16(&v249, &unk_23A597970, 4 * *&v26);
    v247 = 0u;
    memset(v248, 0, 28);
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    HIDWORD(v248[1]) = v26.i32[0];
    memset_pattern16(&v242, &unk_23A597970, 4 * *&v26);
  }

  else
  {
    v254 = 0uLL;
    memset(v255, 0, sizeof(v255));
    v252 = 0uLL;
    v253 = 0uLL;
    v250 = 0uLL;
    v251 = 0uLL;
    v249 = 0uLL;
    v247 = 0uLL;
    memset(v248, 0, sizeof(v248));
    v245 = 0uLL;
    v246 = 0uLL;
    v243 = 0uLL;
    v244 = 0uLL;
    v242 = 0uLL;
  }

  v28 = v222;
  Normals = v223[2];
  v226 = a3 + 7047;
  if (*(Normals + 3192) && (Normals = Phase::Geometry::SystemDebugger::GetFromSystem(Normals)) != 0 && (v31 = *(Normals + 112), Normals += 112, (v30 = v31) != 0))
  {
    v32 = *(v21 + 152);
    v33 = Normals;
    do
    {
      v34 = *(v30 + 32);
      v35 = v34 >= v32;
      v36 = v34 < v32;
      if (v35)
      {
        v33 = v30;
      }

      v30 = *(v30 + 8 * v36);
    }

    while (v30);
    v37 = v223;
    if (v33 == Normals)
    {
      v215 = 0;
    }

    else
    {
      v38 = *(v33 + 32);
      v39 = v33 + 40;
      if (v38 <= v32)
      {
        v40 = v39;
      }

      else
      {
        v40 = 0;
      }

      v215 = v40;
    }
  }

  else
  {
    v215 = 0;
    v37 = v223;
  }

  v211 = &a3[8495].i8[8];
  v212 = a3;
  if (!a3[8235].i32[0])
  {
LABEL_209:
    v200 = v37[4].i32[0];
    if (v200 == 3)
    {
      Phase::SpatialModeler::LateReverbSimulationImpl::RoomSimulationFinish(v37, a2, v212, v236);
      Phase::SpatialModeler::RoomSimulationImpl::RoomSimulationHandleIntersections(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(a4, v268, v236);
      v17 = v236;
    }

    else
    {
      if (v200 != 2)
      {
        goto LABEL_212;
      }

      Phase::SpatialModeler::EarlyReflectionsSimulationImpl::RoomSimulationFinish(v37, a2, v212, v237);
      Phase::SpatialModeler::RoomSimulationImpl::RoomSimulationHandleIntersections(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(a4, v268, v237);
      v17 = v237;
    }

    goto LABEL_14;
  }

  v207 = a2;
  v208 = a4;
  v41 = 0;
  v42 = 0;
  v213 = a3 + 7078;
  v220 = a3 + 7;
  v221 = a3 + 5639;
  v218 = a3 + 8357;
  f32 = a3[13].f32;
  v44 = a3 + 21;
  v45 = -0.000001;
  v46 = -0.5;
  do
  {
    v225 = v44;
    ++v25[25].i32[0];
    v47 = &v220[22 * v41];
    v48 = v47[9].i32[0];
    if (v48 >= 0)
    {
      v49 = v221 + 88 * v48;
    }

    else
    {
      v49 = 0;
    }

    ++v47[8].i32[1];
    v27.i64[0] = 0;
    v240 = 0;
    v241 = 0.0;
    v24.i32[0] = 0;
    if (v47[4].f32[0] == 3.4028e38)
    {
      v54 = 0;
      v53 = 3.4028e38;
    }

    else
    {
      v50 = v47[5];
      if (*(v28 + 160) > v50.i32[0] && (v51 = *(v28 + 144) + 24 * v50.u32[0], *(v51 + 20) == v50.i32[1]) && (Normals = *v51) != 0)
      {
        v52 = *v51;
        Normals = Phase::Geometry::GetNormals(Normals, &v47[4] + 1, 1, &v240, 1, 1);
        *v27.f32 = v240;
        v24.f32[0] = v241;
        v53 = v47[4].f32[0];
        v54 = v52;
      }

      else
      {
        v54 = 0;
        v53 = v47[4].f32[0];
      }
    }

    v55 = v27;
    v55.i32[0] = v24.i32[0];
    *v55.f32 = vmul_f32(*v55.f32, *v55.f32);
    v56 = sqrtf(vadd_f32(*v55.f32, vadd_f32(vdup_lane_s32(*v55.f32, 1), vmul_f32(*v27.f32, *v27.f32))).f32[0]);
    v58 = v56 < 0.01 && v53 != 3.4028e38;
    v227 = v53;
    if (v53 < 0.000001 || v58)
    {
      v110 = v225;
      v111 = v53;
      if (v56 < 0.01)
      {
        v112 = **(Phase::Logger::GetInstance(Normals) + 1264);
        if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
        {
          buf[0].i32[0] = 136315394;
          *(buf[0].i64 + 4) = "RoomSimulationImpl.cpp";
          buf[0].i16[6] = 1024;
          *(&buf[0].i32[3] + 2) = 503;
          _os_log_impl(&dword_23A302000, v112, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid normal vector == (0,0,0).\n", buf, 0x12u);
        }

        if (v47[4].f32[0] == 3.4028e38)
        {
          ++v25[26].i32[0];
          v111 = 3.4028e38;
        }

        else
        {
          v111 = v47[4].f32[0];
          ++v25[25].i32[3];
        }
      }

      if (v111 < 0.000001)
      {
        if (v47[8].i32[1] < 1)
        {
          ++v25[26].i32[2];
        }

        else
        {
          ++v25[26].i32[1];
        }
      }

      v25[23].f32[3] = v25[23].f32[3] + 1.0;
      Phase::SpatialModeler::RayTracerState::NextRay(v226, v47);
      goto LABEL_199;
    }

    v59 = v47[2];
    v216 = &v47[2];
    v60 = v47[3].f32[0];
    if (v53 != 3.4028e38 && (vaddv_f32(vmul_f32(*v27.f32, v59)) + (v24.f32[0] * v60)) > v45)
    {
      ++v25[25].i32[1];
    }

    v61 = v27.f32[1];
    if (v56 > 1.1755e-38)
    {
      v27.f32[0] = v27.f32[0] / v56;
      v61 = v27.f32[1] / v56;
      v240.i32[0] = v27.i32[0];
      v240.f32[1] = v27.f32[1] / v56;
      v24.f32[0] = v24.f32[0] / v56;
      v241 = v24.f32[0];
    }

    v217 = v54;
    v62 = vmul_n_f32(v59, v227);
    v63 = v227 * v60;
    v64 = vadd_f32(v62, *v47);
    v65 = v63 + v47[1].f32[0];
    v219 = v64;
    v238 = v64;
    v239 = v65;
    v66 = v47[8].i32[1];
    if (v66 <= 2)
    {
      v67 = v213 + 72 * v41 + 24 * v66;
      *v67 = v64;
      *(v67 + 8) = v65;
      *(v67 + 12) = v27.i32[0];
      *(v67 + 16) = v61;
      *(v67 + 20) = v24.i32[0];
    }

    v224 = v41;
    if (v66 >= 1)
    {
      v68 = v25->i64[0];
      if (v25->i64[1] != v25->i64[0])
      {
        v69 = 0;
        do
        {
          if (v48 < 0 || v69 != *(v49 + 60))
          {
            v70 = v68 + 56 * v69;
            v24.i64[0] = *(v70 + 24);
            v71 = v24;
            v71.i32[2] = *(v70 + 32);
            v72 = vsubq_f32(*v47->f32, v71);
            v73 = vmulq_f32(v72, v72);
            v74 = sqrtf(v73.f32[2] + vaddv_f32(*v73.f32));
            if (v74 < v227)
            {
              v24.i32[2] = *(v70 + 32);
              *v55.f32 = v47[2];
              v55.i32[2] = v47[3].i32[0];
              v24 = vsubq_f32(v24, *v47->f32);
              v75 = vmulq_f32(v24, v55);
              v76 = v75.f32[2] + vaddv_f32(*v75.f32);
              if (v76 >= 0.0)
              {
                v24 = vmulq_f32(v24, v24);
                if (((v24.f32[2] + vaddv_f32(*v24.f32)) - (v76 * v76)) <= *(*(v25[1].i64[1] + 8 * v69) + 32))
                {
                  v77 = v37[6];
                  if (v77)
                  {
                    v78 = v47[10].f32[0];
                    p_b = &__b;
                    v80 = f32;
                    do
                    {
                      v81 = *v80++;
                      p_b->f32[0] = v81 / v78;
                      p_b = (p_b + 4);
                      --*&v77;
                    }

                    while (v77);
                  }

                  v82 = v226[29].f32[0];
                  v83 = v47[7].f32[0] + (v74 / v82);
                  v274 = v260;
                  v275 = v261;
                  *v276 = *v262;
                  *&v276[16] = *&v262[16];
                  buf[0] = __b;
                  buf[1] = v257;
                  v272 = v258;
                  v273 = v259;
                  v84 = v226[28].u32[3];
                  if (v84 >= *&v262[28])
                  {
                    v85 = *&v262[28];
                  }

                  else
                  {
                    v85 = v84;
                  }

                  if (v85)
                  {
                    v86 = v82 * v83;
                    v87 = buf;
                    v88 = v226[21].f32;
                    do
                    {
                      v89 = *v88++;
                      v87->f32[0] = v87->f32[0] * expf(-(v89 * v86));
                      v87 = (v87 + 4);
                      --v85;
                    }

                    while (v85);
                  }

                  v260 = v274;
                  v261 = v275;
                  *v262 = *v276;
                  *&v262[16] = *&v276[16];
                  __b = buf[0];
                  v257 = buf[1];
                  v258 = v272;
                  v259 = v273;
                  if (v226[11].i8[4])
                  {
                    v37 = v223;
                    v90 = v223[6492];
                    buf[0] = *(v70 + 8);
                    buf[1] = *(v70 + 24);
                    Phase::SpatialModeler::ApplyDirectivitySubbandGains(&__b, v90, buf, v47);
                  }

                  else
                  {
                    v91 = *(v70 + 40);
                    v37 = v223;
                    if (v91)
                    {
                      v270[0] = *(v70 + 8);
                      v270[1] = *(v70 + 24);
                      Phase::SpatialModeler::applySourceDirectivity(&__b, v222, v270, v91, v47, buf);
                      v260 = v274;
                      v261 = v275;
                      *v262 = *v276;
                      *&v262[16] = *&v276[16];
                      __b = buf[0];
                      v257 = buf[1];
                      v258 = v272;
                      v259 = v273;
                    }
                  }

                  if (v226[8].i8[5] == 1)
                  {
                    v92 = v25[240].i64[0];
                    if (v92)
                    {
                      Phase::SpatialModeler::applyListenerDirectivity(&__b, v222, v214, v92, buf, v47[7].f32[1], v47[8].f32[0]);
                      v260 = v274;
                      v261 = v275;
                      *v262 = *v276;
                      *&v262[16] = *&v276[16];
                      __b = buf[0];
                      v257 = buf[1];
                      v258 = v272;
                      v259 = v273;
                    }
                  }

                  if (v226[5].i64[0] < v47[8].i32[1] || v47[9].i8[4] == 1)
                  {
                    Phase::SpatialModeler::DirectivityHistogram::addEnergySphere(*(v25[1].i64[1] + 8 * v69), &__b, v83, v47[7].f32[1], v47[8].f32[0]);
                  }

                  else
                  {
                    v93 = v47[43].u32[1];
                    memset(buf, 0, sizeof(buf));
                    v272 = 0u;
                    v273 = 0u;
                    v274 = 0u;
                    v275 = 0u;
                    memset(v276, 0, 28);
                    *&v276[28] = v93;
                    if (v93)
                    {
                      v94 = v47[10].f32[0];
                      v95 = buf;
                      v96 = v225;
                      do
                      {
                        v97 = *v96++;
                        v95->f32[0] = v94 * v97;
                        v95 = (v95 + 4);
                        --v93;
                      }

                      while (v93);
                    }

                    Phase::Subbands<float>::operator*=(&__b, buf);
                    v98 = *(v25[3].i64[0] + 8 * v69);
                    *&v270[0] = *(v70 + 24);
                    DWORD2(v270[0]) = *(v70 + 32);
                    Phase::SpatialModeler::AudibleEarlyReflection::AudibleEarlyReflection(buf, v47, __b.f32, v213 + 72 * v224, v270, v216, &v214[8], v83);
                    Phase::SpatialModeler::EarlyReflectionDetector::AddToScoreBoard(v98, buf);
                  }

                  v42 = 1;
                }
              }
            }
          }

          ++v69;
          v68 = v25->i64[0];
        }

        while (0x6DB6DB6DB6DB6DB7 * ((v25->i64[1] - v25->i64[0]) >> 3) > v69);
      }
    }

    if (v47[4].f32[0] == 3.4028e38)
    {
      ++v25[26].i32[3];
      v25[23].f32[3] = v25[23].f32[3] + 1.0;
      Phase::SpatialModeler::RayTracerState::NextRay(v226, v47);
      v28 = v222;
      v41 = v224;
      v110 = v225;
      goto LABEL_199;
    }

    v28 = v222;
    if (v215 && *(v215 + 40))
    {
      v99 = v214[8].f32[1];
      v100 = v99 + v46;
      v101 = v99 + 0.5;
      if (v219.f32[1] > v100 && v219.f32[1] < v101)
      {
        v104 = *(v211 + 7);
        v103 = *(v211 + 8);
        v105 = 0x6DB6DB6DB6DB6DB7 * ((v103 - v104) >> 2);
        if (v105 <= 0x3E7)
        {
          v209 = v45;
          v106 = v47[8].i32[1];
          v107 = v47->i32[1];
          v108 = v47[1].i32[0];
          v109 = *(v211 + 9);
          if (v103 >= v109)
          {
            v113 = 0x6DB6DB6DB6DB6DB7 * ((v109 - v104) >> 2);
            if (2 * v113 <= v105 + 1)
            {
              v114 = v105 + 1;
            }

            else
            {
              v114 = 2 * v113;
            }

            if (v113 >= 0x492492492492492)
            {
              v115 = 0x924924924924924;
            }

            else
            {
              v115 = v114;
            }

            std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::RoomSimulationDebugger::DebugIntersection>>((v211 + 56), v115);
          }

          *v103 = v47->i32[0];
          *(v103 + 4) = v107;
          *(v103 + 8) = v108;
          *(v103 + 12) = v219;
          *(v103 + 20) = v65;
          *(v103 + 24) = v106;
          v45 = v209;
          v46 = -0.5;
          *(v211 + 8) = v103 + 28;
        }
      }
    }

    buf[0].i64[0] = 0;
    Phase::Geometry::GetMaterials(v217, &v47[4] + 1, 1, buf, 1, 1);
    if (buf[0].i64[0] && *(v222 + 136) > buf[0].i32[0] && (v116 = *(v222 + 120) + 24 * buf[0].u32[0], *(v116 + 20) == buf[0].i32[1]) && (v117 = *v116) != 0 && *v117 == 1 && (v118 = *(*(v117 + 40) + 40 * v226[29].i64[1]), *&v118))
    {
      v119 = *(*&v118 + 496);
      v253 = *(*&v118 + 480);
      v254 = v119;
      v120 = *(*&v118 + 528);
      v255[0] = *(*&v118 + 512);
      v255[1] = v120;
      v121 = *(*&v118 + 432);
      v249 = *(*&v118 + 416);
      v250 = v121;
      v122 = *(*&v118 + 464);
      v251 = *(*&v118 + 448);
      v252 = v122;
      v123 = *(*&v118 + 672);
      v124 = *(*&v118 + 688);
      v125 = *(*&v118 + 720);
      v244 = *(*&v118 + 704);
      v245 = v125;
      v242 = v123;
      v243 = v124;
      v126 = *(*&v118 + 736);
      v127 = *(*&v118 + 752);
      v128 = *(*&v118 + 784);
      v248[0] = *(*&v118 + 768);
      v248[1] = v128;
      v246 = v126;
      v247 = v127;
    }

    else
    {
      v129 = v37[6];
      if (v129)
      {
        v130 = 0;
        v131 = v226[3].i32[2];
        v132 = (*&v129 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v133 = vdupq_n_s64(*&v129 - 1);
        v134 = &v249.i64[1];
        do
        {
          v135 = vdupq_n_s64(v130);
          v136 = vmovn_s64(vcgeq_u64(v133, vorrq_s8(v135, xmmword_23A554B70)));
          if (vuzp1_s16(v136, *v133.i8).u8[0])
          {
            *(v134 - 2) = v131;
          }

          if (vuzp1_s16(v136, *&v133).i8[2])
          {
            *(v134 - 1) = v131;
          }

          if (vuzp1_s16(*&v133, vmovn_s64(vcgeq_u64(v133, vorrq_s8(v135, xmmword_23A554B60)))).i32[1])
          {
            *v134 = v131;
            *(v134 + 1) = v131;
          }

          v130 += 4;
          v134 += 2;
        }

        while (v132 != v130);
        v137 = 0;
        HIDWORD(v255[1]) = v129.i32[0];
        v138 = v226[3].i32[3];
        v139 = &v242 + 2;
        do
        {
          v140 = vdupq_n_s64(v137);
          v141 = vmovn_s64(vcgeq_u64(v133, vorrq_s8(v140, xmmword_23A554B70)));
          if (vuzp1_s16(v141, *v133.i8).u8[0])
          {
            *(v139 - 2) = v138;
          }

          if (vuzp1_s16(v141, *&v133).i8[2])
          {
            *(v139 - 1) = v138;
          }

          if (vuzp1_s16(*&v133, vmovn_s64(vcgeq_u64(v133, vorrq_s8(v140, xmmword_23A554B60)))).i32[1])
          {
            *v139 = v138;
            v139[1] = v138;
          }

          v137 += 4;
          v139 += 4;
        }

        while (v132 != v137);
      }

      else
      {
        HIDWORD(v255[1]) = 0;
      }

      v118 = 0;
      HIDWORD(v248[1]) = v129.i32[0];
    }

    if (*(v222 + 216))
    {
      v142 = v37[6];
      if ((*(v222 + 980) & 1) == 0)
      {
        v143 = v25[125].i64[0];
        if (v142 <= (v25[125].i64[1] - v143) >> 2)
        {
          if (v142)
          {
            v144 = v226[8].f32[2];
            v145 = v226[8].f32[3];
            v146 = &v249;
            do
            {
              v147 = *v143++;
              v146->f32[0] = fminf(fmaxf(v147 * v146->f32[0], v144), v145);
              v146 = (v146 + 4);
              --v142;
            }

            while (v142);
          }

          goto LABEL_168;
        }

LABEL_166:
        v148 = v226[8].f32[2];
        v149 = v226[8].f32[3];
        v150 = &v249;
        do
        {
          v150->f32[0] = fminf(fmaxf(v150->f32[0], v148), v149);
          v150 = (v150 + 4);
          --v142;
        }

        while (v142);
        goto LABEL_168;
      }
    }

    else
    {
      v142 = v37[6];
    }

    if (v142)
    {
      goto LABEL_166;
    }

LABEL_168:
    v151 = v218->i64[0];
    if (!v218->i64[0])
    {
      goto LABEL_182;
    }

    v152 = v47[5];
    v153 = v218;
    v154 = v218->i64[0];
    do
    {
      v155 = v154[2].u64[0];
      v35 = v155 >= *&v152;
      v156 = v155 < *&v152;
      if (v35)
      {
        v153 = v154;
      }

      v154 = v154->i64[v156];
    }

    while (v154);
    if (v153 == v218 || *&v152 < v153[2].i64[0])
    {
      while (v151)
      {
        while (1)
        {
          v157 = v151;
          v158 = v151[4];
          if (v158 > *&v152)
          {
            break;
          }

          if (v158 >= *&v152)
          {
            goto LABEL_183;
          }

          v151 = v157[1];
          if (!v151)
          {
            goto LABEL_182;
          }
        }

        v151 = *v157;
      }

LABEL_182:
      operator new();
    }

LABEL_183:
    if (v47[8].i32[1] <= 0)
    {
      v25[5].f32[3] = v227 + v25[5].f32[3];
      Phase::Subbands<float>::operator+=(v212 + 8237, &v249);
      ++v25[23].i32[0];
    }

    else
    {
      v25[6].f32[0] = v227 + v25[6].f32[0];
      Phase::Subbands<float>::operator+=(v212 + 8245, &v249);
      ++v25[23].i32[1];
    }

    v41 = v224;
    v110 = v225;
    ++v25[23].i32[2];
    if (v210)
    {
      goto LABEL_198;
    }

    v47[10].f32[0] = (1.0 - Phase::SpatialModeler::getMeanAbsorptionCoefficient(v249.f32)) * v47[10].f32[0];
    v159 = v37[6];
    if (v159)
    {
      v160 = 0;
      do
      {
        f32[v160] = f32[v160] * (1.0 - v249.f32[v160]);
        v225[v160] = v225[v160] * (1.0 - *(&v242 + v160));
        ++v160;
      }

      while (*&v159 != v160);
    }

    v161 = *(v211 + 479);
    v162 = *(v211 + 478);
    v163 = *(v211 + 236);
    v164 = *(v211 + 237);
    *(v211 + 236) = v164;
    v165 = (v164 >> 26) ^ ((v163 ^ (v163 << 23)) >> 17) ^ v164 ^ v163 ^ (v163 << 23);
    *(v211 + 237) = v165;
    if (HIDWORD(v255[1]))
    {
      v166 = 0.0;
      v167 = &v249;
      v168 = HIDWORD(v255[1]);
      do
      {
        v169 = v167->f32[0];
        v167 = (v167 + 4);
        v166 = v166 + v169;
        --v168;
      }

      while (v168);
    }

    else
    {
      v166 = 0.0;
    }

    v170 = v161 - v162;
    if ((v166 / HIDWORD(v255[1])) > (v162 + ((v161 - v162) * vcvts_n_f32_u64(v165 + v164, 0x40uLL))) || (v171 = v47[7].f32[0] + (v227 / v226[29].f32[0]), v47[7].f32[0] = v171, v171 > v226[7].f32[0]))
    {
      Phase::SpatialModeler::RayTracerState::NextRay(v226, v47);
      v28 = v222;
LABEL_198:
      v42 = 1;
      goto LABEL_199;
    }

    v172 = fminf(v47[4].f32[0], 0.01);
    v173 = v239 - (v172 * v47[3].f32[0]);
    *v47 = vsub_f32(v238, vmul_n_f32(v47[2], v172));
    v47[1].f32[0] = v173;
    *(v211 + 236) = v165;
    v174 = ((v164 ^ (v164 << 23)) >> 17) ^ (v165 >> 26) ^ v164 ^ (v164 << 23) ^ v165;
    *(v211 + 237) = v174;
    if (Phase::SpatialModeler::getMeanScatteringCoefficient(&v242) <= (v162 + (v170 * vcvts_n_f32_u64(v174 + v165, 0x40uLL))))
    {
      v195 = v47[3].f32[0];
      v196 = v47[2];
      v197 = vaddv_f32(vmul_f32(v240, v196));
      v198 = (v197 + (v241 * v195)) + (v197 + (v241 * v195));
      v199 = v241 * v198;
      v47[2] = vsub_f32(v196, vmul_n_f32(v240, v198));
      v47[3].f32[0] = v195 - v199;
      v47[9].i32[0] = -1;
    }

    else
    {
      v175 = *(v211 + 478);
      v176 = *(v211 + 479) - v175;
      v177 = *(v211 + 237);
      v178 = *(v211 + 236) ^ (*(v211 + 236) << 23);
      v179 = (v177 >> 26) ^ (v178 >> 17) ^ v177 ^ v178;
      v180 = v175 + (v176 * vcvts_n_f32_u64(v179 + v177, 0x40uLL));
      *(v211 + 236) = v179;
      v181 = ((v177 ^ (v177 << 23)) >> 17) ^ (v179 >> 26) ^ v177 ^ (v177 << 23) ^ v179;
      *(v211 + 237) = v181;
      Phase::SpatialModeler::scatterVectorOnPlane(v216, &v240, v180, v175 + (v176 * vcvts_n_f32_u64(v181 + v179, 0x40uLL)));
      v182 = v25[5].u32[1];
      v25[5].i32[1] = v182 + 1;
      v47[9].i32[0] = v182;
      v47[9].i8[4] = 1;
      if ((v182 & 0x80000000) == 0)
      {
        v183 = v221 + 11 * v182;
        v228 = sqrtf(*v211);
        Phase::SpatialModeler::ImportanceSampling::computeProbabilityDistribution(&v212[8495], &v238, &v240, v25, &v183[8]);
        v184 = *(v211 + 479);
        v185 = *(v211 + 478);
        v186 = *(v211 + 236);
        v187 = *(v211 + 237);
        *(v211 + 236) = v187;
        v188 = (v187 >> 26) ^ ((v186 ^ (v186 << 23)) >> 17) ^ v187 ^ v186 ^ (v186 << 23);
        *(v211 + 237) = v188;
        v110 = v225;
        Normals = Phase::SpatialModeler::ImportanceSampling::pickRandomSource(&v212[8495], v185 + ((v184 - v185) * vcvts_n_f32_u64(v188 + v187, 0x40uLL)));
        v189 = v25->i64[0] + 56 * Normals;
        v27.i32[0] = *(v189 + 32);
        v24.f32[0] = v47[1].f32[0] - v27.f32[0];
        v183[7].i32[0] = v224;
        v183[7].i32[1] = Normals;
        v190 = *(v189 + 24);
        v191 = vsub_f32(*v47, v190);
        *v192.i32 = sqrtf(vaddv_f32(vmul_f32(v191, v191)) + (v24.f32[0] * v24.f32[0]));
        v193 = vdiv_f32(v191, vdup_lane_s32(v192, 0));
        v24.f32[0] = v24.f32[0] / *v192.i32;
        *v183 = vadd_f32(v190, vmul_n_f32(v193, v228));
        v183[1].f32[0] = v27.f32[0] + (v228 * v24.f32[0]);
        v183[2] = v193;
        v183[1].i32[1] = 0;
        v27.i32[0] = 1028443341;
        if ((*v192.i32 - v228) >= 0.05)
        {
          v27.f32[0] = *v192.i32 - v228;
        }

        v183[3].i32[0] = v24.i32[0];
        v183[3].i32[1] = v27.i32[0];
        v194 = buf[0].i64[0];
        v183[9] = v118;
        v183[10] = v194;
      }
    }

    v42 = 1;
    v28 = v222;
    v37 = v223;
LABEL_199:
    ++v41;
    f32 += 88;
    v44 = (v110 + 88);
  }

  while (v41 < v25[5].u32[0]);
  a2 = v207;
  a4 = v208;
  if ((v42 & 1) == 0)
  {
    goto LABEL_209;
  }

LABEL_212:
  if (!(*(**(v226->i64[0] + 51952) + 16))(*(v226->i64[0] + 51952), v226))
  {
    v202 = v25[5].u32[1];
    v203 = Phase::SpatialModeler::RoomSimulationImpl::RoomSimulationHandleDiffuseRain;
    if (v202 >= v226[9].i32[2])
    {
      v204 = 88;
      v205 = 5639;
      v206 = 16;
    }

    else
    {
      v202 = v226[4].u32[0];
      v25[5].i32[0] = v202;
      v203 = Phase::SpatialModeler::RoomSimulationImpl::RoomSimulationHandleIntersections;
      v204 = 352;
      v205 = 7;
      v206 = 15;
    }

    v212[4].i32[0] = v37->i32[v206];
    v212[5].i64[1] = &v212[v205];
    v212[6].i32[0] = v202;
    v212[6].i32[1] = v204;
    *(v211 + 235) = v203;
    goto LABEL_221;
  }

  v201 = v37[4].i32[0];
  if (v201 == 3)
  {
    Phase::SpatialModeler::LateReverbSimulationImpl::RoomSimulationFinish(v37, a2, v212, v234);
    Phase::SpatialModeler::RoomSimulationImpl::RoomSimulationHandleIntersections(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(a4, v268, v234);
    v17 = v234;
LABEL_14:
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v17);
    goto LABEL_15;
  }

  if (v201 == 2)
  {
    Phase::SpatialModeler::EarlyReflectionsSimulationImpl::RoomSimulationFinish(v37, a2, v212, v235);
    Phase::SpatialModeler::RoomSimulationImpl::RoomSimulationHandleIntersections(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(a4, v268, v235);
    v17 = v235;
    goto LABEL_14;
  }

LABEL_221:
  *&v270[0] = v212;
  v232 = 0;
  v233 = 0;
  __p = 0;
  std::vector<Phase::Geometry::SceneQueryBatch *>::__init_with_size[abi:ne200100]<Phase::Geometry::SceneQueryBatch * const*,Phase::Geometry::SceneQueryBatch * const*>(&__p, v270, v270 + 8, 1uLL);
  memset(buf, 0, 24);
  std::vector<Phase::Geometry::SceneQueryBatch *>::__init_with_size[abi:ne200100]<Phase::Geometry::SceneQueryBatch **,Phase::Geometry::SceneQueryBatch **>(buf, __p, v232, (v232 - __p) >> 3);
  if (__p)
  {
    v232 = __p;
    operator delete(__p);
  }

  memset(v229, 0, sizeof(v229));
  std::vector<Phase::Geometry::SceneQueryBatch *>::__init_with_size[abi:ne200100]<Phase::Geometry::SceneQueryBatch **,Phase::Geometry::SceneQueryBatch **>(v229, buf[0].i64[0], buf[0].i64[1], (buf[0].i64[1] - buf[0].i64[0]) >> 3);
  v230 = 3;
  Phase::SpatialModeler::RoomSimulationImpl::RoomSimulationHandleIntersections(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(a4, v268, v229);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v229);
  if (buf[0].i64[0])
  {
    buf[0].i64[1] = buf[0].i64[0];
    operator delete(buf[0].i64[0]);
  }

LABEL_15:
  v18 = v264;
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v18);
}

void sub_23A4E54A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a47);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&STACK[0x378]);
  _Unwind_Resume(a1);
}

uint64_t Phase::SpatialModeler::RoomSimulationImpl::RoomSimulationFinishCommonPreProcess@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  Phase::SpatialModeler::RoomSimulationImpl::CheckClusterQueryInput(a1, a2, v11);
  if (v11[6] == 2)
  {
    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a4, v11);
  }

  else
  {
    *(a3 + 132072) = std::chrono::steady_clock::now();
    Phase::SpatialModeler::RayTracerState::Results::CapERDetections((a3 + 132112));
    *&v8 = *(a3 + 112816);
    Phase::SpatialModeler::RayTracerState::State::ScaleHistograms((a3 + 113248), v8);
    *(a3 + 131712) = *(a3 + 131704);
    *(a3 + 131736) = *(a3 + 131728);
    Phase::SpatialModeler::RayTracerState::CalculateRoomStats((a3 + 112752), *(a2 + 64));
    Phase::SpatialModeler::RoomSimulationLogging::logWhenExceedingTimeLimit((a3 + 112752), (a1 + 51968), v9);
    *(a4 + 24) = 1;
  }

  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v11);
}

void *Phase::SpatialModeler::RayTracerState::Results::CapERDetections(Phase::SpatialModeler::RayTracerState::Results *this)
{
  v3 = *this;
  result = (this + 8);
  v2 = v3;
  if (v3 != result)
  {
    do
    {
      v4 = v2[5];
      if (v4)
      {
        for (i = *(v4 + 16); i; i = *i)
        {
          v6 = i[44];
          if (v6 > 10.0)
          {
            v6 = 10.0;
          }

          i[44] = v6;
        }
      }

      v7 = v2[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v2[2];
          v9 = *v8 == v2;
          v2 = v8;
        }

        while (!v9);
      }

      v2 = v8;
    }

    while (v8 != result);
  }

  return result;
}

void Phase::SpatialModeler::RayTracerState::State::ScaleHistograms(Phase::SpatialModeler::RayTracerState::State *this, double a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(this + 4630);
  v4 = (v3 - *&a2);
  v5 = v4 / v3;
  if (v5 < 0.7)
  {
    v6 = **(Phase::Logger::GetInstance(this) + 1264);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(this + 4630);
      v11 = 136316162;
      v12 = "RayTracerState.hpp";
      v13 = 1024;
      v14 = 205;
      v15 = 1024;
      v16 = v7;
      v17 = 1024;
      v18 = v4;
      v19 = 2048;
      v20 = (v5 * 100.0);
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Launched %u rays but only finished %u (%.0f%%)", &v11, 0x28u);
    }
  }

  v8 = *(this + 2307);
  v9 = *(this + 2308);
  while (v8 != v9)
  {
    v10 = *v8++;
    *&a2 = 1.0 / ((*(v10 + 32) * ((v3 + v4) >> 1)) * 0.25);
    Phase::SpatialModeler::DirectivityHistogram::operator*=(v10, a2);
  }
}

double Phase::SpatialModeler::RoomSimulationImpl::RoomSimulationFinishHandleMatchReverbTimes(Phase::SpatialModeler::RoomSimulationImpl *this, Phase::SpatialModeler::RayTracerState *a2, Phase::SpatialModeler::RayTracerState *a3, Phase::SpatialModeler::RayTracerState *a4, double result)
{
  if ((*(a3 + 25041) & 1) == 0)
  {
    v7 = (a3 + 19508);
    if (this)
    {
      Phase::SpatialModeler::RayTracerState::UpdateLocalRT60Estimate(a2);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(a3 + 116);
      v11 = *(a3 + 6);
      v12 = *(a3 + 7);

      Phase::SpatialModeler::calculateAbsorptionCorrectionToMatchReverbTime(a2 + 19776, a3 + 21040, a3 + 336, a3 + 2616, v8, v9, v10, v11, v12);
    }

    else
    {
      *(a2 + 2617) = *(a2 + 2616);
      *(a3 + 2617) = *(a3 + 2616);
      *(a2 + 5291) = 0;
      *(a3 + 5291) = 0;
      *(a2 + 2679) = 0;
      *(a2 + 5360) = 0;
      result = 0.0;
      *(a2 + 21448) = 0u;
      *(a3 + 2679) = 0;
      *(a3 + 5360) = 0;
      *(a3 + 21448) = 0u;
    }
  }

  return result;
}

uint64_t Phase::SpatialModeler::RoomSimulationImpl::RoomSimulationHandleIntersections(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(Phase::Logger *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a2 + 8) + 32);
  Instance = Phase::Logger::GetInstance(a1);
  if (v6 == 2)
  {
    if (*(Instance + 1272))
    {
      v8 = Phase::Logger::GetInstance(Instance);
      v9 = **a2;
      if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v10 = **(v8 + 1264);
        if (os_signpost_enabled(v10))
        {
          v16 = 0;
          v11 = "Phase_RoomSimulation_EarlyReflectionsnHandleIntersections";
          v12 = &v16;
LABEL_10:
          _os_signpost_emit_with_name_impl(&dword_23A302000, v10, OS_SIGNPOST_INTERVAL_END, v9, v11, &unk_23A5C28A2, v12, 2u);
        }
      }
    }
  }

  else if (*(Instance + 1272))
  {
    v13 = Phase::Logger::GetInstance(Instance);
    v9 = **a2;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = **(v13 + 1264);
      if (os_signpost_enabled(v10))
      {
        v15 = 0;
        v11 = "Phase_RoomSimulation_LateReverbHandleIntersections";
        v12 = &v15;
        goto LABEL_10;
      }
    }
  }

  return std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a1, a3);
}

float32_t Phase::Subbands<float>::operator*=(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[7].u32[3];
  if (v2)
  {
    if (v2 == 10)
    {
      v4 = vmulq_f32(*a1, *a2);
      v11 = vmulq_f32(a1[1], a2[1]);
      v12 = vmulq_f32(a1[2], a2[2]);
      *a1 = v4;
      a1[1] = v11;
      a1[2] = v12;
    }

    else if (v2 == 31)
    {
      v3 = vmulq_f32(a1[1], a2[1]);
      v4 = vmulq_f32(*a1, *a2);
      v5 = vmulq_f32(a1[3], a2[3]);
      v6 = vmulq_f32(a1[2], a2[2]);
      v7 = vmulq_f32(a1[5], a2[5]);
      v8 = vmulq_f32(a1[4], a2[4]);
      v9 = vmulq_f32(a1[6], a2[6]);
      v10 = vmulq_f32(a1[7], a2[7]);
      v10.i32[3] = HIDWORD(*&a1[7]);
      *a1 = v4;
      a1[1] = v3;
      a1[2] = v6;
      a1[3] = v5;
      a1[4] = v8;
      a1[5] = v7;
      a1[6] = v9;
      a1[7] = v10;
    }

    else
    {
      v13 = a1;
      do
      {
        v14 = a2->f32[0];
        a2 = (a2 + 4);
        v4.f32[0] = v14 * *v13;
        *v13++ = v4.f32[0];
        --v2;
      }

      while (v2);
    }
  }

  return v4.f32[0];
}

void Phase::SpatialModeler::RoomSimulationImpl::RoomSimulationHandleDiffuseRain(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, Phase::Logger *a4@<X8>)
{
  v122 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(a1);
  v9 = os_signpost_id_generate(**(Instance + 224));
  v109 = v9;
  v10 = *(a1 + 32);
  v11 = Phase::Logger::GetInstance(v9);
  if (v10 == 2)
  {
    if (*(v11 + 1272))
    {
      v12 = Phase::Logger::GetInstance(v11);
      if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v13 = **(v12 + 1264);
        if (os_signpost_enabled(v13))
        {
          *buf = 0;
          v14 = "Phase_RoomSimulation_EarlyReflectionsHandleDiffuseRain";
          v15 = "EarlyReflectionsHandleDiffuseRain";
LABEL_10:
          _os_signpost_emit_with_name_impl(&dword_23A302000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v9, v14, v15, buf, 2u);
        }
      }
    }
  }

  else if (*(v11 + 1272))
  {
    v16 = Phase::Logger::GetInstance(v11);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v13 = **(v16 + 1264);
      if (os_signpost_enabled(v13))
      {
        *buf = 0;
        v14 = "Phase_RoomSimulation_LateReverbHandleDiffuseRain";
        v15 = "LateReverbHandleDiffuseRain";
        goto LABEL_10;
      }
    }
  }

  v108[0] = &v109;
  v108[1] = a1;
  v17 = *(a2 + 64);
  if (!v17)
  {
    v106[0] = 5;
    v106[1] = a1 + 72;
    v107 = 2;
    Phase::SpatialModeler::RoomSimulationImpl::RoomSimulationHandleDiffuseRain(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(a4, v108, v106);
    v77 = v106;
    goto LABEL_71;
  }

  v18 = *(a2 + 88);
  if (!v18 || *v18 != 3)
  {
    v104[0] = 3;
    v104[1] = a1 + 72;
    v105 = 2;
    Phase::SpatialModeler::RoomSimulationImpl::RoomSimulationHandleDiffuseRain(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(a4, v108, v104);
    v77 = v104;
LABEL_71:
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v77);
    return;
  }

  v19 = *(v18 + 152);
  if (*(v17 + 184) <= v19 || (v20 = *(v17 + 168) + 24 * v19, *(v20 + 20) != HIDWORD(v19)) || (v21 = *v20) == 0 || v21->i32[0] != 2)
  {
    v102[0] = 7;
    v102[1] = a1 + 72;
    v103 = 2;
    Phase::SpatialModeler::RoomSimulationImpl::RoomSimulationHandleDiffuseRain(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(a4, v108, v102);
    v77 = v102;
    goto LABEL_71;
  }

  v79 = v21;
  v80 = a3;
  v22 = *(a1 + 48);
  v83 = a3 + 135928;
  v23 = a3 + 131680;
  __b = 0u;
  v96 = 0u;
  v24 = a3 + 112752;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  memset(v101, 0, 28);
  *&v101[28] = v22;
  if (v22)
  {
    memset_pattern16(&__b, &unk_23A597970, 4 * v22);
  }

  v25 = *(a3 + 131764);
  v84 = a3 + 112752;
  if (v25)
  {
    v26 = 0;
    v85 = a3 + 112;
    v86 = a3 + 90224;
    v81 = (a3 + 113088);
    v82 = a3 + 131680;
    while (1)
    {
      v27 = v86 + 88 * v26;
      v28 = v85 + 352 * *(v27 + 56);
      v29 = *v28;
      v87 = *(v28 + 8);
      v117 = v87;
      v30 = *(v28 + 24);
      *buf = v29;
      v118 = v30;
      v119 = *(v28 + 32);
      v120 = *(v28 + 48);
      v31 = memcpy(v121, (v28 + 56), 0x128uLL);
      if (*(v27 + 32) == 3.4028e38)
      {
        v32 = (*v23 + 56 * *(v27 + 60));
        v33 = vsub_f32(v29, v32[3]);
        v34 = sqrtf(vaddv_f32(vmul_f32(v33, v33)) + ((*&v87 - v32[4].f32[0]) * (*&v87 - v32[4].f32[0])));
        if (v34 >= 0.000001)
        {
          break;
        }
      }

LABEL_63:
      if (++v26 >= v25)
      {
        goto LABEL_64;
      }
    }

    v88 = *v23 + 56 * *(v27 + 60);
    v35 = *(a1 + 48);
    if (v35)
    {
      v36 = *(v27 + 64);
      p_b = &__b;
      v38 = *&v121[6];
      v39 = &v121[10];
      do
      {
        v40 = *v39++;
        p_b->f32[0] = (v36 * v40) / v38;
        p_b = (p_b + 4);
        --v35;
      }

      while (v35);
    }

    v41 = *v121;
    v42 = *(v24 + 464);
    v43 = v42;
    v44 = *v121;
    if (!*(v27 + 72))
    {
LABEL_48:
      v112 = v99;
      v113 = v100;
      v114 = *v101;
      v115 = *&v101[16];
      *v110 = __b;
      *&v110[16] = v96;
      *&v110[32] = v97;
      v111 = v98;
      v62 = *(v24 + 460);
      if (v62 >= *&v101[28])
      {
        v63 = *&v101[28];
      }

      else
      {
        v63 = v62;
      }

      if (v63)
      {
        v64 = v34 + (v43 * v44);
        v65 = v110;
        v66 = v81;
        do
        {
          v67 = *v66++;
          *v65 = *v65 * expf(-(v67 * v64));
          ++v65;
          --v63;
        }

        while (v63);
      }

      v68 = v112;
      v100 = v113;
      *v101 = v114;
      *&v101[16] = v115;
      __b = *v110;
      v96 = *&v110[16];
      v97 = *&v110[32];
      v98 = v111;
      v99 = v112;
      v69 = v84;
      if (*(v84 + 180) == 1)
      {
        v70 = *(a1 + 51936);
        *v110 = *(v88 + 8);
        *&v110[16] = *(v88 + 24);
        Phase::SpatialModeler::ApplyDirectivitySubbandGains(&__b, v70, v110, buf);
        v23 = v82;
      }

      else
      {
        v71 = *(v88 + 40);
        v23 = v82;
        if (!v71)
        {
          goto LABEL_59;
        }

        v94[0] = *(v88 + 8);
        v94[1] = *(v88 + 24);
        Phase::SpatialModeler::applySourceDirectivity(&__b, v17, v94, v71, buf, v110);
        v68 = v112;
        v100 = v113;
        *v101 = v114;
        *&v101[16] = v115;
        __b = *v110;
        v96 = *&v110[16];
        v97 = *&v110[32];
        v98 = v111;
        v99 = v112;
      }

      v69 = v84;
LABEL_59:
      if (*(v69 + 133) == 1)
      {
        v72 = *(v23 + 3840);
        if (v72)
        {
          Phase::SpatialModeler::applyListenerDirectivity(&__b, v17, v79, v72, v110, *&v121[1], *&v121[2]);
          v68 = v112;
          v100 = v113;
          *v101 = v114;
          *&v101[16] = v115;
          __b = *v110;
          v96 = *&v110[16];
          v97 = *&v110[32];
          v98 = v111;
          v99 = v112;
        }
      }

      *v110 = *(*(*(v23 + 24) + 8 * *(v27 + 60)) + 32) / *v83;
      v68.f32[0] = *v110;
      Phase::Subbands<float>::operator*=(&__b, v110, v68);
      Phase::SpatialModeler::DirectivityHistogram::addEnergySphere(*(*(v23 + 24) + 8 * *(v27 + 60)), &__b, v41 + (v34 / v42), *&v121[1], *&v121[2]);
      v25 = *(v23 + 84);
      v24 = v84;
      goto LABEL_63;
    }

    v45 = *(v27 + 80);
    if (v45)
    {
      if (*(v17 + 136) <= v45 || (v46 = *(v17 + 120) + 24 * v45, *(v46 + 20) != HIDWORD(v45)) || (v47 = *v46) == 0 || *v47 != 1 || (v48 = *(*(v47 + 40) + 40 * *(v84 + 472))) == 0)
      {
        v49 = **(Phase::Logger::GetInstance(v31) + 1264);
        v31 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
        if (v31)
        {
          v50 = *(v27 + 80);
          *v110 = 136315650;
          *&v110[4] = "RoomSimulationImpl.cpp";
          *&v110[12] = 1024;
          *&v110[14] = 1116;
          *&v110[18] = 2048;
          *&v110[20] = v50;
          _os_log_impl(&dword_23A302000, v49, OS_LOG_TYPE_ERROR, "%25s:%-5d Trying to retrieve material with handle %llu returned nullptr!", v110, 0x1Cu);
        }

        v48 = 0;
      }

      if (v48 == *(v27 + 72))
      {
        goto LABEL_47;
      }

      v51 = *(v18 + 48);
      log = **(Phase::Logger::GetInstance(v31) + 1264);
      v52 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
      if (v51)
      {
        if (v52)
        {
          v54 = *(v27 + 72);
          v53 = *(v27 + 80);
          *v110 = 136316162;
          *&v110[4] = "RoomSimulationImpl.cpp";
          *&v110[12] = 1024;
          *&v110[14] = 1125;
          *&v110[18] = 2048;
          *&v110[20] = v53;
          *&v110[28] = 2048;
          *&v110[30] = v54;
          *&v110[38] = 2048;
          *&v110[40] = v48;
          v55 = log;
          v56 = "%25s:%-5d The material with handle %llu has changed during an attack cluster query - %p != %p";
LABEL_45:
          v59 = 48;
          goto LABEL_46;
        }
      }

      else if (v52)
      {
        v61 = *(v27 + 72);
        v60 = *(v27 + 80);
        *v110 = 136316162;
        *&v110[4] = "RoomSimulationImpl.cpp";
        *&v110[12] = 1024;
        *&v110[14] = 1131;
        *&v110[18] = 2048;
        *&v110[20] = v60;
        *&v110[28] = 2048;
        *&v110[30] = v61;
        *&v110[38] = 2048;
        *&v110[40] = v48;
        v55 = log;
        v56 = "%25s:%-5d The material with handle %llu has changed during a sustain cluster query - %p != %p";
        goto LABEL_45;
      }
    }

    else
    {
      v57 = **(Phase::Logger::GetInstance(v31) + 1264);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        v58 = *(v27 + 80);
        *v110 = 136315650;
        *&v110[4] = "RoomSimulationImpl.cpp";
        *&v110[12] = 1024;
        *&v110[14] = 1138;
        *&v110[18] = 2048;
        *&v110[20] = v58;
        v55 = v57;
        v56 = "%25s:%-5d Material Handle is not set: %llu";
        v59 = 28;
LABEL_46:
        _os_log_impl(&dword_23A302000, v55, OS_LOG_TYPE_ERROR, v56, v110, v59);
      }
    }

LABEL_47:
    Phase::SpatialModeler::applyScatteringFrequencyWeighting(&__b, (*(v27 + 72) + 672), v110);
    v100 = v113;
    *v101 = v114;
    *&v101[16] = v115;
    __b = *v110;
    v96 = *&v110[16];
    v97 = *&v110[32];
    v98 = v111;
    v99 = v112;
    v44 = *v121;
    v24 = v84;
    v43 = *(v84 + 464);
    goto LABEL_48;
  }

LABEL_64:
  if ((*(**(*v24 + 51952) + 16))(*(*v24 + 51952), v24))
  {
    v73 = *(v84 + 64);
    v74 = *(v23 + 88) % v73;
    v75 = v73 - v74;
    if (v74)
    {
      v76 = v75;
    }

    else
    {
      v76 = 0;
    }
  }

  else
  {
    v76 = *(v84 + 64);
  }

  *(v23 + 80) = v76;
  *(v80 + 64) = *(a1 + 60);
  *(v80 + 88) = v80 + 112;
  *(v80 + 96) = v76;
  *(v80 + 100) = 352;
  *(v83 + 1880) = Phase::SpatialModeler::RoomSimulationImpl::RoomSimulationHandleIntersections;
  *v110 = v80;
  v92 = 0;
  v93 = 0;
  __p = 0;
  std::vector<Phase::Geometry::SceneQueryBatch *>::__init_with_size[abi:ne200100]<Phase::Geometry::SceneQueryBatch * const*,Phase::Geometry::SceneQueryBatch * const*>(&__p, v110, &v110[8], 1uLL);
  v117 = 0uLL;
  *buf = 0;
  std::vector<Phase::Geometry::SceneQueryBatch *>::__init_with_size[abi:ne200100]<Phase::Geometry::SceneQueryBatch **,Phase::Geometry::SceneQueryBatch **>(buf, __p, v92, (v92 - __p) >> 3);
  if (__p)
  {
    v92 = __p;
    operator delete(__p);
  }

  memset(v89, 0, sizeof(v89));
  std::vector<Phase::Geometry::SceneQueryBatch *>::__init_with_size[abi:ne200100]<Phase::Geometry::SceneQueryBatch **,Phase::Geometry::SceneQueryBatch **>(v89, *buf, v117, (v117 - *buf) >> 3);
  v90 = 3;
  Phase::SpatialModeler::RoomSimulationImpl::RoomSimulationHandleDiffuseRain(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(a4, v108, v89);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v89);
  if (*buf)
  {
    *&v117 = *buf;
    operator delete(*buf);
  }
}

void sub_23A4E64F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a28);
  v29 = STACK[0x270];
  if (STACK[0x270])
  {
    STACK[0x278] = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::SpatialModeler::RoomSimulationImpl::RoomSimulationHandleDiffuseRain(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(Phase::Logger *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a2 + 8) + 32);
  Instance = Phase::Logger::GetInstance(a1);
  if (v6 == 2)
  {
    if (*(Instance + 1272))
    {
      v8 = Phase::Logger::GetInstance(Instance);
      v9 = **a2;
      if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v10 = **(v8 + 1264);
        if (os_signpost_enabled(v10))
        {
          v16 = 0;
          v11 = "Phase_RoomSimulation_EarlyReflectionsHandleDiffuseRain";
          v12 = &v16;
LABEL_10:
          _os_signpost_emit_with_name_impl(&dword_23A302000, v10, OS_SIGNPOST_INTERVAL_END, v9, v11, &unk_23A5C28A2, v12, 2u);
        }
      }
    }
  }

  else if (*(Instance + 1272))
  {
    v13 = Phase::Logger::GetInstance(Instance);
    v9 = **a2;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = **(v13 + 1264);
      if (os_signpost_enabled(v10))
      {
        v15 = 0;
        v11 = "Phase_RoomSimulation_LateReverbHandleDiffuseRain";
        v12 = &v15;
        goto LABEL_10;
      }
    }
  }

  return std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a1, a3);
}

float32_t Phase::Subbands<float>::operator*=(float32x4_t *a1, float *a2, float32x4_t a3)
{
  v3 = a1[7].u32[3];
  if (v3)
  {
    v4 = *a2;
    if (v3 == 10)
    {
      v12 = vmulq_n_f32(*a1, v4);
      v13 = vmulq_n_f32(a1[1], v4);
      a3 = vmulq_n_f32(a1[2], v4);
      *a1 = v12;
      a1[1] = v13;
      a1[2] = a3;
    }

    else if (v3 == 31)
    {
      v5 = vmulq_n_f32(a1[1], v4);
      v6 = vmulq_n_f32(*a1, v4);
      v7 = vmulq_n_f32(a1[3], v4);
      v8 = vmulq_n_f32(a1[2], v4);
      v9 = vmulq_n_f32(a1[5], v4);
      v10 = vmulq_n_f32(a1[4], v4);
      v11 = vmulq_n_f32(a1[6], v4);
      a3 = vmulq_n_f32(a1[7], v4);
      a3.i32[3] = HIDWORD(*&a1[7]);
      *a1 = v6;
      a1[1] = v5;
      a1[2] = v8;
      a1[3] = v7;
      a1[4] = v10;
      a1[5] = v9;
      a1[6] = v11;
      a1[7] = a3;
    }

    else
    {
      v14 = a1;
      do
      {
        a3.f32[0] = *a2 * *v14;
        *v14++ = a3.f32[0];
        --v3;
      }

      while (v3);
    }
  }

  return a3.f32[0];
}

void Phase::SpatialModeler::RoomSimulationConfig::ReadDefaultsWriteFlags(Phase::SpatialModeler::RoomSimulationConfig *this)
{
  v58 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(this);
  *(this + 123) = *(Instance + 325) == 1;
  v3 = Phase::Logger::GetInstance(Instance);
  *(this + 132) = *(v3 + 1577);
  v4 = Phase::Logger::GetInstance(v3);
  v5 = Phase::Logger::GetInstance(v4);
  *(this + 34) = *(v5 + 395);
  v6 = **(Phase::Logger::GetInstance(v5) + 1264);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    v8 = *(this + 34);
    v36 = 136315650;
    v37 = "RoomSimulationInitData.cpp";
    v38 = 1024;
    v39 = 39;
    v40 = 2048;
    *v41 = v8;
    _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d RoomSimulationConfig::ReadDefaultsWriteFlags: mFixedERLRDirectivitySphereRadius %f", &v36, 0x1Cu);
  }

  v9 = Phase::Logger::GetInstance(v7);
  v10 = Phase::Logger::GetInstance(v9);
  *(this + 35) = *(v10 + 396);
  v11 = **(Phase::Logger::GetInstance(v10) + 1264);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    v13 = *(this + 35);
    v36 = 136315650;
    v37 = "RoomSimulationInitData.cpp";
    v38 = 1024;
    v39 = 47;
    v40 = 2048;
    *v41 = v13;
    _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d RoomSimulationConfig::ReadDefaultsWriteFlags: mFixedERLRDirectivityOpeningAngle %f", &v36, 0x1Cu);
  }

  v14 = Phase::Logger::GetInstance(v12);
  *(this + 87) = *(v14 + 1588);
  v15 = Phase::Logger::GetInstance(v14);
  *(this + 144) = *(v15 + 1589);
  v16 = Phase::Logger::GetInstance(v15);
  *(this + 120) = *(v16 + 1605);
  v17 = Phase::Logger::GetInstance(v16);
  *(this + 121) = *(v17 + 1606);
  v18 = Phase::Logger::GetInstance(v17);
  *(this + 145) = *(v18 + 1604);
  v19 = Phase::Logger::GetInstance(v18);
  *(this + 84) = *(v19 + 1607);
  v20 = Phase::Logger::GetInstance(v19);
  *(this + 146) = *(v20 + 1608);
  v21 = Phase::Logger::GetInstance(v20);
  *(this + 147) = *(v21 + 322) != 0;
  v22 = Phase::Logger::GetInstance(v21);
  *(this + 108) = *(v22 + 324) == 0;
  v23 = Phase::Logger::GetInstance(v22);
  v24 = *(v23 + 326) & ~(*(v23 + 326) >> 31);
  *(this + 31) = ((0x10000 - v24) & ((0x10000 - v24) >> 31)) + v24;
  v25 = **(Phase::Logger::GetInstance(v23) + 1264);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(this + 123);
    v27 = *(this + 84);
    v28 = *(this + 132);
    v29 = *(this + 87);
    v30 = *(this + 144);
    v31 = *(this + 120);
    v32 = *(this + 121);
    v33 = *(this + 145);
    v34 = *(this + 146);
    v35 = *(this + 147);
    v36 = 136317954;
    v37 = "RoomSimulationInitData.cpp";
    v38 = 1024;
    v39 = 82;
    v40 = 1024;
    *v41 = v26;
    *&v41[4] = 1024;
    *&v41[6] = v27;
    v42 = 1024;
    v43 = v28;
    v44 = 1024;
    v45 = v29;
    v46 = 1024;
    v47 = v30;
    v48 = 1024;
    v49 = v31;
    v50 = 1024;
    v51 = v32;
    v52 = 1024;
    v53 = v33;
    v54 = 1024;
    v55 = v34;
    v56 = 1024;
    v57 = v35;
    _os_log_impl(&dword_23A302000, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d RoomSimulationConfig::ReadDefaultsWriteFlags:\nmKeepRendererAlive %d\nmForceLateResponseBuilding %d\nmFixedERLRDirectivity %d\nmDirectSoundDelayLR %d\nmIncludeSourcesOutsideInSharedReverb %d\nmUseSceneObserver %d\nmUseDynamicAggregation %d\nmEnableListenerOutsideMitigation %d\nmEnableDeterministicRayTracerMode %d\nmSingleTraceDisabled %d\n", &v36, 0x4Eu);
  }
}

float Phase::SpatialModeler::RoomSimulationLogging::logInvalidIntersections(Phase::SpatialModeler::RoomSimulationLogging *this, const Phase::SpatialModeler::RayTracerState *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = (this + 0x4000);
  v3 = vaddvq_s32(*(this + 19340)) + *(this + 4839);
  result = *(this + 4878);
  if (result > 0.0 && v3 >= 3)
  {
    v7 = **(Phase::Logger::GetInstance(this) + 1264);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      v9 = v2[738];
      v10 = v9 / v2[736];
      v26 = 136315906;
      v27 = "RoomSimulationLoggingFunctions.cpp";
      v28 = 1024;
      v29 = 34;
      v30 = 1024;
      v31 = v9;
      v32 = 2048;
      v33 = (v10 * 100.0);
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Received %d invalid intersections, %.1f%% of total.\n", &v26, 0x22u);
    }

    if (*(this + 4835))
    {
      v11 = **(Phase::Logger::GetInstance(v8) + 1264);
      v8 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      if (v8)
      {
        v12 = v2[739];
        v13 = v12 / v2[736];
        v26 = 136315906;
        v27 = "RoomSimulationLoggingFunctions.cpp";
        v28 = 1024;
        v29 = 41;
        v30 = 1024;
        v31 = v12;
        v32 = 2048;
        v33 = (v13 * 100.0);
        _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d     - %d with positive intersection (mT < FLTMAX), but null-normal (0,0,0), %.1f%% of total.\n", &v26, 0x22u);
      }
    }

    if (v2[740])
    {
      v14 = **(Phase::Logger::GetInstance(v8) + 1264);
      v8 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
      if (v8)
      {
        v15 = v2[740];
        v16 = v15 / v2[736];
        v26 = 136315906;
        v27 = "RoomSimulationLoggingFunctions.cpp";
        v28 = 1024;
        v29 = 48;
        v30 = 1024;
        v31 = v15;
        v32 = 2048;
        v33 = (v16 * 100.0);
        _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d     - %d with negative intersection (mT == FLTMAX), and null-normal (0,0,0), %.1f%% of total.\n", &v26, 0x22u);
      }
    }

    if (v2[741])
    {
      v17 = **(Phase::Logger::GetInstance(v8) + 1264);
      v8 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
      if (v8)
      {
        v18 = v2[741];
        v19 = v18 / v2[736];
        v26 = 136315906;
        v27 = "RoomSimulationLoggingFunctions.cpp";
        v28 = 1024;
        v29 = 55;
        v30 = 1024;
        v31 = v18;
        v32 = 2048;
        v33 = (v19 * 100.0);
        _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d     - %d with a self-intersection (mT == 0), %.1f%% of total.\n", &v26, 0x22u);
      }
    }

    if (v2[742])
    {
      v20 = **(Phase::Logger::GetInstance(v8) + 1264);
      v8 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
      if (v8)
      {
        v21 = v2[742];
        v22 = v21 / v2[736];
        v26 = 136315906;
        v27 = "RoomSimulationLoggingFunctions.cpp";
        v28 = 1024;
        v29 = 62;
        v30 = 1024;
        v31 = v21;
        v32 = 2048;
        v33 = (v22 * 100.0);
        _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d     - %d with mT == 0, but not self-intersecting (origin away from boundary), %.1f%% of total.\n", &v26, 0x22u);
      }
    }

    if (v2[743])
    {
      v23 = **(Phase::Logger::GetInstance(v8) + 1264);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = v2[743];
        v25 = v24 / v2[736];
        v26 = 136315906;
        v27 = "RoomSimulationLoggingFunctions.cpp";
        v28 = 1024;
        v29 = 69;
        v30 = 1024;
        v31 = v24;
        v32 = 2048;
        v33 = (v25 * 100.0);
        _os_log_impl(&dword_23A302000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d     - %d with no intersection (mT == FLTMAX), %.1f%% of total.\n", &v26, 0x22u);
      }
    }
  }

  return result;
}

uint64_t Phase::SpatialModeler::RoomSimulationLogging::logInQuerySources(Phase::Logger *a1, uint64_t a2, uint64_t a3)
{
  result = Phase::Logger::GetInstance(a1);
  if ((*(*(result + 1264) + 8) & 4) != 0)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v24);
    std::string::basic_string[abi:ne200100]<0>(v22, "logInQuerySources");
    std::string::basic_string[abi:ne200100]<0>(__p, "source handles in inQuery:");
    if ((v23 & 0x80u) == 0)
    {
      v7 = v22;
    }

    else
    {
      v7 = v22[0];
    }

    if ((v23 & 0x80u) == 0)
    {
      v8 = v23;
    }

    else
    {
      v8 = v22[1];
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, v7, v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " from ", 6);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, a2, a3);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", ", 2);
    if ((v21 & 0x80u) == 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    if ((v21 & 0x80u) == 0)
    {
      v14 = v21;
    }

    else
    {
      v14 = __p[1];
    }

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
    std::ios_base::getloc((v15 + *(*v15 - 24)));
    v16 = std::locale::use_facet(&v30, MEMORY[0x277D82680]);
    (v16->__vftable[2].~facet_0)(v16, 10);
    std::locale::~locale(&v30);
    std::ostream::put();
    std::ostream::flush();
    if (*(a1 + 5))
    {
      v17 = *a1;
      do
      {
        v18 = MEMORY[0x23EE86170](&v25, *(v17 + 144));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "\n", 1);
        v17 += 304;
      }

      while (v17 != *a1 + 304 * *(a1 + 5));
    }

    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    v24[0] = *MEMORY[0x277D82818];
    v19 = *(MEMORY[0x277D82818] + 72);
    *(v24 + *(v24[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v25 = v19;
    v26 = MEMORY[0x277D82878] + 16;
    if (v28 < 0)
    {
      operator delete(v27[7].__locale_);
    }

    v26 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v27);
    std::iostream::~basic_iostream();
    return MEMORY[0x23EE863B0](&v29);
  }

  return result;
}

void sub_23A4E71A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a21);
  _Unwind_Resume(a1);
}

uint64_t Phase::SpatialModeler::RoomSimulationLogging::logRayTracerStateStatus(Phase::Logger *a1, uint64_t a2, uint64_t a3)
{
  Phase::SpatialModeler::RoomSimulationLogging::logState(a1, a2, a3);
  Phase::SpatialModeler::RoomSimulationLogging::logSourceListenerResults(a1, a2, a3);
  Phase::SpatialModeler::RoomSimulationLogging::logERClusterResults(a1, a2, a3);

  return Phase::SpatialModeler::RoomSimulationLogging::logLRClusterResults(a1, a2, a3);
}

uint64_t Phase::SpatialModeler::RoomSimulationLogging::logState(Phase::Logger *a1, uint64_t a2, uint64_t a3)
{
  result = Phase::Logger::GetInstance(a1);
  if ((*(*(result + 1264) + 8) & 4) != 0)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v26);
    std::string::basic_string[abi:ne200100]<0>(v24, "logState");
    std::string::basic_string[abi:ne200100]<0>(__p, "source handles in mState:");
    if ((v25 & 0x80u) == 0)
    {
      v7 = v24;
    }

    else
    {
      v7 = v24[0];
    }

    if ((v25 & 0x80u) == 0)
    {
      v8 = v25;
    }

    else
    {
      v8 = v24[1];
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, v7, v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " from ", 6);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, a2, a3);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", ", 2);
    if ((v23 & 0x80u) == 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    if ((v23 & 0x80u) == 0)
    {
      v14 = v23;
    }

    else
    {
      v14 = __p[1];
    }

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
    std::ios_base::getloc((v15 + *(*v15 - 24)));
    v16 = std::locale::use_facet(&v32, MEMORY[0x277D82680]);
    (v16->__vftable[2].~facet_0)(v16, 10);
    std::locale::~locale(&v32);
    std::ostream::put();
    std::ostream::flush();
    v17 = *(a1 + 2366);
    if (*(a1 + 2367) != v17)
    {
      v18 = 0;
      v19 = 48;
      do
      {
        v20 = MEMORY[0x23EE86170](&v27, *(v17 + v19));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "\n", 1);
        ++v18;
        v17 = *(a1 + 2366);
        v19 += 56;
      }

      while (v18 < 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 2367) - v17) >> 3));
    }

    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

    v26[0] = *MEMORY[0x277D82818];
    v21 = *(MEMORY[0x277D82818] + 72);
    *(v26 + *(v26[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v27 = v21;
    v28 = MEMORY[0x277D82878] + 16;
    if (v30 < 0)
    {
      operator delete(v29[7].__locale_);
    }

    v28 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v29);
    std::iostream::~basic_iostream();
    return MEMORY[0x23EE863B0](&v31);
  }

  return result;
}

void sub_23A4E7598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a21);
  _Unwind_Resume(a1);
}

uint64_t Phase::SpatialModeler::RoomSimulationLogging::logSourceListenerResults(Phase::Logger *a1, uint64_t a2, uint64_t a3)
{
  result = Phase::Logger::GetInstance(a1);
  if ((*(*(result + 1264) + 8) & 4) != 0)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v27);
    std::string::basic_string[abi:ne200100]<0>(v25, "logSourceListenerResults");
    std::string::basic_string[abi:ne200100]<0>(__p, "source handles in results:");
    if ((v26 & 0x80u) == 0)
    {
      v7 = v25;
    }

    else
    {
      v7 = v25[0];
    }

    if ((v26 & 0x80u) == 0)
    {
      v8 = v26;
    }

    else
    {
      v8 = v25[1];
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, v7, v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " from ", 6);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, a2, a3);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", ", 2);
    if ((v24 & 0x80u) == 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    if ((v24 & 0x80u) == 0)
    {
      v14 = v24;
    }

    else
    {
      v14 = __p[1];
    }

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
    std::ios_base::getloc((v15 + *(*v15 - 24)));
    v16 = std::locale::use_facet(&v33, MEMORY[0x277D82680]);
    (v16->__vftable[2].~facet_0)(v16, 10);
    std::locale::~locale(&v33);
    std::ostream::put();
    std::ostream::flush();
    v17 = *(a1 + 2420);
    if (v17 != (a1 + 19368))
    {
      do
      {
        v18 = MEMORY[0x23EE86170](&v28, v17[4]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "\n", 1);
        v19 = v17[1];
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
            v20 = v17[2];
            v21 = *v20 == v17;
            v17 = v20;
          }

          while (!v21);
        }

        v17 = v20;
      }

      while (v20 != (a1 + 19368));
    }

    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    if (v26 < 0)
    {
      operator delete(v25[0]);
    }

    v27[0] = *MEMORY[0x277D82818];
    v22 = *(MEMORY[0x277D82818] + 72);
    *(v27 + *(v27[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v28 = v22;
    v29 = MEMORY[0x277D82878] + 16;
    if (v31 < 0)
    {
      operator delete(v30[7].__locale_);
    }

    v29 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v30);
    std::iostream::~basic_iostream();
    return MEMORY[0x23EE863B0](&v32);
  }

  return result;
}

void sub_23A4E7910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a21);
  _Unwind_Resume(a1);
}

uint64_t Phase::SpatialModeler::RoomSimulationLogging::logERClusterResults(Phase::Logger *a1, uint64_t a2, uint64_t a3)
{
  result = Phase::Logger::GetInstance(a1);
  if ((*(*(result + 1264) + 8) & 4) != 0)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v31);
    std::string::basic_string[abi:ne200100]<0>(__p, "logERClusterResults");
    if ((v30 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if ((v30 & 0x80u) == 0)
    {
      v8 = v30;
    }

    else
    {
      v8 = __p[1];
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, v7, v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " from ", 6);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, a2, a3);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", looping over ", 15);
    v13 = MEMORY[0x23EE86160](v12, *(a1 + 2426));
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " in order:", 10);
    std::ios_base::getloc((v14 + *(*v14 - 24)));
    v15 = std::locale::use_facet(&v37, MEMORY[0x277D82680]);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&v37);
    std::ostream::put();
    std::ostream::flush();
    v16 = *(a1 + 2425);
    if (v16)
    {
      v17 = 0;
      v18 = MEMORY[0x277D82680];
      do
      {
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "Cluster ", 8);
        v20 = MEMORY[0x23EE86160](v19, v17);
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " / ", 3);
        v22 = MEMORY[0x23EE86160](v21, *(a1 + 2426));
        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " has handles:", 13);
        std::ios_base::getloc((v23 + *(*v23 - 24)));
        v24 = std::locale::use_facet(&v37, v18);
        (v24->__vftable[2].~facet_0)(v24, 10);
        std::locale::~locale(&v37);
        std::ostream::put();
        std::ostream::flush();
        v25 = v16 + 5;
        while (1)
        {
          v25 = *v25;
          if (!v25)
          {
            break;
          }

          v26 = MEMORY[0x23EE86170](&v32, v25[2]);
          std::ios_base::getloc((v26 + *(*v26 - 24)));
          v27 = std::locale::use_facet(&v37, v18);
          (v27->__vftable[2].~facet_0)(v27, 10);
          std::locale::~locale(&v37);
          std::ostream::put();
          std::ostream::flush();
        }

        ++v17;
        v16 = *v16;
      }

      while (v16);
    }

    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    v31[0] = *MEMORY[0x277D82818];
    v28 = *(MEMORY[0x277D82818] + 72);
    *(v31 + *(v31[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v32 = v28;
    v33 = MEMORY[0x277D82878] + 16;
    if (v35 < 0)
    {
      operator delete(v34[7].__locale_);
    }

    v33 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v34);
    std::iostream::~basic_iostream();
    return MEMORY[0x23EE863B0](&v36);
  }

  return result;
}

uint64_t Phase::SpatialModeler::RoomSimulationLogging::logLRClusterResults(Phase::Logger *a1, uint64_t a2, uint64_t a3)
{
  result = Phase::Logger::GetInstance(a1);
  if ((*(*(result + 1264) + 8) & 4) != 0)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v31);
    std::string::basic_string[abi:ne200100]<0>(__p, "logLRClusterResults");
    if ((v30 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if ((v30 & 0x80u) == 0)
    {
      v8 = v30;
    }

    else
    {
      v8 = __p[1];
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, v7, v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " from ", 6);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, a2, a3);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", looping over ", 15);
    v13 = MEMORY[0x23EE86160](v12, *(a1 + 2431));
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " in order:", 10);
    std::ios_base::getloc((v14 + *(*v14 - 24)));
    v15 = std::locale::use_facet(&v37, MEMORY[0x277D82680]);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&v37);
    std::ostream::put();
    std::ostream::flush();
    v16 = *(a1 + 2430);
    if (v16)
    {
      v17 = 0;
      v18 = MEMORY[0x277D82680];
      do
      {
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "Cluster ", 8);
        v20 = MEMORY[0x23EE86160](v19, v17);
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " / ", 3);
        v22 = MEMORY[0x23EE86160](v21, *(a1 + 2431));
        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " has handles:", 13);
        std::ios_base::getloc((v23 + *(*v23 - 24)));
        v24 = std::locale::use_facet(&v37, v18);
        (v24->__vftable[2].~facet_0)(v24, 10);
        std::locale::~locale(&v37);
        std::ostream::put();
        std::ostream::flush();
        v25 = v16 + 5;
        while (1)
        {
          v25 = *v25;
          if (!v25)
          {
            break;
          }

          v26 = MEMORY[0x23EE86170](&v32, v25[2]);
          std::ios_base::getloc((v26 + *(*v26 - 24)));
          v27 = std::locale::use_facet(&v37, v18);
          (v27->__vftable[2].~facet_0)(v27, 10);
          std::locale::~locale(&v37);
          std::ostream::put();
          std::ostream::flush();
        }

        ++v17;
        v16 = *v16;
      }

      while (v16);
    }

    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    v31[0] = *MEMORY[0x277D82818];
    v28 = *(MEMORY[0x277D82818] + 72);
    *(v31 + *(v31[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v32 = v28;
    v33 = MEMORY[0x277D82878] + 16;
    if (v35 < 0)
    {
      operator delete(v34[7].__locale_);
    }

    v33 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v34);
    std::iostream::~basic_iostream();
    return MEMORY[0x23EE863B0](&v36);
  }

  return result;
}

uint64_t Phase::SpatialModeler::RoomSimulationLogging::MakeInfoString@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v7);
  *(&v7[2] + *(v7[0] - 24)) = 2;
  *(&v8 + *(v8 - 24) + 8) = *(&v8 + *(v8 - 24) + 8) & 0xFFFFFEFB | 4;
  if (a1 == 3)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "Late Reverb Simulation", 22);
  }

  else if (a1 == 2)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "Early Reflections Simulation", 28);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " @ ", 3);
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "Hz x ", 5);
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "ms", 2);
  std::ios_base::getloc((&v8 + *(v8 - 24)));
  v4 = std::locale::use_facet(&v13, MEMORY[0x277D82680]);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v13);
  std::ostream::put();
  std::ostream::flush();
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v7, a2);
  v7[0] = *MEMORY[0x277D82818];
  v5 = *(MEMORY[0x277D82818] + 72);
  *(v7 + *(v7[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v8 = v5;
  v9 = MEMORY[0x277D82878] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v10);
  std::iostream::~basic_iostream();
  return MEMORY[0x23EE863B0](&v12);
}

void sub_23A4E852C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 72));
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a9);
  _Unwind_Resume(a1);
}

uint64_t Phase::SpatialModeler::RoomSimulationLogging::CheckLRClusterResultAndSourceListenerResultCoherence(void *a1, uint64_t a2, uint64_t a3)
{
  result = Phase::Logger::GetInstance(a1);
  if ((*(*(result + 1264) + 8) & 4) != 0)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v34);
    std::string::basic_string[abi:ne200100]<0>(__p, "CheckLRClusterResultAndSourceListenerResultCoherence");
    if ((v33 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if ((v33 & 0x80u) == 0)
    {
      v8 = v33;
    }

    else
    {
      v8 = __p[1];
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, v7, v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " from ", 6);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, a2, a3);
    std::ios_base::getloc((v11 + *(*v11 - 24)));
    v12 = std::locale::use_facet(&v40, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v40);
    std::ostream::put();
    std::ostream::flush();
    v13 = a1[2420];
    v14 = a1 + 2421;
    if (v13 != a1 + 2421)
    {
      do
      {
        v40.__locale_ = v13[4];
        v15 = a1[2430];
        if (!v15)
        {
          goto LABEL_24;
        }

        v16 = 0;
        do
        {
          for (i = v15[5]; i; i = *i)
          {
            v18 = i[2];
            v19 = *v14;
            if (*v14)
            {
              v20 = a1 + 2421;
              do
              {
                v21 = v19[4];
                v22 = v21 >= v18;
                v23 = v21 < v18;
                if (v22)
                {
                  v20 = v19;
                }

                v19 = v19[v23];
              }

              while (v19);
              if (v20 != v14 && v18 >= v20[4])
              {
                continue;
              }
            }

            v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "cluster source hash ", 20);
            v25 = MEMORY[0x23EE86170](v24, v18);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " not in source listener result\n", 31);
          }

          v16 |= std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>>>::find<unsigned long long>(v15 + 3, &v40) != 0;
          v15 = *v15;
        }

        while (v15);
        if ((v16 & 1) == 0)
        {
LABEL_24:
          v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "source hash ", 12);
          v27 = MEMORY[0x23EE86170](v26, v40.__locale_);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, " not in clustering results\n", 27);
        }

        v28 = v13[1];
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
          do
          {
            v29 = v13[2];
            v30 = *v29 == v13;
            v13 = v29;
          }

          while (!v30);
        }

        v13 = v29;
      }

      while (v29 != v14);
    }

    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    v34[0] = *MEMORY[0x277D82818];
    v31 = *(MEMORY[0x277D82818] + 72);
    *(v34 + *(v34[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v35 = v31;
    v36 = MEMORY[0x277D82878] + 16;
    if (v38 < 0)
    {
      operator delete(v37[7].__locale_);
    }

    v36 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v37);
    std::iostream::~basic_iostream();
    return MEMORY[0x23EE863B0](&v39);
  }

  return result;
}

void sub_23A4E88F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  a15 = *MEMORY[0x277D82818];
  v35 = *(MEMORY[0x277D82818] + 72);
  *(&a15 + *(a15 - 24)) = *(MEMORY[0x277D82818] + 64);
  a17 = v35;
  a18 = MEMORY[0x277D82878] + 16;
  if (a31 < 0)
  {
    operator delete(__p);
  }

  a18 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&a19);
  std::iostream::~basic_iostream();
  MEMORY[0x23EE863B0](&a34);
  _Unwind_Resume(a1);
}

void Phase::SpatialModeler::RoomSimulationLogging::logAreSourcesAndListenerInsideSceneBoundingBox(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int8x16_t a5)
{
  v89 = *MEMORY[0x277D85DE8];
  v80 = 0;
  v81 = 0;
  v82 = 0;
  if (a2 == 3)
  {
    HIBYTE(v82) = 2;
    v6 = 21068;
  }

  else
  {
    if (a2 != 2)
    {
      goto LABEL_6;
    }

    HIBYTE(v82) = 2;
    v6 = 21061;
  }

  LOWORD(v80) = v6;
LABEL_6:
  v7 = *(a1 + 20976);
  v8 = *(a1 + 20980);
  v9 = *(a1 + 20988);
  v10 = *(a1 + 20992);
  v11 = *(a1 + 22792);
  v12 = *(a1 + 22796);
  v13 = *(a1 + 22800);
  v14 = v7 > v11 || v11 > v9;
  a5.i32[0] = HIDWORD(*(a1 + 20980));
  v69 = *(a1 + 20992);
  v70 = *(a1 + 20980);
  v18 = v14 || *&v8 > v12 || v12 > *&v10 || *(&v8 + 1) > v13 || v13 > *(&v10 + 1);
  v19 = MEMORY[0x277D82818];
  if (v18)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v73);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v74, "logAreSourcesAndListenerInsideSceneBoundingBox - called from ", 61);
    if (v82 >= 0)
    {
      v21 = &v80;
    }

    else
    {
      v21 = v80;
    }

    if (v82 >= 0)
    {
      v22 = HIBYTE(v82);
    }

    else
    {
      v22 = v81;
    }

    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v21, v22);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " ", 1);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, a3, a4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v74, "Listener Position ", 18);
    v26 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ", ", 2);
    v27 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ", ", 2);
    v28 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " ", 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v74, "outside the scene boundingbox ", 30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v74, "min ", 4);
    v29 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ", ", 2);
    v30 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ", ", 2);
    v31 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " ", 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v74, "max ", 4);
    v32 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ", ", 2);
    v33 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ", ", 2);
    v34 = std::ostream::operator<<();
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " ", 1);
    v36 = **(Phase::Logger::GetInstance(v35) + 1264);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v73, __p);
      v37 = v72 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v84 = "RoomSimulationLoggingFunctions.cpp";
      v85 = 1024;
      v86 = 387;
      v87 = 2080;
      v88 = v37;
      _os_log_impl(&dword_23A302000, v36, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s", buf, 0x1Cu);
      if (v72 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v73[0] = *v19;
    v38 = v19[9];
    *(v73 + *(v73[0] - 24)) = v19[8];
    v74 = v38;
    v75 = MEMORY[0x277D82878] + 16;
    if (v78 < 0)
    {
      operator delete(v77);
    }

    v75 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v76);
    std::iostream::~basic_iostream();
    MEMORY[0x23EE863B0](v79);
  }

  v39 = *(a1 + 18928);
  v40 = *(a1 + 18936);
  if (v39 != v40)
  {
    v66 = *MEMORY[0x277D82818];
    v41 = *(MEMORY[0x277D82818] + 64);
    v42 = *(MEMORY[0x277D82818] + 72);
    a5.i64[1] = v69;
    v65 = vextq_s8(a5, a5, 8uLL).u64[0];
    do
    {
      v43 = *(v39 + 24);
      v44 = v7 > v43 || v43 > v9;
      if (v44 || (v45.i64[0] = v70, v45.i64[1] = *(v39 + 28), v46.i64[0] = v45.i64[1], v46.i64[1] = v65, (vminv_u16(vmovn_s32(vcgeq_f32(v46, v45))) & 1) == 0))
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v73);
        v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v74, "logAreSourcesAndListenerInsideSceneBoundingBox - called from ", 61);
        if (v82 >= 0)
        {
          v48 = &v80;
        }

        else
        {
          v48 = v80;
        }

        if (v82 >= 0)
        {
          v49 = HIBYTE(v82);
        }

        else
        {
          v49 = v81;
        }

        v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, v48, v49);
        v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, " ", 1);
        v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, a3, a4);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, ": ", 2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v74, "Source Position ", 16);
        v53 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, ", ", 2);
        v54 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, ", ", 2);
        v55 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, " ", 1);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v74, "outside the scene boundingbox ", 30);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v74, "min ", 4);
        v56 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, ", ", 2);
        v57 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, ", ", 2);
        v58 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, " ", 1);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v74, "max ", 4);
        v59 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, ", ", 2);
        v60 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, ", ", 2);
        v61 = std::ostream::operator<<();
        v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, " ", 1);
        v63 = **(Phase::Logger::GetInstance(v62) + 1264);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
        {
          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v73, __p);
          v64 = __p;
          if (v72 < 0)
          {
            v64 = __p[0];
          }

          *buf = 136315650;
          v84 = "RoomSimulationLoggingFunctions.cpp";
          v85 = 1024;
          v86 = 404;
          v87 = 2080;
          v88 = v64;
          _os_log_impl(&dword_23A302000, v63, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s", buf, 0x1Cu);
          if (v72 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v73[0] = v66;
        *(v73 + *(v66 - 24)) = v41;
        v74 = v42;
        v75 = MEMORY[0x277D82878] + 16;
        if (v78 < 0)
        {
          operator delete(v77);
        }

        v75 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v76);
        std::iostream::~basic_iostream();
        MEMORY[0x23EE863B0](v79);
      }

      v39 += 56;
    }

    while (v39 != v40);
  }

  if (SHIBYTE(v82) < 0)
  {
    operator delete(v80);
  }
}

void sub_23A4E92CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a27);
  if (*(v27 - 193) < 0)
  {
    operator delete(*(v27 - 216));
  }

  _Unwind_Resume(a1);
}

void Phase::SpatialModeler::RoomSimulationLogging::logWhenExceedingTimeLimit(Phase::SpatialModeler::RoomSimulationLogging *this, const Phase::SpatialModeler::RayTracerState *a2, Phase::Throttle *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = *(*this + 32);
  if (v4 == 3)
  {
    v5 = *(this + 12);
  }

  else
  {
    v5 = 0.0;
    if (v4 == 2)
    {
      v5 = *(this + 13);
    }
  }

  v6 = (*(this + 2415) - *(this + 2414)) / 1000000000.0;
  if (v6 > (v5 * 1.25))
  {
    ShouldFire = Phase::Throttle::ShouldFire(a2, 0);
    if (ShouldFire)
    {
      v8 = **(Phase::Logger::GetInstance(ShouldFire) + 1264);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        Phase::SpatialModeler::RayTracerState::descriptionString(this, 0, __p);
        if (v12 >= 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        v10 = *(this + 4832);
        *buf = 136316162;
        v14 = "RoomSimulationLoggingFunctions.cpp";
        v15 = 1024;
        v16 = 427;
        v17 = 2080;
        v18 = v9;
        v19 = 2048;
        v20 = v6;
        v21 = 1024;
        v22 = v10;
        _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d %s ran %f sec to reach %i intersections", buf, 0x2Cu);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }
}

void Phase::SpatialModeler::RoomSimulationLogging::logRoomStatistics(unsigned int *a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((*(*(Phase::Logger::GetInstance(a1) + 1264) + 8) & 4) == 0)
  {
    return;
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  if (a2 == 3)
  {
    HIBYTE(v34) = 2;
    v8 = 21068;
    goto LABEL_6;
  }

  if (a2 == 2)
  {
    HIBYTE(v34) = 2;
    v8 = 21061;
LABEL_6:
    LOWORD(v32) = v8;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v26);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "logRoomStatistics - called from ", 32);
  if (v34 >= 0)
  {
    v10 = &v32;
  }

  else
  {
    v10 = v32;
  }

  if (v34 >= 0)
  {
    v11 = HIBYTE(v34);
  }

  else
  {
    v11 = v33;
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " ", 1);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, a3, a4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "\n", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "Room volume ", 12);
  v15 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "\n", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "Room surface area ", 18);
  v16 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "\n", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "Mean free path ", 15);
  v17 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\n", 1);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "Mean absorption per band:", 25);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "\n", 1);
  v19 = a1[4911];
  if (v19)
  {
    v20 = a1 + 4880;
    v21 = a1[4911];
    do
    {
      v22 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ", ", 2);
      ++v20;
      --v21;
    }

    while (v21);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "\n", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "RT60 per band:\n", 15);
  if (v19)
  {
    v23 = a1 + 4944;
    do
    {
      v24 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ", ", 2);
      ++v23;
      --v19;
    }

    while (v19);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "\n", 1);
  v26[0] = *MEMORY[0x277D82818];
  v25 = *(MEMORY[0x277D82818] + 72);
  *(v26 + *(v26[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v27 = v25;
  v28 = MEMORY[0x277D82878] + 16;
  if (v30 < 0)
  {
    operator delete(v29[7].__locale_);
  }

  v28 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v29);
  std::iostream::~basic_iostream();
  MEMORY[0x23EE863B0](&v31);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v32);
  }
}

void sub_23A4E9834(_Unwind_Exception *exception_object)
{
  if (*(v1 - 65) < 0)
  {
    operator delete(*(v1 - 88));
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::SpatialModeler::RoomSimulationLogging::logRoomStatisticsAtIRBuild(Phase::SpatialModeler::RoomSimulationLogging *this, const Phase::SpatialModeler::RayTracerState *a2, const Phase::SpatialModeler::DirectivityHistogram *a3, float a4)
{
  v5 = a3;
  v62 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(this);
  v9 = expf(((*(Instance + 1284) * 10.0) / 10.0) * 0.23026);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v50);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, "=== Room Statistics ===\n", 24);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, "* Volume: ", 10);
  v10 = (this + 19504);
  v11 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " (m^3), ", 8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, "Surface Area: ", 14);
  v12 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " (m^2), ", 8);
  v13 = v51;
  *(&v53[0].__locale_ + *(v51 - 24)) = 3;
  *(&v51 + *(v13 - 24) + 8) = *(&v51 + *(v13 - 24) + 8) & 0xFFFFFEFB | 4;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, "Mean Free Path: ", 16);
  v14 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " (m), ", 6);
  if (v5)
  {
    v15 = "OUTDOOR\n";
  }

  else
  {
    v15 = "INDOOR\n";
  }

  if (v5)
  {
    v16 = 8;
  }

  else
  {
    v16 = 7;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, v15, v16);
  v17 = *(a2 + 7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, "* Bands (Hz):", 13);
  v18 = v51;
  v19 = v51;
  *(&v53[0].__locale_ + *(v51 - 24)) = 0;
  *(&v51 + *(v19 - 24) + 8) = *(&v51 + *(v19 - 24) + 8) & 0xFFFFFEFB | 4;
  if (v17)
  {
    v20 = 0;
    v21 = &Phase::sThirdOctaveBandFrequencies;
    v22 = v17;
    do
    {
      *(&v53[1].__locale_ + *(v51 - 24)) = 8;
      std::ostream::operator<<();
      ++v20;
      ++v21;
      --v22;
    }

    while (v22);
    v18 = v51;
    v10 = (this + 19504);
  }

  *(&v53[0].__locale_ + *(v18 - 24)) = 3;
  *(&v51 + *(v18 - 24) + 8) = *(&v51 + *(v18 - 24) + 8) & 0xFFFFFEFB | 4;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, "\n* RT60 (sec):", 14);
  if (v17)
  {
    v23 = (v10 + 68);
    v24 = v17;
    do
    {
      *(&v53[1].__locale_ + *(v51 - 24)) = 8;
      std::ostream::operator<<();
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  v25 = (v10 + 260);
  v26 = *(v10 + 291);
  v27 = fabsf(v10[260]);
  if (v26 <= 1)
  {
    v27 = 0.0;
  }

  if (v26)
  {
    v28 = v10 + 260;
    do
    {
      v29 = *v28++;
      v30 = fabsf(v29);
      if (v27 < v30)
      {
        v27 = v30;
      }

      --v26;
    }

    while (v26);
  }

  if (v27 > 0.0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, "\n* EDT (sec): ", 14);
    if (v17)
    {
      v31 = v17;
      do
      {
        *(&v53[1].__locale_ + *(v51 - 24)) = 8;
        std::ostream::operator<<();
        v25 += 4;
        --v31;
      }

      while (v31);
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, "\n* ER (dB):   ", 14);
  if (v17)
  {
    v32 = 0;
    do
    {
      *(&v53[1].__locale_ + *(v51 - 24)) = 8;
      Phase::SpatialModeler::RayTracerState::calculateTotalSpecularEarlyEnergy(this, buf);
      v33 = v9 * *&buf[v32];
      if (v33 <= 0.0)
      {
        v33 = COERCE_FLOAT(1);
      }

      logf(v33);
      std::ostream::operator<<();
      v32 += 4;
    }

    while (4 * v17 != v32);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, "\n* LR (dB):   ", 14);
  if (v17)
  {
    v34 = 0;
    for (i = 0; i != v17; ++i)
    {
      *(&v53[1].__locale_ + *(v51 - 24)) = 8;
      v36 = 0.0;
      if ((*(a2 + 36) & 1) == 0)
      {
        v37 = *(a2 + 6);
        if (v37)
        {
          v38 = (*(a2 + 1) + v34);
          do
          {
            v36 = v36 + *v38;
            v38 += *(a2 + 7);
            --v37;
          }

          while (v37);
        }
      }

      v39 = (v9 * v36) * a4;
      if (v39 <= 0.0)
      {
        v39 = COERCE_FLOAT(1);
      }

      logf(v39);
      std::ostream::operator<<();
      v34 += 4;
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, "\n* Mean Abs:  ", 14);
  if (v17)
  {
    v40 = this + 19520;
    v41 = v17;
    do
    {
      *(&v53[1].__locale_ + *(v51 - 24)) = 8;
      std::ostream::operator<<();
      v40 += 4;
      --v41;
    }

    while (v41);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, "\n* Abs Corr:  ", 14);
  if (v17)
  {
    for (j = 0; j != v17; ++j)
    {
      *(&v53[1].__locale_ + *(v51 - 24)) = 8;
      std::ostream::operator<<();
    }
  }

  v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, "\n", 1);
  v44 = **(Phase::Logger::GetInstance(v43) + 1264);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v50, __p);
    v45 = v49 >= 0 ? __p : __p[0];
    *buf = 136315650;
    v57 = "RoomSimulationLoggingFunctions.cpp";
    v58 = 1024;
    v59 = 557;
    v60 = 2080;
    v61 = v45;
    _os_log_impl(&dword_23A302000, v44, OS_LOG_TYPE_DEFAULT, "%25s:%-5d \n%s", buf, 0x1Cu);
    if (v49 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v50[0] = *MEMORY[0x277D82818];
  v46 = *(MEMORY[0x277D82818] + 72);
  *(v50 + *(v50[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v51 = v46;
  v52 = MEMORY[0x277D82878] + 16;
  if (v54 < 0)
  {
    operator delete(v53[7].__locale_);
  }

  v52 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v53);
  std::iostream::~basic_iostream();
  return MEMORY[0x23EE863B0](&v55);
}

void sub_23A4EA0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t Phase::SpatialModeler::RoomSimulationLogging::logRoomStatisticsAtIRBuild(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, float a6)
{
  v66 = *MEMORY[0x277D85DE8];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v54);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "=== Room Statistics ===\n", 24);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "* Volume: ", 10);
  v12 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " (m^3), ", 8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, " Surface Area: ", 15);
  v13 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " (m^2), ", 8);
  v14 = v55;
  *(&v57[0].__locale_ + *(v55 - 24)) = 3;
  *(&v55 + *(v14 - 24) + 8) = *(&v55 + *(v14 - 24) + 8) & 0xFFFFFEFB | 4;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "Mean Free Path: ", 16);
  v15 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " (m), ", 6);
  if (a4)
  {
    v16 = "OUTDOOR";
  }

  else
  {
    v16 = "INDOOR";
  }

  if (a4)
  {
    v17 = 7;
  }

  else
  {
    v17 = 6;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, v16, v17);
  v18 = v55;
  *(&v57[0].__locale_ + *(v55 - 24)) = 1;
  *(&v55 + *(v18 - 24) + 8) = *(&v55 + *(v18 - 24) + 8) & 0xFFFFFEFB | 4;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, ", Immersed: ", 12);
  v19 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "%, ", 3);
  if (a5)
  {
    v20 = " Did SpaceBlend";
  }

  else
  {
    v20 = " No SpaceBlend";
  }

  if (a5)
  {
    v21 = 15;
  }

  else
  {
    v21 = 14;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, v20, v21);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "\n", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "* Bands (Hz):", 13);
  v22 = 0;
  v23 = v55;
  *(&v57[0].__locale_ + *(v55 - 24)) = 0;
  *(&v55 + *(v23 - 24) + 8) = *(&v55 + *(v23 - 24) + 8) & 0xFFFFFEFB | 4;
  do
  {
    *(&v57[1].__locale_ + *(v55 - 24)) = 8;
    std::ostream::operator<<();
    v22 += 4;
  }

  while (v22 != 40);
  v24 = v55;
  *(&v57[0].__locale_ + *(v55 - 24)) = 3;
  *(&v55 + *(v24 - 24) + 8) = *(&v55 + *(v24 - 24) + 8) & 0xFFFFFEFB | 4;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "\n* RT60 (sec):", 14);
  for (i = 0; i != 40; i += 4)
  {
    *(&v57[1].__locale_ + *(v55 - 24)) = 8;
    std::ostream::operator<<();
  }

  v26 = *(a1 + 20668);
  v27 = fabsf(*(a1 + 20544));
  if (v26 <= 1)
  {
    v27 = 0.0;
  }

  if (v26)
  {
    v28 = (a1 + 20544);
    do
    {
      v29 = *v28++;
      v30 = fabsf(v29);
      if (v27 < v30)
      {
        v27 = v30;
      }

      --v26;
    }

    while (v26);
  }

  if (v27 > 0.0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "\n* EDT (sec): ", 14);
    for (j = 0; j != 40; j += 4)
    {
      *(&v57[1].__locale_ + *(v55 - 24)) = 8;
      std::ostream::operator<<();
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "\n* ER (dB):   ", 14);
  for (k = 0; k != 40; k += 4)
  {
    *(&v57[1].__locale_ + *(v55 - 24)) = 8;
    v33 = *(a3 + 40 + k);
    if (v33 <= 0.0)
    {
      v33 = COERCE_FLOAT(1);
    }

    logf(v33);
    std::ostream::operator<<();
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "\n* LR (dB):   ", 14);
  v34 = 0;
  v35 = a3 + 80;
  do
  {
    *(&v57[1].__locale_ + *(v55 - 24)) = 8;
    v36 = *(v35 + v34);
    if (v36 <= 0.0)
    {
      v36 = COERCE_FLOAT(1);
    }

    logf(v36);
    std::ostream::operator<<();
    v34 += 4;
  }

  while (v34 != 40);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "\n* Mean Abs:  ", 14);
  for (m = 0; m != 40; m += 4)
  {
    *(&v57[1].__locale_ + *(v55 - 24)) = 8;
    std::ostream::operator<<();
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "\n* Abs Corr:  ", 14);
  for (n = 0; n != 10; ++n)
  {
    *(&v57[1].__locale_ + *(v55 - 24)) = 8;
    std::ostream::operator<<();
  }

  *(&v57[0].__locale_ + *(v55 - 24)) = 1;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "\n* Sends (Offset ", 17);
  LODWORD(v39) = 1;
  if (a6 > 0.0)
  {
    v39 = a6;
  }

  logf(v39);
  v40 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "dB): ", 5);
  if (a2)
  {
    v41 = (a2 + 16);
    while (1)
    {
      v41 = *v41;
      if (!v41)
      {
        break;
      }

      v42 = v41[2] - 100 * ((v41[2] / 0x64uLL) & 0x3FFFFFFF);
      *(&v57[1].__locale_ + *(v55 - 24)) = 3;
      v43 = MEMORY[0x23EE86130](&v55, v42);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, " (", 2);
      v44 = std::ostream::operator<<();
      v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "m)", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, " ", 1);
      v46 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "dB, ", 4);
    }
  }

  v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "\n", 1);
  v48 = **(Phase::Logger::GetInstance(v47) + 1264);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v54, __p);
    v49 = v53 >= 0 ? __p : __p[0];
    *buf = 136315650;
    v61 = "RoomSimulationLoggingFunctions.cpp";
    v62 = 1024;
    v63 = 642;
    v64 = 2080;
    v65 = v49;
    _os_log_impl(&dword_23A302000, v48, OS_LOG_TYPE_DEFAULT, "%25s:%-5d \n%s", buf, 0x1Cu);
    if (v53 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v54[0] = *MEMORY[0x277D82818];
  v50 = *(MEMORY[0x277D82818] + 72);
  *(v54 + *(v54[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v55 = v50;
  v56 = MEMORY[0x277D82878] + 16;
  if (v58 < 0)
  {
    operator delete(v57[7].__locale_);
  }

  v56 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v57);
  std::iostream::~basic_iostream();
  return MEMORY[0x23EE863B0](&v59);
}

void sub_23A4EAAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t Phase::SpatialModeler::RoomSimulationLogging::logTRAP(uint64_t a1)
{
  v116 = *MEMORY[0x277D85DE8];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v93);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "=== TargetRoomAcousticParametersProcessor Log ===\n", 50);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "Curated:", 8);
  if (*a1)
  {
    v3 = "Y";
  }

  else
  {
    v3 = "N";
  }

  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "\n", 1);
  v5 = v94;
  *(&v96[0].__locale_ + *(v94 - 24)) = 0;
  *(&v94 + *(v5 - 24) + 8) = *(&v94 + *(v5 - 24) + 8) & 0xFFFFFEFB | 4;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "Blending:ARE:", 13);
  v6 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "%/PRR:", 6);
  v7 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "% SB:", 5);
  v8 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "%/ARE&PRR:", 10);
  v9 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "%\n", 2);
  v10 = v94;
  *(&v96[0].__locale_ + *(v94 - 24)) = 2;
  *(&v94 + *(v10 - 24) + 8) = *(&v94 + *(v10 - 24) + 8) & 0xFFFFFEFB | 4;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "Broadband:ARE:", 14);
  v11 = std::ostream::operator<<();
  buf[0] = 40;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, buf, 1);
  v12 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ") PRR:", 6);
  v13 = std::ostream::operator<<();
  buf[0] = 40;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, buf, 1);
  v14 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ") ARE&PRR:", 10);
  v15 = std::ostream::operator<<();
  buf[0] = 40;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, buf, 1);
  v16 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ") SB:", 5);
  v17 = std::ostream::operator<<();
  buf[0] = 40;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, buf, 1);
  v18 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ") Final:", 8);
  v19 = std::ostream::operator<<();
  buf[0] = 40;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, buf, 1);
  v20 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ")\n", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "RC:Prob:", 8);
  v21 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " Conf:", 6);
  v22 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " Max:", 5);
  v23 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " AREMul:", 8);
  v24 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " Env:", 5);
  v25 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " Rate:", 6);
  std::ostream::operator<<();
  v92 = v93;
  v26 = *(a1 + 160);
  v103 = *(a1 + 144);
  v104 = v26;
  v27 = *(a1 + 192);
  v105 = *(a1 + 176);
  v106 = v27;
  v28 = *(a1 + 96);
  *buf = *(a1 + 80);
  *&buf[16] = v28;
  v29 = *(a1 + 128);
  v101 = *(a1 + 112);
  v102 = v29;
  v30 = *(a1 + 288);
  v112 = *(a1 + 272);
  v113 = v30;
  v31 = *(a1 + 320);
  v114 = *(a1 + 304);
  v115 = v31;
  v32 = *(a1 + 224);
  *v109 = *(a1 + 208);
  *&v109[16] = v32;
  v33 = *(a1 + 256);
  v110 = *(a1 + 240);
  v111 = v33;
  Phase::SpatialModeler::RoomSimulationLogging::logTRAP(Phase::SpatialModeler::RoomSimulationLogging::TRAPLogData const&)::$_0::operator()<char const*,Phase::Subbands<float>,Phase::Subbands<float>>(&v92, "ARE:");
  v34 = *(a1 + 416);
  v103 = *(a1 + 400);
  v104 = v34;
  v35 = *(a1 + 448);
  v105 = *(a1 + 432);
  v106 = v35;
  v36 = *(a1 + 352);
  *buf = *(a1 + 336);
  *&buf[16] = v36;
  v37 = *(a1 + 384);
  v101 = *(a1 + 368);
  v102 = v37;
  v38 = *(a1 + 544);
  v112 = *(a1 + 528);
  v113 = v38;
  v39 = *(a1 + 576);
  v114 = *(a1 + 560);
  v115 = v39;
  v40 = *(a1 + 480);
  *v109 = *(a1 + 464);
  *&v109[16] = v40;
  v41 = *(a1 + 512);
  v110 = *(a1 + 496);
  v111 = v41;
  Phase::SpatialModeler::RoomSimulationLogging::logTRAP(Phase::SpatialModeler::RoomSimulationLogging::TRAPLogData const&)::$_0::operator()<char const*,Phase::Subbands<float>,Phase::Subbands<float>>(&v92, "PRR:");
  v42 = *(a1 + 672);
  v103 = *(a1 + 656);
  v104 = v42;
  v43 = *(a1 + 704);
  v105 = *(a1 + 688);
  v106 = v43;
  v44 = *(a1 + 608);
  *buf = *(a1 + 592);
  *&buf[16] = v44;
  v45 = *(a1 + 640);
  v101 = *(a1 + 624);
  v102 = v45;
  v46 = *(a1 + 800);
  v112 = *(a1 + 784);
  v113 = v46;
  v47 = *(a1 + 832);
  v114 = *(a1 + 816);
  v115 = v47;
  v48 = *(a1 + 736);
  *v109 = *(a1 + 720);
  *&v109[16] = v48;
  v49 = *(a1 + 768);
  v110 = *(a1 + 752);
  v111 = v49;
  Phase::SpatialModeler::RoomSimulationLogging::logTRAP(Phase::SpatialModeler::RoomSimulationLogging::TRAPLogData const&)::$_0::operator()<char const*,Phase::Subbands<float>,Phase::Subbands<float>>(&v92, "ARE&PRR:");
  v50 = *(a1 + 928);
  v103 = *(a1 + 912);
  v104 = v50;
  v51 = *(a1 + 960);
  v105 = *(a1 + 944);
  v106 = v51;
  v52 = *(a1 + 864);
  *buf = *(a1 + 848);
  *&buf[16] = v52;
  v53 = *(a1 + 896);
  v101 = *(a1 + 880);
  v102 = v53;
  v54 = *(a1 + 1056);
  v112 = *(a1 + 1040);
  v113 = v54;
  v55 = *(a1 + 1088);
  v114 = *(a1 + 1072);
  v115 = v55;
  v56 = *(a1 + 992);
  *v109 = *(a1 + 976);
  *&v109[16] = v56;
  v57 = *(a1 + 1024);
  v110 = *(a1 + 1008);
  v111 = v57;
  Phase::SpatialModeler::RoomSimulationLogging::logTRAP(Phase::SpatialModeler::RoomSimulationLogging::TRAPLogData const&)::$_0::operator()<char const*,Phase::Subbands<float>,Phase::Subbands<float>>(&v92, "SB:");
  v58 = *(a1 + 1184);
  v103 = *(a1 + 1168);
  v104 = v58;
  v59 = *(a1 + 1216);
  v105 = *(a1 + 1200);
  v106 = v59;
  v60 = *(a1 + 1120);
  *buf = *(a1 + 1104);
  *&buf[16] = v60;
  v61 = *(a1 + 1152);
  v101 = *(a1 + 1136);
  v102 = v61;
  v109[0] = 10;
  v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, v109, 1);
  v63 = *v62;
  *(v62 + *(*v62 - 24) + 8) = *(v62 + *(*v62 - 24) + 8) & 0xFFFFFF4F | 0x20;
  *(v62 + *(v63 - 24) + 24) = 8;
  v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Pre-RL:", 7);
  v65 = 0;
  *(v64 + *(*v64 - 24) + 8) = *(v64 + *(*v64 - 24) + 8) & 0xFFFFFF4F | 0x80;
  do
  {
    if (v65)
    {
      v66 = 11;
    }

    else
    {
      v66 = 4;
    }

    *(&v96[1].__locale_ + *(v94 - 24)) = v66;
    std::ostream::operator<<();
    ++v65;
  }

  while (v65 != 10);
  v67 = *(a1 + 1312);
  v103 = *(a1 + 1296);
  v104 = v67;
  v68 = *(a1 + 1344);
  v105 = *(a1 + 1328);
  v106 = v68;
  v69 = *(a1 + 1248);
  *buf = *(a1 + 1232);
  *&buf[16] = v69;
  v70 = *(a1 + 1280);
  v101 = *(a1 + 1264);
  v102 = v70;
  v109[0] = 10;
  v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, v109, 1);
  v72 = *v71;
  *(v71 + *(*v71 - 24) + 8) = *(v71 + *(*v71 - 24) + 8) & 0xFFFFFF4F | 0x20;
  *(v71 + *(v72 - 24) + 24) = 8;
  v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, "Final:", 6);
  v74 = 0;
  *(v73 + *(*v73 - 24) + 8) = *(v73 + *(*v73 - 24) + 8) & 0xFFFFFF4F | 0x80;
  do
  {
    if (v74)
    {
      v75 = 11;
    }

    else
    {
      v75 = 4;
    }

    *(&v96[1].__locale_ + *(v94 - 24)) = v75;
    v76 = std::ostream::operator<<();
    ++v74;
  }

  while (v74 != 10);
  v77 = **(Phase::Logger::GetInstance(v76) + 1264);
  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v93, v109);
    v78 = v109[23] >= 0 ? v109 : *v109;
    *buf = 136315650;
    *&buf[4] = "RoomSimulationLoggingFunctions.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 684;
    *&buf[18] = 2080;
    *&buf[20] = v78;
    _os_log_impl(&dword_23A302000, v77, OS_LOG_TYPE_DEFAULT, "%25s:%-5d \n%s", buf, 0x1Cu);
    if ((v109[23] & 0x80000000) != 0)
    {
      operator delete(*v109);
    }
  }

  if (*(a1 + 1360))
  {
    v108[6] = 0;
    v79 = MEMORY[0x277D82860] + 64;
    v108[0] = MEMORY[0x277D82860] + 64;
    v80 = MEMORY[0x277D82810];
    v81 = *(MEMORY[0x277D82810] + 16);
    *buf = *(MEMORY[0x277D82810] + 8);
    *&buf[*(*buf - 24)] = v81;
    v82 = &buf[*(*buf - 24)];
    std::ios_base::init(v82, &buf[8]);
    v83 = MEMORY[0x277D82860] + 24;
    v82[1].__vftable = 0;
    v82[1].__fmtflags_ = -1;
    *buf = v83;
    v108[0] = v79;
    MEMORY[0x23EE86030](&buf[8]);
    v84 = std::ofstream::open();
    if (v107)
    {
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v93, v109);
      if (v109[23] >= 0)
      {
        v85 = v109;
      }

      else
      {
        v85 = *v109;
      }

      if (v109[23] >= 0)
      {
        v86 = v109[23];
      }

      else
      {
        v86 = *&v109[8];
      }

      v87 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, v85, v86);
      v99 = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87, &v99, 1);
      if ((v109[23] & 0x80000000) != 0)
      {
        operator delete(*v109);
      }

      if (!std::filebuf::close())
      {
        std::ios_base::clear(&buf[*(*buf - 24)], *&buf[*(*buf - 24) + 32] | 4);
      }
    }

    else
    {
      v88 = **(Phase::Logger::GetInstance(v84) + 1264);
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        v89 = *(a1 + 1360);
        *v109 = 136315650;
        *&v109[4] = "RoomSimulationLoggingFunctions.cpp";
        *&v109[12] = 1024;
        *&v109[14] = 691;
        *&v109[18] = 2080;
        *&v109[20] = v89;
        _os_log_impl(&dword_23A302000, v88, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot open %s\n;", v109, 0x1Cu);
      }
    }

    *buf = *v80;
    *&buf[*(*buf - 24)] = v80[3];
    MEMORY[0x23EE86040](&buf[8]);
    std::ostream::~ostream();
    MEMORY[0x23EE863B0](v108);
  }

  v93[0] = *MEMORY[0x277D82818];
  v90 = *(MEMORY[0x277D82818] + 72);
  *(v93 + *(v93[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v94 = v90;
  v95 = MEMORY[0x277D82878] + 16;
  if (v97 < 0)
  {
    operator delete(v96[7].__locale_);
  }

  v95 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v96);
  std::iostream::~basic_iostream();
  return MEMORY[0x23EE863B0](&v98);
}

void sub_23A4EB798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  std::ofstream::~ofstream(&a47, MEMORY[0x277D82810]);
  MEMORY[0x23EE863B0](v47);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a11);
  _Unwind_Resume(a1);
}

void *Phase::SpatialModeler::RoomSimulationLogging::logTRAP(Phase::SpatialModeler::RoomSimulationLogging::TRAPLogData const&)::$_0::operator()<char const*,Phase::Subbands<float>,Phase::Subbands<float>>(void *a1, const char *a2)
{
  v4 = *a1;
  v17 = 10;
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((v4 + 16), &v17, 1);
  v6 = *v5;
  *(v5 + *(*v5 - 24) + 8) = *(v5 + *(*v5 - 24) + 8) & 0xFFFFFF4F | 0x20;
  *(v5 + *(v6 - 24) + 24) = 8;
  v7 = strlen(a2);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, a2, v7);
  v9 = 0;
  v10 = *a1;
  v11 = (*a1 + 16);
  *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFF4F | 0x80;
  v12 = v10 + 40;
  do
  {
    if (v9)
    {
      v13 = 5;
    }

    else
    {
      v13 = 4;
    }

    *(v12 + *(*v11 - 24)) = v13;
    v14 = std::ostream::operator<<();
    v18 = 40;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, &v18, 1);
    v15 = std::ostream::operator<<();
    v19 = 41;
    result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, &v19, 1);
    ++v9;
  }

  while (v9 != 10);
  return result;
}

uint64_t Phase::SpatialModeler::RoomSimulationLogging::logSceneObserverUpdateCauses(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  *v3 = *a1;
  *&v3[15] = *(a1 + 15);
  Phase::SpatialModeler::RoomSimulationLogging::logSceneObserverUpdateCauses(Phase::SpatialModeler::SimulationUpdate const&)::$_0::operator()<char const*,Phase::SpatialModeler::UpdateCauses>("Early Reflections Ray Trace", v3);
  *v3 = *(a1 + 19);
  *&v3[15] = *(a1 + 34);
  Phase::SpatialModeler::RoomSimulationLogging::logSceneObserverUpdateCauses(Phase::SpatialModeler::SimulationUpdate const&)::$_0::operator()<char const*,Phase::SpatialModeler::UpdateCauses>("Late Reverb Ray Trace", v3);
  *v3 = *(a1 + 38);
  *&v3[15] = *(a1 + 53);
  Phase::SpatialModeler::RoomSimulationLogging::logSceneObserverUpdateCauses(Phase::SpatialModeler::SimulationUpdate const&)::$_0::operator()<char const*,Phase::SpatialModeler::UpdateCauses>("Early Reflections Generate Metadata", v3);
  *v3 = *(a1 + 57);
  *&v3[15] = *(a1 + 72);
  return Phase::SpatialModeler::RoomSimulationLogging::logSceneObserverUpdateCauses(Phase::SpatialModeler::SimulationUpdate const&)::$_0::operator()<char const*,Phase::SpatialModeler::UpdateCauses>("Late Reverb Generate Metadata", v3);
}

uint64_t Phase::SpatialModeler::RoomSimulationLogging::logSceneObserverUpdateCauses(Phase::SpatialModeler::SimulationUpdate const&)::$_0::operator()<char const*,Phase::SpatialModeler::UpdateCauses>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v31 = *MEMORY[0x277D85DE8];
  do
  {
    v5 = *(a2 + v4);
    if (v5)
    {
      break;
    }
  }

  while (v4++ != 18);
  if (v5)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v19);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "\n=== ", 5);
    v8 = strlen(v3);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v3, v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Causes Log ===", 15);
    for (i = 0; i != 19; ++i)
    {
      if (*(a2 + i) == 1)
      {
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "\n   ", 4);
        v13 = strlen(Phase::SpatialModeler::kCauseNames[i]);
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, Phase::SpatialModeler::kCauseNames[i], v13);
      }
    }

    v14 = **(Phase::Logger::GetInstance(v10) + 1264);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v19, __p);
      v15 = v18 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v26 = "RoomSimulationLoggingFunctions.cpp";
      v27 = 1024;
      v28 = 716;
      v29 = 2080;
      v30 = v15;
      _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s", buf, 0x1Cu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v19[0] = *MEMORY[0x277D82818];
    v16 = *(MEMORY[0x277D82818] + 72);
    *(v19 + *(v19[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v20 = v16;
    v21 = MEMORY[0x277D82878] + 16;
    if (v23 < 0)
    {
      operator delete(v22[7].__locale_);
    }

    v21 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v22);
    std::iostream::~basic_iostream();
    return MEMORY[0x23EE863B0](&v24);
  }

  return result;
}

void sub_23A4EBDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

Phase::SpatialModeler::RoomSimulation *Phase::SpatialModeler::RoomSimulation::RoomSimulation(Phase::SpatialModeler::RoomSimulation *this)
{
  v43 = *MEMORY[0x277D85DE8];
  *(this + 1) = &unk_284D2FB58;
  *(this + 2) = 0;
  *(this + 3) = 0xFFFFFFFFLL;
  *this = &unk_284D33AE0;
  *(this + 5) = 0x40E7700000000000;
  Instance = Phase::Logger::GetInstance(this);
  v3 = Instance[323];
  *(this + 5) = 0u;
  *(this + 6) = v3;
  *(this + 60) = 0;
  *(this + 9) = &unk_284D37218;
  *(this + 6) = 0u;
  *(this + 28) = 1065353216;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 1065353216;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 48) = 0;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 58) = 0;
  *(this + 118) = -1082130432;
  *(this + 476) = 0;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 652) = 0u;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  *(this + 176) = 0;
  *(this + 708) = 7;
  *(this + 179) = 0;
  *(this + 90) = 0x3C00000000;
  *(this + 190) = 0;
  *(this + 728) = 0u;
  *(this + 744) = 0u;
  *(this + 764) = 7;
  *(this + 193) = 0;
  *(this + 97) = 0x3C00000000;
  *(this + 100) = 0;
  *(this + 49) = 0u;
  *(this + 101) = 0x100000000;
  *(this + 51) = 0u;
  *(this + 104) = 0x3C00000000;
  *(this + 840) = 0u;
  *(this + 214) = 0;
  *(this + 852) = 1;
  *(this + 860) = 0u;
  *(this + 219) = 0;
  *(this + 872) = 1;
  *(this + 114) = 0;
  *(this + 55) = 0u;
  *(this + 56) = 0u;
  *(this + 916) = 1;
  *(this + 984) = 0u;
  *(this + 1000) = 0u;
  *(this + 952) = 0u;
  *(this + 968) = 0u;
  *(this + 920) = 0u;
  *(this + 936) = 0u;
  *(this + 1016) = xmmword_23A597CB0;
  *(this + 258) = 60;
  *(this + 1036) = 1048576000;
  *(this + 66) = xmmword_23A5970B0;
  *(this + 134) = 0x800000000100;
  *(this + 1080) = 0;
  *(this + 271) = 1000593162;
  *(this + 68) = xmmword_23A5554F0;
  *(this + 138) = 1000;
  *(this + 1112) = xmmword_23A555500;
  *(this + 141) = 0x4040000040800000;
  *(this + 284) = 1167867904;
  *(this + 285) = 0x1000000;
  *(this + 1144) = xmmword_23A555510;
  *(this + 290) = 4;
  *(this + 1164) = 1;
  *(this + 146) = 0xC2700000C1D00000;
  *(this + 294) = 16777473;
  *(this + 1180) = 0x4E20000003E8;
  *(this + 1188) = 1;
  *(this + 149) = 0x430300003DDB22D1;
  *(this + 300) = 256;
  *(this + 1208) = xmmword_23A597CC0;
  *(this + 1224) = 0;
  *(this + 307) = 0;
  *(this + 154) = 0x4248000042C80000;
  *(this + 310) = 1112014848;
  *(this + 1244) = 0;
  *(this + 78) = xmmword_23A597CD0;
  *(this + 1264) = 0;
  *(this + 317) = 0;
  *(this + 159) = 0;
  v4 = Phase::Controller::sClamp<float>(Instance, 101320.0, 5000.0, 3.4028e38);
  v5 = *(this + 315);
  if (v4 != v5)
  {
    *(this + 315) = v4;
    *(this + 1264) = 1;
    v5 = v4;
  }

  v6 = *(this + 305);
  v7 = *(this + 310);
  *&v38 = (v5 / 1000.0) / 101.32;
  v8 = 1.0 - (273.16 / v6);
  v9 = (log10f(v6 / 273.16) * -5.0281) + (v8 * 10.796);
  v10 = v9 + ((1.0 - __exp10f(((v6 / 273.16) + -1.0) * -8.2969)) * 0.00015047);
  v11 = __exp10f(v8 * -4.7695);
  v37 = (v7 * __exp10f((v10 + ((v11 + -1.0) * 0.00042873)) + -2.2196)) / *&v38;
  *&v36 = *&v38 * powf(v6 / 293.16, -0.5);
  v12 = powf(v6 / 293.16, -0.33333);
  *(this + 1268) = vmul_f32(__PAIR64__(v36, v38), vmla_f32(0x4110000041C00000, __PAIR64__(COERCE_UNSIGNED_INT(expf((v12 + -1.0) * -4.17)), (v37 + 0.02) / (v37 + 0.391)), vmul_n_f32(0x438C0000471DD000, v37)));
  v13 = v6 + -273.15;
  v14 = v13 * v13;
  v15 = (-6343.2 / v6) + 33.937;
  v16 = expf((v6 * -0.019121) + (((v6 * v6) * 1.2379) * 0.00001));
  v17 = (((expf(v15) * v16) * (v7 * (((v5 * 0.0000000314) + 1.0006) + (((v13 * v13) * 5.6) * 0.0000001)))) / v5) / 100.0;
  *(this + 319) = ((((((v13 * -0.22852) + -85.209) + ((v14 * 5.91) / 100000.0)) * 0.0004) + ((((v13 * 0.0000000373) + -0.000000182) + ((v14 * -2.93) / 1.0e10)) * v5)) + ((((v13 * 0.60306) + 331.5) + ((v14 * -5.28) / 10000.0)) + ((((v13 * 0.14959) + 51.472) + ((v14 * -7.82) / 10000.0)) * v17))) - ((((((v5 * v5) * 2.15) / 1.0e13) + ((v17 * v17) * 2.8351)) + -0.0000046688) + ((v5 * (v17 * -0.000486)) * 0.0004));
  *(this + 83) = 0u;
  *(this + 80) = 0u;
  *(this + 324) = 0;
  *(this + 1304) = 0u;
  *(this + 168) = 850045863;
  *(this + 1352) = 0u;
  *(this + 1368) = 0u;
  *(this + 1384) = 0u;
  *(this + 1400) = 0u;
  Phase::SpatialModeler::RayTracerState::RayTracerState((this + 1424));
  *(this + 1659) = 0u;
  *(this + 1658) = 0u;
  *(this + 1657) = 0u;
  *(this + 1656) = 0u;
  *(this + 1655) = 0u;
  *(this + 26556) = 0u;
  *(this + 3322) = (*&Phase::SpatialModeler::TailCorrection::sMinTimeBetweenLogs_sec * 24000000.0);
  *(this + 3323) = 0;
  *(this + 6648) = 0;
  *(this + 26600) = 0;
  *(this + 3326) = 0;
  *(this + 3328) = 0;
  *(this + 3327) = 0;
  *(this + 3330) = 850045863;
  *(this + 26648) = 0u;
  *(this + 26664) = 0u;
  *(this + 26680) = 0u;
  *(this + 26696) = 0u;
  v18 = Phase::SpatialModeler::RayTracerState::RayTracerState((this + 26720));
  *(this + 3240) = 0u;
  *(this + 3239) = 0u;
  *(this + 3238) = 0u;
  *(this + 3237) = 0u;
  *(this + 3236) = 0u;
  *(this + 51852) = 0u;
  *(this + 6484) = (*&Phase::SpatialModeler::TailCorrection::sMinTimeBetweenLogs_sec * 24000000.0);
  *(this + 6485) = 0;
  *(this + 12972) = 0;
  *(this + 51896) = 0;
  *(this + 6489) = 0;
  *(this + 6490) = 0;
  *(this + 6488) = 0;
  *(this + 3246) = 0u;
  *(this + 3247) = 0u;
  *(this + 3248) = xmmword_23A597CE0;
  *(this + 12996) = 0;
  if (*(this + 6))
  {
    *buf = constinit_4;
    *&buf[16] = 31;
    v40 = 0;
    v41 = 0;
    __p = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&__p, buf, &buf[24], 3uLL);
    v18 = __p;
    v19 = __p;
    if (__p != v40)
    {
      v19 = __p;
      while (*v19 != *(this + 6))
      {
        if (++v19 == v40)
        {
          goto LABEL_10;
        }
      }
    }

    if (v19 == v40)
    {
LABEL_10:
      v20 = **(Phase::Logger::GetInstance(__p) + 1264);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = *(this + 6);
        *buf = 136315650;
        *&buf[4] = "RoomSimulationModelerBase.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 30;
        *&buf[18] = 2048;
        *&buf[20] = v21;
        _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Unsupported room simulation internal subband count: %zu\n", buf, 0x1Cu);
      }

      *(this + 6) = 10;
      v18 = __p;
    }

    if (v18)
    {
      v40 = v18;
      operator delete(v18);
    }
  }

  else
  {
    *(this + 6) = 10;
  }

  v22 = Phase::Logger::GetInstance(v18);
  *(this + 1044) = *(v22 + 1590);
  v23 = **(Phase::Logger::GetInstance(v22) + 1264);
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (v24)
  {
    v25 = *(this + 1044);
    *buf = 136315650;
    *&buf[4] = "RoomChangeDetector.hpp";
    *&buf[12] = 1024;
    *&buf[14] = 240;
    *&buf[18] = 1024;
    *&buf[20] = v25;
    _os_log_impl(&dword_23A302000, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d RoomChangeDetector::ReadDefaultsWriteFlags - mLogRoomChangeDetectorData %d", buf, 0x18u);
  }

  v26 = Phase::Logger::GetInstance(v24);
  *(this + 1045) = *(v26 + 1592);
  v27 = **(Phase::Logger::GetInstance(v26) + 1264);
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
  if (v28)
  {
    v29 = *(this + 1045);
    *buf = 136315650;
    *&buf[4] = "RoomChangeDetector.hpp";
    *&buf[12] = 1024;
    *&buf[14] = 246;
    *&buf[18] = 1024;
    *&buf[20] = v29;
    _os_log_impl(&dword_23A302000, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d RoomChangeDetector::ReadDefaultsWriteFlags - mEnableRoomChangeMfpFixedSE %d", buf, 0x18u);
  }

  v30 = Phase::Logger::GetInstance(v28);
  *(this + 262) = *(v30 + 399);
  v31 = **(Phase::Logger::GetInstance(v30) + 1264);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = *(this + 262);
    *buf = 136315650;
    *&buf[4] = "RoomChangeDetector.hpp";
    *&buf[12] = 1024;
    *&buf[14] = 252;
    *&buf[18] = 2048;
    *&buf[20] = v32;
    _os_log_impl(&dword_23A302000, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d RoomChangeDetector::ReadDefaultsWriteFlags - mRoomChangeMfpSE %f (NaN == non set, will be ignored)", buf, 0x1Cu);
  }

  v33 = *(this + 1045);
  v34 = *(this + 263);
  *(this + 210) = *(this + 262) / 2.8284;
  *(this + 844) = 0x4100000040395F97;
  *(this + 852) = v33;
  *(this + 214) = v34;
  *(this + 55) = xmmword_23A597CF0;
  *(this + 56) = xmmword_23A597D00;
  *(this + 228) = 0x40000000;
  *(this + 916) = 1;
  *(this + 115) = 0;
  *(this + 232) = 0;
  return this;
}

void sub_23A4EC918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  v27 = v25[11];
  v25[11] = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v28 = v25[10];
  v25[10] = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  v29 = v25[9];
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  Phase::SpatialModeler::RoomSimulation::PersistingSimulationData::~PersistingSimulationData((v19 + v24));
  Phase::SpatialModeler::RoomSimulation::PersistingSimulationData::~PersistingSimulationData((v19 + 168));
  Phase::SpatialModeler::HistogramPtrStack::Clear((v19 + 166));
  v30 = v19[164];
  v19[164] = 0;
  if (v30)
  {
    std::default_delete<caulk::concurrent::multi_buffer<Phase::SpatialModeler::RayTracerState,3>>::operator()[abi:ne200100]((v19 + 164), v30);
  }

  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v23);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v21);
  std::error_category::~error_category(v22);
  *v19 = &unk_284D2F570;
  std::error_category::~error_category(v20);
  _Unwind_Resume(a1);
}

void Phase::SpatialModeler::RoomSimulation::PersistingSimulationData::~PersistingSimulationData(Phase::SpatialModeler::RoomSimulation::PersistingSimulationData *this)
{
  v2 = *(this + 3158);
  if (v2)
  {
    *(this + 3159) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3149);
  if (v3)
  {
    *(this + 3150) = v3;
    operator delete(v3);
  }

  v4 = *(this + 3146);
  if (v4)
  {
    *(this + 3147) = v4;
    operator delete(v4);
  }

  v5 = *(this + 3143);
  if (v5)
  {
    *(this + 3144) = v5;
    operator delete(v5);
  }

  Phase::SpatialModeler::RayTracerState::~RayTracerState(this + 10);

  std::mutex::~mutex(this);
}

void Phase::SpatialModeler::RoomSimulation::InitERtoLRModelerCache(Phase::SpatialModeler::RoomSimulation *this)
{
  if (!atomic_fetch_add(&Phase::SpatialModeler::RoomSimulation::sERtoLRModelerCacheReferenceCounter, 1u))
  {
    operator new();
  }
}

uint64_t Phase::SpatialModeler::RoomSimulation::DeinitERtoLRModelerCache(Phase::SpatialModeler::RoomSimulation *this)
{
  if (atomic_fetch_add(&Phase::SpatialModeler::RoomSimulation::sERtoLRModelerCacheReferenceCounter, 0xFFFFFFFF) == 1)
  {
    v1 = Phase::SpatialModeler::RoomSimulation::psERtoLRModelerCache;
    if (Phase::SpatialModeler::RoomSimulation::psERtoLRModelerCache)
    {
      v2 = 75216;
      v3 = 50160;
      do
      {
        if (*(v1 + v2) == 1)
        {
          Phase::SpatialModeler::RayTracerState::~RayTracerState((v1 + v3));
        }

        v3 -= 25072;
        v2 -= 25072;
      }

      while (v2);
      result = MEMORY[0x23EE864A0](v1, 0x10F2C409C7F06A9);
    }

    Phase::SpatialModeler::RoomSimulation::psERtoLRModelerCache = 0;
  }

  return result;
}

void Phase::SpatialModeler::RoomSimulation::StoreRayTracerStateToERtoLRModelerCache(Phase::SpatialModeler::RoomSimulation *this, Phase::SpatialModeler::RayTracerState *a2)
{
  v2 = MEMORY[0x28223BE20](this);
  v5[3133] = *MEMORY[0x277D85DE8];
  if (Phase::SpatialModeler::RoomSimulation::psERtoLRModelerCache)
  {
    v3 = v2;
    *(v2 + 25041) = 1;
    *(v2 + 25048) = std::chrono::steady_clock::now();
    v4 = Phase::SpatialModeler::RoomSimulation::psERtoLRModelerCache;
    Phase::SpatialModeler::RayTracerState::RayTracerState(v5, v3);
    caulk::concurrent::multi_buffer<Phase::SpatialModeler::RayTracerState,3>::write(v4, v5);
    Phase::SpatialModeler::RayTracerState::~RayTracerState(v5);
    *(v3 + 25041) = 0;
  }
}

void Phase::SpatialModeler::RoomSimulation::PersistingSimulationData::InitPersistingSimulationData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, Phase::SpatialModeler::RayTracerState *a6)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 25120))
  {
    if (*(a1 + 22656) != *(a5 + 8) || *(a1 + 412) != a6)
    {
      v6 = **(Phase::Logger::GetInstance(a1) + 1264);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315394;
        v9 = "RoomSimulationModelerBase.cpp";
        v10 = 1024;
        v11 = 135;
        _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Spatial modeler queried with a changed listener or subband count. This is not supported yet.", &v8, 0x12u);
      }
    }
  }

  else
  {
    v7 = a1 + 80;

    Phase::SpatialModeler::RayTracerState::InitRayTracerState(v7, a2, a3, a4, a5, a6);
  }
}

float Phase::Controller::sClamp<float>(Phase::Logger *a1, float a2, float a3, float a4)
{
  v4 = a2;
  v20 = *MEMORY[0x277D85DE8];
  if (a2 < a3 || a2 > a4)
  {
    v8 = **(Phase::Logger::GetInstance(a1) + 720);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136316162;
      v11 = "CvmParameter.hpp";
      v12 = 1024;
      v13 = 33;
      v14 = 2048;
      v15 = v4;
      v16 = 2048;
      v17 = a3;
      v18 = 2048;
      v19 = a4;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Value is out of bounds. Clamping %f to range [%f, %f]", &v10, 0x30u);
    }

    return fminf(fmaxf(v4, a3), a4);
  }

  return v4;
}

uint64_t Phase::SpatialModeler::TimeLimitTermination::ShouldFinishSimulation(Phase::SpatialModeler::TimeLimitTermination *this, const Phase::SpatialModeler::RayTracerState *a2)
{
  v3.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v4 = *(*a2 + 32);
  if (v4 == 3)
  {
    v5 = *(a2 + 12);
    v7 = *(a2 + 31);
  }

  else
  {
    v5 = 0.0;
    v6 = 0.0;
    if (v4 != 2)
    {
      goto LABEL_6;
    }

    v5 = *(a2 + 13);
    v7 = *(a2 + 30);
  }

  v6 = 1.0 / v7;
LABEL_6:
  v8 = (v3.__d_.__rep_ - *(a2 + 2414)) / 1000000000.0;
  v10 = *(a2 + 4832) >= *(a2 + 43) && v8 > v5;
  return v10 | (v8 > (v6 * 0.8));
}

BOOL Phase::SpatialModeler::DeterministicTermination::ShouldFinishSimulation(Phase::SpatialModeler::DeterministicTermination *this, const Phase::SpatialModeler::RayTracerState *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = *(this + 1);
  v3 = *(this + 2);
  if (v3 < v4)
  {
    *(this + 2) = v3 + 1;
  }

  else
  {
    v6.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v7 = *(a2 + 2414);
    *(this + 2) = 0;
    v8 = **(Phase::Logger::GetInstance(v6.__d_.__rep_) + 1264);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136316162;
      v9 = *(this + 2);
      v12 = "RoomSimulationStrategies.cpp";
      v13 = 1024;
      v14 = 49;
      v15 = 2048;
      v16 = v9;
      v17 = 1024;
      v18 = 1;
      v19 = 2048;
      v20 = ((v6.__d_.__rep_ - v7) / 1000000000.0);
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d DeterministicTermination mQueryCount %zu shouldFinish %d elapsed time %f s", &v11, 0x2Cu);
    }
  }

  return v3 >= v4;
}

void Phase::SpatialModeler::DefaultRayDistribution::DefaultRayDistribution(Phase::SpatialModeler::DefaultRayDistribution *this)
{
  *this = &unk_284D37260;
  *(this + 2) = 0;
  operator new();
}

void sub_23A4ED194(_Unwind_Exception *a1)
{
  MEMORY[0x23EE864A0](v2, 0x1020C40B3A03649);
  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    std::default_delete<Phase::SpatialModeler::LaunchConfig>::operator()[abi:ne200100](v1, v4);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::SpatialModeler::DefaultRayDistribution::NextRay@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 16);
  v3 = *(this + 8);
  if (*(v2 + 56) <= v3)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v4 = *(v2 + 16) + 12 * v3;
    v5 = *v4;
    v6 = *(v4 + 8);
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(this + 8) = (v3 + 1) % *(this + 12);
  return this;
}

void Phase::SpatialModeler::DefaultRayDistribution::~DefaultRayDistribution(Phase::SpatialModeler::DefaultRayDistribution *this)
{
  *this = &unk_284D37260;
  v3 = *(this + 2);
  v1 = (this + 16);
  v2 = v3;
  *v1 = 0;
  if (v3)
  {
    std::default_delete<Phase::SpatialModeler::LaunchConfig>::operator()[abi:ne200100](v1, v2);
  }
}

{
  *this = &unk_284D37260;
  v3 = *(this + 2);
  v1 = (this + 16);
  v2 = v3;
  *v1 = 0;
  if (v3)
  {
    std::default_delete<Phase::SpatialModeler::LaunchConfig>::operator()[abi:ne200100](v1, v2);
  }

  JUMPOUT(0x23EE864A0);
}

void std::default_delete<Phase::SpatialModeler::LaunchConfig>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100]((a2 + 16));
    std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](a2 + 24);

    JUMPOUT(0x23EE864A0);
  }
}

void Phase::SpatialModeler::TRAP::RT60Processor::Process(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v204 = *MEMORY[0x277D85DE8];
  v8 = a1[5];
  v9 = a4 + 20480;
  v146 = a1[4];
  v147 = v8;
  v10 = a1[7];
  v148 = a1[6];
  v149 = v10;
  v11 = a1[1];
  v142 = *a1;
  v143 = v11;
  v12 = a1[3];
  v144 = a1[2];
  v145 = v12;
  v13 = *(a2 + 80);
  v138 = *(a2 + 64);
  v139 = v13;
  v14 = *(a2 + 112);
  v140 = *(a2 + 96);
  v141 = v14;
  v15 = *(a2 + 16);
  v134 = *a2;
  v135 = v15;
  v16 = *(a2 + 48);
  v136 = *(a2 + 32);
  v137 = v16;
  v17 = *(a4 + 20112);
  v130 = *(a4 + 20096);
  v131 = v17;
  v18 = *(a4 + 20144);
  v132 = *(a4 + 20128);
  v133 = v18;
  v19 = *(a4 + 20048);
  v126 = *(a4 + 20032);
  v127 = v19;
  v20 = *(a4 + 20080);
  v128 = *(a4 + 20064);
  v129 = v20;
  v21 = *(a4 + 20240);
  v122 = *(a4 + 20224);
  v123 = v21;
  v22 = *(a4 + 20272);
  v124 = *(a4 + 20256);
  v125 = v22;
  v23 = *(a4 + 20176);
  v118 = *(a4 + 20160);
  v119 = v23;
  v24 = *(a4 + 20208);
  v120 = *(a4 + 20192);
  v121 = v24;
  v25 = *(a4 + 20368);
  v116[4] = *(a4 + 20352);
  v116[5] = v25;
  v26 = *(a4 + 20400);
  v116[6] = *(a4 + 20384);
  v117 = v26;
  v27 = *(a4 + 20304);
  v116[0] = *(a4 + 20288);
  v116[1] = v27;
  v28 = *(a4 + 20336);
  v116[2] = *(a4 + 20320);
  v116[3] = v28;
  v29 = *(a4 + 20496);
  v114[4] = *(a4 + 20480);
  v114[5] = v29;
  v30 = *(a4 + 20528);
  v114[6] = *(a4 + 20512);
  v115 = v30;
  v31 = *(a4 + 20432);
  v114[0] = *(a4 + 20416);
  v114[1] = v31;
  v32 = *(a4 + 20464);
  v114[2] = *(a4 + 20448);
  v114[3] = v32;
  v33 = *(a4 + 21036);
  IsExpectedInputSubbandCount = Phase::SpatialModeler::TRAP::IsExpectedInputSubbandCount(&v142, "inOutAcousticReverbTime");
  if (IsExpectedInputSubbandCount)
  {
    IsExpectedInputSubbandCount = Phase::SpatialModeler::TRAP::IsExpectedInputSubbandCount(&v134, "inOutAcousticConfidence");
    if (IsExpectedInputSubbandCount)
    {
      IsExpectedInputSubbandCount = Phase::SpatialModeler::TRAP::IsExpectedInputSubbandCount(&v126, "inOutVisualReverbTime");
      if (IsExpectedInputSubbandCount)
      {
        IsExpectedInputSubbandCount = Phase::SpatialModeler::TRAP::IsExpectedInputSubbandCount(&v118, "inOutVisualConfidence");
        if (IsExpectedInputSubbandCount)
        {
          IsExpectedInputSubbandCount = Phase::SpatialModeler::TRAP::IsExpectedInputSubbandCount(v116, "inOutSeatbeltReverbTime");
          if (IsExpectedInputSubbandCount)
          {
            IsExpectedInputSubbandCount = Phase::SpatialModeler::TRAP::IsExpectedInputSubbandCount(v114, "inOutSeatbeltConfidence");
            if (IsExpectedInputSubbandCount)
            {
              v36 = &v134;
              v37 = &v142;
              v38 = 10;
              do
              {
                Phase::SpatialModeler::TRAP::CleanInputReverbTimeAndConfidence(v37, v36->f32, v35);
                v36 = (v36 + 4);
                v37 = (v37 + 4);
                --v38;
              }

              while (v38);
              v39 = &v118;
              v40 = &v126;
              v41 = 10;
              do
              {
                Phase::SpatialModeler::TRAP::CleanInputReverbTimeAndConfidence(v40, v39++, v35);
                v40 = (v40 + 4);
                --v41;
              }

              while (v41);
              v42 = v114;
              v43 = v116;
              v44 = 10;
              do
              {
                Phase::SpatialModeler::TRAP::CleanInputReverbTimeAndConfidence(v43, v42++, v35);
                v43 = (v43 + 4);
                --v44;
              }

              while (v44);
              v33 = fminf(fmaxf(v33, 0.0), 1.0);
            }
          }
        }
      }
    }
  }

  v47 = Phase::SpatialModeler::TRAP::CalculateRoomChangeConfidence(IsExpectedInputSubbandCount, v33);
  if (*(a4 + 21432) == *(a3 + 736))
  {
    v46.i32[0] = *(v9 + 960);
  }

  else
  {
    v48 = **(Phase::Logger::GetInstance(v45) + 1264);
    v45 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
    if (v45)
    {
      *buf = 136315394;
      *&buf[4] = "RT60Processor.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 46;
      _os_log_impl(&dword_23A302000, v48, OS_LOG_TYPE_DEFAULT, "%25s:%-5d TRAP detected new acoustic parameters", buf, 0x12u);
    }

    *(a4 + 21432) = *(a3 + 736);
    *(v9 + 960) = 0;
    v46.i64[0] = 0;
  }

  if (v46.f32[0] < v47)
  {
    *(v9 + 960) = v47;
  }

  v49 = *(a3 + 24);
  if (v49 == 2)
  {
    goto LABEL_25;
  }

  if (v49 != -1)
  {
    v67 = 0;
    goto LABEL_51;
  }

  v50 = Phase::SpatialModeler::TRAP::TP(v45);
  v45 = Phase::operator==<float>(a1, (v50 + 144));
  if (v45 && (v51 = Phase::SpatialModeler::TRAP::TP(v45), v45 = Phase::operator==<float>(a2, (v51 + 272)), v45))
  {
LABEL_25:
    v52 = HIDWORD(v115);
    if (HIDWORD(v115) <= 1uLL)
    {
      v53 = 0.0;
    }

    else
    {
      v53 = *v114;
    }

    if (HIDWORD(v115))
    {
      v54 = v114;
      do
      {
        v55 = *v54++;
        v56 = v55;
        if (v53 < v55)
        {
          v53 = v56;
        }

        --v52;
      }

      while (v52);
    }

    v57 = Phase::SpatialModeler::TRAP::TP(v45);
    if (v53 >= v57[126])
    {
      v68 = Phase::SpatialModeler::TRAP::TP(v57);
      v69 = HIDWORD(v117);
      memset(buf, 0, sizeof(buf));
      v151 = 0u;
      v152 = 0u;
      v153 = 0u;
      v154 = 0u;
      memset(v155, 0, 28);
      *&v155[28] = HIDWORD(v117);
      if (HIDWORD(v117))
      {
        v70 = v68[113];
        v71 = buf;
        v72 = v116;
        do
        {
          v73 = *v72++;
          *v71 = v70 * v73;
          v71 += 4;
          --v69;
        }

        while (v69);
      }

      v146 = v153;
      v147 = v154;
      v148 = *v155;
      v149 = *&v155[16];
      v142 = *buf;
      v143 = *&buf[16];
      v144 = v151;
      v145 = v152;
      v45 = Phase::SpatialModeler::TRAP::TP(v68);
      if (HIDWORD(v141))
      {
        v46.i32[0] = *(v45 + 456);
        v74 = (HIDWORD(v141) + 3) & 0x1FFFFFFFCLL;
        v75 = vdupq_n_s64(HIDWORD(v141) - 1);
        v76 = xmmword_23A554B60;
        v77 = xmmword_23A554B70;
        v78 = &v134.i64[1];
        v79 = vdupq_n_s64(4uLL);
        do
        {
          v80 = vmovn_s64(vcgeq_u64(v75, v77));
          if (vuzp1_s16(v80, *v46.f32).u8[0])
          {
            *(v78 - 2) = v46.i32[0];
          }

          if (vuzp1_s16(v80, *&v46).i8[2])
          {
            *(v78 - 1) = v46.i32[0];
          }

          if (vuzp1_s16(*&v46, vmovn_s64(vcgeq_u64(v75, *&v76))).i32[1])
          {
            *v78 = v46.i32[0];
            *(v78 + 1) = v46.i32[0];
          }

          v76 = vaddq_s64(v76, v79);
          v77 = vaddq_s64(v77, v79);
          v78 += 2;
          v74 -= 4;
        }

        while (v74);
      }
    }

    else
    {
      v58 = Phase::SpatialModeler::TRAP::TP(v57);
      v59 = *(v58 + 14);
      v146 = *(v58 + 13);
      v147 = v59;
      v60 = *(v58 + 16);
      v148 = *(v58 + 15);
      v149 = v60;
      v61 = *(v58 + 10);
      v142 = *(v58 + 9);
      v143 = v61;
      v62 = *(v58 + 12);
      v144 = *(v58 + 11);
      v145 = v62;
      v45 = Phase::SpatialModeler::TRAP::TP(v58);
      v63 = *(v45 + 352);
      v138 = *(v45 + 336);
      v139 = v63;
      v64 = *(v45 + 384);
      v140 = *(v45 + 368);
      v141 = v64;
      v65 = *(v45 + 288);
      v134 = *(v45 + 272);
      v135 = v65;
      v46 = *(v45 + 304);
      v66 = *(v45 + 320);
      v136 = v46;
      v137 = v66;
    }

    *(v9 + 960) = 0;
    v67 = 1;
  }

  else
  {
    v67 = 0;
  }

  v49 = *(a3 + 24);
LABEL_51:
  v46.i32[0] = 1.0;
  if (v49 != 3)
  {
    v81 = *(v9 + 960);
    v82 = Phase::SpatialModeler::TRAP::TP(v45);
    v46.f32[0] = 1.0 - powf(v81, *(v82 + 123));
  }

  v113 = v46.i32[0];
  Phase::Subbands<float>::operator*=(&v134, &v113, v46);
  if (*(a3 + 24) == -1)
  {
    v84 = Phase::SpatialModeler::TRAP::TP(v83);
    Phase::Subbands<float>::operator*=(&v134, v84 + 1);
  }

  v153 = v146;
  v154 = v147;
  *v155 = v148;
  *&v155[16] = v149;
  *buf = v142;
  *&buf[16] = v143;
  v151 = v144;
  v152 = v145;
  v158 = v136;
  v159 = v137;
  v156 = v134;
  v157 = v135;
  v163 = v141;
  v161 = v139;
  v162 = v140;
  v160 = v138;
  v167 = v129;
  v166 = v128;
  v165 = v127;
  v164 = v126;
  v171 = v133;
  v170 = v132;
  v169 = v131;
  v168 = v130;
  v175 = v121;
  v174 = v120;
  v173 = v119;
  v172 = v118;
  v179 = v125;
  v178 = v124;
  v177 = v123;
  v176 = v122;
  v203 = 0u;
  v202 = 0u;
  v201 = 0u;
  v200 = 0u;
  v199 = 0u;
  v198 = 0u;
  v197 = 0u;
  v196 = 0u;
  v195 = 0u;
  v194 = 0u;
  v193 = 0u;
  v192 = 0u;
  v191 = 0u;
  v190 = 0u;
  v189 = 0u;
  v188 = 0u;
  v187 = 0u;
  v186 = 0u;
  v185 = 0u;
  v184 = 0u;
  v183 = 0u;
  v182 = 0u;
  v181 = 0u;
  v180 = 0u;
  Phase::SpatialModeler::TRAP::MixMultibandValuesAndConfidences(buf, &v107, Phase::Logarithm<float>, Phase::Exponential<float>, Phase::SpatialModeler::TRAP::CalculateAcousticAndVisualMix, Phase::SpatialModeler::TRAP::RT60Processor::Process(Phase::Subbands<float> const&,Phase::Subbands<float> const&,Phase::Geometry::Scene const&,Phase::SpatialModeler::RayTracerState &)::$_0::__invoke, Phase::SpatialModeler::TRAP::RT60Processor::Process(Phase::Subbands<float> const&,Phase::Subbands<float> const&,Phase::Geometry::Scene const&,Phase::SpatialModeler::RayTracerState &)::$_1::__invoke);
  v85 = v185;
  *(a4 + 21232) = v184;
  *(a4 + 21248) = v85;
  v86 = v187;
  *(a4 + 21264) = v186;
  *(a4 + 21280) = v86;
  v87 = v181;
  *(a4 + 21168) = v180;
  *(a4 + 21184) = v87;
  v88 = v183;
  *(a4 + 21200) = v182;
  *(a4 + 21216) = v88;
  v89 = v188;
  v90 = v189;
  v91 = v190;
  *(a4 + 21344) = v191;
  *(a4 + 21328) = v91;
  *(a4 + 21312) = v90;
  *(a4 + 21296) = v89;
  v92 = v192;
  v93 = v193;
  v94 = v194;
  *(a4 + 21408) = v195;
  *(a4 + 21392) = v94;
  *(a4 + 21376) = v93;
  *(a4 + 21360) = v92;
  LODWORD(v93) = v107.i32[0];
  *(v9 + 944) = v107.i32[1];
  *(v9 + 3184) = v67;
  LODWORD(v94) = v111;
  *(v9 + 3188) = v112;
  *(v9 + 3196) = v93;
  LODWORD(v93) = v109;
  *(v9 + 3200) = v108;
  *(v9 + 3204) = v110;
  *(v9 + 3220) = v93;
  *(v9 + 3224) = v94;
  *(v9 + 3244) = *(v9 + 960);
  *(v9 + 3248) = v113;
  v95 = *a1;
  v96 = a1[1];
  v97 = a1[2];
  *(a4 + 23792) = a1[3];
  *(a4 + 23776) = v97;
  *(a4 + 23760) = v96;
  *(a4 + 23744) = v95;
  v98 = a1[4];
  v99 = a1[5];
  v100 = a1[6];
  *(a4 + 23856) = a1[7];
  *(a4 + 23840) = v100;
  *(a4 + 23824) = v99;
  *(a4 + 23808) = v98;
  v101 = *(a2 + 96);
  v102 = *(a2 + 112);
  v103 = *(a2 + 80);
  *(a4 + 23936) = *(a2 + 64);
  *(a4 + 23984) = v102;
  *(a4 + 23968) = v101;
  *(a4 + 23952) = v103;
  v104 = *a2;
  v105 = *(a2 + 16);
  v106 = *(a2 + 32);
  *(a4 + 23920) = *(a2 + 48);
  *(a4 + 23904) = v106;
  *(a4 + 23888) = v105;
  *(a4 + 23872) = v104;
}

float Phase::SpatialModeler::TRAP::RT60Processor::Process(Phase::Subbands<float> const&,Phase::Subbands<float> const&,Phase::Geometry::Scene const&,Phase::SpatialModeler::RayTracerState &)::$_0::__invoke(Phase::SpatialModeler::TRAP *a1, float a2)
{
  v3 = *(Phase::SpatialModeler::TRAP::TP(a1) + 105);

  return powf(a2, v3);
}

float Phase::SpatialModeler::TRAP::RT60Processor::Process(Phase::Subbands<float> const&,Phase::Subbands<float> const&,Phase::Geometry::Scene const&,Phase::SpatialModeler::RayTracerState &)::$_1::__invoke(Phase::SpatialModeler::TRAP *a1, float a2)
{
  v3 = *(Phase::SpatialModeler::TRAP::TP(a1) + 106);

  return powf(a2, v3);
}

uint64_t Phase::Controller::DVM23::SamplerChannelStripController::InitGraph(Phase::Controller::DVM23::SamplerChannelStripController *this, Phase::Controller::DVM23::VoiceGraph **a2, unint64_t a3, const char *a4)
{
  *(this + 3) = -1;
  v5 = (this + 24);
  result = Phase::Controller::DVM23::DspVoiceManager23::AddGraph(a2, this + 3, a3, 1, 1, a4);
  if (!result)
  {
    v7 = *v5;
    v8 = *v5;

    return Phase::Controller::DVM23::DspVoiceManager23::AddConnection(a2, v7, 0, v8, 0);
  }

  return result;
}

uint64_t Phase::Controller::DVM23::SamplerChannelStripController::ConfigureGraphWithCallback(uint64_t a1, int64x2_t *this, unint64_t **a3, uint64_t a4)
{
  *&v28[5] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 24);
  if (!v5)
  {
    return 3;
  }

  if (*a3 == a3[1])
  {
    return 0;
  }

  v9 = Phase::Controller::DVM23::DspVoiceManager23::RemoveConnection(this, v5, 0, v5, 0);
  if (v9 == 9)
  {
    v10 = **(Phase::Logger::GetInstance(v9) + 80);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 24);
      *v26 = 136315650;
      *&v26[4] = "SamplerChannelStripController.cpp";
      *&v26[12] = 1024;
      *&v26[14] = 66;
      v27 = 2048;
      *v28 = v11;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Warning: trying to configure/reuse an empty GeneratorId %llu graph that has already been configured.", v26, 0x1Cu);
    }

    return 13;
  }

  v13 = *a3;
  *v26 = (*a3)[1];
  v14 = *v13;
  *(a1 + 56) = *v13;
  v12 = Phase::Controller::DVM23::DspVoiceManager23::AddVoice(this, v26, v14);
  if (v12)
  {
    return v12;
  }

  v15 = *v26;
  *(a1 + 40) = *v26;
  v16 = *a3;
  if ((a3[1] - *a3) < 0x11)
  {
    v20 = v15;
LABEL_16:
    *(a1 + 48) = -1;
    v21 = Phase::Controller::DVM23::DspVoiceManager23::AddVoice(this, (a1 + 48), 0xFuLL);
    if (v21)
    {
      return v21;
    }

    v21 = Phase::Controller::DVM23::DspVoiceManager23::AddConnection(this, v20, 0, *(a1 + 48), 0);
    if (v21)
    {
      return v21;
    }

    v21 = Phase::Controller::DVM23::DspVoiceManager23::AddConnection(this, *(a1 + 48), 0, *(a1 + 24), 0);
    if (v21)
    {
      return v21;
    }

    *(a1 + 80) = *(a4 + 16);
    v22 = *(a4 + 32);
    *(a1 + 112) = *(a4 + 48);
    *(a1 + 64) = *a4;
    *(a1 + 96) = v22;
    *(a1 + 104) = *(a4 + 40);
    *(a1 + 120) = *(a4 + 56);
    v12 = 1;
    if (Phase::Controller::DVM23::DspVoiceManager23::SetVoiceData(this, *(a1 + 40), 1uLL, (a1 + 64), 1))
    {
      return v12;
    }

    v23 = *(a1 + 40);
    *v26 = &unk_284D37348;
    *&v26[8] = a1;
    *&v28[1] = v26;
    v24 = Phase::Controller::DVM23::DspVoiceManager23::RegisterVoicePlaystateChangeCallback(this, v23, v26);
    std::__function::__value_func<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100](v26);
    return !v24;
  }

  v17 = 0;
  v18 = 1;
  while (1)
  {
    v19 = &v16[v17];
    *v26 = v19[3];
    v12 = Phase::Controller::DVM23::DspVoiceManager23::AddVoice(this, v26, v19[2]);
    if (v12)
    {
      return v12;
    }

    v20 = *v26;
    v21 = Phase::Controller::DVM23::DspVoiceManager23::AddConnection(this, v15, 0, *v26, 0);
    if (v21)
    {
      return v21;
    }

    ++v18;
    v16 = *a3;
    v17 += 2;
    v15 = v20;
    if (v18 >= (a3[1] - *a3) >> 4)
    {
      goto LABEL_16;
    }
  }
}

uint64_t Phase::Controller::DVM23::SamplerChannelStripController::ConfigureGraph(uint64_t a1, int64x2_t *a2, uint64_t *a3)
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  std::vector<std::pair<Phase::DspLayer23::KernelType,unsigned long long>>::__init_with_size[abi:ne200100]<std::pair<Phase::DspLayer23::KernelType,unsigned long long>*,std::pair<Phase::DspLayer23::KernelType,unsigned long long>*>(&__p, *a3, a3[1], (a3[1] - *a3) >> 4);
  v5 = Phase::Controller::DVM23::SamplerChannelStripController::ConfigureGraphWithCallback(a1, a2, &__p, 0);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  return v5;
}

void sub_23A4EE018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::DVM23::SamplerChannelStripController::SetPlaystate(uint64_t a1, Phase::Controller::DVM23::VoiceGraph **this, int a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  if ((a3 - 1) < 2)
  {
    Phase::Controller::DVM23::DspVoiceManager23::SetVoiceParameter(this, *(a1 + 48), 0, 0.0025);
    Phase::Controller::DVM23::DspVoiceManager23::SetVoiceParameter(this, *(a1 + 48), 1uLL, 1.0);
    Phase::Controller::DVM23::DspVoiceManager23::SetVoiceParameter(this, *(a1 + 48), 2uLL, 0.0);
    Phase::Controller::DVM23::DspVoiceManager23::GetTailDelayMs(this);
    goto LABEL_3;
  }

  if (!a3)
  {
    if (Phase::Controller::DVM23::DspVoiceManager23::IsGraphPlaystateUniform(this, *(a1 + 24), 4))
    {
      Phase::Controller::DVM23::DspVoiceManager23::SetVoiceParameter(this, *(a1 + 48), 0, 0.0025);
      Phase::Controller::DVM23::DspVoiceManager23::SetVoiceParameter(this, *(a1 + 48), 1uLL, 0.0);
      Phase::Controller::DVM23::DspVoiceManager23::SetVoiceParameter(this, *(a1 + 48), 2uLL, 1.0);
    }

LABEL_3:
    std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::__value_func[abi:ne200100](v8, a4);
    v9 = *(a1 + 8);
    v10 = 0;
    operator new();
  }

  return 7;
}

void sub_23A4EE214(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::__function::__value_func<void ()(unsigned long long,Phase::Controller::DVM23::Playstate)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::DVM23::SamplerChannelStripController::SetControllerParameter(Phase::Controller::DVM23::SamplerChannelStripController *this, Phase::Controller::DVM23::VoiceGraph **a2, unint64_t a3, double a4)
{
  if (a3 >= 2)
  {
    if (a3 == 3)
    {
      a3 = 7;
    }

    else
    {
      if (a3 != 2 || *(this + 7) == 1)
      {
        return 10;
      }

      a3 = 6;
    }
  }

  Phase::Controller::DVM23::DspVoiceManager23::SetVoiceParameter(a2, *(this + 5), a3, a4);
  return 0;
}

void Phase::Controller::DVM23::SamplerChannelStripController::~SamplerChannelStripController(Phase::Controller::DVM23::SamplerChannelStripController *this)
{
  *this = &unk_284D372E0;
  std::__function::__value_func<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100](this + 128);
}

{
  *this = &unk_284D372E0;
  std::__function::__value_func<void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100](this + 128);

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__function::__func<Phase::Controller::DVM23::SamplerChannelStripController::ConfigureGraphWithCallback(Phase::Controller::DVM23::DspVoiceManager23 *,std::vector<std::pair<Phase::DspLayer23::KernelType,unsigned long long>>,Phase::Controller::SamplerState *)::$_0,std::allocator<Phase::Controller::DVM23::SamplerChannelStripController::ConfigureGraphWithCallback(Phase::Controller::DVM23::DspVoiceManager23 *,std::vector<std::pair<Phase::DspLayer23::KernelType,unsigned long long>>,Phase::Controller::SamplerState *)::$_0>,void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D37348;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<Phase::Controller::DVM23::SamplerChannelStripController::ConfigureGraphWithCallback(Phase::Controller::DVM23::DspVoiceManager23 *,std::vector<std::pair<Phase::DspLayer23::KernelType,unsigned long long>>,Phase::Controller::SamplerState *)::$_0,std::allocator<Phase::Controller::DVM23::SamplerChannelStripController::ConfigureGraphWithCallback(Phase::Controller::DVM23::DspVoiceManager23 *,std::vector<std::pair<Phase::DspLayer23::KernelType,unsigned long long>>,Phase::Controller::SamplerState *)::$_0>,void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::operator()(uint64_t result, uint64_t *a2, uint64_t *a3, _DWORD *a4, int *a5)
{
  if (*a4 == 7)
  {
    v5 = *a5;
    v6 = *a3;
    v7 = *(result + 8);
    v12 = *a2;
    v11 = v6;
    v9 = v5;
    v10 = 7;
    v8 = *(v7 + 152);
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    return (*(*v8 + 48))(v8, &v12, &v11, &v10, &v9);
  }

  return result;
}

void *std::__function::__func<Phase::Controller::DVM23::SamplerChannelStripController::SetPlaystate(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::PlaystateCommand,std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&)::$_0,std::allocator<std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&>,void ()(unsigned long long,Phase::Controller::DVM23::Playstate)>::~__func(void *a1)
{
  *a1 = &unk_284D37390;
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<Phase::Controller::DVM23::SamplerChannelStripController::SetPlaystate(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::PlaystateCommand,std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&)::$_0,std::allocator<std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&>,void ()(unsigned long long,Phase::Controller::DVM23::Playstate)>::~__func(void *a1)
{
  *a1 = &unk_284D37390;
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x23EE864A0);
}

__n128 std::__function::__func<Phase::Controller::DVM23::SamplerChannelStripController::SetPlaystate(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::PlaystateCommand,std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&)::$_0,std::allocator<std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&>,void ()(unsigned long long,Phase::Controller::DVM23::Playstate)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D37390;
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::__value_func[abi:ne200100](a2 + 8, a1 + 8);
  result = *(a1 + 40);
  *(a2 + 40) = result;
  return result;
}

void std::__function::__func<Phase::Controller::DVM23::SamplerChannelStripController::SetPlaystate(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::PlaystateCommand,std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&)::$_0,std::allocator<std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&>,void ()(unsigned long long,Phase::Controller::DVM23::Playstate)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void Phase::SpatialModeler::SceneObserver::DetectSceneChanges(void *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X3>, Phase::SpatialModeler::RayTracerState *a5@<X4>, __int128 *a6@<X5>, _OWORD *a7@<X8>)
{
  v12 = a7;
  v192 = *MEMORY[0x277D85DE8];
  v13.i64[1] = 0;
  *(a7 + 62) = 0u;
  a7[2] = 0u;
  a7[3] = 0u;
  *a7 = 0u;
  a7[1] = 0u;
  v14 = a1[2];
  while (v14)
  {
    v15 = *a2;
    v16 = *(a2 + 8);
    if (*a2 == v16)
    {
LABEL_6:
      v14 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,Phase::UniqueObjectId>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,Phase::UniqueObjectId>>>::erase(a1, v14);
    }

    else
    {
      while (v14[2] != *v15)
      {
        v15 += 7;
        if (v15 == v16)
        {
          goto LABEL_6;
        }
      }

      v14 = *v14;
    }
  }

  v165 = a4;
  for (i = a1[7]; i; i = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,Phase::UniqueObjectId>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,Phase::UniqueObjectId>>>::erase(a1 + 5, i))
  {
    while (i[2] == *a3)
    {
      i = *i;
      if (!i)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_13:
  v167 = a3;
  v166 = a1;
  v18 = *(a2 + 8) - *a2;
  if (v18)
  {
    v19 = 0;
    v20 = 0x6DB6DB6DB6DB6DB7 * (v18 >> 3);
    if (v20 <= 1)
    {
      v20 = 1;
    }

    v170 = v20;
    do
    {
      v21 = *a2 + 56 * v19;
      *&v182[0] = *v21;
      v22 = *&v182[0];
      v23 = *(v21 + 40);
      v13.i64[0] = *(v21 + 8);
      v177 = v13;
      *&__b[0] = v13.i64[0];
      v24 = *(v21 + 16);
      v25 = *(v21 + 20);
      *(&__b[0] + 1) = __PAIR64__(LODWORD(v25), LODWORD(v24));
      v173 = *(v21 + 24);
      __b[1] = v173;
      v26 = std::__hash_table<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__unordered_map_hasher<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::hash<PHASETapType>,std::equal_to<PHASETapType>,true>,std::__unordered_map_equal<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::equal_to<PHASETapType>,std::hash<PHASETapType>,true>,std::allocator<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::find<PHASETapType>(a1, *&v182[0]);
      if (v26)
      {
        v27 = v26;
        Phase::SpatialModeler::SceneObserver::checkForNecessaryUpdates(v12, v23, __b, v26 + 3);
        v28 = ((vmuls_lane_f32(v27[12].f32[1], *v177.i8, 1) + (*v177.i32 * v27[12].f32[0])) + (v24 * v27[13].f32[0])) + (v25 * v27[13].f32[1]);
        v29 = -v28;
        if (v28 >= 0.0)
        {
          v29 = v28;
        }

        v30 = acosf(v29);
        v12[4] |= ((v30 + v30) * 57.296) > 20.0;
        v31 = ((vmuls_lane_f32(v27[16].f32[1], *v177.i8, 1) + (*v177.i32 * v27[16].f32[0])) + (v24 * v27[17].f32[0])) + (v25 * v27[17].f32[1]);
        v32 = -v31;
        if (v31 >= 0.0)
        {
          v32 = v31;
        }

        v33 = acosf(v32);
        v34 = 0;
        v12[23] |= ((v33 + v33) * 57.296) > 361.0;
        v27[3] = v23;
        do
        {
          v35 = v12[v34];
          if (v35)
          {
            break;
          }

          v36 = v34++ == 18;
        }

        while (!v36);
        v13.i64[1] = v177.i64[1];
        if (v35)
        {
          v27[4] = *v177.i8;
          v27[5].f32[0] = v24;
          v27[5].f32[1] = v25;
          *v27[6].f32 = v173;
        }

        v37 = 0;
        do
        {
          v38 = v12[v37 + 19];
          if (v38)
          {
            break;
          }

          v36 = v37++ == 18;
        }

        while (!v36);
        if (v38)
        {
          v27[8] = *v177.i8;
          v27[9].f32[0] = v24;
          v27[9].f32[1] = v25;
          *v27[10].f32 = v173;
        }

        v39 = 0;
        do
        {
          v40 = v12[v39 + 38];
          if (v40)
          {
            break;
          }

          v36 = v39++ == 18;
        }

        while (!v36);
        if (v40)
        {
          v27[12] = *v177.i8;
          v27[13].f32[0] = v24;
          v27[13].f32[1] = v25;
          *v27[14].f32 = v173;
        }

        v41 = 0;
        do
        {
          v42 = v12[v41 + 57];
          if (v42)
          {
            break;
          }

          v36 = v41++ == 18;
        }

        while (!v36);
        if (v42)
        {
          v27[16] = *v177.i8;
          v27[17].f32[0] = v24;
          v27[17].f32[1] = v25;
          *v27[18].f32 = v173;
        }
      }

      else
      {
        *&v189[0] = v182;
        v43 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SceneObserver::StoredData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SceneObserver::StoredData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SceneObserver::StoredData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SceneObserver::StoredData>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1, v22);
        v43[3] = v23;
        v43[4] = v177.i64[0];
        *(v43 + 10) = v24;
        *(v43 + 11) = v25;
        *(v43 + 12) = v173.i32[0];
        v44 = vextq_s8(v173, v177, 4uLL);
        *(v43 + 52) = v44;
        *(v43 + 17) = v177.i32[1];
        *(v43 + 18) = v24;
        *(v43 + 19) = v25;
        *(v43 + 20) = v173.i32[0];
        *(v43 + 84) = v44;
        *(v43 + 25) = v177.i32[1];
        *(v43 + 26) = v24;
        *(v43 + 27) = v25;
        *(v43 + 7) = v173;
        v43[16] = v177.i64[0];
        *(v43 + 34) = v24;
        *(v43 + 35) = v25;
        *(v43 + 9) = v173;
        memset(&v189[3] + 11, 0, 19);
        LOWORD(v189[0]) = 256;
        memset(v189 + 2, 0, 18);
        BYTE4(v189[1]) = 1;
        memset(&v189[1] + 5, 0, 18);
        BYTE7(v189[2]) = 1;
        memset(&v189[2] + 8, 0, 18);
        BYTE10(v189[3]) = 1;
        Phase::SpatialModeler::SimulationUpdate::operator|=(v12, v189);
      }

      ++v19;
    }

    while (v19 != v170);
  }

  v45 = *v167;
  if (*(a4 + 184) > *v167)
  {
    v46 = *(a4 + 168) + 24 * v45;
    if (*(v46 + 20) == HIDWORD(v45))
    {
      v47 = *v46;
      if (*v46)
      {
        if (v47->i32[0] == 2)
        {
          v48 = std::__hash_table<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__unordered_map_hasher<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::hash<PHASETapType>,std::equal_to<PHASETapType>,true>,std::__unordered_map_equal<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::equal_to<PHASETapType>,std::hash<PHASETapType>,true>,std::allocator<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::find<PHASETapType>(v166 + 5, *v167);
          if (v48)
          {
            v50 = v48;
            Phase::SpatialModeler::SceneObserver::checkForNecessaryUpdates(v12, 0, v47 + 6, v48 + 3);
            v51 = 0;
            do
            {
              v52 = v12[v51];
              if (v52)
              {
                break;
              }

              v36 = v51++ == 18;
            }

            while (!v36);
            if (v52)
            {
              v50[4].i32[0] = v47[6].i32[0];
              v50[4].i32[1] = v47[6].i32[1];
              v50[5].i32[0] = v47[7].i32[0];
              v50[5].i32[1] = v47[7].i32[1];
              v50[6].i32[0] = v47[8].i32[0];
              v50[6].i32[1] = v47[8].i32[1];
              v50[7].i32[0] = v47[9].i32[0];
              v50[7].i32[1] = v47[9].i32[1];
            }

            v53 = 0;
            do
            {
              v54 = v12[v53 + 19];
              if (v54)
              {
                break;
              }

              v36 = v53++ == 18;
            }

            while (!v36);
            if (v54)
            {
              v50[8].i32[0] = v47[6].i32[0];
              v50[8].i32[1] = v47[6].i32[1];
              v50[9].i32[0] = v47[7].i32[0];
              v50[9].i32[1] = v47[7].i32[1];
              v50[10].i32[0] = v47[8].i32[0];
              v50[10].i32[1] = v47[8].i32[1];
              v50[11].i32[0] = v47[9].i32[0];
              v50[11].i32[1] = v47[9].i32[1];
            }

            v55 = 0;
            do
            {
              v56 = v12[v55 + 38];
              if (v56)
              {
                break;
              }

              v36 = v55++ == 18;
            }

            while (!v36);
            if (v56)
            {
              v50[12].i32[0] = v47[6].i32[0];
              v50[12].i32[1] = v47[6].i32[1];
              v50[13].i32[0] = v47[7].i32[0];
              v50[13].i32[1] = v47[7].i32[1];
              v50[14].i32[0] = v47[8].i32[0];
              v50[14].i32[1] = v47[8].i32[1];
              v50[15].i32[0] = v47[9].i32[0];
              v50[15].i32[1] = v47[9].i32[1];
            }

            v57 = 0;
            do
            {
              v58 = v12[v57 + 57];
              if (v58)
              {
                break;
              }

              v36 = v57++ == 18;
            }

            while (!v36);
            if (v58)
            {
              v50[16].i32[0] = v47[6].i32[0];
              v50[16].i32[1] = v47[6].i32[1];
              v50[17].i32[0] = v47[7].i32[0];
              v50[17].i32[1] = v47[7].i32[1];
              v50[18].i32[0] = v47[8].i32[0];
              v50[18].i32[1] = v47[8].i32[1];
              v50[19].i32[0] = v47[9].i32[0];
              v50[19].i32[1] = v47[9].i32[1];
            }
          }

          else
          {
            v59 = v47[7].i32[0];
            v60 = v47[7].i32[1];
            *&v189[0] = v167;
            *v49.i8 = v47[6];
            v174 = v49;
            v178 = *v47[8].f32;
            v61 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SceneObserver::StoredData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SceneObserver::StoredData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SceneObserver::StoredData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SceneObserver::StoredData>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v166 + 5, v45);
            v61[3] = 0;
            v61[4] = v174.i64[0];
            *(v61 + 10) = v59;
            *(v61 + 11) = v60;
            *(v61 + 12) = v178.i32[0];
            *(v61 + 17) = v174.i32[1];
            *(v61 + 52) = vextq_s8(v178, v174, 4uLL);
            *(v61 + 18) = v59;
            *(v61 + 19) = v60;
            *(v61 + 5) = v178;
            v61[12] = v174.i64[0];
            *(v61 + 26) = v59;
            *(v61 + 27) = v60;
            *(v61 + 7) = v178;
            v61[16] = v174.i64[0];
            *(v61 + 34) = v59;
            *(v61 + 35) = v60;
            *(v61 + 9) = v178;
            memset(&v189[3] + 12, 0, 18);
            LOWORD(v189[0]) = 0;
            BYTE2(v189[0]) = 1;
            memset(v189 + 3, 0, 18);
            BYTE5(v189[1]) = 1;
            memset(&v189[1] + 6, 0, 18);
            BYTE8(v189[2]) = 1;
            memset(&v189[2] + 9, 0, 18);
            BYTE11(v189[3]) = 1;
            Phase::SpatialModeler::SimulationUpdate::operator|=(v12, v189);
          }
        }
      }
    }
  }

  if (*(a4 + 216))
  {
    v62 = v166 + 32;
    if (!*(v166 + 95))
    {
      goto LABEL_91;
    }

    v63 = *(a6 + 31);
    memset(__b, 0, sizeof(__b));
    v184 = 0u;
    v185 = 0u;
    v186 = 0u;
    v187 = 0u;
    memset(v188, 0, 28);
    if (v63)
    {
      v64 = 0;
      v65 = 4 * v63;
      do
      {
        *(__b + v64) = *(a6 + v64) / *(v62 + v64);
        v64 += 4;
      }

      while (v65 != v64);
      v66 = 0;
      v190 = 0u;
      memset(v191, 0, 28);
      memset(v189, 0, sizeof(v189));
      do
      {
        *(v189 + v66) = *(__b + v66) + -1.0;
        v66 += 4;
      }

      while (v65 != v66);
      v67 = 0;
      v68 = fabsf(*v189);
      if (v63 == 1)
      {
        v68 = 0.0;
      }

      do
      {
        v69 = fabsf(*(v189 + v67));
        if (v68 < v69)
        {
          v68 = v69;
        }

        v67 += 4;
      }

      while (v65 != v67);
      if (v68 > 0.02)
      {
LABEL_91:
        v70 = *a6;
        v71 = a6[1];
        v72 = a6[3];
        *(v166 + 18) = a6[2];
        *(v166 + 19) = v72;
        *v62 = v70;
        *(v166 + 17) = v71;
        v73 = a6[4];
        v74 = a6[5];
        v75 = a6[7];
        *(v166 + 22) = a6[6];
        *(v166 + 23) = v75;
        *(v166 + 20) = v73;
        *(v166 + 21) = v74;
        *&v189[4] = 0;
        DWORD2(v189[4]) = 0;
        LODWORD(v189[0]) = 0;
        WORD2(v189[0]) = 0;
        BYTE6(v189[0]) = 1;
        memset(v189 + 7, 0, 18);
        BYTE9(v189[1]) = 1;
        memset(&v189[1] + 10, 0, 18);
        BYTE12(v189[2]) = 1;
        memset(&v189[2] + 13, 0, 18);
        HIBYTE(v189[3]) = 1;
        WORD6(v189[4]) = 0;
        Phase::SpatialModeler::SimulationUpdate::operator|=(v12, v189);
      }
    }
  }

  v76 = 0;
  v77 = *(a4 + 952);
  v78 = *(a4 + 976);
  v79 = *(v166 + 98);
  v80 = v78 >= 0.96;
  v81 = v78 <= 0.04;
  if (v79 == v78)
  {
    v80 = 0;
    v81 = 0;
  }

  memset(__b, 0, 19);
  BYTE7(__b[0]) = v166[48] != v77;
  *(&__b[0] + 1) = (vabds_f32(v78, v79) >= 0.05) | (v80 || v81);
  do
  {
    v82 = *(__b + v76);
    if (v82)
    {
      break;
    }

    v36 = v76++ == 18;
  }

  while (!v36);
  if (v82)
  {
    v166[48] = v77;
    *(v166 + 98) = v78;
    v189[0] = __b[0];
    *(v189 + 15) = *(__b + 15);
    *(&v189[1] + 3) = __b[0];
    *(&v189[2] + 2) = *(__b + 15);
    *(&v189[2] + 6) = __b[0];
    *(&v189[3] + 5) = *(__b + 15);
    DWORD2(v189[4]) = *(__b + 15);
    *(&v189[3] + 9) = __b[0];
    WORD6(v189[4]) = 0;
    Phase::SpatialModeler::SimulationUpdate::operator|=(v12, v189);
  }

  v83 = *(a4 + 980);
  if (*(v166 + 396) != v83)
  {
    *(v166 + 396) = v83;
    *(&v189[4] + 1) = 256;
    *(&v189[4] + 3) = 0;
    BYTE11(v189[4]) = 0;
    *&v189[0] = 0;
    WORD4(v189[0]) = 256;
    memset(v189 + 10, 0, 18);
    BYTE12(v189[1]) = 1;
    memset(&v189[1] + 13, 0, 18);
    HIBYTE(v189[2]) = 1;
    memset(&v189[3], 0, 17);
    WORD6(v189[4]) = 0;
    Phase::SpatialModeler::SimulationUpdate::operator|=(v12, v189);
  }

  v84 = 0;
  do
  {
    v85 = v12[v84];
    if (v85)
    {
      break;
    }

    v36 = v84++ == 18;
  }

  while (!v36);
  if ((v85 & 1) == 0)
  {
    v86 = 19;
    do
    {
      v87 = v12[v86];
      if (v87)
      {
        break;
      }

      v36 = v86++ == 37;
    }

    while (!v36);
    if ((v87 & 1) == 0)
    {
      v88 = *(a4 + 984);
      if (v88 != v166[13])
      {
        v166[13] = v88;
        *&v189[0] = 0;
        WORD4(v189[0]) = 0;
        BYTE10(v189[0]) = 1;
        memset(v189 + 11, 0, 18);
        BYTE13(v189[1]) = 1;
        memset(&v189[1] + 14, 0, 18);
        LOBYTE(v189[3]) = 1;
        memset(&v189[3] + 1, 0, 18);
        BYTE3(v189[4]) = 1;
        *(&v189[4] + 4) = 0;
        WORD6(v189[4]) = 0;
        v90 = v189;
LABEL_181:
        Phase::SpatialModeler::SimulationUpdate::operator|=(v12, v90);
        return;
      }

      v190 = 0u;
      memset(v191, 0, 28);
      memset(v189, 0, sizeof(v189));
      v89 = a5;
      *&v191[28] = a5;
      if (a5)
      {
        bzero(v189, 4 * a5);
        v187 = 0u;
        memset(v188, 0, 28);
        v185 = 0u;
        v186 = 0u;
        v184 = 0u;
        memset(__b, 0, sizeof(__b));
        memset_pattern16(__b, &unk_23A597960, 4 * a5);
        v89 = a5;
      }

      else
      {
        v187 = 0uLL;
        memset(v188, 0, 28);
        v185 = 0uLL;
        v186 = 0uLL;
        v184 = 0uLL;
        memset(__b, 0, sizeof(__b));
      }

      *&v188[28] = v89;
      SubbandIndex = Phase::SpatialModeler::RayTracerState::GetSubbandIndex(v89);
      v93 = *(a4 + 168);
      v94 = *(a4 + 184);
      v95 = &v93[3 * v94];
      if (v94)
      {
        v96 = *v93;
        if (!*v93)
        {
          v97 = v93 + 3;
          while (1)
          {
            v93 = v97;
            if (v97 >= v95)
            {
              break;
            }

            v97 += 3;
            v96 = *v93;
            if (*v93)
            {
              goto LABEL_125;
            }
          }

          v96 = 0;
        }

LABEL_125:
        v98 = v95;
      }

      else
      {
        v96 = 0;
        v98 = *(a4 + 168);
      }

      if (v93 == v95)
      {
        v141 = 0x80000000800000;
        v142 = vneg_f32(0x80000000800000);
        v99 = 0.0;
        v101 = 3.4028e38;
        v100 = -3.4028e38;
        LODWORD(v140) = a5;
      }

      else
      {
        v92.i64[0] = 0x80000000800000;
        v179 = v92;
        *v92.i8 = vneg_f32(0x80000000800000);
        v175 = v92;
        v99 = 0.0;
        v100 = -3.4028e38;
        v101 = 3.4028e38;
        v164 = 40 * SubbandIndex;
        v160 = v95;
        v161 = v12;
        v159 = v98;
        do
        {
          if (v96 && v96->i32[0] == 4)
          {
            v103 = v96[15];
            v102 = v96[16];
            if (v102 == v103)
            {
              v136 = v96[8];
              v137.i64[1] = v175.i64[1];
              v138.i64[1] = v179.i64[1];
              *v137.i8 = vminnm_f32(*v175.i8, v136);
              v175 = v137;
              v137.i32[0] = v96[9].i32[0];
              v101 = fminf(v101, *v137.i32);
              *v138.i8 = vmaxnm_f32(*v179.i8, v136);
              v179 = v138;
              v100 = fmaxf(v100, *v137.i32);
            }

            else
            {
              v162 = v96[16];
              v163 = v93;
              do
              {
                v104 = *v103;
                if (*(a4 + 160) > *v103)
                {
                  v105 = *(a4 + 144) + 24 * v104;
                  if (*(v105 + 20) == HIDWORD(v104))
                  {
                    v106 = *v105;
                    if (*v105)
                    {
                      v169 = *(v106 + 72);
                      v107 = *(v106 + 80) - v169;
                      if (v107)
                      {
                        v108 = 0;
                        v109 = v107 >> 2;
                        v110 = *(**(v106 + 144) + 16 * *(v106 + 152));
                        v171 = *(v110 + 8);
                        v111 = *(v110 + 32);
                        v112 = *(v165 + 136);
                        v168 = *(v165 + 120);
                        if (v109 <= 1)
                        {
                          v113 = 1;
                        }

                        else
                        {
                          v113 = v109;
                        }

                        do
                        {
                          v114 = *(v171 + v108 * v111);
                          if (v112 > v114)
                          {
                            v115 = (v168 + 24 * v114);
                            if (*(v115 + 5) == HIDWORD(v114))
                            {
                              v116 = *v115;
                              if (*v115)
                              {
                                if (*v116 == 1)
                                {
                                  v117 = *(*(v116 + 40) + v164);
                                  if (v117)
                                  {
                                    v118 = v117[31];
                                    v186 = v117[30];
                                    v187 = v118;
                                    v119 = v117[33];
                                    *v188 = v117[32];
                                    *&v188[16] = v119;
                                    v120 = v117[27];
                                    __b[0] = v117[26];
                                    __b[1] = v120;
                                    v121 = v117[29];
                                    v184 = v117[28];
                                    v185 = v121;
                                  }
                                }
                              }
                            }
                          }

                          if (a5)
                          {
                            v122 = -*(v169 + 4 * v108);
                            v123 = v189;
                            v124 = __b;
                            v125 = a5;
                            do
                            {
                              v126 = *v124++;
                              *v123 = *v123 + (v122 * logf((1.0 - v126) + 0.00000011921));
                              ++v123;
                              v125 = (v125 - 1);
                            }

                            while (v125);
                          }

                          ++v108;
                        }

                        while (v108 != v113);
                      }

                      v127 = 0;
                      v128 = *(v106 + 64);
                      v130 = v175;
                      v129 = v179;
                      do
                      {
                        v176 = v130;
                        v180 = v129;
                        Phase::GetVertex<float>((v106 + 24), v127, v181);
                        Phase::operator*<float>(&v96[6], v181, v182);
                        v131 = v96[9].f32[1];
                        v132 = v131 * *(v182 + 2);
                        v133 = vadd_f32(vmul_n_f32(*&v182[0], v131), v96[8]);
                        *(&v130 + 1) = *(&v176 + 1);
                        v134 = v132 + v96[9].f32[0];
                        *&v130 = vminnm_f32(*&v176, v133);
                        v101 = fminf(v101, v134);
                        v135.i64[1] = v180.i64[1];
                        *v135.i8 = vmaxnm_f32(*v180.i8, v133);
                        v179 = v135;
                        v129 = v135;
                        v100 = fmaxf(v100, v134);
                        ++v127;
                      }

                      while (v127 != 8);
                      v175 = v130;
                      v99 = v99 + v128;
                      v95 = v160;
                      v12 = v161;
                      a4 = v165;
                      v102 = v162;
                      v93 = v163;
                      v98 = v159;
                    }
                  }
                }

                ++v103;
              }

              while (v103 != v102);
            }
          }

          if (v93 < v98)
          {
            v139 = v93 + 3;
            while (1)
            {
              v93 = v139;
              if (v139 >= v98)
              {
                break;
              }

              v139 += 3;
              v96 = *v93;
              if (*v93)
              {
                goto LABEL_161;
              }
            }

            v96 = 0;
          }

LABEL_161:
          ;
        }

        while (v93 != v95);
        LODWORD(v140) = *&v191[28];
        v142 = *v175.i8;
        v141 = v179.i64[0];
      }

      v143 = sqrtf((((*(v166 + 20) - v142.f32[0]) * (*(v166 + 20) - v142.f32[0])) + ((*(v166 + 21) - v142.f32[1]) * (*(v166 + 21) - v142.f32[1]))) + ((*(v166 + 22) - v101) * (*(v166 + 22) - v101)));
      v144 = sqrtf((((*(v166 + 23) - *&v141) * (*(v166 + 23) - *&v141)) + ((*(v166 + 24) - *(&v141 + 1)) * (*(v166 + 24) - *(&v141 + 1)))) + ((*(v166 + 25) - v100) * (*(v166 + 25) - v100)));
      v145 = vabds_f32(*(v166 + 28), v99);
      v146 = v166 + 16;
      memset(v182, 0, 124);
      if (v140)
      {
        v147 = 0;
        v140 = v140;
        do
        {
          *(v182 + v147) = *(v189 + v147) - *(v146 + v147);
          v147 += 4;
        }

        while (4 * v140 != v147);
        v148 = *v182;
        if (v140 == 1)
        {
          v148 = 0.0;
        }

        v149 = v182;
        do
        {
          v150 = *v149++;
          v151 = v150;
          if (v148 < v150)
          {
            v148 = v151;
          }

          --v140;
        }

        while (v140);
        v152 = v148 > 3.0;
      }

      else
      {
        v152 = 0;
      }

      v153 = 0;
      memset(v181, 0, sizeof(v181));
      v181[11] = fmaxf(v143, v144) > 1.0;
      v181[12] = v145 > 10.0;
      v181[13] = v152;
      do
      {
        v154 = v181[v153];
        if (v154)
        {
          break;
        }

        v36 = v153++ == 18;
      }

      while (!v36);
      if (v154)
      {
        v166[10] = v142;
        *(v166 + 22) = v101;
        *(v166 + 92) = v141;
        *(v166 + 25) = v100;
        *(v166 + 28) = v99;
        v155 = v190;
        *(v166 + 12) = v189[4];
        *(v166 + 13) = v155;
        v156 = *&v191[16];
        *(v166 + 14) = *v191;
        *(v166 + 15) = v156;
        v157 = v189[1];
        *v146 = v189[0];
        *(v166 + 9) = v157;
        v158 = v189[3];
        *(v166 + 10) = v189[2];
        *(v166 + 11) = v158;
        v182[0] = *v181;
        *(v182 + 15) = *&v181[15];
        *(&v182[1] + 3) = *v181;
        *(&v182[2] + 2) = *&v181[15];
        *(&v182[2] + 6) = *v181;
        *(&v182[3] + 5) = *&v181[15];
        DWORD2(v182[4]) = *&v181[15];
        *(&v182[3] + 9) = *v181;
        WORD6(v182[4]) = 0;
        v90 = v182;
        goto LABEL_181;
      }
    }
  }
}

uint64_t Phase::SpatialModeler::SceneObserver::isDetectEnergyFluctuation(uint64_t a1, float *a2)
{
  v3 = *(a2 + 31);
  v4 = (a1 + 400);
  if (v3 == *(a1 + 524))
  {
    if (!v3)
    {
      return 0;
    }

    v5 = a2;
    for (i = (a1 + 400); ; ++i)
    {
      v7 = *v5;
      if (*v5 <= 0.0)
      {
        v7 = COERCE_FLOAT(1);
      }

      v8 = ((logf(v7) * 4.3429) / 10.0) * 10.0;
      v9 = *i;
      if (*i <= 0.0)
      {
        v9 = COERCE_FLOAT(1);
      }

      if (vabds_f32(v8, ((logf(v9) * 4.3429) / 10.0) * 10.0) > 2.5)
      {
        break;
      }

      ++v5;
      if (!--v3)
      {
        return 0;
      }
    }
  }

  v11 = *a2;
  v12 = *(a2 + 1);
  v13 = *(a2 + 3);
  v4[2] = *(a2 + 2);
  v4[3] = v13;
  *v4 = v11;
  v4[1] = v12;
  v14 = *(a2 + 4);
  v15 = *(a2 + 5);
  v16 = *(a2 + 7);
  v4[6] = *(a2 + 6);
  v4[7] = v16;
  v4[4] = v14;
  v4[5] = v15;
  return 1;
}

void Phase::SpatialModeler::SceneObserver::checkForNecessaryUpdates(_BYTE *a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4)
{
  v7 = a3[3].f32[0];
  v8 = (v7 - a4[4].f32[0]) * (v7 - a4[4].f32[0]);
  v9 = a1[3];
  v10 = (v7 - a4[8].f32[0]) * (v7 - a4[8].f32[0]);
  v11 = a1[22];
  v12 = *a4 != a2;
  a1[5] |= v12;
  a1[24] |= v12;
  v13 = (v7 - a4[12].f32[0]) * (v7 - a4[12].f32[0]);
  v14 = a1[41];
  v15 = v7 - a4[16].f32[0];
  v16 = a3[2];
  v17 = vsub_f32(v16, a4[3]);
  a1[3] = v9 | (sqrtf(vaddv_f32(vmul_f32(v17, v17)) + v8) > 0.8);
  v18 = vsub_f32(v16, a4[7]);
  a1[22] = v11 | (sqrtf(vaddv_f32(vmul_f32(v18, v18)) + v10) > 1.5);
  v19 = vsub_f32(v16, a4[11]);
  a1[41] = v14 | (sqrtf(vaddv_f32(vmul_f32(v19, v19)) + v13) > 0.1);
  v20 = vsub_f32(v16, a4[15]);
  a1[60] |= sqrtf(vaddv_f32(vmul_f32(v20, v20)) + (v15 * v15)) > 1.5;
  v21 = a3[1].f32[1];
  v22 = a4[10].f32[0];
  v23 = a4[10].f32[1];
  v20.f32[0] = (((a3->f32[1] * a4[9].f32[1]) + (a3->f32[0] * a4[9].f32[0])) + (a3[1].f32[0] * v22)) + (v21 * v23);
  v24 = -v20.f32[0];
  if (v20.f32[0] >= 0.0)
  {
    v24 = (((a3->f32[1] * a4[9].f32[1]) + (a3->f32[0] * a4[9].f32[0])) + (a3[1].f32[0] * v22)) + (v21 * v23);
  }

  v25 = acosf(v24);
  a1[42] |= ((v25 + v25) * 57.296) > 5.0;
  v26 = a3[1].f32[1];
  v27 = a4[14].f32[0];
  v28 = a4[14].f32[1];
  v29 = (((a3->f32[1] * a4[13].f32[1]) + (a3->f32[0] * a4[13].f32[0])) + (a3[1].f32[0] * v27)) + (v26 * v28);
  v30 = -v29;
  if (v29 >= 0.0)
  {
    v30 = (((a3->f32[1] * a4[13].f32[1]) + (a3->f32[0] * a4[13].f32[0])) + (a3[1].f32[0] * v27)) + (v26 * v28);
  }

  v31 = acosf(v30);
  a1[61] |= ((v31 + v31) * 57.296) > 361.0;
  a1[43] |= v12;
  a1[62] |= v12;
}

uint64_t Phase::SpatialModeler::SimulationUpdate::operator|=(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 19; ++i)
  {
    *(result + i) |= *(a2 + i);
  }

  do
  {
    *(result + i) |= *(a2 + i);
    ++i;
  }

  while (i != 38);
  do
  {
    *(result + i) |= *(a2 + i);
    ++i;
  }

  while (i != 57);
  do
  {
    *(result + i) |= *(a2 + i);
    ++i;
  }

  while (i != 76);
  *(result + 76) |= *(a2 + 76);
  *(result + 77) |= *(a2 + 77);
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SceneObserver::StoredData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SceneObserver::StoredData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SceneObserver::StoredData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SceneObserver::StoredData>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t a2)
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

double Phase::Zeppelin::SCSRadiationModel::ComputeDirectionalResponse(Phase::Logger *a1, Phase::Zeppelin::SCSRadiationSphereSamplingDependentPrecomputedData **a2, int a3, float a4)
{
  v45 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v33 = **(Phase::Logger::GetInstance(0) + 944);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "SCSRadiationModel.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 203;
      _os_log_impl(&dword_23A302000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [(nullptr == pInRadiationContextRef) is true]: ErrorDescriptions::kErrDescr_nullPtr", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, Phase::Zeppelin::ErrorDescriptions::kErrDescr_nullPtr);
  }

  if (!a2)
  {
    v35 = **(Phase::Logger::GetInstance(a1) + 944);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "SCSRadiationModel.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 208;
      _os_log_impl(&dword_23A302000, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [(nullptr == pInSharedRadiationData) is true]: ErrorDescriptions::kErrDescr_nullPtr", buf, 0x12u);
    }

    v36 = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](v36, Phase::Zeppelin::ErrorDescriptions::kErrDescr_nullPtr);
  }

  v40 = *(*(*a2 + 1) + 8 * a3);
  v7 = *(*(*a2 + 8) + 8 * a3);
  v8 = 0.0;
  v39 = __divdc3(0.0, 0.5, *(v7 + 16), *(v7 + 24));
  CosTheta = Phase::Zeppelin::SCSRadiationSphereSamplingDependentPrecomputedData::GetCosTheta(a2[1], a4);
  v9 = *(*(*a2 + 8) + 8 * a3);
  v37 = __divdc3((1.0 - *(*a2 + 3)) * 3.0, 0.0, *(*a2 + 5) * (*v9 - (v9[4] + v9[4])), *(*a2 + 5) * (v9[1] - (v9[5] + v9[5])));
  v10 = *(a1 + 4);
  v11 = 0.0;
  if (v10 >= 2)
  {
    v12 = hypot(0.0, 1.0);
    v13 = log(v12);
    v14 = v10 - 1;
    v15 = 2;
    do
    {
      v16 = *(*a2 + 2);
      v17 = v15;
      v18 = *(*a2 + 4);
      v42[0] = v15 + 1.0;
      v42[1] = 0.0;
      v43[0] = v13;
      v43[1] = 1.57079633;
      *buf = std::operator*[abi:ne200100]<double,0>(v42, v43);
      *&buf[8] = v19;
      std::exp[abi:ne200100]<double>(buf);
      v20 = (v17 * 2.0 + 1.0) * (v17 * 2.0 + 1.0);
      v22 = v20 * v21;
      v24 = v20 * v23;
      v25 = v16 * *(*(*a2 + 7) + 8 * v15) + v18 * *(*(*a2 + 6) + 8 * v15);
      v26 = v18 * ((v15 - 1) * (v15 + 2));
      v27 = *(*(*a2 + 8) + 8 * a3);
      v28 = __divdc3(v22 * v25, v24 * v25, v26 * (*(v27 + 16 * (v15 - 1)) * v17 - (v15 + 1.0) * *(v27 + 16 * (v15 + 1))), v26 * (*(v27 + 16 * (v15 - 1) + 8) * v17 - (v15 + 1.0) * *(v27 + 16 * (v15 + 1) + 8)));
      v30 = v29;
      LegendreNthDegreeOfCosTheta = Phase::Zeppelin::SCSRadiationSphereSamplingDependentPrecomputedData::GetLegendreNthDegreeOfCosTheta(a2[1], v15, a4);
      v8 = v8 + v28 * LegendreNthDegreeOfCosTheta;
      v11 = v11 + v30 * LegendreNthDegreeOfCosTheta;
      ++v15;
      --v14;
    }

    while (v14);
  }

  return -2.0 / v40 * (v39 + CosTheta * v37 + v8);
}

void Phase::Zeppelin::SCSRadiationPrecomputedData::SCSRadiationPrecomputedData(Phase::Logger *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *MEMORY[0x277D85DE8];
  *(a1 + 1) = 0;
  *a1 = 0;
  if (a4 && a5 && a6)
  {
    if (a2[1] != *a2)
    {
      operator new();
    }

    v8 = **(Phase::Logger::GetInstance(a1) + 944);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9[0] = 136315394;
      *&v9[1] = "SCSRadiationPrecomputedData.cpp";
      v10 = 1024;
      v11 = 58;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [(0 == refInCenterFreqs.size()) is true]: ErrorDescriptions::kErrDescr_invalidCenterFrequenciesLength", v9, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, Phase::Zeppelin::ErrorDescriptions::kErrDescr_invalidCenterFrequenciesLength);
  }

  else
  {
    v6 = **(Phase::Logger::GetInstance(a1) + 944);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9[0] = 136315394;
      *&v9[1] = "SCSRadiationPrecomputedData.cpp";
      v10 = 1024;
      v11 = 53;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [(nullptr == pInScsRadiationCtx || nullptr == pInPropagationMediumCtx || nullptr == pInNormalizationCtx) is true]: ErrorDescriptions::kErrDescr_nullPtr", v9, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, Phase::Zeppelin::ErrorDescriptions::kErrDescr_nullPtr);
  }

  exception->__vftable = (MEMORY[0x277D828F8] + 16);
}

void sub_23A4F0498(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  std::unique_ptr<Phase::Zeppelin::SCSRadiationSphereSamplingDependentPrecomputedData>::reset[abi:ne200100](v2, 0);
  std::unique_ptr<Phase::Zeppelin::SCSRadiationSphereSamplingIndependentPrecomputedData>::reset[abi:ne200100](v1, 0);
  _Unwind_Resume(a1);
}

Phase::Zeppelin::SCSRadiationSphereSamplingIndependentPrecomputedData *std::unique_ptr<Phase::Zeppelin::SCSRadiationSphereSamplingIndependentPrecomputedData>::reset[abi:ne200100](Phase::Zeppelin::SCSRadiationSphereSamplingIndependentPrecomputedData **a1, Phase::Zeppelin::SCSRadiationSphereSamplingIndependentPrecomputedData *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Phase::Zeppelin::SCSRadiationSphereSamplingIndependentPrecomputedData::~SCSRadiationSphereSamplingIndependentPrecomputedData(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

uint64_t **std::unique_ptr<Phase::Zeppelin::SCSRadiationSphereSamplingDependentPrecomputedData>::reset[abi:ne200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::unique_ptr<Phase::Zeppelin::SphereSampling::NDimEquiangularHalfCircleData<unsigned int,double>>::~unique_ptr[abi:ne200100](v2 + 3);
    std::unique_ptr<Phase::Zeppelin::SphereSampling::NDimEquiangularHalfCircleData<unsigned int,double>>::~unique_ptr[abi:ne200100](v2 + 2);
    std::unique_ptr<Phase::Zeppelin::SphereSampling::NDimEquiangularData<unsigned int,double>>::~unique_ptr[abi:ne200100](v2 + 1);
    std::unique_ptr<Phase::Zeppelin::SphereSampling::NDimEquiangularData<unsigned int,double>>::~unique_ptr[abi:ne200100](v2);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

uint64_t *std::unique_ptr<Phase::Zeppelin::SphereSampling::NDimEquiangularHalfCircleData<unsigned int,double>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = Phase::Zeppelin::SphereSampling::NDimEquiangularHalfCircleData<float,double>::~NDimEquiangularHalfCircleData(v2);
    MEMORY[0x23EE864A0](v3, 0x1090C40D5DC55A7);
  }

  return a1;
}

uint64_t *std::unique_ptr<Phase::Zeppelin::SphereSampling::NDimEquiangularData<unsigned int,double>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = Phase::Zeppelin::SphereSampling::NDimEquiangularData<unsigned int,double>::~NDimEquiangularData(v2);
    MEMORY[0x23EE864A0](v3, 0x1090C40C6AD1D12);
  }

  return a1;
}

uint64_t Phase::Zeppelin::SphereSampling::NDimEquiangularData<unsigned int,double>::~NDimEquiangularData(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = 0;
    do
    {
      v3 = *(a1 + 24);
      if (v3)
      {
        for (i = 0; i < v3; ++i)
        {
          v5 = *(*(*(a1 + 40) + 8 * v2) + 8 * i);
          if (v5)
          {
            MEMORY[0x23EE86470](v5, 0x1000C8000313F17);
            v3 = *(a1 + 24);
          }
        }
      }

      v6 = *(*(a1 + 40) + 8 * v2);
      if (v6)
      {
        MEMORY[0x23EE86470](v6, 0x80C80B8603338);
      }

      ++v2;
    }

    while (v2 < *(a1 + 28));
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    MEMORY[0x23EE86470](v7, 0x80C80B8603338);
  }

  v8 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v8;
    operator delete(v8);
  }

  return a1;
}

void Phase::Zeppelin::SCSRadiationSphereSamplingDependentPrecomputedData::SCSRadiationSphereSamplingDependentPrecomputedData(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *(a1 + 16) = 0u;
  *a1 = 0u;
  if (a2)
  {
    std::unique_ptr<Phase::Zeppelin::SphereSampling::NDimEquiangularData<unsigned int,double>>::reset[abi:ne200100](a1, 0);
    std::unique_ptr<Phase::Zeppelin::SphereSampling::NDimEquiangularData<unsigned int,double>>::reset[abi:ne200100]((a1 + 8), 0);
    buf = 0;
    memset(v5, 0, sizeof(v5));
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v5, &buf, &buf_4, 1uLL);
    operator new();
  }

  v3 = **(Phase::Logger::GetInstance(a1) + 944);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    buf = 136315394;
    buf_4 = "SCSRadiationSphereSamplingDependentPrecomputedData.cpp";
    v8 = 1024;
    v9 = 78;
    _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [(nullptr == pInScsRadiationCtxRef) is true]: ErrorDescriptions::kErrDescr_nullPtr", &buf, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, Phase::Zeppelin::ErrorDescriptions::kErrDescr_nullPtr);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
}

void sub_23A4F0B1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  std::unique_ptr<Phase::Zeppelin::SphereSampling::NDimEquiangularHalfCircleData<unsigned int,double>>::reset[abi:ne200100](v25, 0);
  std::unique_ptr<Phase::Zeppelin::SphereSampling::NDimEquiangularHalfCircleData<unsigned int,double>>::reset[abi:ne200100](v24, 0);
  std::unique_ptr<Phase::Zeppelin::SphereSampling::NDimEquiangularData<unsigned int,double>>::reset[abi:ne200100](v23 + 1, 0);
  std::unique_ptr<Phase::Zeppelin::SphereSampling::NDimEquiangularData<unsigned int,double>>::reset[abi:ne200100](v23, 0);
  _Unwind_Resume(a1);
}

void Phase::Zeppelin::SphereSampling::NDimEquiangularHalfCircleData<unsigned int,double>::Populate(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) - *a1;
  if (v2)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(a1 + 28);
    v8 = v2 >> 2;
    v9 = *(a1 + 24);
    do
    {
      if (v9)
      {
        v10 = 0;
        v11 = *(*a1 + 4 * v5);
        do
        {
          v12 = *(a2 + 24);
          v13 = (v7 * v10) * 0.0174532925;
          v15 = v13;
          v14 = v11;
          if (!v12)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          *(*(*(a1 + 32) + 8 * v10++) + 8 * v5) = (*(*v12 + 48))(v12, &v15, &v14);
        }

        while (v9 != v10);
      }

      v5 = ++v6;
    }

    while (v8 > v6);
  }
}

double Phase::Zeppelin::SCSRadiationSphereSamplingDependentPrecomputedData::GetCosTheta(Phase::Zeppelin::SCSRadiationSphereSamplingDependentPrecomputedData *this, float a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(this + 2);
  if (!v2)
  {
    v4 = **(Phase::Logger::GetInstance(0) + 944);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "SCSRadiationSphereSamplingDependentPrecomputedData.cpp";
      v8 = 1024;
      v9 = 129;
      _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [(nullptr == mCosThetaHalfCircle) is true]: ErrorDescriptions::kErrDescr_nullPtr", &v6, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, Phase::Zeppelin::ErrorDescriptions::kErrDescr_nullPtr);
  }

  return Phase::Zeppelin::SphereSampling::NDimEquiangularHalfCircleData<unsigned int,double>::GetValueAt(v2, 0, a2);
}

double Phase::Zeppelin::SphereSampling::NDimEquiangularHalfCircleData<unsigned int,double>::GetValueAt(uint64_t a1, unsigned int a2, float a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = &v4[-*a1];
  if (v4 == *a1)
  {
    v7 = *(a1 + 8);
  }

  else
  {
    v6 = v5 >> 2;
    v7 = *a1;
    do
    {
      v8 = v6 >> 1;
      v9 = &v7[4 * (v6 >> 1)];
      v11 = *v9;
      v10 = v9 + 4;
      v6 += ~(v6 >> 1);
      if (v11 < a2)
      {
        v7 = v10;
      }

      else
      {
        v6 = v8;
      }
    }

    while (v6);
  }

  if (v3 == v7)
  {
    v13 = 0;
  }

  else if (v4 == v7)
  {
    v13 = (v5 >> 2) - 1;
  }

  else
  {
    if (*v7 - a2 <= a2 - *(v7 - 1))
    {
      v12 = v7 - v3;
    }

    else
    {
      v12 = v7 - 4 - v3;
    }

    v13 = v12 >> 2;
  }

  return *(*(*(a1 + 32) + 8 * ((llroundf((a3 * 57.296) / *(a1 + 28)) % *(a1 + 24) + *(a1 + 24)) % *(a1 + 24))) + 8 * v13);
}

double Phase::Zeppelin::SCSRadiationSphereSamplingDependentPrecomputedData::GetLegendreNthDegreeOfCosTheta(Phase::Zeppelin::SCSRadiationSphereSamplingDependentPrecomputedData *this, unsigned int a2, float a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(this + 3);
  if (!v3)
  {
    v5 = **(Phase::Logger::GetInstance(0) + 944);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "SCSRadiationSphereSamplingDependentPrecomputedData.cpp";
      v9 = 1024;
      v10 = 160;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [(nullptr == mLegendreNthDegreeOfCosThetaHalfCircle) is true]: ErrorDescriptions::kErrDescr_nullPtr", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, Phase::Zeppelin::ErrorDescriptions::kErrDescr_nullPtr);
  }

  return Phase::Zeppelin::SphereSampling::NDimEquiangularHalfCircleData<unsigned int,double>::GetValueAt(v3, a2, a3);
}

uint64_t std::unique_ptr<Phase::Zeppelin::SphereSampling::NDimEquiangularData<unsigned int,double>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Phase::Zeppelin::SphereSampling::NDimEquiangularData<unsigned int,double>::~NDimEquiangularData(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

uint64_t std::unique_ptr<Phase::Zeppelin::SphereSampling::NDimEquiangularHalfCircleData<unsigned int,double>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Phase::Zeppelin::SphereSampling::NDimEquiangularHalfCircleData<float,double>::~NDimEquiangularHalfCircleData(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void Phase::Zeppelin::SphereSampling::NDimEquiangularHalfCircleData<unsigned int,double>::NDimEquiangularHalfCircleData(uint64_t a1, int a2, uint64_t *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, *a3, a3[1], (a3[1] - *a3) >> 2);
  *(a1 + 24) = a2;
  *(a1 + 28) = 180.0 / (a2 - 1);
  operator new[]();
}

void sub_23A4F11F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double std::__function::__func<Phase::Zeppelin::SCSRadiationSphereSamplingDependentPrecomputedData::SCSRadiationSphereSamplingDependentPrecomputedData(Phase::Zeppelin::ScsRadiationContext const*,unsigned int)::$_0,std::allocator<Phase::Zeppelin::SCSRadiationSphereSamplingDependentPrecomputedData::SCSRadiationSphereSamplingDependentPrecomputedData(Phase::Zeppelin::ScsRadiationContext const*,unsigned int)::$_0>,double ()(float,unsigned int)>::operator()(Phase::Logger *a1, float *a2, _DWORD *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*a3)
  {
    v4 = **(Phase::Logger::GetInstance(a1) + 944);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "SCSRadiationSphereSamplingDependentPrecomputedData.cpp";
      v8 = 1024;
      v9 = 92;
      _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [(0 != dimension) is true]: ErrorDescriptions::kErrDescr_nonZeroDimension", &v6, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, Phase::Zeppelin::ErrorDescriptions::kErrDescr_nonZeroDimension);
  }

  return cosf(*a2);
}

uint64_t std::__function::__value_func<double ()(float,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<double ()(float,unsigned int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<Phase::Zeppelin::SCSRadiationSphereSamplingDependentPrecomputedData::SCSRadiationSphereSamplingDependentPrecomputedData(Phase::Zeppelin::ScsRadiationContext const*,unsigned int)::$_1,std::allocator<Phase::Zeppelin::SCSRadiationSphereSamplingDependentPrecomputedData::SCSRadiationSphereSamplingDependentPrecomputedData(Phase::Zeppelin::ScsRadiationContext const*,unsigned int)::$_1>,double ()(float,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D37420;
  a2[1] = v2;
  return result;
}

void std::__function::__func<Phase::Zeppelin::SCSRadiationSphereSamplingDependentPrecomputedData::SCSRadiationSphereSamplingDependentPrecomputedData(Phase::Zeppelin::ScsRadiationContext const*,unsigned int)::$_1,std::allocator<Phase::Zeppelin::SCSRadiationSphereSamplingDependentPrecomputedData::SCSRadiationSphereSamplingDependentPrecomputedData(Phase::Zeppelin::ScsRadiationContext const*,unsigned int)::$_1>,double ()(float,unsigned int)>::operator()(uint64_t a1, float *a2, unsigned int *a3)
{
  v3 = *a3;
  ValueAt = Phase::Zeppelin::SphereSampling::NDimEquiangularHalfCircleData<unsigned int,double>::GetValueAt(*(*(a1 + 8) + 16), *a3, *a2);

  Phase::Zeppelin::MathUtils::Legendre(v3, 0, ValueAt);
}

void Phase::Zeppelin::SCSRadiationSphereSamplingIndependentPrecomputedData::SCSRadiationSphereSamplingIndependentPrecomputedData(Phase::Logger *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3 && a4 && a5)
  {
    v5 = a2[1] - *a2;
    if (v5)
    {
      *(a1 + 9) = v5 >> 2;
      operator new[]();
    }

    v8 = **(Phase::Logger::GetInstance(a1) + 944);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __p = 136315394;
      __p_4 = "SCSRadiationSphereSamplingIndependentPrecomputedData.cpp";
      v12 = 1024;
      v13 = 44;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [(0 == refInCenterFreqs.size()) is true]: ErrorDescriptions::kErrDescr_invalidCenterFrequenciesLength", &__p, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, Phase::Zeppelin::ErrorDescriptions::kErrDescr_invalidCenterFrequenciesLength);
  }

  v6 = **(Phase::Logger::GetInstance(a1) + 944);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __p = 136315394;
    __p_4 = "SCSRadiationSphereSamplingIndependentPrecomputedData.cpp";
    v12 = 1024;
    v13 = 39;
    _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [(nullptr == pInScsRadiationCtx || nullptr == pInPropagationMediumCtx || nullptr == pInNormalizationCtx) is true]: ErrorDescriptions::kErrDescr_nullPtr", &__p, 0x12u);
  }

  v7 = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](v7, Phase::Zeppelin::ErrorDescriptions::kErrDescr_nullPtr);
}

void Phase::Zeppelin::SCSRadiationSphereSamplingIndependentPrecomputedData::~SCSRadiationSphereSamplingIndependentPrecomputedData(Phase::Zeppelin::SCSRadiationSphereSamplingIndependentPrecomputedData *this)
{
  v2 = *this;
  if (v2)
  {
    MEMORY[0x23EE86470](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 1);
  if (v3)
  {
    MEMORY[0x23EE86470](v3, 0x1000C8000313F17);
  }

  v4 = *(this + 6);
  if (v4)
  {
    MEMORY[0x23EE86470](v4, 0x1000C8000313F17);
  }

  v5 = *(this + 7);
  if (v5)
  {
    MEMORY[0x23EE86470](v5, 0x1000C8000313F17);
  }

  v6 = *(this + 9);
  if (v6)
  {
    for (i = 0; i < v6; ++i)
    {
      v8 = *(*(this + 8) + 8 * i);
      if (v8)
      {
        MEMORY[0x23EE86470](v8, 0x1000C80451B5BE8);
        v6 = *(this + 9);
      }
    }
  }

  v9 = *(this + 8);
  if (v9)
  {
    MEMORY[0x23EE86470](v9, 0x20C8093837F09);
  }
}

float *Phase::SpatialModeler::TRAP::Sentinel::Process(uint64_t a1, uint64_t a2, float a3)
{
  v231 = *MEMORY[0x277D85DE8];
  v5 = a2 + 20480;
  *(a2 + 21456) = std::chrono::steady_clock::now();
  v6 = *(a2 + 21248);
  v221 = *(a2 + 21232);
  v222 = v6;
  v7 = *(a2 + 21280);
  v223 = *(a2 + 21264);
  v224 = v7;
  v8 = *(a2 + 21184);
  v217 = *(a2 + 21168);
  v218 = v8;
  v9 = *(a2 + 21216);
  v219 = *(a2 + 21200);
  v220 = v9;
  v10 = *(a2 + 21376);
  v213 = *(a2 + 21360);
  v214 = v10;
  v11 = *(a2 + 21408);
  v215 = *(a2 + 21392);
  v216 = v11;
  v12 = *(a2 + 21312);
  v209 = *(a2 + 21296);
  v210 = v12;
  v13 = *(a2 + 21344);
  v211 = *(a2 + 21328);
  v212 = v13;
  v14 = *(a2 + 20368);
  v207[4] = *(a2 + 20352);
  v207[5] = v14;
  v15 = *(a2 + 20400);
  v207[6] = *(a2 + 20384);
  v208 = v15;
  v16 = *(a2 + 20304);
  v207[0] = *(a2 + 20288);
  v207[1] = v16;
  v17 = *(a2 + 20336);
  v207[2] = *(a2 + 20320);
  v207[3] = v17;
  v18 = *(a2 + 20496);
  v203 = *(a2 + 20480);
  v204 = v18;
  v19 = *(a2 + 20528);
  v205 = *(a2 + 20512);
  v206 = v19;
  v20 = *(a2 + 20432);
  v199 = *(a2 + 20416);
  v200 = v20;
  v21 = *(a2 + 20464);
  v201 = *(a2 + 20448);
  v202 = v21;
  v22 = *(a2 + 21120);
  v195 = *(a2 + 21104);
  v196 = v22;
  v23 = *(a2 + 21152);
  v197 = *(a2 + 21136);
  v198 = v23;
  v24 = *(a2 + 21056);
  v191 = *(a2 + 21040);
  v192 = v24;
  v25 = *(a2 + 21088);
  v193 = *(a2 + 21072);
  v194 = v25;
  v26 = *(v5 + 556);
  v190 = *(v5 + 944);
  IsExpectedInputSubbandCount = Phase::SpatialModeler::TRAP::IsExpectedInputSubbandCount(&v217, "inOutAcousticVisualReverbTime");
  if (IsExpectedInputSubbandCount)
  {
    IsExpectedInputSubbandCount = Phase::SpatialModeler::TRAP::IsExpectedInputSubbandCount(&v209, "inOutAcousticVisualConfidence");
    if (IsExpectedInputSubbandCount)
    {
      IsExpectedInputSubbandCount = Phase::SpatialModeler::TRAP::IsExpectedInputSubbandCount(v207, "inOutSeatbeltReverbTime");
      if (IsExpectedInputSubbandCount)
      {
        IsExpectedInputSubbandCount = Phase::SpatialModeler::TRAP::IsExpectedInputSubbandCount(&v199, "inOutSeatbeltConfidence");
        if (IsExpectedInputSubbandCount)
        {
          IsExpectedInputSubbandCount = Phase::SpatialModeler::TRAP::IsExpectedInputSubbandCount(&v191, "inOutCurrentReverbTime");
          if (IsExpectedInputSubbandCount)
          {
            v29 = &v209;
            v30 = &v217;
            v31 = 10;
            do
            {
              Phase::SpatialModeler::TRAP::CleanInputReverbTimeAndConfidence(v30, v29++, v28);
              v30 = (v30 + 4);
              --v31;
            }

            while (v31);
            v32 = &v199;
            v33 = v207;
            v34 = 10;
            do
            {
              Phase::SpatialModeler::TRAP::CleanInputReverbTimeAndConfidence(v33, v32++, v28);
              v33 = (v33 + 4);
              --v34;
            }

            while (v34);
            v36 = &v191;
            v37 = 10;
            do
            {
              Phase::SpatialModeler::TRAP::CleanInputReverbTime(v36, v35);
              v36 += 4;
              --v37;
            }

            while (v37);
            IsExpectedInputSubbandCount = Phase::SpatialModeler::TRAP::CleanInputReverbTime(&v190, v35);
            v26 = fminf(fmaxf(v26, 0.0), 1.0);
          }
        }
      }
    }
  }

  v38 = Phase::SpatialModeler::TRAP::CalculateRoomChangeConfidence(IsExpectedInputSubbandCount, v26);
  v40 = Phase::SpatialModeler::TRAP::TP(v39);
  Phase::Subbands<float>::operator*=(v207, v40 + 115, v41);
  v43 = *v42;
  v44 = v42[1];
  v45 = v42[3];
  v141[2] = v42[2];
  v141[3] = v45;
  v141[0] = v43;
  v141[1] = v44;
  v46 = v42[4];
  v47 = v42[5];
  v48 = v42[7];
  v141[6] = v42[6];
  v141[7] = v48;
  v141[4] = v46;
  v141[5] = v47;
  v144 = v201;
  v145 = v202;
  v142 = v199;
  v143 = v200;
  v148 = v205;
  v149 = v206;
  v146 = v203;
  v147 = v204;
  v152 = v219;
  v153 = v220;
  v150 = v217;
  v151 = v218;
  v156 = v223;
  v157 = v224;
  v154 = v221;
  v155 = v222;
  v160 = v211;
  v161 = v212;
  v158 = v209;
  v159 = v210;
  v164 = v215;
  v165 = v216;
  v162 = v213;
  v163 = v214;
  v189 = 0u;
  v188 = 0u;
  v187 = 0u;
  v185 = 0u;
  v186 = 0u;
  v183 = 0u;
  v184 = 0u;
  v181 = 0u;
  v182 = 0u;
  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  v49 = *(a1 + 748) == 0;
  v167 = 0u;
  v168 = 0u;
  v166 = 0u;
  if (v49)
  {
    v50 = Phase::SpatialModeler::TRAP::Sentinel::Process(std::chrono::duration<float,std::ratio<1l,1l>>,Phase::Geometry::Scene const&,Phase::SpatialModeler::RayTracerState &)::$_0::__invoke;
  }

  else
  {
    v50 = Phase::SpatialModeler::TRAP::CalculateSeatbeltAndAcousticVisualMix;
  }

  Phase::SpatialModeler::TRAP::MixMultibandValuesAndConfidences(v141, &v137, Phase::Logarithm<float>, Phase::Exponential<float>, v50, Phase::SpatialModeler::TRAP::Sentinel::Process(std::chrono::duration<float,std::ratio<1l,1l>>,Phase::Geometry::Scene const&,Phase::SpatialModeler::RayTracerState &)::$_1::__invoke, Phase::SpatialModeler::TRAP::Sentinel::Process(std::chrono::duration<float,std::ratio<1l,1l>>,Phase::Geometry::Scene const&,Phase::SpatialModeler::RayTracerState &)::$_2::__invoke);
  if ((*(v5 + 972) & 1) == 0)
  {
    v52 = v137.f32[1];
    v51 = Phase::SpatialModeler::TRAP::TP(v51);
    if (v52 >= v51[126])
    {
      v53 = **(Phase::Logger::GetInstance(v51) + 1264);
      v54 = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);
      if (v54)
      {
        *buf = 136315394;
        *&buf[4] = "Sentinel.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 82;
        _os_log_impl(&dword_23A302000, v53, OS_LOG_TYPE_DEFAULT, "%25s:%-5d TRAP initialized the current reverb time", buf, 0x12u);
      }

      v51 = Phase::SpatialModeler::TRAP::TP(v54);
      v55 = HIDWORD(v208);
      memset(buf, 0, sizeof(buf));
      v226 = 0u;
      v227 = 0u;
      v228 = 0u;
      v229 = 0u;
      memset(v230, 0, 28);
      *&v230[28] = HIDWORD(v208);
      if (HIDWORD(v208))
      {
        v56 = v51[113];
        v57 = buf;
        v58 = v207;
        do
        {
          v59 = v58->f32[0];
          v58 = (v58 + 4);
          *v57 = v56 * v59;
          v57 += 4;
          --v55;
        }

        while (v55);
      }

      v195 = v228;
      v196 = v229;
      v197 = *v230;
      v198 = *&v230[16];
      v191 = *buf;
      v192 = *&buf[16];
      v193 = v226;
      v194 = v227;
      *(v5 + 972) = 1;
    }
  }

  v60 = *(v5 + 968);
  if (v60 < v38)
  {
    *(v5 + 968) = v38;
    v60 = v38;
  }

  v62 = Phase::SpatialModeler::TRAP::CalculateRateLimitingConfidenceWithRoomChange(v51, v190, v60);
  v63 = (a2 + 21040);
  v64 = *(a1 + 752);
  if (v64 <= 0.0)
  {
    v228 = v170;
    v229 = v171;
    *v230 = v172;
    *&v230[16] = v173;
    *buf = v166;
    *&buf[16] = v167;
    v226 = v168;
    v227 = v169;
LABEL_42:
    *(v5 + 968) = 0;
    goto LABEL_43;
  }

  v65 = 0;
  v66 = 0;
  memset(v230, 0, 28);
  v229 = 0u;
  v228 = 0u;
  v227 = 0u;
  v226 = 0u;
  memset(buf, 0, sizeof(buf));
  *&v230[28] = 10;
LABEL_28:
  v67 = v38;
  v68 = a1;
  v69 = v66;
  do
  {
    v70 = *(&v191 + v69);
    v71 = *(&v166 + v69) - v70;
    v72 = a3;
    if (v71 < 0.0)
    {
      v72 = -a3;
    }

    v73 = (v62 * v70) * (powf(1.2, v72 / v64) + -1.0);
    if (v71 >= 0.0)
    {
      if (v71 > v73)
      {
LABEL_37:
        *&buf[4 * v69] = v70 + v73;
        v66 = v69 + 1;
        v65 = 1;
        v49 = v69 == 9;
        a1 = v68;
        v38 = v67;
        if (v49)
        {
          goto LABEL_43;
        }

        goto LABEL_28;
      }
    }

    else if (v71 < v73)
    {
      goto LABEL_37;
    }

    *&buf[4 * v69++] = v70 + v71;
  }

  while (v69 != 10);
  a1 = v68;
  v38 = v67;
  if ((v65 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_43:
  v74 = 0;
  v75 = *(a1 + 744);
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  memset(v136, 0, 28);
  *&v136[28] = 10;
  do
  {
    v76 = *(a2 + 336 + v74);
    v77 = v75;
    if (v76 > 0.0)
    {
      v77 = fminf(0.15811 / (v76 * 4.0), v75);
    }

    v78 = *&buf[v74];
    v61 = Phase::SpatialModeler::TRAP::TP(v61);
    *(&v130 + v74) = fminf(fmaxf(v78, v61[100]), v77);
    v74 += 4;
  }

  while (v74 != 40);
  v79 = v135;
  *(a2 + 21104) = v134;
  *(a2 + 21120) = v79;
  v80 = *&v136[16];
  *(a2 + 21136) = *v136;
  *(a2 + 21152) = v80;
  v81 = v131;
  *v63 = v130;
  *(a2 + 21056) = v81;
  v82 = v133;
  *(a2 + 21072) = v132;
  *(a2 + 21088) = v82;
  result = Phase::SpatialModeler::TRAP::TP(v61);
  if (result[128] > 0.0)
  {
    if ((atomic_load_explicit(&_MergedGlobals_20, memory_order_acquire) & 1) == 0)
    {
      v128 = __cxa_guard_acquire(&_MergedGlobals_20);
      if (v128)
      {
        qword_27DF97BA0 = ((1.0 / *(Phase::SpatialModeler::TRAP::TP(v128) + 128)) * 24000000.0);
        unk_27DF97BA8 = 0;
        dword_27DF97BB0 = 0;
        __cxa_guard_release(&_MergedGlobals_20);
      }
    }

    result = Phase::Throttle::ShouldFire(&qword_27DF97BA0, 0);
    if (result)
    {
      v84 = v139;
      *(v5 + 3192) = v140;
      v85 = v137.i32[1];
      *(v5 + 3208) = v137.i32[0];
      *(v5 + 3212) = v138;
      *(v5 + 3216) = *(v5 + 944);
      *(v5 + 3228) = v85;
      *(v5 + 3232) = v84;
      *(v5 + 3236) = *(v5 + 556);
      *(v5 + 3240) = v38;
      *(v5 + 3252) = *(v5 + 968);
      *(v5 + 3256) = v62;
      *(a2 + 24112) = *(a2 + 20144);
      *(a2 + 24096) = *(a2 + 20128);
      *(a2 + 24080) = *(a2 + 20112);
      *(a2 + 24064) = *(a2 + 20096);
      *(a2 + 24048) = *(a2 + 20080);
      *(a2 + 24032) = *(a2 + 20064);
      *(a2 + 24016) = *(a2 + 20048);
      *(a2 + 24000) = *(a2 + 20032);
      v86 = *(a2 + 20160);
      v87 = *(a2 + 20176);
      v88 = *(a2 + 20192);
      *(a2 + 24176) = *(a2 + 20208);
      *(a2 + 24160) = v88;
      *(a2 + 24144) = v87;
      *(a2 + 24128) = v86;
      v89 = *(a2 + 20224);
      v90 = *(a2 + 20240);
      v91 = *(a2 + 20256);
      *(a2 + 24240) = *(a2 + 20272);
      *(a2 + 24224) = v91;
      *(a2 + 24208) = v90;
      *(a2 + 24192) = v89;
      v92 = *(a2 + 21168);
      v93 = *(a2 + 21184);
      v94 = *(a2 + 21200);
      *(a2 + 24304) = *(a2 + 21216);
      *(a2 + 24288) = v94;
      *(a2 + 24272) = v93;
      *(a2 + 24256) = v92;
      v95 = *(a2 + 21232);
      v96 = *(a2 + 21248);
      v97 = *(a2 + 21264);
      *(a2 + 24368) = *(a2 + 21280);
      *(a2 + 24352) = v97;
      *(a2 + 24336) = v96;
      *(a2 + 24320) = v95;
      v98 = *(a2 + 21296);
      v99 = *(a2 + 21312);
      v100 = *(a2 + 21328);
      *(a2 + 24432) = *(a2 + 21344);
      *(a2 + 24416) = v100;
      *(a2 + 24400) = v99;
      *(a2 + 24384) = v98;
      v101 = *(a2 + 21360);
      v102 = *(a2 + 21376);
      v103 = *(a2 + 21392);
      *(a2 + 24496) = *(a2 + 21408);
      *(a2 + 24480) = v103;
      *(a2 + 24464) = v102;
      *(a2 + 24448) = v101;
      v104 = *(a2 + 20288);
      v105 = *(a2 + 20304);
      v106 = *(a2 + 20320);
      *(a2 + 24560) = *(a2 + 20336);
      *(a2 + 24544) = v106;
      *(a2 + 24528) = v105;
      *(a2 + 24512) = v104;
      v107 = *(a2 + 20352);
      v108 = *(a2 + 20368);
      v109 = *(a2 + 20384);
      *(a2 + 24624) = *(a2 + 20400);
      *(a2 + 24608) = v109;
      *(a2 + 24592) = v108;
      *(a2 + 24576) = v107;
      v110 = v142;
      v111 = v143;
      v112 = v144;
      *(a2 + 24688) = v145;
      *(a2 + 24672) = v112;
      *(a2 + 24656) = v111;
      *(a2 + 24640) = v110;
      v113 = v146;
      v114 = v147;
      v115 = v148;
      *(a2 + 24752) = v149;
      *(a2 + 24736) = v115;
      *(a2 + 24720) = v114;
      *(a2 + 24704) = v113;
      v116 = v166;
      v117 = v167;
      v118 = v168;
      *(a2 + 24816) = v169;
      *(a2 + 24800) = v118;
      *(a2 + 24784) = v117;
      *(a2 + 24768) = v116;
      v119 = v170;
      v120 = v171;
      v121 = v172;
      *(a2 + 24880) = v173;
      *(a2 + 24864) = v121;
      *(a2 + 24848) = v120;
      *(a2 + 24832) = v119;
      v122 = *v63;
      v123 = *(a2 + 21056);
      v124 = *(a2 + 21072);
      *(a2 + 24944) = *(a2 + 21088);
      *(a2 + 24928) = v124;
      *(a2 + 24912) = v123;
      *(a2 + 24896) = v122;
      v125 = *(a2 + 21104);
      v126 = *(a2 + 21120);
      v127 = *(a2 + 21136);
      *(a2 + 25008) = *(a2 + 21152);
      *(a2 + 24992) = v127;
      *(a2 + 24976) = v126;
      *(a2 + 24960) = v125;
      *(a2 + 25024) = *(Phase::SpatialModeler::TRAP::TP(result) + 66);
      return Phase::SpatialModeler::RoomSimulationLogging::logTRAP(a2 + 23664);
    }
  }

  return result;
}

float Phase::SpatialModeler::TRAP::Sentinel::Process(std::chrono::duration<float,std::ratio<1l,1l>>,Phase::Geometry::Scene const&,Phase::SpatialModeler::RayTracerState &)::$_1::__invoke(Phase::SpatialModeler::TRAP *a1, float a2)
{
  v3 = *(Phase::SpatialModeler::TRAP::TP(a1) + 107);

  return powf(a2, v3);
}

float Phase::SpatialModeler::TRAP::Sentinel::Process(std::chrono::duration<float,std::ratio<1l,1l>>,Phase::Geometry::Scene const&,Phase::SpatialModeler::RayTracerState &)::$_2::__invoke(Phase::SpatialModeler::TRAP *a1, float a2)
{
  v3 = *(Phase::SpatialModeler::TRAP::TP(a1) + 108);

  return powf(a2, v3);
}

uint64_t Phase::Controller::SessionManager::SessionManager(uint64_t a1, void *a2, uint64_t a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  if (v5)
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [v5 sessionInterface];

      if (v6)
      {
        v7 = [v5 sessionInterface];
        v8 = *a1;
        *a1 = v7;

        v35[0] = 0;
        v35[1] = v35;
        v35[2] = 0x2020000000;
        v35[3] = *(a1 + 16);
        v9 = *a1;
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = ___ZN5Phase10Controller14SessionManagerC2EPU24objcproto13PHASEPlatform11objc_objectPNS0_12VoiceManagerE_block_invoke;
        v34[3] = &unk_278B4FAE0;
        v34[4] = v35;
        v34[5] = a1;
        v10 = [v9 registerActivateAudioSessionBlock:v34];
        if ((v10 & 1) == 0)
        {
          v11 = **(Phase::Logger::GetInstance(v10) + 976);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v37 = "SessionManager.mm";
            v38 = 1024;
            v39 = 72;
            v40 = 2048;
            v41 = a1;
            _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d impl@%p: Failed to register audio session activation block.", buf, 0x1Cu);
          }
        }

        v12 = *a1;
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = ___ZN5Phase10Controller14SessionManagerC2EPU24objcproto13PHASEPlatform11objc_objectPNS0_12VoiceManagerE_block_invoke_2;
        v33[3] = &unk_278B4FB08;
        v33[4] = v35;
        v13 = [v12 registerFadeClientsInAudioSessionBlock:v33];
        if ((v13 & 1) == 0)
        {
          v14 = **(Phase::Logger::GetInstance(v13) + 976);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v37 = "SessionManager.mm";
            v38 = 1024;
            v39 = 82;
            v40 = 2048;
            v41 = a1;
            _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d impl@%p: Failed to register audio session fade block.", buf, 0x1Cu);
          }
        }

        if (objc_opt_respondsToSelector())
        {
          v15 = *a1;
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = ___ZN5Phase10Controller14SessionManagerC2EPU24objcproto13PHASEPlatform11objc_objectPNS0_12VoiceManagerE_block_invoke_6;
          v32[3] = &__block_descriptor_40_e14_i20__0I8B12f16l;
          v32[4] = a1;
          v16 = [v15 registerMuteInputClientsInAudioSessionBlock:v32];
          if ((v16 & 1) == 0)
          {
            v17 = **(Phase::Logger::GetInstance(v16) + 976);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v37 = "SessionManager.mm";
              v38 = 1024;
              v39 = 104;
              v40 = 2048;
              v41 = a1;
              _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d impl@%p: Failed to register audio session mute input block.", buf, 0x1Cu);
            }
          }
        }

        v18 = _os_feature_enabled_impl();
        if (v18)
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_23;
          }

          v19 = [*a1 sessionVolumeInterface];
          v20 = v19 == 0;

          if (v20)
          {
            goto LABEL_23;
          }

          v21 = [*a1 sessionVolumeInterface];
          v22 = *(a1 + 8);
          *(a1 + 8) = v21;

          v23 = *(a1 + 8);
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = ___ZN5Phase10Controller14SessionManagerC2EPU24objcproto13PHASEPlatform11objc_objectPNS0_12VoiceManagerE_block_invoke_10;
          v31[3] = &__block_descriptor_40_e28_B16__0__PHASEVolumeCommand_8l;
          v31[4] = a1;
          v24 = [v23 registerVolumeChangedNotificationBlock:v31];
          if (v24)
          {
            goto LABEL_23;
          }

          v25 = **(Phase::Logger::GetInstance(v24) + 976);
          if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          *buf = 136315650;
          v37 = "SessionManager.mm";
          v38 = 1024;
          v39 = 126;
          v40 = 2048;
          v41 = a1;
          v26 = "%25s:%-5d impl@%p: Failed to register audio session volume changed notification block.";
          v27 = v25;
          v28 = OS_LOG_TYPE_ERROR;
        }

        else
        {
          v29 = **(Phase::Logger::GetInstance(v18) + 976);
          if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
LABEL_23:
            _Block_object_dispose(v35, 8);
            goto LABEL_24;
          }

          *buf = 136315650;
          v37 = "SessionManager.mm";
          v38 = 1024;
          v39 = 111;
          v40 = 2048;
          v41 = a1;
          v26 = "%25s:%-5d impl@%p: audio session volume feature disabled";
          v27 = v29;
          v28 = OS_LOG_TYPE_DEFAULT;
        }

        _os_log_impl(&dword_23A302000, v27, v28, v26, buf, 0x1Cu);
        goto LABEL_23;
      }
    }
  }

LABEL_24:

  return a1;
}

void sub_23A4F2A98(_Unwind_Exception *a1)
{
  _Block_object_dispose((v4 - 144), 8);
  objc_destroyWeak(v3);

  _Unwind_Resume(a1);
}

void ___ZN5Phase10Controller14SessionManagerC2EPU24objcproto13PHASEPlatform11objc_objectPNS0_12VoiceManagerE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 40);
  v6 = Phase::Controller::VoiceManager::Implementation::ActivateAudioSession(**(*(*(a1 + 32) + 8) + 24), a2, a3, 1);
  if (HIDWORD(v6))
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (!v7)
  {
    v8 = **(Phase::Logger::GetInstance(v6) + 976);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136316418;
      v12 = "SessionManager.mm";
      v13 = 1024;
      v14 = 61;
      v15 = 2048;
      v16 = v5;
      v17 = 1024;
      v18 = a2;
      v19 = 1024;
      v20 = a3;
      v21 = 1024;
      v22 = 0;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d impl@%p: ActivateAudioSession(token=0x%x, active=%i) returned %i", &v11, 0x2Eu);
    }
  }

  WeakRetained = objc_loadWeakRetained((v5 + 24));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setExternalInputStreamSession:a2 isActive:a3];
  }
}

uint64_t ___ZN5Phase10Controller14SessionManagerC2EPU24objcproto13PHASEPlatform11objc_objectPNS0_12VoiceManagerE_block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    *&v8 = a4;
    v10 = [WeakRetained setExternalInputStreamSessionMute:a2 isMuted:a3 fadeTimeInSeconds:v8];
  }

  else
  {
    v11 = **(Phase::Logger::GetInstance(0) + 448);
    v10 = 0;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315394;
      v14 = "SessionManager.mm";
      v15 = 1024;
      v16 = 93;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ignoring mute input notification because external stream manager was deallocated", &v13, 0x12u);
      v10 = 0;
    }
  }

  return v10;
}

BOOL ___ZN5Phase10Controller14SessionManagerC2EPU24objcproto13PHASEPlatform11objc_objectPNS0_12VoiceManagerE_block_invoke_10(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 description];
  v5 = **(Phase::Logger::GetInstance(v4) + 976);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "SessionManager.mm";
    *&buf[12] = 1024;
    *&buf[14] = 360;
    *&buf[18] = 2048;
    *&buf[20] = v2;
    *&buf[28] = 2080;
    *&buf[30] = [(Phase::Logger *)v4 UTF8String];
    _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d impl@%p: --> volume notification - %s", buf, 0x26u);
  }

  if (!v3)
  {
    std::terminate();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v6 = v3;
      v7 = [v6 volume];
      v8 = [v6 audioSessionToken];

      v9 = v7;
      if (v9)
      {
        v10 = v9;
        v11 = [v10 unit];
        if (v11)
        {
          v12 = **(Phase::Logger::GetInstance(v11) + 976);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = [v10 unit];
            [v10 value];
            *buf = 136316162;
            *&buf[4] = "SessionManager.mm";
            *&buf[12] = 1024;
            *&buf[14] = 381;
            *&buf[18] = 2048;
            *&buf[20] = v2;
            *&buf[28] = 2048;
            *&buf[30] = v13;
            *&buf[38] = 2048;
            v49 = v14;
            _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d impl@%p: unimplemented volume unit %ld, value %f", buf, 0x30u);
          }

          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
        }

        else
        {
          [v10 value];
          v27 = v26;
          [v10 raw];
          v18 = v27;
          v15 = v28 << 32;
          v16 = [v10 muted];
          v17 = 0x100000000;
        }

        AudioSessionVolume = v18 | v15;
        goto LABEL_21;
      }
    }

    else
    {
      v8 = 0;
    }

    AudioSessionVolume = Phase::Controller::SessionManager::GetAudioSessionVolume(*&v2, v8, 1);
    v17 = v25;
    v10 = 0;
    v16 = v25;
    LOBYTE(v18) = AudioSessionVolume;
LABEL_21:
    v29 = (AudioSessionVolume & 0xFFFFFFFFFFFFFF00 | v18);
    *v41 = v29;
    *&v41[8] = v16;
    v41[12] = BYTE4(v17);
    if ((v17 & 0x100000000) != 0)
    {
      v22 = Phase::Controller::SubmixSystem::SetAudioSessionLevel(**(*&v2 + 16) + 224, v8, v41, 1);
      WeakRetained = objc_loadWeakRetained((*&v2 + 24));
      v34 = WeakRetained;
      if (WeakRetained)
      {
        if ((v41[12] & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        LODWORD(v33) = *&v41[4];
        [WeakRetained onSessionVolume:v8 volume:{v33, *v41, *&v41[8]}];
      }
    }

    else
    {
      v30 = **(Phase::Logger::GetInstance(v29) + 976);
      v31 = v30;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "SessionManager.mm";
        *&buf[12] = 1024;
        *&buf[14] = 442;
        *&buf[18] = 2048;
        *&buf[20] = v2;
        *&buf[28] = 1024;
        *&buf[30] = v8;
        _os_log_impl(&dword_23A302000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d impl@%p: error: could not get/apply volume for session 0x%x", buf, 0x22u);
      }

      v22 = 0;
    }

LABEL_29:

    goto LABEL_30;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v3;
    v19 = *(*&v2 + 16);
    v20 = [v10 volumeCategory];
    v21 = [v10 volumeMode];
    v22 = Phase::Controller::SubmixSystem::SetAudioSessionLevelInVolumeCategoryAndMode((*v19 + 224), v20, v21, 1);

    v23 = objc_loadWeakRetained((*&v2 + 24));
    if (v23)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZN5Phase10Controller14SessionManager32ProcessVolumeChangedNotificationEP18PHASEVolumeCommand_block_invoke;
      *&buf[24] = &unk_278B4FB90;
      v49 = v2;
      *&buf[32] = v10;
      [v23 onSessionVolume:buf];
    }

    goto LABEL_29;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v22 = Phase::Controller::SubmixSystem::SetAudioSessionLevelOnAllSessions((**(*&v2 + 16) + 224), 1);
    v40 = objc_loadWeakRetained((*&v2 + 24));
    v10 = v40;
    if (v40)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZN5Phase10Controller14SessionManager32ProcessVolumeChangedNotificationEP18PHASEVolumeCommand_block_invoke_2;
      *&buf[24] = &__block_descriptor_40_e8_f12__0I8l;
      *&buf[32] = v2;
      [v40 onSessionVolume:buf];
    }

    goto LABEL_29;
  }

  v22 = 0;
LABEL_30:
  v36 = **(Phase::Logger::GetInstance(isKindOfClass) + 976);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = v4;
    v38 = [(Phase::Logger *)v4 UTF8String];
    *v41 = 136316162;
    *&v41[4] = "SessionManager.mm";
    *&v41[12] = 1024;
    *&v41[14] = 475;
    v42 = 2048;
    v43 = v2;
    v44 = 2080;
    v45 = v38;
    v46 = 2048;
    v47 = v22;
    _os_log_impl(&dword_23A302000, v36, OS_LOG_TYPE_DEFAULT, "%25s:%-5d impl@%p: <-- volume notification - %s, submixes %zu", v41, 0x30u);
  }

  return v22 != 0;
}

void Phase::Controller::SessionManager::~SessionManager(id *this)
{
  objc_destroyWeak(this + 3);
}

BOOL Phase::Controller::SessionManager::SetSessionPlayState(void **a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6, int32x2_t *a7)
{
  v44 = *MEMORY[0x277D85DE8];
  if (!a2 || (v9 = *a1) == 0)
  {
    if (!a7)
    {
      return 1;
    }

    v20 = 1065353216;
LABEL_18:
    *a7 = v20;
    return 1;
  }

  v11 = a5;
  v13 = a2;
  v14 = a4 & 3 | (((a4 >> 2) & 1) << 6) | (32 * ((a4 >> 3) & 1));
  v24[0] = 0;
  if (a6)
  {
    v15 = [v9 setClientStateFromCallbackOnSession:a2 clientToken:a3 modes:v14 state:a5 outDuckingInfo:v24];
    if ((v15 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  v15 = [v9 setClientStateOnSession:a2 clientToken:a3 modes:v14 state:a5 outDuckingInfo:v24];
  if (v15)
  {
LABEL_12:
    v21 = **(Phase::Logger::GetInstance(v15) + 976);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = Phase::Controller::SessionManager::SetSessionPlayState(unsigned int,void *,unsigned int,AVAudioSessionClientPlayState,BOOL,Phase::Controller::SessionManager::DuckingInfo *)::statesStrings[v11];
      v27 = "SessionManager.mm";
      v23 = "";
      v29 = 187;
      *buf = 136317186;
      v28 = 1024;
      if (a6)
      {
        v23 = ", from callback";
      }

      v30 = 2048;
      v31 = a1;
      v32 = 2048;
      v33 = a3;
      v34 = 2080;
      v35 = v22;
      v36 = 1024;
      v37 = v14;
      v38 = 1024;
      v39 = v13;
      v40 = 2080;
      v41 = v23;
      v42 = 1024;
      v43 = v24[0];
      _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d impl@%p: Set client token %p state %s for modes 0x%x on session 0x%x%s - obtainedFromCM %d", buf, 0x4Cu);
    }

    if (!a7)
    {
      return 1;
    }

    v20 = vrev64_s32(v25);
    goto LABEL_18;
  }

LABEL_5:
  v16 = **(Phase::Logger::GetInstance(v15) + 976);
  result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v18 = Phase::Controller::SessionManager::SetSessionPlayState(unsigned int,void *,unsigned int,AVAudioSessionClientPlayState,BOOL,Phase::Controller::SessionManager::DuckingInfo *)::statesStrings[v11];
    *buf = 136316930;
    v27 = "SessionManager.mm";
    v19 = "";
    v28 = 1024;
    v29 = 200;
    if (a6)
    {
      v19 = ", from callback";
    }

    v30 = 2048;
    v31 = a1;
    v32 = 2048;
    v33 = a3;
    v34 = 2080;
    v35 = v18;
    v36 = 1024;
    v37 = v14;
    v38 = 1024;
    v39 = v13;
    v40 = 2080;
    v41 = v19;
    _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d impl@%p: Error setting client token %p state %s for modes 0x%x on session 0x%x%s", buf, 0x46u);
    return 0;
  }

  return result;
}

uint64_t Phase::Controller::SessionManager::GetSessionInputMuteState(id *this, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v21 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v5 = 0;
    return v3 | (v5 << 8);
  }

  v5 = 0;
  if (*this)
  {
    v8 = objc_opt_respondsToSelector();
    if (v8)
    {
      v9 = [*this getInputMuteStateForSession:a2 fromCallback:a3];
      v10 = v9;
      if (v9)
      {
        v3 = [v9 BOOLValue];

        v5 = 1;
        return v3 | (v5 << 8);
      }
    }

    else
    {
      v11 = **(Phase::Logger::GetInstance(v8) + 976);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315906;
        v14 = "SessionManager.mm";
        v15 = 1024;
        v16 = 233;
        v17 = 2048;
        v18 = this;
        v19 = 1024;
        v20 = a2;
        _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d impl@%p: Error getting input muted for session 0x%x", &v13, 0x22u);
      }
    }

    v3 = 0;
    v5 = 0;
  }

  return v3 | (v5 << 8);
}

void Phase::Controller::SessionManager::SetSessionInputMuteState(void **this, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v39 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v6 = *this;
    if (v6)
    {
      v8 = a4;
      v10 = a2;
      if (a5)
      {
        v11 = [v6 setInputMuteStateFromCallbackOnSession:a2 clientToken:a3 isMuted:a4];
        if ((v11 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v11 = [v6 setInputMuteStateOnSession:a2 clientToken:a3 isMuted:a4];
        if (!v11)
        {
LABEL_5:
          v12 = **(Phase::Logger::GetInstance(v11) + 976);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            if (a5)
            {
              v13 = 15;
            }

            else
            {
              v13 = 0;
            }

            v24 = v13;
            v14 = __p;
            if (a5)
            {
              qmemcpy(__p, ", from callback", sizeof(__p));
              v14 = &v23;
            }

            *v14 = 0;
            v15 = "False";
            v26 = "SessionManager.mm";
            *buf = 136316674;
            v27 = 1024;
            if (v8)
            {
              v15 = "True";
            }

            v28 = 270;
            v29 = 2048;
            v30 = this;
            v31 = 2048;
            v32 = a3;
            v33 = 2080;
            v34 = v15;
            v35 = 1024;
            v36 = v10;
            v37 = 2080;
            v38 = __p;
            v16 = "%25s:%-5d impl@%p: Error setting client token %p input muted %s on session 0x%x%s";
            v17 = v12;
            v18 = OS_LOG_TYPE_ERROR;
LABEL_24:
            _os_log_impl(&dword_23A302000, v17, v18, v16, buf, 0x40u);
            if (v24 < 0)
            {
              operator delete(*__p);
            }

            goto LABEL_26;
          }

          goto LABEL_26;
        }
      }

      v12 = **(Phase::Logger::GetInstance(v11) + 976);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        if (a5)
        {
          v19 = 15;
        }

        else
        {
          v19 = 0;
        }

        v24 = v19;
        v20 = __p;
        if (a5)
        {
          qmemcpy(__p, ", from callback", sizeof(__p));
          v20 = &v23;
        }

        *v20 = 0;
        v21 = "False";
        v26 = "SessionManager.mm";
        *buf = 136316674;
        v27 = 1024;
        if (v8)
        {
          v21 = "True";
        }

        v28 = 264;
        v29 = 2048;
        v30 = this;
        v31 = 2048;
        v32 = a3;
        v33 = 2080;
        v34 = v21;
        v35 = 1024;
        v36 = v10;
        v37 = 2080;
        v38 = __p;
        v16 = "%25s:%-5d impl@%p: Set client token %p input muted %s on session 0x%x%s";
        v17 = v12;
        v18 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_24;
      }

LABEL_26:
    }
  }
}

unint64_t Phase::Controller::SessionManager::GetAudioSessionVolume(Phase::Controller::SessionManager *this, uint64_t a2, int a3)
{
  result = 0;
  v32 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = a2;
    if (*(this + 1))
    {
      v7 = [[PHASEVolumeCommandForSession alloc] initWithSessionToken:a2];
      v8 = *(this + 1);
      if (a3)
      {
        [v8 volumeForCommandFromCallback:v7];
      }

      else
      {
        [v8 volumeForCommand:v7];
      }
      v9 = ;
      v10 = v9;
      if (v9)
      {
        [v9 value];
        v12 = v11;
        [v10 raw];
        v13 = v12;
        v15 = v14 << 32;
        [v10 muted];
      }

      else
      {
        v16 = **(Phase::Logger::GetInstance(0) + 976);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          if (a3)
          {
            v17 = 15;
          }

          else
          {
            v17 = 0;
          }

          v21 = v17;
          v18 = __p;
          if (a3)
          {
            v18 = &v20;
            qmemcpy(__p, ", from callback", sizeof(__p));
          }

          *v18 = 0;
          *buf = 136316162;
          v23 = "SessionManager.mm";
          v24 = 1024;
          v25 = 305;
          v26 = 2048;
          v27 = this;
          v28 = 1024;
          v29 = v5;
          v30 = 2080;
          v31 = __p;
          _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d impl@%p: could not get volume for session 0x%x%s", buf, 0x2Cu);
          if (v21 < 0)
          {
            operator delete(*__p);
          }
        }

        v15 = 0;
        v13 = 0;
      }

      return v13 | v15;
    }
  }

  return result;
}
void Phase::SpatialModeler::DirectivityHistogram::updateWasHitVector(Phase::SpatialModeler::DirectivityHistogram *this)
{
  if (*(this + 6))
  {
    v2 = 0;
    do
    {
      v3 = *(this + 7);
      v4 = (*(this + 1) + 4 * v2 * v3);
      __C = -3.4028e38;
      vDSP_maxv(v4, 1, &__C, v3);
      *(*(this + 11) + 4 * v2++) = __C > 1.0e-22;
    }

    while (v2 < *(this + 6));
  }
}

void **Phase::SpatialModeler::DirectivityHistogram::operator=(void **this, uint64_t a2)
{
  if (a2 != this)
  {
    Phase::SpatialModeler::EnergyHistogram::operator=(this, a2);
    *(this + 20) = *(a2 + 80);
    std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(this + 11, *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 2);
    Phase::SpatialModeler::DirectionalHistogramData::operator=(this + 14, a2 + 112);
  }

  return this;
}

uint64_t Phase::SpatialModeler::DirectivityHistogram::operator+=(uint64_t a1, uint64_t a2)
{
  Phase::SpatialModeler::EnergyHistogram::operator+=(a1, a2);
  v4 = *(a1 + 88);
  v5 = *(a1 + 96) - v4;
  if (v5)
  {
    v6 = v5 >> 2;
    v7 = *(a2 + 88);
    v8 = (*(a2 + 96) - v7) >> 2;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    do
    {
      if (!v8)
      {
        break;
      }

      if (*v7 == 1)
      {
        *v4 = 1;
      }

      ++v7;
      ++v4;
      --v8;
      --v6;
    }

    while (v6);
  }

  v9 = *(a2 + 112);
  if (v9 >= *(a1 + 112))
  {
    v9 = *(a1 + 112);
  }

  if (v9)
  {
    LODWORD(v10) = 73 * v9;
    v11 = *(a2 + 120);
    v12 = *(a1 + 120);
    if (v10 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v10;
    }

    do
    {
      v13 = *v11++;
      *v12 = v13 + *v12;
      ++v12;
      --v10;
    }

    while (v10);
  }

  *(a1 + 80) = -1;
  return a1;
}

void sub_23A3946E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v9 = __cxa_begin_catch(exception_object);
    v10 = **(Phase::Logger::GetInstance(v9) + 1264);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 136315394;
      *(&a9 + 4) = "DirectivityHistogram.cpp";
      WORD6(a9) = 1024;
      *(&a9 + 14) = 443;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot add other histogram because of a size mismatch.\n", &a9, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x23A3946B0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::SpatialModeler::DirectivityHistogram::MultiplyAdd(Phase::SpatialModeler::DirectivityHistogram *this, float **a2, float a3)
{
  result = Phase::SpatialModeler::EnergyHistogram::MultiplyAdd(this, a2, a3);
  v7 = *(this + 11);
  v8 = *(this + 12) - v7;
  if (v8)
  {
    v9 = v8 >> 2;
    v10 = a2[11];
    v11 = (a2[12] - v10) >> 2;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    do
    {
      if (!v11)
      {
        break;
      }

      v12 = *v10;
      v10 += 4;
      *v7++ |= v12;
      --v11;
      --v9;
    }

    while (v9);
  }

  v13 = *(a2 + 28);
  if (v13 >= *(this + 28))
  {
    v13 = *(this + 28);
  }

  if (v13)
  {
    LODWORD(v14) = 73 * v13;
    v15 = a2[15];
    v16 = *(this + 15);
    if (v14 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v14;
    }

    do
    {
      v17 = *v15++;
      *v16 = *v16 + (v17 * a3);
      ++v16;
      --v14;
    }

    while (v14);
  }

  *(this + 20) = -1;
  return result;
}

void sub_23A39488C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v9 = __cxa_begin_catch(exception_object);
    v10 = **(Phase::Logger::GetInstance(v9) + 1264);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 136315394;
      *(&a9 + 4) = "DirectivityHistogram.cpp";
      WORD6(a9) = 1024;
      *(&a9 + 14) = 474;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot add other histogram because of a size mismatch.\n", &a9, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x23A39485CLL);
  }

  _Unwind_Resume(exception_object);
}

void *Phase::SpatialModeler::DirectivityHistogram::operator*=(void *a1, double a2)
{
  v2 = *&a2;
  v4 = *(Phase::SpatialModeler::EnergyHistogram::operator*=(a1, a2) + 112);
  if (v4)
  {
    v5 = 73 * v4;
    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    v7 = (v6 + 3) & 0x1FFFFFFFCLL;
    v8 = vdupq_n_s64(v6 - 1);
    v9 = xmmword_23A554B60;
    v10 = xmmword_23A554B70;
    v11 = (a1[15] + 8);
    v12 = vdupq_n_s64(4uLL);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v8, v10));
      if (vuzp1_s16(v13, *v8.i8).u8[0])
      {
        *(v11 - 2) = *(v11 - 2) * v2;
      }

      if (vuzp1_s16(v13, *&v8).i8[2])
      {
        *(v11 - 1) = *(v11 - 1) * v2;
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v9))).i32[1])
      {
        *v11 = *v11 * v2;
        v11[1] = v11[1] * v2;
      }

      v9 = vaddq_s64(v9, v12);
      v10 = vaddq_s64(v10, v12);
      v11 += 4;
      v7 -= 4;
    }

    while (v7);
  }

  if (v2 == 0.0)
  {
    v14 = a1[11];
    v15 = a1[12] - v14;
    if (v15 >= 1)
    {
      bzero(v14, v15);
    }
  }

  return a1;
}

uint64_t Phase::SpatialModeler::DirectivityHistogram::operator/=(uint64_t a1, double a2)
{
  v2 = 1.0 / *&a2;
  *&a2 = 1.0 / *&a2;
  result = Phase::SpatialModeler::EnergyHistogram::operator*=(a1, a2);
  v4 = *(result + 112);
  if (v4)
  {
    v5 = 73 * v4;
    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    v7 = (v6 + 3) & 0x1FFFFFFFCLL;
    v8 = vdupq_n_s64(v6 - 1);
    v9 = xmmword_23A554B60;
    v10 = xmmword_23A554B70;
    v11 = (*(result + 120) + 8);
    v12 = vdupq_n_s64(4uLL);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v8, v10));
      if (vuzp1_s16(v13, *v8.i8).u8[0])
      {
        *(v11 - 2) = v2 * *(v11 - 2);
      }

      if (vuzp1_s16(v13, *&v8).i8[2])
      {
        *(v11 - 1) = v2 * *(v11 - 1);
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v9))).i32[1])
      {
        *v11 = v2 * *v11;
        v11[1] = v2 * v11[1];
      }

      v9 = vaddq_s64(v9, v12);
      v10 = vaddq_s64(v10, v12);
      v11 += 4;
      v7 -= 4;
    }

    while (v7);
  }

  return result;
}

void *Phase::SpatialModeler::DirectPathTransmissionDebugger::BeginTrackingSource(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[2] = v6;
  v4 = std::__tree<std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>,std::__map_value_compare<Phase::Handle64,std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>,std::less<Phase::Handle64>,true>,std::allocator<std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>>>::__emplace_unique_key_args<Phase::Handle64,std::piecewise_construct_t const&,std::tuple<Phase::Handle64 const&>,std::tuple<>>(a1 + 8, v6);
  return std::function<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>::operator=(v4 + 7, a3);
}

void *std::function<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t Phase::SpatialModeler::DirectPathTransmissionDebugger::EndTrackingSource(Phase::SpatialModeler::DirectPathTransmissionDebugger *this, Handle64 a2)
{
  v4 = *(this + 2);
  result = this + 16;
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
      return std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>::operator=[abi:ne200100](v5 + 56);
    }
  }

  return result;
}

void *Phase::SpatialModeler::DirectPathTransmissionDebugger::BeginTrackingAudibleGeometry(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[2] = v6;
  v4 = std::__tree<std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>,std::__map_value_compare<Phase::Handle64,std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>,std::less<Phase::Handle64>,true>,std::allocator<std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>>>::__emplace_unique_key_args<Phase::Handle64,std::piecewise_construct_t const&,std::tuple<Phase::Handle64 const&>,std::tuple<>>(a1 + 8, v6);
  return std::function<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>::operator=(v4 + 11, a3);
}

void *std::function<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t Phase::SpatialModeler::DirectPathTransmissionDebugger::EndTrackingAudibleGeometry(Phase::SpatialModeler::DirectPathTransmissionDebugger *this, Handle64 a2)
{
  v4 = *(this + 2);
  result = this + 16;
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
      return std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>::operator=[abi:ne200100](v5 + 88);
    }
  }

  return result;
}

void *std::__tree<std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>,std::__map_value_compare<Phase::Handle64,std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>,std::less<Phase::Handle64>,true>,std::allocator<std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>>>::__emplace_unique_key_args<Phase::Handle64,std::piecewise_construct_t const&,std::tuple<Phase::Handle64 const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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

uint64_t std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_23A39526C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>::operator=[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_23A3955EC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>::operator=[abi:ne200100](uint64_t a1)
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

void Phase::SpatialModeler::DirectPathTransmissionErrorCategory::message(int a1@<W1>, _BYTE *a2@<X8>)
{
  if (a1 > 7)
  {
    if (a1 == 129)
    {
      v5 = "Scene queries submitted to the Geometry Layer failed";
    }

    else if (a1 == 128)
    {
      v5 = "Cannot generate source points from the SourceEntity";
    }

    else
    {
      v5 = "(unrecognized error)";
    }

    std::string::basic_string[abi:ne200100]<0>(a2, v5);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "Direct path transmission ");
    Phase::SpatialModeler::ModelerErrorMessage(a1, __p, a2);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_23A395740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Phase::SpatialModeler::DirectPathTransmissionErrorCategory::~DirectPathTransmissionErrorCategory(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x23EE864A0);
}

uint64_t (***Phase::SpatialModeler::DirectPathTransmissionImpl::RunCullQuery@<X0>(uint64_t (***result)(void)@<X0>, void *a2@<X1>, uint64_t a3@<X8>))(void)
{
  v4 = a2[11];
  if (!v4 || *v4 != 1)
  {
    result = (**result)(result);
    v13 = 3;
LABEL_16:
    *a3 = v13;
    *(a3 + 8) = result;
    v12 = 2;
    goto LABEL_17;
  }

  v5 = a2[8];
  if (!v5)
  {
    result = (**result)(result);
    v13 = 5;
    goto LABEL_16;
  }

  v6 = *(v4 + 480);
  v7 = *(v5 + 184);
  if (v7 <= v6 || (v8 = *(v5 + 168), v9 = v8 + 24 * v6, *(v9 + 20) != HIDWORD(v6)) || !*v9 || **v9 != 2)
  {
    result = (**result)(result);
    v13 = 7;
    goto LABEL_16;
  }

  v10 = *(v4 + 336);
  if (v7 <= v10 || (v11 = v8 + 24 * v10, *(v11 + 20) != HIDWORD(v10)) || !*v11 || **v11 != 3)
  {
    result = (**result)(result);
    v13 = 6;
    goto LABEL_16;
  }

  *(a2[12] + 8) = 0;
  v12 = 1;
LABEL_17:
  *(a3 + 24) = v12;
  return result;
}

uint64_t Phase::SpatialModeler::DirectPathTransmissionImpl::RunClusterQuery@<X0>(uint64_t (***a1)(void)@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v51[4] = *MEMORY[0x277D85DE8];
  v5 = a2[11];
  if (v5 && *v5 == 3 && (v6 = a2[12]) != 0 && *v6 == 2)
  {
    v7 = a2[8];
    if (v7)
    {
      v8 = *(v5 + 152);
      if (*(v7 + 184) > v8 && (v9 = *(v7 + 168) + 24 * v8, *(v9 + 20) == HIDWORD(v8)) && *v9 && **v9 == 2)
      {
        v10 = *(v5 + 144);
        v44 = 16;
        v45 = v10;
        v46 = a1 + 5;
        v47 = &v45;
        v48 = &v44;
        v43 = a1 + 5;
        Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup,std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::RenderGroup*)#1} const&>(v10, &v46, &v43, &v50);
        v11 = v50;
        v50 = 0;
        v46 = v11;
        std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&v47, v51);
        v49 = v10;
        std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100](&v50);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v51);
        std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::operator=[abi:ne200100]((v6 + 8), &v46);
        *(v6 + 48) = v49;
        std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100](&v46);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v47);
        v12 = *(v5 + 144);
        v44 = 1;
        v45 = v12;
        v46 = a1 + 5;
        v47 = &v45;
        v48 = &v44;
        v43 = a1 + 5;
        Phase::details::AllocArray<BOOL,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(BOOL*)#1} const&>(v12, &v46, &v43, &v50);
        v13 = v50;
        v50 = 0;
        v46 = v13;
        std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&v47, v51);
        v49 = v12;
        std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v50);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v51);
        std::unique_ptr<BOOL [],std::function<void ()(void *)>>::operator=[abi:ne200100]((v6 + 56), &v46);
        *(v6 + 96) = v49;
        std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v46);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v47);
        v14 = *(v5 + 144);
        v44 = 8;
        v45 = v14;
        v46 = a1 + 5;
        v47 = &v45;
        v48 = &v44;
        v43 = a1 + 5;
        Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::SubmixRoutingOutput*)#1} const&>(v14, &v46, &v43, &v50);
        v15 = v50;
        v50 = 0;
        v46 = v15;
        std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&v47, v51);
        v49 = v14;
        std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>>::reset[abi:ne200100](&v50);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v51);
        std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>>::operator=[abi:ne200100]((v6 + 104), &v46);
        *(v6 + 144) = v49;
        std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>>::reset[abi:ne200100](&v46);
        result = std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v47);
        if (!*(v6 + 144))
        {
          v41 = 1;
          goto LABEL_20;
        }

        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = *(v5 + 104);
        while (1)
        {
          v22 = (*(v6 + 104) + v17);
          *v22 = v20;
          v22[1] = 0;
          *(*(v6 + 8) + v18) = *(v21 + v19);
          v23 = *(v5 + 104) + v19;
          v24 = *(v6 + 8) + v18;
          *(v24 + 16) = *(v23 + 144);
          v25 = *(v23 + 16);
          v26 = *(v23 + 32);
          v27 = *(v23 + 64);
          *(v24 + 224) = *(v23 + 48);
          *(v24 + 240) = v27;
          *(v24 + 192) = v25;
          *(v24 + 208) = v26;
          v28 = *(v23 + 80);
          v29 = *(v23 + 96);
          v30 = *(v23 + 128);
          *(v24 + 288) = *(v23 + 112);
          *(v24 + 304) = v30;
          *(v24 + 256) = v28;
          *(v24 + 272) = v29;
          v31 = (*(v5 + 104) + v19);
          v32 = *(v6 + 8) + v18;
          v33 = v31[16];
          v34 = v31[17];
          v35 = v31[15];
          *(v32 + 120) = v31[14];
          *(v32 + 168) = v34;
          *(v32 + 152) = v33;
          *(v32 + 136) = v35;
          v36 = v31[10];
          v37 = v31[11];
          v38 = v31[12];
          *(v32 + 104) = v31[13];
          *(v32 + 88) = v38;
          *(v32 + 72) = v37;
          *(v32 + 56) = v36;
          *(*(v6 + 56) + v20) = 1;
          v21 = *(v5 + 104);
          v39 = *(v21 + v19 + 144);
          if (*(v7 + 184) <= v39)
          {
            break;
          }

          v40 = *(v7 + 168) + 24 * v39;
          if (*(v40 + 20) != HIDWORD(v39) || !*v40 || **v40 != 3)
          {
            break;
          }

          ++v20;
          v18 += 336;
          v17 += 16;
          v19 += 304;
          v41 = 1;
          if (v20 >= *(v6 + 144))
          {
            goto LABEL_20;
          }
        }

        result = (**a1)(a1);
        v42 = 6;
      }

      else
      {
        result = (**a1)(a1);
        v42 = 7;
      }
    }

    else
    {
      result = (**a1)(a1);
      v42 = 5;
    }
  }

  else
  {
    result = (**a1)(a1);
    v42 = 3;
  }

  *a3 = v42;
  *(a3 + 8) = result;
  v41 = 2;
LABEL_20:
  *(a3 + 24) = v41;
  return result;
}

uint64_t Phase::SpatialModeler::DirectPathTransmissionImpl::AllocSpatialQueryState@<X0>(Phase::SpatialModeler::DirectPathTransmissionImpl *this@<X0>, Phase::SpatialModeler::DirectPathTransmission *a2@<X1>, Phase::SpatialModeler::Query *a3@<X2>, void *a4@<X8>)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v5 = this + 40;
  v6 = Phase::SystemAllocator::Alloc((this + 40), 0x1E0, 8uLL);
  v7 = 0;
  v8 = 0;
  v9 = 0;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 6) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 8) = 0u;
  *(v6 + 9) = 0u;
  *(v6 + 10) = 0u;
  *(v6 + 11) = 0u;
  *(v6 + 12) = 0u;
  *(v6 + 13) = 0u;
  *(v6 + 14) = 0u;
  *(v6 + 15) = 0u;
  *(v6 + 18) = 0u;
  *(v6 + 19) = 0u;
  *(v6 + 20) = 0u;
  *(v6 + 21) = 0u;
  *(v6 + 22) = 0u;
  *(v6 + 23) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 25) = 0u;
  *(v6 + 26) = 0u;
  *(v6 + 27) = 0u;
  *(v6 + 28) = 0u;
  *(v6 + 29) = 0u;
  *(v6 + 9) = 0xFFFFFFFFLL;
  v6[80] = 0x80;
  *(v6 + 84) = 0;
  *(v6 + 100) = 0;
  *(v6 + 92) = 0;
  *(v6 + 27) = 0;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  __asm { FMOV            V1.2S, #1.0 }

  *(v6 + 29) = _D1;
  *(v6 + 45) = 0;
  *(v6 + 46) = 0;
  *(v6 + 15) = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 17) = 0u;
  *(v6 + 68) = 0;
  *(v6 + 39) = 0;
  *(v6 + 40) = 0;
  *(v6 + 41) = 0;
  *(v6 + 94) = -1;
  v6[380] = 1;
  *(v6 + 24) = 0u;
  *(v6 + 25) = 0u;
  *(v6 + 104) = 2139095039;
  v15 = v6 + 420;
  v23 = 0;
  v24[0] = 0;
  *(v6 + 420) = 0;
  *(v6 + 107) = 0;
  do
  {
    if (v8 <= 2)
    {
      v7 = v8 + 1;
      *&v15[4 * v8++] = v24[v9 - 2];
    }

    ++v9;
  }

  while (v9 != 3);
  if (v7 <= 2)
  {
    bzero(&v15[4 * v7], 12 - 4 * v7);
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  *(v6 + 108) = 0;
  v19 = v6 + 436;
  v23 = 0;
  v24[0] = 0;
  *(v6 + 436) = 0;
  *(v6 + 111) = 0;
  do
  {
    if (v17 <= 2)
    {
      v16 = v17 + 1;
      *&v19[4 * v17++] = v24[v18 - 2];
    }

    ++v18;
  }

  while (v18 != 3);
  if (v16 <= 2)
  {
    bzero(&v19[4 * v16], 12 - 4 * v16);
  }

  *(v6 + 56) = 0;
  *(v6 + 57) = 0;
  *(v6 + 118) = 0;
  *(v6 + 58) = 0;
  v25[0] = &unk_284D31D68;
  v25[1] = v5;
  v25[3] = v25;
  v23 = v6;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v24, v25);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v25);
  v20 = v23;
  v23[23] = Phase::SpatialModeler::DirectPathTransmissionImpl::RunSpatialQueryBegin;
  v23 = 0;
  *a4 = v20;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100]((a4 + 1), v24);
  v21 = v23;
  v23 = 0;
  if (v21)
  {
    std::function<void ()(void *)>::operator()(v24, v21);
  }

  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v24);
}

void sub_23A39603C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void Phase::SpatialModeler::DirectPathTransmissionImpl::RunSpatialQueryBegin(Phase::Logger *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, Phase::Logger *a4@<X8>)
{
  v74 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(a1);
  v9 = os_signpost_id_generate(**(Instance + 224));
  v71 = v9;
  v10 = Phase::Logger::GetInstance(v9);
  if (*(v10 + 232) == 1)
  {
    v11 = **(Phase::Logger::GetInstance(v10) + 224);
    v12 = v11;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Phase_DirectPath_Spatial_Query_Begin", "DirectPathTransmission: Spatial Query Begin", buf, 2u);
    }
  }

  v70 = &v71;
  v13 = *(a2 + 88);
  if (!v13 || *v13 != 2)
  {
    v46 = (**a1)(a1);
    v68[0] = 3;
    v68[1] = v46;
    v69 = 2;
    Phase::SpatialModeler::DirectPathTransmissionImpl::RunSpatialQueryBegin(Phase::SpatialModeler::DirectPathTransmission &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState &)::$_1::operator()(a4, &v70, v68);
    v47 = v68;
LABEL_56:
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v47);
    return;
  }

  v14 = *(a2 + 64);
  if (!v14)
  {
    v49 = (**a1)(a1);
    v66[0] = 5;
    v66[1] = v49;
    v67 = 2;
    Phase::SpatialModeler::DirectPathTransmissionImpl::RunSpatialQueryBegin(Phase::SpatialModeler::DirectPathTransmission &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState &)::$_1::operator()(a4, &v70, v66);
    v47 = v66;
    goto LABEL_56;
  }

  v15 = *(v13 + 552);
  v16 = *(v14 + 184);
  if (v16 <= v15 || (v17 = *(v14 + 168), v18 = v17 + 24 * v15, *(v18 + 20) != HIDWORD(v15)) || (v19 = *v18) == 0 || *v19 != 2)
  {
    v48 = (**a1)(a1);
    v64[0] = 7;
    v64[1] = v48;
    v65 = 2;
    Phase::SpatialModeler::DirectPathTransmissionImpl::RunSpatialQueryBegin(Phase::SpatialModeler::DirectPathTransmission &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState &)::$_1::operator()(a4, &v70, v64);
    v47 = v64;
    goto LABEL_56;
  }

  v20 = *(v13 + 208);
  if (v16 <= v20 || (v21 = (v17 + 24 * v20), *(v21 + 5) != HIDWORD(v20)) || (v22 = *v21) == 0 || *v22 != 3)
  {
    v50 = (**a1)(a1);
    v62[0] = 6;
    v62[1] = v50;
    v63 = 2;
    Phase::SpatialModeler::DirectPathTransmissionImpl::RunSpatialQueryBegin(Phase::SpatialModeler::DirectPathTransmission &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState &)::$_1::operator()(a4, &v70, v62);
    v47 = v62;
    goto LABEL_56;
  }

  v24 = *(v22 + 120);
  v23 = *(v22 + 128);
  if (v24 != v23)
  {
    v25 = *v24;
    if (*(v14 + 160) <= *v24 || (v26 = *(v14 + 144) + 24 * v25, *(v26 + 20) != HIDWORD(v25)) || !*v26)
    {
      v51 = (**a1)(a1);
      v60[0] = 6;
      v60[1] = v51;
      v61 = 2;
      Phase::SpatialModeler::DirectPathTransmissionImpl::RunSpatialQueryBegin(Phase::SpatialModeler::DirectPathTransmission &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState &)::$_1::operator()(a4, &v70, v60);
      v47 = v60;
      goto LABEL_56;
    }
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  *(a3 + 192) = v20;
  v56 = *(v13 + 552);
  v57 = v23;
  *(a3 + 200) = v56;
  v72 = *(v13 + 64);
  v73 = *(v13 + 72);
  *buf = 0;
  LODWORD(v59) = 0;
  do
  {
    if (v28 <= 2)
    {
      v27 = v28 + 1;
      *&buf[4 * v28++] = *(&v72 + v29);
    }

    v29 += 4;
  }

  while (v29 != 12);
  if (v27 <= 2)
  {
    bzero(&buf[4 * v27], 12 - 4 * v27);
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = v59;
  *(a3 + 240) = *buf;
  *(a3 + 248) = v33;
  v72 = *(v13 + 384);
  v73 = *(v13 + 392);
  *buf = 0;
  LODWORD(v59) = 0;
  do
  {
    if (v31 <= 2)
    {
      v30 = v31 + 1;
      *&buf[4 * v31++] = *(&v72 + v32);
    }

    v32 += 4;
  }

  while (v32 != 12);
  if (v30 <= 2)
  {
    bzero(&buf[4 * v30], 12 - 4 * v30);
  }

  v34 = v59;
  *(a3 + 252) = *buf;
  *(a3 + 260) = v34;
  v35 = *(v13 + 528);
  *(a3 + 472) = *(v13 + 544);
  *(a3 + 456) = v35;
  if (v24 == v57)
  {
    v36 = 1;
  }

  else
  {
    v36 = 10;
  }

  *(a3 + 376) = v36;
  v37 = (v13 + 256);
  v38 = 128;
  do
  {
    v39 = *(v37 - 2);
    if (v39 <= 2)
    {
      if (v39 == 1)
      {
        *(a3 + 208) = *v37;
      }

      else if (v39 == 2)
      {
        *(a3 + 216) = *v37;
      }
    }

    else
    {
      switch(v39)
      {
        case 3:
          *(a3 + 224) = *v37;
          break;
        case 4:
          v41 = *v37;
          *(a3 + 232) = v41;
          break;
        case 5:
          v40 = *v37;
          *(a3 + 236) = v40;
          break;
      }
    }

    v37 += 2;
    v38 -= 16;
  }

  while (v38);
  *(a4 + 6) = 0;
  if (v24 == v57)
  {
    Phase::SpatialModeler::DirectPathTransmissionImpl::RunSpatialQueryBeginPointSource(buf, a1, a2, v14, v19, v22, a3);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>>(a4, buf);
    v45 = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf);
  }

  else
  {
    Phase::SpatialModeler::DirectPathTransmission::GetHistory(a1, v20, v56, *(a3 + 208), buf);
    v43 = *buf;
    v42 = v59;
    if (!*buf)
    {
      __assert_rtn("RunSpatialQueryBegin", "DirectPathTransmissionImpl.mm", 381, "nullptr != historyPtr");
    }

    v44 = COERCE_DOUBLE(atomic_load((*buf + 176)));
    if (std::chrono::steady_clock::now().__d_.__rep_ / 1000000000.0 - v44 >= 0.04)
    {
      if (v42)
      {
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v45 = *(a3 + 176);
      *(a3 + 168) = v43;
      *(a3 + 176) = v42;
      if (v45)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
      }

      *(a3 + 184) = Phase::SpatialModeler::DirectPathTransmissionImpl::RunSpatialQueryWaitForToken;
      if (*(a4 + 6) != 4)
      {
        v45 = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a4);
        *(a4 + 6) = 4;
      }

      *a4 = v43;
    }

    else
    {
      Phase::SpatialModeler::DirectPathTransmissionImpl::BuildOutput(buf, a1, a2, a3, v43);
      std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>>(a4, buf);
      v45 = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf);
    }

    if (v42)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
    }
  }

  v52 = Phase::Logger::GetInstance(v45);
  if (*(v52 + 232) == 1)
  {
    v53 = **(Phase::Logger::GetInstance(v52) + 224);
    v54 = v53;
    v55 = v71;
    if (v71 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v54, OS_SIGNPOST_INTERVAL_END, v55, "Phase_DirectPath_Spatial_Query_Begin", &unk_23A5C28A2, buf, 2u);
    }
  }
}

void sub_23A396758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::SpatialModeler::DirectPathTransmissionImpl::RunSpatialQuery@<X0>(uint64_t (***a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v4 = *(a2 + 184);

    return v4();
  }

  else
  {
    result = (**a1)(a1);
    *a3 = 1;
    *(a3 + 8) = result;
    *(a3 + 24) = 2;
  }

  return result;
}

uint64_t Phase::SpatialModeler::DirectPathTransmissionImpl::RunSpatialQueryBegin(Phase::SpatialModeler::DirectPathTransmission &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState &)::$_1::operator()(Phase::Logger *a1, os_signpost_id_t **a2, uint64_t a3)
{
  Instance = Phase::Logger::GetInstance(a1);
  if (*(Instance + 232) == 1)
  {
    v7 = **(Phase::Logger::GetInstance(Instance) + 224);
    v8 = v7;
    v9 = **a2;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v8, OS_SIGNPOST_INTERVAL_END, v9, "Phase_DirectPath_Spatial_Query_Begin", &unk_23A5C28A2, v11, 2u);
    }
  }

  return std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a1, a3);
}

void Phase::SpatialModeler::DirectPathTransmissionImpl::RunSpatialQueryBeginPointSource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6, uint64_t a7)
{
  v86 = *MEMORY[0x277D85DE8];
  v14 = std::chrono::steady_clock::now().__d_.__rep_ / 1000000000.0;
  if (v14 - *(a7 + 456) < 0.04)
  {
    v15 = *(a7 + 464);
    v16 = *(a7 + 468);
    v17 = *(a7 + 472);

    Phase::SpatialModeler::DirectPathTransmissionImpl::BuildOutputPointSource(a1, a2, a3, a7, v15, v16, v17);
    return;
  }

  v18 = *(a3 + 96);
  if (!v18 || *v18 != 3)
  {
    v48 = (**a2)(a2);
    *a1 = 4;
    *(a1 + 8) = v48;
    *(a1 + 24) = 2;
    return;
  }

  *(v18 + 192) = v14;
  v19 = *(a5 + 64);
  v20 = *(a5 + 68);
  v21 = *(a5 + 72);
  v22 = *(a7 + 208);
  v23.f32[0] = Phase::Geometry::CalculateDirectivitySubbandGains<3ul>(a4, a5, a6, *(a7 + 216), *(a7 + 224));
  v25 = v24;
  v23.i32[1] = v26;
  v27 = vbsl_s8(vclez_f32(v23), 0x100000001, v23);
  v76 = *v27.i32;
  v77 = logf(*&v27.i32[1]);
  v28.f32[0] = logf(v76);
  v28.f32[1] = v77;
  __asm { FMOV            V1.2S, #10.0 }

  v84 = vmul_f32(vdiv_f32(vmul_f32(v28, vdup_n_s32(0x410AF967u)), _D1), _D1);
  v34 = 1;
  if (v25 > 0.0)
  {
    *&v34 = v25;
  }

  v35 = logf(*&v34);
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v85 = ((v35 * 8.6859) / 10.0) * 10.0;
  *&v82 = 0;
  DWORD2(v82) = 0;
  do
  {
    if (v37 <= 2)
    {
      v36 = v37 + 1;
      *(&v82 + v37++) = v84.i32[v38];
    }

    ++v38;
  }

  while (v38 != 3);
  if (v36 <= 2)
  {
    bzero(&v82 + 4 * v36, 12 - 4 * v36);
  }

  v39 = v82;
  v40 = *(&v82 + 2);
  *(a7 + 264) = v82;
  *(a7 + 272) = v40;
  v41 = 0;
  if (*(a4 + 88) > v22)
  {
    v42 = *(a4 + 72) + 24 * v22;
    if (*(v42 + 20) == HIDWORD(v22))
    {
      v43 = *v42;
      if (v43)
      {
        v44 = *(a5 + 152);
        v45 = fmaxf(v44, sqrtf((((v19 - a6[16]) * (v19 - a6[16])) + ((v20 - a6[17]) * (v20 - a6[17]))) + ((v21 - a6[18]) * (v21 - a6[18]))));
        if (*v43 == 2)
        {
          v49 = **(v43 + 40);
          if (v49)
          {
            v50 = Phase::Envelope<float>::operator()((v49 + 16), v45);
            if (v50 <= 0.0)
            {
              v50 = COERCE_FLOAT(1);
            }

            *v41.i32 = ((logf(v50) * 8.6859) / 10.0) * 10.0;
            v39 = *(a7 + 264);
            v40 = *(a7 + 272);
            goto LABEL_29;
          }
        }

        else
        {
          if (*v43 != 1)
          {
            goto LABEL_29;
          }

          v46 = **(v43 + 40);
          if (v46)
          {
            v47 = (log2f(v45) * 6.0206) * *(v46 + 16);
            if (v47 >= -20.0)
            {
              *v41.i32 = -v47;
            }

            else
            {
              *v41.i32 = 20.0;
            }

            goto LABEL_29;
          }
        }

        std::terminate();
      }
    }
  }

LABEL_29:
  v51 = 0;
  v52 = 0;
  v53 = 0;
  *(a7 + 384) = v41.i32[0];
  v54 = *(a7 + 240);
  v55 = *(a7 + 248);
  v56 = *(a7 + 260);
  v84 = vadd_f32(v39, *(a7 + 252));
  v85 = v40 + v56;
  *&v82 = 0;
  DWORD2(v82) = 0;
  do
  {
    if (v52 <= 2)
    {
      v51 = v52 + 1;
      *(&v82 + v52++) = v84.i32[v53];
    }

    ++v53;
  }

  while (v53 != 3);
  if (v51 <= 2)
  {
    v78 = v41;
    bzero(&v82 + 4 * v51, 12 - 4 * v51);
    v41 = v78;
  }

  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = *(&v82 + 2);
  v61 = v82;
  v62 = a6[16];
  v63 = a6[17];
  v64 = a6[18];
  *(a7 + 388) = v62;
  *(a7 + 392) = v63;
  *(a7 + 396) = v64;
  v65 = v19 - v62;
  v66 = v20 - v63;
  v67 = v21 - v64;
  v68 = sqrtf(((v65 * v65) + (v66 * v66)) + (v67 * v67));
  *(a7 + 404) = v65 / v68;
  *(a7 + 408) = v66 / v68;
  *(a7 + 412) = v67 / v68;
  *(a7 + 400) = 0;
  *(a7 + 416) = v68;
  v84 = vadd_f32(vdup_lane_s32(v41, 0), v61);
  v85 = *v41.i32 + v60;
  *&v82 = 0;
  DWORD2(v82) = 0;
  do
  {
    if (v58 <= 2)
    {
      v57 = v58 + 1;
      *(&v82 + v58++) = v84.i32[v59];
    }

    ++v59;
  }

  while (v59 != 3);
  if (v57 <= 2)
  {
    bzero(&v82 + 4 * v57, 12 - 4 * v57);
  }

  v69 = 0;
  v70 = 0;
  v71 = 0;
  v84 = vsub_f32(*&v82, v54);
  v85 = *(&v82 + 2) - v55;
  *&v82 = 0;
  DWORD2(v82) = 0;
  do
  {
    if (v70 <= 2)
    {
      v69 = v70 + 1;
      *(&v82 + v70++) = v84.i32[v71];
    }

    ++v71;
  }

  while (v71 != 3);
  if (v69 <= 2)
  {
    bzero(&v82 + 4 * v69, 12 - 4 * v69);
  }

  v72 = 0;
  v73 = 0;
  v74 = 0;
  v84 = vmaxnm_f32(*&v82, 0);
  v85 = fmaxf(*(&v82 + 2), 0.0);
  *&v82 = 0;
  DWORD2(v82) = 0;
  do
  {
    if (v73 <= 2)
    {
      v72 = v73 + 1;
      *(&v82 + v73++) = v84.i32[v74];
    }

    ++v74;
  }

  while (v74 != 3);
  if (v72 <= 2)
  {
    bzero(&v82 + 4 * v72, 12 - 4 * v72);
  }

  v75 = DWORD2(v82);
  *(a7 + 420) = v82;
  *(a7 + 428) = v75;
  *(a7 + 432) = 1;
  *(a7 + 64) = *(a2 + 44);
  *(a7 + 88) = a7 + 388;
  *(a7 + 96) = 0x4400000001;
  *(a7 + 184) = Phase::SpatialModeler::DirectPathTransmissionImpl::RunSpatialQueryHandleResultsPointSource;
  *(a7 + 72) = *(a2 + 24);
  v84 = a7;
  v80 = 0;
  v81 = 0;
  __p = 0;
  std::vector<Phase::Geometry::SceneQueryBatch *>::__init_with_size[abi:ne200100]<Phase::Geometry::SceneQueryBatch * const*,Phase::Geometry::SceneQueryBatch * const*>(&__p, &v84, &v85, 1uLL);
  v82 = 0uLL;
  v83 = 0;
  std::vector<Phase::Geometry::SceneQueryBatch *>::__init_with_size[abi:ne200100]<Phase::Geometry::SceneQueryBatch **,Phase::Geometry::SceneQueryBatch **>(&v82, __p, v80, (v80 - __p) >> 3);
  *a1 = v82;
  *(a1 + 16) = v83;
  v83 = 0;
  v82 = 0uLL;
  *(a1 + 24) = 3;
  if (__p)
  {
    v80 = __p;
    operator delete(__p);
  }
}

void sub_23A396FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Phase::SpatialModeler::DirectPathTransmissionImpl::RunSpatialQueryWaitForToken(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v167 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(a1);
  v9 = os_signpost_id_generate(**(Instance + 224));
  v10 = Phase::Logger::GetInstance(v9);
  if (*(v10 + 232) == 1)
  {
    v11 = **(Phase::Logger::GetInstance(v10) + 224);
    v12 = v11;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Phase_DirectPath_Spatial_Query_Token_Wait", "DirectPathTransmission: Spatial Query Wait For Token", buf, 2u);
    }
  }

  *(a4 + 24) = 0;
  v13 = *(a3 + 168);
  v14 = atomic_load((a2 + 104));
  if (v14 != *(v13 + 64))
  {
    Phase::SpatialModeler::DirectPathTransmissionImpl::BuildOutput(buf, a1, a2, a3, *(a3 + 168));
    std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>>(a4, buf);
    v28 = buf;
    goto LABEL_79;
  }

  HIDWORD(v143) = 0;
  v144 = 0;
  *&v143 = 0;
  v145 = 257;
  v146 = 0;
  v159[3] = 0;
  v159[4] = 0;
  v157 = 0;
  v158 = 0;
  v155 = 0;
  *buf = 0;
  *(a3 + 376) = 10;
  WORD4(v143) = 257;
  v15 = *(a1 + 16);
  if (!*(v15 + 3192))
  {
    goto LABEL_17;
  }

  v16 = Phase::Geometry::SystemDebugger::GetFromSystem(v15);
  if (!v16)
  {
    goto LABEL_17;
  }

  v19 = *(v16 + 24);
  v17 = v16 + 24;
  v18 = v19;
  if (!v19)
  {
    goto LABEL_17;
  }

  v20 = *(a3 + 192);
  v21 = v17;
  do
  {
    v22 = *(v18 + 32);
    _CF = v22 >= v20;
    v24 = v22 < v20;
    if (_CF)
    {
      v21 = v18;
    }

    v18 = *(v18 + 8 * v24);
  }

  while (v18);
  if (v21 != v17 && *(v21 + 32) <= v20)
  {
    v95 = *(v21 + 44);
    LODWORD(v143) = *(v21 + 40);
    BYTE8(v143) = *(v21 + 52);
    LODWORD(v26) = *(v21 + 48);
    if (v95 >= 1)
    {
      *(a3 + 376) = v95;
    }

    if (*(v21 + 112))
    {
      std::function<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>::operator=(v154, v21 + 88);
      v25 = &v158;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
LABEL_17:
    v25 = 0;
    LODWORD(v26) = -1;
  }

  v146 = v13 + 184;
  if (BYTE8(v143) == 1 && BYTE9(v143) == 1)
  {
    v27 = *(a3 + 376);
    if (v27 < 2)
    {
      BYTE9(v143) = 0;
    }

    else
    {
      HIDWORD(v143) = *(a3 + 376);
      if ((v26 & 0x80000000) != 0)
      {
        v96 = *(v13 + 160);
        if (v96 != v27)
        {
          v97 = v27;
          if (v96 >= v27)
          {
            v98 = v27;
          }

          else
          {
            v98 = *(v13 + 160);
          }

          if (!v96)
          {
            goto LABEL_103;
          }

          v99 = *(v13 + 112);
          v100 = 0.0;
          v101 = v99;
          v102 = v98;
          do
          {
            v103 = *v101++;
            v100 = v100 + v103;
            --v102;
          }

          while (v102);
          if (v100 > 0.0)
          {
            v104 = (v96 / v97) / v100;
            v105 = v98;
            do
            {
              *v99 = v104 * *v99;
              ++v99;
              --v105;
            }

            while (v105);
            v106 = v98;
          }

          else
          {
LABEL_103:
            v106 = 0;
          }

          if (*(v13 + 152) < v27)
          {
            v137 = v98;
            v139 = v106;
            __p = v27;
            v162 = 4;
            *&v164 = &__p;
            *(&v164 + 1) = &v162;
            Phase::details::AllocArray<float,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float>(unsigned long,unsigned long)::{lambda(float*)#1} const&>(v27, &v164, &v150);
            v107 = v150;
            v150 = 0;
            *&v164 = v107;
            std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&v164 + 8, v151);
            v166 = v27;
            std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v150);
            std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v151);
            v108 = *(v13 + 112);
            if (v96)
            {
              v109 = v164;
              v110 = v137;
              if (v137 <= 1)
              {
                v110 = 1;
              }

              v111 = *(v13 + 112);
              do
              {
                v112 = *v111++;
                *v109++ = v112;
                --v110;
              }

              while (v110);
            }

            *(v13 + 112) = 0;
            v150 = v108;
            std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v151, v13 + 120);
            v152 = *(v13 + 152);
            std::unique_ptr<float [],std::function<void ()(void *)>>::operator=[abi:ne200100]((v13 + 112), &v164);
            *(v13 + 152) = v166;
            std::unique_ptr<float [],std::function<void ()(void *)>>::operator=[abi:ne200100](&v164, &v150);
            v166 = v152;
            std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v150);
            std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v151);
            std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v164);
            std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v164 + 8);
            v106 = v139;
          }

          v113 = v27 - v106;
          if (v27 > v106)
          {
            v114 = 0;
            v115 = (v113 + 3) & 0xFFFFFFFFFFFFFFFCLL;
            v116 = vdupq_n_s64(v113 - 1);
            v117 = (*(v13 + 112) + 4 * v106 + 8);
            v118 = 1.0 / v97;
            do
            {
              v119 = vdupq_n_s64(v114);
              v120 = vmovn_s64(vcgeq_u64(v116, vorrq_s8(v119, xmmword_23A554B70)));
              if (vuzp1_s16(v120, *v116.i8).u8[0])
              {
                *(v117 - 2) = v118;
              }

              if (vuzp1_s16(v120, *&v116).i8[2])
              {
                *(v117 - 1) = v118;
              }

              if (vuzp1_s16(*&v116, vmovn_s64(vcgeq_u64(v116, vorrq_s8(v119, xmmword_23A554B60)))).i32[1])
              {
                *v117 = v118;
                v117[1] = v118;
              }

              v114 += 4;
              v117 += 4;
            }

            while (v115 != v114);
          }

          *(v13 + 160) = v27;
        }

        v26 = 0;
        v121 = *(v13 + 192);
        v122 = *(v13 + 184) ^ (*(v13 + 184) << 23);
        v123 = (v121 >> 26) ^ (v122 >> 17) ^ v121 ^ v122;
        v124 = *(v13 + 208);
        v125 = *(v13 + 212) - v124;
        *(v13 + 184) = v121;
        *(v13 + 192) = v123;
        v126 = v124 + (v125 * vcvts_n_f32_u64(v123 + v121, 0x40uLL));
        v127 = *(v13 + 112);
        v128 = 0.0;
        while (1)
        {
          v128 = v128 + v127[v26];
          if (v126 < v128)
          {
            break;
          }

          if (v27 == ++v26)
          {
            v129 = v27 - 1;
            LODWORD(v26) = v27 - 1;
            goto LABEL_126;
          }
        }

        v129 = v27 - 1;
LABEL_126:
        *(v13 + 168) = v26;
        v130 = 9.0 / v129;
        v131 = v26;
        v132 = v127;
        do
        {
          if (v131)
          {
            v133 = v130 + *v132;
          }

          else
          {
            v133 = v127[v26];
          }

          *v132++ = v133 * 0.1;
          --v131;
          --v27;
        }

        while (v27);
        v144 = v26;
        LODWORD(v27) = HIDWORD(v143);
      }

      else
      {
        v144 = v26;
        *(a3 + 380) = 0;
      }

      if (v26 >= v27)
      {
        v144 = v27 - 1;
      }
    }
  }

  else
  {
    *(a3 + 380) = 0;
  }

  v29 = *(a2 + 64);
  if (v29)
  {
    v30 = *(a3 + 200);
    v31 = *(v29 + 184);
    if (v31 > v30 && (v32 = *(v29 + 168), v33 = v32 + 24 * v30, *(v33 + 20) == HIDWORD(v30)) && (v34 = *v33) != 0 && v34->i32[0] == 2)
    {
      v35 = *(a3 + 192);
      if (v31 > v35)
      {
        v36 = v32 + 24 * v35;
        if (*(v36 + 20) == HIDWORD(v35))
        {
          v37 = *v36;
          if (*v36)
          {
            if (v37->i32[0] == 3)
            {
              Phase::Geometry::GenerateSourcePoints(v29, v37, v34, &v143, v25, &v150);
              v138 = v152;
              if (v152)
              {
                if ((v153 & 1) == 0)
                {
                  *(a3 + 376) = 1;
                }

                v38 = v34[8];
                v39 = v34[9].f32[0];
                v40 = *(a3 + 208);
                v41.f32[0] = Phase::Geometry::CalculateDirectivitySubbandGains<3ul>(v29, v34, v37, *(a3 + 216), *(a3 + 224));
                v43 = v42;
                v41.i32[1] = v44;
                v45 = vbsl_s8(vclez_f32(v41), 0x100000001, v41);
                v135 = *v45.i32;
                v136 = logf(*&v45.i32[1]);
                v46.f32[0] = logf(v135);
                v46.f32[1] = v136;
                __asm { FMOV            V1.2S, #10.0 }

                __p = vmul_f32(vdiv_f32(vmul_f32(v46, vdup_n_s32(0x410AF967u)), _D1), _D1);
                v51 = 1;
                if (v43 > 0.0)
                {
                  *&v51 = v43;
                }

                v52 = logf(*&v51);
                v53 = 0;
                v54 = 0;
                v55 = 0;
                *v161 = ((v52 * 8.6859) / 10.0) * 10.0;
                *&v164 = 0;
                DWORD2(v164) = 0;
                do
                {
                  if (v54 <= 2)
                  {
                    v53 = v54 + 1;
                    *(&v164 + v54++) = *(&v161[-1] + v55);
                  }

                  v55 += 4;
                }

                while (v55 != 12);
                if (v53 <= 2)
                {
                  bzero(&v164 + 4 * v53, 12 - 4 * v53);
                }

                v56 = DWORD2(v164);
                *(a3 + 264) = v164;
                *(a3 + 272) = v56;
                Phase::Geometry::CalculateDistanceGainsInDecibels<Phase::SystemAllocator>(&v164, a1 + 40, v29, v34, v37, &v150, v40);
                std::unique_ptr<float [],std::function<void ()(void *)>>::operator=[abi:ne200100]((a3 + 328), &v164);
                *(a3 + 368) = v166;
                std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v164);
                std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v164 + 8);
                v57 = 0;
                v58 = 0;
                v59 = 0;
                v60 = *(a3 + 240);
                v61 = *(a3 + 248);
                v62 = *(a3 + 260);
                __p = vadd_f32(*(a3 + 252), *(a3 + 264));
                *v161 = v62 + *(a3 + 272);
                *&v164 = 0;
                DWORD2(v164) = 0;
                do
                {
                  if (v58 <= 2)
                  {
                    v57 = v58 + 1;
                    *(&v164 + v58++) = *(&v161[-1] + v59);
                  }

                  v59 += 4;
                }

                while (v59 != 12);
                if (v57 <= 2)
                {
                  bzero(&v164 + 4 * v57, 12 - 4 * v57);
                }

                v63 = v164;
                v64 = *(&v164 + 2);
                v65 = v152;
                v148 = 4;
                v149 = v152;
                v162 = a1 + 40;
                v163[0] = &v149;
                v163[1] = &v148;
                v147 = a1 + 40;
                Phase::details::AllocArray<Phase::SpatialModeler::TraceWithEnergyQuery,std::unique_ptr<Phase::SpatialModeler::TraceWithEnergyQuery [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::TraceWithEnergyQuery,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::TraceWithEnergyQuery [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::TraceWithEnergyQuery,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::TraceWithEnergyQuery*)#1} const&>(&__p, v152, &v162, &v147);
                v66 = __p;
                __p = 0;
                *&v164 = v66;
                std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&v164 + 8, v161);
                v166 = v65;
                std::unique_ptr<Phase::SpatialModeler::TraceWithEnergyQuery [],std::function<void ()(void *)>>::reset[abi:ne200100](&__p);
                std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v161);
                std::unique_ptr<Phase::SpatialModeler::TraceWithEnergyQuery [],std::function<void ()(void *)>>::operator=[abi:ne200100]((a3 + 104), &v164);
                *(a3 + 144) = v166;
                std::unique_ptr<Phase::SpatialModeler::TraceWithEnergyQuery [],std::function<void ()(void *)>>::reset[abi:ne200100](&v164);
                std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v164 + 8);
                v67 = 0;
                do
                {
                  Phase::operator*<float>(&v37[6], (v150 + 12 * v67), &v164);
                  v68 = 0;
                  v69 = 0;
                  v70 = 0;
                  v71 = v37[9].f32[1];
                  v72 = (v71 * *(&v164 + 2)) + v37[9].f32[0];
                  v73 = vadd_f32(vmul_n_f32(*&v164, v71), v37[8]);
                  v74 = *(a3 + 104) + 68 * v67;
                  *v74 = v73;
                  v75 = v39 - v72;
                  v76 = vsub_f32(v38, v73);
                  *v77.i32 = sqrtf(vaddv_f32(vmul_f32(v76, v76)) + (v75 * v75));
                  *(v74 + 8) = v72;
                  v78 = vdiv_f32(v76, vdup_lane_s32(v77, 0));
                  *(v74 + 16) = v78;
                  *(v74 + 12) = 0;
                  *(v74 + 24) = v75 / *v77.i32;
                  *(v74 + 28) = v77.i32[0];
                  v78.i32[0] = *(*(a3 + 328) + 4 * v67);
                  __p = vadd_f32(v63, vdup_lane_s32(v78, 0));
                  *v161 = v64 + *v78.i32;
                  *&v164 = 0;
                  DWORD2(v164) = 0;
                  do
                  {
                    if (v69 <= 2)
                    {
                      v68 = v69 + 1;
                      *(&v164 + v69++) = *(&v161[-1] + v70);
                    }

                    v70 += 4;
                  }

                  while (v70 != 12);
                  if (v68 <= 2)
                  {
                    bzero(&v164 + 4 * v68, 12 - 4 * v68);
                  }

                  v79 = 0;
                  v80 = 0;
                  v81 = 0;
                  __p = vsub_f32(*&v164, v60);
                  *v161 = *(&v164 + 2) - v61;
                  *&v164 = 0;
                  DWORD2(v164) = 0;
                  do
                  {
                    if (v80 <= 2)
                    {
                      v79 = v80 + 1;
                      *(&v164 + v80++) = *(&v161[-1] + v81);
                    }

                    v81 += 4;
                  }

                  while (v81 != 12);
                  if (v79 <= 2)
                  {
                    bzero(&v164 + 4 * v79, 12 - 4 * v79);
                  }

                  v82 = 0;
                  v83 = 0;
                  v84 = 0;
                  __p = vmaxnm_f32(*&v164, 0);
                  LODWORD(v161[0]) = fmaxf(*(&v164 + 2), 0.0);
                  *&v164 = 0;
                  DWORD2(v164) = 0;
                  do
                  {
                    if (v83 <= 2)
                    {
                      v82 = v83 + 1;
                      *(&v164 + v83++) = *(&v161[-1] + v84);
                    }

                    v84 += 4;
                  }

                  while (v84 != 12);
                  if (v82 <= 2)
                  {
                    bzero(&v164 + 4 * v82, 12 - 4 * v82);
                  }

                  v85 = DWORD2(v164);
                  *(v74 + 32) = v164;
                  *(v74 + 40) = v85;
                  *(v74 + 44) = 1;
                  ++v67;
                }

                while (v67 != v138);
                v86 = *(a3 + 104);
                v87 = v152;
                *(a3 + 64) = *(a1 + 44);
                *(a3 + 88) = v86;
                *(a3 + 96) = v87;
                *(a3 + 100) = 68;
                *(a3 + 184) = Phase::SpatialModeler::DirectPathTransmissionImpl::RunSpatialQueryHandleResults;
                v88 = *(a3 + 280);
                *(a3 + 280) = 0;
                *&v164 = v88;
                std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&v164 + 8, a3 + 288);
                v166 = *(a3 + 320);
                std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::operator=[abi:ne200100]((a3 + 280), &v150);
                *(a3 + 320) = v152;
                std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::operator=[abi:ne200100](&v150, &v164);
                v152 = v166;
                std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v164);
                std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v164 + 8);
                if (v155)
                {
                  *buf = *(a3 + 192);
                  v157 = 0;
                  *&v164 = buf;
                  (*(*v155 + 48))(v155, &v164);
                }

                *(a3 + 72) = *(a1 + 24);
                v162 = a3;
                v161[0] = 0;
                v161[1] = 0;
                __p = 0;
                std::vector<Phase::Geometry::SceneQueryBatch *>::__init_with_size[abi:ne200100]<Phase::Geometry::SceneQueryBatch * const*,Phase::Geometry::SceneQueryBatch * const*>(&__p, &v162, v163, 1uLL);
                v164 = 0uLL;
                v165 = 0;
                std::vector<Phase::Geometry::SceneQueryBatch *>::__init_with_size[abi:ne200100]<Phase::Geometry::SceneQueryBatch **,Phase::Geometry::SceneQueryBatch **>(&v164, __p, v161[0], (v161[0] - __p) >> 3);
                v140 = v164;
                v141 = v165;
                v165 = 0;
                v164 = 0uLL;
                v142 = 3;
                if (__p)
                {
                  v161[0] = __p;
                  operator delete(__p);
                }
              }

              else
              {
                v134 = (**a1)(a1);
                *&v140 = 128;
                *(&v140 + 1) = v134;
                v142 = 2;
              }

              std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v150);
              std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v151);
              goto LABEL_78;
            }
          }
        }
      }

      v89 = (**a1)(a1);
      v90 = 6;
    }

    else
    {
      v89 = (**a1)(a1);
      v90 = 7;
    }
  }

  else
  {
    v89 = (**a1)(a1);
    v90 = 5;
  }

  *&v140 = v90;
  *(&v140 + 1) = v89;
  v142 = 2;
LABEL_78:
  std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>::~__value_func[abi:ne200100](v154);
  std::unique_ptr<Phase::ManagedArray<Phase::Triangle<float>> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v158);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v159);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>>(a4, &v140);
  v28 = &v140;
LABEL_79:
  v91 = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v28);
  *(a3 + 72) = *(a1 + 24);
  v92 = Phase::Logger::GetInstance(v91);
  if (*(v92 + 232) == 1)
  {
    v93 = **(Phase::Logger::GetInstance(v92) + 224);
    v94 = v93;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v93))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v94, OS_SIGNPOST_INTERVAL_END, v9, "Phase_DirectPath_Spatial_Query_Token_Wait", &unk_23A5C28A2, buf, 2u);
    }
  }
}

void sub_23A397D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46)
{
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&a26);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&a27);
  std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>::~__value_func[abi:ne200100](&a33);
  std::unique_ptr<Phase::ManagedArray<Phase::Triangle<float>> [],std::function<void ()(void *)>>::reset[abi:ne200100](&a39);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&a40);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v46);
  _Unwind_Resume(a1);
}

void Phase::SpatialModeler::DirectPathTransmissionImpl::BuildOutput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v144 = *MEMORY[0x277D85DE8];
  std::atomic_load[abi:ne200100]<Phase::SpatialModeler::DirectPathTransmission::SourceData>(&v107, (a5 + 96));
  v9 = v107;
  v10 = v107[5];
  if (v10)
  {
    v11 = 0;
    v12 = (*v107 + 40);
    do
    {
      v13 = *v12;
      v12 += 19;
      v11 = (v11 + v13);
      --v10;
    }

    while (v10);
    if (v11)
    {
      v14 = *(a3 + 64);
      if (v14)
      {
        v15 = *(a4 + 192);
        v16 = *(v14 + 184);
        if (v16 > v15 && (v17 = *(v14 + 168), v18 = (v17 + 24 * v15), *(v18 + 5) == HIDWORD(v15)) && (v19 = *v18) != 0 && *v19 == 3)
        {
          v20 = *(a4 + 200);
          if (v16 > v20 && (v21 = (v17 + 24 * v20), *(v21 + 5) == HIDWORD(v20)) && (v22 = *v21) != 0 && *v22 == 2)
          {
            v23 = *(v19 + 64);
            v105 = *(v19 + 48);
            v106 = v23;
            v25 = *(v22 + 48);
            v26 = *(v22 + 64);
            v24 = (v22 + 48);
            v103 = v25;
            v104 = v26;
            *v27.i8 = Phase::Inverse<float>(&v103, buf);
            v30.n128_f32[0] = Phase::operator*<float>(buf, &v105, &v99, v27, v28, v29);
            v31 = *(a3 + 96);
            if (v31 && *v31 == 3)
            {
              Phase::SpatialModeler::AllocMetadata<float,Phase::SystemAllocator>(v31, (a2 + 40), v11, 3);
              v88 = a4;
              v89 = a1;
              v92 = v31;
              v87 = v24;
              v32 = 1.0 / v11;
              if (v32 <= 0.0)
              {
                v32 = COERCE_FLOAT(1);
              }

              *v34.i32 = logf(v32);
              v35 = v9[5];
              if (v35)
              {
                v36 = 0;
                v37 = 0;
                *v34.i32 = ((*v34.i32 * 8.6859) / 10.0) * 10.0;
                v91 = *v34.i32;
                v38 = vdup_lane_s32(v34, 0);
                v39 = vdup_n_s32(0x3DEBC8E3u);
                __asm { FMOV            V12.2S, #10.0 }

                do
                {
                  v98 = (*v9 + 152 * v36);
                  if (v98[5])
                  {
                    v90 = v36;
                    v45 = 0;
                    v46 = v11 - v37;
                    if (v11 < v37)
                    {
                      v46 = 0;
                    }

                    v93 = v46;
                    do
                    {
                      if (v45 == v93)
                      {
                        __assert_rtn("BuildOutput", "DirectPathTransmissionImpl.mm", 728, "outputIndex < totalPointCount");
                      }

                      v47 = v92[1];
                      v48 = v92[7];
                      v49 = v92[13];
                      v50 = *(v49 + 8);
                      v97 = v92[18];
                      Phase::operator*<float>(v99.f32, (*v98 + 12 * v45), buf);
                      v51 = vadd_f32(vmul_n_f32(*buf, v102), v100);
                      v52 = (v102 * *&buf[8]) + v101;
                      v53 = -v51.f32[0];
                      if (v51.f32[0] >= 0.0)
                      {
                        v53 = v51.f32[0];
                      }

                      if (v53 > 0.00000011921)
                      {
                        goto LABEL_34;
                      }

                      v54 = v51.f32[1];
                      if (v51.f32[1] < 0.0)
                      {
                        v54 = -v51.f32[1];
                      }

                      if (v54 > 0.00000011921)
                      {
                        goto LABEL_34;
                      }

                      v55 = -v52;
                      if (v52 >= 0.0)
                      {
                        v55 = (v102 * *&buf[8]) + v101;
                      }

                      if (v55 <= 0.00000011921)
                      {
                        v56 = 0.0;
                        v60 = 180.0;
                        v59 = 0.0;
                      }

                      else
                      {
LABEL_34:
                        v56 = sqrtf(vaddv_f32(vmul_f32(v51, v51)) + (v52 * v52));
                        v95 = v51.f32[0];
                        v57 = acosf(v51.f32[1] / v56);
                        v58 = atan2f(v95, v52);
                        v59 = v57 * 57.296;
                        v60 = 180.0 - (v58 * 57.296);
                      }

                      v61 = (v47 + 12 * v37);
                      *v61 = v56;
                      v61[1] = v59;
                      v62 = v60 - (floorf(v60 / 360.0) * 360.0);
                      if (v62 >= 360.0)
                      {
                        v63 = nextafterf(360.0, 0.0);
                      }

                      else
                      {
                        v63 = v62 + 0.0;
                      }

                      v64 = 0;
                      v65 = 0;
                      v66 = 0;
                      v61[2] = v63;
                      *(v48 + 4 * v37) = 0;
                      v67 = (v98[6] + 12 * v45);
                      v142 = vadd_f32(v38, *v67);
                      v68 = (v37 + 1);
                      v143 = v91 + v67[1].f32[0];
                      memset(buf, 0, sizeof(buf));
                      do
                      {
                        if (v65 <= 2)
                        {
                          v64 = v65 + 1;
                          *&buf[4 * v65++] = v142.i32[v66];
                        }

                        ++v66;
                      }

                      while (v66 != 3);
                      if (v64 <= 2)
                      {
                        bzero(&buf[4 * v64], 12 - 4 * v64);
                      }

                      v69 = *&buf[8];
                      v70 = vmul_f32(vdiv_f32(vmul_f32(*buf, _D12), _D12), v39);
                      v94 = v70.f32[0];
                      v96 = expf(v70.f32[1]);
                      v71.f32[0] = expf(v94);
                      v71.f32[1] = v96;
                      v142 = v71;
                      v72 = expf(((v69 * 10.0) / 10.0) * 0.11513);
                      v73 = 0;
                      v74 = 0;
                      v75 = 0;
                      v143 = v72;
                      memset(buf, 0, sizeof(buf));
                      do
                      {
                        if (v74 <= 2)
                        {
                          v73 = v74 + 1;
                          *&buf[4 * v74++] = v142.i32[v75];
                        }

                        ++v75;
                      }

                      while (v75 != 3);
                      if (v73 <= 2)
                      {
                        bzero(&buf[4 * v73], 12 - 4 * v73);
                      }

                      v76 = *&buf[8];
                      *(v49 + 4 * v50 * v37 + 16) = *buf;
                      *(v49 + 4 * v50 * v37 + 24) = v76;
                      *(v97 + v37) = 0;
                      ++v45;
                      ++v37;
                    }

                    while (v98[5] > v45);
                    v35 = v9[5];
                    v37 = v68;
                    v36 = v90;
                  }

                  else
                  {
                    v68 = v37;
                  }

                  ++v36;
                }

                while (v35 > v36);
              }

              else
              {
                v68 = 0;
              }

              Instance = Phase::Logger::GetInstance(v33);
              a1 = v89;
              if (*(Instance + 232) == 1)
              {
                v81 = **(Phase::Logger::GetInstance(Instance) + 224);
                v82 = Phase::Logger::GetInstance(v81);
                v83 = os_signpost_id_generate(**(v82 + 224));
                if (v83 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
                {
                  v84 = v83;
                  if (os_signpost_enabled(v81))
                  {
                    v86 = *(v88 + 192);
                    v85 = *(v88 + 200);
                    *buf = 134222080;
                    *&buf[4] = v92;
                    v110 = 2048;
                    v111 = v85;
                    v112 = 2048;
                    v113 = *&v103;
                    v114 = 2048;
                    v115 = *(&v103 + 1);
                    v116 = 2048;
                    v117 = *(&v103 + 2);
                    v118 = 2048;
                    v119 = *(&v103 + 3);
                    v120 = 2048;
                    v121 = *&v104;
                    v122 = 2048;
                    v123 = *(&v104 + 1);
                    v124 = 2048;
                    v125 = *(&v104 + 2);
                    v126 = 2048;
                    v127 = v86;
                    v128 = 2048;
                    v129 = *&v105;
                    v130 = 2048;
                    v131 = *(&v105 + 1);
                    v132 = 2048;
                    v133 = *(&v105 + 2);
                    v134 = 2048;
                    v135 = *(&v105 + 3);
                    v136 = 2048;
                    v137 = *&v106;
                    v138 = 2048;
                    v139 = *(&v106 + 1);
                    v140 = 2048;
                    v141 = *(&v106 + 2);
                    _os_signpost_emit_with_name_impl(&dword_23A302000, v81, OS_SIGNPOST_EVENT, v84, "Phase_Spatial_Modeler_Output", "Metadata %p built for: Listener %llu: Rotation [%f, %f, %f, %f], Position [%f, %f, %f] \n Source %llu: Rotation [%f, %f, %f, %f], Position [%f, %f, %f] \n ", buf, 0xACu);
                  }
                }
              }

              Phase::Trace::PostDirectPathSpatialModelerOutput(*(v88 + 200), *(v88 + 192), v87);
              if (v68 != v11)
              {
                __assert_rtn("BuildOutput", "DirectPathTransmissionImpl.mm", 781, "outputIndex == totalPointCount");
              }

              goto LABEL_68;
            }

            v77 = (**a2)(a2, v30);
            v78 = 4;
          }

          else
          {
            v77 = (**a2)(a2);
            v78 = 7;
          }
        }

        else
        {
          v77 = (**a2)(a2);
          v78 = 6;
        }
      }

      else
      {
        v77 = (**a2)(a2);
        v78 = 5;
      }

      *a1 = v78;
      *(a1 + 8) = v77;
      v79 = 2;
      goto LABEL_69;
    }
  }

LABEL_68:
  v79 = 1;
LABEL_69:
  *(a1 + 24) = v79;
  if (v108)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v108);
  }
}

void sub_23A398654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::SpatialModeler::DirectPathTransmissionImpl::RunSpatialQueryHandleResults@<X0>(Phase::Logger *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(a1);
  v7 = os_signpost_id_generate(**(Instance + 224));
  v8 = Phase::Logger::GetInstance(v7);
  if (*(v8 + 232) == 1)
  {
    v9 = **(Phase::Logger::GetInstance(v8) + 224);
    v10 = v9;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Phase_DirectPath_Spatial_Query_Handle_Results", "DirectPathTransmission: Handle Query Results", buf, 2u);
    }
  }

  v11 = atomic_load(a2);
  if (v11 == 3)
  {
    v12 = *(a1 + 2);
    if (*(v12 + 3192))
    {
      v13 = Phase::Geometry::SystemDebugger::GetFromSystem(v12);
      if (v13)
      {
          ;
        }
      }
    }

    std::atomic_load[abi:ne200100]<Phase::SpatialModeler::DirectPathTransmission::SourceData>(&v16, (*(a2 + 168) + 96));
    operator new();
  }

  result = (**a1)(a1);
  *a3 = 129;
  *(a3 + 8) = result;
  *(a3 + 24) = 2;
  return result;
}

void sub_23A39921C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, char a23)
{
  __cxa_free_exception(v23);
  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(a1);
}

void std::atomic_load[abi:ne200100]<Phase::SpatialModeler::DirectPathTransmission::SourceData>(void *a1, void *a2)
{
  sp_mut = std::__get_sp_mut(a2);
  std::__sp_mut::lock(sp_mut);
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::__sp_mut::unlock(sp_mut);
}

uint64_t std::function<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

void Phase::SpatialModeler::DirectPathTransmissionImpl::RunSpatialQueryReturnOutput(Phase::Logger *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  Instance = Phase::Logger::GetInstance(a1);
  v9 = os_signpost_id_generate(**(Instance + 224));
  v10 = Phase::Logger::GetInstance(v9);
  if (*(v10 + 232) == 1)
  {
    v11 = **(Phase::Logger::GetInstance(v10) + 224);
    v12 = v11;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Phase_DirectPath_Spatial_Query_Return_Output", "DirectPathTransmission: Return Output", buf, 2u);
    }
  }

  Phase::SpatialModeler::DirectPathTransmissionImpl::BuildOutput(a4, a1, a2, a3, *(a3 + 168));
  v14 = Phase::Logger::GetInstance(v13);
  if (*(v14 + 232) == 1)
  {
    v15 = **(Phase::Logger::GetInstance(v14) + 224);
    v16 = v15;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *v17 = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v16, OS_SIGNPOST_INTERVAL_END, v9, "Phase_DirectPath_Spatial_Query_Return_Output", &unk_23A5C28A2, v17, 2u);
    }
  }
}

void Phase::SpatialModeler::DirectPathTransmission::SourceFrame::~SourceFrame(Phase::SpatialModeler::DirectPathTransmission::SourceFrame *this)
{
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](this + 12);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](this + 104);
  std::unique_ptr<Phase::PackedSubbands<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](this + 6);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](this + 56);
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](this);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](this + 8);
}

float32_t Phase::operator*<float>@<S0>(float32x2_t *a1@<X0>, uint64_t a2@<X1>, float32x4_t *a3@<X8>, int8x16_t a4@<Q0>, int32x2_t a5@<D2>, float32x4_t a6@<Q3>)
{
  Phase::operator*<float>(a1, a2, &v13, a4, a5, a6);
  Phase::operator*<float>(a1, (a2 + 16), &v14);
  v9 = a1[3].f32[1];
  result = (v9 * v15) + a1[3].f32[0];
  v11 = vadd_f32(vmul_n_f32(v14, v9), a1[2]);
  v12 = v9 * *(a2 + 28);
  *a3 = v13;
  *a3[1].f32 = v11;
  a3[1].f32[2] = result;
  a3[1].f32[3] = v12;
  return result;
}

float32x2_t Phase::Inverse<float>@<D0>(float32x2_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1].i32[1];
  *&v4 = -a1[1].f32[0];
  *&v10 = vneg_f32(*a1);
  *(&v10 + 1) = __PAIR64__(v3, v4);
  v5 = 1.0 / a1[3].f32[1];
  Phase::operator*<float>(&v10, &a1[2], &v8);
  v6 = -(v5 * v9);
  *a2 = v10;
  result = vmul_n_f32(v8, -v5);
  *(a2 + 16) = result;
  *(a2 + 24) = v6;
  *(a2 + 28) = v5;
  return result;
}

float Phase::Geometry::CalculateDirectivitySubbandGains<3ul>(Phase::Geometry::SystemState *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = *a3 == 3 && *a2 == 2;
  v6 = 1.0;
  if (v5)
  {
    Phase::Geometry::SystemState::SystemState(v36, a1);
    v12 = *(a2 + 64);
    v34 = *(a2 + 48);
    v35 = v12;
    v13 = *(a3 + 64);
    v39 = *(a3 + 48);
    v40 = v13;
    _ZZN5Phase8Geometry32CalculateDirectivitySubbandGainsILm3EEENS_14PackedSubbandsIfXT_EEERNS0_11SystemStateERKNS0_6EntityES8_NS_8Handle64ES9_ENKUlT_bT0_T1_T2_E_clIS4_S9_NS_6AffineIfEESH_EEDaSA_bSB_SC_SD_(v37, v38, 1, a4, &v34, &v39);
    v6 = v14;
    v16 = v15;
    v18 = v17;
    Phase::Geometry::SystemState::~SystemState(v36);
    if (*(a3 + 120) == *(a3 + 128))
    {
      Phase::Geometry::SystemState::SystemState(v31, a1);
      v19 = *(a2 + 64);
      v34 = *(a2 + 48);
      v35 = v19;
      v20 = *(a3 + 64);
      v39 = *(a3 + 48);
      v40 = v20;
      _ZZN5Phase8Geometry32CalculateDirectivitySubbandGainsILm3EEENS_14PackedSubbandsIfXT_EEERNS0_11SystemStateERKNS0_6EntityES8_NS_8Handle64ES9_ENKUlT_bT0_T1_T2_E_clIS4_S9_NS_6AffineIfEESH_EEDaSA_bSB_SC_SD_(v32, v33, 0, a5, &v34, &v39);
      v22 = v21;
      v24 = v23;
      v26 = v25;
      Phase::Geometry::SystemState::~SystemState(v31);
      v27 = 0;
      v28 = 0;
      v29 = 0;
      *&v39 = v6 * v22;
      *(&v39 + 1) = v16 * v24;
      *(&v39 + 2) = v18 * v26;
      *&v34 = 0;
      DWORD2(v34) = 0;
      do
      {
        if (v28 <= 2)
        {
          v27 = v28 + 1;
          *(&v34 + v28++) = *(&v39 + v29);
        }

        v29 += 4;
      }

      while (v29 != 12);
      if (v27 <= 2)
      {
        bzero(&v34 + 4 * v27, 12 - 4 * v27);
      }

      return *&v34;
    }
  }

  return v6;
}

void sub_23A39987C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Phase::Geometry::SystemState::~SystemState(va);
  _Unwind_Resume(a1);
}

void Phase::Geometry::CalculateDistanceGainsInDecibels<Phase::SystemAllocator>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v43 = *MEMORY[0x277D85DE8];
  v13 = a6[5];
  v39 = 4;
  v40 = v13;
  v38[0] = a2;
  v38[1] = &v40;
  v38[2] = &v39;
  v37 = a2;
  Phase::details::AllocArray<float,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(float*)#1} const&>(v13, v38, &v37, &v41);
  v14 = v41;
  v41 = 0;
  *a1 = v14;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](a1 + 8, v42);
  *(a1 + 40) = v13;
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v41);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v42);
  v15 = *(a1 + 40);
  if (v15)
  {
    bzero(*a1, 4 * v15);
  }

  if (*(a3 + 88) > a7)
  {
    v16 = *(a3 + 72) + 24 * a7;
    if (*(v16 + 20) == HIDWORD(a7))
    {
      v17 = *v16;
      if (*v16)
      {
        if (*a5 == 3 && *a4 == 2)
        {
          v18 = *(a5 + 120);
          v19 = 0.0;
          if (v18 != *(a5 + 128))
          {
            v20 = *v18;
            if (*(a3 + 160) > v20)
            {
              v21 = *(a3 + 144) + 24 * v20;
              if (*(v21 + 20) == HIDWORD(v20))
              {
                if (*v21)
                {
                  v22 = *v21;
                  v19 = (*(a5 + 76) * fmaxf(fmaxf(v22[9] - v22[6], v22[10] - v22[7]), v22[11] - v22[8])) * 0.5;
                }
              }
            }
          }

          v23 = a6[5];
          if (v23)
          {
            v24 = 0;
            v25 = 0;
            v26 = *(a4 + 64);
            v27 = *(a4 + 68);
            v28 = *(a4 + 72);
            v29 = *(a4 + 152);
            do
            {
              Phase::operator*<float>((a5 + 48), (*a6 + v24), &v41);
              v30 = *(a5 + 76);
              v31 = fmaxf(v29, v19 + sqrtf((((v26 - ((v30 * *&v41) + *(a5 + 64))) * (v26 - ((v30 * *&v41) + *(a5 + 64)))) + ((v27 - ((v30 * *(&v41 + 1)) + *(a5 + 68))) * (v27 - ((v30 * *(&v41 + 1)) + *(a5 + 68))))) + ((v28 - ((v30 * v42[0]) + *(a5 + 72))) * (v28 - ((v30 * v42[0]) + *(a5 + 72))))));
              if (*v17 == 2)
              {
                v35 = **(v17 + 40);
                if (!v35)
                {
LABEL_27:
                  std::terminate();
                }

                v36 = Phase::Envelope<float>::operator()((v35 + 16), v31);
                if (v36 <= 0.0)
                {
                  v36 = COERCE_FLOAT(1);
                }

                v32 = ((logf(v36) * 8.6859) / 10.0) * 10.0;
              }

              else
              {
                v32 = 0.0;
                if (*v17 == 1)
                {
                  v33 = **(v17 + 40);
                  if (!v33)
                  {
                    goto LABEL_27;
                  }

                  v34 = (log2f(v31 / (v19 + 1.0)) * 6.0206) * *(v33 + 16);
                  v32 = 20.0;
                  if (v34 >= -20.0)
                  {
                    v32 = -v34;
                  }
                }
              }

              *(*a1 + 4 * v25++) = v32;
              v24 += 12;
            }

            while (v23 != v25);
          }
        }
      }
    }
  }
}

void sub_23A399BD8(_Unwind_Exception *a1)
{
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](v1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t Phase::SpatialModeler::DirectPathTransmissionImpl::BuildOutputPointSource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5, float a6, float a7)
{
  v116 = *MEMORY[0x277D85DE8];
  v9 = *(a3 + 64);
  if (!v9)
  {
    result = (**a2)(a2);
    v47 = 5;
    goto LABEL_26;
  }

  v11 = *(a4 + 192);
  v12 = *(v9 + 184);
  if (v12 <= v11 || (v13 = *(v9 + 168), v14 = (v13 + 24 * v11), *(v14 + 5) != HIDWORD(v11)) || (v15 = *v14) == 0 || *v15 != 3)
  {
    result = (**a2)(a2);
    v47 = 6;
LABEL_26:
    *a1 = v47;
    *(a1 + 8) = result;
    v48 = 2;
    goto LABEL_27;
  }

  v16 = *(a4 + 200);
  if (v12 <= v16 || (v17 = (v13 + 24 * v16), *(v17 + 5) != HIDWORD(v16)) || (v18 = *v17) == 0 || *v18 != 2)
  {
    result = (**a2)(a2);
    v47 = 7;
    goto LABEL_26;
  }

  v21 = *(v15 + 64);
  v79 = *(v15 + 48);
  v80 = v21;
  v23 = *(v18 + 48);
  v24 = *(v18 + 64);
  v22 = (v18 + 48);
  v77 = v23;
  v78 = v24;
  *v25.i8 = Phase::Inverse<float>(&v77, buf);
  v28.n128_f32[0] = Phase::operator*<float>(buf, &v79, &v73, v25, v26, v27);
  v29 = *(a3 + 96);
  if (!v29 || *v29 != 3)
  {
    result = (**a2)(a2, v28);
    v47 = 4;
    goto LABEL_26;
  }

  *(v29 + 200) = 1;
  Phase::SpatialModeler::AllocMetadata<float,Phase::SystemAllocator>(v29, (a2 + 40), 1, 3);
  v30 = *(v29 + 8);
  v31 = *(v29 + 56);
  v32 = *(v29 + 104);
  v33 = *(v29 + 144);
  v34 = v74;
  v35 = v76;
  v36 = -v74;
  if (v74 >= 0.0)
  {
    v36 = v74;
  }

  if (v36 > 0.00000011921)
  {
    goto LABEL_21;
  }

  v37 = -v75;
  if (v75 >= 0.0)
  {
    v37 = v75;
  }

  if (v37 > 0.00000011921)
  {
    goto LABEL_21;
  }

  v38 = -v76;
  if (v76 >= 0.0)
  {
    v38 = v76;
  }

  if (v38 <= 0.00000011921)
  {
    v39 = 0.0;
    v43 = 180.0;
    v42 = 0.0;
  }

  else
  {
LABEL_21:
    v39 = sqrtf(((v74 * v74) + (v75 * v75)) + (v76 * v76));
    v40 = acosf(v75 / v39);
    v41 = atan2f(v34, v35);
    v42 = v40 * 57.296;
    v43 = 180.0 - (v41 * 57.296);
  }

  *v30 = v39;
  v30[1] = v42;
  v44 = v43 - (floorf(v43 / 360.0) * 360.0);
  if (v44 >= 360.0)
  {
    v45 = nextafterf(360.0, 0.0);
  }

  else
  {
    v45 = v44 + 0.0;
  }

  v30[2] = v45;
  *v31 = 0;
  __asm { FMOV            V0.2S, #10.0 }

  v54 = vmul_f32(vdiv_f32(vmul_f32(__PAIR64__(LODWORD(a6), LODWORD(a5)), _D0), _D0), vdup_n_s32(0x3DEBC8E3u));
  v70 = v54.f32[0];
  v72 = expf(v54.f32[1]);
  *&v55 = expf(v70);
  *(&v55 + 1) = v72;
  v114 = v55;
  v57 = expf(((a7 * 10.0) / 10.0) * 0.11513);
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v115 = v57;
  memset(buf, 0, sizeof(buf));
  do
  {
    if (v59 <= 2)
    {
      v58 = v59 + 1;
      *&buf[4 * v59++] = *(&v114 + v60);
    }

    v60 += 4;
  }

  while (v60 != 12);
  if (v58 <= 2)
  {
    bzero(&buf[4 * v58], 12 - 4 * v58);
  }

  v61 = *&buf[8];
  *(v32 + 16) = *buf;
  *(v32 + 24) = v61;
  *v33 = 0;
  Instance = Phase::Logger::GetInstance(v56);
  if (*(Instance + 232) == 1)
  {
    v63 = **(Phase::Logger::GetInstance(Instance) + 224);
    v64 = Phase::Logger::GetInstance(v63);
    v65 = os_signpost_id_generate(**(v64 + 224));
    if (v65 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v66 = v65;
      if (os_signpost_enabled(v63))
      {
        v68 = *(a4 + 192);
        v67 = *(a4 + 200);
        *buf = 134222080;
        *&buf[4] = v29;
        v82 = 2048;
        v83 = v67;
        v84 = 2048;
        v85 = *&v77;
        v86 = 2048;
        v87 = *(&v77 + 1);
        v88 = 2048;
        v89 = *(&v77 + 2);
        v90 = 2048;
        v91 = *(&v77 + 3);
        v92 = 2048;
        v93 = *&v78;
        v94 = 2048;
        v95 = *(&v78 + 1);
        v96 = 2048;
        v97 = *(&v78 + 2);
        v98 = 2048;
        v99 = v68;
        v100 = 2048;
        v101 = *&v79;
        v102 = 2048;
        v103 = *(&v79 + 1);
        v104 = 2048;
        v105 = *(&v79 + 2);
        v106 = 2048;
        v107 = *(&v79 + 3);
        v108 = 2048;
        v109 = *&v80;
        v110 = 2048;
        v111 = *(&v80 + 1);
        v112 = 2048;
        v113 = *(&v80 + 2);
        _os_signpost_emit_with_name_impl(&dword_23A302000, v63, OS_SIGNPOST_EVENT, v66, "Phase_Spatial_Modeler_Output", "Metadata %p built for: Listener %llu: Rotation [%f, %f, %f, %f], Position [%f, %f, %f] \n Source %llu: Rotation [%f, %f, %f, %f], Position [%f, %f, %f] \n ", buf, 0xACu);
      }
    }
  }

  result = Phase::Trace::PostDirectPathSpatialModelerOutput(*(a4 + 200), *(a4 + 192), v22);
  v48 = 1;
LABEL_27:
  *(a1 + 24) = v48;
  return result;
}

void Phase::SpatialModeler::DirectPathTransmissionImpl::RunSpatialQueryHandleResultsPointSource(Phase::Logger *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(a1);
  v9 = os_signpost_id_generate(**(Instance + 224));
  v10 = Phase::Logger::GetInstance(v9);
  if (*(v10 + 232) == 1)
  {
    v11 = **(Phase::Logger::GetInstance(v10) + 224);
    v12 = v11;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Phase_DirectPath_Spatial_Query_Handle_Results", "DirectPathTransmission: Handle Query Results", buf, 2u);
    }
  }

  v13 = atomic_load(a3);
  if (v13 == 3)
  {
    v14 = *(a1 + 2);
    if (!*(v14 + 3192))
    {
      goto LABEL_20;
    }

    v15 = Phase::Geometry::SystemDebugger::GetFromSystem(v14);
    if (!v15)
    {
      goto LABEL_20;
    }

    v18 = *(v15 + 24);
    v16 = v15 + 24;
    v17 = v18;
    if (!v18)
    {
      goto LABEL_20;
    }

    v19 = *(a3 + 192);
    v20 = v16;
    do
    {
      v21 = *(v17 + 32);
      v22 = v21 >= v19;
      v23 = v21 < v19;
      if (v22)
      {
        v20 = v17;
      }

      v17 = *(v17 + 8 * v23);
    }

    while (v17);
    if (v20 != v16)
    {
      v24 = *(v20 + 32);
      v25 = v20 + 40;
      if (v24 <= v19)
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
LABEL_20:
      v26 = 0;
    }

    v28 = 0;
    v29 = 0;
    v30 = 0;
    v60 = vneg_f32(*(a3 + 436));
    *&v61 = -*(a3 + 444);
    *buf = 0;
    v49 = 0.0;
    do
    {
      if (v29 <= 2)
      {
        v28 = v29 + 1;
        *&buf[4 * v29++] = v60.i32[v30];
      }

      ++v30;
    }

    while (v30 != 3);
    if (v28 <= 2)
    {
      bzero(&buf[4 * v28], 12 - 4 * v28);
    }

    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = *(a3 + 264);
    v60 = vadd_f32(*buf, v34);
    *&v61 = v49 + *(a3 + 272);
    *buf = 0;
    v49 = 0.0;
    do
    {
      if (v32 <= 2)
      {
        v31 = v32 + 1;
        *&buf[4 * v32++] = v60.i32[v33];
      }

      ++v33;
    }

    while (v33 != 3);
    if (v31 <= 2)
    {
      bzero(&buf[4 * v31], 12 - 4 * v31);
    }

    v35 = 0;
    v36 = 0;
    v37 = 0;
    v34.i32[0] = *(a3 + 384);
    v60 = vadd_f32(*buf, vdup_lane_s32(v34, 0));
    *&v61 = v49 + v34.f32[0];
    *buf = 0;
    v49 = 0.0;
    do
    {
      if (v36 <= 2)
      {
        v35 = v36 + 1;
        *&buf[4 * v36++] = v60.i32[v37];
      }

      ++v37;
    }

    while (v37 != 3);
    if (v35 <= 2)
    {
      bzero(&buf[4 * v35], 12 - 4 * v35);
    }

    v38 = *buf;
    v39 = v49;
    if (v26 && *(v26 + 40))
    {
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v60 = *(a3 + 192);
      v61 = xmmword_23A554B70;
      v58 = 0;
      v59 = 0;
      v62 = &v58;
      v63 = 0;
      v64 = vneg_f32(*buf);
      v65 = -v49;
      *buf = 0;
      v49 = 0.0;
      do
      {
        if (v41 <= 2)
        {
          v40 = v41 + 1;
          *&buf[4 * v41++] = v64.i32[v42];
        }

        ++v42;
      }

      while (v42 != 3);
      v47 = v38;
      if (v40 <= 2)
      {
        bzero(&buf[4 * v40], 12 - 4 * v40);
      }

      v57 = 3;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v63 = buf;
      std::function<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>::operator()(*(v26 + 40), &v60);
      v38 = v47;
    }

    v43 = Phase::SpatialModeler::DirectPathTransmissionImpl::BuildOutputPointSource(a4, a1, a2, a3, v38.f32[0], v38.f32[1], v39);
    v44 = Phase::Logger::GetInstance(v43);
    if (*(v44 + 232) == 1)
    {
      v45 = **(Phase::Logger::GetInstance(v44) + 224);
      v46 = v45;
      if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_23A302000, v46, OS_SIGNPOST_INTERVAL_END, v9, "Phase_DirectPath_Spatial_Query_Handle_Results", &unk_23A5C28A2, buf, 2u);
      }
    }
  }

  else
  {
    v27 = (**a1)(a1);
    *a4 = 129;
    *(a4 + 8) = v27;
    *(a4 + 24) = 2;
  }
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_284D31CC8[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN5Phase14SpatialModeler13ReturnSuccessENSA_11ReturnErrorENSA_18WaitOnSceneQueriesENSA_18ClaimOrWaitOnTokenENSA_12ReleaseTokenEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSH_1EJS8_SB_SC_SD_SE_SF_EEEEEEDcSJ_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

uint64_t std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 24);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_284D31CF8[v5])(&v6, a2);
    *(a1 + 24) = v5;
  }

  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken> &&>(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  v2->n128_u64[0] = 0;
  v2->n128_u64[1] = 0;
  v2[1].n128_u64[0] = 0;
  result = *a2;
  *v2 = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (*(result + 24) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (off_284D31D28[v4])(v6);
    }
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN5Phase14SpatialModeler13ReturnSuccessENSA_11ReturnErrorENSA_18WaitOnSceneQueriesENSA_18ClaimOrWaitOnTokenENSA_12ReleaseTokenEEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISG_LNS0_6_TraitE1EEEEEvOT_EUlRSM_OT0_E_JRNS0_6__baseILSK_1EJS8_SB_SC_SD_SE_SF_EEEOSU_EEEDcSM_DpT0_(uint64_t *result)
{
  v1 = *result;
  if (*(*result + 24))
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    *(v1 + 24) = 0;
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN5Phase14SpatialModeler13ReturnSuccessENSA_11ReturnErrorENSA_18WaitOnSceneQueriesENSA_18ClaimOrWaitOnTokenENSA_12ReleaseTokenEEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISG_LNS0_6_TraitE1EEEEEvOT_EUlRSM_OT0_E_JRNS0_6__baseILSK_1EJS8_SB_SC_SD_SE_SF_EEEOSU_EEEDcSM_DpT0_(uint64_t *result)
{
  v1 = *result;
  if (*(*result + 24) != 1)
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    *(v1 + 24) = 1;
  }

  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN5Phase14SpatialModeler13ReturnSuccessENSA_11ReturnErrorENSA_18WaitOnSceneQueriesENSA_18ClaimOrWaitOnTokenENSA_12ReleaseTokenEEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISG_LNS0_6_TraitE1EEEEEvOT_EUlRSM_OT0_E_JRNS0_6__baseILSK_1EJS8_SB_SC_SD_SE_SF_EEEOSU_EEEDcSM_DpT0_(uint64_t *a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  if (*(*a1 + 24) == 2)
  {
    result = *a3;
    *a2 = *a3;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*a1);
    result = *a3;
    *v4 = *a3;
    *(v4 + 24) = 2;
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4ELm4EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN5Phase14SpatialModeler13ReturnSuccessENSA_11ReturnErrorENSA_18WaitOnSceneQueriesENSA_18ClaimOrWaitOnTokenENSA_12ReleaseTokenEEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISG_LNS0_6_TraitE1EEEEEvOT_EUlRSM_OT0_E_JRNS0_6__baseILSK_1EJS8_SB_SC_SD_SE_SF_EEEOSU_EEEDcSM_DpT0_(uint64_t *result, void *a2, void *a3)
{
  v4 = *result;
  if (*(*result + 24) == 4)
  {
    *a2 = *a3;
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    *v4 = *a3;
    *(v4 + 24) = 4;
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5ELm5EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN5Phase14SpatialModeler13ReturnSuccessENSA_11ReturnErrorENSA_18WaitOnSceneQueriesENSA_18ClaimOrWaitOnTokenENSA_12ReleaseTokenEEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISG_LNS0_6_TraitE1EEEEEvOT_EUlRSM_OT0_E_JRNS0_6__baseILSK_1EJS8_SB_SC_SD_SE_SF_EEEOSU_EEEDcSM_DpT0_(uint64_t *result, void *a2, void *a3)
{
  v4 = *result;
  if (*(*result + 24) == 5)
  {
    *a2 = *a3;
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    *v4 = *a3;
    *(v4 + 24) = 5;
  }

  return result;
}

__n128 std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>>::__assign_alt[abi:ne200100]<3ul,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::WaitOnSceneQueries>(uint64_t a1, uint64_t a2, __n128 *a3)
{
  if (*(a1 + 24) == 3)
  {

    result.n128_u64[0] = std::vector<Phase::Geometry::SceneQueryBatch *>::__move_assign(a2, a3).n128_u64[0];
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a3;
    *a1 = *a3;
    *(a1 + 16) = a3[1].n128_u64[0];
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    *(a1 + 24) = 3;
  }

  return result;
}

__n128 std::vector<Phase::Geometry::SceneQueryBatch *>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t *std::unique_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceFrame [],std::function<void ()(void *)>>::reset[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return std::function<void ()(void *)>::operator()((result + 1), v1);
  }

  return result;
}

void *std::vector<Phase::Vector<float,3ul>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<Phase::Vector<float,3ul>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_23A39AB74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<Phase::Vector<float,3ul>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Vector<float,3ul>>>(a1, a2);
  }

  std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::unique_ptr<Phase::PackedSubbands<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return std::function<void ()(void *)>::operator()((result + 1), v1);
  }

  return result;
}

uint64_t *std::unique_ptr<Phase::SpatialModeler::TraceWithEnergyQuery [],std::function<void ()(void *)>>::reset[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return std::function<void ()(void *)>::operator()((result + 1), v1);
  }

  return result;
}

uint64_t std::vector<Phase::Geometry::SceneQueryBatch *>::__init_with_size[abi:ne200100]<Phase::Geometry::SceneQueryBatch * const*,Phase::Geometry::SceneQueryBatch * const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<Phase::Geometry::SceneQueryBatch *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23A39AC8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<Phase::Geometry::SceneQueryBatch *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::DVM23::SubmixController *>>(a1, a2);
  }

  std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<Phase::Geometry::SceneQueryBatch *>::__init_with_size[abi:ne200100]<Phase::Geometry::SceneQueryBatch **,Phase::Geometry::SceneQueryBatch **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<Phase::Geometry::SceneQueryBatch *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23A39AD44(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<Phase::ManagedArray<Phase::Triangle<float>> [],std::function<void ()(void *)>>::reset[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return std::function<void ()(void *)>::operator()((result + 1), v1);
  }

  return result;
}

float Phase::Envelope<float>::operator()(float **a1, float a2)
{
  v2 = a1[1];
  v3 = *a1;
  v4 = *v3;
  v5 = *(v2 - 10);
  v6 = v5 >= a2 && v4 <= a2;
  v7 = fminf(fmaxf(a2, v4), v5);
  if (!v6)
  {
    a2 = v7;
  }

  if (v2 != v3)
  {
    while (a2 < *v3 || a2 >= v3[2])
    {
      v3 += 12;
      if (v3 == v2)
      {
        goto LABEL_14;
      }
    }
  }

  if (v3 == v2)
  {
LABEL_14:
    if (a2 != *(v2 - 10))
    {
      std::terminate();
    }

    v3 = v2 - 12;
  }

  return Phase::Envelope<float>::SegmentInternal::operator()(v3, a2);
}

float Phase::Envelope<float>::SegmentInternal::operator()(float *a1, float a2)
{
  v3 = *a1;
  v4 = a1[2];
  v5 = *a1 - v4;
  if (v5 < 0.0)
  {
    v5 = -v5;
  }

  if (v5 <= 0.001)
  {
    v6 = 0.0;
    if (v3 <= a2)
    {
      v6 = 1.0;
      if (v3 >= a2)
      {
        v6 = 0.5;
      }
    }
  }

  else
  {
    v6 = fminf(fmaxf((a2 - v3) / (v4 - v3), 0.0), 1.0);
  }

  std::function<float ()(float)>::operator()((a1 + 4), v6);
  return a1[1] + (fminf(fmaxf(v7, 0.0), 1.0) * (a1[3] - a1[1]));
}

uint64_t std::function<float ()(float)>::operator()(uint64_t a1, float a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

float32x4_t Phase::operator*<float>@<Q0>(uint64_t a1@<X0>, int32x4_t *a2@<X1>, float32x4_t *a3@<X8>, int8x16_t a4@<Q0>, int32x2_t a5@<D2>, float32x4_t a6@<Q3>)
{
  a4.i64[0] = *a1;
  a5.i32[0] = *(a1 + 8);
  *a6.f32 = vzip1_s32(a5, *a1);
  a4.i32[2] = a5.i32[0];
  v6 = vnegq_f32(a6).u64[0];
  v7 = vextq_s8(vextq_s8(a4, a4, 0xCuLL), a4, 8uLL);
  a4.i32[3] = HIDWORD(v6);
  v7.f32[3] = -COERCE_FLOAT(HIDWORD(*a1));
  v8 = vzip1q_s32(*a2, *a2);
  v8.i32[0] = a2->i64[1];
  v9.i64[0] = v6;
  v9.f32[2] = v7.f32[3];
  v9.i32[3] = v6;
  result = vmlaq_f32(vmlaq_f32(vmlaq_n_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(*a2, 3), *a2, 4uLL), a4), *a2, *(a1 + 12)), v8, v7), vrev64q_s32(vuzp1q_s32(v8, vzip1q_s32(v8, v8))), v9);
  *a3 = result;
  return result;
}

uint64_t std::__function::__value_func<void ()(Phase::Geometry::SceneQueryBatch *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<std::unique_ptr<Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState,std::unique_ptr<Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long)::{lambda(Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState*)#1} const&>(Phase::SystemAllocator&&,std::unique_ptr<Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long)::{lambda(Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState*)#1} const&)::{lambda(void *)#1},std::allocator<std::unique_ptr<Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState,std::unique_ptr<Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long)::{lambda(Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState*)#1} const&>(Phase::SystemAllocator&&,std::unique_ptr<Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long)::{lambda(Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState*)#1} const&)::{lambda(void *)#1}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D31D68;
  a2[1] = v2;
  return result;
}

void std::__function::__func<std::unique_ptr<Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState,std::unique_ptr<Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long)::{lambda(Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState*)#1} const&>(Phase::SystemAllocator&&,std::unique_ptr<Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long)::{lambda(Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState*)#1} const&)::{lambda(void *)#1},std::allocator<std::unique_ptr<Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState,std::unique_ptr<Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long)::{lambda(Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState*)#1} const&>(Phase::SystemAllocator&&,std::unique_ptr<Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long)::{lambda(Phase::SpatialModeler::DirectPathTransmissionImpl::SpatialQueryState*)#1} const&)::{lambda(void *)#1}>,void ()(void *)>::operator()(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](*a2 + 41);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((v2 + 42));
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](v2 + 35);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((v2 + 36));
  v3 = v2[22];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = v2[20];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::unique_ptr<Phase::SpatialModeler::TraceWithEnergyQuery [],std::function<void ()(void *)>>::reset[abi:ne200100](v2 + 13);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((v2 + 14));
  std::__function::__value_func<void ()(Phase::Geometry::SceneQueryBatch *)>::~__value_func[abi:ne200100]((v2 + 3));
  v5 = v2[2];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  operator delete(v2);
}

uint64_t Phase::details::AllocArray<float,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float>(unsigned long,unsigned long)::{lambda(float*)#1} const&>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v6 = **(Phase::Logger::GetInstance(0) + 128);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 136315394;
      *&v8[4] = "ManagedPtr.hpp";
      v9 = 1024;
      v10 = 229;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inCount == 0 is true]: Attempting to allocate an array of 0 elements", v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempting to allocate an array of 0 elements");
  }

  v4 = operator new(4 * **a2, **(a2 + 8));
  *v8 = &unk_284D31E78;
  v8[8] = 0;
  v11 = v8;
  *a3 = v4;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100]((a3 + 1), v8);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v8);
}

uint64_t _ZNKSt3__110__function6__funcIZN5Phase7details10AllocArrayIfRKZNS3_10AllocArrayIfEENS_10unique_ptrIA_T_NS_8functionIFvPvEEEEEmmEUlvE_RKZNS5_IfEESD_mmEUlPS7_E_EESD_mOT0_OT1_EUlSA_E_NS_9allocatorISP_EESB_E7__cloneEPNS0_6__baseISB_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_284D31E78;
  *(a2 + 8) = *(result + 8);
  return result;
}

void std::__shared_ptr_emplace<Phase::SpatialModeler::DirectPathTransmission::SourceData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D31DB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__shared_ptr_emplace<Phase::SpatialModeler::DirectPathTransmission::SourceData>::__on_zero_shared(uint64_t a1)
{
  std::unique_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceFrame [],std::function<void ()(void *)>>::reset[abi:ne200100]((a1 + 24));

  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](a1 + 32);
}

__n128 _ZNKSt3__110__function6__funcIZN5Phase7details10AllocArrayINS2_14SpatialModeler22DirectPathTransmission11SourceFrameERKZNS3_10AllocArrayIS7_EENS_10unique_ptrIA_T_NS_8functionIFvPvEEEEEmmEUlvE_RKZNS8_IS7_EESG_mmEUlPSA_E_EESG_mOT0_OT1_EUlSD_E_NS_9allocatorISS_EESE_E7__cloneEPNS0_6__baseISE_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D31DE8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZN5Phase7details10AllocArrayINS2_14SpatialModeler22DirectPathTransmission11SourceFrameERKZNS3_10AllocArrayIS7_EENS_10unique_ptrIA_T_NS_8functionIFvPvEEEEEmmEUlvE_RKZNS8_IS7_EESG_mmEUlPSA_E_EESG_mOT0_OT1_EUlSD_E_NS_9allocatorISS_EESE_EclEOSD_(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v4 = 0;
    v5 = *a2;
    do
    {
      std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](v5 + 12);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((v5 + 13));
      std::unique_ptr<Phase::PackedSubbands<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](v5 + 6);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((v5 + 7));
      std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](v5);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((v5 + 1));
      ++v4;
      v5 += 19;
    }

    while (v4 < *(a1 + 8));
  }

  operator delete(v2);
}

void _ZZN5Phase8Geometry32CalculateDirectivitySubbandGainsILm3EEENS_14PackedSubbandsIfXT_EEERNS0_11SystemStateERKNS0_6EntityES8_NS_8Handle64ES9_ENKUlT_bT0_T1_T2_E_clIS4_S9_NS_6AffineIfEESH_EEDaSA_bSB_SC_SD_(uint64_t a1, unsigned int a2, int a3, uint64_t a4, float32x2_t *a5, float32x2_t *a6)
{
  if (a4 >= a2)
  {
    return;
  }

  v6 = (a1 + 24 * a4);
  if (*(v6 + 5) != HIDWORD(a4))
  {
    return;
  }

  v7 = *v6;
  if (!v7)
  {
    return;
  }

  v8 = *v7;
  if (*v7 == 3)
  {
    v22 = **(v7 + 5);
    if (!v22)
    {
      goto LABEL_38;
    }

    if (a3)
    {
      v23 = a6;
    }

    else
    {
      v23 = a5;
    }

    if (a3)
    {
      v24 = a5;
    }

    else
    {
      v24 = a6;
    }

    Phase::TransformPositionByInverse<float>(v24, v23 + 2, &v31);
    v25 = v31.f32[0];
    v26 = v32;
    v27 = acosf(v31.f32[1] / sqrtf(((v25 * v25) + (v31.f32[1] * v31.f32[1])) + (v26 * v26)));
    v28 = atan2f(v25, v26) + 3.1416;
    v29 = v28 - (floorf(v28 / 6.2832) * 6.2832);
    if (v29 >= 6.2832)
    {
      v30 = nextafterf(6.2832, 0.0);
    }

    else
    {
      v30 = v29 + 0.0;
    }

    Phase::Geometry::SphericalCapDirectivity::GetSubbandGainsFromDatabase<3ul>(v22, v27, v30);
  }

  else
  {
    if (v8 != 2)
    {
      if (v8 != 1)
      {
        return;
      }

      v9 = *(*(v7 + 5) + 40);
      if (v9)
      {
        if (a3)
        {
          v10 = a6;
        }

        else
        {
          v10 = a5;
        }

        if (a3)
        {
          v11 = a5;
        }

        else
        {
          v11 = a6;
        }

        Phase::TransformPositionByInverse<float>(v11, v10 + 2, &v31);
        v12 = v31.f32[0];
        v13 = v32;
        v14 = acosf(v31.f32[1] / sqrtf(((v12 * v12) + (v31.f32[1] * v31.f32[1])) + (v13 * v13)));
        v15 = atan2f(v12, v13) + 3.1416;
        v16 = v15 - (floorf(v15 / 6.2832) * 6.2832);
        if (v16 >= 6.2832)
        {
          v17 = nextafterf(6.2832, 0.0);
        }

        else
        {
          v17 = v16 + 0.0;
        }

        Phase::Geometry::CardioidDirectivity::CalculateSubbandGains<3ul>(v9, v14, v17);
        return;
      }

LABEL_38:
      std::terminate();
    }

    v18 = *(*(v7 + 5) + 40);
    if (!v18)
    {
      goto LABEL_38;
    }

    if (a3)
    {
      v19 = a6;
    }

    else
    {
      v19 = a5;
    }

    if (a3)
    {
      v20 = a5;
    }

    else
    {
      v20 = a6;
    }

    Phase::TransformPositionByInverse<float>(v20, v19 + 2, &v31);
    v21 = acosf(-v32 / sqrtf(vaddv_f32(vmul_f32(v31, v31)) + (v32 * v32)));
    Phase::Geometry::ConeDirectivity::CalculateSubbandGains<3ul>(v18, v21 + v21);
  }
}

float Phase::TransformPositionByInverse<float>@<S0>(float32x2_t *a1@<X0>, float32x2_t *a2@<X1>, float *a3@<X8>)
{
  v3 = a1[1].i32[1];
  *&v4 = -a1[1].f32[0];
  v5 = vneg_f32(*a1);
  v10[0] = v5;
  v10[1] = __PAIR64__(v3, v4);
  v5.i32[0] = a1[3].i32[1];
  v6 = (a2[1].f32[0] - a1[3].f32[0]) / *v5.i32;
  v8 = vdiv_f32(vsub_f32(*a2, a1[2]), vdup_lane_s32(v5, 0));
  v9 = v6;
  return Phase::operator*<float>(v10, &v8, a3);
}

void Phase::Geometry::CardioidDirectivity::CalculateSubbandGains<3ul>(uint64_t a1, float a2, float a3)
{
  __asm { FMOV            V1.2S, #1.0 }

  v19 = _D1;
  v20 = 1065353216;
  v9 = *(a1 + 140);
  if (v9)
  {
    if (v9 >= 3)
    {
      v10 = 3;
    }

    else
    {
      v10 = v9;
    }

    v11 = (a1 + 272);
    v12 = sinf(a2);
    v13 = v12 * cosf(a3);
    v14 = &v19;
    do
    {
      v15 = *(v11 - 32);
      v16 = *v11++;
      v17 = v16;
      v18 = (1.0 - v15) + (v13 * v15);
      if (v18 < 0.0)
      {
        v18 = -v18;
      }

      *v14++ = powf(v18, v17);
      --v10;
    }

    while (v10);
  }
}

float Phase::Geometry::ConeDirectivity::CalculateSubbandGains<3ul>(uint64_t a1, float a2)
{
  __asm { FMOV            V1.2S, #1.0 }

  v17 = 1065353216;
  LODWORD(v7) = *(a1 + 140);
  if (!v7)
  {
    return 1.0;
  }

  if (v7 >= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = v7;
  }

  v8 = (a1 + 400);
  v9 = &v16;
  do
  {
    v10 = *(v8 - 64);
    v11 = *(v8 - 32);
    v12 = v10 - v11;
    if ((v10 - v11) < 0.0)
    {
      v12 = -(v10 - v11);
    }

    if (v12 <= 0.001745)
    {
      v13 = 0.0;
      if (v10 <= a2)
      {
        if (v10 >= a2)
        {
          v13 = 0.5;
        }

        else
        {
          v13 = 1.0;
        }
      }
    }

    else
    {
      v13 = fminf(fmaxf((a2 - v10) / (v11 - v10), 0.0), 1.0);
    }

    v14 = *v8++;
    *v9++ = (1.0 - v13) + (v14 * v13);
    --v7;
  }

  while (v7);
  return *&v16;
}

float Phase::Geometry::SphericalCapDirectivity::GetSubbandGainsFromDatabase<3ul>(uint64_t a1, float a2, float a3)
{
  v3 = a2 + -1.5708;
  v4 = *(a1 + 48);
  v5 = cosf(a3);
  v6 = cosf(v3);
  v7 = acosf(v5 * v6);
  ValuesForAllDimensionsAt = Phase::Zeppelin::SphereSampling::NDimEquiangularHalfCircleData<float,double>::GetValuesForAllDimensionsAt(*v4, 0, v7);
  v9 = 0;
  v10 = &v13;
  do
  {
    v11 = *(ValuesForAllDimensionsAt + v9);
    *v10++ = v11;
    v9 += 8;
  }

  while (v9 != 24);
  return v13;
}

Phase::Geometry::SystemState *Phase::Geometry::SystemState::SystemState(Phase::Geometry::SystemState *this, Phase::Geometry::SystemState *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  Phase::SharedSlotMapState<Phase::Geometry::Context,Phase::Handle64>::operator=(this, a2);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  Phase::SharedSlotMapState<Phase::Geometry::Context,Phase::Handle64>::operator=(this + 24, a2 + 3);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  Phase::SharedSlotMapState<Phase::Geometry::Context,Phase::Handle64>::operator=(this + 48, a2 + 6);
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  Phase::SharedSlotMapState<Phase::Geometry::Context,Phase::Handle64>::operator=(this + 72, a2 + 9);
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 28) = 0;
  Phase::SharedSlotMapState<Phase::Geometry::Context,Phase::Handle64>::operator=(this + 96, a2 + 12);
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 34) = 0;
  Phase::SharedSlotMapState<Phase::Geometry::Context,Phase::Handle64>::operator=(this + 120, a2 + 15);
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 40) = 0;
  Phase::SharedSlotMapState<Phase::Geometry::Context,Phase::Handle64>::operator=(this + 144, a2 + 18);
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 46) = 0;
  Phase::SharedSlotMapState<Phase::Geometry::Context,Phase::Handle64>::operator=(this + 168, a2 + 21);
  memcpy(this + 192, a2 + 192, 0x310uLL);
  v5 = *(a2 + 61);
  v4 = *(a2 + 62);
  *(this + 126) = *(a2 + 126);
  *(this + 61) = v5;
  *(this + 62) = v4;
  *(this + 1016) = *(a2 + 1016);
  *(this + 129) = 0;
  *(this + 131) = 0;
  *(this + 130) = 0;
  v6 = *(a2 + 129);
  v7 = *(a2 + 130);
  if (v7 != v6)
  {
    std::vector<std::shared_ptr<Phase::Geometry::MpsCpuScene>>::__vallocate[abi:ne200100](this + 1032, (v7 - v6) >> 4);
  }

  v8 = *(a2 + 66);
  *(this + 134) = *(a2 + 134);
  *(this + 66) = v8;
  return this;
}

void sub_23A39BBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v9[130] = v10;
  std::vector<std::shared_ptr<Phase::Geometry::MpsCpuScene>>::__destroy_vector::operator()[abi:ne200100](&a9);
  v12 = v9[22];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = v9[19];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = v9[16];
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = v9[13];
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = v9[10];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = v9[7];
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v18 = v9[4];
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v19 = v9[1];
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::SharedSlotMapState<Phase::Geometry::Context,Phase::Handle64>::operator=(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *(a1 + 16) = *(a2 + 4);
  return a1;
}

void std::vector<std::shared_ptr<Phase::Geometry::MpsCpuScene>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<Phase::Geometry::MpsCpuScene>>>(a1, a2);
  }

  std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<Phase::Geometry::MpsCpuScene>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<Phase::Geometry::MpsCpuScene>>,std::shared_ptr<Phase::Geometry::MpsCpuScene>*,std::shared_ptr<Phase::Geometry::MpsCpuScene>*,std::shared_ptr<Phase::Geometry::MpsCpuScene>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<Phase::Geometry::MpsCpuScene>>,std::shared_ptr<Phase::Geometry::MpsCpuScene>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<Phase::Geometry::MpsCpuScene>>,std::shared_ptr<Phase::Geometry::MpsCpuScene>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<Phase::Geometry::MpsCpuScene>>,std::shared_ptr<Phase::Geometry::MpsCpuScene>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<Phase::Geometry::MpsCpuScene>>,std::shared_ptr<Phase::Geometry::MpsCpuScene>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v1 -= 16;
  }
}

void std::vector<std::shared_ptr<Phase::Geometry::MpsCpuScene>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<Phase::Geometry::MpsCpuScene>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<Phase::Geometry::MpsCpuScene>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void Phase::Geometry::SystemState::~SystemState(Phase::Geometry::SystemState *this)
{
  v10 = (this + 1032);
  std::vector<std::shared_ptr<Phase::Geometry::MpsCpuScene>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v2 = *(this + 22);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 13);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 10);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 7);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 4);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 1);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

uint64_t Phase::details::AllocArray<Phase::SpatialModeler::TraceWithEnergyQuery,std::unique_ptr<Phase::SpatialModeler::TraceWithEnergyQuery [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::TraceWithEnergyQuery,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::TraceWithEnergyQuery [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::TraceWithEnergyQuery,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::TraceWithEnergyQuery*)#1} const&>(Phase::Logger *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v20 = **(Phase::Logger::GetInstance(a1) + 128);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v22 = 136315394;
      *&v22[4] = "ManagedPtr.hpp";
      *&v22[12] = 1024;
      *&v22[14] = 229;
      _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inCount == 0 is true]: Attempting to allocate an array of 0 elements", v22, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempting to allocate an array of 0 elements");
  }

  v7 = Phase::SystemAllocator::Alloc(*a3, (68 * **(a3 + 8)), **(a3 + 16));
  v8 = &v7[68 * a2];
  v9 = v7;
  do
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    *v9 = 0;
    *(v9 + 1) = 0;
    *(v9 + 2) = 0;
    *(v9 + 3) = 0x7F7FFFFF00000000;
    *(v9 + 4) = 0;
    v13 = v9 + 32;
    *v22 = 0;
    *&v22[8] = 0;
    *(v9 + 10) = 0;
    do
    {
      if (v11 <= 2)
      {
        v10 = v11 + 1;
        *&v13[4 * v11++] = *&v22[v12];
      }

      v12 += 4;
    }

    while (v12 != 12);
    if (v10 <= 2)
    {
      bzero(&v13[4 * v10], 12 - 4 * v10);
    }

    v14 = 0;
    v15 = 0;
    v16 = 0;
    *(v9 + 11) = 0;
    *(v9 + 6) = 0;
    v17 = v9 + 48;
    *v22 = 0;
    *&v22[8] = 0;
    *(v9 + 14) = 0;
    do
    {
      if (v15 <= 2)
      {
        v14 = v15 + 1;
        *&v17[4 * v15++] = *&v22[v16];
      }

      v16 += 4;
    }

    while (v16 != 12);
    if (v14 <= 2)
    {
      bzero(&v17[4 * v14], 12 - 4 * v14);
    }

    *(v9 + 15) = 0;
    *(v9 + 16) = 0;
    v9 += 68;
  }

  while (v9 != v8);
  v18 = *a4;
  *v22 = &unk_284D31E30;
  *&v22[8] = v18;
  v23 = v22;
  *a1 = v7;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](a1 + 8, v22);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v22);
}

uint64_t std::__function::__func<std::unique_ptr<Phase::SpatialModeler::TraceWithEnergyQuery [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::TraceWithEnergyQuery,std::unique_ptr<Phase::SpatialModeler::TraceWithEnergyQuery [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::TraceWithEnergyQuery,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::TraceWithEnergyQuery [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::TraceWithEnergyQuery,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::TraceWithEnergyQuery*)#1} const&>(unsigned long,Phase::SystemAllocator&&,std::unique_ptr<Phase::SpatialModeler::TraceWithEnergyQuery [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::TraceWithEnergyQuery,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::TraceWithEnergyQuery*)#1} const&)::{lambda(void *)#1},std::allocator<std::unique_ptr<Phase::SpatialModeler::TraceWithEnergyQuery [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::TraceWithEnergyQuery,std::unique_ptr<Phase::SpatialModeler::TraceWithEnergyQuery [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::TraceWithEnergyQuery,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::TraceWithEnergyQuery [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::TraceWithEnergyQuery,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::TraceWithEnergyQuery*)#1} const&>(unsigned long,Phase::SystemAllocator&&,std::unique_ptr<Phase::SpatialModeler::TraceWithEnergyQuery [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::TraceWithEnergyQuery,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::TraceWithEnergyQuery*)#1} const&)::{lambda(void *)#1}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D31E30;
  a2[1] = v2;
  return result;
}

uint64_t *std::unique_ptr<Phase::SpatialModeler::TraceWithEnergyQuery [],std::function<void ()(void *)>>::operator=[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::function<void ()(void *)>::operator()((a1 + 1), v5);
  }

  std::__function::__value_func<void ()(void *)>::operator=[abi:ne200100]((a1 + 1), (a2 + 1));
  return a1;
}

Phase::SpatialModeler::DirectPathTransmission::SourceFrame *Phase::SpatialModeler::DirectPathTransmission::SourceFrame::SourceFrame(Phase::SpatialModeler::DirectPathTransmission::SourceFrame *this, uint64_t a2, double a3)
{
  v20[4] = *MEMORY[0x277D85DE8];
  *(this + 6) = 0;
  v6 = (this + 48);
  *this = 0;
  *(this + 12) = 0;
  v7 = (this + 96);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 16) = 0;
  v14 = 4;
  v15 = a2;
  v12 = &v15;
  v13 = &v14;
  Phase::details::AllocArray<Phase::Vector<float,3ul>,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>>(unsigned long,unsigned long)::{lambda(Phase::Vector<float,3ul>*)#1} const&>(a2, &v12, &v19);
  v8 = v19;
  v19 = 0;
  v16 = v8;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v17, v20);
  v18 = a2;
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v19);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v20);
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::operator=[abi:ne200100](this, &v16);
  *(this + 5) = v18;
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v16);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v17);
  v12 = a2;
  v15 = 4;
  Phase::details::AllocArray<Phase::PackedSubbands<float,3ul>,std::unique_ptr<Phase::PackedSubbands<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::PackedSubbands<float,3ul>>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::PackedSubbands<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::PackedSubbands<float,3ul>>(unsigned long,unsigned long)::{lambda(Phase::PackedSubbands<float,3ul>*)#1} const&>(&v19, a2, &v12, &v15);
  v9 = v19;
  v19 = 0;
  v16 = v9;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v17, v20);
  v18 = a2;
  std::unique_ptr<Phase::PackedSubbands<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v19);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v20);
  std::unique_ptr<Phase::PackedSubbands<float,3ul> [],std::function<void ()(void *)>>::operator=[abi:ne200100](v6, &v16);
  *(this + 11) = v18;
  std::unique_ptr<Phase::PackedSubbands<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v16);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v17);
  v14 = 4;
  v15 = a2;
  v12 = &v15;
  v13 = &v14;
  Phase::details::AllocArray<float,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float>(unsigned long,unsigned long)::{lambda(float*)#1} const&>(a2, &v12, &v19);
  v10 = v19;
  v19 = 0;
  v16 = v10;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v17, v20);
  v18 = a2;
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v19);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v20);
  std::unique_ptr<float [],std::function<void ()(void *)>>::operator=[abi:ne200100](v7, &v16);
  *(this + 17) = v18;
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v16);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v17);
  *(this + 18) = a3;
  return this;
}

void sub_23A39C544(_Unwind_Exception *a1)
{
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](v2);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((v1 + 13));
  std::unique_ptr<Phase::PackedSubbands<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](v3);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((v1 + 7));
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](v1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t *Phase::SpatialModeler::DirectPathTransmission::SourceFrame::operator=(uint64_t *a1, void *a2)
{
  v27[4] = *MEMORY[0x277D85DE8];
  v4 = a2[5];
  if (v4)
  {
    v21 = 4;
    v22 = v4;
    v23 = &v22;
    v24[0] = &v21;
    Phase::details::AllocArray<Phase::Vector<float,3ul>,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>>(unsigned long,unsigned long)::{lambda(Phase::Vector<float,3ul>*)#1} const&>(v4, &v23, &v26);
    v5 = v26;
    v26 = 0;
    v23 = v5;
    std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v24, v27);
    v25 = v4;
    std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v26);
    std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v27);
    std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::operator=[abi:ne200100](a1, &v23);
    a1[5] = v25;
    std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v23);
    std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v24);
    v6 = (*a1 + 8);
    v7 = (*a2 + 8);
    do
    {
      *(v6 - 2) = *(v7 - 2);
      *(v6 - 1) = *(v7 - 1);
      v8 = *v7;
      v7 += 3;
      *v6 = v8;
      v6 += 3;
      --v4;
    }

    while (v4);
    v9 = a2[5];
    if (v9)
    {
      v22 = 4;
      v23 = v9;
      Phase::details::AllocArray<Phase::PackedSubbands<float,3ul>,std::unique_ptr<Phase::PackedSubbands<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::PackedSubbands<float,3ul>>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::PackedSubbands<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::PackedSubbands<float,3ul>>(unsigned long,unsigned long)::{lambda(Phase::PackedSubbands<float,3ul>*)#1} const&>(&v26, v9, &v23, &v22);
      v10 = v26;
      v26 = 0;
      v23 = v10;
      std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v24, v27);
      v25 = v9;
      std::unique_ptr<Phase::PackedSubbands<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v26);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v27);
      std::unique_ptr<Phase::PackedSubbands<float,3ul> [],std::function<void ()(void *)>>::operator=[abi:ne200100](a1 + 6, &v23);
      a1[11] = v25;
      std::unique_ptr<Phase::PackedSubbands<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v23);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v24);
      v11 = 0;
      do
      {
        v12 = (a2[6] + v11);
        v13 = a1[6] + v11;
        v14 = *v12;
        *(v13 + 8) = *(v12 + 2);
        *v13 = v14;
        v11 += 12;
        --v9;
      }

      while (v9);
      v15 = a2[5];
      if (v15)
      {
        v21 = 4;
        v22 = v15;
        v23 = &v22;
        v24[0] = &v21;
        Phase::details::AllocArray<float,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float>(unsigned long,unsigned long)::{lambda(float*)#1} const&>(v15, &v23, &v26);
        v16 = v26;
        v26 = 0;
        v23 = v16;
        std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v24, v27);
        v25 = v15;
        std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v26);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v27);
        std::unique_ptr<float [],std::function<void ()(void *)>>::operator=[abi:ne200100](a1 + 12, &v23);
        a1[17] = v25;
        std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v23);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v24);
        v17 = a2[12];
        v18 = a1[12];
        do
        {
          v19 = *v17++;
          *v18++ = v19;
          --v15;
        }

        while (v15);
      }
    }
  }

  a1[18] = a2[18];
  return a1;
}

uint64_t *Phase::SpatialModeler::DirectPathTransmission::SourceFrame::operator=(uint64_t *a1, uint64_t *a2)
{
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::operator=[abi:ne200100](a1, a2);
  a1[5] = a2[5];
  std::unique_ptr<Phase::PackedSubbands<float,3ul> [],std::function<void ()(void *)>>::operator=[abi:ne200100](a1 + 6, a2 + 6);
  a1[11] = a2[11];
  std::unique_ptr<float [],std::function<void ()(void *)>>::operator=[abi:ne200100](a1 + 12, a2 + 12);
  a1[17] = a2[17];
  a1[18] = a2[18];
  return a1;
}

void Phase::SpatialModeler::DirectPathTransmission::GetSupportedQueryDescs(void *a1@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  v12[23] = 4;
  strcpy(v12, "CULL");
  v13 = 0;
  v14 = 0x100000001;
  v15 = 1;
  memset(v16, 0, sizeof(v16));
  std::vector<unsigned int>::resize(v16, 5uLL);
  v3 = 0;
  v4 = *v16;
  do
  {
    *(v4 + v3) = *(&constinit + v3);
    v3 += 4;
  }

  while (v3 != 20);
  v17[23] = 7;
  strcpy(v17, "CLUSTER");
  v18 = 1;
  v19 = 0x200000003;
  v20 = 1;
  memset(v21, 0, sizeof(v21));
  std::vector<unsigned int>::resize(v21, 5uLL);
  v5 = 0;
  v6 = *v21;
  do
  {
    *(v6 + v5 * 4) = Phase::SpatialModeler::DirectPathTransmissionPrivate::sClusterQueryPropertyUIDs[v5];
    ++v5;
  }

  while (v5 != 5);
  v22[23] = 7;
  strcpy(v22, "SPATIAL");
  v23 = 2;
  v24 = 0x300000002;
  v25 = 2;
  memset(v26, 0, sizeof(v26));
  std::vector<unsigned int>::resize(v26, 5uLL);
  v7 = 0;
  v8 = *v26;
  do
  {
    *(v8 + v7 * 4) = Phase::SpatialModeler::DirectPathTransmissionPrivate::sSpatialQueryPropertyUIDs[v7];
    ++v7;
  }

  while (v7 != 5);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<Phase::SpatialModeler::QueryDesc>::__init_with_size[abi:ne200100]<Phase::SpatialModeler::QueryDesc const*,Phase::SpatialModeler::QueryDesc const*>(a1, v12, &v27, 3uLL);
  for (i = 0; i != -240; i -= 80)
  {
    v10 = &v12[i];
    v11 = *&v26[i];
    if (v11)
    {
      *(v10 + 27) = v11;
      operator delete(v11);
    }

    if (v10[183] < 0)
    {
      operator delete(*(v10 + 20));
    }
  }
}

void sub_23A39CAA8(_Unwind_Exception *a1)
{
  v3 = (v1 + 160);
  v4 = -240;
  do
  {
    Phase::SpatialModeler::QueryDesc::~QueryDesc(v3);
    v3 = (v5 - 80);
    v4 += 80;
  }

  while (v4);
  _Unwind_Resume(a1);
}

uint64_t Phase::SpatialModeler::DirectPathTransmission::GetEntityShapeTemplates@<X0>(uint64_t *a1@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  memset(v9, 0, sizeof(v9));
  v10 = 1065353216;
  v11 = 3;
  v8 = 1;
  v12 = 1;
  v14 = 1;
  Phase::UnorderedStringMap<Phase::OptionsValue>::Set(v9, &Phase::Geometry::MeshOptions::SortPrimitives, &v12);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v12);
  memset(v13, 0, sizeof(v13));
  v14 = 1065353216;
  v15 = 4;
  v12 = 2;
  memset(v5, 0, sizeof(v5));
  v6 = 1065353216;
  v7 = 5;
  v4 = 1;
  std::vector<Phase::SpatialModeler::EntityShapeTemplate>::push_back[abi:ne200100](a1, &v8);
  std::vector<Phase::SpatialModeler::EntityShapeTemplate>::push_back[abi:ne200100](a1, &v12);
  std::vector<Phase::SpatialModeler::EntityShapeTemplate>::push_back[abi:ne200100](a1, &v4);
  std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::~__hash_table(v5);
  std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::~__hash_table(v13);
  return std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::~__hash_table(v9);
}

void sub_23A39CC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void **);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va1);
  std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::~__hash_table(v8 + 8);
  std::vector<Phase::SpatialModeler::EntityShapeTemplate>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<Phase::SpatialModeler::EntityShapeTemplate>::push_back[abi:ne200100](uint64_t *a1, _DWORD *a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = std::vector<Phase::SpatialModeler::EntityShapeTemplate>::__emplace_back_slow_path<Phase::SpatialModeler::EntityShapeTemplate const&>(a1, a2);
  }

  else
  {
    *v4 = *a2;
    std::unordered_map<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,std::allocator<std::pair<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey const,Phase::OptionsValue>>>::unordered_map((v4 + 2), (a2 + 2));
    v4[12] = a2[12];
    result = (v4 + 14);
    a1[1] = (v4 + 14);
  }

  a1[1] = result;
  return result;
}

uint64_t Phase::SpatialModeler::DirectPathTransmission::Init(uint64_t a1, Phase::Geometry::System *a2)
{
  result = Phase::SpatialModeler::TraceWithEnergyQuery::RegisterQuery(*(a1 + 16), a2);
  *(a1 + 44) = result;
  return result;
}

uint64_t Phase::SpatialModeler::DirectPathTransmission::RunQuery@<X0>(uint64_t (***a1)(void)@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2[10];
  if (v4 > 2)
  {
    if (a1)
    {
      result = (**a1)(a1);
      *a3 = 2;
      *(a3 + 8) = result;
      *(a3 + 24) = 2;
      return result;
    }

    goto LABEL_16;
  }

  v5 = a2[11];
  if (!v5 || (v6 = Phase::SpatialModeler::DirectPathTransmissionPrivate::QueryTable[v4], *(v6 + 4) != *v5))
  {
    if (a1)
    {
      result = (**a1)(a1);
      v10 = 3;
LABEL_15:
      *a3 = v10;
      *(a3 + 8) = result;
      *(a3 + 24) = 2;
      return result;
    }

LABEL_16:
    std::terminate();
  }

  v7 = a2[12];
  if (!v7 || *(v6 + 5) != *v7)
  {
    if (a1)
    {
      result = (**a1)(a1);
      v10 = 4;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v8 = v6[8];

  return v8();
}

uint64_t Phase::SpatialModeler::DirectPathTransmission::AllocateQueryState@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *(a1 + 80);
  if (v2 <= 2)
  {
    v3 = Phase::SpatialModeler::DirectPathTransmissionPrivate::QueryTable[v2][7];
    if (v3)
    {
      return v3();
    }
  }

  *a2 = 0;
  a2[4] = 0;
  return result;
}

void Phase::SpatialModeler::DirectPathTransmission::GetGraphDescription(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (a1 == 2)
  {
    std::string::__assign_external(a2, "DirectPathTransmissionSpatialQueryGraph", 0x27uLL);
    std::vector<Phase::SpatialModeler::GraphDescriptionNode>::resize((a2 + 24), 3uLL);
    v7 = *(a2 + 24);
    if (*(v7 + 23) < 0)
    {
      *(v7 + 8) = 19;
      v8 = *v7;
    }

    else
    {
      *(v7 + 23) = 19;
      v8 = v7;
    }

    strcpy(v8, "BeginSpatialQueries");
    *(v7 + 24) |= 1uLL;
    v9 = *(a2 + 24);
    if (*(v9 + 55) < 0)
    {
      *(v9 + 40) = 22;
      v10 = *(v9 + 32);
    }

    else
    {
      v10 = (v9 + 32);
      *(v9 + 55) = 22;
    }

    strcpy(v10, "RunSpatialSceneQueries");
    *(v9 + 56) |= 2uLL;
    v11 = *(a2 + 24);
    if (*(v11 + 87) < 0)
    {
      *(v11 + 72) = 20;
      v12 = *(v11 + 64);
    }

    else
    {
      v12 = (v11 + 64);
      *(v11 + 87) = 20;
    }

    strcpy(v12, "FinishSpatialQueries");
    *(v11 + 88) |= 0xCuLL;
  }

  else
  {
    if (a1 == 1)
    {
      std::string::__assign_external(a2, "DirectPathTransmissionClusterQueryGraph", 0x27uLL);
      std::vector<Phase::SpatialModeler::GraphDescriptionNode>::resize((a2 + 24), 1uLL);
      v4 = *(a2 + 24);
      if (*(v4 + 23) < 0)
      {
        *(v4 + 8) = 18;
        v6 = *v4;
      }

      else
      {
        *(v4 + 23) = 18;
        v6 = v4;
      }

      strcpy(v6, "FullClusterQueries");
    }

    else
    {
      if (a1)
      {
        return;
      }

      std::string::__assign_external(a2, "DirectPathTransmissionCullQueryGraph", 0x24uLL);
      std::vector<Phase::SpatialModeler::GraphDescriptionNode>::resize((a2 + 24), 1uLL);
      v4 = *(a2 + 24);
      if (*(v4 + 23) < 0)
      {
        *(v4 + 8) = 15;
        v5 = *v4;
      }

      else
      {
        *(v4 + 23) = 15;
        v5 = v4;
      }

      strcpy(v5, "FullCullQueries");
    }

    *(v4 + 24) = 0xFFFFFFFFLL;
  }
}

unint64_t Phase::SpatialModeler::DirectPathTransmission::GetHistory@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * a2) ^ ((0xC6A4A7935BD1E995 * a2) >> 47)) + 3864292196u) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a3) ^ ((0xC6A4A7935BD1E995 * a3) >> 47)))) + 3864292196u) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a4) ^ ((0xC6A4A7935BD1E995 * a4) >> 47)))) + 3864292196u;
  caulk::concurrent::details::node_allocator<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10ul,(caulk::concurrent::skiplist_options)0>::begin_traversal();
  *buf = v6;
  v7 = caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::key_le>(a1 + 64, buf, 0);
  if (*(v7 + 16) == v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = a1 + 264;
  }

  if (*(v8 + 26) == 2 || (v9 = atomic_load((v8 + 40)), (v9 & 1) != 0))
  {
    operator new();
  }

  *a5 = *v8;
  add_explicit = *(v8 + 8);
  a5[1] = add_explicit;
  if (add_explicit)
  {
    add_explicit = atomic_fetch_add_explicit((add_explicit + 8), 1uLL, memory_order_relaxed);
  }

  return caulk::concurrent::details::node_allocator<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(a1 + 320, add_explicit);
}

void sub_23A39D8F4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  caulk::concurrent::details::node_allocator<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(v1 + 320, v4);
  _Unwind_Resume(a1);
}

void Phase::SpatialModeler::DirectPathTransmission::~DirectPathTransmission(std::error_category *this)
{
  this->__vftable = &unk_284D31EC0;
  v2 = this + 6;
  caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::~skiplist(&this[8]);
  std::error_category::~error_category(v2);
  this->__vftable = &unk_284D2F570;
  std::error_category::~error_category(this + 1);
}

{
  this->__vftable = &unk_284D31EC0;
  v2 = this + 6;
  caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::~skiplist(&this[8]);
  std::error_category::~error_category(v2);
  this->__vftable = &unk_284D2F570;
  std::error_category::~error_category(this + 1);

  JUMPOUT(0x23EE864A0);
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23A39DAA0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<Phase::SpatialModeler::QueryDesc>::__init_with_size[abi:ne200100]<Phase::SpatialModeler::QueryDesc const*,Phase::SpatialModeler::QueryDesc const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<Phase::SpatialModeler::QueryDesc>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23A39DB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<Phase::SpatialModeler::QueryDesc>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<Phase::SpatialModeler::QueryDesc>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::QueryDesc>>(a1, a2);
  }

  std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<Phase::SpatialModeler::QueryDesc>,Phase::SpatialModeler::QueryDesc const*,Phase::SpatialModeler::QueryDesc const*,Phase::SpatialModeler::QueryDesc*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = (a4 + v7);
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        v8->__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&v8->__r_.__value_.__l.__data_ = v10;
      }

      v11 = *(a2 + v7 + 24);
      v12 = *(a2 + v7 + 40);
      *(a4 + v7 + 48) = 0;
      v13 = a4 + v7 + 48;
      *(v13 - 8) = v12;
      *(v13 - 24) = v11;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v13, *(a2 + v7 + 48), *(a2 + v7 + 56), (*(a2 + v7 + 56) - *(a2 + v7 + 48)) >> 2);
      *(a4 + v7 + 72) = *(a2 + v7 + 72);
      v7 += 80;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_23A39DC54(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 80;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<Phase::SpatialModeler::QueryDesc,0>(v4);
      v4 -= 80;
      v5 += 80;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<Phase::SpatialModeler::EntityShapeTemplate>::__emplace_back_slow_path<Phase::SpatialModeler::EntityShapeTemplate const&>(uint64_t *a1, _DWORD *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<Phase::SpatialModeler::OptionalPropertyDescription>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::EntityShapeTemplate>>(a1, v6);
  }

  v7 = 56 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = *a2;
  std::unordered_map<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,std::allocator<std::pair<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey const,Phase::OptionsValue>>>::unordered_map(v7 + 8, (a2 + 2));
  *(v7 + 48) = a2[12];
  *&v16 = v16 + 56;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::SpatialModeler::EntityShapeTemplate>,Phase::SpatialModeler::EntityShapeTemplate*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<Phase::SpatialModeler::EntityShapeTemplate>::~__split_buffer(&v14);
  return v13;
}

void sub_23A39DDE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<Phase::SpatialModeler::EntityShapeTemplate>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

unint64_t caulk::concurrent::details::node_allocator<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal@<X0>(unint64_t result@<X0>, unint64_t a2@<X8>)
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
      return caulk::concurrent::details::node_allocator<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10ul,(caulk::concurrent::skiplist_options)0>::free_node_chain_now(result, i);
    }
  }

  return result;
}

unint64_t caulk::concurrent::details::node_allocator<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10ul,(caulk::concurrent::skiplist_options)0>::free_node_chain_now(unint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = atomic_load((v2 + 32));
      v5 = *(v3 + 32);
      if (*(v5 + 32) == 1 && !*(v2 + 26))
      {
        (*v5)(v3 + 40, v2);
      }

      result = caulk::concurrent::details::node_allocator<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10ul,(caulk::concurrent::skiplist_options)0>::free_node(v3, v2);
      v2 = v4;
    }

    while (v4);
  }

  return result;
}

unint64_t caulk::concurrent::details::node_allocator<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10ul,(caulk::concurrent::skiplist_options)0>::free_node(uint64_t a1, uint64_t a2)
{
  _X20 = a2;
  v4 = *(a2 + 24);
  if (*(a2 + 25) == 1)
  {
    v5 = *(a2 + 8);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  v6 = 0;
  v7 = *(a1 + 16) + 48;
  while (caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::Sizes[v6] < caulk::concurrent::details::node_allocator<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10ul,(caulk::concurrent::skiplist_options)0>::node_sizes[v4 - 1])
  {
    v7 += 32;
    if (++v6 == 10)
    {
      __break(1u);
      break;
    }
  }

  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  atomic_store(_X2, _X20);
  _X1 = 0;
  __asm { CASPAL          X0, X1, X20, X21, [X8] }

  if (result != _X2)
  {
    do
    {
      atomic_store(result, _X20);
      _X3 = 0;
      __asm { CASPAL          X2, X3, X20, X21, [X8] }

      v19 = _X2 ^ result;
      result = _X2;
    }

    while (v19);
  }

  atomic_fetch_add((v7 + 16), 1uLL);
  return result;
}

unint64_t caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::~skiplist(unint64_t a1)
{
  v2 = a1 + 256;
  caulk::concurrent::details::node_allocator<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10ul,(caulk::concurrent::skiplist_options)0>::begin_traversal();
  for (i = atomic_load((a1 + 40)); ; i = atomic_load((v4 + 40)))
  {
    v4 = i & 0xFFFFFFFFFFFFFFFCLL;
    if (a1 + 200 == (i & 0xFFFFFFFFFFFFFFFCLL))
    {
      break;
    }

    if (*(v4 + 26) != 2)
    {
      v5 = atomic_load((v4 + 40));
      if ((v5 & 1) == 0)
      {
        v6 = *(v4 + 16);
        caulk::concurrent::details::node_allocator<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10ul,(caulk::concurrent::skiplist_options)0>::begin_traversal();
        v29 = v6;
        v7 = -1;
        v8 = 56;
        do
        {
          v9 = atomic_load((a1 + v8));
          ++v7;
          v8 += 16;
        }

        while (*((v9 & 0xFFFFFFFFFFFFFFFCLL) + 26) != 2);
        v10 = a1;
        if (v7)
        {
          v10 = a1;
          do
          {
            v10 = caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::key_lt &>(a1, v7--, v10, &v29);
          }

          while (v7);
        }

        v11 = caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::key_lt &>(a1, 0, v10, &v29);
        v13 = *(v12 + 16);
        if (v13 == v6)
        {
          v14 = v12;
          v15 = caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(a1, 0, v11, v12);
          v17 = v16;
          if (!v16)
          {
            caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::help_flagged(a1, 0, v15, v14);
          }

          if (v14)
          {
            if ((v17 & 0x100000000) != 0)
            {
              v29 = v6;
              caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::key_le>(a1, &v29, 0);
            }
          }
        }

        caulk::concurrent::details::node_allocator<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(v2, v13);
      }
    }
  }

  caulk::concurrent::details::node_allocator<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(v2, i);
  if (*(a1 + 25) == 1)
  {
    v18 = *(a1 + 8);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }
  }

  if (*(a1 + 225) == 1)
  {
    v19 = *(a1 + 208);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }
  }

  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X20] }

  if (_X2)
  {
    caulk::concurrent::details::node_allocator<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10ul,(caulk::concurrent::skiplist_options)0>::free_node_chain_now(v2, _X2);
  }

  (*(*(a1 + 288) + 24))(a1 + 296);
  v27 = *(a1 + 280);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  return a1;
}

unint64_t caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::key_le>(unint64_t a1, void *a2, unint64_t a3)
{
  v6 = -1;
  v7 = 56;
  do
  {
    do
    {
      ++v6;
      v8 = atomic_load((a1 + v7));
      v7 += 16;
    }

    while (v6 < a3);
  }

  while (*((v8 & 0xFFFFFFFFFFFFFFFCLL) + 26) != 2);
  v9 = a1;
  if (v6 > a3)
  {
    v9 = a1;
    do
    {
      v9 = caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::key_le &>(a1, v6--, v9, a2);
    }

    while (v6 > a3);
  }

  return caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::key_le &>(a1, a3, v9, a2);
}

void caulk::concurrent::details::node_allocator<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10ul,(caulk::concurrent::skiplist_options)0>::begin_traversal()
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

unint64_t caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::key_lt &>(unint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v4 = a3;
  v5 = atomic_load((a3 + 16 * a2 + 40));
  v6 = v5 & 0xFFFFFFFFFFFFFFFCLL;
  if (*a4 > *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 16))
  {
    do
    {
      v10 = atomic_load((v6 + 40));
      if (v10)
      {
        v4 = caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(a1, a2, v4, v6);
        if (!v11)
        {
          caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::help_flagged(a1, a2, v4, v6);
        }
      }

      else
      {
        v4 = v6;
      }

      v12 = atomic_load((v4 + 16 * a2 + 40));
      v6 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    }

    while (*a4 > *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 16));
  }

  return v4;
}

unint64_t caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = a4 | 2;
  do
  {
    v9 = (a3 + 16 * a2 + 40);
    v10 = atomic_load(v9);
    if (v10 == v8)
    {
      break;
    }

    v11 = a4;
    atomic_compare_exchange_strong(v9, &v11, v8);
    if (v11 == a4 || v11 == v8)
    {
      break;
    }

    v12 = atomic_load(v9);
    if (v12)
    {
      do
      {
        a3 = atomic_load((a3 + 16 * a2 + 48));
        v13 = atomic_load((a3 + 16 * a2 + 40));
      }

      while ((v13 & 1) != 0);
    }

    v14 = *(a4 + 16);
    while (1)
    {
      v15 = atomic_load((a3 + 16 * a2 + 40));
      v16 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      if (v14 <= *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 16))
      {
        break;
      }

      v17 = atomic_load((v16 + 40));
      if (v17)
      {
        a3 = caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(a1, a2, a3, v16);
        if (!v18)
        {
          caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::help_flagged(a1, a2, a3, v16);
        }
      }

      else
      {
        a3 = v16;
      }
    }
  }

  while (v16 == a4);
  return a3;
}

unint64_t caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::help_flagged(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  _X20 = a4;
  v7 = result;
  v8 = a4 + 16 * a2;
  v9 = (v8 + 40);
  atomic_store(a3, (v8 + 48));
  while (1)
  {
    v10 = atomic_load(v9);
    if (v10)
    {
      break;
    }

    v11 = atomic_load(v9);
    v12 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    atomic_compare_exchange_strong(v9, &v12, v12 | 1);
    if ((v12 & 2) != 0)
    {
      result = caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::help_flagged(v7, a2, _X20, v12 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  v13 = atomic_load(v9);
  v14 = _X20 | 2;
  atomic_compare_exchange_strong((a3 + 16 * a2 + 40), &v14, v13 & 0xFFFFFFFFFFFFFFFCLL);
  if (v14 == (_X20 | 2) && atomic_fetch_add((_X20 + 27), 0xFFu) == 1)
  {
    _X2 = 0;
    _X3 = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X8] }

    atomic_store(_X2, (_X20 + 32));
    _X1 = 0;
    __asm { CASPAL          X0, X1, X20, X21, [X8] }

    if (result != _X2)
    {
      do
      {
        atomic_store(result, (_X20 + 32));
        _X3 = 0;
        __asm { CASPAL          X2, X3, X20, X21, [X8] }

        v25 = _X2 ^ result;
        result = _X2;
      }

      while (v25);
    }
  }

  return result;
}

unint64_t caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::key_le &>(unint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v4 = a3;
  v5 = atomic_load((a3 + 16 * a2 + 40));
  v6 = v5 & 0xFFFFFFFFFFFFFFFCLL;
  if (*a4 >= *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 16))
  {
    do
    {
      v10 = atomic_load((v6 + 40));
      if (v10)
      {
        v4 = caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(a1, a2, v4, v6);
        if (!v11)
        {
          caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::help_flagged(a1, a2, v4, v6);
        }
      }

      else
      {
        v4 = v6;
      }

      v12 = atomic_load((v4 + 16 * a2 + 40));
      v6 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    }

    while (*a4 >= *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 16));
  }

  return v4;
}

uint64_t Phase::details::AllocArray<Phase::Vector<float,3ul>,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>>(unsigned long,unsigned long)::{lambda(Phase::Vector<float,3ul>*)#1} const&>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v7 = **(Phase::Logger::GetInstance(0) + 128);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 136315394;
      *&v9[4] = "ManagedPtr.hpp";
      v10 = 1024;
      v11 = 229;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inCount == 0 is true]: Attempting to allocate an array of 0 elements", v9, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempting to allocate an array of 0 elements");
  }

  v5 = operator new(12 * **a2, **(a2 + 8));
  bzero(v5, 12 * ((12 * a1 - 12) / 0xCuLL) + 12);
  *v9 = &unk_284D32008;
  v9[8] = 0;
  v12 = v9;
  *a3 = v5;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100]((a3 + 1), v9);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v9);
}

uint64_t _ZNKSt3__110__function6__funcIZN5Phase7details10AllocArrayINS2_6VectorIfLm3EEERKZNS3_10AllocArrayIS6_EENS_10unique_ptrIA_T_NS_8functionIFvPvEEEEEmmEUlvE_RKZNS7_IS6_EESF_mmEUlPS9_E_EESF_mOT0_OT1_EUlSC_E_NS_9allocatorISR_EESD_E7__cloneEPNS0_6__baseISD_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_284D32008;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t Phase::details::AllocArray<Phase::PackedSubbands<float,3ul>,std::unique_ptr<Phase::PackedSubbands<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::PackedSubbands<float,3ul>>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::PackedSubbands<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::PackedSubbands<float,3ul>>(unsigned long,unsigned long)::{lambda(Phase::PackedSubbands<float,3ul>*)#1} const&>(Phase::Logger *a1, uint64_t a2, void *a3, std::align_val_t *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v8 = **(Phase::Logger::GetInstance(a1) + 128);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 136315394;
      *&v10[4] = "ManagedPtr.hpp";
      v11 = 1024;
      v12 = 229;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inCount == 0 is true]: Attempting to allocate an array of 0 elements", v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempting to allocate an array of 0 elements");
  }

  v6 = operator new(12 * *a3, *a4);
  bzero(v6, 12 * ((12 * a2 - 12) / 0xCuLL) + 12);
  *v10 = &unk_284D32050;
  v10[8] = 0;
  v13 = v10;
  *a1 = v6;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](a1 + 8, v10);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v10);
}

uint64_t _ZNKSt3__110__function6__funcIZN5Phase7details10AllocArrayINS2_14PackedSubbandsIfLm3EEERKZNS3_10AllocArrayIS6_EENS_10unique_ptrIA_T_NS_8functionIFvPvEEEEEmmEUlvE_RKZNS7_IS6_EESF_mmEUlPS9_E_EESF_mOT0_OT1_EUlSC_E_NS_9allocatorISR_EESD_E7__cloneEPNS0_6__baseISD_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_284D32050;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t *std::unique_ptr<Phase::PackedSubbands<float,3ul> [],std::function<void ()(void *)>>::operator=[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  std::unique_ptr<Phase::PackedSubbands<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100]<Phase::PackedSubbands<float,3ul>*,0>(a1, v4);
  std::__function::__value_func<void ()(void *)>::operator=[abi:ne200100]((a1 + 1), (a2 + 1));
  return a1;
}

uint64_t *std::unique_ptr<Phase::PackedSubbands<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100]<Phase::PackedSubbands<float,3ul>*,0>(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return std::function<void ()(void *)>::operator()((result + 1), v3);
  }

  return result;
}

void std::vector<unsigned int>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<unsigned int>::__append(this, __sz - v2);
  }
}

void std::vector<unsigned int>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::__shared_ptr_emplace<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D32098;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

void std::__shared_ptr_emplace<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>::__on_zero_shared(uint64_t a1)
{
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100]((a1 + 136));
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](a1 + 144);
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    *(a1 + 104) = v3;
    operator delete(v3);
  }

  std::mutex::~mutex((a1 + 24));
}

void *caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::random_engine()
{
  {
    caulk::multi_simple_random<unsigned int,4ul,std::uniform_int_distribution<unsigned int>,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>::multi_simple_random(&caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::random_engine(void)::engine, 0, -1);
  }

  return &caulk::concurrent::skiplist<unsigned long,std::shared_ptr<Phase::SpatialModeler::DirectPathTransmission::SourceHistory>,10,(caulk::concurrent::skiplist_options)0>::random_engine(void)::engine;
}

uint64_t caulk::multi_simple_random<unsigned int,4ul,std::uniform_int_distribution<unsigned int>,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>::multi_simple_random(uint64_t a1, int a2, int a3)
{
  for (i = 0; i != 10048; i += 2512)
  {
    v5 = a1 + i;
    v6 = 5489;
    *(a1 + i) = 5489;
    for (j = 1; j != 624; ++j)
    {
      v6 = j + 1812433253 * (v6 ^ (v6 >> 30));
      *(v5 + 4 * j) = v6;
    }

    *(v5 + 2496) = 0;
    *(v5 + 2504) = 0;
  }

  v8 = 0;
  *(a1 + 10048) = a2;
  *(a1 + 10052) = a3;
  do
  {
    v9 = mach_absolute_time();
    v10 = a1 + v8;
    *(a1 + v8) = v9;
    for (k = 1; k != 624; ++k)
    {
      v9 = k + 1812433253 * (v9 ^ (v9 >> 30));
      *(v10 + 4 * k) = v9;
    }

    *(v10 + 2496) = 0;
    v8 += 2512;
  }

  while (v8 != 10048);
  return a1;
}

std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253>::result_type std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x270;
  v3 = this->__x_[v2];
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ this->__x_[(i + 397) % 0x270] ^ ((v3 & 0x7FFFFFFE | this->__x_[i] & 0x80000000) >> 1);
  this->__x_[i] = v5;
  this->__i_ = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

unint64_t *caulk::concurrent::stack<caulk::alloc::free_block,caulk::concurrent::intrusive_single_link_node<caulk::alloc::free_block>>::pop()
{
  _X0 = 0;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X8] }

  if (result)
  {
    v7 = result;
    do
    {
      _X6 = atomic_load(result);
      _X5 = 0;
      __asm { CASPAL          X4, X5, X6, X7, [X8] }

      if (_X4 == v7)
      {
        break;
      }

      result = _X4;
      v7 = _X4;
    }

    while (_X4);
  }

  return result;
}

char *caulk::alloc::serial_allocator<caulk::alloc::embed_block_memory,16368ul>::allocate(atomic_ullong *a1, unint64_t a2)
{
  v2 = (a2 + 7) & 0x7FF8;
  v3 = a2 > 0x3FF0 || v2 == 0;
  if (v3)
  {
    return 0;
  }

  v4 = *a1;
  v5 = ~(*a1 + a1 + 23) & 7;
  v6 = *a1 + v2 + v5;
  if (v6 > 0x3FE0)
  {
    return 0;
  }

  v8 = *a1;
  atomic_compare_exchange_strong(a1, &v8, v6);
  if (v8 != v4)
  {
    do
    {
      v5 = ~(v8 + a1 + 23) & 7;
      v9 = v8 + v2 + v5;
      if (v9 >= 0x3FE1)
      {
        return 0;
      }

      v4 = v8;
      v10 = v8;
      atomic_compare_exchange_strong(a1, &v10, v9);
      v3 = v10 == v8;
      v8 = v10;
    }

    while (!v3);
  }

  result = a1 + v4 + v5 + 16;
  if ((result & 7) != 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t Phase::Dispatch::ClientTransactionManager::ClientTransactionManager(uint64_t a1, Phase::ActionTreeManager *a2, uint64_t a3, Phase::Dispatch::ExternalStreamClientInterface *a4, uint64_t a5, Phase::Dispatch::TapsClientInterface *a6, uint64_t a7, Phase::Controller::TaskManager *a8)
{
  v14 = Phase::Dispatch::GeometryClientCommandProcessor::GeometryClientCommandProcessor(a1, a3);
  Phase::ActionTreeClientCommandProcessor::ActionTreeClientCommandProcessor((v14 + 88), a2);
  Phase::Dispatch::TransactionExecutor<Phase::Dispatch::MiscServerMessageType>::TransactionExecutor(a1 + 176);
  *(a1 + 176) = &unk_284D33118;
  *(a1 + 256) = a5;
  Phase::Dispatch::ExternalStreamClientCommandProcessor::ExternalStreamClientCommandProcessor((a1 + 264), a4);
  Phase::Dispatch::TapsClientCommandProcessor::TapsClientCommandProcessor((a1 + 352), a6, a8);
  Phase::Dispatch::TransactionWriter<Phase::ActionTreeServerCommand>::TransactionWriter((a1 + 448), 0x20000uLL);
  return a1;
}

void sub_23A39F194(_Unwind_Exception *a1)
{
  Phase::Dispatch::TapsClientCommandProcessor::~TapsClientCommandProcessor(v1 + 44);
  Phase::Dispatch::ExternalStreamClientCommandProcessor::~ExternalStreamClientCommandProcessor(v1 + 33);
  Phase::Dispatch::MiscClientCommandProcessor::~MiscClientCommandProcessor(v2);
  Phase::Dispatch::TransactionExecutor<Phase::ActionTreeClientCommand>::~TransactionExecutor((v1 + 11));
  Phase::Dispatch::GeometryClientCommandProcessor::~GeometryClientCommandProcessor(v1);
  _Unwind_Resume(a1);
}

void Phase::Dispatch::ClientTransactionManager::AddTransaction(id *a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5 && (v5 = [(Phase::Logger *)v5 length]) != 0)
  {
    if (a2 <= 1)
    {
      if (!a2)
      {
        v7 = a1[20];
        v8 = v6;
        objc_sync_enter(v7);
        [a1[20] addObject:v8];
        goto LABEL_16;
      }

      if (a2 == 1)
      {
        v7 = a1[9];
        v8 = v6;
        objc_sync_enter(v7);
        [a1[9] addObject:v8];
        goto LABEL_16;
      }
    }

    else
    {
      switch(a2)
      {
        case 2:
          v7 = a1[31];
          v8 = v6;
          objc_sync_enter(v7);
          [a1[31] addObject:v8];
          goto LABEL_16;
        case 3:
          v7 = a1[42];
          v8 = v6;
          objc_sync_enter(v7);
          [a1[42] addObject:v8];
          goto LABEL_16;
        case 4:
          v7 = a1[53];
          v8 = v6;
          objc_sync_enter(v7);
          [a1[53] addObject:v8];
LABEL_16:

          objc_sync_exit(v7);
          break;
      }
    }
  }

  else
  {
    v9 = **(Phase::Logger::GetInstance(v5) + 848);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315650;
      v11 = "DispatcherClientTransactionManager.mm";
      v12 = 1024;
      v13 = 129;
      v14 = 2048;
      v15 = a1;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d ctm@%p: Error: trying to add empty transaction to manager!", &v10, 0x1Cu);
    }
  }
}

void sub_23A39F3F4(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void Phase::Dispatch::TransactionExecutor<Phase::Dispatch::GeometryServerMessageType>::ExecuteTransactions(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 72);
  objc_sync_enter(v2);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(a1 + 72);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = v7;
        v9 = [v7 bytes];
        v10 = [v7 length];
        *(a1 + 48) = v9;
        *(a1 + 56) = v10;
        *(a1 + 64) = 0;
        Phase::MessagePipeReader<Phase::Dispatch::GeometryServerMessageType>::Execute((a1 + 48), (a1 + 8));

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  [*(a1 + 72) removeAllObjects];
  objc_sync_exit(v2);
}

void sub_23A39F590(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void Phase::Dispatch::TransactionExecutor<Phase::Dispatch::MiscServerMessageType>::ExecuteTransactions(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 72);
  objc_sync_enter(v2);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(a1 + 72);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = v7;
        v9 = [v7 bytes];
        v10 = [v7 length];
        *(a1 + 48) = v9;
        *(a1 + 56) = v10;
        *(a1 + 64) = 0;
        Phase::MessagePipeReader<Phase::ActionTreeServerCommand>::Execute((a1 + 48), (a1 + 8));

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  [*(a1 + 72) removeAllObjects];
  objc_sync_exit(v2);
}

void sub_23A39F728(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void Phase::Dispatch::TransactionExecutor<Phase::Dispatch::ExternalStreamServerMessageType>::ExecuteTransactions(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 72);
  objc_sync_enter(v2);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(a1 + 72);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = v7;
        v9 = [v7 bytes];
        v10 = [v7 length];
        *(a1 + 48) = v9;
        *(a1 + 56) = v10;
        *(a1 + 64) = 0;
        Phase::MessagePipeReader<Phase::ActionTreeServerCommand>::Execute((a1 + 48), (a1 + 8));

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  [*(a1 + 72) removeAllObjects];
  objc_sync_exit(v2);
}

void sub_23A39F8C0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void Phase::Dispatch::TransactionExecutor<Phase::Dispatch::TapsServerMessageType>::ExecuteTransactions(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 72);
  objc_sync_enter(v2);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(a1 + 72);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = v7;
        v9 = [v7 bytes];
        v10 = [v7 length];
        *(a1 + 48) = v9;
        *(a1 + 56) = v10;
        *(a1 + 64) = 0;
        Phase::MessagePipeReader<Phase::ActionTreeServerCommand>::Execute((a1 + 48), (a1 + 8));

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  [*(a1 + 72) removeAllObjects];
  objc_sync_exit(v2);
}

void sub_23A39FA58(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void Phase::Dispatch::TapsClientCommandProcessor::~TapsClientCommandProcessor(id *this)
{
  *this = &unk_284D32148;

  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table((this + 1));
}

{
  *this = &unk_284D32148;

  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table((this + 1));
}

{
  *this = &unk_284D32148;

  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table((this + 1));

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::Dispatch::TransactionExecutor<Phase::Dispatch::TapsServerMessageType>::~TransactionExecutor(uint64_t a1)
{
  *a1 = &unk_284D32148;

  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table(a1 + 8);
  return a1;
}

void Phase::Dispatch::TransactionExecutor<Phase::Dispatch::TapsServerMessageType>::~TransactionExecutor(uint64_t a1)
{
  *a1 = &unk_284D32148;

  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table(a1 + 8);

  JUMPOUT(0x23EE864A0);
}

void Phase::Dispatch::ExternalStreamClientCommandProcessor::~ExternalStreamClientCommandProcessor(id *this)
{
  *this = &unk_284D320D0;

  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table((this + 1));
}

{
  *this = &unk_284D320D0;

  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table((this + 1));
}

{
  *this = &unk_284D320D0;

  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table((this + 1));

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::Dispatch::TransactionExecutor<Phase::Dispatch::ExternalStreamServerMessageType>::~TransactionExecutor(uint64_t a1)
{
  *a1 = &unk_284D320D0;

  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table(a1 + 8);
  return a1;
}

void Phase::Dispatch::TransactionExecutor<Phase::Dispatch::ExternalStreamServerMessageType>::~TransactionExecutor(uint64_t a1)
{
  *a1 = &unk_284D320D0;

  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table(a1 + 8);

  JUMPOUT(0x23EE864A0);
}

void Phase::Dispatch::MiscClientCommandProcessor::~MiscClientCommandProcessor(id *this)
{
  *this = &unk_284D32120;

  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table((this + 1));
}

{
  *this = &unk_284D32120;

  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table((this + 1));
}

{
  *this = &unk_284D32120;

  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table((this + 1));

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::Dispatch::TransactionExecutor<Phase::Dispatch::MiscServerMessageType>::~TransactionExecutor(uint64_t a1)
{
  *a1 = &unk_284D32120;

  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table(a1 + 8);
  return a1;
}

void Phase::Dispatch::TransactionExecutor<Phase::Dispatch::MiscServerMessageType>::~TransactionExecutor(uint64_t a1)
{
  *a1 = &unk_284D32120;

  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table(a1 + 8);

  JUMPOUT(0x23EE864A0);
}

void Phase::Dispatch::GeometryClientCommandProcessor::~GeometryClientCommandProcessor(id *this)
{
  *this = &unk_284D320F8;

  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table((this + 1));
}

{
  *this = &unk_284D320F8;

  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table((this + 1));
}

{
  *this = &unk_284D320F8;

  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table((this + 1));

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::Dispatch::TransactionExecutor<Phase::Dispatch::GeometryServerMessageType>::~TransactionExecutor(uint64_t a1)
{
  *a1 = &unk_284D320F8;

  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table(a1 + 8);
  return a1;
}

void Phase::Dispatch::TransactionExecutor<Phase::Dispatch::GeometryServerMessageType>::~TransactionExecutor(uint64_t a1)
{
  *a1 = &unk_284D320F8;

  std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table(a1 + 8);

  JUMPOUT(0x23EE864A0);
}

std::vector<char> *Phase::Dispatch::TransactionWriter<Phase::ActionTreeServerCommand>::TransactionWriter(std::vector<char> *this, std::vector<char>::size_type a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  this[3].__end_ = 0;
  *&this->__begin_ = 0u;
  *&this->__end_cap_.__value_ = 0u;
  *&this[1].__end_ = 0u;
  this[2].__begin_ = 0;
  if (a2)
  {
    std::vector<char>::__append(this, a2);
    begin = this->__begin_;
    value = this->__end_cap_.__value_;
  }

  else
  {
    value = 0;
    begin = 0;
  }

  this[1].__begin_ = begin;
  this[1].__end_ = 0;
  this[1].__end_cap_.__value_ = (value - begin);
  this[2].__begin_ = this;
  v6[0] = &unk_284D2EFF8;
  v6[1] = Phase::Dispatch::sMessageWriterCallback;
  v6[3] = v6;
  std::function<void ()(Phase::MessageWriteBuffer &,Phase::MessageWriteBuffer &,unsigned long)>::operator=(&this[2].__end_, v6);
  std::__function::__value_func<void ()(Phase::MessageWriteBuffer &,Phase::MessageWriteBuffer &,unsigned long)>::~__value_func[abi:ne200100](v6);
  return this;
}

void sub_23A39FFB8(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(Phase::MessageWriteBuffer &,Phase::MessageWriteBuffer &,unsigned long)>::~__value_func[abi:ne200100](v1 + 56);
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void Phase::MessagePipeReader<Phase::Dispatch::GeometryServerMessageType>::Execute(uint64_t *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  v2 = a1[2];
  v4 = v2 + 8;
  if (v2 + 8 <= v3)
  {
    v6 = *a1;
    v7 = (*a1 + v2);
    v8 = v4 + v7[1];
    if (v8 <= v3)
    {
      a1[2] = v8;
      v18 = *v7;
      if (v18)
      {
        v10 = v6 + v4;
        do
        {
          v11 = std::__hash_table<std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::Dispatch::GeometryServerMessageType,std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::hash<Phase::Dispatch::GeometryServerMessageType>,std::equal_to<Phase::Dispatch::GeometryServerMessageType>,true>,std::__unordered_map_equal<Phase::Dispatch::GeometryServerMessageType,std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::equal_to<Phase::Dispatch::GeometryServerMessageType>,std::hash<Phase::Dispatch::GeometryServerMessageType>,true>,std::allocator<std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>>>::find<Phase::Dispatch::GeometryServerMessageType>(a2, &v18);
          if (v11)
          {
            if (!v10 || !v11[6])
            {
              std::terminate();
            }

            std::function<void ()(void const*)>::operator()((v11 + 3), v10);
          }

          else
          {
            v12 = **(Phase::Logger::GetInstance(0) + 864);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v20 = "MessagePipe.hpp";
              v21 = 1024;
              v22 = 102;
              v23 = 1024;
              v24 = v18;
              _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d skipping unrecognized transaction message %d", buf, 0x18u);
            }
          }

          v14 = a1[1];
          v13 = a1[2];
          v15 = v13 + 8;
          if (v13 + 8 > v14)
          {
            break;
          }

          v16 = (*a1 + v13);
          v17 = v15 + v16[1];
          if (v17 > v14)
          {
            break;
          }

          v10 = *a1 + v15;
          a1[2] = v17;
          v18 = *v16;
        }

        while (v18);
      }
    }
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::Dispatch::GeometryServerMessageType,std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::hash<Phase::Dispatch::GeometryServerMessageType>,std::equal_to<Phase::Dispatch::GeometryServerMessageType>,true>,std::__unordered_map_equal<Phase::Dispatch::GeometryServerMessageType,std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::equal_to<Phase::Dispatch::GeometryServerMessageType>,std::hash<Phase::Dispatch::GeometryServerMessageType>,true>,std::allocator<std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>>>::find<Phase::Dispatch::GeometryServerMessageType>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

Phase::Dispatch::ExternalStreamClientCommandProcessor *Phase::Dispatch::ExternalStreamClientCommandProcessor::ExternalStreamClientCommandProcessor(Phase::Dispatch::ExternalStreamClientCommandProcessor *this, Phase::Dispatch::ExternalStreamClientInterface *a2)
{
  *this = &unk_284D320D0;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = *(this + 9);
  *(this + 9) = v5;

  *this = &unk_284D32170;
  *(this + 10) = a2;
  std::__hash_table<std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::Dispatch::ExternalStreamServerMessageType,std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::hash<Phase::Dispatch::ExternalStreamServerMessageType>,std::equal_to<Phase::Dispatch::ExternalStreamServerMessageType>,true>,std::__unordered_map_equal<Phase::Dispatch::ExternalStreamServerMessageType,std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::equal_to<Phase::Dispatch::ExternalStreamServerMessageType>,std::hash<Phase::Dispatch::ExternalStreamServerMessageType>,true>,std::allocator<std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::Dispatch::ExternalStreamServerMessageType,Phase::Dispatch::ExternalStreamServerMessageType,std::__bind<void (Phase::Dispatch::ExternalStreamClientCommandProcessor::*)(void const*),Phase::Dispatch::ExternalStreamClientCommandProcessor*,std::placeholders::__ph<1> const&>>(v4, 1);
  std::__hash_table<std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::Dispatch::ExternalStreamServerMessageType,std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::hash<Phase::Dispatch::ExternalStreamServerMessageType>,std::equal_to<Phase::Dispatch::ExternalStreamServerMessageType>,true>,std::__unordered_map_equal<Phase::Dispatch::ExternalStreamServerMessageType,std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::equal_to<Phase::Dispatch::ExternalStreamServerMessageType>,std::hash<Phase::Dispatch::ExternalStreamServerMessageType>,true>,std::allocator<std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::Dispatch::ExternalStreamServerMessageType,Phase::Dispatch::ExternalStreamServerMessageType,std::__bind<void (Phase::Dispatch::ExternalStreamClientCommandProcessor::*)(void const*),Phase::Dispatch::ExternalStreamClientCommandProcessor*,std::placeholders::__ph<1> const&>>(v4, 2);
  std::__hash_table<std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::Dispatch::ExternalStreamServerMessageType,std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::hash<Phase::Dispatch::ExternalStreamServerMessageType>,std::equal_to<Phase::Dispatch::ExternalStreamServerMessageType>,true>,std::__unordered_map_equal<Phase::Dispatch::ExternalStreamServerMessageType,std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::equal_to<Phase::Dispatch::ExternalStreamServerMessageType>,std::hash<Phase::Dispatch::ExternalStreamServerMessageType>,true>,std::allocator<std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::Dispatch::ExternalStreamServerMessageType,Phase::Dispatch::ExternalStreamServerMessageType,std::__bind<void (Phase::Dispatch::ExternalStreamClientCommandProcessor::*)(void const*),Phase::Dispatch::ExternalStreamClientCommandProcessor*,std::placeholders::__ph<1> const&>>(v4, 3);
  std::__hash_table<std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::Dispatch::ExternalStreamServerMessageType,std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::hash<Phase::Dispatch::ExternalStreamServerMessageType>,std::equal_to<Phase::Dispatch::ExternalStreamServerMessageType>,true>,std::__unordered_map_equal<Phase::Dispatch::ExternalStreamServerMessageType,std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::equal_to<Phase::Dispatch::ExternalStreamServerMessageType>,std::hash<Phase::Dispatch::ExternalStreamServerMessageType>,true>,std::allocator<std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::Dispatch::ExternalStreamServerMessageType,Phase::Dispatch::ExternalStreamServerMessageType,std::__bind<void (Phase::Dispatch::ExternalStreamClientCommandProcessor::*)(void const*),Phase::Dispatch::ExternalStreamClientCommandProcessor*,std::placeholders::__ph<1> const&>>(v4, 4);
  std::__hash_table<std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::Dispatch::ExternalStreamServerMessageType,std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::hash<Phase::Dispatch::ExternalStreamServerMessageType>,std::equal_to<Phase::Dispatch::ExternalStreamServerMessageType>,true>,std::__unordered_map_equal<Phase::Dispatch::ExternalStreamServerMessageType,std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::equal_to<Phase::Dispatch::ExternalStreamServerMessageType>,std::hash<Phase::Dispatch::ExternalStreamServerMessageType>,true>,std::allocator<std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::Dispatch::ExternalStreamServerMessageType,Phase::Dispatch::ExternalStreamServerMessageType,std::__bind<void (Phase::Dispatch::ExternalStreamClientCommandProcessor::*)(void const*),Phase::Dispatch::ExternalStreamClientCommandProcessor*,std::placeholders::__ph<1> const&>>(v4, 5);
  std::__hash_table<std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::Dispatch::ExternalStreamServerMessageType,std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::hash<Phase::Dispatch::ExternalStreamServerMessageType>,std::equal_to<Phase::Dispatch::ExternalStreamServerMessageType>,true>,std::__unordered_map_equal<Phase::Dispatch::ExternalStreamServerMessageType,std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::equal_to<Phase::Dispatch::ExternalStreamServerMessageType>,std::hash<Phase::Dispatch::ExternalStreamServerMessageType>,true>,std::allocator<std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::Dispatch::ExternalStreamServerMessageType,Phase::Dispatch::ExternalStreamServerMessageType,std::__bind<void (Phase::Dispatch::ExternalStreamClientCommandProcessor::*)(void const*),Phase::Dispatch::ExternalStreamClientCommandProcessor*,std::placeholders::__ph<1> const&>>(v4, 14);
  std::__hash_table<std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::Dispatch::ExternalStreamServerMessageType,std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::hash<Phase::Dispatch::ExternalStreamServerMessageType>,std::equal_to<Phase::Dispatch::ExternalStreamServerMessageType>,true>,std::__unordered_map_equal<Phase::Dispatch::ExternalStreamServerMessageType,std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::equal_to<Phase::Dispatch::ExternalStreamServerMessageType>,std::hash<Phase::Dispatch::ExternalStreamServerMessageType>,true>,std::allocator<std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::Dispatch::ExternalStreamServerMessageType,Phase::Dispatch::ExternalStreamServerMessageType,std::__bind<void (Phase::Dispatch::ExternalStreamClientCommandProcessor::*)(void const*),Phase::Dispatch::ExternalStreamClientCommandProcessor*,std::placeholders::__ph<1> const&>>(v4, 11);
  std::__hash_table<std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::Dispatch::ExternalStreamServerMessageType,std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::hash<Phase::Dispatch::ExternalStreamServerMessageType>,std::equal_to<Phase::Dispatch::ExternalStreamServerMessageType>,true>,std::__unordered_map_equal<Phase::Dispatch::ExternalStreamServerMessageType,std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::equal_to<Phase::Dispatch::ExternalStreamServerMessageType>,std::hash<Phase::Dispatch::ExternalStreamServerMessageType>,true>,std::allocator<std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::Dispatch::ExternalStreamServerMessageType,Phase::Dispatch::ExternalStreamServerMessageType,std::__bind<void (Phase::Dispatch::ExternalStreamClientCommandProcessor::*)(void const*),Phase::Dispatch::ExternalStreamClientCommandProcessor*,std::placeholders::__ph<1> const&>>(v4, 6);
  std::__hash_table<std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::Dispatch::ExternalStreamServerMessageType,std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::hash<Phase::Dispatch::ExternalStreamServerMessageType>,std::equal_to<Phase::Dispatch::ExternalStreamServerMessageType>,true>,std::__unordered_map_equal<Phase::Dispatch::ExternalStreamServerMessageType,std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::equal_to<Phase::Dispatch::ExternalStreamServerMessageType>,std::hash<Phase::Dispatch::ExternalStreamServerMessageType>,true>,std::allocator<std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::Dispatch::ExternalStreamServerMessageType,Phase::Dispatch::ExternalStreamServerMessageType,std::__bind<void (Phase::Dispatch::ExternalStreamClientCommandProcessor::*)(void const*),Phase::Dispatch::ExternalStreamClientCommandProcessor*,std::placeholders::__ph<1> const&>>(v4, 7);
  std::__hash_table<std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::Dispatch::ExternalStreamServerMessageType,std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::hash<Phase::Dispatch::ExternalStreamServerMessageType>,std::equal_to<Phase::Dispatch::ExternalStreamServerMessageType>,true>,std::__unordered_map_equal<Phase::Dispatch::ExternalStreamServerMessageType,std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::equal_to<Phase::Dispatch::ExternalStreamServerMessageType>,std::hash<Phase::Dispatch::ExternalStreamServerMessageType>,true>,std::allocator<std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::Dispatch::ExternalStreamServerMessageType,Phase::Dispatch::ExternalStreamServerMessageType,std::__bind<void (Phase::Dispatch::ExternalStreamClientCommandProcessor::*)(void const*),Phase::Dispatch::ExternalStreamClientCommandProcessor*,std::placeholders::__ph<1> const&>>(v4, 8);
  std::__hash_table<std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::Dispatch::ExternalStreamServerMessageType,std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::hash<Phase::Dispatch::ExternalStreamServerMessageType>,std::equal_to<Phase::Dispatch::ExternalStreamServerMessageType>,true>,std::__unordered_map_equal<Phase::Dispatch::ExternalStreamServerMessageType,std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::equal_to<Phase::Dispatch::ExternalStreamServerMessageType>,std::hash<Phase::Dispatch::ExternalStreamServerMessageType>,true>,std::allocator<std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::Dispatch::ExternalStreamServerMessageType,Phase::Dispatch::ExternalStreamServerMessageType,std::__bind<void (Phase::Dispatch::ExternalStreamClientCommandProcessor::*)(void const*),Phase::Dispatch::ExternalStreamClientCommandProcessor*,std::placeholders::__ph<1> const&>>(v4, 9);
  std::__hash_table<std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::Dispatch::ExternalStreamServerMessageType,std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::hash<Phase::Dispatch::ExternalStreamServerMessageType>,std::equal_to<Phase::Dispatch::ExternalStreamServerMessageType>,true>,std::__unordered_map_equal<Phase::Dispatch::ExternalStreamServerMessageType,std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::equal_to<Phase::Dispatch::ExternalStreamServerMessageType>,std::hash<Phase::Dispatch::ExternalStreamServerMessageType>,true>,std::allocator<std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::Dispatch::ExternalStreamServerMessageType,Phase::Dispatch::ExternalStreamServerMessageType,std::__bind<void (Phase::Dispatch::ExternalStreamClientCommandProcessor::*)(void const*),Phase::Dispatch::ExternalStreamClientCommandProcessor*,std::placeholders::__ph<1> const&>>(v4, 10);
  std::__hash_table<std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::Dispatch::ExternalStreamServerMessageType,std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::hash<Phase::Dispatch::ExternalStreamServerMessageType>,std::equal_to<Phase::Dispatch::ExternalStreamServerMessageType>,true>,std::__unordered_map_equal<Phase::Dispatch::ExternalStreamServerMessageType,std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::equal_to<Phase::Dispatch::ExternalStreamServerMessageType>,std::hash<Phase::Dispatch::ExternalStreamServerMessageType>,true>,std::allocator<std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::Dispatch::ExternalStreamServerMessageType,Phase::Dispatch::ExternalStreamServerMessageType,std::__bind<void (Phase::Dispatch::ExternalStreamClientCommandProcessor::*)(void const*),Phase::Dispatch::ExternalStreamClientCommandProcessor*,std::placeholders::__ph<1> const&>>(v4, 13);
  return this;
}

void Phase::Dispatch::ExternalStreamClientCommandProcessor::HandleAddStreamResponse(Phase::Dispatch::ExternalStreamClientCommandProcessor *this, void *a2)
{
  v4 = Phase::Dispatch::ExternalStreamResponseCodeToError(a2[8], a2[4], a2[5]);
  (*(**(this + 10) + 128))(*(this + 10), *a2, a2[1], a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], v4);
}

void Phase::Dispatch::ExternalStreamClientCommandProcessor::HandleAddInputStreamResponse(Phase::Dispatch::ExternalStreamClientCommandProcessor *this, double *a2)
{
  v4 = Phase::Dispatch::ExternalStreamResponseCodeToError(*(a2 + 8), *(a2 + 4), *(a2 + 5));
  (*(**(this + 10) + 136))(*(this + 10), *a2, *(a2 + 1), *(a2 + 2), *(a2 + 3), *(a2 + 4), *(a2 + 5), *(a2 + 6), a2[9], *(a2 + 7), *(a2 + 20), v4);
}

void Phase::Dispatch::ExternalStreamClientCommandProcessor::HandleRemoveStreamResponse(Phase::Dispatch::ExternalStreamClientCommandProcessor *this, void *a2)
{
  v4 = Phase::Dispatch::ExternalStreamResponseCodeToError(a2[6], a2[4], a2[5]);
  (*(**(this + 10) + 144))(*(this + 10), *a2, a2[1], a2[2], a2[3], a2[4], a2[5]);
}

void Phase::Dispatch::ExternalStreamClientCommandProcessor::HandleClaimStreamResponse(Phase::Dispatch::ExternalStreamClientCommandProcessor *this, void *a2)
{
  v4 = Phase::Dispatch::ExternalStreamResponseCodeToError(a2[4], a2[2], a2[3]);
  (*(**(this + 10) + 152))(*(this + 10), *a2, a2[1], a2[2], a2[3]);
}

void Phase::Dispatch::ExternalStreamClientCommandProcessor::HandleAbandonStreamResponse(Phase::Dispatch::ExternalStreamClientCommandProcessor *this, void *a2)
{
  v4 = Phase::Dispatch::ExternalStreamResponseCodeToError(a2[4], a2[2], a2[3]);
  (*(**(this + 10) + 160))(*(this + 10), *a2, a2[1], a2[5], a2[6], a2[2], a2[3]);
}

void Phase::Dispatch::ExternalStreamClientCommandProcessor::HandlePauseStreamResponse(Phase::Dispatch::ExternalStreamClientCommandProcessor *this, void *a2)
{
  v4 = Phase::Dispatch::ExternalStreamResponseCodeToError(a2[6], a2[2], a2[3]);
  (*(**(this + 10) + 168))(*(this + 10), *a2, a2[1], a2[2], a2[3], a2[4], a2[5]);
}

void *std::__hash_table<std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::Dispatch::ExternalStreamServerMessageType,std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::hash<Phase::Dispatch::ExternalStreamServerMessageType>,std::equal_to<Phase::Dispatch::ExternalStreamServerMessageType>,true>,std::__unordered_map_equal<Phase::Dispatch::ExternalStreamServerMessageType,std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>,std::equal_to<Phase::Dispatch::ExternalStreamServerMessageType>,std::hash<Phase::Dispatch::ExternalStreamServerMessageType>,true>,std::allocator<std::__hash_value_type<Phase::Dispatch::ExternalStreamServerMessageType,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::Dispatch::ExternalStreamServerMessageType,Phase::Dispatch::ExternalStreamServerMessageType,std::__bind<void (Phase::Dispatch::ExternalStreamClientCommandProcessor::*)(void const*),Phase::Dispatch::ExternalStreamClientCommandProcessor*,std::placeholders::__ph<1> const&>>(void *result, int a2)
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

void sub_23A3A1128(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<std::__bind<void (Phase::Dispatch::ExternalStreamClientCommandProcessor::*)(void const*),Phase::Dispatch::ExternalStreamClientCommandProcessor*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (Phase::Dispatch::ExternalStreamClientCommandProcessor::*)(void const*),Phase::Dispatch::ExternalStreamClientCommandProcessor*,std::placeholders::__ph<1> const&>>,void ()(void const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D32198;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<void (Phase::Dispatch::ExternalStreamClientCommandProcessor::*)(void const*),Phase::Dispatch::ExternalStreamClientCommandProcessor*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (Phase::Dispatch::ExternalStreamClientCommandProcessor::*)(void const*),Phase::Dispatch::ExternalStreamClientCommandProcessor*,std::placeholders::__ph<1> const&>>,void ()(void const*)>::operator()(void *a1, void *a2)
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

void Phase::Dispatch::ExternalStreamClientDirectDispatcher::ExternalStreamClientDirectDispatcher(Phase::Dispatch::ExternalStreamClientDirectDispatcher *this, const Phase::Controller::TaskManager *a2)
{
  v3 = [MEMORY[0x277CCAD78] UUID];
  *this = &unk_284D32308;
  Phase::Logger::GetInstance(v3);
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::Commandable(this + 1);
}

void sub_23A3A1334(_Unwind_Exception *a1)
{
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(v3);

  _Unwind_Resume(a1);
}

void Phase::Dispatch::ExternalStreamClientDirectDispatcher::~ExternalStreamClientDirectDispatcher(id *this)
{
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(this + 1);
}

{
  Phase::Dispatch::ExternalStreamClientDirectDispatcher::~ExternalStreamClientDirectDispatcher(this);

  JUMPOUT(0x23EE864A0);
}

void non-virtual thunk toPhase::Dispatch::ExternalStreamClientDirectDispatcher::~ExternalStreamClientDirectDispatcher(id *this)
{
  Phase::Dispatch::ExternalStreamClientDirectDispatcher::~ExternalStreamClientDirectDispatcher(this - 1);
}

{
  Phase::Dispatch::ExternalStreamClientDirectDispatcher::~ExternalStreamClientDirectDispatcher(this - 1);

  JUMPOUT(0x23EE864A0);
}

void Phase::Dispatch::ExternalStreamClientDirectDispatcher::AddExternalOutputStream(uint64_t a1, void *a2, void *a3, void *a4, char a5, void *a6, void *a7)
{
  v44 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v33 = v13;
  v20 = v14;
  v21 = v15;
  v31 = v16;
  v22 = _Block_copy(v16);
  v32 = v17;
  v23 = _Block_copy(v17);
  v24 = **(a1 + 16);
  v35 = 0;
  v34 = 1;
  v25 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v24, 72, &v35, &v34);
  if (!v25)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v29 = **(v24 + 48);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v37 = "CommandQueue.hpp";
      v38 = 1024;
      v39 = 100;
      _os_log_impl(&dword_23A302000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v34)
  {
    v26 = **(v24 + 48);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v37 = "CommandQueue.hpp";
      v38 = 1024;
      v39 = 89;
      v40 = 2048;
      v41 = v35;
      v42 = 2048;
      v43 = 72;
      _os_log_impl(&dword_23A302000, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v25 = &unk_284D32400;
  *(v25 + 8) = v18;
  *(v25 + 16) = v19;
  v27 = v33;
  *(v25 + 24) = v33;
  *(v25 + 32) = v20;
  *(v25 + 40) = v21;
  *(v25 + 48) = a5;
  *(v25 + 56) = v22;
  *(v25 + 64) = v23;
  Phase::LockFreeQueueSPSC::CommitBytes(v24, 72);
  atomic_store(0, (v24 + 40));
}

void sub_23A3A1764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a2)
  {
    __cxa_free_exception(v20);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v21 + 8);
    __cxa_end_catch();
    JUMPOUT(0x23A3A163CLL);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Dispatch::ExternalStreamClientDirectDispatcher::AddExternalInputStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = a7;
  v17 = *MEMORY[0x277CCA450];
  v18[0] = @"Error: input streams not supported for in-process clients";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924129 userInfo:v8];
  v10 = **(Phase::Logger::GetInstance(v9) + 928);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = 136315650;
    v12 = "DispatcherExternalStreamClientDirect.mm";
    v13 = 1024;
    v14 = 78;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", &v11, 0x1Cu);
  }

  v7[2](v7, v9);
}

void Phase::Dispatch::ExternalStreamClientDirectDispatcher::RemoveExternalStream(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 48);
  v11 = v7;
  v12 = v8;
  v13 = _Block_copy(v9);
  v14 = **(a1 + 16);
  v21 = 0;
  v20 = 1;
  v15 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v14, 40, &v21, &v20);
  if (!v15)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v18 = **(v14 + 48);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "CommandQueue.hpp";
      v24 = 1024;
      v25 = 100;
      _os_log_impl(&dword_23A302000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v20)
  {
    v16 = **(v14 + 48);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v23 = "CommandQueue.hpp";
      v24 = 1024;
      v25 = 89;
      v26 = 2048;
      v27 = v21;
      v28 = 2048;
      v29 = 40;
      _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v15 = &unk_284D32428;
  v15[1] = v10;
  v15[2] = v11;
  v15[3] = v12;
  v15[4] = v13;
  Phase::LockFreeQueueSPSC::CommitBytes(v14, 40);
  atomic_store(0, (v14 + 40));
}

void sub_23A3A1C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {
    __cxa_free_exception(v13);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v12 + 8);
    __cxa_end_catch();
    JUMPOUT(0x23A3A1B84);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Dispatch::ExternalStreamClientDirectDispatcher::ClaimControlOfExternalStreamUUID(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 48);
  v11 = v7;
  v12 = _Block_copy(v8);
  v13 = _Block_copy(v9);
  v14 = **(a1 + 16);
  v21 = 0;
  v20 = 1;
  v15 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v14, 48, &v21, &v20);
  if (!v15)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v18 = **(v14 + 48);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "CommandQueue.hpp";
      v24 = 1024;
      v25 = 100;
      _os_log_impl(&dword_23A302000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v20)
  {
    v16 = **(v14 + 48);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v23 = "CommandQueue.hpp";
      v24 = 1024;
      v25 = 89;
      v26 = 2048;
      v27 = v21;
      v28 = 2048;
      v29 = 48;
      _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v15 = &unk_284D32450;
  v15[1] = a1;
  v15[2] = v10;
  v15[3] = v11;
  v15[4] = v12;
  v15[5] = v13;
  Phase::LockFreeQueueSPSC::CommitBytes(v14, 48);
  atomic_store(0, (v14 + 40));
}

void sub_23A3A2004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a2)
  {
    __cxa_free_exception(v15);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v14 + 8);
    __cxa_end_catch();
    JUMPOUT(0x23A3A1EF8);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Dispatch::ExternalStreamClientDirectDispatcher::AbandonControlOfExternalStreamUUID(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a5;
  v9 = *(a1 + 48);
  v10 = v7;
  v11 = _Block_copy(v8);
  v12 = **(a1 + 16);
  v19 = 0;
  v18 = 1;
  v13 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v12, 32, &v19, &v18);
  if (!v13)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v16 = **(v12 + 48);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "CommandQueue.hpp";
      v22 = 1024;
      v23 = 100;
      _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v18)
  {
    v14 = **(v12 + 48);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v21 = "CommandQueue.hpp";
      v22 = 1024;
      v23 = 89;
      v24 = 2048;
      v25 = v19;
      v26 = 2048;
      v27 = 32;
      _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v13 = &unk_284D32478;
  v13[1] = v9;
  v13[2] = v10;
  v13[3] = v11;
  Phase::LockFreeQueueSPSC::CommitBytes(v12, 32);
  atomic_store(0, (v12 + 40));
}

void sub_23A3A2344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {
    __cxa_free_exception(v12);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v11 + 8);
    __cxa_end_catch();
    JUMPOUT(0x23A3A2244);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Dispatch::ExternalStreamClientDirectDispatcher::PauseExternalStream(uint64_t a1, void *a2, void *a3, char a4, void *a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = *(a1 + 48);
  v13 = v9;
  v14 = v10;
  v15 = _Block_copy(v11);
  v16 = **(a1 + 16);
  v23 = 0;
  v22 = 1;
  v17 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v16, 48, &v23, &v22);
  if (!v17)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v20 = **(v16 + 48);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "CommandQueue.hpp";
      v26 = 1024;
      v27 = 100;
      _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v22)
  {
    v18 = **(v16 + 48);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v25 = "CommandQueue.hpp";
      v26 = 1024;
      v27 = 89;
      v28 = 2048;
      v29 = v23;
      v30 = 2048;
      v31 = 48;
      _os_log_impl(&dword_23A302000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v17 = &unk_284D324A0;
  *(v17 + 8) = v12;
  *(v17 + 16) = v13;
  *(v17 + 24) = v14;
  *(v17 + 32) = a4;
  *(v17 + 40) = v15;
  Phase::LockFreeQueueSPSC::CommitBytes(v16, 48);
  atomic_store(0, (v16 + 40));
}

void sub_23A3A26B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {
    __cxa_free_exception(v14);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v13 + 8);
    __cxa_end_catch();
    JUMPOUT(0x23A3A25ACLL);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Dispatch::ExternalStreamClientDirectDispatcher::GatherDebugInformation(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 48);
  v5 = _Block_copy(v3);
  v6 = **(a1 + 16);
  v13 = 0;
  v12 = 1;
  v7 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v6, 24, &v13, &v12);
  if (!v7)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v10 = **(v6 + 48);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "CommandQueue.hpp";
      v16 = 1024;
      v17 = 100;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v12)
  {
    v8 = **(v6 + 48);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v15 = "CommandQueue.hpp";
      v16 = 1024;
      v17 = 89;
      v18 = 2048;
      v19 = v13;
      v20 = 2048;
      v21 = 24;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v7 = &unk_284D324C8;
  v7[1] = v4;
  v7[2] = v5;
  Phase::LockFreeQueueSPSC::CommitBytes(v6, 24);
  atomic_store(0, (v6 + 40));
}

void sub_23A3A29CC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2 + 8);
    __cxa_end_catch();
    JUMPOUT(0x23A3A28D8);
  }

  _Unwind_Resume(exception_object);
}

void Phase::LambdaFunction<Phase::Dispatch::ExternalStreamClientDirectDispatcher::AddExternalOutputStream(NSUUID *,NSUUID *,PHASEExternalOutputStreamDefinition *,BOOL,int({block_pointer})(BOOL *,AudioTimeStamp const*,unsigned int,AudioBufferList *),void({block_pointer})(NSError *))::$_0,void>::~LambdaFunction(id *a1)
{

  JUMPOUT(0x23EE864A0);
}

void Phase::LambdaFunction<Phase::Dispatch::ExternalStreamClientDirectDispatcher::RemoveExternalStream(NSUUID *,NSUUID *,void({block_pointer})(NSError *))::$_0,void>::~LambdaFunction(id *a1)
{

  JUMPOUT(0x23EE864A0);
}

void Phase::LambdaFunction<Phase::Dispatch::ExternalStreamClientDirectDispatcher::ClaimControlOfExternalStreamUUID(NSUUID *,void({block_pointer})(NSUUID *,NSUUID *,PHASEExternalStreamState),void({block_pointer})(Phase::UniqueObjectId,NSError *))::$_0,void>::~LambdaFunction(id *a1)
{

  JUMPOUT(0x23EE864A0);
}

void Phase::LambdaFunction<Phase::Dispatch::ExternalStreamClientDirectDispatcher::ClaimControlOfExternalStreamUUID(NSUUID *,void({block_pointer})(NSUUID *,NSUUID *,PHASEExternalStreamState),void({block_pointer})(Phase::UniqueObjectId,NSError *))::$_0,void>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(a1 + 8) + 56);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = ___ZZN5Phase8Dispatch36ExternalStreamClientDirectDispatcher32ClaimControlOfExternalStreamUUIDEP6NSUUIDU13block_pointerFvS3_S3_24PHASEExternalStreamStateEU13block_pointerFvNS_14UniqueObjectIdEP7NSErrorEENK3__0clEv_block_invoke;
  v5[3] = &unk_278B4F140;
  v6 = *(a1 + 40);
  [v1 claimControlOfExternalStreamGroupID:v3 attributedTo:v2 stateChangeBlock:v4 withCallback:v5];
}

void ___ZZN5Phase8Dispatch36ExternalStreamClientDirectDispatcher32ClaimControlOfExternalStreamUUIDEP6NSUUIDU13block_pointerFvS3_S3_24PHASEExternalStreamStateEU13block_pointerFvNS_14UniqueObjectIdEP7NSErrorEENK3__0clEv_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  MEMORY[0x23EE87040](v5);
  (*(v4 + 16))(v4, v5[0], v5[1], v3);
}

void Phase::LambdaFunction<Phase::Dispatch::ExternalStreamClientDirectDispatcher::AbandonControlOfExternalStreamUUID(NSUUID *,Phase::UniqueObjectId,void({block_pointer})(NSError *))::$_0,void>::~LambdaFunction(id *a1)
{

  JUMPOUT(0x23EE864A0);
}

void Phase::LambdaFunction<Phase::Dispatch::ExternalStreamClientDirectDispatcher::PauseExternalStream(NSUUID *,NSUUID *,BOOL,void({block_pointer})(NSError *))::$_0,void>::~LambdaFunction(id *a1)
{

  JUMPOUT(0x23EE864A0);
}

void Phase::LambdaFunction<Phase::Dispatch::ExternalStreamClientDirectDispatcher::PauseExternalStream(NSUUID *,NSUUID *,BOOL,void({block_pointer})(NSError *))::$_0,void>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = 0;
  [v2 setPauseExternalOutputStreamGroupID:v3 streamID:v4 isPaused:v5 error:&v7];
  v6 = v7;
  (*(*(a1 + 40) + 16))();
}

void Phase::LambdaFunction<Phase::Dispatch::ExternalStreamClientDirectDispatcher::GatherDebugInformation(void({block_pointer})(NSDictionary *,NSError *))::$_0,void>::~LambdaFunction(uint64_t a1)
{

  JUMPOUT(0x23EE864A0);
}

id Phase::Dispatch::ExternalStreamResponseCodeToError(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v36[1] = *MEMORY[0x277D85DE8];
  v23 = a2;
  v24 = a3;
  if (a1 > 1346924645)
  {
    if (a1 == 1346924646)
    {
      v25 = *MEMORY[0x277CCA450];
      v16 = MEMORY[0x277CCACA8];
      v17 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v23];
      v18 = [v16 stringWithFormat:@"failed to pause/resume stream %@", v17, v23, v24, v25];
      v26 = v18;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];

      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924646 userInfo:v8];
    }

    else if (a1 == 1346925413)
    {
      v33 = *MEMORY[0x277CCA450];
      v19 = MEMORY[0x277CCACA8];
      v20 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v23];
      v21 = [v19 stringWithFormat:@"stream %@ already exists", v20, v23, v24];
      v34 = v21;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];

      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346925413 userInfo:v8];
    }

    else
    {
      v4 = 0;
      if (a1 != 1346925939)
      {
        goto LABEL_15;
      }

      v27 = *MEMORY[0x277CCA450];
      v10 = MEMORY[0x277CCACA8];
      v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v23];
      v12 = [v10 stringWithFormat:@"stream %@ not claimed", v11, v23, v24];
      v28 = v12;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];

      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346925939 userInfo:v8];
    }
  }

  else if (a1 == 1346921331)
  {
    v29 = *MEMORY[0x277CCA450];
    v13 = MEMORY[0x277CCACA8];
    v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v23];
    v15 = [v13 stringWithFormat:@"stream %@ already claimed", v14, v23, v24];
    v30 = v15;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346921331 userInfo:v8];
  }

  else
  {
    if (a1 == 1346922849)
    {
      v35 = *MEMORY[0x277CCA450];
      v36[0] = @"invalid arguments";
      v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346922849 userInfo:v3];
      goto LABEL_15;
    }

    v4 = 0;
    if (a1 != 1346924147)
    {
      goto LABEL_15;
    }

    v31 = *MEMORY[0x277CCA450];
    v5 = MEMORY[0x277CCACA8];
    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v23];
    v7 = [v5 stringWithFormat:@"stream %@ does not exist", v6, v23, v24];
    v32 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924147 userInfo:v8];
  }

  v4 = v9;
  v3 = v8;
LABEL_15:

  return v4;
}

void sub_23A3A352C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t Phase::Dispatch::GeometryClientCommandProcessor::GeometryClientCommandProcessor(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_284D320F8;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = *(a1 + 72);
  *(a1 + 72) = v5;

  *a1 = &unk_284D324F0;
  *(a1 + 80) = a2;
  std::__hash_table<std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::Dispatch::GeometryServerMessageType,std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::hash<Phase::Dispatch::GeometryServerMessageType>,std::equal_to<Phase::Dispatch::GeometryServerMessageType>,true>,std::__unordered_map_equal<Phase::Dispatch::GeometryServerMessageType,std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::equal_to<Phase::Dispatch::GeometryServerMessageType>,std::hash<Phase::Dispatch::GeometryServerMessageType>,true>,std::allocator<std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::Dispatch::GeometryServerMessageType,Phase::Dispatch::GeometryServerMessageType,std::__bind<void (Phase::Dispatch::GeometryClientCommandProcessor::*)(void const*),Phase::Dispatch::GeometryClientCommandProcessor*,std::placeholders::__ph<1> const&>>(v4, 1u);
  std::__hash_table<std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::Dispatch::GeometryServerMessageType,std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::hash<Phase::Dispatch::GeometryServerMessageType>,std::equal_to<Phase::Dispatch::GeometryServerMessageType>,true>,std::__unordered_map_equal<Phase::Dispatch::GeometryServerMessageType,std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::equal_to<Phase::Dispatch::GeometryServerMessageType>,std::hash<Phase::Dispatch::GeometryServerMessageType>,true>,std::allocator<std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::Dispatch::GeometryServerMessageType,Phase::Dispatch::GeometryServerMessageType,std::__bind<void (Phase::Dispatch::GeometryClientCommandProcessor::*)(void const*),Phase::Dispatch::GeometryClientCommandProcessor*,std::placeholders::__ph<1> const&>>(v4, 2u);
  std::__hash_table<std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::Dispatch::GeometryServerMessageType,std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::hash<Phase::Dispatch::GeometryServerMessageType>,std::equal_to<Phase::Dispatch::GeometryServerMessageType>,true>,std::__unordered_map_equal<Phase::Dispatch::GeometryServerMessageType,std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::equal_to<Phase::Dispatch::GeometryServerMessageType>,std::hash<Phase::Dispatch::GeometryServerMessageType>,true>,std::allocator<std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::Dispatch::GeometryServerMessageType,Phase::Dispatch::GeometryServerMessageType,std::__bind<void (Phase::Dispatch::GeometryClientCommandProcessor::*)(void const*),Phase::Dispatch::GeometryClientCommandProcessor*,std::placeholders::__ph<1> const&>>(v4, 3u);
  std::__hash_table<std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::Dispatch::GeometryServerMessageType,std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::hash<Phase::Dispatch::GeometryServerMessageType>,std::equal_to<Phase::Dispatch::GeometryServerMessageType>,true>,std::__unordered_map_equal<Phase::Dispatch::GeometryServerMessageType,std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::equal_to<Phase::Dispatch::GeometryServerMessageType>,std::hash<Phase::Dispatch::GeometryServerMessageType>,true>,std::allocator<std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::Dispatch::GeometryServerMessageType,Phase::Dispatch::GeometryServerMessageType,std::__bind<void (Phase::Dispatch::GeometryClientCommandProcessor::*)(void const*),Phase::Dispatch::GeometryClientCommandProcessor*,std::placeholders::__ph<1> const&>>(v4, 4u);
  std::__hash_table<std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::Dispatch::GeometryServerMessageType,std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::hash<Phase::Dispatch::GeometryServerMessageType>,std::equal_to<Phase::Dispatch::GeometryServerMessageType>,true>,std::__unordered_map_equal<Phase::Dispatch::GeometryServerMessageType,std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::equal_to<Phase::Dispatch::GeometryServerMessageType>,std::hash<Phase::Dispatch::GeometryServerMessageType>,true>,std::allocator<std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::Dispatch::GeometryServerMessageType,Phase::Dispatch::GeometryServerMessageType,std::__bind<void (Phase::Dispatch::GeometryClientCommandProcessor::*)(void const*),Phase::Dispatch::GeometryClientCommandProcessor*,std::placeholders::__ph<1> const&>>(v4, 5u);
  std::__hash_table<std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::Dispatch::GeometryServerMessageType,std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::hash<Phase::Dispatch::GeometryServerMessageType>,std::equal_to<Phase::Dispatch::GeometryServerMessageType>,true>,std::__unordered_map_equal<Phase::Dispatch::GeometryServerMessageType,std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::equal_to<Phase::Dispatch::GeometryServerMessageType>,std::hash<Phase::Dispatch::GeometryServerMessageType>,true>,std::allocator<std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::Dispatch::GeometryServerMessageType,Phase::Dispatch::GeometryServerMessageType,std::__bind<void (Phase::Dispatch::GeometryClientCommandProcessor::*)(void const*),Phase::Dispatch::GeometryClientCommandProcessor*,std::placeholders::__ph<1> const&>>(v4, 6u);
  std::__hash_table<std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::Dispatch::GeometryServerMessageType,std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::hash<Phase::Dispatch::GeometryServerMessageType>,std::equal_to<Phase::Dispatch::GeometryServerMessageType>,true>,std::__unordered_map_equal<Phase::Dispatch::GeometryServerMessageType,std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::equal_to<Phase::Dispatch::GeometryServerMessageType>,std::hash<Phase::Dispatch::GeometryServerMessageType>,true>,std::allocator<std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::Dispatch::GeometryServerMessageType,Phase::Dispatch::GeometryServerMessageType,std::__bind<void (Phase::Dispatch::GeometryClientCommandProcessor::*)(void const*),Phase::Dispatch::GeometryClientCommandProcessor*,std::placeholders::__ph<1> const&>>(v4, 7u);
  std::__hash_table<std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::Dispatch::GeometryServerMessageType,std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::hash<Phase::Dispatch::GeometryServerMessageType>,std::equal_to<Phase::Dispatch::GeometryServerMessageType>,true>,std::__unordered_map_equal<Phase::Dispatch::GeometryServerMessageType,std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::equal_to<Phase::Dispatch::GeometryServerMessageType>,std::hash<Phase::Dispatch::GeometryServerMessageType>,true>,std::allocator<std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::Dispatch::GeometryServerMessageType,Phase::Dispatch::GeometryServerMessageType,std::__bind<void (Phase::Dispatch::GeometryClientCommandProcessor::*)(void const*),Phase::Dispatch::GeometryClientCommandProcessor*,std::placeholders::__ph<1> const&>>(v4, 8u);
  std::__hash_table<std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::Dispatch::GeometryServerMessageType,std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::hash<Phase::Dispatch::GeometryServerMessageType>,std::equal_to<Phase::Dispatch::GeometryServerMessageType>,true>,std::__unordered_map_equal<Phase::Dispatch::GeometryServerMessageType,std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::equal_to<Phase::Dispatch::GeometryServerMessageType>,std::hash<Phase::Dispatch::GeometryServerMessageType>,true>,std::allocator<std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::Dispatch::GeometryServerMessageType,Phase::Dispatch::GeometryServerMessageType,std::__bind<void (Phase::Dispatch::GeometryClientCommandProcessor::*)(void const*),Phase::Dispatch::GeometryClientCommandProcessor*,std::placeholders::__ph<1> const&>>(v4, 9u);
  return a1;
}

void *std::__hash_table<std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::Dispatch::GeometryServerMessageType,std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::hash<Phase::Dispatch::GeometryServerMessageType>,std::equal_to<Phase::Dispatch::GeometryServerMessageType>,true>,std::__unordered_map_equal<Phase::Dispatch::GeometryServerMessageType,std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>,std::equal_to<Phase::Dispatch::GeometryServerMessageType>,std::hash<Phase::Dispatch::GeometryServerMessageType>,true>,std::allocator<std::__hash_value_type<Phase::Dispatch::GeometryServerMessageType,std::function<void ()(void const*)>>>>::__emplace_unique_key_args<Phase::Dispatch::GeometryServerMessageType,Phase::Dispatch::GeometryServerMessageType,std::__bind<void (Phase::Dispatch::GeometryClientCommandProcessor::*)(void const*),Phase::Dispatch::GeometryClientCommandProcessor*,std::placeholders::__ph<1> const&>>(void *result, unsigned int a2)
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

void sub_23A3A3FB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<std::__bind<void (Phase::Dispatch::GeometryClientCommandProcessor::*)(void const*),Phase::Dispatch::GeometryClientCommandProcessor*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (Phase::Dispatch::GeometryClientCommandProcessor::*)(void const*),Phase::Dispatch::GeometryClientCommandProcessor*,std::placeholders::__ph<1> const&>>,void ()(void const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D32518;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<void (Phase::Dispatch::GeometryClientCommandProcessor::*)(void const*),Phase::Dispatch::GeometryClientCommandProcessor*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (Phase::Dispatch::GeometryClientCommandProcessor::*)(void const*),Phase::Dispatch::GeometryClientCommandProcessor*,std::placeholders::__ph<1> const&>>,void ()(void const*)>::operator()(void *a1, void *a2)
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

uint64_t Phase::Controller::TaskManager::GetService<Phase::Controller::ListenerManager>(Phase::Logger *a1, int a2)
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

void sub_23A3A443C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

unint64_t Phase::Dispatch::GeometryClientDirectDispatcher::CreateEntity(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  Phase::Geometry::EntityFactory::Create(a2, &v8);
  if (v8)
  {
    v5 = Phase::Geometry::SystemScheduler::AddToDatabase(*(a1 + 8) + 2784, &v8);
    if (a2 == 2)
    {
      Phase::Controller::ListenerManager::AddListener(*(a1 + 16), v5);
    }
  }

  else
  {
    v6 = **(Phase::Logger::GetInstance(v4) + 848);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "DispatcherGeometryClientDirect.mm";
      v12 = 1024;
      v13 = 330;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to create geo entity.", buf, 0x12u);
    }

    v5 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return v5;
}

void sub_23A3A4588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

unint64_t Phase::Dispatch::GeometryClientDirectDispatcher::CreateMedium(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  memset(v37, 0, sizeof(v37));
  v38 = 1065353216;
  v44 = "MediumDataMapSize";
  v45 = 17;
  *buf = 4;
  v43 = 1;
  Phase::UnorderedStringMap<Phase::OptionsValue>::Set(v37, &v44, buf);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf);
  v4 = Phase::Geometry::MediumFactory::Create(*(a1 + 8) + 928, 1u, v37, &v35);
  if (v35)
  {
    v5 = **(v35 + 40);
    v6 = [*a2 count];
    v34 = a1;
    *(v5 + 144) = 0u;
    v7 = (v5 + 144);
    *(v5 + 124) = 0u;
    *(v5 + 96) = 0u;
    *(v5 + 112) = 0u;
    *(v5 + 64) = 0u;
    *(v5 + 80) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    *(v5 + 16) = 0u;
    *(v5 + 140) = v6;
    *(v5 + 160) = 0u;
    *(v5 + 176) = 0u;
    *(v5 + 192) = 0u;
    *(v5 + 208) = 0u;
    *(v5 + 224) = 0u;
    *(v5 + 240) = 0u;
    *(v5 + 252) = 0u;
    *(v5 + 268) = v6;
    if (v6)
    {
      v8 = 0;
      do
      {
        v9 = [*a2 objectAtIndexedSubscript:v8];
        [v9 frequency];
        *(v7 - 32) = v10;

        v11 = [*a2 objectAtIndexedSubscript:v8];
        [v11 value];
        v13 = v12;

        v14 = 0.0;
        if (v13 != 1.0)
        {
          v15 = 1;
          if (v13 > 0.0)
          {
            *&v15 = v13;
          }

          v14 = ((logf(*&v15) * 8.6859) / 10.0) * -10.0;
        }

        *v7++ = v14;
        ++v8;
        --v6;
      }

      while (v6);
    }

    *(v5 + 272) = *(a2 + 8);
    v16 = 1;
    while (1)
    {
      v17 = *(*(v35 + 40) + 40 * v16);
      v18 = qword_23A555248[v16 - 1];
      v19 = [*a2 count];
      std::vector<float>::vector[abi:ne200100](&v44, v19);
      std::vector<float>::vector[abi:ne200100](&v40, v19);
      if (v19)
      {
        for (i = 0; i != v19; ++i)
        {
          v21 = [*a2 objectAtIndexedSubscript:i];
          [v21 frequency];
          *(v44 + i) = v22;

          v23 = [*a2 objectAtIndexedSubscript:i];
          [v23 value];
          *(v40 + i) = v24;
        }
      }

      std::vector<float>::vector[abi:ne200100](__p, v18);
      Phase::GetValuesFromFrequencyResponse<std::__wrap_iter<float *>,std::__wrap_iter<float *>,std::__wrap_iter<float const*>,std::__wrap_iter<float *>,&float Phase::Square<float>,&float Phase::SquareRoot<float>>(v44, v45, v40, v41, *buf, *&buf[8], __p[0]);
      *(v17 + 144) = 0u;
      v25 = (v17 + 144);
      *(v17 + 124) = 0u;
      *(v17 + 96) = 0u;
      *(v17 + 112) = 0u;
      *(v17 + 64) = 0u;
      *(v17 + 80) = 0u;
      *(v17 + 32) = 0u;
      *(v17 + 48) = 0u;
      *(v17 + 16) = 0u;
      *(v17 + 140) = v18;
      *(v17 + 160) = 0u;
      *(v17 + 176) = 0u;
      *(v17 + 192) = 0u;
      *(v17 + 208) = 0u;
      *(v17 + 224) = 0u;
      *(v17 + 240) = 0u;
      *(v17 + 252) = 0u;
      *(v17 + 268) = v18;
      v26 = __p[0];
      if (v18)
      {
        break;
      }

      *(v17 + 272) = *(a2 + 8);
      if (v26)
      {
        goto LABEL_22;
      }

LABEL_23:
      if (v40)
      {
        v41 = v40;
        operator delete(v40);
      }

      if (v44)
      {
        v45 = v44;
        operator delete(v44);
      }

      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      if (++v16 == 4)
      {
        v31 = Phase::Geometry::SystemScheduler::AddToDatabase(*(v34 + 8) + 2784, &v35);
        goto LABEL_34;
      }
    }

    v27 = *buf;
    v28 = __p[0];
    do
    {
      *(v25 - 32) = *v27;
      v29 = 0.0;
      if (*v28 != 1.0)
      {
        LODWORD(v30) = 1;
        if (*v28 > 0.0)
        {
          v30 = *v28;
        }

        v29 = ((logf(v30) * 8.6859) / 10.0) * -10.0;
      }

      *v25++ = v29;
      ++v28;
      ++v27;
      --v18;
    }

    while (v18);
    *(v17 + 272) = *(a2 + 8);
LABEL_22:
    __p[1] = v26;
    operator delete(v26);
    goto LABEL_23;
  }

  v32 = **(Phase::Logger::GetInstance(v4) + 848);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "DispatcherGeometryClientDirect.mm";
    *&buf[12] = 1024;
    *&buf[14] = 356;
    _os_log_impl(&dword_23A302000, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to create geo material.", buf, 0x12u);
  }

  v31 = 0;
LABEL_34:
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::~__hash_table(v37);
  return v31;
}

void sub_23A3A4A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint8_t buf, uint64_t a32)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::~__hash_table(&a13);
  _Unwind_Resume(a1);
}

unint64_t Phase::Dispatch::GeometryClientDirectDispatcher::CreateMaterial(uint64_t a1, id *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  memset(v13, 0, sizeof(v13));
  v14 = 1065353216;
  v11 = "MaterialDataMapSize";
  v12 = 19;
  *buf = 4;
  v19 = 1;
  Phase::UnorderedStringMap<Phase::OptionsValue>::Set(v13, &v11, buf);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf);
  v4 = Phase::Geometry::MaterialFactory::Create(*(a1 + 8) + 1384, 1u, v13, &v11);
  if (v11)
  {
    Phase::Dispatch::sCopyMaterialData(a2, **(v11 + 5));
    v5 = qword_23A555248;
    for (i = 40; i != 160; i += 40)
    {
      v7 = *v5++;
      Phase::Dispatch::sConvertMaterialData(a2, *(*(v11 + 5) + i), v7);
    }

    v8 = Phase::Geometry::SystemScheduler::AddToDatabase(*(a1 + 8) + 2784, &v11);
  }

  else
  {
    v9 = **(Phase::Logger::GetInstance(v4) + 848);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "DispatcherGeometryClientDirect.mm";
      v17 = 1024;
      v18 = 396;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to create geo material.", buf, 0x12u);
    }

    v8 = 0;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::~__hash_table(v13);
  return v8;
}

void sub_23A3A4D54(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void sub_23A3A4D94(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = **(Phase::Logger::GetInstance(v17) + 848);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315394;
      *(&buf + 4) = "DispatcherGeometryClientDirect.mm";
      WORD6(buf) = 1024;
      *(&buf + 14) = 415;
      _os_log_impl(&dword_23A302000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to create geo material.", &buf, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x23A3A4D08);
  }

  JUMPOUT(0x23A3A4D8CLL);
}

void sub_23A3A4E28(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x23A3A4D8CLL);
}

void Phase::Dispatch::sCopyMaterialData(id *a1, uint64_t a2)
{
  v4 = [*a1 count];
  *(a2 + 144) = 0u;
  v5 = (a2 + 144);
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 124) = 0u;
  *(a2 + 140) = v4;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 252) = 0u;
  *(a2 + 268) = v4;
  if (v4)
  {
    v6 = 0;
    do
    {
      v7 = [*a1 objectAtIndexedSubscript:v6];
      [v7 frequency];
      *(v5 - 32) = v8;

      v9 = [*a1 objectAtIndexedSubscript:v6];
      [v9 value];
      v11 = v10;

      v12 = 0.0;
      if (v11 != 1.0)
      {
        v13 = 1;
        if (v11 > 0.0)
        {
          *&v13 = v11;
        }

        v12 = ((logf(*&v13) * 8.6859) / 10.0) * -10.0;
      }

      *v5++ = v12;
      ++v6;
      --v4;
    }

    while (v4);
  }

  [a1[1] measuredDepth];
  *(a2 + 272) = v14;
  v15 = [a1[2] absorptionCoefficients];
  v16 = [v15 count];

  *(a2 + 396) = 0u;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 412) = v16;
  v17 = (a2 + 416);
  *(a2 + 416) = 0u;
  *(a2 + 432) = 0u;
  *(a2 + 448) = 0u;
  *(a2 + 464) = 0u;
  *(a2 + 480) = 0u;
  *(a2 + 496) = 0u;
  *(a2 + 512) = 0u;
  *(a2 + 524) = 0u;
  *(a2 + 540) = v16;
  if (v16)
  {
    v18 = 0;
    do
    {
      v19 = [a1[2] absorptionCoefficients];
      v20 = [v19 objectAtIndexedSubscript:v18];
      [v20 frequency];
      *(v17 - 32) = v21;

      v22 = [a1[2] absorptionCoefficients];
      v23 = [v22 objectAtIndexedSubscript:v18];
      [v23 value];
      *v17++ = v24;

      ++v18;
      --v16;
    }

    while (v16);
  }

  v25 = [a1[3] scatteringCoefficients];
  v26 = [v25 count];

  *(a2 + 652) = 0u;
  *(a2 + 624) = 0u;
  *(a2 + 640) = 0u;
  *(a2 + 592) = 0u;
  *(a2 + 608) = 0u;
  *(a2 + 560) = 0u;
  *(a2 + 576) = 0u;
  *(a2 + 544) = 0u;
  *(a2 + 668) = v26;
  v27 = (a2 + 672);
  *(a2 + 672) = 0u;
  *(a2 + 688) = 0u;
  *(a2 + 704) = 0u;
  *(a2 + 720) = 0u;
  *(a2 + 736) = 0u;
  *(a2 + 752) = 0u;
  *(a2 + 768) = 0u;
  *(a2 + 780) = 0u;
  *(a2 + 796) = v26;
  if (v26)
  {
    v28 = 0;
    do
    {
      v29 = [a1[3] scatteringCoefficients];
      v30 = [v29 objectAtIndexedSubscript:v28];
      [v30 frequency];
      *(v27 - 32) = v31;

      v32 = [a1[3] scatteringCoefficients];
      v33 = [v32 objectAtIndexedSubscript:v28];
      [v33 value];
      *v27++ = v34;

      ++v28;
      --v26;
    }

    while (v26);
  }
}

void Phase::Dispatch::sConvertMaterialData(id *a1, uint64_t a2, unint64_t a3)
{
  if (a3 <= 2)
  {
    std::terminate();
  }

  v3 = a3;
  v6 = [*a1 count];
  std::vector<float>::vector[abi:ne200100](&v60, v6);
  std::vector<float>::vector[abi:ne200100](&v58, v6);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = [*a1 objectAtIndexedSubscript:i];
      [v8 frequency];
      v60[i] = v9;

      v10 = [*a1 objectAtIndexedSubscript:i];
      [v10 value];
      *(v58 + i) = v11;
    }
  }

  std::vector<float>::vector[abi:ne200100](v57, v3);
  Phase::GetValuesFromFrequencyResponse<std::__wrap_iter<float *>,std::__wrap_iter<float *>,std::__wrap_iter<float const*>,std::__wrap_iter<float *>,&float Phase::Square<float>,&float Phase::SquareRoot<float>>(v60, v61, v58, v59, v62, v63, v57[0]);
  *(a2 + 144) = 0u;
  v12 = (a2 + 144);
  *(a2 + 124) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 140) = v3;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 252) = 0u;
  *(a2 + 268) = v3;
  v13 = v62;
  v14 = v3;
  v15 = v57[0];
  do
  {
    *(v12 - 32) = *v13;
    v16 = 0.0;
    if (*v15 != 1.0)
    {
      LODWORD(v17) = 1;
      if (*v15 > 0.0)
      {
        v17 = *v15;
      }

      v16 = ((logf(v17) * 8.6859) / 10.0) * -10.0;
    }

    *v12++ = v16;
    ++v15;
    ++v13;
    --v14;
  }

  while (v14);
  [a1[1] measuredDepth];
  *(a2 + 272) = v18;
  v19 = [a1[2] absorptionCoefficients];
  v20 = [v19 count];

  std::vector<float>::vector[abi:ne200100](&v55, v20);
  std::vector<float>::vector[abi:ne200100](&v53, v20);
  if (v20)
  {
    for (j = 0; j != v20; ++j)
    {
      v22 = [a1[2] absorptionCoefficients];
      v23 = [v22 objectAtIndexedSubscript:j];
      [v23 frequency];
      *(v55 + j) = v24;

      v25 = [a1[2] absorptionCoefficients];
      v26 = [v25 objectAtIndexedSubscript:j];
      [v26 value];
      *(v53 + j) = v27;
    }
  }

  std::vector<float>::vector[abi:ne200100](v52, v3);
  Phase::GetValuesFromFrequencyResponse<std::__wrap_iter<float *>,std::__wrap_iter<float *>,std::__wrap_iter<float const*>,std::__wrap_iter<float *>,&float Phase::Identity<float>,&float Phase::Identity<float>>(v55, v56, v53, v54, v62, v63, v52[0]);
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 396) = 0u;
  *(a2 + 412) = v3;
  v28 = (a2 + 416);
  *(a2 + 416) = 0u;
  *(a2 + 432) = 0u;
  *(a2 + 448) = 0u;
  *(a2 + 464) = 0u;
  *(a2 + 480) = 0u;
  *(a2 + 496) = 0u;
  *(a2 + 512) = 0u;
  *(a2 + 524) = 0u;
  *(a2 + 540) = v3;
  v29 = v62;
  v30 = v3;
  v31 = v52[0];
  do
  {
    v32 = *v29++;
    *(v28 - 32) = v32;
    v33 = *v31++;
    *v28++ = v33;
    --v30;
  }

  while (v30);
  v34 = [a1[3] scatteringCoefficients];
  v35 = [v34 count];

  std::vector<float>::vector[abi:ne200100](&v50, v35);
  std::vector<float>::vector[abi:ne200100](&v48, v35);
  if (v35)
  {
    for (k = 0; k != v35; ++k)
    {
      v37 = [a1[3] scatteringCoefficients];
      v38 = [v37 objectAtIndexedSubscript:k];
      [v38 frequency];
      *(v50 + k) = v39;

      v40 = [a1[3] scatteringCoefficients];
      v41 = [v40 objectAtIndexedSubscript:k];
      [v41 value];
      *(v48 + k) = v42;
    }
  }

  std::vector<float>::vector[abi:ne200100](__p, v3);
  Phase::GetValuesFromFrequencyResponse<std::__wrap_iter<float *>,std::__wrap_iter<float *>,std::__wrap_iter<float const*>,std::__wrap_iter<float *>,&float Phase::Identity<float>,&float Phase::Identity<float>>(v50, v51, v48, v49, v62, v63, __p[0]);
  v43 = 0;
  *(a2 + 624) = 0u;
  *(a2 + 640) = 0u;
  *(a2 + 592) = 0u;
  *(a2 + 608) = 0u;
  *(a2 + 560) = 0u;
  *(a2 + 576) = 0u;
  *(a2 + 544) = 0u;
  *(a2 + 652) = 0u;
  *(a2 + 668) = v3;
  v44 = (a2 + 672);
  *(a2 + 672) = 0u;
  *(a2 + 688) = 0u;
  *(a2 + 704) = 0u;
  *(a2 + 720) = 0u;
  *(a2 + 736) = 0u;
  *(a2 + 752) = 0u;
  *(a2 + 768) = 0u;
  *(a2 + 780) = 0u;
  *(a2 + 796) = v3;
  v45 = v62;
  v46 = __p[0];
  do
  {
    *(v44 - 32) = LODWORD(v45[v43]);
    *v44++ = *&v46[v43 * 4];
    ++v43;
    --v3;
  }

  while (v3);
  __p[1] = v46;
  operator delete(v46);
  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }

  if (v52[0])
  {
    v52[1] = v52[0];
    operator delete(v52[0]);
  }

  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }

  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  if (v57[0])
  {
    v57[1] = v57[0];
    operator delete(v57[0]);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }
}

void sub_23A3A561C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  v33 = *(v31 - 160);
  if (v33)
  {
    *(v31 - 152) = v33;
    operator delete(v33);
  }

  v34 = *(v31 - 136);
  if (v34)
  {
    *(v31 - 128) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Dispatch::GeometryClientDirectDispatcher::CreateShape(uint64_t a1, unsigned int a2, _DWORD *a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = Phase::Geometry::ShapeFactory::Create((*(a1 + 8) + 1632), a2, a3, a4, &v9);
  if (v9)
  {
    v6 = Phase::Geometry::SystemScheduler::AddToDatabase(*(a1 + 8) + 2784, &v9);
  }

  else
  {
    v7 = **(Phase::Logger::GetInstance(v5) + 848);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "DispatcherGeometryClientDirect.mm";
      v13 = 1024;
      v14 = 434;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to create geo shape.", buf, 0x12u);
    }

    v6 = 0;
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return v6;
}

void sub_23A3A589C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A3A5A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

unint64_t Phase::Dispatch::GeometryClientDirectDispatcher::CreateContext(Phase::Dispatch::GeometryClientDirectDispatcher *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = Phase::Geometry::ContextFactory::Create(0, &v6);
  if (v6)
  {
    v3 = Phase::Geometry::SystemScheduler::AddToDatabase(*(this + 1) + 2784, &v6);
  }

  else
  {
    v4 = **(Phase::Logger::GetInstance(v2) + 848);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "DispatcherGeometryClientDirect.mm";
      v10 = 1024;
      v11 = 498;
      _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to create geo context.", buf, 0x12u);
    }

    v3 = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v3;
}

void sub_23A3A5B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

unint64_t Phase::Dispatch::GeometryClientDirectDispatcher::CreateEnvironmentalMetadataStream(Phase::Dispatch::GeometryClientDirectDispatcher *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = Phase::Geometry::EnvironmentalMetadataStreamFactory::Create(0, &v6);
  if (v6)
  {
    v3 = Phase::Geometry::SystemScheduler::AddToDatabase(*(this + 1) + 2784, &v6);
  }

  else
  {
    v4 = **(Phase::Logger::GetInstance(v2) + 848);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "DispatcherGeometryClientDirect.mm";
      v10 = 1024;
      v11 = 514;
      _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to create geo environmental metadata stream.", buf, 0x12u);
    }

    v3 = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v3;
}

void sub_23A3A5C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Dispatch::GeometryClientDirectDispatcher::UpdateMaterial(uint64_t a1, uint64_t a2, id *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[2];
  v8 = a3[3];
  v9 = **(Phase::Logger::GetInstance(v8) + 864);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v15 = "DispatcherGeometryClientDirect.mm";
    v16 = 1024;
    v17 = 599;
    v18 = 2048;
    v19 = a2;
    _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Updating Material 0x%llx", buf, 0x1Cu);
  }

  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  operator new();
}

void sub_23A3A5EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, id);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  std::__function::__value_func<void ()(Phase::Geometry::System *)>::~__value_func[abi:ne200100](va1);
  Phase::Dispatch::ExternalStreamClientDirectDispatcher::RemoveExternalStream(NSUUID *,NSUUID *,void({block_pointer})(NSError *))::$_0::~$_0(va);
  _Unwind_Resume(a1);
}

uint64_t Phase::Dispatch::GeometryClientDirectDispatcher::SetSourceGain(uint64_t a1, uint64_t a2, float a3)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v5[0] = &unk_284D32860;
  v5[1] = a2;
  v5[2] = LODWORD(a3);
  v5[3] = v5;
  Phase::Geometry::SystemScheduler::RunFunction(v3 + 2784, v5);
  return std::__function::__value_func<void ()(Phase::Geometry::System *)>::~__value_func[abi:ne200100](v5);
}

void sub_23A3A5F80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::Geometry::System *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t Phase::Dispatch::GeometryClientDirectDispatcher::SetListenerGain(uint64_t a1, uint64_t a2, float a3)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v5[0] = &unk_284D328A8;
  v5[1] = a2;
  v5[2] = LODWORD(a3);
  v5[3] = v5;
  Phase::Geometry::SystemScheduler::RunFunction(v3 + 2784, v5);
  return std::__function::__value_func<void ()(Phase::Geometry::System *)>::~__value_func[abi:ne200100](v5);
}

void sub_23A3A6028(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::Geometry::System *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void Phase::Dispatch::GeometryClientDirectDispatcher::SetRoomAcousticTarget(uint64_t a1, const void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a2, sizeof(__dst));
  operator new();
}

uint64_t Phase::Dispatch::GeometryClientDirectDispatcher::SetRoomAcousticTrackingMode(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v4[0] = &unk_284D328F0;
  v4[1] = a2;
  v4[3] = v4;
  Phase::Geometry::SystemScheduler::RunFunction(v2 + 2784, v4);
  return std::__function::__value_func<void ()(Phase::Geometry::System *)>::~__value_func[abi:ne200100](v4);
}

void sub_23A3A61B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::Geometry::System *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t Phase::Dispatch::GeometryClientDirectDispatcher::SetRoomAcousticMaximumReverbTime(Phase::Dispatch::GeometryClientDirectDispatcher *this, float a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  v4 = &unk_284D32980;
  v5 = a2;
  v6 = &v4;
  Phase::Geometry::SystemScheduler::RunFunction(v2 + 2784, &v4);
  return std::__function::__value_func<void ()(Phase::Geometry::System *)>::~__value_func[abi:ne200100](&v4);
}

void sub_23A3A625C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::Geometry::System *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t Phase::Dispatch::GeometryClientDirectDispatcher::SetRoomAcousticSoftLimiting(Phase::Dispatch::GeometryClientDirectDispatcher *this, char a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  v4 = &unk_284D329C8;
  v5 = a2;
  v6 = &v4;
  Phase::Geometry::SystemScheduler::RunFunction(v2 + 2784, &v4);
  return std::__function::__value_func<void ()(Phase::Geometry::System *)>::~__value_func[abi:ne200100](&v4);
}

void sub_23A3A6300(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::Geometry::System *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t Phase::Dispatch::GeometryClientDirectDispatcher::SetRoomAcousticSmoothing(Phase::Dispatch::GeometryClientDirectDispatcher *this, float a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  v4 = &unk_284D32A10;
  v5 = a2;
  v6 = &v4;
  Phase::Geometry::SystemScheduler::RunFunction(v2 + 2784, &v4);
  return std::__function::__value_func<void ()(Phase::Geometry::System *)>::~__value_func[abi:ne200100](&v4);
}

void sub_23A3A63A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::Geometry::System *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t Phase::Dispatch::GeometryClientDirectDispatcher::SetSpaceBlendTargetPreset(Phase::Dispatch::GeometryClientDirectDispatcher *this, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  v4[0] = &unk_284D32A58;
  v4[1] = a2;
  v4[3] = v4;
  Phase::Geometry::SystemScheduler::RunFunction(v2 + 2784, v4);
  return std::__function::__value_func<void ()(Phase::Geometry::System *)>::~__value_func[abi:ne200100](v4);
}

void sub_23A3A6444(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::Geometry::System *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23A3A6508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(Phase::Geometry::System *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t Phase::Dispatch::GeometryClientDirectDispatcher::SetSpaceBlendLevel(Phase::Dispatch::GeometryClientDirectDispatcher *this, float a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  v4 = &unk_284D32AE8;
  v5 = a2;
  v6 = &v4;
  Phase::Geometry::SystemScheduler::RunFunction(v2 + 2784, &v4);
  return std::__function::__value_func<void ()(Phase::Geometry::System *)>::~__value_func[abi:ne200100](&v4);
}

void sub_23A3A65AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::Geometry::System *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t Phase::Dispatch::GeometryClientDirectDispatcher::SetSceneClassification(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v4[0] = &unk_284D32B30;
  v4[1] = a2;
  v4[3] = v4;
  Phase::Geometry::SystemScheduler::RunFunction(v2 + 2784, v4);
  return std::__function::__value_func<void ()(Phase::Geometry::System *)>::~__value_func[abi:ne200100](v4);
}

void sub_23A3A664C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::Geometry::System *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t Phase::Dispatch::GeometryClientDirectDispatcher::SetDefaultSceneReverbPreset(Phase::Dispatch::GeometryClientDirectDispatcher *this, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = **(Phase::Logger::GetInstance(this) + 864);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "DispatcherGeometryClientDirect.mm";
    v8 = 1024;
    v9 = 830;
    v10 = 2048;
    v11 = a2;
    _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting scene reverb preset 0x%llx", &v6, 0x1Cu);
  }

  return Phase::Geometry::SystemScheduler::SetDefaultSceneReverbPreset((*(this + 1) + 2784), a2);
}

uint64_t Phase::Dispatch::GeometryClientDirectDispatcher::SetDefaultSceneMedium(Phase::Logger *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = **(Phase::Logger::GetInstance(a1) + 864);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "DispatcherGeometryClientDirect.mm";
    v8 = 1024;
    v9 = 837;
    v10 = 2048;
    v11 = a2;
    _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting scene medium 0x%llx", &v6, 0x1Cu);
  }

  return Phase::Geometry::SystemScheduler::SetDefaulSceneMedium(*(a1 + 1) + 2784, a2);
}

uint64_t Phase::Dispatch::GeometryClientDirectDispatcher::SetOccluderIsStatic(Phase::Logger *a1, uint64_t a2, int a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = **(Phase::Logger::GetInstance(a1) + 864);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "false";
    *&v11[4] = "DispatcherGeometryClientDirect.mm";
    *&v11[12] = 1024;
    *&v11[14] = 862;
    *v11 = 136315906;
    if (a3)
    {
      v8 = "true";
    }

    *&v11[18] = 2080;
    *&v11[20] = v8;
    *&v11[28] = 2048;
    *&v11[30] = a2;
    _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting isStatic to %s on occluder 0x%llx", v11, 0x26u);
  }

  v9 = *(a1 + 1);
  *v11 = &unk_284D32B78;
  *&v11[8] = a2;
  v11[16] = v6;
  *&v11[24] = v11;
  *&v11[17] = 0;
  *&v11[20] = 0;
  Phase::Geometry::SystemScheduler::RunFunction(v9 + 2784, v11);
  return std::__function::__value_func<void ()(Phase::Geometry::System *)>::~__value_func[abi:ne200100](v11);
}

uint64_t Phase::Dispatch::GeometryClientDirectDispatcher::SetListenerHeadTracking(uint64_t *a1, uint64_t a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = **(Phase::Logger::GetInstance(a1) + 848);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "false";
    v10 = "DispatcherGeometryClientDirect.mm";
    v11 = 1024;
    v12 = 870;
    v9 = 136315906;
    if (a3)
    {
      v7 = "true";
    }

    v13 = 2080;
    v14 = v7;
    v15 = 2048;
    v16 = a2;
    _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting tracking to %s on listener 0x%llx", &v9, 0x26u);
  }

  return Phase::Controller::ListenerManager::SetTracking(a1[2], a2, a3);
}

uint64_t Phase::Dispatch::GeometryClientDirectDispatcher::UpdateTransform(uint64_t a1, uint64_t a2, __int128 *a3, int a4)
{
  if (a4)
  {
    return Phase::Controller::ListenerManager::UpdateTransform(*(a1 + 16), a2, a3);
  }

  else
  {
    return Phase::Geometry::SystemScheduler::UpdateTransform(*(a1 + 8) + 2784, a2, a3);
  }
}

uint64_t Phase::Dispatch::GeometryClientDirectDispatcher::ReleaseEntity(uint64_t a1, uint64_t a2)
{
  Phase::Controller::ListenerManager::RemoveListener(*(a1 + 16), a2);
  v4 = *(a1 + 8) + 2784;

  return Phase::Geometry::SystemScheduler::ReleaseEntity(v4, a2);
}

void Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[8] = a2;
  std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>::__value_func[abi:ne200100](v4, a3);
  std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>::__value_func[abi:ne200100](v3, v4);
  v3[7] = 0;
  operator new();
}

void sub_23A3A6CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingSource(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v4[0] = &unk_284D32C08;
  v4[1] = a2;
  v4[3] = v4;
  Phase::Geometry::SystemScheduler::RunDebugFunction(v2 + 2784, v4);
  return std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](v4);
}

void sub_23A3A6D9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingAudibleGeometry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[8] = a2;
  std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>::__value_func[abi:ne200100](v4, a3);
  std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>::__value_func[abi:ne200100](v3, v4);
  v3[7] = 0;
  operator new();
}

void sub_23A3A6F00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingAudibleGeometry(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v4[0] = &unk_284D32C98;
  v4[1] = a2;
  v4[3] = v4;
  Phase::Geometry::SystemScheduler::RunDebugFunction(v2 + 2784, v4);
  return std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](v4);
}

void sub_23A3A6FDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void Phase::Dispatch::GeometryClientDirectDispatcher::GetShapeInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[8] = a2;
  std::__function::__value_func<void ()(unsigned int,void const*)>::__value_func[abi:ne200100](v4, a3);
  std::__function::__value_func<void ()(unsigned int,void const*)>::__value_func[abi:ne200100](v3, v4);
  v3[7] = 0;
  operator new();
}

void sub_23A3A7140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Dispatch::GeometryClientDirectDispatcher::GetVoxels(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v5[9] = a2;
  v5[10] = a3;
  v5[11] = a4;
  std::__function::__value_func<void ()(unsigned long,Phase::Vector<unsigned short,3ul> *)>::__value_func[abi:ne200100](v6, a5);
  std::__function::__value_func<void ()(unsigned long,Phase::Vector<unsigned short,3ul> *)>::__value_func[abi:ne200100](v5, v6);
  v5[8] = 0;
  operator new();
}

void sub_23A3A72F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingRayTraceIntersections(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[8] = a2;
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::__value_func[abi:ne200100](v4, a3);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::__value_func[abi:ne200100](v3, v4);
  v3[7] = 0;
  operator new();
}

void sub_23A3A7444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](v8 + 8);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](v7 + 8);
  _Unwind_Resume(a1);
}

uint64_t Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingRayTraceIntersections(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v4[0] = &unk_284D32DB8;
  v4[1] = a2;
  v4[3] = v4;
  Phase::Geometry::SystemScheduler::RunDebugFunction(v2 + 2784, v4);
  return std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](v4);
}

void sub_23A3A750C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingEnergyHistogram(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[8] = a2;
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::__value_func[abi:ne200100](v4, a3);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::__value_func[abi:ne200100](v3, v4);
  v3[7] = 0;
  operator new();
}

void sub_23A3A7620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](v8 + 8);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](v7 + 8);
  _Unwind_Resume(a1);
}

uint64_t Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingEnergyHistogram(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v4[0] = &unk_284D32E48;
  v4[1] = a2;
  v4[3] = v4;
  Phase::Geometry::SystemScheduler::RunDebugFunction(v2 + 2784, v4);
  return std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](v4);
}

void sub_23A3A76E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingImageSourceLocations(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[8] = a2;
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::__value_func[abi:ne200100](v4, a3);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::__value_func[abi:ne200100](v3, v4);
  v3[7] = 0;
  operator new();
}

void sub_23A3A77FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](v8 + 8);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](v7 + 8);
  _Unwind_Resume(a1);
}

uint64_t Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingImageSourceLocations(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v4[0] = &unk_284D32ED8;
  v4[1] = a2;
  v4[3] = v4;
  Phase::Geometry::SystemScheduler::RunDebugFunction(v2 + 2784, v4);
  return std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](v4);
}

void sub_23A3A78C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingListenerEarlyResponseMetadata(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[8] = a2;
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::__value_func[abi:ne200100](v4, a3);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::__value_func[abi:ne200100](v3, v4);
  v3[7] = 0;
  operator new();
}

void sub_23A3A79D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](v8 + 8);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](v7 + 8);
  _Unwind_Resume(a1);
}

uint64_t Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingListenerEarlyResponseMetadata(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v4[0] = &unk_284D32F68;
  v4[1] = a2;
  v4[3] = v4;
  Phase::Geometry::SystemScheduler::RunDebugFunction(v2 + 2784, v4);
  return std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](v4);
}

void sub_23A3A7AA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingListenerLateReverbMetadata(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[8] = a2;
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::__value_func[abi:ne200100](v4, a3);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::__value_func[abi:ne200100](v3, v4);
  v3[7] = 0;
  operator new();
}

void sub_23A3A7BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](v8 + 8);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](v7 + 8);
  _Unwind_Resume(a1);
}

uint64_t Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingListenerLateReverbMetadata(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v4[0] = &unk_284D32FF8;
  v4[1] = a2;
  v4[3] = v4;
  Phase::Geometry::SystemScheduler::RunDebugFunction(v2 + 2784, v4);
  return std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](v4);
}

void sub_23A3A7C7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void Phase::Dispatch::GeometryClientDirectDispatcher::BeginTrackingRoomData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[8] = a2;
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::__value_func[abi:ne200100](v4, a3);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::__value_func[abi:ne200100](v3, v4);
  v3[7] = 0;
  operator new();
}

void sub_23A3A7D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](v8 + 8);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](v7 + 8);
  _Unwind_Resume(a1);
}

uint64_t Phase::Dispatch::GeometryClientDirectDispatcher::EndTrackingRoomData(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v4[0] = &unk_284D33088;
  v4[1] = a2;
  v4[3] = v4;
  Phase::Geometry::SystemScheduler::RunDebugFunction(v2 + 2784, v4);
  return std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](v4);
}

void sub_23A3A7E54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23A3A7F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23A3A8040(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(unsigned int,void const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(unsigned long,Phase::Vector<unsigned short,3ul> *)>::~__value_func[abi:ne200100](uint64_t a1)
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
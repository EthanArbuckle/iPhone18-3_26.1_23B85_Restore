void sub_23A4041B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::tuple<Phase::Geometry::Entity const&,unsigned long,BOOL>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3) + 1;
    if (v9 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 8 * (v8 >> 3);
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    v6 = v12 + 24;
    v13 = v12 - v8;
    memcpy((v12 - v8), v7, v8);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 24;
  }

  *(a1 + 8) = v6;
}

void Phase::SharedSlotMapState<Phase::Geometry::Entity,Phase::Handle64>::ForceSet(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = HIDWORD(a3);
  if (a3 < a2)
  {
    v6 = a1 + 24 * a3;
    if (a5)
    {
      atomic_fetch_add_explicit((a5 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = *(v6 + 8);
    *v6 = a4;
    *(v6 + 8) = a5;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    *(v6 + 20) = v5;
  }
}

void Phase::Geometry::ShapeDebugger::GetVoxels(Phase::Logger ***a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  Phase::Geometry::System::GetCurrentState(*a1, &v20);
  if (*(v20 + 160) > a2 && (v9 = *(v20 + 144) + 24 * a2, *(v9 + 20) == HIDWORD(a2)) && (v10 = *v9) != 0 && (v11 = **(v10 + 120)) != 0 && (v12 = *(**(v11 + 40) + 16 * *(v11 + 48)), v12[3] > a3) && (v13 = v12[1] + v12[4] * a3, v14 = *(**(v13 + 40) + 16 * *(v13 + 48)), *(v14 + 24) > a4))
  {
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
    if (a4)
    {
      v15 = *(*(**(*(v14 + 8) + 56) + 16 * *(*(v14 + 8) + 64)) + 8);
      v18 = 0;
      v19 = 0;
      Phase::Geometry::sAddVoxels(a5, v13, v15, &v18, 1, a4);
    }

    else
    {
      v18.i32[0] = 0;
      v18.i16[2] = 0;
      std::vector<Phase::Vector<unsigned short,3ul>>::push_back[abi:ne200100]((a5 + 24), &v18);
    }

    v16 = *(**(v13 + 40) + 16 * *(v13 + 48));
    v17 = (*(v16 + 8) + *(v16 + 32) * a4);
    *(a5 + 12) = v17[4];
    *(a5 + 16) = v17[5];
    *(a5 + 20) = v17[6];
    *a5 = *v13;
    *(a5 + 4) = *(v13 + 4);
    *(a5 + 8) = *(v13 + 8);
  }

  else
  {
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }
}

void sub_23A4044F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  v14 = *(v12 + 24);
  if (v14)
  {
    *(v12 + 32) = v14;
    operator delete(v14);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Geometry::sAddVoxels(void *a1, uint64_t a2, uint64_t *a3, int32x2_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v9 = a3;
  v10 = a2;
  v12 = 0;
  v13 = *(**(a2 + 40) + 16 * *(a2 + 48));
  v34 = a1 + 3;
  v35 = *(v13 + 8) + *(v13 + 32) * a5;
  do
  {
    v14 = *v9;
    if ((*v9 >> v12))
    {
      v15 = vdup_n_s32(v12);
      v16 = vshl_u32(v15, -2);
      v15.i32[1] = v12 >> 3;
      v17 = vadd_s32(*a4, vorr_s8(vand_s8(v16, 0x100000002), vand_s8(v15, 0x200000001)));
      v18 = a4[1].i32[0] + (v16.i8[0] & 1 | (2 * ((v12 >> 5) & 1)));
      if (v7 == a6)
      {
        v20 = a1[4];
        v19 = a1[5];
        if (v20 >= v19)
        {
          v24 = a4;
          v25 = v7;
          v26 = a6;
          v27 = v10;
          v28 = 0xAAAAAAAAAAAAAAABLL * ((v20 - *v34) >> 1);
          v29 = v28 + 1;
          if (v28 + 1 > 0x2AAAAAAAAAAAAAAALL)
          {
            std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
          }

          v30 = 0xAAAAAAAAAAAAAAABLL * ((v19 - *v34) >> 1);
          if (2 * v30 > v29)
          {
            v29 = 2 * v30;
          }

          if (v30 >= 0x1555555555555555)
          {
            v31 = 0x2AAAAAAAAAAAAAAALL;
          }

          else
          {
            v31 = v29;
          }

          v40 = v34;
          if (v31)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Vector<unsigned short,3ul>>>(v31);
          }

          v32 = 6 * v28;
          __p = 0;
          v37 = v32;
          *v32 = v17.i16[0];
          *(v32 + 2) = v17.i16[2];
          *(v32 + 4) = v18;
          v38 = 6 * v28 + 6;
          v39 = 0;
          std::vector<Phase::Vector<unsigned short,3ul>>::__swap_out_circular_buffer(v34, &__p);
          v21 = a1[4];
          if (__p)
          {
            operator delete(__p);
          }

          v10 = v27;
          a6 = v26;
          v7 = v25;
          a4 = v24;
          v9 = a3;
        }

        else
        {
          *v20 = v17.i16[0];
          v20[1] = v17.i16[2];
          v21 = v20 + 3;
          v20[2] = v18;
        }

        a1[4] = v21;
      }

      else
      {
        __p = vshl_n_s32(v17, 2uLL);
        LODWORD(v37) = 4 * v18;
        v22 = vcnt_s8((v14 & ~(-1 << v12)));
        v22.i16[0] = vaddlv_u8(v22);
        v23 = *(**(v35 + 56) + 16 * *(v35 + 64));
        Phase::Geometry::sAddVoxels(a1, v10, *(v23 + 8) + *(v23 + 32) * (*(v9 + 2) + v22.i32[0]), &__p, v7 + 1, a6);
      }
    }

    ++v12;
  }

  while (v12 != 64);
}

void std::vector<Phase::Vector<unsigned short,3ul>>::push_back[abi:ne200100](void *a1, _WORD *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 1);
    v7 = v6 + 1;
    if (v6 + 1 > 0x2AAAAAAAAAAAAAAALL)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 1);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x1555555555555555)
    {
      v9 = 0x2AAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    __p[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Vector<unsigned short,3ul>>>(v9);
    }

    v10 = 6 * v6;
    __p[0] = 0;
    __p[1] = v10;
    *v10 = *a2;
    *(v10 + 2) = a2[1];
    *(v10 + 4) = a2[2];
    __p[2] = (6 * v6 + 6);
    __p[3] = 0;
    std::vector<Phase::Vector<unsigned short,3ul>>::__swap_out_circular_buffer(a1, __p);
    v5 = a1[1];
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *v3 = *a2;
    v3[1] = a2[1];
    v3[2] = a2[2];
    v5 = v3 + 3;
  }

  a1[1] = v5;
}

void *std::vector<Phase::Vector<unsigned short,3ul>>::__swap_out_circular_buffer(void *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      *v6 = *v5;
      v6[1] = v5[1];
      v6[2] = v5[2];
      v5 += 3;
      v6 += 3;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Vector<unsigned short,3ul>>>(unint64_t a1)
{
  if (a1 < 0x2AAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t Phase::Geometry::ShapeFactory::Create@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *result;
  v8 = *a2;
  v9 = *(*result + 1648);
  if (0xAAAAAAAAAAAAAAABLL * ((*(*result + 1656) - v9) >> 5) <= v8)
  {
    __assert_rtn("GetTypeDef", "GeoShapeTypeRegistry.cpp", 33, "IsValid(inShapeType)");
  }

  v10 = v9 + 96 * v8;
  if (*(v10 + 64))
  {

    return std::function<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Geometry::Shape&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator()(v10 + 40, v7, a2, a3);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }

  return result;
}

uint64_t std::function<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Geometry::Shape&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, a2, a3, &v6);
}

uint64_t Phase::Geometry::ShapeFactory::Create@<X0>(uint64_t *a1@<X0>, unsigned int a2@<W1>, _DWORD *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = *(*a1 + 1648);
  if (0xAAAAAAAAAAAAAAABLL * ((*(*a1 + 1656) - v6) >> 5) <= a2)
  {
    __assert_rtn("GetTypeDef", "GeoShapeTypeRegistry.cpp", 33, "IsValid(inShapeType)");
  }

  v7 = v6 + 96 * a2;
  v8 = *(v7 + 72);
  v9 = *(v7 + 80);
  if (v8 == v9)
  {
LABEL_5:
    v15 = 0;
LABEL_6:
    result = std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](v14);
    *a5 = 0;
    a5[1] = 0;
    return result;
  }

  while (*v8 != *a3)
  {
    v8 += 10;
    if (v8 == v9)
    {
      goto LABEL_5;
    }
  }

  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100](v14, (v8 + 2));
  if (!v15)
  {
    goto LABEL_6;
  }

  std::function<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator()(v14, *a1, a3, a4);
  return std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](v14);
}

void sub_23A404BC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::function<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, a2, a3, &v6);
}

uint64_t std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *Phase::Geometry::ShapeTypeRegistry::CustomizeType(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v4) >> 5) <= a2)
  {
    __assert_rtn("CustomizeType", "GeoShapeTypeRegistry.cpp", 43, "IsValid(inShapeType)");
  }

  return std::function<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator=((v4 + 96 * a2 + 8), a3);
}

{
  v4 = *(a1 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v4) >> 5) <= a2)
  {
    __assert_rtn("CustomizeType", "GeoShapeTypeRegistry.cpp", 54, "IsValid(inShapeType)");
  }

  return std::function<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Geometry::Shape&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator=((v4 + 96 * a2 + 40), a3);
}

void *std::function<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *std::function<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Geometry::Shape&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Geometry::Shape&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Geometry::Shape&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Geometry::Shape&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *Phase::Geometry::ShapeTypeRegistry::CustomizeType(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v4) >> 5) <= a2)
  {
    __assert_rtn("CustomizeType", "GeoShapeTypeRegistry.cpp", 65, "IsValid(inShapeType)");
  }

  v5 = v4 + 96 * a2;
  v6 = *(v5 + 72);
  v7 = *(v5 + 80);
  v8 = (v5 + 72);
  while (1)
  {
    if (v6 == v7)
    {
      v10 = a3;
      std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100](v11, a4);
      std::vector<Phase::Geometry::LoadShapeFunctionTableEntry>::push_back[abi:ne200100](v8, &v10);
      return std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](v11);
    }

    if (*v6 == a3)
    {
      break;
    }

    v6 += 40;
  }

  return std::function<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator=((v6 + 8), a4);
}

void *std::function<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t std::vector<Phase::Geometry::LoadShapeFunctionTableEntry>::push_back[abi:ne200100](uint64_t *a1, _DWORD *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<Phase::Geometry::LoadShapeFunctionTableEntry>::__emplace_back_slow_path<Phase::Geometry::LoadShapeFunctionTableEntry>(a1, a2);
    v4 = result;
  }

  else
  {
    *v3 = *a2;
    v4 = v3 + 10;
    result = std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100]((v3 + 2), (a2 + 2));
  }

  a1[1] = v4;
  return result;
}

void std::vector<Phase::Geometry::ShapeTypeDefinition>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<Phase::Geometry::ShapeTypeDefinition>::__append(a1, v4);
  }

  else if (!v3)
  {
    std::vector<Phase::Geometry::ShapeTypeDefinition>::__base_destruct_at_end[abi:ne200100](a1, *a1 + 96 * a2);
  }
}

uint64_t std::vector<Phase::Geometry::LoadShapeFunctionTableEntry>::__emplace_back_slow_path<Phase::Geometry::LoadShapeFunctionTableEntry>(uint64_t *a1, _DWORD *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<Phase::Geometry::LoadShapeFunctionTableEntry>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v3;
  }

  v16[4] = a1;
  if (v5)
  {
    if (v5 <= 0x666666666666666)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = 40 * v2;
  *(40 * v2) = *a2;
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100](40 * v2 + 8, (a2 + 2));
  v8 = *a1;
  v7 = a1[1];
  v9 = 40 * v2 - (v7 - *a1);
  if (v7 != *a1)
  {
    v10 = 40 * v2 - 8 * ((v7 - *a1) >> 3) + 8;
    v11 = *a1;
    v12 = *a1;
    do
    {
      v13 = *v12;
      v12 += 10;
      *(v10 - 8) = v13;
      v10 = std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100](v10, (v11 + 2)) + 40;
      v11 = v12;
    }

    while (v12 != v7);
    do
    {
      std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100]((v8 + 2));
      v8 += 10;
    }

    while (v8 != v7);
    v8 = *a1;
  }

  *a1 = v9;
  a1[1] = v6 + 40;
  v14 = a1[2];
  a1[2] = 0;
  v16[2] = v8;
  v16[3] = v14;
  v16[0] = v8;
  v16[1] = v8;
  std::__split_buffer<Phase::Geometry::LoadShapeFunctionTableEntry>::~__split_buffer(v16);
  return v6 + 40;
}

uint64_t std::__split_buffer<Phase::Geometry::LoadShapeFunctionTableEntry>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 std::allocator_traits<std::allocator<Phase::Geometry::ShapeTypeDefinition>>::construct[abi:ne200100]<Phase::Geometry::ShapeTypeDefinition,Phase::Geometry::ShapeTypeDefinition,void,0>(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = *a3;
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100]((a2 + 1), a3 + 8);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Geometry::Shape&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100]((a2 + 5), a3 + 40);
  a2[9] = 0;
  a2[10] = 0;
  a2[11] = 0;
  result = *(a3 + 72);
  *(a2 + 9) = result;
  a2[11] = *(a3 + 88);
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  return result;
}

uint64_t std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Geometry::Shape&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::Geometry::ShapeTypeDefinition>,Phase::Geometry::ShapeTypeDefinition*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<Phase::Geometry::ShapeTypeDefinition>>::construct[abi:ne200100]<Phase::Geometry::ShapeTypeDefinition,Phase::Geometry::ShapeTypeDefinition,void,0>(a1, a4, v7);
      v7 += 96;
      a4 = v12 + 12;
      v12 += 12;
    }

    while (v7 != a3);
    v10 = 1;
    do
    {
      std::allocator_traits<std::allocator<Phase::Geometry::ShapeTypeDefinition>>::destroy[abi:ne200100]<Phase::Geometry::ShapeTypeDefinition,void,0>(a1, v5);
      v5 += 96;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Phase::Geometry::ShapeTypeDefinition>,Phase::Geometry::ShapeTypeDefinition*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::allocator_traits<std::allocator<Phase::Geometry::ShapeTypeDefinition>>::destroy[abi:ne200100]<Phase::Geometry::ShapeTypeDefinition,void,0>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 72);
  std::vector<Phase::Geometry::LoadShapeFunctionTableEntry>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Geometry::Shape&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](a2 + 40);
  return std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](a2 + 8);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Phase::Geometry::ShapeTypeDefinition>,Phase::Geometry::ShapeTypeDefinition*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<Phase::Geometry::ShapeTypeDefinition>,Phase::Geometry::ShapeTypeDefinition*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::_AllocatorDestroyRangeReverse<std::allocator<Phase::Geometry::ShapeTypeDefinition>,Phase::Geometry::ShapeTypeDefinition*>::operator()[abi:ne200100](uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 96;
      result = std::allocator_traits<std::allocator<Phase::Geometry::ShapeTypeDefinition>>::destroy[abi:ne200100]<Phase::Geometry::ShapeTypeDefinition,void,0>(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t std::__split_buffer<Phase::Geometry::ShapeTypeDefinition>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<Phase::Geometry::ShapeTypeDefinition>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<Phase::Geometry::ShapeTypeDefinition>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = *(v3 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(v3 + 32);
    *(v3 + 16) = v4 - 96;
    result = std::allocator_traits<std::allocator<Phase::Geometry::ShapeTypeDefinition>>::destroy[abi:ne200100]<Phase::Geometry::ShapeTypeDefinition,void,0>(v5, v4 - 96);
  }

  return result;
}

void std::vector<Phase::Geometry::LoadShapeFunctionTableEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 40;
        std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100]((v4 - 32));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Geometry::Shape&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::vector<Phase::Geometry::ShapeTypeDefinition>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 5) >= a2)
  {
    if (a2)
    {
      v10 = 96 * ((96 * a2 - 96) / 0x60) + 96;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 5);
    v7 = v6 + a2;
    if (v6 + a2 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<Phase::Geometry::LoadShapeFunctionTableEntry>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x155555555555555)
    {
      v9 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v19 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Geometry::DirectivityTypeDefinition>>(a1, v9);
    }

    v16 = 0;
    v17 = 96 * v6;
    v11 = 96 * ((96 * a2 - 96) / 0x60) + 96;
    bzero((96 * v6), v11);
    v18 = 96 * v6 + v11;
    v12 = *(a1 + 8);
    v13 = (96 * v6 + *a1 - v12);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::Geometry::ShapeTypeDefinition>,Phase::Geometry::ShapeTypeDefinition*>(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    *(a1 + 8) = v18;
    *&v18 = v14;
    *(&v18 + 1) = v15;
    v16 = v14;
    v17 = v14;
    std::__split_buffer<Phase::Geometry::ShapeTypeDefinition>::~__split_buffer(&v16);
  }
}

void sub_23A405AFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<Phase::Geometry::ShapeTypeDefinition>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<Phase::Geometry::ShapeTypeDefinition>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = std::allocator_traits<std::allocator<Phase::Geometry::ShapeTypeDefinition>>::destroy[abi:ne200100]<Phase::Geometry::ShapeTypeDefinition,void,0>(v3, i))
  {
    i -= 96;
  }

  *(v3 + 8) = a2;
  return result;
}

void *std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_23A405DBC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Geometry::Shape&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_23A406020(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_23A406284(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t Phase::Geometry::InitMaterials(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = Phase::Geometry::DataStreamReference<Phase::Handle64>::Resize(a1 + 144, a2);
  v6 = *(**(a1 + 144) + 16 * *(a1 + 152));
  v7 = v6[3];
  if (v7)
  {
    v8 = v6[1];
    v9 = v6[4];
    v10 = (v7 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v11 = vdupq_n_s64(v7 - 1);
    v12 = xmmword_23A554B70;
    v13 = vdupq_n_s64(2uLL);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v11, v12));
      if (v14.i8[0])
      {
        *v8 = a3;
      }

      if (v14.i8[4])
      {
        *(v8 + v9) = a3;
      }

      v12 = vaddq_s64(v12, v13);
      v8 = (v8 + 2 * v9);
      v10 -= 2;
    }

    while (v10);
  }

  return result;
}

uint64_t Phase::Geometry::DataStreamReference<Phase::Handle64>::Resize(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(**result + 16 * *(result + 8));
  v5 = *(v4 + 24);
  if (v5 == a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v4 + 8);
    *(v4 + 8) = 0;
    if (a2)
    {
      Phase::Geometry::DataStream::Alloc(*(v4 + 16), *(v4 + 32) * a2, &v23);
      v7 = v23;
      v23 = 0;
      result = *(v4 + 8);
      *(v4 + 8) = v7;
      if (result)
      {
        MEMORY[0x23EE86470](result, 0x1000C8077774924);
        result = v23;
        v23 = 0;
        if (result)
        {
          result = MEMORY[0x23EE86470](result, 0x1000C8077774924);
        }
      }
    }

    *(v4 + 24) = a2;
  }

  if (v5 >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    v9 = *(v4 + 8);
    v10 = v6;
    v11 = v8;
    do
    {
      v12 = *v10++;
      *v9++ = v12;
      --v11;
    }

    while (v11);
  }

  if (v5 < a2)
  {
    v13 = 0;
    v14 = *(**v3 + 16 * *(v3 + 8));
    v15 = *(v14 + 8);
    v16 = *(v14 + 32);
    v17 = vdupq_n_s64(a2 - v8 - 1);
    v18 = (a2 - v8 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v19 = v16 * v8;
    v20 = 2 * v16;
    v21 = v16 + v19;
    do
    {
      v22 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(vdupq_n_s64(v13), xmmword_23A554B70)));
      if (v22.i8[0])
      {
        *(v15 + v19) = 0;
      }

      if (v22.i8[4])
      {
        *(v15 + v21) = 0;
      }

      v13 += 2;
      v15 += v20;
    }

    while (v18 != v13);
  }

  if (v6)
  {
    return MEMORY[0x23EE86470](v6, 0x1000C8077774924);
  }

  return result;
}

void sub_23A406554(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x23EE86470](v1, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **Phase::Geometry::SetMaterialsFromOptionalMaterialList(uint64_t **result, void *a2)
{
  if (a2)
  {
    v2 = result;
    result = Phase::UnorderedStringMap<Phase::OptionsValue>::Find(a2, &Phase::Geometry::ShapeOptions::MaterialList);
    if (result)
    {
      if (*(result + 24) == 10)
      {
        v3 = result[8];
        v4 = result[7];
        if (v3 != v4)
        {
          v5 = *(*v2[18] + 16 * v2[19]);
          v6 = v5[3];
          if (v6)
          {
            v7 = v5[1];
            v8 = v5[4];
            v9 = result[7];
            do
            {
              v10 = *v9++;
              *v7 = v10;
              if (v3 == v9)
              {
                v9 = v4;
              }

              v7 = (v7 + v8);
              --v6;
            }

            while (v6);
          }
        }
      }
    }
  }

  return result;
}

void Phase::Geometry::ForcedCopyTagsIncludingMaterialListFromOptions(std::vector<unsigned int>::size_type __n@<X1>, void *a2@<X0>, std::vector<unsigned int> *a3@<X8>)
{
  a3->__begin_ = 0;
  a3->__end_ = 0;
  a3->__end_cap_.__value_ = 0;
  if (!a2)
  {
    std::vector<unsigned int>::reserve(a3, __n);
    return;
  }

  v6 = Phase::UnorderedStringMap<Phase::OptionsValue>::Find(a2, &Phase::Geometry::ShapeOptions::MaterialList);
  v7 = v6 && *(v6 + 24) == 10;
  v8 = Phase::UnorderedStringMap<Phase::OptionsValue>::Find(a2, &Phase::Geometry::ShapeOptions::ForcedCopyTags);
  v9 = v8;
  if (!v8)
  {
    goto LABEL_11;
  }

  if (*(v8 + 24) != 9)
  {
    v9 = 0;
LABEL_11:
    v11 = 0;
    v10 = 1;
    goto LABEL_12;
  }

  v10 = 0;
  v9 = v8 + 7;
  v11 = (v8[8] - v8[7]) >> 2;
LABEL_12:
  std::vector<unsigned int>::reserve(a3, __n + v7 + v11);
  if (v7)
  {
    end = a3->__end_;
    value = a3->__end_cap_.__value_;
    if (end >= value)
    {
      begin = a3->__begin_;
      v16 = end - a3->__begin_;
      v17 = v16 >> 2;
      v18 = (v16 >> 2) + 1;
      if (v18 >> 62)
      {
        std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
      }

      v19 = value - begin;
      if (v19 >> 1 > v18)
      {
        v18 = v19 >> 1;
      }

      v20 = v19 >= 0x7FFFFFFFFFFFFFFCLL;
      v21 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v20)
      {
        v21 = v18;
      }

      if (v21)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a3, v21);
      }

      *(4 * v17) = 1;
      v14 = 4 * v17 + 4;
      memcpy(0, begin, v16);
      v22 = a3->__begin_;
      a3->__begin_ = 0;
      a3->__end_ = v14;
      a3->__end_cap_.__value_ = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *end = 1;
      v14 = (end + 4);
    }

    a3->__end_ = v14;
  }

  if ((v10 & 1) == 0)
  {
    v23 = *v9;
    v24 = v9[1];
    if (*v9 != v24)
    {
      v25 = a3->__end_;
      do
      {
        v26 = a3->__end_cap_.__value_;
        if (v25 >= v26)
        {
          v27 = a3->__begin_;
          v28 = v25 - a3->__begin_;
          v29 = v28 >> 2;
          v30 = (v28 >> 2) + 1;
          if (v30 >> 62)
          {
            std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
          }

          v31 = v26 - v27;
          if (v31 >> 1 > v30)
          {
            v30 = v31 >> 1;
          }

          if (v31 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v32 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v32 = v30;
          }

          if (v32)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a3, v32);
          }

          *(4 * v29) = *v23;
          v25 = (4 * v29 + 4);
          memcpy(0, v27, v28);
          v33 = a3->__begin_;
          a3->__begin_ = 0;
          a3->__end_ = v25;
          a3->__end_cap_.__value_ = 0;
          if (v33)
          {
            operator delete(v33);
          }
        }

        else
        {
          *v25 = *v23;
          v25 += 4;
        }

        a3->__end_ = v25;
        v23 = (v23 + 4);
      }

      while (v23 != v24);
    }
  }
}

void sub_23A406888(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::reserve(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, __n);
    }

    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t Phase::Geometry::GetNormals(int *a1, unsigned int *a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v6 = *a1;
  if (*a1 == 3)
  {
    Phase::Geometry::GetNormals(**(a1 + 15), a2, a3, a4, a5, a6);
    return 1;
  }

  if (v6 == 2)
  {
    Phase::Geometry::GetNormals(**(a1 + 15), a2, a3, a4, a5, a6);
    return 1;
  }

  if (v6 == 1)
  {
    Phase::Geometry::GetNormals(**(a1 + 15), a2, a3, a4, a5, a6);
    return 1;
  }

  return 0;
}

uint64_t Phase::Geometry::GetMaterials(int *a1, unsigned int *a2, int a3, void *a4, int a5, uint64_t a6)
{
  v6 = *a1;
  if (*a1 == 3)
  {
    Phase::Geometry::GetMaterials(**(a1 + 15), a2, a3, a4, a5, a6);
    return 1;
  }

  if (v6 == 2)
  {
    Phase::Geometry::GetMaterials(**(a1 + 15), a2, a3, a4, a5, a6);
    return 1;
  }

  if (v6 == 1)
  {
    Phase::Geometry::GetMaterials(**(a1 + 15), a2, a3, a4, a5, a6);
    return 1;
  }

  return 0;
}

void Phase::Geometry::CreateSimpleUniformMaterial(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  *&v3 = "MaterialDataMapSize";
  *(&v3 + 1) = 19;
  if (a2)
  {
    v2 = Phase::UnorderedStringMap<Phase::OptionsValue>::Find(a2, &v3);
    if (v2)
    {
      if (*(v2 + 24) == 1 && *(v2 + 14) <= 0)
      {
        std::terminate();
      }
    }
  }

  operator new();
}

void Phase::Geometry::CreateSimpleUniformMaterialFromMaterial(uint64_t a1, _DWORD *a2)
{
  v2 = *MEMORY[0x277D85DE8];
  if (*a2 == 1)
  {
    operator new();
  }

  std::terminate();
}

void std::__shared_ptr_emplace<Phase::Geometry::Material>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D346A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

void std::__shared_ptr_emplace<Phase::Geometry::Material>::__on_zero_shared(uint64_t a1)
{
  v2 = (a1 + 64);
  std::vector<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (a1 + 40);
  std::vector<std::shared_ptr<Phase::Geometry::MpsCpuScene>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

uint64_t std::__function::__func<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>> Phase::Geometry::MakeDataMapPtr<Phase::Geometry::SimpleUniformMaterial>(Phase::Geometry::SimpleUniformMaterial *)::{lambda(void *)#1},std::allocator<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>> Phase::Geometry::MakeDataMapPtr<Phase::Geometry::SimpleUniformMaterial>(Phase::Geometry::SimpleUniformMaterial *)::{lambda(void *)#1}>,void ()(void *)>::operator()(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void Phase::Geometry::CreateSimpleUniformMedium(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  *&v3 = "MediumDataMapSize";
  *(&v3 + 1) = 17;
  if (a2)
  {
    v2 = Phase::UnorderedStringMap<Phase::OptionsValue>::Find(a2, &v3);
    if (v2)
    {
      if (*(v2 + 24) == 1 && *(v2 + 14) <= 0)
      {
        std::terminate();
      }
    }
  }

  operator new();
}

void Phase::Geometry::CreateSimpleUniformMediumFromMedium(uint64_t a1, _DWORD *a2)
{
  v2 = *MEMORY[0x277D85DE8];
  if (*a2 == 1)
  {
    operator new();
  }

  std::terminate();
}

void std::__shared_ptr_emplace<Phase::Geometry::Medium>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D34728;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

void std::__shared_ptr_emplace<Phase::Geometry::Medium>::__on_zero_shared(uint64_t a1)
{
  v2 = (a1 + 64);
  std::vector<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (a1 + 40);
  std::vector<std::shared_ptr<Phase::Geometry::MpsCpuScene>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

uint64_t std::__function::__func<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>> Phase::Geometry::MakeDataMapPtr<Phase::Geometry::SimpleUniformMedium>(Phase::Geometry::SimpleUniformMedium *)::{lambda(void *)#1},std::allocator<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>> Phase::Geometry::MakeDataMapPtr<Phase::Geometry::SimpleUniformMedium>(Phase::Geometry::SimpleUniformMedium *)::{lambda(void *)#1}>,void ()(void *)>::operator()(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    JUMPOUT(0x23EE864A0);
  }

  return result;
}

uint64_t Phase::Geometry::GenerateSourcePoints@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, float32x2_t *a3@<X2>, _OWORD *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v43[4] = *MEMORY[0x277D85DE8];
  v8 = a2 + 48;
  if (*a2 == 3 && *(a2 + 128) != *(a2 + 120) && (*v12.i8 = Phase::Inverse<float>(a3 + 6, v31), Phase::operator*<float>(v31, v8, v30, v12, v13, v14), v15 = **(a2 + 120), *(a1 + 160) > v15) && (v16 = *(a1 + 144) + 24 * v15, *(v16 + 20) == HIDWORD(v15)) && (v17 = *v16) != 0 && *v17 == 1)
  {
    v18 = **(v17 + 120);
    v19 = a4[1];
    v29[0] = *a4;
    v29[1] = v19;
    if (*a4 <= 0)
    {
      LODWORD(v29[0]) = *(a2 + 152);
    }

    Phase::Geometry::CreatePointCloudLoD(a1, v18, v30, v29, a5, &v39);
    if (v41)
    {
      v20 = v39;
      v39 = 0;
      *a6 = v20;
      std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](a6 + 8, v40);
      *(a6 + 40) = v41;
      *(a6 + 48) = 1;
    }

    else
    {
      v25 = *(a1 + 1072);
      v35 = 1;
      v34 = 4;
      v33[0] = v25;
      v33[1] = &v35;
      v33[2] = &v34;
      v32 = v25;
      Phase::details::AllocArray<Phase::Vector<float,3ul>,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::Vector<float,3ul>*)#1} const&>(1, v33, &v32, &v42);
      v26 = v42;
      v42 = 0;
      v36 = v26;
      std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v37, v43);
      v38 = 1;
      std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v42);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v43);
      v27 = (*(v17 + 32) + *(v17 + 44)) * 0.5;
      v28 = v36;
      *v36 = vmul_f32(vadd_f32(*(v17 + 24), *(v17 + 36)), 0x3F0000003F000000);
      v28[1].f32[0] = v27;
      v36 = 0;
      *a6 = v28;
      std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](a6 + 8, v37);
      *(a6 + 40) = v38;
      *(a6 + 48) = 0;
      std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v36);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v37);
    }

    std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v39);
  }

  else
  {
    v21 = *(a1 + 1072);
    v42 = 1;
    v31[0] = 4;
    v39 = v21;
    v40[0] = &v42;
    v40[1] = v31;
    v30[0].i64[0] = v21;
    Phase::details::AllocArray<Phase::Vector<float,3ul>,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::Vector<float,3ul>*)#1} const&>(1, &v39, v30, &v36);
    v22 = v36;
    v36 = 0;
    v39 = v22;
    std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v40, v37);
    v41 = 1;
    std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v36);
    std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v37);
    v23 = v39;
    *v39 = 0;
    v23[1].i32[0] = 0;
    v39 = 0;
    *a6 = v23;
    std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](a6 + 8, v40);
    *(a6 + 40) = v41;
    *(a6 + 48) = 0;
    std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v39);
  }

  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v40);
}

void sub_23A407954(_Unwind_Exception *a1)
{
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100]((v1 - 160));
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v1 - 152);
  _Unwind_Resume(a1);
}

void Phase::Geometry::CreateSphericalCapDirectivityFromDirectivity(uint64_t a1, _DWORD *a2)
{
  v2 = *MEMORY[0x277D85DE8];
  if (*a2 == 3)
  {
    operator new();
  }

  __assert_rtn("CreateSphericalCapDirectivityFromDirectivity", "GeoSphericalCapDirectivity.cpp", 42, "inDirectivity.mType == DefaultDirectivityType::SphericalCap");
}

void std::__function::__func<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>> Phase::Geometry::MakeDataMapPtr<Phase::Geometry::SphericalCapDirectivity>(Phase::Geometry::SphericalCapDirectivity *)::{lambda(void *)#1},std::allocator<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>> Phase::Geometry::MakeDataMapPtr<Phase::Geometry::SphericalCapDirectivity>(Phase::Geometry::SphericalCapDirectivity *)::{lambda(void *)#1}>,void ()(void *)>::operator()(uint64_t a1, uint64_t ***a2)
{
  v2 = *a2;
  if (*a2)
  {
    std::unique_ptr<Phase::Zeppelin::HorizontalSliceDatabase>::~unique_ptr[abi:ne200100](v2 + 6);
    std::unique_ptr<Phase::Zeppelin::HorizontalSliceDatabase>::~unique_ptr[abi:ne200100](v2 + 5);
    std::unique_ptr<Phase::Zeppelin::HorizontalSliceDatabase>::~unique_ptr[abi:ne200100](v2 + 4);

    JUMPOUT(0x23EE864A0);
  }
}

uint64_t **std::unique_ptr<Phase::Zeppelin::HorizontalSliceDatabase>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      v4 = Phase::Zeppelin::SphereSampling::NDimEquiangularHalfCircleData<float,double>::~NDimEquiangularHalfCircleData(v3);
      MEMORY[0x23EE864A0](v4, 0x1080C4034BCA2CCLL);
    }

    MEMORY[0x23EE864A0](v2, 0x20C4093837F09);
  }

  return a1;
}

uint64_t Phase::Geometry::SystemSetup::InitDefaultDirectivities(Phase::Geometry::SystemSetup *this, Phase::Geometry::System *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = this + 656;
  std::vector<Phase::Geometry::DirectivityTypeDefinition>::resize(this + 82, 4uLL);
  v4 = *(this + 82);
  *v4 = 0;
  v4[12] = 0x100000001;
  v6 = &unk_284D34820;
  v7 = Phase::Geometry::CreateCardioidDirectivity;
  v8 = &v6;
  Phase::Geometry::DirectivityTypeRegistry::CustomizeType(this + 648, 1u, &v6);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](&v6);
  v6 = &unk_284D34868;
  v7 = Phase::Geometry::CreateCardioidDirectivityFromDirectivity;
  v8 = &v6;
  Phase::Geometry::DirectivityTypeRegistry::CustomizeType(this + 648, 1u, &v6);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::Geometry::Directivity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](&v6);
  *(*v3 + 192) = 0x200000002;
  v6 = &unk_284D34820;
  v7 = Phase::Geometry::CreateConeDirectivity;
  v8 = &v6;
  Phase::Geometry::DirectivityTypeRegistry::CustomizeType(this + 648, 2u, &v6);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](&v6);
  v6 = &unk_284D34868;
  v7 = Phase::Geometry::CreateConeDirectivityFromDirectivity;
  v8 = &v6;
  Phase::Geometry::DirectivityTypeRegistry::CustomizeType(this + 648, 2u, &v6);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::Geometry::Directivity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](&v6);
  *(*v3 + 288) = 0x300000003;
  v6 = &unk_284D34820;
  v7 = Phase::Geometry::CreateSphericalCapDirectivity;
  v8 = &v6;
  Phase::Geometry::DirectivityTypeRegistry::CustomizeType(this + 648, 3u, &v6);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](&v6);
  v6 = &unk_284D34868;
  v7 = Phase::Geometry::CreateSphericalCapDirectivityFromDirectivity;
  v8 = &v6;
  Phase::Geometry::DirectivityTypeRegistry::CustomizeType(this + 648, 3u, &v6);
  return std::__function::__value_func<std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::Geometry::Directivity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](&v6);
}

void sub_23A408094(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::Geometry::Directivity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t Phase::Geometry::SystemSetup::InitDefaultDistanceModels(Phase::Geometry::SystemSetup *this, Phase::Geometry::System *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = this + 904;
  std::vector<Phase::Geometry::DistanceModelTypeDefinition>::resize(this + 113, 3uLL);
  v4 = *(this + 113);
  *v4 = 0;
  v4[12] = 0x100000001;
  v6 = &unk_284D348B0;
  v7 = Phase::Geometry::CreateGeometricSpreadingDistanceModel;
  v8 = &v6;
  Phase::Geometry::DistanceModelTypeRegistry::CustomizeType(this + 896, 1u, &v6);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::DistanceModel> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](&v6);
  v6 = &unk_284D348F8;
  v7 = Phase::Geometry::CreateGeometricSpreadingDistanceModelFromDistanceModel;
  v8 = &v6;
  Phase::Geometry::DistanceModelTypeRegistry::CustomizeType(this + 896, 1u, &v6);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::DistanceModel> ()(Phase::Geometry::System &,Phase::Geometry::DistanceModel const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](&v6);
  *(*v3 + 192) = 0x200000002;
  v6 = &unk_284D348B0;
  v7 = Phase::Geometry::CreateEnvelopeDistanceModel;
  v8 = &v6;
  Phase::Geometry::DistanceModelTypeRegistry::CustomizeType(this + 896, 2u, &v6);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::DistanceModel> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](&v6);
  v6 = &unk_284D348F8;
  v7 = Phase::Geometry::CreateEnvelopeDistanceModelFromDistanceModel;
  v8 = &v6;
  Phase::Geometry::DistanceModelTypeRegistry::CustomizeType(this + 896, 2u, &v6);
  return std::__function::__value_func<std::shared_ptr<Phase::Geometry::DistanceModel> ()(Phase::Geometry::System &,Phase::Geometry::DistanceModel const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](&v6);
}

void sub_23A408280(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::DistanceModel> ()(Phase::Geometry::System &,Phase::Geometry::DistanceModel const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t Phase::Geometry::SystemSetup::InitDefaultMediums(Phase::Geometry::SystemSetup *this, Phase::Geometry::System *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  std::vector<Phase::Geometry::MediumTypeDefinition>::resize(this + 144, 2uLL);
  v3 = *(this + 144);
  *v3 = 0;
  v3[12] = 0x100000001;
  v5 = &unk_284D34940;
  v6 = Phase::Geometry::CreateSimpleUniformMedium;
  v7 = &v5;
  Phase::Geometry::MediumTypeRegistry::CustomizeType(this + 1144, 1u, &v5);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Medium> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](&v5);
  v5 = &unk_284D34988;
  v6 = Phase::Geometry::CreateSimpleUniformMediumFromMedium;
  v7 = &v5;
  Phase::Geometry::MediumTypeRegistry::CustomizeType(this + 1144, 1u, &v5);
  return std::__function::__value_func<std::shared_ptr<Phase::Geometry::Medium> ()(Phase::Geometry::System &,Phase::Geometry::Medium const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](&v5);
}

void sub_23A4083B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Medium> ()(Phase::Geometry::System &,Phase::Geometry::Medium const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t Phase::Geometry::SystemSetup::InitDefaultMaterials(Phase::Geometry::SystemSetup *this, Phase::Geometry::System *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  std::vector<Phase::Geometry::MaterialTypeDefinition>::resize(this + 175, 2uLL);
  v3 = *(this + 175);
  *v3 = 0;
  v3[12] = 0x100000001;
  v5 = &unk_284D349D0;
  v6 = Phase::Geometry::CreateSimpleUniformMaterial;
  v7 = &v5;
  Phase::Geometry::MaterialTypeRegistry::CustomizeType(this + 1392, 1u, &v5);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Material> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](&v5);
  v5 = &unk_284D34A18;
  v6 = Phase::Geometry::CreateSimpleUniformMaterialFromMaterial;
  v7 = &v5;
  Phase::Geometry::MaterialTypeRegistry::CustomizeType(this + 1392, 1u, &v5);
  return std::__function::__value_func<std::shared_ptr<Phase::Geometry::Material> ()(Phase::Geometry::System &,Phase::Geometry::Material const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](&v5);
}

void sub_23A4084E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Material> ()(Phase::Geometry::System &,Phase::Geometry::Material const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t Phase::Geometry::SystemSetup::InitDefaultShapes(Phase::Geometry::SystemSetup *this, Phase::Geometry::System *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = this + 1648;
  std::vector<Phase::Geometry::ShapeTypeDefinition>::resize(this + 206, 4uLL);
  v4 = *(this + 206);
  *v4 = 0;
  v4[12] = 0x100000001;
  v6 = &unk_284D34A60;
  v7 = Phase::Geometry::CreateMesh;
  v8 = &v6;
  Phase::Geometry::ShapeTypeRegistry::CustomizeType(this + 1640, 1u, &v6);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](&v6);
  v6 = &unk_284D34AA8;
  v7 = Phase::Geometry::CreateMeshFromShape;
  v8 = &v6;
  Phase::Geometry::ShapeTypeRegistry::CustomizeType(this + 1640, 1u, &v6);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Geometry::Shape&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](&v6);
  v6 = &unk_284D34AF0;
  v7 = Phase::Geometry::CreateMeshFromMdlMesh;
  v8 = &v6;
  Phase::Geometry::ShapeTypeRegistry::CustomizeType(this + 1640, 1u, 1, &v6);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](&v6);
  *(*v3 + 192) = 0x200000002;
  v6 = &unk_284D34A60;
  v7 = Phase::Geometry::CreateVoxelTree;
  v8 = &v6;
  Phase::Geometry::ShapeTypeRegistry::CustomizeType(this + 1640, 2u, &v6);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](&v6);
  v6 = &unk_284D34AA8;
  v7 = Phase::Geometry::CreateVoxelTreeFromShape;
  v8 = &v6;
  Phase::Geometry::ShapeTypeRegistry::CustomizeType(this + 1640, 2u, &v6);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Geometry::Shape&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](&v6);
  v6 = &unk_284D34AF0;
  v7 = Phase::Geometry::CreateVoxelTreeFromMdlMesh;
  v8 = &v6;
  Phase::Geometry::ShapeTypeRegistry::CustomizeType(this + 1640, 2u, 1, &v6);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](&v6);
  *(*v3 + 288) = 0x300000003;
  v6 = &unk_284D34A60;
  v7 = Phase::Geometry::CreateMpsMesh;
  v8 = &v6;
  Phase::Geometry::ShapeTypeRegistry::CustomizeType(this + 1640, 3u, &v6);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](&v6);
  v6 = &unk_284D34AA8;
  v7 = Phase::Geometry::CreateMpsMeshFromShape;
  v8 = &v6;
  Phase::Geometry::ShapeTypeRegistry::CustomizeType(this + 1640, 3u, &v6);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Geometry::Shape&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](&v6);
  v6 = &unk_284D34AF0;
  v7 = Phase::Geometry::CreateMpsMeshFromMdlMesh;
  v8 = &v6;
  Phase::Geometry::ShapeTypeRegistry::CustomizeType(this + 1640, 3u, 1, &v6);
  return std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](&v6);
}

void sub_23A408850(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t Phase::Geometry::SystemSetup::InitDefaultSceneQueries(Phase::Geometry::SystemSetup *this, Phase::Geometry::System *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = this + 2728;
  std::vector<Phase::Geometry::SceneQueryTypeDefinition>::resize(this + 341, 5uLL);
  Phase::Geometry::SceneQueryTypeRegistry::SetTestShapeTableEntryCount(this + 340, 0xAAAAAAAAAAAAAAABLL * ((*(this + 207) - *(this + 206)) >> 5));
  v4 = *(this + 341);
  *v4 = 0;
  v4[19] = 0x100000001;
  v9 = &unk_284D34B38;
  v10 = Phase::Geometry::IterateSceneQueryBatch;
  v11 = &v9;
  v6 = &unk_284D34B38;
  v7 = Phase::Geometry::IterateSceneQueryBatchAsync;
  v8 = &v6;
  Phase::Geometry::SceneQueryTypeRegistry::CustomizeType(this + 2720, 1u, &v9, &v6);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::~__value_func[abi:ne200100](&v6);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::~__value_func[abi:ne200100](&v9);
  v9 = &unk_284D34B80;
  v10 = Phase::Geometry::SingleHitRaycastVsScene;
  v11 = &v9;
  Phase::Geometry::SceneQueryTypeRegistry::CustomizeType(this + 2720, 1u, &v9);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>> const&,BOOL)>::~__value_func[abi:ne200100](&v9);
  v9 = &unk_284D34BC8;
  v10 = Phase::Geometry::SingleHitRaycastVsMesh;
  v11 = &v9;
  Phase::Geometry::SceneQueryTypeRegistry::CustomizeType(this + 340, 1u, 1u, &v9);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>::~__value_func[abi:ne200100](&v9);
  v9 = &unk_284D34BC8;
  v10 = Phase::Geometry::SingleHitRaycastVsVoxelTree;
  v11 = &v9;
  Phase::Geometry::SceneQueryTypeRegistry::CustomizeType(this + 340, 1u, 2u, &v9);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>::~__value_func[abi:ne200100](&v9);
  v9 = &unk_284D34C10;
  v10 = Phase::Geometry::RunSingleHitVsMpsScene;
  v11 = &v9;
  Phase::Geometry::SceneQueryTypeRegistry::CustomizeType(this + 340, 1u, 3u, &v9);
  std::__function::__value_func<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>::~__value_func[abi:ne200100](&v9);
  *(*v3 + 304) = 0x200000002;
  v9 = &unk_284D34B38;
  v10 = Phase::Geometry::IterateSceneQueryBatch;
  v11 = &v9;
  v6 = &unk_284D34B38;
  v7 = Phase::Geometry::IterateSceneQueryBatchAsync;
  v8 = &v6;
  Phase::Geometry::SceneQueryTypeRegistry::CustomizeType(this + 2720, 2u, &v9, &v6);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::~__value_func[abi:ne200100](&v6);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::~__value_func[abi:ne200100](&v9);
  v9 = &unk_284D34B80;
  v10 = Phase::Geometry::MultiHitRaycastVsScene;
  v11 = &v9;
  Phase::Geometry::SceneQueryTypeRegistry::CustomizeType(this + 2720, 2u, &v9);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>> const&,BOOL)>::~__value_func[abi:ne200100](&v9);
  v9 = &unk_284D34BC8;
  v10 = Phase::Geometry::MultiHitRaycastVsMesh;
  v11 = &v9;
  Phase::Geometry::SceneQueryTypeRegistry::CustomizeType(this + 340, 2u, 1u, &v9);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>::~__value_func[abi:ne200100](&v9);
  v9 = &unk_284D34BC8;
  v10 = Phase::Geometry::MultiHitRaycastVsVoxelTree;
  v11 = &v9;
  Phase::Geometry::SceneQueryTypeRegistry::CustomizeType(this + 340, 2u, 2u, &v9);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>::~__value_func[abi:ne200100](&v9);
  *(*v3 + 456) = 0x300000003;
  v9 = &unk_284D34B38;
  v10 = Phase::Geometry::IterateSceneQueryBatch;
  v11 = &v9;
  v6 = &unk_284D34B38;
  v7 = Phase::Geometry::IterateSceneQueryBatchAsync;
  v8 = &v6;
  Phase::Geometry::SceneQueryTypeRegistry::CustomizeType(this + 2720, 3u, &v9, &v6);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::~__value_func[abi:ne200100](&v6);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::~__value_func[abi:ne200100](&v9);
  v9 = &unk_284D34B80;
  v10 = Phase::Geometry::SingleHitRaycastVsSceneV2;
  v11 = &v9;
  Phase::Geometry::SceneQueryTypeRegistry::CustomizeType(this + 2720, 3u, &v9);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>> const&,BOOL)>::~__value_func[abi:ne200100](&v9);
  v9 = &unk_284D34BC8;
  v10 = Phase::Geometry::SingleHitRaycastVsMeshV2;
  v11 = &v9;
  Phase::Geometry::SceneQueryTypeRegistry::CustomizeType(this + 340, 3u, 1u, &v9);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>::~__value_func[abi:ne200100](&v9);
  v9 = &unk_284D34BC8;
  v10 = Phase::Geometry::SingleHitRaycastVsVoxelTreeV2;
  v11 = &v9;
  Phase::Geometry::SceneQueryTypeRegistry::CustomizeType(this + 340, 3u, 2u, &v9);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>::~__value_func[abi:ne200100](&v9);
  v9 = &unk_284D34C10;
  v10 = Phase::Geometry::RunSingleHitVsMpsSceneV2;
  v11 = &v9;
  Phase::Geometry::SceneQueryTypeRegistry::CustomizeType(this + 340, 3u, 3u, &v9);
  std::__function::__value_func<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>::~__value_func[abi:ne200100](&v9);
  *(*v3 + 608) = 0x400000004;
  v9 = &unk_284D34B38;
  v10 = Phase::Geometry::IterateSceneQueryBatch;
  v11 = &v9;
  v6 = &unk_284D34B38;
  v7 = Phase::Geometry::IterateSceneQueryBatchAsync;
  v8 = &v6;
  Phase::Geometry::SceneQueryTypeRegistry::CustomizeType(this + 2720, 4u, &v9, &v6);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::~__value_func[abi:ne200100](&v6);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::~__value_func[abi:ne200100](&v9);
  v9 = &unk_284D34B80;
  v10 = Phase::Geometry::MultiHitRaycastVsSceneV2;
  v11 = &v9;
  Phase::Geometry::SceneQueryTypeRegistry::CustomizeType(this + 2720, 4u, &v9);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>> const&,BOOL)>::~__value_func[abi:ne200100](&v9);
  v9 = &unk_284D34BC8;
  v10 = Phase::Geometry::MultiHitRaycastVsMeshV2;
  v11 = &v9;
  Phase::Geometry::SceneQueryTypeRegistry::CustomizeType(this + 340, 4u, 1u, &v9);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>::~__value_func[abi:ne200100](&v9);
  v9 = &unk_284D34BC8;
  v10 = Phase::Geometry::MultiHitRaycastVsVoxelTreeV2;
  v11 = &v9;
  Phase::Geometry::SceneQueryTypeRegistry::CustomizeType(this + 340, 4u, 2u, &v9);
  return std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>::~__value_func[abi:ne200100](&v9);
}

void sub_23A408FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23A4090BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *Phase::Geometry::System::ProcessReleaseRequestsUpTo(uint64_t *this, unint64_t a2)
{
  v3 = this;
  v4 = this[397];
  if (v4)
  {
    v5 = this + 397;
    do
    {
      if (v4[1] >= a2)
      {
        v5 = v4 + 2;
      }

      else
      {
        Phase::details::SharedSlotMap<Phase::Geometry::Material,Phase::Handle64>::Release((v3 + 147), *v4);
        v12 = v4[2];
        v6 = v12;
        v4[2] = 0;
        v7 = *v5;
        *v5 = v6;
        v12 = v7;
        std::unique_ptr<Phase::Geometry::System::ReleaseRequest>::reset[abi:ne200100](&v12, 0);
        this = std::unique_ptr<Phase::Geometry::System::ReleaseRequest>::reset[abi:ne200100](&v12, 0);
      }

      v4 = *v5;
    }

    while (*v5);
  }

  v8 = v3[398];
  if (v8)
  {
    v9 = v3 + 398;
    do
    {
      if (v8[1] >= a2)
      {
        v9 = v8 + 2;
      }

      else
      {
        Phase::details::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64>::UnblockSlot((v3 + 178), *v8);
        v12 = v8[2];
        v10 = v12;
        v8[2] = 0;
        v11 = *v9;
        *v9 = v10;
        v12 = v11;
        std::unique_ptr<Phase::Geometry::System::ReleaseRequest>::reset[abi:ne200100](&v12, 0);
        this = std::unique_ptr<Phase::Geometry::System::ReleaseRequest>::reset[abi:ne200100](&v12, 0);
      }

      v8 = *v9;
    }

    while (*v9);
  }

  return this;
}

void Phase::Geometry::System::BuildCurrentState(Phase::Geometry::System *this)
{
  *(this + 396) = pthread_self();
  ++*(this + 357);
  Phase::Geometry::SceneState::Update(this + 358);
  Phase::Geometry::System::ProcessReleaseRequestsUpTo(this, *(this + 381));
  _ZNSt3__115allocate_sharedB8ne200100IN5Phase8Geometry11SystemStateENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_23A409368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void Phase::DataMessengerSPSC<std::shared_ptr<Phase::Geometry::SystemState>>::SendNewDataToObservers(void *a1, uint64_t *a2)
{
  v2 = a1[1] - *a1;
  if (v2)
  {
    v5 = 0;
    v6 = v2 >> 4;
    while (1)
    {
      v7 = *a1 + 16 * v5;
      v8 = *(v7 + 8);
      if (!v8)
      {
        break;
      }

      v9 = std::__shared_weak_count::lock(v8);
      if (!v9)
      {
        goto LABEL_17;
      }

      v10 = *v7;
      if (!v10)
      {
        goto LABEL_17;
      }

      v11 = v10[1];
      if (!v11)
      {
        __assert_rtn("SendNewData", "DataObserverSPSC.hpp", 80, "nullptr != pNewMessage");
      }

      v10[1] = v11[2];
      v11[2] = 0;
      v13 = *a2;
      v12 = a2[1];
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      v14 = v11[1];
      *v11 = v13;
      v11[1] = v12;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      v15 = atomic_exchange(v10, v11);
      if (v15)
      {
        v16 = *(v15 + 8);
        *v15 = 0;
        *(v15 + 8) = 0;
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        *(v15 + 24) = 0;
        *(v15 + 16) = v10[1];
        v10[1] = v15;
      }

      ++v5;
LABEL_23:
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
LABEL_24:
      if (v5 >= v6)
      {
        return;
      }
    }

    v9 = 0;
LABEL_17:
    if (v5 + 1 < v6)
    {
      v17 = a1[1];
      v18 = *a1 + 16 * v5;
      v19 = *(v17 - 16);
      *(v17 - 16) = 0;
      *(v17 - 8) = 0;
      v20 = *(v18 + 8);
      *v18 = v19;
      if (v20)
      {
        std::__shared_weak_count::__release_weak(v20);
      }
    }

    v21 = a1[1];
    v22 = *(v21 - 8);
    if (v22)
    {
      std::__shared_weak_count::__release_weak(v22);
    }

    a1[1] = v21 - 16;
    --v6;
    if (!v9)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }
}

Phase::Logger *Phase::Geometry::System::GetCurrentState@<X0>(Phase::Logger **this@<X0>, void *a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  result = pthread_self();
  if (this[396] != result)
  {
    v6 = **(Phase::Logger::GetInstance(result) + 432);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "GeoSystem.mm";
      v10 = 1024;
      v11 = 398;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Calling Geometry::System::GetCurrentState() outside the main update thread is unsafe.", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Calling Geometry::System::GetCurrentState() outside the main update thread is unsafe.");
  }

  v5 = this[395];
  *a2 = this[394];
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_23A409690(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void Phase::DataMessengerSPSC<std::shared_ptr<Phase::Geometry::SystemState>>::RegisterObserver(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}

void Phase::details::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64>::ReleaseAndBlockSlot(uint64_t a1, uint64_t a2)
{
  UniqueSlot = Phase::details::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64>::GetUniqueSlot(a1, a2);
  if (UniqueSlot)
  {
    ++*(UniqueSlot + 20);
    v3 = *(UniqueSlot + 8);
    *UniqueSlot = 0;
    *(UniqueSlot + 8) = 0;
    if (v3)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }
}

void Phase::Geometry::System::System(Phase::Geometry::System *this, Phase::JobManager *a2)
{
  *(this + 8) = 0u;
  *(this + 6) = 0;
  *(this + 28) = 0xFFFFFFFFLL;
  std::__shared_mutex_base::__shared_mutex_base((this + 40));
  *(this + 28) = 0;
  *(this + 26) = 0;
  *(this + 29) = 0;
  *(this + 60) = 0;
  *(this + 244) = 0xFFFFFFFFLL;
  std::__shared_mutex_base::__shared_mutex_base((this + 256));
  *(this + 53) = 0;
  *(this + 54) = 0;
  *(this + 55) = 0;
  *(this + 56) = 0xFFFFFFFF00000000;
  *(this + 114) = 0;
  std::__shared_mutex_base::__shared_mutex_base((this + 464));
  *(this + 79) = 0;
  *(this + 80) = this;
  *(this + 81) = this;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 684) = 0u;
  *(this + 700) = 0xFFFFFFFFLL;
  std::__shared_mutex_base::__shared_mutex_base((this + 712));
  *(this + 110) = 0;
  *(this + 111) = this;
  *(this + 112) = this;
  *(this + 113) = 0;
  *(this + 57) = 0u;
  *(this + 116) = this;
  *(this + 238) = 0;
  *(this + 936) = 0u;
  *(this + 956) = 0xFFFFFFFFLL;
  std::__shared_mutex_base::__shared_mutex_base((this + 968));
  *(this + 142) = 0;
  *(this + 143) = this;
  *(this + 72) = 0u;
  *(this + 73) = 0u;
  *(this + 1180) = 0u;
  *(this + 1196) = 0xFFFFFFFFLL;
  std::__shared_mutex_base::__shared_mutex_base((this + 1208));
  *(this + 172) = 0;
  *(this + 173) = this;
  *(this + 174) = this;
  *(this + 1400) = 0u;
  *(this + 1416) = 0u;
  *(this + 1428) = 0u;
  *(this + 1444) = 0xFFFFFFFFLL;
  std::__shared_mutex_base::__shared_mutex_base((this + 1456));
  *(this + 203) = 0;
  *(this + 204) = this;
  *(this + 205) = this;
  *(this + 103) = 0u;
  *(this + 104) = 0u;
  *(this + 1676) = 0u;
  *(this + 1692) = 0xFFFFFFFFLL;
  std::__shared_mutex_base::__shared_mutex_base((this + 1704));
  *(this + 234) = 0;
  *(this + 235) = this;
  *(this + 328) = 0;
  bzero(this + 1888, 0x2DCuLL);
  v4 = Phase::SpatialModeler::TRAP::TP(v3);
  *(this + 658) = *(v4 + 101);
  v5 = Phase::SpatialModeler::TRAP::TP(v4);
  *(this + 2636) = v5[508];
  v6 = Phase::SpatialModeler::TRAP::TP(v5);
  *(this + 660) = *(v6 + 102);
  *(this + 2648) = 0u;
  *(this + 666) = 0;
  *(this + 2668) = 1065353216;
  *(this + 2676) = 0;
  *(this + 335) = 0;
  *(this + 336) = -1;
  *(this + 337) = -1;
  *(this + 338) = -1;
  *(this + 339) = this;
  *(this + 340) = this;
  *(this + 341) = 0;
  *(this + 343) = 0;
  *(this + 342) = 0;
  *(this + 345) = 0;
  *(this + 347) = 0;
  *(this + 346) = 0;
  Phase::Logger::GetInstance(v6);
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::Commandable(this + 348);
}

void sub_23A409B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v15 = *(v10 + 1680);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  std::vector<Phase::Geometry::ShapeTypeDefinition>::__destroy_vector::operator()[abi:ne200100](&a10);
  Phase::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64,Phase::Geometry::ShapeFactory>::~SharedSlotMap(v10 + 1424);
  std::vector<Phase::Geometry::MaterialTypeDefinition>::__destroy_vector::operator()[abi:ne200100](&a10);
  Phase::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64,Phase::Geometry::ShapeFactory>::~SharedSlotMap(v10 + 1176);
  std::vector<Phase::Geometry::MediumTypeDefinition>::__destroy_vector::operator()[abi:ne200100](&a10);
  Phase::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64,Phase::Geometry::ShapeFactory>::~SharedSlotMap(v13);
  a10 = (v10 + 904);
  std::vector<Phase::Geometry::DistanceModelTypeDefinition>::__destroy_vector::operator()[abi:ne200100](&a10);
  Phase::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64,Phase::Geometry::ShapeFactory>::~SharedSlotMap(v10 + 680);
  std::vector<Phase::Geometry::DirectivityTypeDefinition>::__destroy_vector::operator()[abi:ne200100](&a10);
  Phase::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64,Phase::Geometry::ShapeFactory>::~SharedSlotMap(v10 + 432);
  Phase::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64,Phase::Geometry::ShapeFactory>::~SharedSlotMap(v12);
  Phase::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64,Phase::Geometry::ShapeFactory>::~SharedSlotMap(v11);
  _Unwind_Resume(a1);
}

uint64_t *Phase::DataMessengerSPSC<std::shared_ptr<Phase::Geometry::SystemState>>::~DataMessengerSPSC(uint64_t *a1)
{
  std::vector<std::weak_ptr<Phase::DataObserverSPSC<std::shared_ptr<Phase::Geometry::SystemState>>>>::clear[abi:ne200100](a1);
  v3 = a1;
  std::vector<std::weak_ptr<Phase::DataObserverSPSC<std::shared_ptr<Phase::Geometry::SystemState>>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void Phase::Geometry::SystemExecutor::~SystemExecutor(Phase::Geometry::SystemExecutor *this)
{
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(this);

  JUMPOUT(0x23EE864A0);
}

void std::vector<std::weak_ptr<Phase::DataObserverSPSC<std::shared_ptr<Phase::Geometry::SystemState>>>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  a1[1] = v2;
}

void std::vector<std::weak_ptr<Phase::DataObserverSPSC<std::shared_ptr<Phase::Geometry::SystemState>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::weak_ptr<Phase::DataObserverSPSC<std::shared_ptr<Phase::Geometry::SystemState>>>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<Phase::Geometry::SceneQueryTypeDefinition>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<Phase::Geometry::SceneQueryTypeDefinition>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<Phase::Geometry::SceneQueryTypeDefinition>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  if (v3 != *result)
  {
    do
    {
      v4 = (v3 - 24);
      std::vector<std::function<BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>>::__destroy_vector::operator()[abi:ne200100](&v4);
      v4 = (v3 - 48);
      std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>>::__destroy_vector::operator()[abi:ne200100](&v4);
      std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>> const&,BOOL)>::~__value_func[abi:ne200100](v3 - 80);
      std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::~__value_func[abi:ne200100](v3 - 112);
      result = std::__function::__value_func<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::~__value_func[abi:ne200100](v3 - 144);
      v3 -= 152;
    }

    while (v3 != v2);
  }

  v1[1] = v2;
  return result;
}

void std::vector<Phase::Geometry::ShapeTypeDefinition>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<Phase::Geometry::ShapeTypeDefinition>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<Phase::Geometry::MaterialTypeDefinition>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<Phase::Geometry::MaterialTypeDefinition>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<Phase::Geometry::MediumTypeDefinition>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<Phase::Geometry::MediumTypeDefinition>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<Phase::Geometry::DistanceModelTypeDefinition>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<Phase::Geometry::DistanceModelTypeDefinition>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<Phase::Geometry::DirectivityTypeDefinition>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<Phase::Geometry::DirectivityTypeDefinition>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void Phase::Geometry::System::~System(Phase::Geometry::System *this)
{
  v2 = *(this + 399);
  *(this + 399) = 0;
  if (v2)
  {
    std::__tree<std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>,std::__map_value_compare<Phase::Handle64,std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>,std::less<Phase::Handle64>,true>,std::allocator<std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>>>::destroy(v2 + 104, *(v2 + 112));
    std::__tree<std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>,std::__map_value_compare<Phase::Handle64,std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>,std::less<Phase::Handle64>,true>,std::allocator<std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>>>::destroy(v2 + 16, *(v2 + 24));
    MEMORY[0x23EE864A0](v2, 0x1020C4055C01C69);
  }

  std::unique_ptr<Phase::Geometry::System::ReleaseRequest>::reset[abi:ne200100](this + 398, 0);
  std::unique_ptr<Phase::Geometry::System::ReleaseRequest>::reset[abi:ne200100](this + 397, 0);
  v3 = *(this + 395);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v14 = (this + 3128);
  std::vector<Phase::Geometry::MpsCpuSceneDescriptor>::__destroy_vector::operator()[abi:ne200100](&v14);
  v4 = *(this + 387);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 384);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  Phase::Geometry::MpsCpuSceneBuilder::~MpsCpuSceneBuilder(this + 362);
  v14 = (this + 2872);
  std::vector<std::shared_ptr<Phase::Geometry::MpsCpuScene>>::__destroy_vector::operator()[abi:ne200100](&v14);
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(this + 348);
  std::vector<std::weak_ptr<Phase::DataObserverSPSC<std::shared_ptr<Phase::Geometry::SystemState>>>>::clear[abi:ne200100](this + 345);
  v14 = (this + 2760);
  std::vector<std::weak_ptr<Phase::DataObserverSPSC<std::shared_ptr<Phase::Geometry::SystemState>>>>::__destroy_vector::operator()[abi:ne200100](&v14);
  v14 = (this + 2728);
  std::vector<Phase::Geometry::SceneQueryTypeDefinition>::__destroy_vector::operator()[abi:ne200100](&v14);
  std::condition_variable::~condition_variable((this + 1816));
  std::condition_variable::~condition_variable((this + 1768));
  std::mutex::~mutex((this + 1704));
  v6 = *(this + 210);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v14 = (this + 1648);
  std::vector<Phase::Geometry::ShapeTypeDefinition>::__destroy_vector::operator()[abi:ne200100](&v14);
  std::condition_variable::~condition_variable((this + 1568));
  std::condition_variable::~condition_variable((this + 1520));
  std::mutex::~mutex((this + 1456));
  v7 = *(this + 179);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v14 = (this + 1400);
  std::vector<Phase::Geometry::MaterialTypeDefinition>::__destroy_vector::operator()[abi:ne200100](&v14);
  std::condition_variable::~condition_variable((this + 1320));
  std::condition_variable::~condition_variable((this + 1272));
  std::mutex::~mutex((this + 1208));
  v8 = *(this + 148);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v14 = (this + 1152);
  std::vector<Phase::Geometry::MediumTypeDefinition>::__destroy_vector::operator()[abi:ne200100](&v14);
  std::condition_variable::~condition_variable((this + 1080));
  std::condition_variable::~condition_variable((this + 1032));
  std::mutex::~mutex((this + 968));
  v9 = *(this + 118);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v14 = (this + 904);
  std::vector<Phase::Geometry::DistanceModelTypeDefinition>::__destroy_vector::operator()[abi:ne200100](&v14);
  std::condition_variable::~condition_variable((this + 824));
  std::condition_variable::~condition_variable((this + 776));
  std::mutex::~mutex((this + 712));
  v10 = *(this + 86);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v14 = (this + 656);
  std::vector<Phase::Geometry::DirectivityTypeDefinition>::__destroy_vector::operator()[abi:ne200100](&v14);
  std::condition_variable::~condition_variable(this + 12);
  std::condition_variable::~condition_variable(this + 11);
  std::mutex::~mutex((this + 464));
  v11 = *(this + 55);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::condition_variable::~condition_variable((this + 368));
  std::condition_variable::~condition_variable((this + 320));
  std::mutex::~mutex(this + 4);
  v12 = *(this + 29);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::condition_variable::~condition_variable((this + 152));
  std::condition_variable::~condition_variable((this + 104));
  std::mutex::~mutex((this + 40));
  v13 = *(this + 2);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void std::__tree<std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>,std::__map_value_compare<Phase::Handle64,std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>,std::less<Phase::Handle64>,true>,std::allocator<std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>,std::__map_value_compare<Phase::Handle64,std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>,std::less<Phase::Handle64>,true>,std::allocator<std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>,std::__map_value_compare<Phase::Handle64,std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>,std::less<Phase::Handle64>,true>,std::allocator<std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>>>::destroy(a1, a2[1]);
    std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100]((a2 + 27));
    std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100]((a2 + 23));
    std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100]((a2 + 19));
    std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100]((a2 + 15));
    std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100]((a2 + 11));
    std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100]((a2 + 7));

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>,std::__map_value_compare<Phase::Handle64,std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>,std::less<Phase::Handle64>,true>,std::allocator<std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>,std::__map_value_compare<Phase::Handle64,std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>,std::less<Phase::Handle64>,true>,std::allocator<std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>,std::__map_value_compare<Phase::Handle64,std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>,std::less<Phase::Handle64>,true>,std::allocator<std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>>>::destroy(a1, a2[1]);
    std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>::~__value_func[abi:ne200100]((a2 + 11));
    std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>::~__value_func[abi:ne200100]((a2 + 7));

    operator delete(a2);
  }
}

void std::vector<Phase::Geometry::MpsCpuSceneDescriptor>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<Phase::Geometry::MpsCpuSceneDescriptor>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t *std::unique_ptr<Phase::Geometry::System::ReleaseRequest>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::unique_ptr<Phase::Geometry::System::ReleaseRequest>::reset[abi:ne200100](v2 + 16, 0);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void Phase::details::SharedSlotMap<Phase::Geometry::Material,Phase::Handle64>::Release(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  UniqueSlot = Phase::details::SharedSlotMap<Phase::Geometry::Material,Phase::Handle64>::GetUniqueSlot(a1, a2);
  if (UniqueSlot)
  {
    v5 = UniqueSlot;
    ++*(UniqueSlot + 20);
    v6 = *(UniqueSlot + 8);
    *v5 = 0;
    *(v5 + 8) = 0;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v7 = atomic_load((a1 + 20));
    *(v5 + 16) = v7;
    v8 = v7;
    atomic_compare_exchange_strong((a1 + 20), &v8, v2);
    if (v8 != v7)
    {
      v9 = v8;
      do
      {
        *(v5 + 16) = v8;
        atomic_compare_exchange_strong((a1 + 20), &v9, v2);
        v10 = v9 == v8;
        v8 = v9;
      }

      while (!v10);
    }
  }
}

void Phase::details::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64>::UnblockSlot(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) > a2)
  {
    v2 = *a1 + 24 * a2;
    if (*(v2 + 20) - 1 == HIDWORD(a2))
    {
      v3 = atomic_load((a1 + 20));
      *(v2 + 16) = v3;
      v4 = v3;
      atomic_compare_exchange_strong((a1 + 20), &v4, a2);
      if (v4 != v3)
      {
        v5 = v4;
        do
        {
          *(v2 + 16) = v4;
          atomic_compare_exchange_strong((a1 + 20), &v5, a2);
          v6 = v5 == v4;
          v4 = v5;
        }

        while (!v6);
      }
    }
  }
}

uint64_t std::__function::__func<std::shared_ptr<Phase::Geometry::Directivity> (*)(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *),std::allocator<std::shared_ptr<Phase::Geometry::Directivity> (*)(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>,std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D34820;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<Phase::Geometry::Directivity> (*)(Phase::Geometry::System &,Phase::Geometry::Directivity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *),std::allocator<std::shared_ptr<Phase::Geometry::Directivity> (*)(Phase::Geometry::System &,Phase::Geometry::Directivity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>,std::shared_ptr<Phase::Geometry::Directivity> ()(Phase::Geometry::System &,Phase::Geometry::Directivity const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D34868;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<Phase::Geometry::DistanceModel> (*)(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *),std::allocator<std::shared_ptr<Phase::Geometry::DistanceModel> (*)(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>,std::shared_ptr<Phase::Geometry::DistanceModel> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D348B0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<Phase::Geometry::DistanceModel> (*)(Phase::Geometry::System &,Phase::Geometry::DistanceModel const&,Phase::UnorderedStringMap<Phase::OptionsValue> *),std::allocator<std::shared_ptr<Phase::Geometry::DistanceModel> (*)(Phase::Geometry::System &,Phase::Geometry::DistanceModel const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>,std::shared_ptr<Phase::Geometry::DistanceModel> ()(Phase::Geometry::System &,Phase::Geometry::DistanceModel const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D348F8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<Phase::Geometry::Medium> (*)(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *),std::allocator<std::shared_ptr<Phase::Geometry::Medium> (*)(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>,std::shared_ptr<Phase::Geometry::Medium> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D34940;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<Phase::Geometry::Medium> (*)(Phase::Geometry::System &,Phase::Geometry::Medium const&,Phase::UnorderedStringMap<Phase::OptionsValue> *),std::allocator<std::shared_ptr<Phase::Geometry::Medium> (*)(Phase::Geometry::System &,Phase::Geometry::Medium const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>,std::shared_ptr<Phase::Geometry::Medium> ()(Phase::Geometry::System &,Phase::Geometry::Medium const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D34988;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<Phase::Geometry::Material> (*)(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *),std::allocator<std::shared_ptr<Phase::Geometry::Material> (*)(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>,std::shared_ptr<Phase::Geometry::Material> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D349D0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<Phase::Geometry::Material> (*)(Phase::Geometry::System &,Phase::Geometry::Material const&,Phase::UnorderedStringMap<Phase::OptionsValue> *),std::allocator<std::shared_ptr<Phase::Geometry::Material> (*)(Phase::Geometry::System &,Phase::Geometry::Material const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>,std::shared_ptr<Phase::Geometry::Material> ()(Phase::Geometry::System &,Phase::Geometry::Material const&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D34A18;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<Phase::Geometry::Shape> (*)(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *),std::allocator<std::shared_ptr<Phase::Geometry::Shape> (*)(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>,std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D34A60;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<Phase::Geometry::Shape> (*)(Phase::Geometry::System &,Phase::Geometry::Shape&,Phase::UnorderedStringMap<Phase::OptionsValue> *),std::allocator<std::shared_ptr<Phase::Geometry::Shape> (*)(Phase::Geometry::System &,Phase::Geometry::Shape&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>,std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Geometry::Shape&,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D34AA8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<Phase::Geometry::Shape> (*)(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *),std::allocator<std::shared_ptr<Phase::Geometry::Shape> (*)(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>,std::shared_ptr<Phase::Geometry::Shape> ()(Phase::Geometry::System &,Phase::Asset &,Phase::UnorderedStringMap<Phase::OptionsValue> *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D34AF0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void (*)(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&),std::allocator<void (*)(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>,void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQueryFunctionTable const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D34B38;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void (*)(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>> const&,BOOL),std::allocator<void (*)(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>> const&,BOOL)>,void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,std::vector<std::function<void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>> const&,BOOL)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D34B80;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void (*)(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &),std::allocator<void (*)(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>,void ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,Phase::Geometry::SceneQuery &,Phase::Geometry::SceneQueryShapeState &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D34BC8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL (*)(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int),std::allocator<BOOL (*)(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>,BOOL ()(Phase::Geometry::SystemState &,Phase::Geometry::SceneQueryBatch &,int,int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D34C10;
  a2[1] = v2;
  return result;
}

void *_ZNSt3__120__shared_ptr_emplaceIN5Phase8Geometry11SystemStateENS_9allocatorIS3_EEEC2B8ne200100IJES5_Li0EEES5_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284D34C58;
  Phase::Geometry::SystemState::SystemState((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<Phase::Geometry::SystemState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D34C58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

Phase::Geometry::SystemState *Phase::Geometry::SystemState::SystemState(Phase::Geometry::SystemState *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 34) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 40) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 46) = 0;
  *(this + 116) = 0;
  bzero(this + 192, 0x2DCuLL);
  v3 = Phase::SpatialModeler::TRAP::TP(v2);
  *(this + 234) = *(v3 + 101);
  v4 = Phase::SpatialModeler::TRAP::TP(v3);
  *(this + 940) = v4[508];
  *(this + 236) = *(Phase::SpatialModeler::TRAP::TP(v4) + 102);
  *(this + 952) = 0u;
  *(this + 242) = 0;
  *(this + 972) = 1065353216;
  *(this + 980) = 0;
  *(this + 123) = 0;
  *(this + 124) = -1;
  *(this + 125) = -1;
  *(this + 126) = -1;
  *(this + 1016) = 0u;
  *(this + 1032) = 0u;
  *(this + 1048) = 0u;
  *(this + 1064) = 0u;
  return this;
}

void sub_23A40B204(_Unwind_Exception *exception_object)
{
  v3 = v1[22];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = v1[19];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = v1[16];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = v1[13];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = v1[10];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = v1[7];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = v1[4];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = v1[1];
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__120__shared_ptr_emplaceIN5Phase16DataObserverSPSCINS_10shared_ptrINS1_8Geometry11SystemStateEEEEENS_9allocatorIS7_EEEC2B8ne200100IJES9_Li0EEES9_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284D34C90;
  Phase::DataObserverSPSC<std::shared_ptr<Phase::Geometry::SystemState>>::DataObserverSPSC((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<Phase::DataObserverSPSC<std::shared_ptr<Phase::Geometry::SystemState>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D34C90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

void std::__shared_ptr_emplace<Phase::DataObserverSPSC<std::shared_ptr<Phase::Geometry::SystemState>>>::__on_zero_shared(uint64_t a1)
{
  for (i = 120; i != 24; i -= 32)
  {
    v3 = *(a1 + i);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }
}

uint64_t Phase::DataObserverSPSC<std::shared_ptr<Phase::Geometry::SystemState>>::DataObserverSPSC(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v4 = a1 + 24;
  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 112) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v5 = 24;
  *(a1 + 48) = 0;
  do
  {
    v6 = a1 + v2;
    *(a1 + v2 + 24) = 0;
    v7 = *(a1 + v2 + 32);
    *(a1 + v2 + 32) = 0;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      v3 = *(a1 + 8);
    }

    *(v6 + 48) = 0;
    *(v6 + 40) = v3;
    *(a1 + 8) = a1 + v2 + 24;
    v5 += 32;
    v3 = v4;
    v4 = a1 + v5;
    v2 += 32;
  }

  while (v2 != 96);
  return a1;
}

uint64_t Phase::details::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64>::GetUniqueSlot(uint64_t a1, uint64_t a2)
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
      Phase::details::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64>::Realloc(a1);
      return *a1 + 24 * v3;
    }
  }

  return result;
}

uint64_t Phase::Geometry::SystemDebugger::GetFromSystem(uint64_t a1)
{
  result = *(a1 + 3192);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t *std::unique_ptr<Phase::Geometry::SystemDebugger>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__tree<std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>,std::__map_value_compare<Phase::Handle64,std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>,std::less<Phase::Handle64>,true>,std::allocator<std::__value_type<Phase::Handle64,Phase::SpatialModeler::RoomSimulationDebugger::EntityDebugInfo>>>::destroy(v2 + 104, *(v2 + 112));
    std::__tree<std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>,std::__map_value_compare<Phase::Handle64,std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>,std::less<Phase::Handle64>,true>,std::allocator<std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>>>::destroy(v2 + 16, *(v2 + 24));

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

Phase::Logger *Phase::Geometry::SystemExecutor::Init(Phase::Logger *this, Phase::Geometry::System *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v2 = **(Phase::Logger::GetInstance(this) + 432);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "GeoSystemExecutor.cpp";
      v6 = 1024;
      v7 = 35;
      _os_log_impl(&dword_23A302000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [nullptr == inpSystem is true]: Null system pointer passed to SystemExecutor::Init", &v4, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Null system pointer passed to SystemExecutor::Init");
  }

  *(this + 5) = a2;
  return this;
}

void Phase::Geometry::SystemExecutor::Update(Phase::Geometry::SystemExecutor *this, float a2)
{
  v3 = *(this + 5);
  v4 = atomic_load((v3 + 32));
  v5 = *(v3 + 24);
  if (v5 < v4)
  {
    v6 = v4 >= 0x40 ? v4 + (v4 >> 1) : 64;
    if (v6 > v5)
    {
      Phase::details::SharedSlotMap<Phase::Geometry::Context,Phase::Handle64>::AllocSlots(v6, &v118);
      if (v5)
      {
        v7 = 0;
        do
        {
          v8 = *(v3 + 8);
          v9 = v118;
          v11 = *(v8 + v7);
          v10 = *(v8 + v7 + 8);
          if (v10)
          {
            atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
          }

          v12 = (v9 + v7);
          v13 = *(v9 + v7 + 8);
          *v12 = v11;
          v12[1] = v10;
          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          }

          v12[2] = *(v8 + v7 + 16);
          v7 += 24;
        }

        while (24 * v5 != v7);
        v14 = v5;
      }

      else
      {
        v14 = 0;
      }

      v15 = v6 - v5;
      v16 = 24 * v14;
      do
      {
        v17 = (v118 + v16);
        v18 = *(v118 + v16 + 8);
        *v17 = 0;
        v17[1] = 0;
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        v17[2] = 0x1FFFFFFFFLL;
        v16 += 24;
        --v15;
      }

      while (v15);
      std::__shared_mutex_base::lock((v3 + 40));
      v19 = *(v3 + 8);
      *(v3 + 8) = v118;
      v118 = v19;
      std::__shared_mutex_base::unlock((v3 + 40));
      *(v3 + 24) = v6;
      if (*(&v118 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v118 + 1));
      }
    }
  }

  v20 = *(this + 5);
  v21 = atomic_load((v20 + 248));
  v22 = *(v20 + 240);
  if (v22 < v21)
  {
    v23 = v21 >= 0x40 ? v21 + (v21 >> 1) : 64;
    if (v23 > v22)
    {
      Phase::details::SharedSlotMap<Phase::Geometry::EnvironmentalMetadataStream,Phase::Handle64>::AllocSlots(v23, &v118);
      if (v22)
      {
        v24 = 0;
        do
        {
          v25 = *(v20 + 224);
          v26 = v118;
          v28 = *(v25 + v24);
          v27 = *(v25 + v24 + 8);
          if (v27)
          {
            atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
          }

          v29 = (v26 + v24);
          v30 = *(v26 + v24 + 8);
          *v29 = v28;
          v29[1] = v27;
          if (v30)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v30);
          }

          v29[2] = *(v25 + v24 + 16);
          v24 += 24;
        }

        while (24 * v22 != v24);
        v31 = v22;
      }

      else
      {
        v31 = 0;
      }

      v32 = v23 - v22;
      v33 = 24 * v31;
      do
      {
        v34 = (v118 + v33);
        v35 = *(v118 + v33 + 8);
        *v34 = 0;
        v34[1] = 0;
        if (v35)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        }

        v34[2] = 0x1FFFFFFFFLL;
        v33 += 24;
        --v32;
      }

      while (v32);
      std::__shared_mutex_base::lock((v20 + 256));
      v36 = *(v20 + 224);
      *(v20 + 224) = v118;
      v118 = v36;
      std::__shared_mutex_base::unlock((v20 + 256));
      *(v20 + 240) = v23;
      if (*(&v118 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v118 + 1));
      }
    }
  }

  v37 = *(this + 5);
  v38 = atomic_load((v37 + 456));
  v39 = *(v37 + 448);
  if (v39 < v38)
  {
    v40 = v38 >= 0x40 ? v38 + (v38 >> 1) : 64;
    if (v40 > v39)
    {
      Phase::details::SharedSlotMap<Phase::Geometry::Directivity,Phase::Handle64>::AllocSlots(v40, &v118);
      if (v39)
      {
        v41 = 0;
        do
        {
          v42 = *(v37 + 432);
          v43 = v118;
          v45 = *(v42 + v41);
          v44 = *(v42 + v41 + 8);
          if (v44)
          {
            atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
          }

          v46 = (v43 + v41);
          v47 = *(v43 + v41 + 8);
          *v46 = v45;
          v46[1] = v44;
          if (v47)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v47);
          }

          v46[2] = *(v42 + v41 + 16);
          v41 += 24;
        }

        while (24 * v39 != v41);
        v48 = v39;
      }

      else
      {
        v48 = 0;
      }

      v49 = v40 - v39;
      v50 = 24 * v48;
      do
      {
        v51 = (v118 + v50);
        v52 = *(v118 + v50 + 8);
        *v51 = 0;
        v51[1] = 0;
        if (v52)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v52);
        }

        v51[2] = 0x1FFFFFFFFLL;
        v50 += 24;
        --v49;
      }

      while (v49);
      std::__shared_mutex_base::lock((v37 + 464));
      v53 = *(v37 + 432);
      *(v37 + 432) = v118;
      v118 = v53;
      std::__shared_mutex_base::unlock((v37 + 464));
      *(v37 + 448) = v40;
      if (*(&v118 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v118 + 1));
      }
    }
  }

  v54 = *(this + 5);
  v55 = atomic_load((v54 + 704));
  v56 = *(v54 + 696);
  if (v56 < v55)
  {
    v57 = v55 >= 0x40 ? v55 + (v55 >> 1) : 64;
    if (v57 > v56)
    {
      v58 = (v54 + 680);
      Phase::details::SharedSlotMap<Phase::Geometry::DistanceModel,Phase::Handle64>::AllocSlots(v57, &v118);
      if (v56)
      {
        v59 = 0;
        do
        {
          v60 = *v58;
          v61 = (*v58 + v59);
          v62 = v118;
          v64 = *v61;
          v63 = v61[1];
          if (v63)
          {
            atomic_fetch_add_explicit((v63 + 8), 1uLL, memory_order_relaxed);
          }

          v65 = (v62 + v59);
          v66 = *(v62 + v59 + 8);
          *v65 = v64;
          v65[1] = v63;
          if (v66)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v66);
          }

          v65[2] = *(v60 + v59 + 16);
          v59 += 24;
        }

        while (24 * v56 != v59);
        v67 = v56;
      }

      else
      {
        v67 = 0;
      }

      v68 = v57 - v56;
      v69 = 24 * v67;
      do
      {
        v70 = (v118 + v69);
        v71 = *(v118 + v69 + 8);
        *v70 = 0;
        v70[1] = 0;
        if (v71)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v71);
        }

        v70[2] = 0x1FFFFFFFFLL;
        v69 += 24;
        --v68;
      }

      while (v68);
      std::__shared_mutex_base::lock((v54 + 712));
      v72 = *v58;
      *v58 = v118;
      v118 = v72;
      std::__shared_mutex_base::unlock((v54 + 712));
      *(v54 + 696) = v57;
      if (*(&v118 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v118 + 1));
      }
    }
  }

  v73 = *(this + 5);
  v74 = atomic_load((v73 + 960));
  v75 = *(v73 + 952);
  if (v75 < v74)
  {
    v76 = v74 >= 0x40 ? v74 + (v74 >> 1) : 64;
    if (v76 > v75)
    {
      v77 = (v73 + 936);
      Phase::details::SharedSlotMap<Phase::Geometry::Medium,Phase::Handle64>::AllocSlots(v76, &v118);
      if (v75)
      {
        v78 = 0;
        do
        {
          v79 = *v77;
          v80 = (*v77 + v78);
          v81 = v118;
          v83 = *v80;
          v82 = v80[1];
          if (v82)
          {
            atomic_fetch_add_explicit((v82 + 8), 1uLL, memory_order_relaxed);
          }

          v84 = (v81 + v78);
          v85 = *(v81 + v78 + 8);
          *v84 = v83;
          v84[1] = v82;
          if (v85)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v85);
          }

          v84[2] = *(v79 + v78 + 16);
          v78 += 24;
        }

        while (24 * v75 != v78);
        v86 = v75;
      }

      else
      {
        v86 = 0;
      }

      v87 = v76 - v75;
      v88 = 24 * v86;
      do
      {
        v89 = (v118 + v88);
        v90 = *(v118 + v88 + 8);
        *v89 = 0;
        v89[1] = 0;
        if (v90)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v90);
        }

        v89[2] = 0x1FFFFFFFFLL;
        v88 += 24;
        --v87;
      }

      while (v87);
      std::__shared_mutex_base::lock((v73 + 968));
      v91 = *v77;
      *v77 = v118;
      v118 = v91;
      std::__shared_mutex_base::unlock((v73 + 968));
      *(v73 + 952) = v76;
      if (*(&v118 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v118 + 1));
      }
    }
  }

  v92 = *(this + 5);
  v93 = atomic_load((v92 + 1200));
  v94 = *(v92 + 1192);
  if (v94 < v93)
  {
    v95 = v93 >= 0x40 ? v93 + (v93 >> 1) : 64;
    if (v95 > v94)
    {
      v96 = (v92 + 1176);
      Phase::details::SharedSlotMap<Phase::Geometry::Material,Phase::Handle64>::AllocSlots(v95, &v118);
      if (v94)
      {
        v97 = 0;
        do
        {
          v98 = *v96;
          v99 = (*v96 + v97);
          v100 = v118;
          v102 = *v99;
          v101 = v99[1];
          if (v101)
          {
            atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
          }

          v103 = (v100 + v97);
          v104 = *(v100 + v97 + 8);
          *v103 = v102;
          v103[1] = v101;
          if (v104)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v104);
          }

          v103[2] = *(v98 + v97 + 16);
          v97 += 24;
        }

        while (24 * v94 != v97);
        v105 = v94;
      }

      else
      {
        v105 = 0;
      }

      v106 = v95 - v94;
      v107 = 24 * v105;
      do
      {
        v108 = (v118 + v107);
        v109 = *(v118 + v107 + 8);
        *v108 = 0;
        v108[1] = 0;
        if (v109)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v109);
        }

        v108[2] = 0x1FFFFFFFFLL;
        v107 += 24;
        --v106;
      }

      while (v106);
      std::__shared_mutex_base::lock((v92 + 1208));
      v110 = *v96;
      *v96 = v118;
      v118 = v110;
      std::__shared_mutex_base::unlock((v92 + 1208));
      *(v92 + 1192) = v95;
      if (*(&v118 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v118 + 1));
      }
    }
  }

  v111 = *(this + 5);
  v112 = atomic_load((v111 + 1448));
  if (*(v111 + 1440) < v112)
  {
    if (v112 >= 0x40)
    {
      v113 = v112 + (v112 >> 1);
    }

    else
    {
      v113 = 64;
    }

    Phase::details::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64>::Resize((v111 + 1424), v113);
  }

  v114 = *(this + 5);
  v115 = atomic_load((v114 + 1696));
  if (*(v114 + 1688) < v115)
  {
    if (v115 >= 0x40)
    {
      v116 = v115 + (v115 >> 1);
    }

    else
    {
      v116 = 64;
    }

    Phase::details::SharedSlotMap<Phase::Geometry::Entity,Phase::Handle64>::Resize((v114 + 1672), v116);
  }

  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::ExecuteCommands(this);
  v117 = *(this + 5);

  Phase::Geometry::System::BuildCurrentState(v117);
}

void sub_23A40BEC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void Phase::details::SharedSlotMap<Phase::Geometry::Context,Phase::Handle64>::AllocSlots(unint64_t a1@<X1>, void *a2@<X8>)
{
  if (a1)
  {
    is_mul_ok(a1, 0x18uLL);
    operator new[]();
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_23A40C038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<Phase::SharedSlotMapState<Phase::Geometry::Entity,Phase::Handle64>::Slot>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<Phase::SharedSlotMapState<Phase::Geometry::Context,Phase::Handle64>::Slot *,std::shared_ptr<Phase::SharedSlotMapState<Phase::Geometry::Context,Phase::Handle64>::Slot[]>::__shared_ptr_default_delete<Phase::SharedSlotMapState<Phase::Geometry::Context,Phase::Handle64>::Slot[],Phase::SharedSlotMapState<Phase::Geometry::Context,Phase::Handle64>::Slot>,std::allocator<Phase::SharedSlotMapState<Phase::Geometry::Context,Phase::Handle64>::Slot>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

void Phase::details::SharedSlotMap<Phase::Geometry::EnvironmentalMetadataStream,Phase::Handle64>::AllocSlots(unint64_t a1@<X1>, void *a2@<X8>)
{
  if (a1)
  {
    is_mul_ok(a1, 0x18uLL);
    operator new[]();
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_23A40C1BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<Phase::SharedSlotMapState<Phase::Geometry::Entity,Phase::Handle64>::Slot>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<Phase::SharedSlotMapState<Phase::Geometry::EnvironmentalMetadataStream,Phase::Handle64>::Slot *,std::shared_ptr<Phase::SharedSlotMapState<Phase::Geometry::EnvironmentalMetadataStream,Phase::Handle64>::Slot[]>::__shared_ptr_default_delete<Phase::SharedSlotMapState<Phase::Geometry::EnvironmentalMetadataStream,Phase::Handle64>::Slot[],Phase::SharedSlotMapState<Phase::Geometry::EnvironmentalMetadataStream,Phase::Handle64>::Slot>,std::allocator<Phase::SharedSlotMapState<Phase::Geometry::EnvironmentalMetadataStream,Phase::Handle64>::Slot>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

void Phase::details::SharedSlotMap<Phase::Geometry::Directivity,Phase::Handle64>::AllocSlots(unint64_t a1@<X1>, void *a2@<X8>)
{
  if (a1)
  {
    is_mul_ok(a1, 0x18uLL);
    operator new[]();
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_23A40C340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<Phase::SharedSlotMapState<Phase::Geometry::Entity,Phase::Handle64>::Slot>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<Phase::SharedSlotMapState<Phase::Geometry::Directivity,Phase::Handle64>::Slot *,std::shared_ptr<Phase::SharedSlotMapState<Phase::Geometry::Directivity,Phase::Handle64>::Slot[]>::__shared_ptr_default_delete<Phase::SharedSlotMapState<Phase::Geometry::Directivity,Phase::Handle64>::Slot[],Phase::SharedSlotMapState<Phase::Geometry::Directivity,Phase::Handle64>::Slot>,std::allocator<Phase::SharedSlotMapState<Phase::Geometry::Directivity,Phase::Handle64>::Slot>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

void Phase::details::SharedSlotMap<Phase::Geometry::DistanceModel,Phase::Handle64>::AllocSlots(unint64_t a1@<X1>, void *a2@<X8>)
{
  if (a1)
  {
    is_mul_ok(a1, 0x18uLL);
    operator new[]();
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_23A40C4C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<Phase::SharedSlotMapState<Phase::Geometry::Entity,Phase::Handle64>::Slot>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<Phase::SharedSlotMapState<Phase::Geometry::DistanceModel,Phase::Handle64>::Slot *,std::shared_ptr<Phase::SharedSlotMapState<Phase::Geometry::DistanceModel,Phase::Handle64>::Slot[]>::__shared_ptr_default_delete<Phase::SharedSlotMapState<Phase::Geometry::DistanceModel,Phase::Handle64>::Slot[],Phase::SharedSlotMapState<Phase::Geometry::DistanceModel,Phase::Handle64>::Slot>,std::allocator<Phase::SharedSlotMapState<Phase::Geometry::DistanceModel,Phase::Handle64>::Slot>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

void Phase::details::SharedSlotMap<Phase::Geometry::Medium,Phase::Handle64>::AllocSlots(unint64_t a1@<X1>, void *a2@<X8>)
{
  if (a1)
  {
    is_mul_ok(a1, 0x18uLL);
    operator new[]();
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_23A40C648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<Phase::SharedSlotMapState<Phase::Geometry::Entity,Phase::Handle64>::Slot>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<Phase::SharedSlotMapState<Phase::Geometry::Medium,Phase::Handle64>::Slot *,std::shared_ptr<Phase::SharedSlotMapState<Phase::Geometry::Medium,Phase::Handle64>::Slot[]>::__shared_ptr_default_delete<Phase::SharedSlotMapState<Phase::Geometry::Medium,Phase::Handle64>::Slot[],Phase::SharedSlotMapState<Phase::Geometry::Medium,Phase::Handle64>::Slot>,std::allocator<Phase::SharedSlotMapState<Phase::Geometry::Medium,Phase::Handle64>::Slot>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

Phase::Logger *Phase::Geometry::SystemScheduler::Init(Phase::Geometry::SystemScheduler *this, Phase::Geometry::System *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v3 = **(Phase::Logger::GetInstance(this) + 432);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "GeoSystemScheduler.cpp";
      v7 = 1024;
      v8 = 41;
      _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [nullptr == inpSystem is true]: Null system pointer passed to SystemScheduler::Init", &v5, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Null system pointer passed to SystemScheduler::Init");
  }

  *(this + 6) = a2;

  return Phase::Geometry::SystemExecutor::Init(this, a2);
}

void Phase::Geometry::SystemScheduler::Update(Phase::Geometry::SystemScheduler *this, float a2)
{
  Instance = Phase::Logger::GetInstance(this);
  v5 = os_signpost_id_generate(**(Instance + 912));
  v6 = Phase::Logger::GetInstance(v5);
  if (*(v6 + 920) == 1)
  {
    v7 = Phase::Logger::GetInstance(v6);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v8 = **(v7 + 912);
      if (os_signpost_enabled(v8))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_23A302000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Phase_GeometrySystemScheduler_Update", "Geometry System Scheduler Update", buf, 2u);
      }
    }
  }

  Phase::Geometry::SystemExecutor::Update(this, a2);
}

unint64_t Phase::Geometry::SystemScheduler::AddToDatabase(uint64_t a1, uint64_t *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  v5 = atomic_load((v4 + 28));
  if (v5 == -1)
  {
LABEL_7:
    v8 = atomic_fetch_add((v4 + 32), 1u) | 0x100000000;
  }

  else
  {
    *buf = v4 + 40;
    buf[8] = 1;
    std::__shared_mutex_base::lock_shared((v4 + 40));
    v6 = v5;
    while (1)
    {
      v7 = *(v4 + 8) + 24 * v5;
      atomic_compare_exchange_strong((v4 + 28), &v6, *(v7 + 16));
      if (v6 == v5)
      {
        break;
      }

      v5 = v6;
      if (v6 == -1)
      {
        if (buf[8] == 1)
        {
          std::__shared_mutex_base::unlock_shared(*buf);
        }

        goto LABEL_7;
      }
    }

    Phase::Handle64::Set(&v20, v5, *(v7 + 20));
    if (buf[8] == 1)
    {
      std::__shared_mutex_base::unlock_shared(*buf);
    }

    v8 = v20;
  }

  v9 = *(a1 + 48);
  v11 = *a2;
  v10 = a2[1];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = **(a1 + 8);
  v20 = 0;
  v19 = 1;
  v13 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v12, 40, &v20, &v19);
  if (!v13)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v17 = **(v12 + 48);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CommandQueue.hpp";
      v22 = 1024;
      v23 = 100;
      _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v19)
  {
    v14 = **(v12 + 48);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      *&buf[4] = "CommandQueue.hpp";
      v22 = 1024;
      v23 = 89;
      v24 = 2048;
      v25 = v20;
      v26 = 2048;
      v27 = 40;
      _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v13 = &unk_284D34DE0;
  v13[1] = v9;
  v13[2] = v8;
  v13[3] = v11;
  v13[4] = v10;
  Phase::LockFreeQueueSPSC::CommitBytes(v12, 40);
  atomic_store(0, (v12 + 40));
  return v8;
}

{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  v5 = atomic_load((v4 + 244));
  if (v5 == -1)
  {
LABEL_7:
    v8 = atomic_fetch_add((v4 + 248), 1u) | 0x100000000;
  }

  else
  {
    *buf = v4 + 256;
    buf[8] = 1;
    std::__shared_mutex_base::lock_shared((v4 + 256));
    v6 = v5;
    while (1)
    {
      v7 = *(v4 + 224) + 24 * v5;
      atomic_compare_exchange_strong((v4 + 244), &v6, *(v7 + 16));
      if (v6 == v5)
      {
        break;
      }

      v5 = v6;
      if (v6 == -1)
      {
        if (buf[8] == 1)
        {
          std::__shared_mutex_base::unlock_shared(*buf);
        }

        goto LABEL_7;
      }
    }

    Phase::Handle64::Set(&v20, v5, *(v7 + 20));
    if (buf[8] == 1)
    {
      std::__shared_mutex_base::unlock_shared(*buf);
    }

    v8 = v20;
  }

  v9 = *(a1 + 48);
  v11 = *a2;
  v10 = a2[1];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = **(a1 + 8);
  v20 = 0;
  v19 = 1;
  v13 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v12, 40, &v20, &v19);
  if (!v13)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v17 = **(v12 + 48);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CommandQueue.hpp";
      v22 = 1024;
      v23 = 100;
      _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v19)
  {
    v14 = **(v12 + 48);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      *&buf[4] = "CommandQueue.hpp";
      v22 = 1024;
      v23 = 89;
      v24 = 2048;
      v25 = v20;
      v26 = 2048;
      v27 = 40;
      _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v13 = &unk_284D34E08;
  v13[1] = v9;
  v13[2] = v8;
  v13[3] = v11;
  v13[4] = v10;
  Phase::LockFreeQueueSPSC::CommitBytes(v12, 40);
  atomic_store(0, (v12 + 40));
  return v8;
}

{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  v5 = atomic_load((v4 + 452));
  if (v5 == -1)
  {
LABEL_7:
    v8 = atomic_fetch_add((v4 + 456), 1u) | 0x100000000;
  }

  else
  {
    *buf = v4 + 464;
    buf[8] = 1;
    std::__shared_mutex_base::lock_shared((v4 + 464));
    v6 = v5;
    while (1)
    {
      v7 = *(v4 + 432) + 24 * v5;
      atomic_compare_exchange_strong((v4 + 452), &v6, *(v7 + 16));
      if (v6 == v5)
      {
        break;
      }

      v5 = v6;
      if (v6 == -1)
      {
        if (buf[8] == 1)
        {
          std::__shared_mutex_base::unlock_shared(*buf);
        }

        goto LABEL_7;
      }
    }

    Phase::Handle64::Set(&v20, v5, *(v7 + 20));
    if (buf[8] == 1)
    {
      std::__shared_mutex_base::unlock_shared(*buf);
    }

    v8 = v20;
  }

  v9 = *(a1 + 48);
  v11 = *a2;
  v10 = a2[1];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = **(a1 + 8);
  v20 = 0;
  v19 = 1;
  v13 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v12, 40, &v20, &v19);
  if (!v13)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v17 = **(v12 + 48);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CommandQueue.hpp";
      v22 = 1024;
      v23 = 100;
      _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v19)
  {
    v14 = **(v12 + 48);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      *&buf[4] = "CommandQueue.hpp";
      v22 = 1024;
      v23 = 89;
      v24 = 2048;
      v25 = v20;
      v26 = 2048;
      v27 = 40;
      _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v13 = &unk_284D34E30;
  v13[1] = v9;
  v13[2] = v8;
  v13[3] = v11;
  v13[4] = v10;
  Phase::LockFreeQueueSPSC::CommitBytes(v12, 40);
  atomic_store(0, (v12 + 40));
  return v8;
}

{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  v5 = atomic_load((v4 + 700));
  if (v5 == -1)
  {
LABEL_7:
    v8 = atomic_fetch_add((v4 + 704), 1u) | 0x100000000;
  }

  else
  {
    *buf = v4 + 712;
    buf[8] = 1;
    std::__shared_mutex_base::lock_shared((v4 + 712));
    v6 = v5;
    while (1)
    {
      v7 = *(v4 + 680) + 24 * v5;
      atomic_compare_exchange_strong((v4 + 700), &v6, *(v7 + 16));
      if (v6 == v5)
      {
        break;
      }

      v5 = v6;
      if (v6 == -1)
      {
        if (buf[8] == 1)
        {
          std::__shared_mutex_base::unlock_shared(*buf);
        }

        goto LABEL_7;
      }
    }

    Phase::Handle64::Set(&v20, v5, *(v7 + 20));
    if (buf[8] == 1)
    {
      std::__shared_mutex_base::unlock_shared(*buf);
    }

    v8 = v20;
  }

  v9 = *(a1 + 48);
  v11 = *a2;
  v10 = a2[1];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = **(a1 + 8);
  v20 = 0;
  v19 = 1;
  v13 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v12, 40, &v20, &v19);
  if (!v13)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v17 = **(v12 + 48);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CommandQueue.hpp";
      v22 = 1024;
      v23 = 100;
      _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v19)
  {
    v14 = **(v12 + 48);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      *&buf[4] = "CommandQueue.hpp";
      v22 = 1024;
      v23 = 89;
      v24 = 2048;
      v25 = v20;
      v26 = 2048;
      v27 = 40;
      _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v13 = &unk_284D34E58;
  v13[1] = v9;
  v13[2] = v8;
  v13[3] = v11;
  v13[4] = v10;
  Phase::LockFreeQueueSPSC::CommitBytes(v12, 40);
  atomic_store(0, (v12 + 40));
  return v8;
}

{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  v5 = atomic_load((v4 + 1196));
  if (v5 == -1)
  {
LABEL_7:
    v8 = atomic_fetch_add((v4 + 1200), 1u) | 0x100000000;
  }

  else
  {
    *buf = v4 + 1208;
    buf[8] = 1;
    std::__shared_mutex_base::lock_shared((v4 + 1208));
    v6 = v5;
    while (1)
    {
      v7 = *(v4 + 1176) + 24 * v5;
      atomic_compare_exchange_strong((v4 + 1196), &v6, *(v7 + 16));
      if (v6 == v5)
      {
        break;
      }

      v5 = v6;
      if (v6 == -1)
      {
        if (buf[8] == 1)
        {
          std::__shared_mutex_base::unlock_shared(*buf);
        }

        goto LABEL_7;
      }
    }

    Phase::Handle64::Set(&v20, v5, *(v7 + 20));
    if (buf[8] == 1)
    {
      std::__shared_mutex_base::unlock_shared(*buf);
    }

    v8 = v20;
  }

  v9 = *(a1 + 48);
  v11 = *a2;
  v10 = a2[1];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = **(a1 + 8);
  v20 = 0;
  v19 = 1;
  v13 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v12, 40, &v20, &v19);
  if (!v13)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v17 = **(v12 + 48);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CommandQueue.hpp";
      v22 = 1024;
      v23 = 100;
      _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v19)
  {
    v14 = **(v12 + 48);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      *&buf[4] = "CommandQueue.hpp";
      v22 = 1024;
      v23 = 89;
      v24 = 2048;
      v25 = v20;
      v26 = 2048;
      v27 = 40;
      _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v13 = &unk_284D34E80;
  v13[1] = v9;
  v13[2] = v8;
  v13[3] = v11;
  v13[4] = v10;
  Phase::LockFreeQueueSPSC::CommitBytes(v12, 40);
  atomic_store(0, (v12 + 40));
  return v8;
}

{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  v5 = atomic_load((v4 + 956));
  if (v5 == -1)
  {
LABEL_7:
    v8 = atomic_fetch_add((v4 + 960), 1u) | 0x100000000;
  }

  else
  {
    *buf = v4 + 968;
    buf[8] = 1;
    std::__shared_mutex_base::lock_shared((v4 + 968));
    v6 = v5;
    while (1)
    {
      v7 = *(v4 + 936) + 24 * v5;
      atomic_compare_exchange_strong((v4 + 956), &v6, *(v7 + 16));
      if (v6 == v5)
      {
        break;
      }

      v5 = v6;
      if (v6 == -1)
      {
        if (buf[8] == 1)
        {
          std::__shared_mutex_base::unlock_shared(*buf);
        }

        goto LABEL_7;
      }
    }

    Phase::Handle64::Set(&v20, v5, *(v7 + 20));
    if (buf[8] == 1)
    {
      std::__shared_mutex_base::unlock_shared(*buf);
    }

    v8 = v20;
  }

  v9 = *(a1 + 48);
  v11 = *a2;
  v10 = a2[1];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = **(a1 + 8);
  v20 = 0;
  v19 = 1;
  v13 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v12, 40, &v20, &v19);
  if (!v13)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v17 = **(v12 + 48);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CommandQueue.hpp";
      v22 = 1024;
      v23 = 100;
      _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v19)
  {
    v14 = **(v12 + 48);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      *&buf[4] = "CommandQueue.hpp";
      v22 = 1024;
      v23 = 89;
      v24 = 2048;
      v25 = v20;
      v26 = 2048;
      v27 = 40;
      _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v13 = &unk_284D34EA8;
  v13[1] = v9;
  v13[2] = v8;
  v13[3] = v11;
  v13[4] = v10;
  Phase::LockFreeQueueSPSC::CommitBytes(v12, 40);
  atomic_store(0, (v12 + 40));
  return v8;
}

{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  v5 = atomic_load((v4 + 1692));
  if (v5 == -1)
  {
LABEL_7:
    v8 = atomic_fetch_add((v4 + 1696), 1u) | 0x100000000;
  }

  else
  {
    *buf = v4 + 1704;
    buf[8] = 1;
    std::__shared_mutex_base::lock_shared((v4 + 1704));
    v6 = v5;
    while (1)
    {
      v7 = *(v4 + 1672) + 24 * v5;
      atomic_compare_exchange_strong((v4 + 1692), &v6, *(v7 + 16));
      if (v6 == v5)
      {
        break;
      }

      v5 = v6;
      if (v6 == -1)
      {
        if (buf[8] == 1)
        {
          std::__shared_mutex_base::unlock_shared(*buf);
        }

        goto LABEL_7;
      }
    }

    Phase::Handle64::Set(&v20, v5, *(v7 + 20));
    if (buf[8] == 1)
    {
      std::__shared_mutex_base::unlock_shared(*buf);
    }

    v8 = v20;
  }

  v9 = *(a1 + 48);
  v11 = *a2;
  v10 = a2[1];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = **(a1 + 8);
  v20 = 0;
  v19 = 1;
  v13 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v12, 40, &v20, &v19);
  if (!v13)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v17 = **(v12 + 48);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CommandQueue.hpp";
      v22 = 1024;
      v23 = 100;
      _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v19)
  {
    v14 = **(v12 + 48);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      *&buf[4] = "CommandQueue.hpp";
      v22 = 1024;
      v23 = 89;
      v24 = 2048;
      v25 = v20;
      v26 = 2048;
      v27 = 40;
      _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v13 = &unk_284D34EF8;
  v13[1] = v9;
  v13[2] = v8;
  v13[3] = v11;
  v13[4] = v10;
  Phase::LockFreeQueueSPSC::CommitBytes(v12, 40);
  atomic_store(0, (v12 + 40));
  return v8;
}

void sub_23A40CBDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __cxa_free_exception(v13);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v12);
    __cxa_end_catch();
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    JUMPOUT(0x23A40CAF0);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A40CC44()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x23A40CC10);
}

void sub_23A40CF40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __cxa_free_exception(v13);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v12);
    __cxa_end_catch();
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    JUMPOUT(0x23A40CE54);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A40CFA8()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x23A40CF74);
}

void sub_23A40D2A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __cxa_free_exception(v13);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v12);
    __cxa_end_catch();
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    JUMPOUT(0x23A40D1B8);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A40D30C()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x23A40D2D8);
}

void sub_23A40D608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __cxa_free_exception(v13);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v12);
    __cxa_end_catch();
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    JUMPOUT(0x23A40D51CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A40D670()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x23A40D63CLL);
}

void sub_23A40D96C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __cxa_free_exception(v13);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v12);
    __cxa_end_catch();
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    JUMPOUT(0x23A40D880);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A40D9D4()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x23A40D9A0);
}

void sub_23A40DCD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __cxa_free_exception(v13);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v12);
    __cxa_end_catch();
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    JUMPOUT(0x23A40DBE4);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A40DD38()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x23A40DD04);
}

uint64_t Phase::Geometry::SystemScheduler::AddToDatabase(uint64_t a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  Handle = Phase::details::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64>::AllocateHandle(*(a1 + 48) + 1424);
  v5 = *(a1 + 48);
  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = **(a1 + 8);
  v16 = 0;
  v15 = 1;
  v9 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v8, 40, &v16, &v15);
  if (!v9)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v13 = **(v8 + 48);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "CommandQueue.hpp";
      v19 = 1024;
      v20 = 100;
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v15)
  {
    v10 = **(v8 + 48);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v18 = "CommandQueue.hpp";
      v19 = 1024;
      v20 = 89;
      v21 = 2048;
      v22 = v16;
      v23 = 2048;
      v24 = 40;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v9 = &unk_284D34ED0;
  v9[1] = v5;
  v9[2] = Handle;
  v9[3] = v7;
  v9[4] = v6;
  Phase::LockFreeQueueSPSC::CommitBytes(v8, 40);
  atomic_store(0, (v8 + 40));
  return Handle;
}

void sub_23A40DF9C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v4);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v3);
    __cxa_end_catch();
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    JUMPOUT(0x23A40DEB0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::details::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64>::AllocateHandle(uint64_t a1)
{
  v2 = atomic_load((a1 + 20));
  if (v2 == -1)
  {
    return atomic_fetch_add((a1 + 24), 1u) | 0x100000000;
  }

  v6 = (a1 + 32);
  std::__shared_mutex_base::lock_shared((a1 + 32));
  v3 = v2;
  while (1)
  {
    v4 = *a1 + 24 * v2;
    atomic_compare_exchange_strong((a1 + 20), &v3, *(v4 + 16));
    if (v3 == v2)
    {
      break;
    }

    v2 = v3;
    if (v3 == -1)
    {
      std::__shared_mutex_base::unlock_shared(v6);
      return atomic_fetch_add((a1 + 24), 1u) | 0x100000000;
    }
  }

  Phase::Handle64::Set(&v7, v2, *(v4 + 20));
  std::__shared_mutex_base::unlock_shared(v6);
  return v7;
}

void sub_23A40E0E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23A40E3D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __cxa_free_exception(v13);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v12);
    __cxa_end_catch();
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    JUMPOUT(0x23A40E2E8);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A40E43C()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x23A40E408);
}

void Phase::Geometry::SystemScheduler::AddShapes(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  *&v10 = *(a1 + 48);
  *(&v10 + 1) = a2;
  __dst[1] = 0;
  v12 = 0;
  __dst[0] = 0;
  v3 = a3[1];
  if (v3 != *a3)
  {
    std::vector<long long>::__vallocate[abi:ne200100](__dst, (v3 - *a3) >> 3);
  }

  v4 = **(a1 + 8);
  v14 = 0;
  v13 = 1;
  v5 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v4, 48, &v14, &v13);
  if (!v5)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v8 = **(v4 + 48);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "CommandQueue.hpp";
      v17 = 1024;
      v18 = 100;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v13)
  {
    v6 = **(v4 + 48);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v16 = "CommandQueue.hpp";
      v17 = 1024;
      v18 = 89;
      v19 = 2048;
      v20 = v14;
      v21 = 2048;
      v22 = 48;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v5 = &unk_284D34F20;
  *(v5 + 8) = v10;
  *(v5 + 24) = *__dst;
  *(v5 + 40) = v12;
  __dst[0] = 0;
  __dst[1] = 0;
  v12 = 0;
  Phase::LockFreeQueueSPSC::CommitBytes(v4, 48);
  atomic_store(0, (v4 + 40));
}

void sub_23A40E6D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (a2)
  {
    __cxa_free_exception(v14);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v13);
    __cxa_end_catch();
    JUMPOUT(0x23A40E5E4);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A40E738(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x23A40E700);
}

uint64_t Phase::Geometry::SystemScheduler::Copy(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  Handle = Phase::details::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64>::AllocateHandle(*(a1 + 48) + 1424);
  *&v14 = *(a1 + 48);
  *(&v14 + 1) = a2;
  __p = 0;
  v16 = 0;
  v17 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, *a3, a3[1], (a3[1] - *a3) >> 2);
  v7 = **(a1 + 8);
  v19 = 0;
  v18 = 1;
  v8 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v7, 56, &v19, &v18);
  if (!v8)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v12 = **(v7 + 48);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "CommandQueue.hpp";
      v22 = 1024;
      v23 = 100;
      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v18)
  {
    v9 = **(v7 + 48);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v21 = "CommandQueue.hpp";
      v22 = 1024;
      v23 = 89;
      v24 = 2048;
      v25 = v19;
      v26 = 2048;
      v27 = 56;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v8 = &unk_284D34F48;
  *(v8 + 24) = Handle;
  *(v8 + 8) = v14;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 32) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v8 + 32, __p, v16, (v16 - __p) >> 2);
  Phase::LockFreeQueueSPSC::CommitBytes(v7, 56);
  atomic_store(0, (v7 + 40));
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return Handle;
}

void sub_23A40E9C8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A40E8D0);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A40EA08(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x23A40E9E0);
}

void sub_23A40EA2C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x23A40E9E0);
}

uint64_t Phase::Geometry::SystemScheduler::SetMaterial(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 48);
  v8 = **(a1 + 8);
  v16 = 0;
  v15 = 1;
  v9 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v8, 40, &v16, &v15);
  if (!v9)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v13 = **(v8 + 48);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "CommandQueue.hpp";
      v19 = 1024;
      v20 = 100;
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v15)
  {
    v10 = **(v8 + 48);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v18 = "CommandQueue.hpp";
      v19 = 1024;
      v20 = 89;
      v21 = 2048;
      v22 = v16;
      v23 = 2048;
      v24 = 40;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v9 = &unk_284D34F70;
  v9[1] = v7;
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v8, 40);
  atomic_store(0, (v8 + 40));
  return result;
}

void sub_23A40EC5C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A40EB74);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Geometry::SystemScheduler::SetDefaulSceneMedium(uint64_t result, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = result;
    if (*(result + 16) <= 0)
    {
      v7 = **(result + 24);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v15 = "Commandable.hpp";
        v16 = 1024;
        v17 = 132;
        _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pQueueId >= 0 && pQueueId < mQueueCount is false.", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::domain_error::domain_error[abi:ne200100](exception, "PRECONDITION: pQueueId >= 0 && pQueueId < mQueueCount is false.");
    }

    v4 = **(result + 8);
    v13 = 0;
    v12 = 1;
    v5 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v4, 40, &v13, &v12);
    if (!v5)
    {
      Instance = Phase::Logger::GetInstance(0);
      Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
      v10 = **(v4 + 48);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v15 = "CommandQueue.hpp";
        v16 = 1024;
        v17 = 100;
        _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
      }

      v11 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v11, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    }

    if (v12)
    {
      v6 = **(v4 + 48);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        v15 = "CommandQueue.hpp";
        v16 = 1024;
        v17 = 89;
        v18 = 2048;
        v19 = v13;
        v20 = 2048;
        v21 = 40;
        _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
      }
    }

    *v5 = &unk_284D34F98;
    v5[1] = v2;
    v5[2] = Phase::Geometry::SystemExecutor::SetDefaulSceneMedium;
    v5[3] = 0;
    v5[4] = a2;
    result = Phase::LockFreeQueueSPSC::CommitBytes(v4, 40);
    atomic_store(0, (v4 + 40));
  }

  return result;
}

void sub_23A40EF88(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A40EE04);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Geometry::SystemScheduler::SetDefaultSceneReverbPreset(Phase::Geometry::SystemScheduler *this, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(this + 4) <= 0)
  {
    v8 = **(this + 3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "Commandable.hpp";
      v17 = 1024;
      v18 = 132;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pQueueId >= 0 && pQueueId < mQueueCount is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](exception, "PRECONDITION: pQueueId >= 0 && pQueueId < mQueueCount is false.");
  }

  v4 = **(this + 1);
  v14 = 0;
  v13 = 1;
  v5 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v4, 40, &v14, &v13);
  if (!v5)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v11 = **(v4 + 48);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "CommandQueue.hpp";
      v17 = 1024;
      v18 = 100;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    v12 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v12, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v13)
  {
    v6 = **(v4 + 48);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v16 = "CommandQueue.hpp";
      v17 = 1024;
      v18 = 89;
      v19 = 2048;
      v20 = v14;
      v21 = 2048;
      v22 = 40;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v5 = &unk_284D34FC0;
  v5[1] = this;
  v5[2] = Phase::Geometry::SystemExecutor::SetDefaultSceneReverbPreset;
  v5[3] = 0;
  v5[4] = a2;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v4, 40);
  atomic_store(0, (v4 + 40));
  return result;
}

void sub_23A40F2BC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A40F138);
  }

  _Unwind_Resume(exception_object);
}

void *Phase::Geometry::SystemScheduler::SubmitEnvironmentalMetadata(void *result, uint64_t a2, const void *a3, size_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (a4)
    {
      v7 = result;
      result = malloc_type_aligned_alloc(0x10uLL, a4, 0x3A1D7BF2uLL);
      if (result)
      {
        v8 = result;
        memcpy(result, a3, a4);
        v9 = v7[6];
        v10 = *v7[1];
        v17 = 0;
        v16 = 1;
        v11 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v10, 40, &v17, &v16);
        if (!v11)
        {
          Instance = Phase::Logger::GetInstance(0);
          Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
          v14 = **(v10 + 48);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v19 = "CommandQueue.hpp";
            v20 = 1024;
            v21 = 100;
            _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
        }

        if (v16)
        {
          v12 = **(v10 + 48);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            v19 = "CommandQueue.hpp";
            v20 = 1024;
            v21 = 89;
            v22 = 2048;
            v23 = v17;
            v24 = 2048;
            v25 = 40;
            _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
          }
        }

        *v11 = &unk_284D34FE8;
        v11[1] = v9;
        v11[2] = a2;
        v11[3] = v8;
        v11[4] = a4;
        result = Phase::LockFreeQueueSPSC::CommitBytes(v10, 40);
        atomic_store(0, (v10 + 40));
      }
    }
  }

  return result;
}

void sub_23A40F578(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A40F490);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Geometry::SystemScheduler::AddChild(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 48);
  v6 = **(a1 + 8);
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

  *v7 = &unk_284D35010;
  v7[1] = v5;
  v7[2] = a2;
  v7[3] = a3;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v6, 32);
  atomic_store(0, (v6 + 40));
  return result;
}

void sub_23A40F7E8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A40F704);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Geometry::SystemScheduler::RemoveChild(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 48);
  v6 = **(a1 + 8);
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

  *v7 = &unk_284D35038;
  v7[1] = v5;
  v7[2] = a2;
  v7[3] = a3;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v6, 32);
  atomic_store(0, (v6 + 40));
  return result;
}

void sub_23A40FA58(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A40F974);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Geometry::SystemScheduler::UpdateTransform(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  v12 = a3[1];
  v13 = *a3;
  v5 = **(a1 + 8);
  v15 = 0;
  v14 = 1;
  v6 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v5, 56, &v15, &v14);
  if (!v6)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v10 = **(v5 + 48);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "CommandQueue.hpp";
      v18 = 1024;
      v19 = 100;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v14)
  {
    v7 = **(v5 + 48);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v17 = "CommandQueue.hpp";
      v18 = 1024;
      v19 = 89;
      v20 = 2048;
      v21 = v15;
      v22 = 2048;
      v23 = 56;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v6 = &unk_284D35060;
  *(v6 + 8) = v4;
  *(v6 + 16) = a2;
  *(v6 + 24) = v13;
  *(v6 + 40) = v12;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v5, 56);
  atomic_store(0, (v5 + 40));
  return result;
}

void sub_23A40FCD8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A40FBF4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Geometry::SystemScheduler::ReleaseContext(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  v4 = **(a1 + 8);
  v12 = 0;
  v11 = 1;
  v5 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v4, 24, &v12, &v11);
  if (!v5)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v9 = **(v4 + 48);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "CommandQueue.hpp";
      v15 = 1024;
      v16 = 100;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v11)
  {
    v6 = **(v4 + 48);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v14 = "CommandQueue.hpp";
      v15 = 1024;
      v16 = 89;
      v17 = 2048;
      v18 = v12;
      v19 = 2048;
      v20 = 24;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v5 = &unk_284D35088;
  v5[1] = v3;
  v5[2] = a2;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v4, 24);
  atomic_store(0, (v4 + 40));
  return result;
}

void sub_23A40FF44(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A40FE60);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Geometry::SystemScheduler::ReleaseEnvironmentalMetadataStream(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  v4 = **(a1 + 8);
  v12 = 0;
  v11 = 1;
  v5 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v4, 24, &v12, &v11);
  if (!v5)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v9 = **(v4 + 48);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "CommandQueue.hpp";
      v15 = 1024;
      v16 = 100;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v11)
  {
    v6 = **(v4 + 48);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v14 = "CommandQueue.hpp";
      v15 = 1024;
      v16 = 89;
      v17 = 2048;
      v18 = v12;
      v19 = 2048;
      v20 = 24;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v5 = &unk_284D350B0;
  v5[1] = v3;
  v5[2] = a2;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v4, 24);
  atomic_store(0, (v4 + 40));
  return result;
}

void sub_23A4101B0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A4100CCLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Geometry::SystemScheduler::ReleaseDirectivity(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  v4 = **(a1 + 8);
  v12 = 0;
  v11 = 1;
  v5 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v4, 24, &v12, &v11);
  if (!v5)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v9 = **(v4 + 48);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "CommandQueue.hpp";
      v15 = 1024;
      v16 = 100;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v11)
  {
    v6 = **(v4 + 48);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v14 = "CommandQueue.hpp";
      v15 = 1024;
      v16 = 89;
      v17 = 2048;
      v18 = v12;
      v19 = 2048;
      v20 = 24;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v5 = &unk_284D350D8;
  v5[1] = v3;
  v5[2] = a2;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v4, 24);
  atomic_store(0, (v4 + 40));
  return result;
}

void sub_23A41041C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A410338);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Geometry::SystemScheduler::ReleaseDistanceModel(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  v4 = **(a1 + 8);
  v12 = 0;
  v11 = 1;
  v5 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v4, 24, &v12, &v11);
  if (!v5)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v9 = **(v4 + 48);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "CommandQueue.hpp";
      v15 = 1024;
      v16 = 100;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v11)
  {
    v6 = **(v4 + 48);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v14 = "CommandQueue.hpp";
      v15 = 1024;
      v16 = 89;
      v17 = 2048;
      v18 = v12;
      v19 = 2048;
      v20 = 24;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v5 = &unk_284D35100;
  v5[1] = v3;
  v5[2] = a2;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v4, 24);
  atomic_store(0, (v4 + 40));
  return result;
}

void sub_23A410688(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A4105A4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Geometry::SystemScheduler::ReleaseMedium(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  v4 = **(a1 + 8);
  v12 = 0;
  v11 = 1;
  v5 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v4, 24, &v12, &v11);
  if (!v5)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v9 = **(v4 + 48);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "CommandQueue.hpp";
      v15 = 1024;
      v16 = 100;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v11)
  {
    v6 = **(v4 + 48);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v14 = "CommandQueue.hpp";
      v15 = 1024;
      v16 = 89;
      v17 = 2048;
      v18 = v12;
      v19 = 2048;
      v20 = 24;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v5 = &unk_284D35128;
  v5[1] = v3;
  v5[2] = a2;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v4, 24);
  atomic_store(0, (v4 + 40));
  return result;
}

void sub_23A4108F4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A410810);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Geometry::SystemScheduler::ReleaseMaterial(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  v4 = **(a1 + 8);
  v12 = 0;
  v11 = 1;
  v5 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v4, 24, &v12, &v11);
  if (!v5)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v9 = **(v4 + 48);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "CommandQueue.hpp";
      v15 = 1024;
      v16 = 100;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v11)
  {
    v6 = **(v4 + 48);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v14 = "CommandQueue.hpp";
      v15 = 1024;
      v16 = 89;
      v17 = 2048;
      v18 = v12;
      v19 = 2048;
      v20 = 24;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v5 = &unk_284D35150;
  v5[1] = v3;
  v5[2] = a2;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v4, 24);
  atomic_store(0, (v4 + 40));
  return result;
}

void sub_23A410B60(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A410A7CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Geometry::SystemScheduler::ReleaseShape(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  v4 = **(a1 + 8);
  v12 = 0;
  v11 = 1;
  v5 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v4, 24, &v12, &v11);
  if (!v5)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v9 = **(v4 + 48);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "CommandQueue.hpp";
      v15 = 1024;
      v16 = 100;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v11)
  {
    v6 = **(v4 + 48);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v14 = "CommandQueue.hpp";
      v15 = 1024;
      v16 = 89;
      v17 = 2048;
      v18 = v12;
      v19 = 2048;
      v20 = 24;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v5 = &unk_284D35178;
  v5[1] = v3;
  v5[2] = a2;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v4, 24);
  atomic_store(0, (v4 + 40));
  return result;
}

void sub_23A410DCC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A410CE8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Geometry::SystemScheduler::ReleaseEntity(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  v4 = **(a1 + 8);
  v12 = 0;
  v11 = 1;
  v5 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v4, 24, &v12, &v11);
  if (!v5)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v9 = **(v4 + 48);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "CommandQueue.hpp";
      v15 = 1024;
      v16 = 100;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v11)
  {
    v6 = **(v4 + 48);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v14 = "CommandQueue.hpp";
      v15 = 1024;
      v16 = 89;
      v17 = 2048;
      v18 = v12;
      v19 = 2048;
      v20 = 24;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v5 = &unk_284D351A0;
  v5[1] = v3;
  v5[2] = a2;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v4, 24);
  atomic_store(0, (v4 + 40));
  return result;
}

void sub_23A411038(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A410F54);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Geometry::SystemScheduler::RunFunction(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v12 = a1;
  std::__function::__value_func<void ()(Phase::Geometry::System *)>::__value_func[abi:ne200100](v13, a2);
  v3 = **(a1 + 8);
  v11 = 0;
  v10 = 1;
  v4 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v3, 48, &v11, &v10);
  if (!v4)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v8 = **(v3 + 48);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "CommandQueue.hpp";
      v16 = 1024;
      v17 = 100;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v10)
  {
    v5 = **(v3 + 48);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v15 = "CommandQueue.hpp";
      v16 = 1024;
      v17 = 89;
      v18 = 2048;
      v19 = v11;
      v20 = 2048;
      v21 = 48;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v4 = &unk_284D351C8;
  v4[1] = v12;
  std::__function::__value_func<void ()(Phase::Geometry::System *)>::__value_func[abi:ne200100]((v4 + 2), v13);
  Phase::LockFreeQueueSPSC::CommitBytes(v3, 48);
  atomic_store(0, (v3 + 40));
  return std::__function::__value_func<void ()(Phase::Geometry::System *)>::~__value_func[abi:ne200100](v13);
}

void sub_23A4112C4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A4111D8);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A411320(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x23A4112DCLL);
}

uint64_t Phase::Geometry::SystemScheduler::RunDebugFunction(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v12 = a1;
  std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::__value_func[abi:ne200100](v13, a2);
  v3 = **(a1 + 8);
  v11 = 0;
  v10 = 1;
  v4 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v3, 48, &v11, &v10);
  if (!v4)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v8 = **(v3 + 48);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "CommandQueue.hpp";
      v16 = 1024;
      v17 = 100;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v10)
  {
    v5 = **(v3 + 48);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v15 = "CommandQueue.hpp";
      v16 = 1024;
      v17 = 89;
      v18 = 2048;
      v19 = v11;
      v20 = 2048;
      v21 = 48;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v4 = &unk_284D351F0;
  v4[1] = v12;
  std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::__value_func[abi:ne200100]((v4 + 2), v13);
  Phase::LockFreeQueueSPSC::CommitBytes(v3, 48);
  atomic_store(0, (v3 + 40));
  return std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](v13);
}

void sub_23A41155C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A411470);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A4115B8(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x23A411574);
}

void *Phase::LambdaFunction<Phase::Geometry::SystemScheduler::AddToDatabase(std::shared_ptr<Phase::Geometry::Context> &)::$_0,void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D34DE0;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void Phase::LambdaFunction<Phase::Geometry::SystemScheduler::AddToDatabase(std::shared_ptr<Phase::Geometry::Context> &)::$_0,void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D34DE0;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x23EE864A0);
}

void Phase::LambdaFunction<Phase::Geometry::SystemScheduler::AddToDatabase(std::shared_ptr<Phase::Geometry::Context> &)::$_0,void>::operator()(void *a1)
{
  v3 = a1 + 3;
  v2 = a1[3];
  UniqueSlot = Phase::details::SharedSlotMap<Phase::Geometry::Context,Phase::Handle64>::GetUniqueSlot((a1[1] + 8), a1[2]);
  if (UniqueSlot)
  {
    v5 = *v3;
    *v3 = 0;
    v3[1] = 0;
    v6 = *(UniqueSlot + 8);
    *UniqueSlot = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  __dmb(0xBu);
  *v2 = a1[2];
}

uint64_t Phase::details::SharedSlotMap<Phase::Geometry::Context,Phase::Handle64>::GetUniqueSlot(uint64_t *a1, uint64_t a2)
{
  v3 = *(a1 + 4);
  if (v3 <= a2)
  {
    return 0;
  }

  v5 = a2;
  result = *a1 + 24 * a2;
  if (*(result + 20) != HIDWORD(a2))
  {
    return 0;
  }

  v7 = a1[1];
  if (v7 && *(v7 + 8) >= 1)
  {
    Phase::details::SharedSlotMap<Phase::Geometry::Context,Phase::Handle64>::AllocSlots(v3, &v18);
    if (*(a1 + 4))
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *a1;
        v11 = (*a1 + v8);
        v12 = v18;
        v14 = *v11;
        v13 = v11[1];
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
        }

        v15 = (v12 + v8);
        v16 = *(v12 + v8 + 8);
        *v15 = v14;
        v15[1] = v13;
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        v15[2] = *(v10 + v8 + 16);
        ++v9;
        v8 += 24;
      }

      while (v9 < *(a1 + 4));
    }

    std::__shared_mutex_base::lock((a1 + 4));
    v17 = *a1;
    *a1 = v18;
    v18 = v17;
    std::__shared_mutex_base::unlock((a1 + 4));
    if (*(&v18 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
    }

    return *a1 + 24 * v5;
  }

  return result;
}

void sub_23A411820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *Phase::LambdaFunction<Phase::Geometry::SystemScheduler::AddToDatabase(std::shared_ptr<Phase::Geometry::EnvironmentalMetadataStream> &)::$_0,void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D34E08;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void Phase::LambdaFunction<Phase::Geometry::SystemScheduler::AddToDatabase(std::shared_ptr<Phase::Geometry::EnvironmentalMetadataStream> &)::$_0,void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D34E08;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x23EE864A0);
}

void Phase::LambdaFunction<Phase::Geometry::SystemScheduler::AddToDatabase(std::shared_ptr<Phase::Geometry::EnvironmentalMetadataStream> &)::$_0,void>::operator()(void *a1)
{
  v3 = a1 + 3;
  v2 = a1[3];
  UniqueSlot = Phase::details::SharedSlotMap<Phase::Geometry::EnvironmentalMetadataStream,Phase::Handle64>::GetUniqueSlot((a1[1] + 224), a1[2]);
  if (UniqueSlot)
  {
    v5 = *v3;
    *v3 = 0;
    v3[1] = 0;
    v6 = *(UniqueSlot + 8);
    *UniqueSlot = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  __dmb(0xBu);
  *v2 = a1[2];
}

uint64_t Phase::details::SharedSlotMap<Phase::Geometry::EnvironmentalMetadataStream,Phase::Handle64>::GetUniqueSlot(uint64_t *a1, uint64_t a2)
{
  v3 = *(a1 + 4);
  if (v3 <= a2)
  {
    return 0;
  }

  v5 = a2;
  result = *a1 + 24 * a2;
  if (*(result + 20) != HIDWORD(a2))
  {
    return 0;
  }

  v7 = a1[1];
  if (v7 && *(v7 + 8) >= 1)
  {
    Phase::details::SharedSlotMap<Phase::Geometry::EnvironmentalMetadataStream,Phase::Handle64>::AllocSlots(v3, &v18);
    if (*(a1 + 4))
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *a1;
        v11 = (*a1 + v8);
        v12 = v18;
        v14 = *v11;
        v13 = v11[1];
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
        }

        v15 = (v12 + v8);
        v16 = *(v12 + v8 + 8);
        *v15 = v14;
        v15[1] = v13;
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        v15[2] = *(v10 + v8 + 16);
        ++v9;
        v8 += 24;
      }

      while (v9 < *(a1 + 4));
    }

    std::__shared_mutex_base::lock((a1 + 4));
    v17 = *a1;
    *a1 = v18;
    v18 = v17;
    std::__shared_mutex_base::unlock((a1 + 4));
    if (*(&v18 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
    }

    return *a1 + 24 * v5;
  }

  return result;
}

void sub_23A411A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *Phase::LambdaFunction<Phase::Geometry::SystemScheduler::AddToDatabase(std::shared_ptr<Phase::Geometry::Directivity> &)::$_0,void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D34E30;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void Phase::LambdaFunction<Phase::Geometry::SystemScheduler::AddToDatabase(std::shared_ptr<Phase::Geometry::Directivity> &)::$_0,void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D34E30;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x23EE864A0);
}

void Phase::LambdaFunction<Phase::Geometry::SystemScheduler::AddToDatabase(std::shared_ptr<Phase::Geometry::Directivity> &)::$_0,void>::operator()(void *a1)
{
  v3 = a1 + 3;
  v2 = a1[3];
  UniqueSlot = Phase::details::SharedSlotMap<Phase::Geometry::Directivity,Phase::Handle64>::GetUniqueSlot((a1[1] + 432), a1[2]);
  if (UniqueSlot)
  {
    v5 = *v3;
    *v3 = 0;
    v3[1] = 0;
    v6 = *(UniqueSlot + 8);
    *UniqueSlot = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  __dmb(0xBu);
  *(v2 + 8) = a1[2];
}

uint64_t Phase::details::SharedSlotMap<Phase::Geometry::Directivity,Phase::Handle64>::GetUniqueSlot(uint64_t *a1, uint64_t a2)
{
  v3 = *(a1 + 4);
  if (v3 <= a2)
  {
    return 0;
  }

  v5 = a2;
  result = *a1 + 24 * a2;
  if (*(result + 20) != HIDWORD(a2))
  {
    return 0;
  }

  v7 = a1[1];
  if (v7 && *(v7 + 8) >= 1)
  {
    Phase::details::SharedSlotMap<Phase::Geometry::Directivity,Phase::Handle64>::AllocSlots(v3, &v18);
    if (*(a1 + 4))
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *a1;
        v11 = (*a1 + v8);
        v12 = v18;
        v14 = *v11;
        v13 = v11[1];
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
        }

        v15 = (v12 + v8);
        v16 = *(v12 + v8 + 8);
        *v15 = v14;
        v15[1] = v13;
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        v15[2] = *(v10 + v8 + 16);
        ++v9;
        v8 += 24;
      }

      while (v9 < *(a1 + 4));
    }

    std::__shared_mutex_base::lock((a1 + 4));
    v17 = *a1;
    *a1 = v18;
    v18 = v17;
    std::__shared_mutex_base::unlock((a1 + 4));
    if (*(&v18 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
    }

    return *a1 + 24 * v5;
  }

  return result;
}

void sub_23A411D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *Phase::LambdaFunction<Phase::Geometry::SystemScheduler::AddToDatabase(std::shared_ptr<Phase::Geometry::DistanceModel> &)::$_0,void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D34E58;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void Phase::LambdaFunction<Phase::Geometry::SystemScheduler::AddToDatabase(std::shared_ptr<Phase::Geometry::DistanceModel> &)::$_0,void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D34E58;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x23EE864A0);
}

void Phase::LambdaFunction<Phase::Geometry::SystemScheduler::AddToDatabase(std::shared_ptr<Phase::Geometry::DistanceModel> &)::$_0,void>::operator()(void *a1)
{
  v3 = a1 + 3;
  v2 = a1[3];
  UniqueSlot = Phase::details::SharedSlotMap<Phase::Geometry::DistanceModel,Phase::Handle64>::GetUniqueSlot((a1[1] + 680), a1[2]);
  if (UniqueSlot)
  {
    v5 = *v3;
    *v3 = 0;
    v3[1] = 0;
    v6 = *(UniqueSlot + 8);
    *UniqueSlot = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  __dmb(0xBu);
  *(v2 + 8) = a1[2];
}

uint64_t Phase::details::SharedSlotMap<Phase::Geometry::DistanceModel,Phase::Handle64>::GetUniqueSlot(uint64_t *a1, uint64_t a2)
{
  v3 = *(a1 + 4);
  if (v3 <= a2)
  {
    return 0;
  }

  v5 = a2;
  result = *a1 + 24 * a2;
  if (*(result + 20) != HIDWORD(a2))
  {
    return 0;
  }

  v7 = a1[1];
  if (v7 && *(v7 + 8) >= 1)
  {
    Phase::details::SharedSlotMap<Phase::Geometry::DistanceModel,Phase::Handle64>::AllocSlots(v3, &v18);
    if (*(a1 + 4))
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *a1;
        v11 = (*a1 + v8);
        v12 = v18;
        v14 = *v11;
        v13 = v11[1];
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
        }

        v15 = (v12 + v8);
        v16 = *(v12 + v8 + 8);
        *v15 = v14;
        v15[1] = v13;
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        v15[2] = *(v10 + v8 + 16);
        ++v9;
        v8 += 24;
      }

      while (v9 < *(a1 + 4));
    }

    std::__shared_mutex_base::lock((a1 + 4));
    v17 = *a1;
    *a1 = v18;
    v18 = v17;
    std::__shared_mutex_base::unlock((a1 + 4));
    if (*(&v18 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
    }

    return *a1 + 24 * v5;
  }

  return result;
}

void sub_23A411F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *Phase::LambdaFunction<Phase::Geometry::SystemScheduler::AddToDatabase(std::shared_ptr<Phase::Geometry::Material> &)::$_0,void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D34E80;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void Phase::LambdaFunction<Phase::Geometry::SystemScheduler::AddToDatabase(std::shared_ptr<Phase::Geometry::Material> &)::$_0,void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D34E80;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x23EE864A0);
}

void Phase::LambdaFunction<Phase::Geometry::SystemScheduler::AddToDatabase(std::shared_ptr<Phase::Geometry::Material> &)::$_0,void>::operator()(void *a1)
{
  v3 = a1 + 3;
  v2 = a1[3];
  UniqueSlot = Phase::details::SharedSlotMap<Phase::Geometry::Material,Phase::Handle64>::GetUniqueSlot(a1[1] + 1176, a1[2]);
  if (UniqueSlot)
  {
    v5 = *v3;
    *v3 = 0;
    v3[1] = 0;
    v6 = *(UniqueSlot + 8);
    *UniqueSlot = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  __dmb(0xBu);
  *(v2 + 8) = a1[2];
}

void *Phase::LambdaFunction<Phase::Geometry::SystemScheduler::AddToDatabase(std::shared_ptr<Phase::Geometry::Medium> &)::$_0,void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D34EA8;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void Phase::LambdaFunction<Phase::Geometry::SystemScheduler::AddToDatabase(std::shared_ptr<Phase::Geometry::Medium> &)::$_0,void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D34EA8;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x23EE864A0);
}

void Phase::LambdaFunction<Phase::Geometry::SystemScheduler::AddToDatabase(std::shared_ptr<Phase::Geometry::Medium> &)::$_0,void>::operator()(void *a1)
{
  v3 = a1 + 3;
  v2 = a1[3];
  UniqueSlot = Phase::details::SharedSlotMap<Phase::Geometry::Medium,Phase::Handle64>::GetUniqueSlot((a1[1] + 936), a1[2]);
  if (UniqueSlot)
  {
    v5 = *v3;
    *v3 = 0;
    v3[1] = 0;
    v6 = *(UniqueSlot + 8);
    *UniqueSlot = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  __dmb(0xBu);
  *(v2 + 8) = a1[2];
}

uint64_t Phase::details::SharedSlotMap<Phase::Geometry::Medium,Phase::Handle64>::GetUniqueSlot(uint64_t *a1, uint64_t a2)
{
  v3 = *(a1 + 4);
  if (v3 <= a2)
  {
    return 0;
  }

  v5 = a2;
  result = *a1 + 24 * a2;
  if (*(result + 20) != HIDWORD(a2))
  {
    return 0;
  }

  v7 = a1[1];
  if (v7 && *(v7 + 8) >= 1)
  {
    Phase::details::SharedSlotMap<Phase::Geometry::Medium,Phase::Handle64>::AllocSlots(v3, &v18);
    if (*(a1 + 4))
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *a1;
        v11 = (*a1 + v8);
        v12 = v18;
        v14 = *v11;
        v13 = v11[1];
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
        }

        v15 = (v12 + v8);
        v16 = *(v12 + v8 + 8);
        *v15 = v14;
        v15[1] = v13;
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        v15[2] = *(v10 + v8 + 16);
        ++v9;
        v8 += 24;
      }

      while (v9 < *(a1 + 4));
    }

    std::__shared_mutex_base::lock((a1 + 4));
    v17 = *a1;
    *a1 = v18;
    v18 = v17;
    std::__shared_mutex_base::unlock((a1 + 4));
    if (*(&v18 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
    }

    return *a1 + 24 * v5;
  }

  return result;
}

void sub_23A412300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *Phase::LambdaFunction<Phase::Geometry::SystemScheduler::AddToDatabase(std::shared_ptr<Phase::Geometry::Shape> &)::$_0,void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D34ED0;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void Phase::LambdaFunction<Phase::Geometry::SystemScheduler::AddToDatabase(std::shared_ptr<Phase::Geometry::Shape> &)::$_0,void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D34ED0;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x23EE864A0);
}

void Phase::LambdaFunction<Phase::Geometry::SystemScheduler::AddToDatabase(std::shared_ptr<Phase::Geometry::Shape> &)::$_0,void>::operator()(void *a1)
{
  v3 = a1 + 3;
  v2 = a1[3];
  UniqueSlot = Phase::details::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64>::GetUniqueSlot(a1[1] + 1424, a1[2]);
  if (UniqueSlot)
  {
    v5 = *v3;
    *v3 = 0;
    v3[1] = 0;
    v6 = *(UniqueSlot + 8);
    *UniqueSlot = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  __dmb(0xBu);
  *(v2 + 8) = a1[2];
}

void *Phase::LambdaFunction<Phase::Geometry::SystemScheduler::AddToDatabase(std::shared_ptr<Phase::Geometry::Entity> &)::$_0,void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D34EF8;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void Phase::LambdaFunction<Phase::Geometry::SystemScheduler::AddToDatabase(std::shared_ptr<Phase::Geometry::Entity> &)::$_0,void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D34EF8;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x23EE864A0);
}

void Phase::LambdaFunction<Phase::Geometry::SystemScheduler::AddToDatabase(std::shared_ptr<Phase::Geometry::Entity> &)::$_0,void>::operator()(void *a1)
{
  v3 = a1 + 3;
  v2 = a1[3];
  UniqueSlot = Phase::details::SharedSlotMap<Phase::Geometry::Entity,Phase::Handle64>::GetUniqueSlot(a1[1] + 1672, a1[2]);
  if (UniqueSlot)
  {
    v5 = *v3;
    *v3 = 0;
    v3[1] = 0;
    v6 = *(UniqueSlot + 8);
    *UniqueSlot = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  __dmb(0xBu);
  *(v2 + 8) = a1[2];
}

void *Phase::LambdaFunction<Phase::Geometry::SystemScheduler::AddShapes(Phase::Handle64,std::vector<Phase::Handle64> const&)::$_0,void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D34F20;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void Phase::LambdaFunction<Phase::Geometry::SystemScheduler::AddShapes(Phase::Handle64,std::vector<Phase::Handle64> const&)::$_0,void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D34F20;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x23EE864A0);
}

void Phase::LambdaFunction<Phase::Geometry::SystemScheduler::AddShapes(Phase::Handle64,std::vector<Phase::Handle64> const&)::$_0,void>::operator()(void *a1)
{
  v2 = a1[2];
  v10 = a1[1] + 1672;
  UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA = _ZN5Phase7details13SharedSlotMapINS_8Geometry6EntityENS_8Handle64EE13GetSlotToEditIRZNS_13SharedSlotMapIS3_S4_NS2_13EntityFactoryEE9GetUniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA_(v10, v2, &v10);
  if (UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA)
  {
    v4 = *UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA;
    if (*UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA)
    {
      v6 = a1[3];
      for (i = a1[4]; v6 != i; ++v6)
      {
        v7 = a1[1];
        v8 = *v6;
        if (*(v7 + 1440) > *v6)
        {
          v9 = *(v7 + 1424) + 24 * v8;
          if (*(v9 + 20) == HIDWORD(v8))
          {
            if (*v9)
            {
              v10 = *v6;
              std::vector<long>::push_back[abi:ne200100]((v4 + 120), &v10);
              i = a1[4];
            }
          }
        }
      }
    }
  }
}

void *Phase::LambdaFunction<Phase::Geometry::SystemScheduler::Copy(Phase::Handle64,std::vector<unsigned int> const&)::$_0 const,void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D34F48;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  return a1;
}

void Phase::LambdaFunction<Phase::Geometry::SystemScheduler::Copy(Phase::Handle64,std::vector<unsigned int> const&)::$_0 const,void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D34F48;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x23EE864A0);
}

void Phase::LambdaFunction<Phase::Geometry::SystemScheduler::Copy(Phase::Handle64,std::vector<unsigned int> const&)::$_0 const,void>::operator()(void *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  v2 = a1[2];
  v4 = (v3 + 1424);
  if (*(v3 + 1440) > v2 && (v5 = *v4 + 24 * v2, *(v5 + 20) == HIDWORD(v2)) && (v6 = *v5) != 0)
  {
    memset(v18, 0, sizeof(v18));
    v19 = 1065353216;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v20, a1[4], a1[5], (a1[5] - a1[4]) >> 2);
    v23 = 9;
    Phase::UnorderedStringMap<Phase::OptionsValue>::Set(v18, &Phase::Geometry::ShapeOptions::ForcedCopyTags, &v20);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v20);
    Phase::Geometry::ShapeFactory::Create(a1[1] + 1632, v6, v18, &v20);
    UniqueSlot = Phase::details::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64>::GetUniqueSlot(a1[1] + 1424, a1[3]);
    if (UniqueSlot)
    {
      v9 = v20;
      v8 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = UniqueSlot[1];
      *UniqueSlot = v9;
      UniqueSlot[1] = v8;
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }
    }

    *(v20 + 8) = a1[3];
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::~__hash_table(v18);
  }

  else
  {
    v11 = Phase::details::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64>::GetUniqueSlot(v4, v2);
    if (v11)
    {
      v12 = v11;
      ++*(v11 + 20);
      v13 = *(v11 + 8);
      *v12 = 0;
      *(v12 + 8) = 0;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v14 = atomic_load((v3 + 1444));
      *(v12 + 16) = v14;
      v15 = v14;
      atomic_compare_exchange_strong((v3 + 1444), &v15, v2);
      if (v15 != v14)
      {
        v16 = v15;
        do
        {
          *(v12 + 16) = v15;
          atomic_compare_exchange_strong((v3 + 1444), &v16, v2);
          v17 = v16 == v15;
          v15 = v16;
        }

        while (!v17);
      }
    }
  }
}

void sub_23A412954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::~__hash_table(&a9);
  _Unwind_Resume(a1);
}

uint64_t _ZN5Phase7details13SharedSlotMapINS_8Geometry5ShapeENS_8Handle64EE13GetSlotToEditIRZNS_13SharedSlotMapIS3_S4_NS2_12ShapeFactoryEE9GetUniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  UniqueSlot = Phase::details::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64>::GetUniqueSlot(a1, a2);
  v5 = UniqueSlot;
  if (UniqueSlot)
  {
    v6 = *(UniqueSlot + 8);
    if (v6)
    {
      if (*(v6 + 8) >= 1)
      {
        v7 = *(*a3 + 200);
        if (!v7)
        {
          std::terminate();
        }

        v8 = *v5;
        Phase::Geometry::ShapeFactory::Create(v7, *v5, 0, &v13);
        v9 = v13;
        if (v13)
        {
          *(v13 + 8) = *(v8 + 1);
        }

        v10 = v14;
        v13 = 0;
        v14 = 0;
        v11 = *(v5 + 8);
        *v5 = v9;
        *(v5 + 8) = v10;
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          }
        }
      }
    }
  }

  return v5;
}

uint64_t Phase::LambdaFunction<Phase::Geometry::SystemScheduler::SetMaterial(Phase::Handle64,unsigned long,Phase::Handle64)::$_0 const,void>::operator()(void *a1)
{
  v2 = a1[2];
  v6 = a1[1] + 1424;
  result = _ZN5Phase7details13SharedSlotMapINS_8Geometry5ShapeENS_8Handle64EE13GetSlotToEditIRZNS_13SharedSlotMapIS3_S4_NS2_12ShapeFactoryEE9GetUniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA_(v6, v2, &v6);
  if (result && *result)
  {
    v4 = a1[3];
    v5 = *(**(*result + 144) + 16 * *(*result + 152));
    if (v5[3] > v4)
    {
      *(v5[1] + v5[4] * v4) = a1[4];
    }
  }

  return result;
}

uint64_t Phase::LambdaFunction<BOOL Phase::Commandable<128,Phase::LockFreeQueueMPSC>::CallAsync<Phase::Geometry::SystemExecutor,void,Phase::Handle64>(int,void (Phase::Geometry::SystemExecutor::*)(Phase::Handle64),Phase::Handle64)::{lambda(void)#1},void>::operator()(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3, a1[4]);
}

uint64_t Phase::LambdaFunction<BOOL Phase::Commandable<128,Phase::LockFreeQueueMPSC>::CallAsync<Phase::Geometry::SystemExecutor,void,unsigned long long>(int,void (Phase::Geometry::SystemExecutor::*)(unsigned long long),unsigned long long)::{lambda(void)#1},void>::operator()(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3, a1[4]);
}

void *Phase::LambdaFunction<Phase::Geometry::SystemScheduler::SubmitEnvironmentalMetadata(Phase::Handle64,void *,unsigned long)::$_0,void>::operator()(void *a1)
{
  v2 = a1[1];
  result = Phase::details::SharedSlotMap<Phase::Geometry::EnvironmentalMetadataStream,Phase::Handle64>::GetUniqueSlot((v2 + 224), a1[2]);
  if (result)
  {
    v4 = result[1];
    if (v4 && *(v4 + 8) >= 1)
    {
      if (*(v2 + 424))
      {
        Phase::Geometry::EnvironmentalMetadataStreamFactory::Duplicate();
      }

      std::terminate();
    }

    if (*result)
    {
      v5 = **(*result + 32);
      if (v5)
      {
        v6 = a1[4];
        *(v5 + 16) = a1[3];
        *(v5 + 24) = v6;
      }
    }
  }

  return result;
}

void Phase::LambdaFunction<Phase::Geometry::SystemScheduler::AddChild(Phase::Handle64,Phase::Handle64)::$_0 const,void>::operator()(void *a1)
{
  v2 = a1[2];
  v11 = a1[1] + 1672;
  UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA = _ZN5Phase7details13SharedSlotMapINS_8Geometry6EntityENS_8Handle64EE13GetSlotToEditIRZNS_13SharedSlotMapIS3_S4_NS2_13EntityFactoryEE9GetUniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA_(v11, v2, &v11);
  if (UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA)
  {
    v4 = *UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA;
  }

  else
  {
    v4 = 0;
  }

  v5 = a1[3];
  v11 = a1[1] + 1672;
  v6 = _ZN5Phase7details13SharedSlotMapINS_8Geometry6EntityENS_8Handle64EE13GetSlotToEditIRZNS_13SharedSlotMapIS3_S4_NS2_13EntityFactoryEE9GetUniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA_(v11, v5, &v11);
  if (v6)
  {
    if (v4)
    {
      v7 = *v6;
      if (*v6)
      {
        v8 = *(v7 + 88);
        if (v8)
        {
          v11 = a1[1] + 1672;
          v9 = _ZN5Phase7details13SharedSlotMapINS_8Geometry6EntityENS_8Handle64EE13GetSlotToEditIRZNS_13SharedSlotMapIS3_S4_NS2_13EntityFactoryEE9GetUniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA_(v11, v8, &v11);
          if (v9 && (v10 = *v9) != 0)
          {
            Phase::Geometry::Entity::RemoveChild(v10, v7);
            if (*(v7 + 88))
            {
              return;
            }
          }

          else
          {
            *(v7 + 88) = 0;
          }

          std::vector<long>::push_back[abi:ne200100]((v4 + 96), (v7 + 8));
          *(v7 + 88) = *(v4 + 8);
          *(v7 + 80) = 1;
          *(a1[1] + 2704) = -1;
        }

        else
        {
          std::vector<long>::push_back[abi:ne200100]((v4 + 96), (v7 + 8));
          *(v7 + 88) = *(v4 + 8);
          *(v7 + 80) = 1;
          *(a1[1] + 2688) = -1;
        }
      }
    }
  }
}

uint64_t *Phase::LambdaFunction<Phase::Geometry::SystemScheduler::RemoveChild(Phase::Handle64,Phase::Handle64)::$_0 const,void>::operator()(void *a1)
{
  v2 = a1[2];
  v7 = a1[1] + 1672;
  UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA = _ZN5Phase7details13SharedSlotMapINS_8Geometry6EntityENS_8Handle64EE13GetSlotToEditIRZNS_13SharedSlotMapIS3_S4_NS2_13EntityFactoryEE9GetUniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA_(v7, v2, &v7);
  if (UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA)
  {
    v4 = *UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA;
  }

  else
  {
    v4 = 0;
  }

  v5 = a1[3];
  v7 = a1[1] + 1672;
  result = _ZN5Phase7details13SharedSlotMapINS_8Geometry6EntityENS_8Handle64EE13GetSlotToEditIRZNS_13SharedSlotMapIS3_S4_NS2_13EntityFactoryEE9GetUniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA_(v7, v5, &v7);
  if (result && v4 && *result)
  {
    result = Phase::Geometry::Entity::RemoveChild(v4, *result);
    if (result)
    {
      *(a1[1] + 2696) = -1;
    }
  }

  return result;
}

float Phase::LambdaFunction<Phase::Geometry::SystemScheduler::UpdateTransform(Phase::Handle64,Phase::Affine<float> const&)::$_0 const,void>::operator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  v6 = *(a1 + 8) + 1672;
  UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA = _ZN5Phase7details13SharedSlotMapINS_8Geometry6EntityENS_8Handle64EE13GetSlotToEditIRZNS_13SharedSlotMapIS3_S4_NS2_13EntityFactoryEE9GetUniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA_(v6, v2, &v6);
  if (UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA)
  {
    v5 = *UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA;
    if (*UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA)
    {
      *(v5 + 16) = *(a1 + 24);
      *(v5 + 20) = *(a1 + 28);
      *(v5 + 24) = *(a1 + 32);
      *(v5 + 28) = *(a1 + 36);
      *(v5 + 32) = *(a1 + 40);
      *(v5 + 36) = *(a1 + 44);
      *(v5 + 40) = *(a1 + 48);
      result = *(a1 + 52);
      *(v5 + 44) = result;
      *(v5 + 80) = 1;
    }
  }

  return result;
}

void Phase::LambdaFunction<Phase::Geometry::SystemScheduler::ReleaseContext(Phase::Handle64)::$_0,void>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  UniqueSlot = Phase::details::SharedSlotMap<Phase::Geometry::Context,Phase::Handle64>::GetUniqueSlot((v2 + 8), v1);
  if (UniqueSlot)
  {
    v4 = UniqueSlot;
    ++*(UniqueSlot + 20);
    v5 = *(UniqueSlot + 8);
    *v4 = 0;
    *(v4 + 8) = 0;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v6 = atomic_load((v2 + 28));
    *(v4 + 16) = v6;
    v7 = v6;
    atomic_compare_exchange_strong((v2 + 28), &v7, v1);
    if (v7 != v6)
    {
      v8 = v7;
      do
      {
        *(v4 + 16) = v7;
        atomic_compare_exchange_strong((v2 + 28), &v8, v1);
        v9 = v8 == v7;
        v7 = v8;
      }

      while (!v9);
    }
  }
}

void Phase::LambdaFunction<Phase::Geometry::SystemScheduler::ReleaseEnvironmentalMetadataStream(Phase::Handle64)::$_0,void>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  UniqueSlot = Phase::details::SharedSlotMap<Phase::Geometry::EnvironmentalMetadataStream,Phase::Handle64>::GetUniqueSlot((v2 + 224), v1);
  if (UniqueSlot)
  {
    v4 = UniqueSlot;
    ++*(UniqueSlot + 20);
    v5 = *(UniqueSlot + 8);
    *v4 = 0;
    *(v4 + 8) = 0;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v6 = atomic_load((v2 + 244));
    *(v4 + 16) = v6;
    v7 = v6;
    atomic_compare_exchange_strong((v2 + 244), &v7, v1);
    if (v7 != v6)
    {
      v8 = v7;
      do
      {
        *(v4 + 16) = v7;
        atomic_compare_exchange_strong((v2 + 244), &v8, v1);
        v9 = v8 == v7;
        v7 = v8;
      }

      while (!v9);
    }
  }
}

void Phase::LambdaFunction<Phase::Geometry::SystemScheduler::ReleaseDirectivity(Phase::Handle64)::$_0,void>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  UniqueSlot = Phase::details::SharedSlotMap<Phase::Geometry::Directivity,Phase::Handle64>::GetUniqueSlot((v2 + 432), v1);
  if (UniqueSlot)
  {
    v4 = UniqueSlot;
    ++*(UniqueSlot + 20);
    v5 = *(UniqueSlot + 8);
    *v4 = 0;
    *(v4 + 8) = 0;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v6 = atomic_load((v2 + 452));
    *(v4 + 16) = v6;
    v7 = v6;
    atomic_compare_exchange_strong((v2 + 452), &v7, v1);
    if (v7 != v6)
    {
      v8 = v7;
      do
      {
        *(v4 + 16) = v7;
        atomic_compare_exchange_strong((v2 + 452), &v8, v1);
        v9 = v8 == v7;
        v7 = v8;
      }

      while (!v9);
    }
  }
}

void Phase::LambdaFunction<Phase::Geometry::SystemScheduler::ReleaseDistanceModel(Phase::Handle64)::$_0,void>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  UniqueSlot = Phase::details::SharedSlotMap<Phase::Geometry::DistanceModel,Phase::Handle64>::GetUniqueSlot((v2 + 680), v1);
  if (UniqueSlot)
  {
    v4 = UniqueSlot;
    ++*(UniqueSlot + 20);
    v5 = *(UniqueSlot + 8);
    *v4 = 0;
    *(v4 + 8) = 0;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v6 = atomic_load((v2 + 700));
    *(v4 + 16) = v6;
    v7 = v6;
    atomic_compare_exchange_strong((v2 + 700), &v7, v1);
    if (v7 != v6)
    {
      v8 = v7;
      do
      {
        *(v4 + 16) = v7;
        atomic_compare_exchange_strong((v2 + 700), &v8, v1);
        v9 = v8 == v7;
        v7 = v8;
      }

      while (!v9);
    }
  }
}

void Phase::LambdaFunction<Phase::Geometry::SystemScheduler::ReleaseMedium(Phase::Handle64)::$_0,void>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  UniqueSlot = Phase::details::SharedSlotMap<Phase::Geometry::Medium,Phase::Handle64>::GetUniqueSlot((v2 + 936), v1);
  if (UniqueSlot)
  {
    v4 = UniqueSlot;
    ++*(UniqueSlot + 20);
    v5 = *(UniqueSlot + 8);
    *v4 = 0;
    *(v4 + 8) = 0;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v6 = atomic_load((v2 + 956));
    *(v4 + 16) = v6;
    v7 = v6;
    atomic_compare_exchange_strong((v2 + 956), &v7, v1);
    if (v7 != v6)
    {
      v8 = v7;
      do
      {
        *(v4 + 16) = v7;
        atomic_compare_exchange_strong((v2 + 956), &v8, v1);
        v9 = v8 == v7;
        v7 = v8;
      }

      while (!v9);
    }
  }
}

void Phase::LambdaFunction<Phase::Geometry::SystemScheduler::ReleaseShape(Phase::Handle64)::$_0,void>::operator()(uint64_t a1)
{
  Phase::details::SharedSlotMap<Phase::Geometry::Shape,Phase::Handle64>::ReleaseAndBlockSlot(*(a1 + 8) + 1424, *(a1 + 16));

  Phase::Geometry::System::AddNewReleaseRequest();
}

void Phase::LambdaFunction<Phase::Geometry::SystemScheduler::ReleaseEntity(Phase::Handle64)::$_0,void>::operator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  v17 = *(a1 + 8) + 1672;
  UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA = _ZN5Phase7details13SharedSlotMapINS_8Geometry6EntityENS_8Handle64EE13GetSlotToEditIRZNS_13SharedSlotMapIS3_S4_NS2_13EntityFactoryEE9GetUniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA_(v17, v2, &v17);
  if (UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA)
  {
    v4 = *UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA;
    if (*UniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA)
    {
      v5 = *(v4 + 88);
      if (v5)
      {
        v17 = *(a1 + 8) + 1672;
        v6 = _ZN5Phase7details13SharedSlotMapINS_8Geometry6EntityENS_8Handle64EE13GetSlotToEditIRZNS_13SharedSlotMapIS3_S4_NS2_13EntityFactoryEE9GetUniqueES4_EUlRT_E_EEPNS_18SharedSlotMapStateIS3_S4_E4SlotES4_OSA_(v17, v5, &v17);
        if (v6)
        {
          v7 = *v6;
          if (v7)
          {
            if (Phase::Geometry::Entity::RemoveChild(v7, v4))
            {
              *(*(a1 + 8) + 2696) = -1;
            }
          }
        }
      }
    }
  }

  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  UniqueSlot = Phase::details::SharedSlotMap<Phase::Geometry::Entity,Phase::Handle64>::GetUniqueSlot(v9 + 1672, v8);
  if (UniqueSlot)
  {
    v11 = UniqueSlot;
    ++*(UniqueSlot + 20);
    v12 = *(UniqueSlot + 8);
    *v11 = 0;
    *(v11 + 8) = 0;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    v13 = atomic_load((v9 + 1692));
    *(v11 + 16) = v13;
    v14 = v13;
    atomic_compare_exchange_strong((v9 + 1692), &v14, v8);
    if (v14 != v13)
    {
      v15 = v14;
      do
      {
        *(v11 + 16) = v14;
        atomic_compare_exchange_strong((v9 + 1692), &v15, v8);
        v16 = v15 == v14;
        v14 = v15;
      }

      while (!v16);
    }
  }
}

uint64_t std::__function::__value_func<void ()(Phase::Geometry::System *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *Phase::LambdaFunction<Phase::Geometry::SystemScheduler::RunFunction(std::function<void ()(Phase::Geometry::System *)> const&)::$_0,void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D351C8;
  std::__function::__value_func<void ()(Phase::Geometry::System *)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

void Phase::LambdaFunction<Phase::Geometry::SystemScheduler::RunFunction(std::function<void ()(Phase::Geometry::System *)> const&)::$_0,void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D351C8;
  std::__function::__value_func<void ()(Phase::Geometry::System *)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::LambdaFunction<Phase::Geometry::SystemScheduler::RunFunction(std::function<void ()(Phase::Geometry::System *)> const&)::$_0,void>::operator()(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 48);
  v2 = *(a1 + 40);
  v4 = v1;
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *Phase::LambdaFunction<Phase::Geometry::SystemScheduler::RunDebugFunction(std::function<void ()(Phase::Geometry::SystemDebugger *)> const&)::$_0,void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D351F0;
  std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

void Phase::LambdaFunction<Phase::Geometry::SystemScheduler::RunDebugFunction(std::function<void ()(Phase::Geometry::SystemDebugger *)> const&)::$_0,void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D351F0;
  std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::LambdaFunction<Phase::Geometry::SystemScheduler::RunDebugFunction(std::function<void ()(Phase::Geometry::SystemDebugger *)> const&)::$_0,void>::operator()(uint64_t a1)
{
  result = Phase::Geometry::SystemDebugger::GetFromSystem(*(*(a1 + 8) + 48));
  if (result)
  {
    v3 = result;
    v4 = *(a1 + 40);
    v5 = v3;
    if (!v4)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    return (*(*v4 + 48))(v4, &v5);
  }

  return result;
}

void Phase::Geometry::SystemState::Init(Phase::Geometry::SystemState *this, Phase::Geometry::System *a2)
{
  Phase::SharedSlotMapState<Phase::Geometry::Context,Phase::Handle64>::operator=(this, a2 + 1);
  Phase::SharedSlotMapState<Phase::Geometry::Context,Phase::Handle64>::operator=(this + 24, a2 + 28);
  Phase::SharedSlotMapState<Phase::Geometry::Context,Phase::Handle64>::operator=(this + 48, a2 + 54);
  Phase::SharedSlotMapState<Phase::Geometry::Context,Phase::Handle64>::operator=(this + 72, a2 + 85);
  Phase::SharedSlotMapState<Phase::Geometry::Context,Phase::Handle64>::operator=(this + 96, a2 + 117);
  Phase::SharedSlotMapState<Phase::Geometry::Context,Phase::Handle64>::operator=(this + 120, a2 + 147);
  Phase::SharedSlotMapState<Phase::Geometry::Context,Phase::Handle64>::operator=(this + 144, a2 + 386);
  Phase::SharedSlotMapState<Phase::Geometry::Context,Phase::Handle64>::operator=(this + 168, a2 + 383);
  memcpy(this + 192, a2 + 1888, 0x310uLL);
  v4 = *(a2 + 168);
  v5 = *(a2 + 167);
  *(this + 126) = *(a2 + 338);
  *(this + 61) = v5;
  *(this + 62) = v4;
  if (this + 1032 != a2 + 2872)
  {
    std::vector<std::shared_ptr<Phase::Geometry::MpsCpuScene>>::__assign_with_size[abi:ne200100]<std::shared_ptr<Phase::Geometry::MpsCpuScene>*,std::shared_ptr<Phase::Geometry::MpsCpuScene>*>(this + 129, *(a2 + 359), *(a2 + 360), (*(a2 + 360) - *(a2 + 359)) >> 4);
  }

  *(this + 127) = *(a2 + 389);
  *(this + 128) = *(a2 + 390);
  *(this + 133) = a2;
  *(this + 134) = a2 + 2840;
  *(this + 132) = *(a2 + 357);
}

void std::vector<std::shared_ptr<Phase::Geometry::MpsCpuScene>>::__assign_with_size[abi:ne200100]<std::shared_ptr<Phase::Geometry::MpsCpuScene>*,std::shared_ptr<Phase::Geometry::MpsCpuScene>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = a1[2];
  v9 = *a1;
  if (a4 > (v8 - *a1) >> 4)
  {
    if (v9)
    {
      std::vector<std::shared_ptr<Phase::Geometry::MpsCpuScene>>::clear[abi:ne200100](a1);
      operator delete(*a1);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v10 = v8 >> 3;
      if (v8 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::shared_ptr<Phase::Geometry::MpsCpuScene>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1] - v9;
  if (a4 <= v12 >> 4)
  {
    v13 = std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<Phase::Geometry::MpsCpuScene> *,std::shared_ptr<Phase::Geometry::MpsCpuScene> *,std::shared_ptr<Phase::Geometry::MpsCpuScene> *>(a2, a3, v9);
    for (i = a1[1]; i != v13; i -= 2)
    {
      v15 = *(i - 1);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }

    a1[1] = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<Phase::Geometry::MpsCpuScene> *,std::shared_ptr<Phase::Geometry::MpsCpuScene> *,std::shared_ptr<Phase::Geometry::MpsCpuScene> *>(a2, (a2 + v12), v9);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<Phase::Geometry::MpsCpuScene>>,std::shared_ptr<Phase::Geometry::MpsCpuScene>*,std::shared_ptr<Phase::Geometry::MpsCpuScene>*,std::shared_ptr<Phase::Geometry::MpsCpuScene>*>(a1, (a2 + v12), a3, a1[1]);
  }
}

void *std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<Phase::Geometry::MpsCpuScene> *,std::shared_ptr<Phase::Geometry::MpsCpuScene> *,std::shared_ptr<Phase::Geometry::MpsCpuScene> *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v7 = *v5;
      v6 = v5[1];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = a3[1];
      *a3 = v7;
      a3[1] = v6;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v5 += 2;
      a3 += 2;
    }

    while (v5 != a2);
  }

  return a3;
}

void Phase::Geometry::AddVoxelTree(Phase::Logger *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = **(Phase::Logger::GetInstance(a1) + 1264);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 136315394;
    *&v7[1] = "GeoVoxelTree.cpp";
    v8 = 1024;
    v9 = 82;
    _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Voxel tree added", v7, 0x12u);
  }

  v5 = *(a1 + 12);
  v6 = *(a1 + 13);
  std::vector<std::shared_ptr<Phase::Geometry::SharedDataStream>>::resize(a1 + 96, a2 + 2);
  if ((v6 - v5) >> 4 < (a2 + 2))
  {
    operator new();
  }

  operator new();
}

void sub_23A413D70(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x23EE86470](v1, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Geometry::AddBuilderVoxelToSubtree(uint64_t result, float32x2_t *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = *(**(result + 40) + 16 * *(result + 48));
  v6 = v5[1];
  v7 = v5[3];
  v8 = v5[4];
  v9 = *(a4 + 4 * a3);
  v10 = v6 + v8 * a3;
  *(a4 + 4 * a3) = v9 + 1;
  v11 = *(**(v10 + 40) + 16 * *(v10 + 48));
  if (v11[3] <= v9)
  {
    __assert_rtn("AddBuilderVoxelToSubtree", "GeoVoxelTree.cpp", 188, "voxelIndex < level.mVoxels.Count()");
  }

  v13 = result;
  v14 = v7 - 1;
  v15 = v11[1] + v11[4] * v9;
  v16 = *a2;
  v18 = vmul_f32(v16, v16);
  v17 = a2[1].f32[0];
  *v18.i32 = vaddv_f32(v18) + (v17 * v17);
  if (*v18.i32 <= 0.00000011921)
  {
    *v15 = 0;
    *(v15 + 8) = 0;
    if (v14 == a3)
    {
      ++*a5;
    }
  }

  else
  {
    *v18.i32 = sqrtf(*v18.i32);
    *v15 = vdiv_f32(v16, vdup_lane_s32(v18, 0));
    *(v15 + 8) = v17 / *v18.i32;
  }

  *(v15 + 12) = a2[1].i32[1];
  if (v14 != a3)
  {
    v19 = *(**(v10 + 56) + 16 * *(v10 + 64));
    if (v19[3] <= v9)
    {
      __assert_rtn("AddBuilderVoxelToSubtree", "GeoVoxelTree.cpp", 207, "voxelIndex < level.mTreeNodes.Count()");
    }

    v20 = 0;
    v21 = 0;
    v22 = v19[1] + v19[4] * v9;
    *(v22 + 8) = *(a4 + 4 * (a3 + 1));
    *v22 = 0;
    do
    {
      if (*(*&a2[2] + v20 + 12) != -1)
      {
        *v22 |= 1 << v21;
        result = Phase::Geometry::AddBuilderVoxelToSubtree(v13);
      }

      ++v21;
      v20 += 24;
    }

    while (v21 != 64);
  }

  return result;
}

uint64_t Phase::Geometry::AddBuilderToSubtree(uint64_t a1, float32x2_t *a2, _DWORD *a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20](a1);
  v7 = v21 - v6;
  bzero(v21 - v6, v8);
  result = Phase::Geometry::AddBuilderVoxelToSubtree(a1, a2 + 8, 0, v7, a3);
  v11 = a2[12];
  v10 = a2[13];
  v12 = *&v10 - *&v11;
  if (*&v10 != *&v11)
  {
    v13 = 0;
    v14 = v12 >> 5;
    v15 = (v12 >> 5) - 1;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    v16 = (*&v11 + 24);
    do
    {
      v17 = *&v7[4 * v13];
      v18 = *v16;
      v16 += 4;
      if (v18 != v17)
      {
        __assert_rtn("AddBuilderToSubtree", "GeoVoxelTree.cpp", 240, "currentVoxelCounts[i] == inBuilder.mLevels[i].mVoxelCount");
      }

      v19 = *(*(**(a1 + 40) + 16 * *(a1 + 48)) + 8) + *(*(**(a1 + 40) + 16 * *(a1 + 48)) + 32) * v13;
      if (*(*(**(v19 + 40) + 16 * *(v19 + 48)) + 24) != v17)
      {
        __assert_rtn("AddBuilderToSubtree", "GeoVoxelTree.cpp", 241, "currentVoxelCounts[i] == inSubtree.mLevels[i].mVoxels.Count()");
      }

      v20 = *(*(**(v19 + 56) + 16 * *(v19 + 64)) + 24);
      if (v15 == v13)
      {
        if (v20)
        {
          __assert_rtn("AddBuilderToSubtree", "GeoVoxelTree.cpp", 249, "0 == inSubtree.mLevels[i].mTreeNodes.Count()");
        }
      }

      else if (v20 != v17)
      {
        __assert_rtn("AddBuilderToSubtree", "GeoVoxelTree.cpp", 245, "currentVoxelCounts[i] == inSubtree.mLevels[i].mTreeNodes.Count()");
      }

      ++v13;
    }

    while (v14 != v13);
  }

  return result;
}

void sub_23A414CC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  Phase::Geometry::VoxelTreeBuilder::~VoxelTreeBuilder(&a17);
  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  Phase::MdlMeshAsset::~MdlMeshAsset((v31 - 168));
  _Unwind_Resume(a1);
}

void Phase::Geometry::CreateVoxelTreeFromShape(int a1, _DWORD *a2, void *a3)
{
  v4[9] = *MEMORY[0x277D85DE8];
  if (*a2 == 2)
  {
    Phase::Geometry::ForcedCopyTagsIncludingMaterialListFromOptions(2uLL, a3, &__p);
    LODWORD(v4[0]) = 7;
    std::vector<unsigned int>::push_back[abi:ne200100](&__p.__begin_, v4);
    LODWORD(v4[0]) = 8;
    std::vector<unsigned int>::push_back[abi:ne200100](&__p.__begin_, v4);
    std::allocate_shared[abi:ne200100]<Phase::Geometry::Shape,std::allocator<Phase::Geometry::Shape>,Phase::Geometry::Shape&,std::vector<unsigned int> &,0>();
  }

  __assert_rtn("CreateVoxelTreeFromShape", "GeoVoxelTree.cpp", 416, "inShape.mType == DefaultShapeType::VoxelTree");
}

void sub_23A415008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

Phase::Logger *Phase::Geometry::GetVoxelTreeDebugInfo@<X0>(Phase::Logger *a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = **(a1 + 15);
  *a2 = 0;
  a2[4] = 0;
  a2[5] = 0;
  v4 = *(*(**(v3 + 40) + 16 * *(v3 + 48)) + 24);
  if (!v4)
  {
    v34 = **(Phase::Logger::GetInstance(a1) + 128);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *v39 = 136315394;
      *&v39[4] = "ManagedPtr.hpp";
      v40 = 1024;
      v41 = 229;
      _os_log_impl(&dword_23A302000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inCount == 0 is true]: Attempting to allocate an array of 0 elements", v39, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempting to allocate an array of 0 elements");
  }

  v5 = operator new(48 * v4, 8uLL);
  v6 = v5;
  do
  {
    *v6 = 0;
    v6[4] = 0;
    v6[5] = 0;
    v6 += 6;
  }

  while (v6 != &v5[6 * v4]);
  *buf = &unk_284D35260;
  *&buf[8] = v4;
  *&buf[17] = 0;
  *&buf[20] = 0;
  v43 = buf;
  *v39 = v5;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&v39[8], buf);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](buf);
  v7 = *v39;
  *v39 = 0;
  v36 = v7;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v37, &v39[8]);
  v38 = v4;
  std::unique_ptr<Phase::Geometry::VoxelTreeDebugInfo::VoxelSubtreeDebugInfo [],std::function<void ()(void *)>>::reset[abi:ne200100](v39);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v39[8]);
  v8 = v36;
  v36 = 0;
  v9 = *a2;
  *a2 = v8;
  if (v9)
  {
    std::function<void ()(void *)>::operator()((a2 + 1), v9);
  }

  std::__function::__value_func<void ()(void *)>::operator=[abi:ne200100]((a2 + 1), v37);
  a2[5] = v38;
  std::unique_ptr<Phase::Geometry::VoxelTreeDebugInfo::VoxelSubtreeDebugInfo [],std::function<void ()(void *)>>::reset[abi:ne200100](&v36);
  result = std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v37);
  if (a2[5])
  {
    v11 = 0;
    do
    {
      v12 = *(**(v3 + 40) + 16 * *(v3 + 48));
      v13 = *(v12 + 8) + *(v12 + 32) * v11;
      v14 = *(*(**(v13 + 40) + 16 * *(v13 + 48)) + 24);
      if (!v14)
      {
        v32 = **(Phase::Logger::GetInstance(result) + 128);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "ManagedPtr.hpp";
          *&buf[12] = 1024;
          *&buf[14] = 229;
          _os_log_impl(&dword_23A302000, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inCount == 0 is true]: Attempting to allocate an array of 0 elements", buf, 0x12u);
        }

        v33 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v33, "Attempting to allocate an array of 0 elements");
      }

      v15 = operator new(48 * v14, 0x10uLL);
      *buf = &unk_284D352A8;
      buf[8] = 0;
      v43 = buf;
      *v39 = v15;
      std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&v39[8], buf);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](buf);
      v16 = *v39;
      *v39 = 0;
      v36 = v16;
      std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v37, &v39[8]);
      v38 = v14;
      std::unique_ptr<Phase::Geometry::VoxelTreeDebugInfo::VoxelSubtreeDebugInfo::VoxelLevelDebugInfo [],std::function<void ()(void *)>>::reset[abi:ne200100](v39);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v39[8]);
      v17 = (*a2 + 48 * v11);
      v18 = v36;
      v36 = 0;
      v19 = *v17;
      *v17 = v18;
      if (v19)
      {
        std::function<void ()(void *)>::operator()((v17 + 1), v19);
      }

      std::__function::__value_func<void ()(void *)>::operator=[abi:ne200100]((v17 + 1), v37);
      v17[5] = v38;
      std::unique_ptr<Phase::Geometry::VoxelTreeDebugInfo::VoxelSubtreeDebugInfo::VoxelLevelDebugInfo [],std::function<void ()(void *)>>::reset[abi:ne200100](&v36);
      result = std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v37);
      v21 = 0;
      for (i = 0; i != v14; ++i)
      {
        v23 = *(**(v3 + 40) + 16 * *(v3 + 48));
        v24 = *(v23 + 8) + *(v23 + 32) * v11;
        v25 = *(**(v24 + 40) + 16 * *(v24 + 48));
        *v20.i32 = *(*(v25 + 8) + *(v25 + 32) * i);
        v20 = vdupq_lane_s32(*v20.i8, 0);
        *(*(*a2 + 48 * v11) + v21 + 32) = v20;
        v26 = *(**(v3 + 40) + 16 * *(v3 + 48));
        v27 = *(v26 + 8) + *(v26 + 32) * v11;
        v20.i64[0] = *v27;
        v20.i32[2] = *(v27 + 8);
        *(*(*a2 + 48 * v11) + v21) = v20;
        v28 = *(**(v3 + 40) + 16 * *(v3 + 48));
        v29 = *(v28 + 8) + *(v28 + 32) * v11;
        v30 = *(**(v29 + 40) + 16 * *(v29 + 48));
        v31 = *(v30 + 8) + *(v30 + 32) * i;
        v20.i64[0] = *(v31 + 16);
        v20.i32[2] = *(v31 + 24);
        *(*(*a2 + 48 * v11) + v21 + 16) = v20;
        v21 += 48;
      }

      ++v11;
    }

    while (v11 < a2[5]);
  }

  return result;
}

void sub_23A415534(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::unique_ptr<Phase::Geometry::VoxelTreeDebugInfo::VoxelSubtreeDebugInfo [],std::function<void ()(void *)>>::reset[abi:ne200100](v1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((v1 + 1));
  _Unwind_Resume(a1);
}

void Phase::Geometry::GetMaterials(uint64_t a1, unsigned int *a2, int a3, void *a4, int a5, uint64_t a6)
{
  v21 = a1;
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a3 * a6;
  if (v7 >= 1)
  {
    v9 = a2;
    v22 = a2 + v7;
    v23 = a5;
    v10 = *(*(**(a1 + 40) + 16 * *(a1 + 48)) + 8);
    v11 = *(**(v10 + 40) + 16 * *(v10 + 48));
    v12 = v11[1] + (v11[3] - 1) * v11[4];
    while (1)
    {
      v13 = *v9;
      v14 = *(**(v12 + 40) + 16 * *(v12 + 48));
      v15 = *(v14 + 24);
      if (v13 >= v15)
      {
        break;
      }

      v16 = *(*(v14 + 8) + *(v14 + 32) * v13 + 12);
      v17 = *(**(*(v21 + 8) + 144) + 16 * *(*(v21 + 8) + 152));
      v18 = *(v17 + 24);
      if (v16 >= v18)
      {
        goto LABEL_7;
      }

      v19 = *(*(v17 + 8) + *(v17 + 32) * v16);
LABEL_10:
      *a4 = v19;
      a4 = (a4 + v23);
      v9 = (v9 + v6);
      if (v9 >= v22)
      {
        return;
      }
    }

    v18 = -1;
    v16 = -1;
LABEL_7:
    v20 = **(Phase::Logger::GetInstance(a1) + 224);
    a1 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (a1)
    {
      *buf = 136316418;
      v25 = "GeoVoxelTree.cpp";
      v26 = 1024;
      v27 = 558;
      v28 = 1024;
      v29 = v13;
      v30 = 1024;
      v31 = v15;
      v32 = 1024;
      v33 = v16;
      v34 = 1024;
      v35 = v18;
      _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d GeoVoxelTree.cpp: GetMaterials: materialIndex out of range. Voxel Index: %i, Count:%i, Material Index: %i, Count:%i.\n", buf, 0x2Au);
    }

    v19 = 0;
    goto LABEL_10;
  }
}

void std::default_delete<Phase::Geometry::VoxelTreeBuilder::Voxel []>::operator()[abi:ne200100]<Phase::Geometry::VoxelTreeBuilder::Voxel>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 - 8);
    if (v2)
    {
      v3 = (a2 + 24 * v2 - 8);
      v4 = -24 * v2;
      do
      {
        v5 = *v3;
        *v3 = 0;
        if (v5)
        {
          std::default_delete<Phase::Geometry::VoxelTreeBuilder::Voxel []>::operator()[abi:ne200100]<Phase::Geometry::VoxelTreeBuilder::Voxel>(v3);
        }

        v3 -= 3;
        v4 += 24;
      }

      while (v4);
    }

    JUMPOUT(0x23EE86470);
  }
}

void Phase::Geometry::VoxelTreeBuilder::~VoxelTreeBuilder(Phase::Geometry::VoxelTreeBuilder *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    std::default_delete<Phase::Geometry::VoxelTreeBuilder::Voxel []>::operator()[abi:ne200100]<Phase::Geometry::VoxelTreeBuilder::Voxel>(this + 80, v3);
  }
}

uint64_t *std::unique_ptr<Phase::Geometry::VoxelTreeDebugInfo::VoxelSubtreeDebugInfo::VoxelLevelDebugInfo [],std::function<void ()(void *)>>::reset[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return std::function<void ()(void *)>::operator()((result + 1), v1);
  }

  return result;
}

uint64_t std::__function::__func<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>> Phase::Geometry::MakeDataMapPtr<Phase::Geometry::VoxelTree>(Phase::Geometry::VoxelTree *)::{lambda(void *)#1},std::allocator<std::unique_ptr<Phase::Geometry::DataMap,std::function<void ()(void *)>> Phase::Geometry::MakeDataMapPtr<Phase::Geometry::VoxelTree>(Phase::Geometry::VoxelTree *)::{lambda(void *)#1}>,void ()(void *)>::operator()(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    JUMPOUT(0x23EE864A0);
  }

  return result;
}

__n128 _ZNKSt3__110__function6__funcIZN5Phase7details10AllocArrayINS2_8Geometry18VoxelTreeDebugInfo21VoxelSubtreeDebugInfoERKZNS3_10AllocArrayIS7_EENS_10unique_ptrIA_T_NS_8functionIFvPvEEEEEmmEUlvE_RKZNS8_IS7_EESG_mmEUlPSA_E_EESG_mOT0_OT1_EUlSD_E_NS_9allocatorISS_EESE_E7__cloneEPNS0_6__baseISE_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D35260;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZN5Phase7details10AllocArrayINS2_8Geometry18VoxelTreeDebugInfo21VoxelSubtreeDebugInfoERKZNS3_10AllocArrayIS7_EENS_10unique_ptrIA_T_NS_8functionIFvPvEEEEEmmEUlvE_RKZNS8_IS7_EESG_mmEUlPSA_E_EESG_mOT0_OT1_EUlSD_E_NS_9allocatorISS_EESE_EclEOSD_(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v4 = 0;
    v5 = *a2;
    do
    {
      std::unique_ptr<Phase::Geometry::VoxelTreeDebugInfo::VoxelSubtreeDebugInfo::VoxelLevelDebugInfo [],std::function<void ()(void *)>>::reset[abi:ne200100](v5);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((v5 + 1));
      ++v4;
      v5 += 6;
    }

    while (v4 < *(a1 + 8));
  }

  operator delete(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN5Phase7details10AllocArrayINS2_8Geometry18VoxelTreeDebugInfo21VoxelSubtreeDebugInfo19VoxelLevelDebugInfoERKZNS3_10AllocArrayIS8_EENS_10unique_ptrIA_T_NS_8functionIFvPvEEEEEmmEUlvE_RKZNS9_IS8_EESH_mmEUlPSB_E_EESH_mOT0_OT1_EUlSE_E_NS_9allocatorIST_EESF_E7__cloneEPNS0_6__baseISF_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_284D352A8;
  *(a2 + 8) = *(result + 8);
  return result;
}

unint64_t Phase::Geometry::VoxelTreeBuilder::Build(uint64_t a1, int a2, id **this, unint64_t a4)
{
  Phase::Geometry::MdlMeshReader::CalculateAABB(this, v23);
  v7 = *v23;
  v8 = *&v23[1];
  *a1 = v23[0];
  *(a1 + 4) = v8;
  v9 = v24;
  v10 = v25;
  *(a1 + 8) = v24;
  *(a1 + 12) = v10;
  v11 = v26;
  v12 = v27;
  *(a1 + 16) = v26;
  *(a1 + 20) = v12;
  if (a4 <= 3)
  {
    __assert_rtn("ExpandAABB", "GeoVoxelTreeBuilder.cpp", 49, "inResolution >= 4");
  }

  v13 = (0.5 / (a4 - 1)) * fmaxf(fmaxf(v10 - v7, v11 - v8), v12 - v9);
  v14 = v7 - v13;
  v15 = v8 - v13;
  *a1 = v14;
  *(a1 + 4) = v15;
  v16 = v9 - v13;
  v17 = v10 + v13;
  *(a1 + 8) = v16;
  *(a1 + 12) = v17;
  v18 = v11 + v13;
  v19 = v12 + v13;
  *(a1 + 16) = v18;
  *(a1 + 20) = v19;
  *(a1 + 24) = v14;
  *(a1 + 28) = v15;
  *(a1 + 32) = v16;
  *(a1 + 36) = v17;
  *(a1 + 40) = v18;
  *(a1 + 44) = v19;
  *(a1 + 56) = a4;
  *(a1 + 92) = 0;
  Phase::Geometry::VoxelTreeBuilder::CreateLevels(a1);
  result = Phase::MdlMeshAsset::GetSubmeshCount(this);
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      Phase::Geometry::VoxelTreeBuilder::BuildLevels(a1, v21, this, i);
      result = Phase::MdlMeshAsset::GetSubmeshCount(this);
    }
  }

  return result;
}

void Phase::Geometry::VoxelTreeBuilder::CreateLevels(Phase::Geometry::VoxelTreeBuilder *this)
{
  v2 = 0;
  v3 = *(this + 7);
  *(this + 12) = fmaxf(fmaxf((*(this + 3) - *this) / v3, (*(this + 4) - *(this + 1)) / v3), (*(this + 5) - *(this + 2)) / v3);
  v4 = 1;
  while (1 << v2 != v3)
  {
    ++v4;
    v2 += 2;
    if (v2 == 64)
    {
      __assert_rtn("PowerOfFour", "GeoVoxelTreeBuilder.cpp", 35, "false");
    }
  }

  std::vector<Phase::Geometry::VoxelTreeBuilder::Level>::resize(this + 12, v4);
  v5 = 0;
  v6 = *(this + 12);
  v7 = (*(this + 12) + 16);
  v8 = 1;
  do
  {
    *(v7 - 4) = v6 * (1 << v2);
    *(v7 - 1) = v8;
    *v7 = v5;
    v8 *= 4;
    ++v5;
    v7 += 8;
    LODWORD(v2) = v2 - 2;
  }

  while (v4 != v5);
  *(this + 22) = 0;
}

unint64_t Phase::Geometry::VoxelTreeBuilder::BuildLevels(float32x2_t *a1, int a2, id **this, uint64_t a4)
{
  result = [Phase::MdlMeshAsset::GetSubmesh(this a4)];
  if (result >= 3)
  {
    v10 = 0;
    v11 = result / 3;
    do
    {
      result = Phase::Geometry::VoxelTreeBuilder::VoxelizeFace(a1, v8, this, a4, v10++, v9, &a1[11]);
    }

    while (v11 != v10);
  }

  return result;
}

void std::vector<Phase::Geometry::VoxelTreeBuilder::Level>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 32 * a2;
    }
  }

  else
  {
    std::vector<Phase::Geometry::VoxelTreeBuilder::Level>::__append(a1, a2 - v2);
  }
}

uint64_t Phase::Geometry::VoxelTreeBuilder::VoxelizeFace(float32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float *a7)
{
  v8 = a4;
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v36 = 0.0;
  result = Phase::Geometry::MdlMeshReader::GetTriangle<unsigned int>(a3, a4, 3 * a5, &v38 + 1, &v38, &v37[36], v37, &v36);
  if (result)
  {
    v11 = a1[1].i32[0];
    v12 = *&v37[16] - COERCE_FLOAT(HIDWORD(*a1));
    v13 = vcvtq_f64_f32(vsub_f32(*v37, *a1));
    v14 = vrev64_s32(*a1);
    v15 = vcvtq_f64_f32(vsub_f32(*&v37[8], __PAIR64__(v14.u32[1], v11)));
    v32[0] = v13;
    v32[1] = v15;
    v33 = v12;
    v16 = vcvtq_f64_f32(vsub_f32(*&v37[20], __PAIR64__(v14.u32[1], v11)));
    v34 = v16;
    *a7 = v36 + *a7;
    v17 = 1.0 / a1[6].f32[0];
    v18 = vsubq_f64(v16, v15).f64[0];
    v28 = vcvtmd_s64_f64(fmin(fmin(v13.f64[0], v15.f64[1]), v16.f64[1]) * v17);
    v14.i32[1] = v11;
    v35 = vcvtq_f64_f32(vsub_f32(*&v37[28], v14));
    v19 = vdupq_lane_s64(*&v16.f64[0], 0);
    v19.f64[0] = v12;
    v20 = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vmulq_n_f64(vminnmq_f64(vminnmq_f64(vextq_s8(v13, v15, 8uLL), v19), v35), v17))));
    v21 = vcvtpd_s64_f64(fmax(fmax(v15.f64[0], v16.f64[0]), *&v35.i64[1]) * v17);
    v22 = (v12 - v13.f64[1]) * (*&v35.i64[1] - v15.f64[0]) - v18 * (*v35.i64 - v13.f64[1]);
    v23 = v18 * (v16.f64[1] - v13.f64[0]) - (v15.f64[1] - v13.f64[0]) * (*&v35.i64[1] - v15.f64[0]);
    v24 = (v15.f64[1] - v13.f64[0]) * (*v35.i64 - v13.f64[1]) - (v12 - v13.f64[1]) * (v16.f64[1] - v13.f64[0]);
    v25 = sqrt(v24 * v24 + v22 * v22 + v23 * v23);
    v30.f64[0] = v22 / v25;
    v30.f64[1] = v23 / v25;
    v31 = v24 / v25;
    *&v15.f64[0] = vdupq_laneq_s64(v15, 1).u64[0];
    v29 = v20;
    v15.f64[1] = v19.f64[0];
    v26 = vmovn_s64(vcvtq_s64_f64(vrndpq_f64(vmulq_n_f64(vmaxnmq_f64(vmaxnmq_f64(v13, v15), vextq_s8(v16, v35, 8uLL)), v17))));
    v27 = v21;
    return Phase::Geometry::VoxelTreeBuilder::UpdateVoxel(a1, a1 + 8, v32, &v30, v8, 0, &v28, &v26);
  }

  else
  {
    ++a1[11].i32[1];
  }

  return result;
}

uint64_t Phase::Geometry::VoxelTreeBuilder::UpdateVoxel(uint64_t result, float32x2_t *a2, double *a3, float64x2_t *a4, __int32 a5, uint64_t a6, int *a7, int *a8)
{
  v12 = *(result + 96);
  if (a2[1].i32[1] == -1)
  {
    ++*(v12 + 32 * a6 + 24);
    a2[1].i32[1] = a5;
  }

  *a2 = vadd_f32(*a2, vcvt_f32_f64(*a4));
  v13 = a4[1].f64[0];
  a2[1].f32[0] = a2[1].f32[0] + v13;
  v14 = ((*(result + 104) - v12) >> 5) - 1;
  if (v14 != a6)
  {
    v15 = a2 + 2;
    if (!*&a2[2])
    {
      operator new[]();
    }

    v16 = a6 + 1;
    v17 = 2 * (v14 - (a6 + 1));
    v18 = *a7 >> (2 * (v14 - (a6 + 1)));
    v19 = *a8 >> (2 * (v14 - (a6 + 1)));
    if (v18 <= v19)
    {
      v20 = (v12 + 32 * v16);
      v21 = a7[1] >> v17;
      v22 = a7[2] >> v17;
      v23 = *v20 * 0.5;
      v24 = a8[2] >> v17;
      v25 = a8[1] >> v17;
      v26 = ~(-1 << v17);
      v27 = -v23;
      do
      {
        if (v21 <= v25)
        {
          v29 = v18 + 0.5;
          v30 = v18 & 3;
          LODWORD(v8) = v18 << v17;
          LODWORD(v9) = (v18 << v17) + v26;
          v31 = v21;
          do
          {
            if (v22 <= v24)
            {
              v32 = v31 + 0.5;
              v33 = v8;
              DWORD1(v33) = v31 << v17;
              v34 = v22;
              do
              {
                v35 = *v20;
                v36 = v32 * v35;
                v37 = (v34 + 0.5) * v35;
                v38 = *a3 - v29 * v35;
                v39 = a3[1] - v32 * v35;
                v40 = a3[2] - v37;
                v41 = a3[3] - v29 * v35;
                v42 = a3[4] - v32 * v35;
                v43 = a3[5] - v37;
                v44 = a3[6] - v29 * v35;
                v45 = a3[7] - v36;
                v46 = a3[8] - v37;
                v47 = fmax(fmax(v38, v41), v44);
                v48 = fmin(fmin(v40, v43), v46);
                v49 = fmax(fmax(v40, v43), v46);
                v50 = fmin(fmin(v38, v41), v44) > v23 || v47 < v27;
                v51 = fmax(fmax(v39, v42), v45);
                v52 = fmin(fmin(v39, v42), v45);
                if (!v50 && v52 <= v23 && v51 >= v27 && v48 <= v23 && v49 >= v27)
                {
                  v57 = a4->f64[0];
                  v58 = a4->f64[1];
                  v59 = a4[1].f64[0];
                  v60 = v38 * a4->f64[0] + v39 * v58 + v40 * v59;
                  v61 = a4->f64[0] <= 0.0 ? v23 : -v23;
                  v62 = v58 <= 0.0 ? v23 : -v23;
                  v63 = v59 <= 0.0 ? v23 : -v23;
                  if (v57 * v61 + v58 * v62 + v59 * v63 <= v60)
                  {
                    v64 = v59 <= 0.0 ? -v23 : v23;
                    v65 = v58 <= 0.0 ? -v23 : v23;
                    v66 = v57 <= 0.0 ? -v23 : v23;
                    if (v57 * v66 + v58 * v65 + v59 * v64 >= v60)
                    {
                      v67 = v42 - v39;
                      v68 = v43 - v40;
                      v69 = v67 < 0.0 ? -v67 : v42 - v39;
                      v70 = v68 < 0.0 ? -v68 : v43 - v40;
                      v71 = v68;
                      v72 = v67;
                      v73 = v68 * v39 - v40 * v72;
                      v74 = v71 * v45 - v46 * v72;
                      v75 = fmin(v73, v74);
                      v76 = fmax(v73, v74);
                      v77 = v70;
                      v78 = v69;
                      v79 = v23 * v69 + v77 * v23;
                      if (v75 <= v79 && v76 >= -v79)
                      {
                        v81 = v41 - v38;
                        v82 = -v81;
                        if (v81 >= 0.0)
                        {
                          v82 = v41 - v38;
                        }

                        v83 = v81;
                        v84 = v83 * v40 - v38 * v71;
                        v85 = v83 * v46 - v44 * v71;
                        v86 = fmin(v84, v85);
                        v87 = fmax(v84, v85);
                        v88 = v82;
                        v89 = v23 * v77 + v88 * v23;
                        v90 = v86 > v89 || v87 < -v89;
                        v91 = v72 * v41 - v42 * v83;
                        v92 = v72 * v44 - v45 * v83;
                        v93 = fmin(v91, v92);
                        v94 = fmax(v91, v92);
                        v95 = v23 * v88 + v78 * v23;
                        if (!v90 && v93 <= v95 && v94 >= -v95)
                        {
                          v98 = -v40;
                          v99 = v45 - v42;
                          v100 = v46 - v43;
                          v101 = -v99;
                          if (v99 >= 0.0)
                          {
                            v101 = v45 - v42;
                          }

                          if (v100 < 0.0)
                          {
                            v102 = -v100;
                          }

                          else
                          {
                            v102 = v46 - v43;
                          }

                          v103 = v100;
                          v104 = v99;
                          v105 = v98 * v99 + v103 * v39;
                          v106 = -v46 * v104 + v103 * v45;
                          v107 = fmin(v105, v106);
                          v108 = fmax(v105, v106);
                          v109 = v102;
                          v110 = v101;
                          v111 = v23 * v110 + v109 * v23;
                          if (v107 <= v111 && v108 >= -v111)
                          {
                            v113 = -v38;
                            v114 = -v42;
                            v115 = v44 - v41;
                            v116 = -v115;
                            if (v115 >= 0.0)
                            {
                              v116 = v44 - v41;
                            }

                            v117 = v115;
                            v118 = v113 * v103 + v117 * v40;
                            v119 = -v44 * v103 + v117 * v46;
                            v120 = fmin(v118, v119);
                            v121 = fmax(v118, v119);
                            v122 = v116;
                            v123 = v23 * v109 + v122 * v23;
                            v124 = v120 > v123 || v121 < -v123;
                            v125 = v104 * v38 - v39 * v117;
                            v126 = v114 * v117 + v104 * v41;
                            v127 = fmin(v125, v126);
                            v128 = fmax(v125, v126);
                            v129 = v23 * v122 + v110 * v23;
                            if (!v124 && v127 <= v129 && v128 >= -v129)
                            {
                              v132 = v39 - v45;
                              v133 = v40 - v46;
                              v134 = v132 < 0.0 ? -v132 : v39 - v45;
                              v135 = v133 < 0.0 ? -v133 : v133;
                              v136 = v133;
                              v137 = v132;
                              v138 = v98 * v132 + v136 * v39;
                              v139 = v136 * v42 - v43 * v132;
                              v140 = v135;
                              v141 = v134;
                              v142 = v23 * v134;
                              if (fmin(v138, v139) <= v142 + v135 * v23 && fmax(v138, v139) >= -(v142 + v140 * v23))
                              {
                                v143 = v38 - v44;
                                if (v143 < 0.0)
                                {
                                  v144 = -v143;
                                }

                                else
                                {
                                  v144 = v143;
                                }

                                v145 = v143;
                                v146 = v113 * v136 + v145 * v40;
                                v147 = v145 * v43 - v41 * v136;
                                v148 = v144;
                                v149 = v23 * v140;
                                if (fmin(v146, v147) <= v149 + v144 * v23 && fmax(v146, v147) >= -(v149 + v148 * v23))
                                {
                                  v150 = v114 * v145 + v137 * v41;
                                  v151 = -v45 * v145 + v137 * v44;
                                  if (fmin(v150, v151) <= v23 * v148 + v141 * v23 && fmax(v150, v151) >= -(v23 * v148 + v141 * v23))
                                  {
                                    v159 = v18;
                                    v160 = v17;
                                    v155 = v30;
                                    v156 = v26;
                                    v162 = a7;
                                    v163 = a8;
                                    v164 = v16;
                                    v165 = result;
                                    v166 = a5;
                                    v161 = v15;
                                    v157 = v21;
                                    v158 = v19;
                                    v153 = v9;
                                    v154 = v8;
                                    v152 = v33;
                                    Phase::Geometry::VoxelTreeBuilder::UpdateVoxel();
                                    v33 = v152;
                                    v9 = v153;
                                    v8 = v154;
                                    v30 = v155;
                                    v26 = v156;
                                    v21 = v157;
                                    v19 = v158;
                                    v18 = v159;
                                    v17 = v160;
                                    v16 = v164;
                                    result = v165;
                                    v15 = v161;
                                    a7 = v162;
                                    a5 = v166;
                                    a8 = v163;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

                ++v34;
              }

              while (v24 + 1 != v34);
            }

            v28 = v31++ == v25;
          }

          while (!v28);
        }

        v28 = v18++ == v19;
      }

      while (!v28);
    }
  }

  return result;
}

void std::vector<Phase::Geometry::VoxelTreeBuilder::Level>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 5)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 32 * a2);
      v5 += 32 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 5);
    if (v8 >> 59)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
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

    v11 = (32 * (v7 >> 5));
    bzero(v11, 32 * a2);
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = &v11[32 * a2];
    *(a1 + 16) = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void Phase::Controller::DVM23::GraphInputVoiceNode::~GraphInputVoiceNode(Phase::Controller::DVM23::GraphInputVoiceNode *this)
{
  *this = &unk_284D38550;
  v1 = (this + 8);
  v2 = (this + 32);
  std::vector<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = v1;
  std::vector<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  *this = &unk_284D38550;
  v1 = (this + 8);
  v2 = (this + 32);
  std::vector<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = v1;
  std::vector<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>::__destroy_vector::operator()[abi:ne200100](&v2);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::Controller::DVM23::GraphInputVoiceNode::OrderedVoicesHelper(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 56);
  if (*(a4 + 56) != *(v4 + 56))
  {
    for (i = *(*(v4 + 8) + 40 * *(result + 72) + 16); i; i = *i)
    {
      result = (*(*i[2] + 72))(i[2], *(i + 6), a3, a4);
    }
  }

  return result;
}

uint64_t Phase::Controller::DVM23::GraphInputVoiceNode::PerTailVoice(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (i = *(*(*(result + 56) + 8) + 40 * *(result + 72) + 16); i; i = *i)
  {
    result = (*(*i[2] + 32))(i[2], *(i + 6), a3);
  }

  return result;
}

uint64_t Phase::Controller::DVM23::GraphInputVoiceNode::ToString@<X0>(Phase::Controller::DVM23::GraphInputVoiceNode *this@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(this + 7);
  v4 = *(v3 + 183);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(v3 + 168);
  }

  if (v4)
  {
    result = snprintf(__str, 0x40uLL, "(%s)graph|%i");
  }

  else
  {
    result = snprintf(__str, 0x40uLL, "graph|%i");
  }

  if ((result & 0x80000000) != 0)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memcpy(a2, __str, result);
  }

  a2[v6] = 0;
  return result;
}

uint64_t Phase::Controller::DVM23::VoiceNode::PerVoice()
{
  return 0;
}

{
  return 0;
}

uint64_t Phase::Controller::DVM23::VoiceNode::GetNode(uint64_t this, uint64_t a2)
{
  if (*(this + 64) != a2)
  {
    return 0;
  }

  return this;
}

void Phase::Controller::DVM23::GraphOutputVoiceNode::~GraphOutputVoiceNode(Phase::Controller::DVM23::GraphOutputVoiceNode *this)
{
  *this = &unk_284D38550;
  v1 = (this + 8);
  v2 = (this + 32);
  std::vector<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = v1;
  std::vector<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  *this = &unk_284D38550;
  v1 = (this + 8);
  v2 = (this + 32);
  std::vector<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = v1;
  std::vector<std::unordered_set<Phase::Controller::DVM23::VoiceNodeConnection,Phase::Controller::DVM23::GraphConnectionHash<Phase::Controller::DVM23::VoiceNode>,std::equal_to<Phase::Controller::DVM23::VoiceNodeConnection>,std::allocator<Phase::Controller::DVM23::VoiceNodeConnection>>>::__destroy_vector::operator()[abi:ne200100](&v2);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::Controller::DVM23::GraphOutputVoiceNode::PerHeadVoice(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (i = *(*(*(result + 56) + 32) + 40 * *(result + 72) + 16); i; i = *i)
  {
    result = (*(*i[2] + 24))(i[2], *(i + 6), a3);
  }

  return result;
}

uint64_t Phase::Controller::DVM23::GraphOutputVoiceNode::ToString@<X0>(Phase::Controller::DVM23::GraphOutputVoiceNode *this@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(this + 7);
  v4 = *(v3 + 168);
  if (*(v3 + 183) >= 0)
  {
    v4 = *(v3 + 183);
  }

  if (v4)
  {
    result = snprintf(__str, 0x40uLL, "%i|(%s)graph");
  }

  else
  {
    result = snprintf(__str, 0x40uLL, "%i|graph");
  }

  if ((result & 0x80000000) != 0)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memcpy(a2, __str, result);
  }

  a2[v6] = 0;
  return result;
}

Phase::Controller::Ducker *Phase::Controller::Ducker::Ducker(Phase::Controller::Ducker *this, PHASEDucker *a2, double a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 1065353216;
  __asm { FMOV            V0.2D, #1.0 }

  *(this + 5) = _Q0;
  *(this + 12) = 0x3FF0000000000000;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 120) = vdupq_n_s64(0x63724C6EuLL);
  *(this + 136) = 0;
  Phase::Fader<double>::Fader((this + 144), 1.0);
  Phase::Fader<double>::Fader((this + 192), 1.0);
  Phase::Fader<double>::Fader((this + 240), 1.0);
  *(this + 288) = 0;
  [(PHASEDucker *)v5 gain:this + 240];
  *(this + 10) = v11;
  [(PHASEDucker *)v5 gainHighFrequency];
  *(this + 11) = v12;
  [(PHASEDucker *)v5 gainLowFrequency];
  *(this + 12) = v13;
  [(PHASEDucker *)v5 attackTime];
  *(this + 13) = v14 * a3;
  [(PHASEDucker *)v5 releaseTime];
  *(this + 14) = v15 * a3;
  *(this + 15) = [(PHASEDucker *)v5 attackCurve];
  *(this + 16) = [(PHASEDucker *)v5 releaseCurve];
  v30 = [(PHASEDucker *)v5 sourceGroups];
  v16 = [(PHASEDucker *)v5 targetGroups];
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::__rehash<true>(this, vcvtps_u32_f32([v30 count] / *(this + 8)));
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::__rehash<true>(this + 40, vcvtps_u32_f32([v16 count] / *(this + 18)));
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v17 = v30;
  v18 = [v17 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v18)
  {
    v19 = *v36;
    do
    {
      v20 = 0;
      do
      {
        if (*v36 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = [*(*(&v35 + 1) + 8 * v20) identifier];
        StringHashId = Phase::GetStringHashId(v21, v22);
        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long>(this, StringHashId);

        ++v20;
      }

      while (v18 != v20);
      v18 = [v17 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v18);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = v16;
  v24 = [v23 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v24)
  {
    v25 = *v32;
    do
    {
      v26 = 0;
      do
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = [*(*(&v31 + 1) + 8 * v26) identifier];
        StringHashId = Phase::GetStringHashId(v27, v28);
        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long>(this + 5, StringHashId);

        ++v26;
      }

      while (v24 != v26);
      v24 = [v23 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v24);
  }

  return this;
}

void sub_23A4172DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10, void **a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void **a30)
{
  a30 = a9;
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a10;
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a11;
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v32);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v30);

  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::Ducker::Release(Phase::Controller::Ducker *this)
{
  v3[4] = *MEMORY[0x277D85DE8];
  *(this + 136) = 1;
  Phase::Controller::GetCurveFunctionFromCurveType<double>(*(this + 16), v3);
  Phase::Fader<double>::SetInternal(this + 144, v3, *(this + 22), *(this + 14));
  Phase::Fader<double>::SetInternal(this + 192, v3, *(this + 28), *(this + 14));
  Phase::Fader<double>::SetInternal(this + 240, v3, *(this + 34), *(this + 14));
  return std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v3);
}

uint64_t Phase::Controller::GroupManager::AddGroup(Phase::Controller::GroupManager *this, PHASEGroup *a2)
{
  v3 = a2;
  v4 = [(PHASEGroup *)v3 identifier];
  StringHashId = Phase::GetStringHashId(v4, v5);

  v19 = StringHashId;
  Phase::Controller::Group::Group(v9, StringHashId, v3);
  std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Group>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Group>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Group>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Group>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,Phase::Controller::Group>(this + 5, &v19);
  LOBYTE(this) = v7;
  v20 = &v18;
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v20);
  v20 = &v17;
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v20);
  v20 = &v16;
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v20);
  v20 = &v15;
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v20);
  v20 = &v14;
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v20);
  v20 = &v13;
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v20);
  v20 = &v12;
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v20);
  v20 = &v11;
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v20);

  return this & 1;
}

void sub_23A41762C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Phase::Controller::Group::~Group(va);

  _Unwind_Resume(a1);
}

void Phase::Controller::GroupManager::Update(uint64_t a1, void *a2, double a3)
{
  v49[4] = *MEMORY[0x277D85DE8];
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::ExecuteCommands(a1);
  *(a1 + 128) = 0;
  v6 = *(a1 + 56);
  if (v6)
  {
    __asm { FMOV            V0.2D, #1.0 }

    v48 = _Q0;
    do
    {
      if (*(a1 + 128))
      {
        v12 = 1;
      }

      else
      {
        v12 = *(v6 + 449);
      }

      *(a1 + 128) = v12 & 1;
      Phase::Fader<double>::Update((v6 + 5), a3);
      Phase::Fader<double>::Update((v6 + 11), a3);
      Phase::Fader<double>::Update((v6 + 17), a3);
      Phase::Fader<double>::Update((v6 + 23), a3);
      Phase::Fader<double>::Update((v6 + 32), a3);
      Phase::Fader<double>::Update((v6 + 44), a3);
      Phase::Fader<double>::Update((v6 + 38), a3);
      Phase::Fader<double>::Update((v6 + 50), a3);
      v6[31] = 0x3FF0000000000000;
      *(v6 + 29) = v48;
      v6 = *v6;
    }

    while (v6);
  }

  v13 = *(a1 + 96);
  if (v13)
  {
    do
    {
      v14 = *(v13 + 160);
      if (v14 != 1 || v13[26] != v13[25])
      {
        v18 = *(v13 + 5);
        if (v18)
        {
          v19 = a2[1];
          v20 = vcnt_s8(v19);
          v20.i16[0] = vaddlv_u8(v20);
          v21 = *&v19 - 1;
          do
          {
            if (v19)
            {
              v22 = v18[2];
              if (v20.u32[0] > 1uLL)
              {
                v23 = v18[2];
                if (v22 >= *&v19)
                {
                  v23 = v22 % *&v19;
                }
              }

              else
              {
                v23 = v21 & v22;
              }

              v24 = *(*a2 + 8 * v23);
              if (v24)
              {
                while (1)
                {
                  v24 = *v24;
                  if (!v24)
                  {
                    break;
                  }

                  v25 = v24[1];
                  if (v25 == v22)
                  {
                    if (v24[2] == v22)
                    {
                      v26 = 1;
                      goto LABEL_31;
                    }
                  }

                  else
                  {
                    if (v20.u32[0] > 1uLL)
                    {
                      if (v25 >= *&v19)
                      {
                        v25 %= *&v19;
                      }
                    }

                    else
                    {
                      v25 &= v21;
                    }

                    if (v25 != v23)
                    {
                      break;
                    }
                  }
                }
              }
            }

            v18 = *v18;
          }

          while (v18);
        }

        v26 = 0;
LABEL_31:
        if (*(v13 + 312) != v26 && (v14 & 1) == 0)
        {
          if (v26)
          {
            Phase::Controller::GetCurveFunctionFromCurveType<double>(*(v13 + 18), v49);
            Phase::Fader<double>::SetInternal((v13 + 21), v49, v13[13], v13[16]);
            Phase::Fader<double>::SetInternal((v13 + 27), v49, v13[14], v13[16]);
            Phase::Fader<double>::SetInternal((v13 + 33), v49, v13[15], v13[16]);
          }

          else
          {
            Phase::Controller::GetCurveFunctionFromCurveType<double>(*(v13 + 19), v49);
            Phase::Fader<double>::SetInternal((v13 + 21), v49, v13[25], v13[17]);
            Phase::Fader<double>::SetInternal((v13 + 27), v49, v13[31], v13[17]);
            Phase::Fader<double>::SetInternal((v13 + 33), v49, v13[37], v13[17]);
          }

          std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v49);
          *(v13 + 312) = v26;
        }

        Phase::Fader<double>::Update((v13 + 21), a3);
        Phase::Fader<double>::Update((v13 + 27), a3);
        Phase::Fader<double>::Update((v13 + 33), a3);
        v27 = *(a1 + 56);
        if (v27)
        {
          v28 = v13[9];
          v29 = vcnt_s8(v28);
          v29.i16[0] = vaddlv_u8(v29);
          v30 = v29.u32[0];
          v31 = *&v28 - 1;
          do
          {
            if (v28)
            {
              v32 = v27[2];
              if (v30 > 1)
              {
                v33 = v27[2];
                if (*&v28 <= v32)
                {
                  v33 = v32 % *&v28;
                }
              }

              else
              {
                v33 = v31 & v32;
              }

              v34 = *(*(v13 + 8) + 8 * v33);
              if (v34)
              {
                while (1)
                {
                  v34 = *v34;
                  if (!v34)
                  {
                    break;
                  }

                  v35 = v34[1];
                  if (v35 == v32)
                  {
                    if (v34[2] == v32)
                    {
                      v36.f64[0] = v13[26];
                      *(v27 + 31) = fmin(*(v27 + 31), v13[32]);
                      v36.f64[1] = v13[38];
                      *(v27 + 29) = vminnmq_f64(*(v27 + 29), v36);
                      break;
                    }
                  }

                  else
                  {
                    if (v30 > 1)
                    {
                      if (v35 >= *&v28)
                      {
                        v35 %= *&v28;
                      }
                    }

                    else
                    {
                      v35 &= v31;
                    }

                    if (v35 != v33)
                    {
                      break;
                    }
                  }
                }
              }
            }

            v27 = *v27;
          }

          while (v27);
        }

        v37 = *v13;
        goto LABEL_82;
      }

      v15 = *(a1 + 88);
      v16 = *(v13 + 1);
      v17 = vcnt_s8(v15);
      v17.i16[0] = vaddlv_u8(v17);
      if (v17.u32[0] > 1uLL)
      {
        if (v16 >= *&v15)
        {
          v16 %= *&v15;
        }
      }

      else
      {
        v16 &= *&v15 - 1;
      }

      v37 = *v13;
      v38 = *(a1 + 80);
      v39 = *(v38 + 8 * v16);
      do
      {
        v40 = v39;
        v39 = *v39;
      }

      while (v39 != v13);
      if (v40 == (a1 + 96))
      {
        goto LABEL_89;
      }

      v41 = *(v40 + 1);
      if (v17.u32[0] > 1uLL)
      {
        if (v41 >= *&v15)
        {
          v41 %= *&v15;
        }
      }

      else
      {
        v41 &= *&v15 - 1;
      }

      v42 = *v13;
      if (v41 != v16)
      {
LABEL_89:
        if (v37)
        {
          v43 = *(v37 + 1);
          if (v17.u32[0] > 1uLL)
          {
            v44 = *(v37 + 1);
            if (v43 >= *&v15)
            {
              v44 = v43 % *&v15;
            }
          }

          else
          {
            v44 = v43 & (*&v15 - 1);
          }

          v42 = *v13;
          if (v44 == v16)
          {
            goto LABEL_75;
          }
        }

        *(v38 + 8 * v16) = 0;
        v42 = *v13;
      }

      if (v42 != 0.0)
      {
        v43 = *(*&v42 + 8);
LABEL_75:
        if (v17.u32[0] > 1uLL)
        {
          if (v43 >= *&v15)
          {
            v43 %= *&v15;
          }
        }

        else
        {
          v43 &= *&v15 - 1;
        }

        if (v43 != v16)
        {
          *(*(a1 + 80) + 8 * v43) = v40;
          v42 = *v13;
        }
      }

      *v40 = v42;
      *v13 = 0.0;
      --*(a1 + 104);
      std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,Phase::Controller::Ducker>,void *>>>::operator()[abi:ne200100](1, v13);
LABEL_82:
      v13 = v37;
    }

    while (v37);
  }

  for (i = *(a1 + 56); i; i = *i)
  {
    v46 = -2128831035;
    for (j = 40; j != 456; ++j)
    {
      v46 = 16777619 * (v46 ^ *(i + j));
    }

    *(i + 114) = v46;
  }
}
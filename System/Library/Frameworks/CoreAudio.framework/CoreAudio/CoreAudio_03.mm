void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(uint64_t a1, uint64_t a2)
{
  LODWORD(v12) = *a1;
  *(&v12 + 3) = *(a1 + 3);
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  *(a1 + 24) = 0;
  v10 = v4;
  v11 = *(a1 + 40);
  LODWORD(v4) = *a2;
  *(a1 + 3) = *(a2 + 3);
  *a1 = v4;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v6 = a2 + 32;
  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;
  *a2 = v12;
  *(a2 + 3) = *(&v12 + 3);
  v8 = *(a2 + 8);
  if (v8)
  {
    *(a2 + 16) = v8;
    v9 = v3;
    operator delete(v8);
    v3 = v9;
  }

  *(a2 + 8) = v3;
  *(a2 + 24) = v5;
  *v6 = v10;
  *(v6 + 8) = v11;
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Live_Property_Traits *,0>(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v7 = a1;
  v8 = *a2;
  v9 = *a3;
  if (*a2 >= *a1)
  {
    if (v9 < v8)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(a2, a3);
      if (*a2 < *v7)
      {
        a1 = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(a1, v10);
      goto LABEL_10;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(a1, a2);
    if (*a3 < *a2)
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(a3, a4);
    if (*a3 < *a2)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(a2, a3);
      if (*a2 < *v7)
      {

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(v7, a2);
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Live_Property_Traits *>(unsigned int *a1, char *a2)
{
  v3 = a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v9 = a1[12];
        v5 = a2 - 48;
        v10 = *(a2 - 12);
        if (v9 >= *a1)
        {
          if (v10 >= v9)
          {
            return 1;
          }

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>((a1 + 12), v5);
          if (v3[12] >= *v3)
          {
            return 1;
          }

          a1 = v3;
          v8 = (v3 + 12);
          goto LABEL_17;
        }

        if (v10 >= v9)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(a1, (a1 + 12));
          if (*v5 >= v3[12])
          {
            return 1;
          }

          a1 = v3 + 12;
        }

LABEL_16:
        v8 = v5;
LABEL_17:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(a1, v8);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Live_Property_Traits *,0>(a1, a1 + 12, a1 + 24, a2 - 12);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Live_Property_Traits *,0>(a1, a1 + 12, a1 + 24, a1 + 36);
        v7 = *(a2 - 12);
        v6 = (a2 - 48);
        if (v7 >= v3[36])
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>((v3 + 36), v6);
        if (v3[36] >= v3[24])
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>((v3 + 24), (v3 + 36));
        if (v3[24] >= v3[12])
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>((v3 + 12), (v3 + 24));
        if (v3[12] >= *v3)
        {
          return 1;
        }

        v8 = (v3 + 12);
        a1 = v3;
        goto LABEL_17;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = a2 - 48;
      if (*(a2 - 12) >= *a1)
      {
        return 1;
      }

      goto LABEL_16;
    }
  }

  v12 = (a1 + 24);
  v11 = a1[24];
  v13 = a1[12];
  if (v13 < *a1)
  {
    if (v11 >= v13)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(a1, (a1 + 12));
      if (v3[24] >= v3[12])
      {
        goto LABEL_31;
      }

      a1 = v3 + 12;
    }

    v14 = (v3 + 24);
    goto LABEL_30;
  }

  if (v11 < v13)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>((a1 + 12), (a1 + 24));
    if (v3[12] < *v3)
    {
      a1 = v3;
      v14 = (v3 + 12);
LABEL_30:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Live_Property_Traits *&,AMCP::Live_Property_Traits *&>(a1, v14);
    }
  }

LABEL_31:
  v15 = (v3 + 36);
  if (v3 + 36 == a2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  while (1)
  {
    v18 = *v15;
    if (*v15 < *v12)
    {
      v36 = *(v15 + 2);
      v37 = v15[6];
      v33 = *(v15 + 8);
      *(v15 + 1) = 0;
      *(v15 + 2) = 0;
      v20 = *(v15 + 3);
      v19 = *(v15 + 4);
      *(v15 + 3) = 0;
      v34 = v19;
      v21 = v16;
      v35 = *(v15 + 10);
      while (1)
      {
        v22 = v3 + v21;
        *(v22 + 36) = *(v3 + v21 + 96);
        *(v22 + 147) = *(v3 + v21 + 99);
        v23 = *(v3 + v21 + 152);
        if (v23)
        {
          *(v22 + 20) = v23;
          operator delete(v23);
          *(v22 + 21) = 0;
        }

        *(v22 + 152) = *(v22 + 104);
        *(v22 + 13) = 0;
        *(v22 + 14) = 0;
        v24 = *(v22 + 15);
        v25 = *(v22 + 16);
        *(v22 + 15) = 0;
        *(v22 + 21) = v24;
        *(v22 + 22) = v25;
        *(v22 + 46) = *(v22 + 34);
        if (v21 == -96)
        {
          break;
        }

        v26 = v3 + v21;
        v27 = *(v3 + v21 + 48);
        v21 -= 48;
        if (v18 >= v27)
        {
          v28 = v3 + v21 + 144;
          v29 = (v26 + 104);
          v30 = v26 + 128;
          goto LABEL_41;
        }
      }

      v29 = (v3 + 2);
      v30 = v3 + 8;
      v28 = v3;
LABEL_41:
      *v28 = v18;
      *(v28 + 4) = v36;
      *(v28 + 6) = v37;
      v31 = *v29;
      if (*v29)
      {
        *(v28 + 16) = v31;
        operator delete(v31);
      }

      *v29 = v33;
      *(v28 + 24) = v20;
      *v30 = v34;
      v30[2] = v35;
      if (++v17 == 8)
      {
        return v15 + 48 == a2;
      }
    }

    v12 = v15;
    v16 += 48;
    v15 += 48;
    if (v15 == a2)
    {
      return 1;
    }
  }
}

void std::vector<AMCP::Live_Property_Traits>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 5);
        if (v6)
        {
          *(v4 - 4) = v6;
          operator delete(v6);
        }

        v4 -= 48;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AMCP::Live_Property_Traits>,AMCP::Live_Property_Traits*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 40);
      if (v5)
      {
        *(v3 - 32) = v5;
        operator delete(v5);
      }

      v3 -= 48;
    }
  }

  return a1;
}

void AMCP::IO_Core::IOContext_Core::update_core()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = 0x676C6F6273747274;
  v1 = 0;
  std::allocate_shared[abi:ne200100]<AMCP::Core::Operation,std::allocator<AMCP::Core::Operation>,AMCP::Address,0>();
}

void sub_1DE237080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE237328(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

AMCP::Thing *std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::insert_or_assign[abi:ne200100]<AMCP::Thing>(void *a1, unint64_t *a2, AMCP *this)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_17;
  }

  return AMCP::swap(this, (v8 + 3), this);
}

uint64_t std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::unordered_map<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,std::shared_ptr<AMCP::Core::Operation>>>>::insert_or_assign[abi:ne200100]<std::shared_ptr<AMCP::Core::Operation> const&>(void *a1, unsigned int *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = v4 & 0xFF000000 | (v3 << 32) | *&v5 & 0xFFFFFFLL;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_19;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v4 & 0xFF000000 | (v3 << 32) | *&v5 & 0xFFFFFFLL;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_19;
    }

LABEL_18:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  if (v11[2] != __PAIR64__(v4, v3) || *(v11 + 6) != v5)
  {
    goto LABEL_18;
  }

  v14 = *a3;
  v13 = a3[1];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = v11[5];
  v11[4] = v14;
  v11[5] = v13;
  if (v15)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

uint64_t AMCP::Implementation::get_type_marker<std::function<BOOL ()(unsigned long long)>>()
{
  v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return *(v0 + 67);
}

uint64_t std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[137];
}

uint64_t std::__function::__value_func<void ()(AMCP::Thing const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(AMCP::Thing const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

__objc2_prot_list *AMCP::Implementation::get_type_marker<std::function<BOOL ()(std::vector<std::shared_ptr<AMCP::Graph::Timebase>> const&)>>()
{
  v0 = &OBJC_PROTOCOL___HAL_DSP_HostCallbacks;
  {
    v0 = &OBJC_PROTOCOL___HAL_DSP_HostCallbacks;
    if (v2)
    {
      v0 = &OBJC_PROTOCOL___HAL_DSP_HostCallbacks;
    }
  }

  return v0[13].prots;
}

uint64_t std::__function::__value_func<BOOL ()(std::vector<std::shared_ptr<AMCP::Graph::Timebase>> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<BOOL ()(std::vector<std::shared_ptr<AMCP::Graph::Timebase>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<AMCP::Transport_State ()(void)>>()
{
  v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return *(v0 + 63);
}

uint64_t std::__function::__value_func<AMCP::Transport_State ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<AMCP::Transport_State ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Pause_Behavior)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[275];
}

uint64_t std::__function::__value_func<void ()(AMCP::Pause_Behavior)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(AMCP::Pause_Behavior)>::~__value_func[abi:ne200100](uint64_t a1)
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

__objc2_meth_list *AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Resume_Behavior)>>()
{
  v0 = &OBJC_PROTOCOL___HAL_DSP_HostCallbacks;
  {
    v0 = &OBJC_PROTOCOL___HAL_DSP_HostCallbacks;
    if (v2)
    {
      v0 = &OBJC_PROTOCOL___HAL_DSP_HostCallbacks;
    }
  }

  return v0[13].class_meths;
}

uint64_t std::__function::__value_func<void ()(AMCP::Resume_Behavior)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(AMCP::Resume_Behavior)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_1DE23829C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<unsigned int ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<unsigned int ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AMCP::Core::Operation_Utilities::add_generic_property_getter<unsigned int>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
  v2 = v5;
  v3 = v6;
  v5 = 0;
  v6 = 0;
  v12 = v2;
  v13 = v3;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  if (v8)
  {
    v4 = *(v7 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v4 >= v3)
      {
        v4 %= v3;
      }
    }

    else
    {
      v4 &= v3 - 1;
    }

    *(v2 + 8 * v4) = v14;
    v7 = 0;
    v8 = 0;
  }

  v16 = v10;
  v17 = v11;
  v19 = 0;
  operator new();
}

void sub_1DE23855C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(unsigned int const&)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[135];
}

uint64_t std::__function::__value_func<void ()(unsigned int const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AMCP::Core::Operation_Utilities::add_generic_property_setter<unsigned int>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
  v2 = v5;
  v3 = v6;
  v5 = 0;
  v6 = 0;
  v12 = v2;
  v13 = v3;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  if (v8)
  {
    v4 = *(v7 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v4 >= v3)
      {
        v4 %= v3;
      }
    }

    else
    {
      v4 &= v3 - 1;
    }

    *(v2 + 8 * v4) = v14;
    v7 = 0;
    v8 = 0;
  }

  v16 = v10;
  v17 = v11;
  v19 = 0;
  operator new();
}

void sub_1DE238888(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<std::tuple<unsigned int,unsigned int> ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[139];
}

uint64_t std::__function::__value_func<std::tuple<unsigned int,unsigned int> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::tuple<unsigned int,unsigned int> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AMCP::Core::Operation_Utilities::add_generic_property_getter<std::tuple<unsigned int,unsigned int>>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
  v2 = v5;
  v3 = v6;
  v5 = 0;
  v6 = 0;
  v12 = v2;
  v13 = v3;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  if (v8)
  {
    v4 = *(v7 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v4 >= v3)
      {
        v4 %= v3;
      }
    }

    else
    {
      v4 &= v3 - 1;
    }

    *(v2 + 8 * v4) = v14;
    v7 = 0;
    v8 = 0;
  }

  v16 = v10;
  v17 = v11;
  v19 = 0;
  operator new();
}

void sub_1DE238BB4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<float ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[141];
}

uint64_t std::__function::__value_func<float ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<float ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AMCP::Core::Operation_Utilities::add_generic_property_getter<float>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
  v2 = v5;
  v3 = v6;
  v5 = 0;
  v6 = 0;
  v12 = v2;
  v13 = v3;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  if (v8)
  {
    v4 = *(v7 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v4 >= v3)
      {
        v4 %= v3;
      }
    }

    else
    {
      v4 &= v3 - 1;
    }

    *(v2 + 8 * v4) = v14;
    v7 = 0;
    v8 = 0;
  }

  v16 = v10;
  v17 = v11;
  v19 = 0;
  operator new();
}

void sub_1DE238EE0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(float const&)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[143];
}

uint64_t std::__function::__value_func<void ()(float const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(float const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AMCP::Core::Operation_Utilities::add_generic_property_setter<float>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
  v2 = v5;
  v3 = v6;
  v5 = 0;
  v6 = 0;
  v12 = v2;
  v13 = v3;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  if (v8)
  {
    v4 = *(v7 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v4 >= v3)
      {
        v4 %= v3;
      }
    }

    else
    {
      v4 &= v3 - 1;
    }

    *(v2 + 8 * v4) = v14;
    v7 = 0;
    v8 = 0;
  }

  v16 = v10;
  v17 = v11;
  v19 = 0;
  operator new();
}

void sub_1DE23920C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<double ()(void)>>()
{
  v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return *(v0 + 71);
}

uint64_t std::__function::__value_func<double ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<double ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AMCP::Core::Operation_Utilities::add_generic_property_getter<double>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
  v2 = v5;
  v3 = v6;
  v5 = 0;
  v6 = 0;
  v12 = v2;
  v13 = v3;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  if (v8)
  {
    v4 = *(v7 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v4 >= v3)
      {
        v4 %= v3;
      }
    }

    else
    {
      v4 &= v3 - 1;
    }

    *(v2 + 8 * v4) = v14;
    v7 = 0;
    v8 = 0;
  }

  v16 = v10;
  v17 = v11;
  v19 = 0;
  operator new();
}

void sub_1DE239538(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<caulk::mach::os_workgroup_interval_managed ()(void)>>()
{
  v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return *(v0 + 73);
}

uint64_t std::__function::__value_func<caulk::mach::os_workgroup_interval_managed ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<caulk::mach::os_workgroup_interval_managed ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(caulk::mach::os_workgroup_interval_managed const&)>>()
{
  v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return *(v0 + 77);
}

uint64_t std::__function::__value_func<void ()(caulk::mach::os_workgroup_interval_managed const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(caulk::mach::os_workgroup_interval_managed const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AMCP::Core::Operation_Utilities::add_generic_property_getter<BOOL>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
  v2 = v5;
  v3 = v6;
  v5 = 0;
  v6 = 0;
  v12 = v2;
  v13 = v3;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  if (v8)
  {
    v4 = *(v7 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v4 >= v3)
      {
        v4 %= v3;
      }
    }

    else
    {
      v4 &= v3 - 1;
    }

    *(v2 + 8 * v4) = v14;
    v7 = 0;
    v8 = 0;
  }

  v16 = v10;
  v17 = v11;
  v19 = 0;
  operator new();
}

void sub_1DE2399D0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(BOOL const&)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[151];
}

uint64_t std::__function::__value_func<void ()(BOOL const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AMCP::Core::Operation_Utilities::add_generic_property_setter<BOOL>(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(&v5, a1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
  v2 = v5;
  v3 = v6;
  v5 = 0;
  v6 = 0;
  v12 = v2;
  v13 = v3;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  if (v8)
  {
    v4 = *(v7 + 8);
    if ((v3 & (v3 - 1)) != 0)
    {
      if (v4 >= v3)
      {
        v4 %= v3;
      }
    }

    else
    {
      v4 &= v3 - 1;
    }

    *(v2 + 8 * v4) = v14;
    v7 = 0;
    v8 = 0;
  }

  v16 = v10;
  v17 = v11;
  v19 = 0;
  operator new();
}

void sub_1DE239CFC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Power_State)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[95];
}

uint64_t std::__function::__value_func<void ()(AMCP::Power_State)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(AMCP::Power_State)>::~__value_func[abi:ne200100](uint64_t a1)
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

__objc2_prot_list *AMCP::Implementation::get_type_marker<std::function<std::shared_ptr<AMCP::Graph::Timebase> ()(void)>>()
{
  v0 = &OBJC_PROTOCOL___HAL_DSP_HostCallbacks;
  {
    v0 = &OBJC_PROTOCOL___HAL_DSP_HostCallbacks;
    if (v2)
    {
      v0 = &OBJC_PROTOCOL___HAL_DSP_HostCallbacks;
    }
  }

  return v0[3].prots;
}

uint64_t std::__function::__value_func<std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<AMCP::Thing ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<AMCP::Thing ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

__objc2_meth_list *AMCP::Implementation::get_type_marker<std::function<AMCP::Graph::Timebase_Set ()(void)>>()
{
  v0 = &OBJC_PROTOCOL___HAL_DSP_HostCallbacks;
  {
    v0 = &OBJC_PROTOCOL___HAL_DSP_HostCallbacks;
    if (v2)
    {
      v0 = &OBJC_PROTOCOL___HAL_DSP_HostCallbacks;
    }
  }

  return v0[12].opt_class_meths;
}

uint64_t std::__function::__value_func<AMCP::Graph::Timebase_Set ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<AMCP::Graph::Timebase_Set ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_34,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_34>,void ()(BOOL const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE4$_34"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_34,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_34>,void ()(BOOL const&)>::operator()(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  std::mutex::lock((v3 + 200));
  v4 = *(*(v3 + 160) + 32);
  v5.n128_u32[0] = caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(v4);
  v5.n128_u16[2] = 0;
  v5.n128_u32[2] = 4;
  v5.n128_u8[12] = v2;
  caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::store(v4, &v5);

  std::mutex::unlock((v3 + 200));
}

void sub_1DE23A320(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_34,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_34>,void ()(BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5962460;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_33,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_33>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE4$_33"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_33,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_33>,BOOL ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::mutex::lock((v1 + 200));
  caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(*(*(v1 + 160) + 32));
  v3 = HIDWORD(v2) & 1;
  std::mutex::unlock((v1 + 200));
  return v3;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_33,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_33>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59623E0;
  a2[1] = v2;
  return result;
}

uint64_t std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = i[2];
    v6 = *(a1 + 8);
    if (!*&v6)
    {
      goto LABEL_18;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = i[2];
      if (v5 >= *&v6)
      {
        v8 = v5 % *&v6;
      }
    }

    else
    {
      v8 = (*&v6 - 1) & v5;
    }

    v9 = *(*a1 + 8 * v8);
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
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[7];
      if (v4)
      {
        v4(0, v2 + 3, 0, 0);
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

uint64_t std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Graph::Timebase_Set>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Graph::Timebase_Set>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_getterINS_5Graph12Timebase_SetEEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Graph::Timebase_Set>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Graph::Timebase_Set>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AMCP::Core::Operation::call_function<AMCP::Graph::Timebase_Set>(&v3, (a1 + 8));
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  AMCP::Implementation::Outboard_Storage<AMCP::Graph::Timebase_Set>::construct<AMCP::Graph::Timebase_Set&>(a2);
}

uint64_t AMCP::Core::Operation::call_function<AMCP::Graph::Timebase_Set>(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = AMCP::Implementation::get_type_marker<std::function<AMCP::Graph::Timebase_Set ()(void)>>();
  v4 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(a2, v3);
  if (!v4)
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v28 = 1024;
      v29 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v18);
    std::runtime_error::runtime_error(&v19, &v18);
    std::runtime_error::runtime_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5992170;
    v21 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v20);
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = AMCP::Graph::Timebase_Set, Argument_Types = <>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v5 = v4;
  if (!*(v4 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<AMCP::Graph::Timebase_Set ()(void)>>(), (v4 = (*(v5 + 7))(4, v5 + 24, 0, buf)) == 0))
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v28 = 1024;
      v29 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v18);
    std::runtime_error::runtime_error(&v19, &v18);
    std::runtime_error::runtime_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5992170;
    v21 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v20);
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = AMCP::Graph::Timebase_Set, Argument_Types = <>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v6 = *(v4 + 3);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v6 + 48))(v6);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE23ADF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v25 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v24)
  {
    __cxa_free_exception(v23);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v25 - 129));
  _Unwind_Resume(a1);
}

void AMCP::Implementation::Outboard_Storage<AMCP::Graph::Timebase_Set>::construct<AMCP::Graph::Timebase_Set&>(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = AMCP::Implementation::Outboard_Storage<AMCP::Graph::Timebase_Set>::dispatch;
  operator new();
}

void sub_1DE23AF2C(_Unwind_Exception *a1)
{
  std::__hash_table<std::shared_ptr<AMCP::Graph::Timebase>,std::hash<std::shared_ptr<AMCP::Graph::Timebase>>,std::equal_to<std::shared_ptr<AMCP::Graph::Timebase>>,std::allocator<std::shared_ptr<AMCP::Graph::Timebase>>>::~__hash_table(v2);
  MEMORY[0x1E12C1730](v2, v1);
  _Unwind_Resume(a1);
}

void AMCP::Graph::Timebase_Set::~Timebase_Set(AMCP::Graph::Timebase_Set *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  std::__hash_table<std::shared_ptr<AMCP::Graph::Timebase>,std::hash<std::shared_ptr<AMCP::Graph::Timebase>>,std::equal_to<std::shared_ptr<AMCP::Graph::Timebase>>,std::allocator<std::shared_ptr<AMCP::Graph::Timebase>>>::~__hash_table(this);
}

uint64_t std::__hash_table<std::shared_ptr<AMCP::Graph::Timebase>,std::hash<std::shared_ptr<AMCP::Graph::Timebase>>,std::equal_to<std::shared_ptr<AMCP::Graph::Timebase>>,std::allocator<std::shared_ptr<AMCP::Graph::Timebase>>>::~__hash_table(uint64_t a1)
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
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
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

uint64_t std::unordered_set<std::shared_ptr<AMCP::Graph::Timebase>>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = i[2];
    v6 = 0x9DDFEA08EB382D69 * ((8 * (v5 & 0x1FFFFFFF) + 8) ^ HIDWORD(v5));
    v7 = 0x9DDFEA08EB382D69 * (HIDWORD(v5) ^ (v6 >> 47) ^ v6);
    v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
    v9 = *(a1 + 8);
    if (!*&v9)
    {
      goto LABEL_18;
    }

    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      if (v8 >= *&v9)
      {
        v11 = v8 % *&v9;
      }
    }

    else
    {
      v11 = v8 & (*&v9 - 1);
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
      if (v14 == v8)
      {
        break;
      }

      if (v10.u32[0] > 1uLL)
      {
        if (v14 >= *&v9)
        {
          v14 %= *&v9;
        }
      }

      else
      {
        v14 &= *&v9 - 1;
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

    if (v13[2] != v5)
    {
      goto LABEL_17;
    }
  }

  return a1;
}

uint64_t std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request>::__init_with_size[abi:ne200100]<AMCP::IO_Core::Play_State_Manager::Play_Request*,AMCP::IO_Core::Play_State_Manager::Play_Request*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE23B310(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::shared_ptr<AMCP::Graph::Timebase>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t AMCP::Implementation::Outboard_Storage<AMCP::Graph::Timebase_Set>::dispatch(int a1, uint64_t *a2, AMCP::Thing *a3, __objc2_meth_list **a4)
{
  result = 0;
  if (a1 <= 2)
  {
    if (!a1)
    {
LABEL_6:
      std::unique_ptr<AMCP::Graph::Timebase_Set>::reset[abi:ne200100](a2, 0);
      result = 0;
      a2[4] = 0;
      *a2 = 0u;
      *(a2 + 1) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      v8 = *a2;
      *a2 = 0;
      std::unique_ptr<AMCP::Graph::Timebase_Set>::reset[abi:ne200100](a3, v8);
      *(a3 + 4) = AMCP::Implementation::Outboard_Storage<AMCP::Graph::Timebase_Set>::dispatch;
      goto LABEL_6;
    }

    AMCP::Implementation::Outboard_Storage<AMCP::Graph::Timebase_Set>::construct<AMCP::Graph::Timebase_Set&>(a3, *a2);
    return 0;
  }

  if (a1 == 3)
  {
    v10 = AMCP::Implementation::get_type_marker<AMCP::Graph::Timebase_Set>();
    result = 0;
    *a4 = v10;
    return result;
  }

  if (a1 != 4)
  {
    if (a1 != 6)
    {
      return result;
    }

    v12 = 0;
    memset(v11, 0, sizeof(v11));
    AMCP::swap(v11, a3, a3);
    if (v12)
    {
      v12(0, v11, 0, 0);
    }

    return 0;
  }

  if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Graph::Timebase_Set>())
  {
    return *a2;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::unique_ptr<AMCP::Graph::Timebase_Set>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 40);
    if (v3)
    {
      *(v2 + 48) = v3;
      operator delete(v3);
    }

    std::__hash_table<std::shared_ptr<AMCP::Graph::Timebase>,std::hash<std::shared_ptr<AMCP::Graph::Timebase>>,std::equal_to<std::shared_ptr<AMCP::Graph::Timebase>>,std::allocator<std::shared_ptr<AMCP::Graph::Timebase>>>::~__hash_table(v2);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

__objc2_meth_list *AMCP::Implementation::get_type_marker<AMCP::Graph::Timebase_Set>()
{
  v0 = &OBJC_PROTOCOL___HAL_DSP_HostCallbacks;
  {
    v0 = &OBJC_PROTOCOL___HAL_DSP_HostCallbacks;
    if (v2)
    {
      v0 = &OBJC_PROTOCOL___HAL_DSP_HostCallbacks;
    }
  }

  return v0[3].class_meths;
}

AMCP::Thing *AMCP::swap(AMCP::Thing *this, AMCP::Thing *a2, AMCP::Thing *a3)
{
  if (this != a2)
  {
    v3 = a2;
    v4 = this;
    v5 = *(a2 + 4);
    if (*(this + 4))
    {
      if (v5)
      {
        v7 = 0;
        memset(v6, 0, sizeof(v6));
        v5(2, a2, v6, 0);
        (*(v4 + 4))(2, v4, v3, 0);
        this = v7(2, v6, v4, 0);
        if (v7)
        {
          return v7(0, v6, 0, 0);
        }

        return this;
      }

      a2 = this;
      v4 = v3;
      v5 = *(this + 4);
    }

    else if (!v5)
    {
      return this;
    }

    return v5(2, a2, v4, 0);
  }

  return this;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Graph::Timebase_Set>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Graph::Timebase_Set>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Graph::Timebase_Set>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Graph::Timebase_Set>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5962350;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Graph::Timebase_Set>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Graph::Timebase_Set>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5962350;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Graph::Timebase_Set>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<AMCP::Graph::Timebase_Set>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5962350;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[7];
    if (v3)
    {
      v3(0, __p + 3, 0, 0);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<AMCP::Graph::Timebase_Set ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, __objc2_meth_list **a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<AMCP::Graph::Timebase_Set ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<AMCP::Graph::Timebase_Set ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<AMCP::Graph::Timebase_Set ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<AMCP::Graph::Timebase_Set ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<AMCP::Graph::Timebase_Set ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<AMCP::Graph::Timebase_Set ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_32,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_32>,AMCP::Graph::Timebase_Set ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE4$_32"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_32,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_32>,AMCP::Graph::Timebase_Set ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  std::mutex::lock((v3 + 200));
  v4 = *(v3 + 128);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = *(v4 + 80);
  v5 = *(v4 + 88);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
LABEL_8:
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 1065353216;
      *(a2 + 48) = 0;
      *(a2 + 56) = 0;
      goto LABEL_9;
    }
  }

  else if (!v6)
  {
    goto LABEL_8;
  }

  std::unordered_set<std::shared_ptr<AMCP::Graph::Timebase>>::unordered_set(a2, v6);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  std::vector<AMCP::IO_Core::Play_State_Manager::Play_Request>::__init_with_size[abi:ne200100]<AMCP::IO_Core::Play_State_Manager::Play_Request*,AMCP::IO_Core::Play_State_Manager::Play_Request*>(a2 + 40, *(v6 + 40), *(v6 + 48), (*(v6 + 48) - *(v6 + 40)) >> 2);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

LABEL_9:

  std::mutex::unlock((v3 + 200));
}

void sub_1DE23BB5C(_Unwind_Exception *a1)
{
  std::__hash_table<std::shared_ptr<AMCP::Graph::Timebase>,std::hash<std::shared_ptr<AMCP::Graph::Timebase>>,std::equal_to<std::shared_ptr<AMCP::Graph::Timebase>>,std::allocator<std::shared_ptr<AMCP::Graph::Timebase>>>::~__hash_table(v1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::mutex::unlock((v3 + 200));
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_32,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_32>,AMCP::Graph::Timebase_Set ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59622C0;
  a2[1] = v2;
  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<AMCP::Thing ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<AMCP::Thing ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<AMCP::Thing ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<AMCP::Thing ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<AMCP::Thing ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_31,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_31>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE4$_31"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_31,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_31>,AMCP::Thing ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  std::mutex::lock((v3 + 200));
  AMCP::IO_Core::IOContext_Core::get_master_timebase(&v4, v3);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = v4;
  *(a2 + 32) = AMCP::Implementation::In_Place_Storage<std::shared_ptr<AMCP::Graph::Timebase>>::dispatch;

  std::mutex::unlock((v3 + 200));
}

void AMCP::IO_Core::IOContext_Core::get_master_timebase(AMCP::IO_Core::IOContext_Core *this, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 128);
  if (!v3)
  {
    *this = 0;
    *(this + 1) = 0;
    goto LABEL_9;
  }

  v5 = *(v3 + 96);
  v4 = *(v3 + 104);
  if (!v4)
  {
    if (v5)
    {
      *this = v5;
      *(this + 1) = 0;
      goto LABEL_9;
    }

LABEL_10:
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
      v26 = "IOContext_Core.cpp";
      v27 = 1024;
      v28 = 1040;
      v29 = 2080;
      v30 = "not (m_inventory->get_master_timebase())";
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
    v31 = "Timebase_Ref AMCP::IO_Core::IOContext_Core::get_master_timebase() const";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/IOContext_Core.cpp";
    v33 = 1040;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  if (!v5)
  {
    goto LABEL_10;
  }

  v7 = *(a2 + 128);
  v9 = *(v7 + 96);
  v8 = *(v7 + 104);
  *this = v9;
  *(this + 1) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_9:
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1DE23C160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v27 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a26);
  MEMORY[0x1E12C0F00](&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v26)
  {
    __cxa_free_exception(a10);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 113));
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::In_Place_Storage<std::shared_ptr<AMCP::Graph::Timebase>>::dispatch(uint64_t result, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v9 = AMCP::Implementation::get_type_marker<std::shared_ptr<AMCP::Graph::Timebase>>();
        result = 0;
        *a4 = v9;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<std::shared_ptr<AMCP::Graph::Timebase>>())
      {
        return a2;
      }

      else
      {
        return 0;
      }

      return result;
    }

    if (result != 5)
    {
      if (result != 6)
      {
        return result;
      }

      v18 = 0;
      memset(v17, 0, sizeof(v17));
      AMCP::swap(v17, a3, a3);
      if (v18)
      {
        v18(0, v17, 0, 0);
      }

      return 0;
    }

    v10 = AMCP::Implementation::get_type_marker<std::shared_ptr<AMCP::Graph::Timebase>>();
    v11 = *(a2 + 32);
    *&v17[0] = 0;
    if (v11)
    {
      v11(3, a2, 0, v17);
      v11 = *&v17[0];
    }

    if (v11 != v10)
    {
      goto LABEL_31;
    }

    v12 = *(a3 + 4);
    v19 = 0;
    if (v12)
    {
      v12(3, a3, 0, &v19);
      v12 = v19;
    }

    if (v12 == v10)
    {
      if (*(a2 + 32))
      {
        *&v17[0] = AMCP::Implementation::get_type_marker<std::shared_ptr<AMCP::Graph::Timebase>>();
        v13 = (*(a2 + 32))(4, a2, 0, v17);
      }

      else
      {
        v13 = 0;
      }

      *&v17[0] = AMCP::Implementation::get_type_marker<std::shared_ptr<AMCP::Graph::Timebase>>();
      if (*v13 == *(*(a3 + 4))(4, a3, 0, v17))
      {
        return 1;
      }
    }

    else
    {
LABEL_31:
      AMCP::Thing::convert_to<std::shared_ptr<AMCP::Graph::Timebase>>(v17, a2);
      AMCP::Thing::convert_to<std::shared_ptr<AMCP::Graph::Timebase>>(&v19, a3);
      v15 = *&v17[0];
      v16 = v19;
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      if (*(&v17[0] + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v17[0] + 1));
      }

      if (v15 == v16)
      {
        return 1;
      }
    }

    return 0;
  }

  if (!result)
  {
    v8 = *(a2 + 8);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    result = 0;
    *(a2 + 32) = 0;
    v7 = 0uLL;
LABEL_18:
    *a2 = v7;
    *(a2 + 16) = v7;
    return result;
  }

  if (result != 1)
  {
    if (result != 2)
    {
      return result;
    }

    result = 0;
    v7 = 0uLL;
    *a3 = 0u;
    *(a3 + 1) = 0u;
    *a3 = *a2;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::shared_ptr<AMCP::Graph::Timebase>>::dispatch;
    *(a2 + 32) = 0;
    goto LABEL_18;
  }

  *a3 = 0u;
  *(a3 + 1) = 0u;
  *a3 = *a2;
  v14 = *(a2 + 8);
  *(a3 + 1) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  result = 0;
  *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::shared_ptr<AMCP::Graph::Timebase>>::dispatch;
  return result;
}

uint64_t AMCP::Implementation::get_type_marker<std::shared_ptr<AMCP::Graph::Timebase>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[126];
}

void *AMCP::Thing::convert_to<std::shared_ptr<AMCP::Graph::Timebase>>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_15;
  }

  v4 = AMCP::Implementation::get_type_marker<std::shared_ptr<AMCP::Graph::Timebase>>();
  v5 = *(a2 + 32);
  v18 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v18);
    v5 = v18;
  }

  if (v5 == v4)
  {
    *&v16[0] = v4;
    result = (*(a2 + 32))(4, a2, 0, v16);
    if (result)
    {
      v7 = result[1];
      *a1 = *result;
      a1[1] = v7;
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      return result;
    }

LABEL_15:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<std::shared_ptr<AMCP::Graph::Timebase>>();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  (*(a2 + 32))(6, a2, v16, &v15);
  if (!v17)
  {
    v11 = __cxa_allocate_exception(8uLL);
    v12 = std::bad_cast::bad_cast(v11);
    __cxa_throw(v12, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = v4;
  result = v17(4, v16, 0, &v15);
  if (!result)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v8 = result[1];
  *a1 = *result;
  a1[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE23C6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_31,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_31>,AMCP::Thing ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5962240;
  a2[1] = v2;
  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::shared_ptr<AMCP::Graph::Timebase> ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, __objc2_prot_list **a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::shared_ptr<AMCP::Graph::Timebase> ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::shared_ptr<AMCP::Graph::Timebase> ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v11 = 0;
        memset(v10, 0, sizeof(v10));
        AMCP::swap(v10, a3, a3);
        if (v11)
        {
          v11(0, v10, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::shared_ptr<AMCP::Graph::Timebase> ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    std::__function::__value_func<std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::__value_func[abi:ne200100](a3, a2);
    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::shared_ptr<AMCP::Graph::Timebase> ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_30,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_30>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE4$_30"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_30,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_30>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::operator()(uint64_t a1@<X0>, AMCP::IO_Core::IOContext_Core *a2@<X8>)
{
  v3 = *(a1 + 8);
  std::mutex::lock((v3 + 200));
  AMCP::IO_Core::IOContext_Core::get_master_timebase(a2, v3);

  std::mutex::unlock((v3 + 200));
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_30,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_30>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59621C0;
  a2[1] = v2;
  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(AMCP::Power_State)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Power_State)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Power_State)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<void ()(AMCP::Power_State)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<void ()(AMCP::Power_State)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(AMCP::Power_State)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(AMCP::Power_State)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_29,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_29>,void ()(AMCP::Power_State)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE4$_29"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_29,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_29>,void ()(AMCP::Power_State)>::operator()(uint64_t a1, int *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = *(a1 + 8);
  std::mutex::lock((v3 + 200));
  v4 = *(v3 + 160);
  v5 = pthread_self();
  is_thread_configured_for_realtime = AMCP::Utility::is_thread_configured_for_realtime(v5, v6);
  if (is_thread_configured_for_realtime)
  {
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(is_thread_configured_for_realtime);
    }

    v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      v17 = *v16;
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    else
    {
      v17 = *v16;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v34 = "IO_Thread.cpp";
      v35 = 1024;
      v36 = 177;
      v37 = 2080;
      v38 = "not (not AMCP::Utility::is_thread_configured_for_realtime(pthread_self()))";
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Don't call notify_and_update_power_assertions from a realtime thread", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v23);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Don't call notify_and_update_power_assertions from a realtime thread", &v25);
    std::logic_error::logic_error(&v22, &v25);
    v22.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v27, &v22);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = -1;
    v27.__vftable = &unk_1F5991430;
    v28 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v27);
    v39 = "void AMCP::IO_Core::IO_Thread::update_power_state_and_notify(AMCP::Power_State)";
    v40 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/IO_Thread.cpp";
    LODWORD(v41) = 177;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v24);
  }

  *(v4 + 56) = v2;
  v8 = *(v4 + 32);
  *buf = caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(v8);
  LOWORD(v34) = 0;
  HIDWORD(v34) = v2;
  caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(v8);
  LOBYTE(v35) = v9 & 1;
  caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::store(v8, buf);
  v10 = pthread_cond_broadcast((v8 + 192));
  v11 = v10;
  AMCP::Utility::Kernel_Error_Category::get(v10);
  if (v11)
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v12);
    }

    v20 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *v20;
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    else
    {
      v21 = *v20;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v34 = "Thread_Control_State.cpp";
      v35 = 1024;
      v36 = 178;
      v37 = 2080;
      v38 = "kernel_error.operator BOOL()";
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to set the signaling the condition variable", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v22);
    __cxa_allocate_exception(0x50uLL);
    MEMORY[0x1E12C10B0](&v26, v11, &AMCP::Utility::Kernel_Error_Category::get(void)::s_category);
    boost::enable_error_info<std::system_error>(&v27, &v26);
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::clone_impl(buf, &v27);
    v41 = "void AMCP::IO_Core::Thread_Control_State::power_state_changed(AMCP::Power_State)";
    v42 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Thread_Control_State.cpp";
    v43 = 178;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v24);
  }

  v13 = *MEMORY[0x1E69E9840];

  std::mutex::unlock((v3 + 200));
}

void sub_1DE23D12C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, char a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, uint64_t a19, void *a20, void *__p, uint64_t a22, uint64_t a23, std::runtime_error a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
  }

  if (a17)
  {
    a18 = a17;
    operator delete(a17);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::~clone_impl(v29 - 144);
  boost::exception_detail::error_info_injector<std::system_error>::~error_info_injector(&a27);
  std::runtime_error::~runtime_error(&a24);
  if (a10)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a11);
  std::mutex::unlock((v28 + 200));
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_29,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_29>,void ()(AMCP::Power_State)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59620E8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_28,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_28>,void ()(BOOL const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE4$_28"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_28,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_28>,void ()(BOOL const&)>::operator()(uint64_t result, char *a2)
{
  v2 = *a2;
  v3 = *(*(result + 8) + 160);
  v4 = *(v3 + 56);
  *(v3 + 61) = *a2;
  *(v3 + 62) = (v4 == 2) & (v2 ^ 1);
  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_28,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_28>,void ()(BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5962068;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_27,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_27>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE4$_27"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_27,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_27>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5961FE8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_26,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_26>,void ()(BOOL const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE4$_26"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_26,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_26>,void ()(BOOL const&)>::operator()(uint64_t result, _BYTE *a2)
{
  v2 = *(*(result + 8) + 160);
  v3 = *(v2 + 56);
  *(v2 + 60) = *a2;
  if (v3 == 2)
  {
    v4 = *(v2 + 61) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  *(v2 + 62) = v4 & 1;
  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_26,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_26>,void ()(BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5961F68;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_25,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_25>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE4$_25"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_25,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_25>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5961EE8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_24,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_24>,void ()(BOOL const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE4$_24"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_24,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_24>,void ()(BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5961E68;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_23,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_23>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE4$_23"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_23,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_23>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5961DE8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<BOOL>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<BOOL>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_setterIbEEvRNS0_9OperationEEUlRKNS_5ThingEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t AMCP::Core::Operation::call_function<void,BOOL const&>(void *a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Implementation::get_type_marker<std::function<void ()(BOOL const&)>>();
  v5 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(a1, v4);
  if (!v5)
  {
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      v17 = *v16;
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    else
    {
      v17 = *v16;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v29 = 1024;
      v30 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v19);
    std::runtime_error::runtime_error(&v20, &v19);
    std::runtime_error::runtime_error(&v21, &v20);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5992170;
    v22 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v21);
    v31 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const BOOL &>]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v33 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  v6 = v5;
  if (!*(v5 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(BOOL const&)>>(), (v5 = (*(v6 + 7))(4, v6 + 24, 0, buf)) == 0))
  {
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
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
      *&buf[4] = "Operation.h";
      v29 = 1024;
      v30 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v19);
    std::runtime_error::runtime_error(&v20, &v19);
    std::runtime_error::runtime_error(&v21, &v20);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5992170;
    v22 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v21);
    v31 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const BOOL &>]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v33 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  v7 = *(v5 + 3);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v7 + 48))(v7, a2);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE23DDE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v25 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v24)
  {
    __cxa_free_exception(v23);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v25 - 129));
  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<BOOL>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<BOOL>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<BOOL>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<BOOL>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F598A6C0;
  std::unordered_map<AMCP::Type_ID,AMCP::Thing,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,std::allocator<std::pair<AMCP::Type_ID const,AMCP::Thing>>>::unordered_map(a2 + 8, a1 + 8);
  result = *(a1 + 48);
  *(a2 + 48) = result;
  *(a2 + 56) = *(a1 + 56);
  return result;
}

void std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<BOOL>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<BOOL>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F598A6C0;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_setter<BOOL>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_setter<BOOL>(AMCP::Core::Operation &)::{lambda(AMCP::Thing const&)#1}>,void ()(AMCP::Thing const&)>::~__func(void *a1)
{
  *a1 = &unk_1F598A6C0;
  std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(BOOL const&)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(BOOL const&)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(BOOL const&)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<void ()(BOOL const&)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(BOOL const&)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(BOOL const&)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_22,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_22>,void ()(BOOL const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core14IOContext_Core11update_coreERNS_4Core13Operation_SetEE4$_22"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_22,std::allocator<AMCP::IO_Core::IOContext_Core::update_core(AMCP::Core::Operation_Set &)::$_22>,void ()(BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5961D68;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Core19Operation_Utilities27add_generic_property_getterIbEEvRNS0_9OperationEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double std::__function::__func<void AMCP::Core::Operation_Utilities::add_generic_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1},std::allocator<void AMCP::Core::Operation_Utilities::add_generic_property_getter<BOOL>(AMCP::Core::Operation &)::{lambda(void)#1}>,AMCP::Thing ()(void)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = AMCP::Core::Operation::call_function<BOOL>((a1 + 8));
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *a2 = v3;
  *(a2 + 32) = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<BOOL>::dispatch(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        result = 0;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        *a3 = *a2;
        *(a3 + 32) = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
        return result;
      }

      if (result != 2)
      {
        return result;
      }

      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
      *(a2 + 32) = 0;
    }

    else
    {
      result = 0;
      *(a2 + 32) = 0;
      v7 = 0uLL;
    }

    *a2 = v7;
    *(a2 + 16) = v7;
    return result;
  }

  if (result > 4)
  {
    if (result == 5)
    {
      type = AMCP::Implementation::get_type_marker<BOOL>();
      v12 = *(a2 + 32);
      *&v32 = 0;
      if (v12)
      {
        v12(3, a2, 0, &v32);
        v12 = v32;
      }

      if (v12 != type)
      {
        goto LABEL_28;
      }

      v13 = *(a3 + 32);
      v35 = 0;
      if (v13)
      {
        v13(3, a3, 0, &v35);
        v13 = v35;
      }

      if (v13 == type)
      {
        if (*(a2 + 32))
        {
          *&v32 = AMCP::Implementation::get_type_marker<BOOL>();
          v14 = (*(a2 + 32))(4, a2, 0, &v32);
        }

        else
        {
          v14 = 0;
        }

        *&v32 = AMCP::Implementation::get_type_marker<BOOL>();
        if (*v14 != *(*(a3 + 32))(4, a3, 0, &v32))
        {
          return 0;
        }
      }

      else
      {
LABEL_28:
        v15 = AMCP::Thing::convert_to<BOOL>(a2);
        if (v15 != AMCP::Thing::convert_to<BOOL>(a3))
        {
          return 0;
        }
      }

      return 1;
    }

    if (result != 6)
    {
      return result;
    }

    if (!AMCP::is_one_of<BOOL,char,signed char,unsigned char,short,unsigned short,int,unsigned int,long,unsigned long,long long,unsigned long long,float,double,long double,AMCP::Direction,applesauce::CF::BooleanRef,applesauce::CF::NumberRef>(a4))
    {
      goto LABEL_88;
    }

    if (*(a2 + 32))
    {
      *&v32 = AMCP::Implementation::get_type_marker<BOOL>();
      v9 = (*(a2 + 32))(4, a2, 0, &v32);
    }

    else
    {
      v9 = 0;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<BOOL>())
    {
      if (v9)
      {
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = *v9;
        v16 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
LABEL_82:
        v34 = v16;
        goto LABEL_89;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<char>())
    {
      if (v9)
      {
        v17 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v17;
        v16 = AMCP::Implementation::In_Place_Storage<char>::dispatch;
        goto LABEL_82;
      }

LABEL_83:
      __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
    }

    if (*a4 == AMCP::Implementation::get_type_marker<signed char>())
    {
      if (v9)
      {
        v18 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v18;
        v16 = AMCP::Implementation::In_Place_Storage<signed char>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned char>())
    {
      if (v9)
      {
        v19 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOBYTE(v32) = v19;
        v16 = AMCP::Implementation::In_Place_Storage<unsigned char>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<short>())
    {
      if (v9)
      {
        v20 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOWORD(v32) = v20;
        v16 = AMCP::Implementation::In_Place_Storage<short>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned short>())
    {
      if (v9)
      {
        v21 = *v9;
        v32 = 0u;
        v33 = 0u;
        LOWORD(v32) = v21;
        v16 = AMCP::Implementation::In_Place_Storage<unsigned short>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<int>())
    {
      if (v9)
      {
        v22 = *v9;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v22;
        v16 = AMCP::Implementation::In_Place_Storage<int>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned int>())
    {
      if (v9)
      {
        v23 = *v9;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v23;
        v16 = AMCP::Implementation::In_Place_Storage<unsigned int>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long>())
    {
      if (v9)
      {
        v24 = *v9;
        v33 = 0uLL;
        v32 = v24;
        v16 = AMCP::Implementation::In_Place_Storage<long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned long>())
    {
      if (v9)
      {
        v25 = *v9;
        v33 = 0uLL;
        v32 = v25;
        v16 = AMCP::Implementation::In_Place_Storage<unsigned long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long long>())
    {
      if (v9)
      {
        v26 = *v9;
        v33 = 0uLL;
        v32 = v26;
        v16 = AMCP::Implementation::In_Place_Storage<long long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned long long>())
    {
      if (v9)
      {
        v27 = *v9;
        v33 = 0uLL;
        v32 = v27;
        v16 = AMCP::Implementation::In_Place_Storage<unsigned long long>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<float>())
    {
      if (v9)
      {
        LOBYTE(v28) = *v9;
        v32 = 0u;
        v33 = 0u;
        *&v32 = v28;
        v16 = AMCP::Implementation::In_Place_Storage<float>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<double>())
    {
      if (v9)
      {
        LOBYTE(v29) = *v9;
        v33 = 0uLL;
        v32 = COERCE_UNSIGNED_INT64(v29);
        v16 = AMCP::Implementation::In_Place_Storage<double>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long double>())
    {
      if (v9)
      {
        LOBYTE(v30) = *v9;
        v33 = 0uLL;
        v32 = COERCE_UNSIGNED_INT64(v30);
        v16 = AMCP::Implementation::In_Place_Storage<long double>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Direction>())
    {
      if (v9)
      {
        v31 = *v9;
        v32 = 0u;
        v33 = 0u;
        LODWORD(v32) = v31;
        v16 = AMCP::Implementation::In_Place_Storage<AMCP::Direction>::dispatch;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>())
    {
      AMCP::Implementation::create_number_from<BOOL,applesauce::CF::BooleanRef>(&v32, v9);
      goto LABEL_89;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>())
    {
      AMCP::Implementation::create_number_from<BOOL,applesauce::CF::NumberRef>(&v32, v9);
    }

    else
    {
LABEL_88:
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
    }

LABEL_89:
    AMCP::swap(&v32, a3, v8);
    if (v34)
    {
      v34(0, &v32, 0, 0);
    }

    return 0;
  }

  if (result == 3)
  {
    v10 = AMCP::Implementation::get_type_marker<BOOL>();
    result = 0;
    *a4 = v10;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<BOOL>())
  {
    return a2;
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_1DE23E9B0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE23E980);
}

BOOL AMCP::is_one_of<BOOL,char,signed char,unsigned char,short,unsigned short,int,unsigned int,long,unsigned long,long long,unsigned long long,float,double,long double,AMCP::Direction,applesauce::CF::BooleanRef,applesauce::CF::NumberRef>(void *a1)
{
  if (*a1 == AMCP::Implementation::get_type_marker<BOOL>() || *a1 == AMCP::Implementation::get_type_marker<char>() || *a1 == AMCP::Implementation::get_type_marker<signed char>() || *a1 == AMCP::Implementation::get_type_marker<unsigned char>() || *a1 == AMCP::Implementation::get_type_marker<short>() || *a1 == AMCP::Implementation::get_type_marker<unsigned short>() || *a1 == AMCP::Implementation::get_type_marker<int>() || *a1 == AMCP::Implementation::get_type_marker<unsigned int>() || *a1 == AMCP::Implementation::get_type_marker<long>() || *a1 == AMCP::Implementation::get_type_marker<unsigned long>() || *a1 == AMCP::Implementation::get_type_marker<long long>())
  {
    return 1;
  }

  return AMCP::is_one_of<unsigned long long,float,double,long double,AMCP::Direction,applesauce::CF::BooleanRef,applesauce::CF::NumberRef>(a1);
}

uint64_t AMCP::Implementation::get_type_marker<char>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      AMCP::Implementation::get_type_marker<char>(void)::s_type_marker = AMCP::Implementation::generate_type_marker(MEMORY[0x1E69E5450], v3);
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[475];
}

uint64_t AMCP::Implementation::get_type_marker<signed char>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      AMCP::Implementation::get_type_marker<signed char>(void)::s_type_marker = AMCP::Implementation::generate_type_marker(MEMORY[0x1E69E5440], v3);
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[477];
}

uint64_t AMCP::Implementation::get_type_marker<unsigned char>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      AMCP::Implementation::get_type_marker<unsigned char>(void)::s_type_marker = AMCP::Implementation::generate_type_marker(MEMORY[0x1E69E5470], v3);
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[479];
}

uint64_t AMCP::Implementation::get_type_marker<short>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      AMCP::Implementation::get_type_marker<short>(void)::s_type_marker = AMCP::Implementation::generate_type_marker(MEMORY[0x1E69E5498], v3);
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[481];
}

uint64_t AMCP::Implementation::get_type_marker<unsigned short>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      AMCP::Implementation::get_type_marker<unsigned short>(void)::s_type_marker = AMCP::Implementation::generate_type_marker(MEMORY[0x1E69E54A0], v3);
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[483];
}

uint64_t AMCP::Implementation::get_type_marker<int>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      AMCP::Implementation::get_type_marker<int>(void)::s_type_marker = AMCP::Implementation::generate_type_marker(MEMORY[0x1E69E5478], v3);
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[485];
}

uint64_t AMCP::Implementation::get_type_marker<long>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      AMCP::Implementation::get_type_marker<long>(void)::s_type_marker = AMCP::Implementation::generate_type_marker(MEMORY[0x1E69E5488], v3);
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[489];
}

uint64_t AMCP::Implementation::get_type_marker<unsigned long>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      AMCP::Implementation::get_type_marker<unsigned long>(void)::s_type_marker = AMCP::Implementation::generate_type_marker(MEMORY[0x1E69E5490], v3);
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[491];
}

uint64_t AMCP::Implementation::get_type_marker<long long>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      AMCP::Implementation::get_type_marker<long long>(void)::s_type_marker = AMCP::Implementation::generate_type_marker(MEMORY[0x1E69E54B0], v3);
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[493];
}

uint64_t AMCP::Implementation::get_type_marker<unsigned long long>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      AMCP::Implementation::get_type_marker<unsigned long long>(void)::s_type_marker = AMCP::Implementation::generate_type_marker(MEMORY[0x1E69E54B8], v3);
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[395];
}

uint64_t AMCP::Implementation::get_type_marker<float>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      AMCP::Implementation::get_type_marker<float>(void)::s_type_marker = AMCP::Implementation::generate_type_marker(MEMORY[0x1E69E5468], v3);
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[495];
}

uint64_t AMCP::Implementation::get_type_marker<double>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      AMCP::Implementation::get_type_marker<double>(void)::s_type_marker = AMCP::Implementation::generate_type_marker(MEMORY[0x1E69E5458], v3);
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[497];
}

uint64_t AMCP::Implementation::get_type_marker<long double>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      AMCP::Implementation::get_type_marker<long double>(void)::s_type_marker = AMCP::Implementation::generate_type_marker(MEMORY[0x1E69E5460], v3);
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[499];
}

uint64_t AMCP::Implementation::get_type_marker<AMCP::Direction>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[501];
}

uint64_t AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[503];
}

void *AMCP::Implementation::create_number_from<BOOL,applesauce::CF::BooleanRef>(void *result, _BYTE *a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  if (*a2)
  {
    v2 = MEMORY[0x1E695E4C8];
  }

  else
  {
    v2 = MEMORY[0x1E695E4B8];
  }

  v3 = *v2;
  result[2] = 0;
  result[3] = 0;
  *result = v3;
  result[1] = 0;
  result[4] = AMCP::Implementation::In_Place_Storage<applesauce::CF::BooleanRef>::dispatch;
  return result;
}

uint64_t AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[505];
}

void AMCP::Implementation::create_number_from<BOOL,applesauce::CF::NumberRef>(uint64_t a1, char *a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  valuePtr = *a2;
  v3 = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
  v6 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v4 = v3;
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  AMCP::Implementation::In_Place_Storage<applesauce::CF::NumberRef>::construct<applesauce::CF::NumberRef&>(a1, &v6);
  CFRelease(v4);
}

const void **applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<applesauce::CF::NumberRef>::construct<applesauce::CF::NumberRef&>(uint64_t a1, CFTypeRef *a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v3;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<applesauce::CF::NumberRef>::dispatch;
  return a1;
}

BOOL AMCP::Implementation::In_Place_Storage<applesauce::CF::NumberRef>::dispatch(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result)
      {
        AMCP::Implementation::In_Place_Storage<applesauce::CF::NumberRef>::construct<applesauce::CF::NumberRef const&>(a3, a2);
        return 0;
      }

      if (result != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *a2 = 0;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<applesauce::CF::NumberRef>::dispatch;
    }

    AMCP::Implementation::In_Place_Storage<applesauce::CF::NumberRef>::destruct(a2);
    return 0;
  }

  if (result > 4)
  {
    if (result != 5)
    {
      if (result != 6)
      {
        return result;
      }

      if ((*a4 == AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DateRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>()) && *a4 == AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>())
      {
        if (*(a2 + 32))
        {
          number[0] = AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>();
          v7 = (*(a2 + 32))(4, a2, 0, number);
        }

        else
        {
          v7 = 0;
        }

        if (*a4 == AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>())
        {
          if (v7)
          {
            mcp_applesauce::CF::PropertyListRef::from_get(number, *v7);
            v30 = 0;
            *otherNumber = 0u;
            v29 = 0u;
            AMCP::Implementation::In_Place_Storage<mcp_applesauce::CF::PropertyListRef>::construct<mcp_applesauce::CF::PropertyListRef&>(otherNumber, number);
            if (number[0])
            {
              CFRelease(number[0]);
            }

            if (v30)
            {
              goto LABEL_129;
            }

            goto LABEL_60;
          }

LABEL_110:
          __assert_rtn("create_cf_plist_from", "Thing.h", 2434, "in_value_ptr != nullptr");
        }

        if ((*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DateRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>()) && !v7)
        {
          goto LABEL_110;
        }
      }

      v30 = 0;
      *otherNumber = 0u;
      v29 = 0u;
      if (!AMCP::is_one_of<BOOL,char,signed char,unsigned char,short,unsigned short,int,unsigned int,long,unsigned long,long long,unsigned long long,float,double,long double,AMCP::Direction,applesauce::CF::BooleanRef,applesauce::CF::NumberRef>(a4))
      {
        goto LABEL_126;
      }

LABEL_60:
      if (*(a2 + 32))
      {
        number[0] = AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>();
        v19 = (*(a2 + 32))(4, a2, 0, number);
      }

      else
      {
        v19 = 0;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<BOOL>())
      {
        if (v19)
        {
          if (*v19)
          {
            v20 = applesauce::CF::convert_to<BOOL,0>(*v19);
            *number = 0u;
            v32 = 0u;
            LOBYTE(number[0]) = v20;
            v21 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
LABEL_95:
            v33 = v21;
            goto LABEL_127;
          }

          goto LABEL_133;
        }

        goto LABEL_113;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<char>())
      {
        if (v19)
        {
          if (*v19)
          {
            v22 = applesauce::CF::convert_to<char,0>(*v19);
            *number = 0u;
            v32 = 0u;
            LOBYTE(number[0]) = v22;
            v21 = AMCP::Implementation::In_Place_Storage<char>::dispatch;
            goto LABEL_95;
          }

LABEL_133:
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

LABEL_113:
        __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
      }

      if (*a4 == AMCP::Implementation::get_type_marker<signed char>())
      {
        if (v19)
        {
          if (*v19)
          {
            v23 = applesauce::CF::convert_to<signed char,0>(*v19);
            *number = 0u;
            v32 = 0u;
            LOBYTE(number[0]) = v23;
            v21 = AMCP::Implementation::In_Place_Storage<signed char>::dispatch;
            goto LABEL_95;
          }

          goto LABEL_133;
        }

        goto LABEL_113;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<unsigned char>())
      {
        if (v19)
        {
          if (*v19)
          {
            v26 = applesauce::CF::convert_to<unsigned char,0>(*v19);
            *number = 0u;
            v32 = 0u;
            LOBYTE(number[0]) = v26;
            v21 = AMCP::Implementation::In_Place_Storage<unsigned char>::dispatch;
            goto LABEL_95;
          }

          goto LABEL_133;
        }

        goto LABEL_113;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<short>())
      {
        AMCP::Implementation::create_number_from<applesauce::CF::NumberRef,short>(number, v19);
        goto LABEL_127;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<unsigned short>())
      {
        AMCP::Implementation::create_number_from<applesauce::CF::NumberRef,unsigned short>(number, v19);
        goto LABEL_127;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<int>())
      {
        AMCP::Implementation::create_number_from<applesauce::CF::NumberRef,int>(number, v19);
        goto LABEL_127;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<unsigned int>())
      {
        AMCP::Implementation::create_number_from<applesauce::CF::NumberRef,unsigned int>(number, v19);
        goto LABEL_127;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<long>())
      {
        AMCP::Implementation::create_number_from<applesauce::CF::NumberRef,long>(number, v19);
        goto LABEL_127;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<unsigned long>())
      {
        AMCP::Implementation::create_number_from<applesauce::CF::NumberRef,unsigned long>(number, v19);
        goto LABEL_127;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<long long>())
      {
        AMCP::Implementation::create_number_from<applesauce::CF::NumberRef,long long>(number, v19);
        goto LABEL_127;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<unsigned long long>())
      {
        AMCP::Implementation::create_number_from<applesauce::CF::NumberRef,unsigned long long>(number, v19);
        goto LABEL_127;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<float>())
      {
        AMCP::Implementation::create_number_from<applesauce::CF::NumberRef,float>(number, v19);
        goto LABEL_127;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<double>())
      {
        AMCP::Implementation::create_number_from<applesauce::CF::NumberRef,double>(number, v19);
        goto LABEL_127;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<long double>())
      {
        AMCP::Implementation::create_number_from<applesauce::CF::NumberRef,long double>(number, v19);
        goto LABEL_127;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Direction>())
      {
        AMCP::Implementation::create_number_from<applesauce::CF::NumberRef,AMCP::Direction>(number, v19);
        goto LABEL_127;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>())
      {
        AMCP::Implementation::create_number_from<applesauce::CF::NumberRef,applesauce::CF::BooleanRef>(number, v19);
        goto LABEL_127;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>())
      {
        AMCP::Implementation::create_number_from<applesauce::CF::NumberRef,applesauce::CF::NumberRef>(number, v19);
      }

      else
      {
LABEL_126:
        v33 = 0;
        *number = 0u;
        v32 = 0u;
      }

LABEL_127:
      AMCP::swap(number, otherNumber, v18);
      if (v33)
      {
        v33(0, number, 0, 0);
      }

LABEL_129:
      AMCP::swap(otherNumber, a3, v17);
      if (v30)
      {
        v30(0, otherNumber, 0, 0);
      }

      return 0;
    }

    v9 = AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>();
    v10 = *(a2 + 32);
    number[0] = 0;
    if (v10)
    {
      (v10)(3, a2, 0, number);
      v10 = number[0];
    }

    if (v10 == v9)
    {
      v11 = *(a3 + 32);
      otherNumber[0] = 0;
      if (v11)
      {
        (v11)(3, a3, 0, otherNumber);
        v11 = otherNumber[0];
      }

      if (v11 == v9)
      {
        if (*(a2 + 32))
        {
          number[0] = AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>();
          v12 = (*(a2 + 32))(4, a2, 0, number);
        }

        else
        {
          v12 = 0;
        }

        number[0] = AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>();
        v24 = *(*(a3 + 32))(4, a3, 0, number);
        if (*v12)
        {
          if (!v24)
          {
            return 0;
          }

          v25 = CFNumberCompare(*v12, v24, 0);
        }

        else if (v24)
        {
          v25 = kCFCompareLessThan;
        }

        else
        {
          v25 = kCFCompareEqualTo;
        }

        return v25 == kCFCompareEqualTo;
      }
    }

    AMCP::Thing::convert_to<applesauce::CF::NumberRef>(number, a2);
    AMCP::Thing::convert_to<applesauce::CF::NumberRef>(otherNumber, a3);
    v13 = number[0];
    v14 = otherNumber[0];
    if (number[0])
    {
      if (!otherNumber[0])
      {
        v15 = 0;
        goto LABEL_64;
      }

      v15 = CFNumberCompare(number[0], otherNumber[0], 0) == kCFCompareEqualTo;
    }

    else
    {
      if (otherNumber[0])
      {
        v16 = -1;
      }

      else
      {
        v16 = 0;
      }

      v15 = otherNumber[0] == 0;
      if (!otherNumber[0])
      {
        return !v16;
      }
    }

    CFRelease(v14);
    if (!v13)
    {
      return v15;
    }

LABEL_64:
    CFRelease(v13);
    return v15;
  }

  if (result == 3)
  {
    v8 = AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>();
    result = 0;
    *a4 = v8;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>())
  {
    return a2;
  }

  else
  {
    return 0;
  }

  return result;
}

double AMCP::Implementation::In_Place_Storage<applesauce::CF::NumberRef>::destruct(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<applesauce::CF::NumberRef>::construct<applesauce::CF::NumberRef const&>(uint64_t a1, CFTypeRef *a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v3;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<applesauce::CF::NumberRef>::dispatch;
  return a1;
}

CFTypeRef *AMCP::Thing::convert_to<applesauce::CF::NumberRef>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_16;
  }

  v4 = AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>();
  v5 = *(a2 + 32);
  v18 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v18);
    v5 = v18;
  }

  if (v5 == v4)
  {
    *&v16[0] = v4;
    result = (*(a2 + 32))(4, a2, 0, v16);
    if (result)
    {
      v7 = *result;
      if (*result)
      {
        result = CFRetain(*result);
      }

      *a1 = v7;
      return result;
    }

LABEL_16:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  (*(a2 + 32))(6, a2, v16, &v15);
  if (!v17)
  {
    v11 = __cxa_allocate_exception(8uLL);
    v12 = std::bad_cast::bad_cast(v11);
    __cxa_throw(v12, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = v4;
  result = v17(4, v16, 0, &v15);
  if (!result)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v8 = *result;
  if (*result)
  {
    result = CFRetain(*result);
  }

  *a1 = v8;
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE23FE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void applesauce::CF::NumberRef::~NumberRef(const void **this)
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

uint64_t applesauce::CF::convert_to<BOOL,0>(const __CFNumber *a1)
{
  v1 = applesauce::CF::convert_as<BOOL,0>(a1);
  if (v1 <= 0xFFu)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return v1 & 1;
}

uint64_t applesauce::CF::convert_to<char,0>(const __CFNumber *a1)
{
  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    switch(CFNumberGetType(a1))
    {
      case kCFNumberSInt8Type:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt8Type, &valuePtr);
        goto LABEL_22;
      case kCFNumberSInt16Type:
        LOWORD(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
        goto LABEL_22;
      case kCFNumberSInt32Type:
        LODWORD(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_22;
      case kCFNumberSInt64Type:
        valuePtr = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
        goto LABEL_22;
      case kCFNumberFloat32Type:
        v5 = applesauce::CF::details::handle_case<float,char>(a1, kCFNumberFloat32Type);
        goto LABEL_17;
      case kCFNumberFloat64Type:
        v5 = applesauce::CF::details::handle_case<double,char>(a1, kCFNumberFloat64Type);
        goto LABEL_17;
      case kCFNumberCharType:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
        goto LABEL_22;
      case kCFNumberShortType:
        LOWORD(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
        goto LABEL_22;
      case kCFNumberIntType:
        LODWORD(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
        goto LABEL_22;
      case kCFNumberLongType:
        valuePtr = 0;
        Value = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
        goto LABEL_22;
      case kCFNumberLongLongType:
        valuePtr = 0;
        Value = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
        goto LABEL_22;
      case kCFNumberFloatType:
        v5 = applesauce::CF::details::handle_case<float,char>(a1, kCFNumberFloatType);
        goto LABEL_17;
      case kCFNumberDoubleType:
        v5 = applesauce::CF::details::handle_case<double,char>(a1, kCFNumberDoubleType);
        goto LABEL_17;
      case kCFNumberCFIndexType:
        valuePtr = 0;
        Value = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
        goto LABEL_22;
      case kCFNumberNSIntegerType:
        valuePtr = 0;
        Value = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_22:
        v6 = Value != 0;
        if (Value)
        {
          LOBYTE(v5) = valuePtr;
        }

        else
        {
          LOBYTE(v5) = 0;
        }

        goto LABEL_25;
      case kCFNumberCGFloatType:
        v5 = applesauce::CF::details::handle_case<double,char>(a1, kCFNumberCGFloatType);
LABEL_17:
        v6 = HIBYTE(v5);
LABEL_25:
        if (v6)
        {
          return v5;
        }

        goto LABEL_27;
      default:
        goto LABEL_27;
    }
  }

  v4 = CFBooleanGetTypeID();
  if (v4 != CFGetTypeID(a1))
  {
LABEL_27:
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  LOBYTE(v5) = CFBooleanGetValue(a1);
  return v5;
}

uint64_t applesauce::CF::convert_to<signed char,0>(const __CFNumber *a1)
{
  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    switch(CFNumberGetType(a1))
    {
      case kCFNumberSInt8Type:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt8Type, &valuePtr);
        goto LABEL_22;
      case kCFNumberSInt16Type:
        LOWORD(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
        goto LABEL_22;
      case kCFNumberSInt32Type:
        LODWORD(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_22;
      case kCFNumberSInt64Type:
        valuePtr = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
        goto LABEL_22;
      case kCFNumberFloat32Type:
        v5 = applesauce::CF::details::handle_case<float,char>(a1, kCFNumberFloat32Type);
        goto LABEL_17;
      case kCFNumberFloat64Type:
        v5 = applesauce::CF::details::handle_case<double,char>(a1, kCFNumberFloat64Type);
        goto LABEL_17;
      case kCFNumberCharType:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
        goto LABEL_22;
      case kCFNumberShortType:
        LOWORD(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
        goto LABEL_22;
      case kCFNumberIntType:
        LODWORD(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
        goto LABEL_22;
      case kCFNumberLongType:
        valuePtr = 0;
        Value = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
        goto LABEL_22;
      case kCFNumberLongLongType:
        valuePtr = 0;
        Value = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
        goto LABEL_22;
      case kCFNumberFloatType:
        v5 = applesauce::CF::details::handle_case<float,char>(a1, kCFNumberFloatType);
        goto LABEL_17;
      case kCFNumberDoubleType:
        v5 = applesauce::CF::details::handle_case<double,char>(a1, kCFNumberDoubleType);
        goto LABEL_17;
      case kCFNumberCFIndexType:
        valuePtr = 0;
        Value = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
        goto LABEL_22;
      case kCFNumberNSIntegerType:
        valuePtr = 0;
        Value = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_22:
        v6 = Value != 0;
        if (Value)
        {
          LOBYTE(v5) = valuePtr;
        }

        else
        {
          LOBYTE(v5) = 0;
        }

        goto LABEL_25;
      case kCFNumberCGFloatType:
        v5 = applesauce::CF::details::handle_case<double,char>(a1, kCFNumberCGFloatType);
LABEL_17:
        v6 = HIBYTE(v5);
LABEL_25:
        if (v6)
        {
          return v5;
        }

        goto LABEL_27;
      default:
        goto LABEL_27;
    }
  }

  v4 = CFBooleanGetTypeID();
  if (v4 != CFGetTypeID(a1))
  {
LABEL_27:
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  LOBYTE(v5) = CFBooleanGetValue(a1);
  return v5;
}

uint64_t applesauce::CF::convert_to<unsigned char,0>(const __CFNumber *a1)
{
  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    switch(CFNumberGetType(a1))
    {
      case kCFNumberSInt8Type:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt8Type, &valuePtr);
        goto LABEL_22;
      case kCFNumberSInt16Type:
        LOWORD(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
        goto LABEL_22;
      case kCFNumberSInt32Type:
        LODWORD(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_22;
      case kCFNumberSInt64Type:
        valuePtr = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
        goto LABEL_22;
      case kCFNumberFloat32Type:
        LOWORD(result) = applesauce::CF::details::handle_case<float,unsigned char>(a1, kCFNumberFloat32Type);
        goto LABEL_17;
      case kCFNumberFloat64Type:
        LOWORD(result) = applesauce::CF::details::handle_case<double,unsigned char>(a1, kCFNumberFloat64Type);
        goto LABEL_17;
      case kCFNumberCharType:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
        goto LABEL_22;
      case kCFNumberShortType:
        LOWORD(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
        goto LABEL_22;
      case kCFNumberIntType:
        LODWORD(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
        goto LABEL_22;
      case kCFNumberLongType:
        valuePtr = 0;
        Value = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
        goto LABEL_22;
      case kCFNumberLongLongType:
        valuePtr = 0;
        Value = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
        goto LABEL_22;
      case kCFNumberFloatType:
        LOWORD(result) = applesauce::CF::details::handle_case<float,unsigned char>(a1, kCFNumberFloatType);
        goto LABEL_17;
      case kCFNumberDoubleType:
        LOWORD(result) = applesauce::CF::details::handle_case<double,unsigned char>(a1, kCFNumberDoubleType);
        goto LABEL_17;
      case kCFNumberCFIndexType:
        valuePtr = 0;
        Value = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
        goto LABEL_22;
      case kCFNumberNSIntegerType:
        valuePtr = 0;
        Value = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_22:
        v6 = Value != 0;
        if (Value)
        {
          LOBYTE(result) = valuePtr;
        }

        else
        {
          LOBYTE(result) = 0;
        }

        goto LABEL_25;
      case kCFNumberCGFloatType:
        LOWORD(result) = applesauce::CF::details::handle_case<double,unsigned char>(a1, kCFNumberCGFloatType);
LABEL_17:
        v6 = BYTE1(result);
LABEL_25:
        if (v6)
        {
          return result;
        }

        goto LABEL_27;
      default:
        goto LABEL_27;
    }
  }

  v4 = CFBooleanGetTypeID();
  if (v4 != CFGetTypeID(a1))
  {
LABEL_27:
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  LOBYTE(result) = CFBooleanGetValue(a1);
  return result;
}

double AMCP::Implementation::create_number_from<applesauce::CF::NumberRef,short>(uint64_t a1, const __CFNumber **a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = applesauce::CF::convert_to<short,0>(*a2);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = v3;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<short>::dispatch;
  return result;
}

double AMCP::Implementation::create_number_from<applesauce::CF::NumberRef,unsigned short>(uint64_t a1, const __CFNumber **a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = applesauce::CF::convert_to<unsigned short,0>(*a2);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = v3;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<unsigned short>::dispatch;
  return result;
}

double AMCP::Implementation::create_number_from<applesauce::CF::NumberRef,int>(uint64_t a1, const __CFNumber **a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = applesauce::CF::convert_to<int,0>(*a2);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = v3;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<int>::dispatch;
  return result;
}

double AMCP::Implementation::create_number_from<applesauce::CF::NumberRef,unsigned int>(uint64_t a1, const __CFNumber **a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = applesauce::CF::convert_to<unsigned int,0>(*a2);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = v3;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<unsigned int>::dispatch;
  return result;
}

unint64_t AMCP::Implementation::create_number_from<applesauce::CF::NumberRef,long>(unint64_t *a1, const __CFNumber **a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  result = applesauce::CF::convert_to<long,0>(*a2);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = result;
  a1[1] = 0;
  a1[4] = AMCP::Implementation::In_Place_Storage<long>::dispatch;
  return result;
}

unint64_t AMCP::Implementation::create_number_from<applesauce::CF::NumberRef,unsigned long>(unint64_t *a1, const __CFNumber **a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  result = applesauce::CF::convert_to<unsigned long,0>(*a2);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = result;
  a1[1] = 0;
  a1[4] = AMCP::Implementation::In_Place_Storage<unsigned long>::dispatch;
  return result;
}

unint64_t AMCP::Implementation::create_number_from<applesauce::CF::NumberRef,long long>(unint64_t *a1, const __CFNumber **a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  result = applesauce::CF::convert_to<long long,0>(*a2);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = result;
  a1[1] = 0;
  a1[4] = AMCP::Implementation::In_Place_Storage<long long>::dispatch;
  return result;
}

unint64_t AMCP::Implementation::create_number_from<applesauce::CF::NumberRef,unsigned long long>(unint64_t *a1, const __CFNumber **a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  result = applesauce::CF::convert_to<unsigned long long,0>(*a2);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = result;
  a1[1] = 0;
  a1[4] = AMCP::Implementation::In_Place_Storage<unsigned long long>::dispatch;
  return result;
}

void AMCP::Implementation::create_number_from<applesauce::CF::NumberRef,float>(uint64_t a1, const __CFNumber **a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = applesauce::CF::convert_to<float,0>(*a2);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = v3;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<float>::dispatch;
}

void AMCP::Implementation::create_number_from<applesauce::CF::NumberRef,double>(uint64_t a1, const __CFNumber **a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = applesauce::CF::convert_to<double,0>(*a2);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *a1 = v3;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<double>::dispatch;
}

void AMCP::Implementation::create_number_from<applesauce::CF::NumberRef,long double>(uint64_t a1, const __CFNumber **a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = applesauce::CF::convert_to<double,0>(*a2);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *a1 = v3;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<long double>::dispatch;
}

double AMCP::Implementation::create_number_from<applesauce::CF::NumberRef,AMCP::Direction>(uint64_t a1, const __CFNumber **a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = applesauce::CF::convert_to<BOOL,0>(*a2);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = v3;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<AMCP::Direction>::dispatch;
  return result;
}

uint64_t AMCP::Implementation::create_number_from<applesauce::CF::NumberRef,applesauce::CF::BooleanRef>(void *a1, const __CFNumber **a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  result = applesauce::CF::convert_to<BOOL,0>(*a2);
  v4 = MEMORY[0x1E695E4C8];
  if (!result)
  {
    v4 = MEMORY[0x1E695E4B8];
  }

  v5 = *v4;
  a1[2] = 0;
  a1[3] = 0;
  *a1 = v5;
  a1[1] = 0;
  a1[4] = AMCP::Implementation::In_Place_Storage<applesauce::CF::BooleanRef>::dispatch;
  return result;
}

uint64_t AMCP::Implementation::create_number_from<applesauce::CF::NumberRef,applesauce::CF::NumberRef>(uint64_t a1, CFTypeRef *a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;

  return AMCP::Implementation::In_Place_Storage<applesauce::CF::NumberRef>::construct<applesauce::CF::NumberRef const&>(a1, a2);
}

BOOL AMCP::Implementation::In_Place_Storage<applesauce::CF::BooleanRef>::dispatch(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result)
      {
        AMCP::Implementation::In_Place_Storage<applesauce::CF::BooleanRef>::construct<applesauce::CF::BooleanRef const&>(a3, a2);
        return 0;
      }

      if (result != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *a2 = 0;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<applesauce::CF::BooleanRef>::dispatch;
    }

    AMCP::Implementation::In_Place_Storage<applesauce::CF::BooleanRef>::destruct(a2);
    return 0;
  }

  if (result > 4)
  {
    if (result != 5)
    {
      if (result != 6)
      {
        return result;
      }

      if ((*a4 == AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DateRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>()) && *a4 == AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>())
      {
        if (*(a2 + 32))
        {
          BOOLean[0] = AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>();
          v7 = (*(a2 + 32))(4, a2, 0, BOOLean);
        }

        else
        {
          v7 = 0;
        }

        if (*a4 == AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>())
        {
          if (v7)
          {
            mcp_applesauce::CF::PropertyListRef::from_get(BOOLean, *v7);
            v35 = 0;
            *cf = 0u;
            v34 = 0u;
            AMCP::Implementation::In_Place_Storage<mcp_applesauce::CF::PropertyListRef>::construct<mcp_applesauce::CF::PropertyListRef&>(cf, BOOLean);
            if (BOOLean[0])
            {
              CFRelease(BOOLean[0]);
            }

            if (v35)
            {
              goto LABEL_134;
            }

            goto LABEL_60;
          }

LABEL_115:
          __assert_rtn("create_cf_plist_from", "Thing.h", 2434, "in_value_ptr != nullptr");
        }

        if ((*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DateRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>()) && !v7)
        {
          goto LABEL_115;
        }
      }

      v35 = 0;
      *cf = 0u;
      v34 = 0u;
      if (!AMCP::is_one_of<BOOL,char,signed char,unsigned char,short,unsigned short,int,unsigned int,long,unsigned long,long long,unsigned long long,float,double,long double,AMCP::Direction,applesauce::CF::BooleanRef,applesauce::CF::NumberRef>(a4))
      {
        goto LABEL_131;
      }

LABEL_60:
      if (*(a2 + 32))
      {
        BOOLean[0] = AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>();
        v21 = (*(a2 + 32))(4, a2, 0, BOOLean);
      }

      else
      {
        v21 = 0;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<BOOL>())
      {
        if (v21)
        {
          if (*v21)
          {
            v22 = applesauce::CF::convert_to<BOOL,0>(*v21);
            *BOOLean = 0u;
            v37 = 0u;
            LOBYTE(BOOLean[0]) = v22;
            v23 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
LABEL_100:
            v38 = v23;
            goto LABEL_132;
          }

          goto LABEL_138;
        }

        goto LABEL_118;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<char>())
      {
        if (v21)
        {
          if (*v21)
          {
            v24 = applesauce::CF::convert_to<BOOL,0>(*v21);
            *BOOLean = 0u;
            v37 = 0u;
            LOBYTE(BOOLean[0]) = v24;
            v23 = AMCP::Implementation::In_Place_Storage<char>::dispatch;
            goto LABEL_100;
          }

LABEL_138:
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

LABEL_118:
        __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
      }

      if (*a4 == AMCP::Implementation::get_type_marker<signed char>())
      {
        if (v21)
        {
          if (*v21)
          {
            v26 = applesauce::CF::convert_to<BOOL,0>(*v21);
            *BOOLean = 0u;
            v37 = 0u;
            LOBYTE(BOOLean[0]) = v26;
            v23 = AMCP::Implementation::In_Place_Storage<signed char>::dispatch;
            goto LABEL_100;
          }

          goto LABEL_138;
        }

        goto LABEL_118;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<unsigned char>())
      {
        if (v21)
        {
          if (*v21)
          {
            v31 = applesauce::CF::convert_to<BOOL,0>(*v21);
            *BOOLean = 0u;
            v37 = 0u;
            LOBYTE(BOOLean[0]) = v31;
            v23 = AMCP::Implementation::In_Place_Storage<unsigned char>::dispatch;
            goto LABEL_100;
          }

          goto LABEL_138;
        }

        goto LABEL_118;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<short>())
      {
        AMCP::Implementation::create_number_from<applesauce::CF::BooleanRef,short>(BOOLean, v21);
        goto LABEL_132;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<unsigned short>())
      {
        AMCP::Implementation::create_number_from<applesauce::CF::BooleanRef,unsigned short>(BOOLean, v21);
        goto LABEL_132;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<int>())
      {
        AMCP::Implementation::create_number_from<applesauce::CF::BooleanRef,int>(BOOLean, v21);
        goto LABEL_132;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<unsigned int>())
      {
        AMCP::Implementation::create_number_from<applesauce::CF::BooleanRef,unsigned int>(BOOLean, v21);
        goto LABEL_132;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<long>())
      {
        AMCP::Implementation::create_number_from<applesauce::CF::BooleanRef,long>(BOOLean, v21);
        goto LABEL_132;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<unsigned long>())
      {
        AMCP::Implementation::create_number_from<applesauce::CF::BooleanRef,unsigned long>(BOOLean, v21);
        goto LABEL_132;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<long long>())
      {
        AMCP::Implementation::create_number_from<applesauce::CF::BooleanRef,long long>(BOOLean, v21);
        goto LABEL_132;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<unsigned long long>())
      {
        AMCP::Implementation::create_number_from<applesauce::CF::BooleanRef,unsigned long long>(BOOLean, v21);
        goto LABEL_132;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<float>())
      {
        AMCP::Implementation::create_number_from<applesauce::CF::BooleanRef,float>(BOOLean, v21);
        goto LABEL_132;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<double>())
      {
        AMCP::Implementation::create_number_from<applesauce::CF::BooleanRef,double>(BOOLean, v21);
        goto LABEL_132;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<long double>())
      {
        AMCP::Implementation::create_number_from<applesauce::CF::BooleanRef,long double>(BOOLean, v21);
        goto LABEL_132;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Direction>())
      {
        AMCP::Implementation::create_number_from<applesauce::CF::BooleanRef,AMCP::Direction>(BOOLean, v21);
        goto LABEL_132;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>())
      {
        AMCP::Implementation::create_number_from<applesauce::CF::BooleanRef,applesauce::CF::BooleanRef>(BOOLean, v21);
        goto LABEL_132;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>())
      {
        AMCP::Implementation::create_number_from<applesauce::CF::BooleanRef,applesauce::CF::NumberRef>(BOOLean, v21);
      }

      else
      {
LABEL_131:
        v38 = 0;
        *BOOLean = 0u;
        v37 = 0u;
      }

LABEL_132:
      AMCP::swap(BOOLean, cf, v20);
      if (v38)
      {
        v38(0, BOOLean, 0, 0);
      }

LABEL_134:
      AMCP::swap(cf, a3, v19);
      if (v35)
      {
        v35(0, cf, 0, 0);
      }

      return 0;
    }

    v9 = AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>();
    v10 = *(a2 + 32);
    BOOLean[0] = 0;
    if (v10)
    {
      (v10)(3, a2, 0, BOOLean);
      v10 = BOOLean[0];
    }

    if (v10 == v9)
    {
      v11 = *(a3 + 32);
      cf[0] = 0;
      if (v11)
      {
        v11(3, a3, 0, cf);
        v11 = cf[0];
      }

      if (v11 == v9)
      {
        if (*(a2 + 32))
        {
          BOOLean[0] = AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>();
          v12 = (*(a2 + 32))(4, a2, 0, BOOLean);
        }

        else
        {
          v12 = 0;
        }

        if (*(a3 + 32))
        {
          BOOLean[0] = AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>();
          v27 = (*(a3 + 32))(4, a3, 0, BOOLean);
        }

        else
        {
          v27 = 0;
        }

        v28 = *v27;
        if (*v12)
        {
          if (!v28)
          {
            return 0;
          }

          Value = CFBooleanGetValue(*v12);
          if (Value < CFBooleanGetValue(*v27))
          {
            return 0;
          }

          v30 = CFBooleanGetValue(*v12);
          v17 = v30 != CFBooleanGetValue(*v27);
        }

        else if (v28)
        {
          v17 = -1;
        }

        else
        {
          v17 = 0;
        }

        return !v17;
      }
    }

    AMCP::Thing::convert_to<applesauce::CF::BooleanRef>(BOOLean, a2);
    AMCP::Thing::convert_to<applesauce::CF::BooleanRef>(cf, a3);
    v13 = BOOLean[0];
    v14 = cf[0];
    if (BOOLean[0])
    {
      if (!cf[0])
      {
        v18 = 0;
LABEL_76:
        CFRelease(v13);
        return v18;
      }

      v15 = CFBooleanGetValue(BOOLean[0]);
      if (v15 >= CFBooleanGetValue(v14))
      {
        v25 = CFBooleanGetValue(v13);
        v16 = v25 != CFBooleanGetValue(v14);
      }

      else
      {
        v16 = 1;
      }

      v18 = !v16;
    }

    else
    {
      if (cf[0])
      {
        v17 = -1;
      }

      else
      {
        v17 = 0;
      }

      v18 = cf[0] == 0;
      if (!cf[0])
      {
        return !v17;
      }
    }

    CFRelease(v14);
    if (!v13)
    {
      return v18;
    }

    goto LABEL_76;
  }

  if (result == 3)
  {
    v8 = AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>();
    result = 0;
    *a4 = v8;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>())
  {
    return a2;
  }

  else
  {
    return 0;
  }

  return result;
}

double AMCP::Implementation::In_Place_Storage<applesauce::CF::BooleanRef>::destruct(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<applesauce::CF::BooleanRef>::construct<applesauce::CF::BooleanRef const&>(uint64_t a1, CFTypeRef *a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v3;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<applesauce::CF::BooleanRef>::dispatch;
  return a1;
}

CFTypeRef *AMCP::Thing::convert_to<applesauce::CF::BooleanRef>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_16;
  }

  v4 = AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>();
  v5 = *(a2 + 32);
  v18 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v18);
    v5 = v18;
  }

  if (v5 == v4)
  {
    *&v16[0] = v4;
    result = (*(a2 + 32))(4, a2, 0, v16);
    if (result)
    {
      v7 = *result;
      if (*result)
      {
        result = CFRetain(*result);
      }

      *a1 = v7;
      return result;
    }

LABEL_16:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  (*(a2 + 32))(6, a2, v16, &v15);
  if (!v17)
  {
    v11 = __cxa_allocate_exception(8uLL);
    v12 = std::bad_cast::bad_cast(v11);
    __cxa_throw(v12, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = v4;
  result = v17(4, v16, 0, &v15);
  if (!result)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v8 = *result;
  if (*result)
  {
    result = CFRetain(*result);
  }

  *a1 = v8;
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE241A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

double AMCP::Implementation::create_number_from<applesauce::CF::BooleanRef,short>(uint64_t a1, const __CFBoolean **a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = applesauce::CF::convert_to<BOOL,0>(*a2);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = v3;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<short>::dispatch;
  return result;
}

double AMCP::Implementation::create_number_from<applesauce::CF::BooleanRef,unsigned short>(uint64_t a1, const __CFBoolean **a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = applesauce::CF::convert_to<BOOL,0>(*a2);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = v3;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<unsigned short>::dispatch;
  return result;
}

double AMCP::Implementation::create_number_from<applesauce::CF::BooleanRef,int>(uint64_t a1, const __CFBoolean **a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = applesauce::CF::convert_to<BOOL,0>(*a2);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = v3;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<int>::dispatch;
  return result;
}

double AMCP::Implementation::create_number_from<applesauce::CF::BooleanRef,unsigned int>(uint64_t a1, const __CFBoolean **a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = applesauce::CF::convert_to<BOOL,0>(*a2);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = v3;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<unsigned int>::dispatch;
  return result;
}

uint64_t AMCP::Implementation::create_number_from<applesauce::CF::BooleanRef,long>(void *a1, const __CFBoolean **a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  result = applesauce::CF::convert_to<BOOL,0>(*a2);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = result;
  a1[1] = 0;
  a1[4] = AMCP::Implementation::In_Place_Storage<long>::dispatch;
  return result;
}

uint64_t AMCP::Implementation::create_number_from<applesauce::CF::BooleanRef,unsigned long>(void *a1, const __CFBoolean **a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  result = applesauce::CF::convert_to<BOOL,0>(*a2);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = result;
  a1[1] = 0;
  a1[4] = AMCP::Implementation::In_Place_Storage<unsigned long>::dispatch;
  return result;
}

uint64_t AMCP::Implementation::create_number_from<applesauce::CF::BooleanRef,long long>(void *a1, const __CFBoolean **a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  result = applesauce::CF::convert_to<BOOL,0>(*a2);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = result;
  a1[1] = 0;
  a1[4] = AMCP::Implementation::In_Place_Storage<long long>::dispatch;
  return result;
}

uint64_t AMCP::Implementation::create_number_from<applesauce::CF::BooleanRef,unsigned long long>(void *a1, const __CFBoolean **a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  result = applesauce::CF::convert_to<BOOL,0>(*a2);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = result;
  a1[1] = 0;
  a1[4] = AMCP::Implementation::In_Place_Storage<unsigned long long>::dispatch;
  return result;
}

float AMCP::Implementation::create_number_from<applesauce::CF::BooleanRef,float>(uint64_t a1, const __CFBoolean **a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  result = applesauce::CF::convert_to<BOOL,0>(*a2);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = result;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<float>::dispatch;
  return result;
}

double AMCP::Implementation::create_number_from<applesauce::CF::BooleanRef,double>(uint64_t a1, const __CFBoolean **a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  result = applesauce::CF::convert_to<BOOL,0>(*a2);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *a1 = result;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<double>::dispatch;
  return result;
}

double AMCP::Implementation::create_number_from<applesauce::CF::BooleanRef,long double>(uint64_t a1, const __CFBoolean **a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  result = applesauce::CF::convert_to<BOOL,0>(*a2);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *a1 = result;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<long double>::dispatch;
  return result;
}

double AMCP::Implementation::create_number_from<applesauce::CF::BooleanRef,AMCP::Direction>(uint64_t a1, const __CFBoolean **a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = applesauce::CF::convert_to<BOOL,0>(*a2);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = v3;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<AMCP::Direction>::dispatch;
  return result;
}

uint64_t AMCP::Implementation::create_number_from<applesauce::CF::BooleanRef,applesauce::CF::BooleanRef>(uint64_t a1, CFTypeRef *a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;

  return AMCP::Implementation::In_Place_Storage<applesauce::CF::BooleanRef>::construct<applesauce::CF::BooleanRef const&>(a1, a2);
}

CFNumberRef AMCP::Implementation::create_number_from<applesauce::CF::BooleanRef,applesauce::CF::NumberRef>(CFNumberRef *a1, const __CFBoolean **a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  valuePtr = applesauce::CF::convert_to<BOOL,0>(*a2);
  result = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
  if (!result)
  {
    v5 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v5, "Could not construct");
    __cxa_throw(v5, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  a1[2] = 0;
  a1[3] = 0;
  *a1 = result;
  a1[1] = 0;
  a1[4] = AMCP::Implementation::In_Place_Storage<applesauce::CF::NumberRef>::dispatch;
  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<long double>::dispatch(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        result = 0;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        *a3 = *a2;
        *(a3 + 32) = AMCP::Implementation::In_Place_Storage<long double>::dispatch;
        return result;
      }

      if (result != 2)
      {
        return result;
      }

      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<long double>::dispatch;
      *(a2 + 32) = 0;
    }

    else
    {
      result = 0;
      *(a2 + 32) = 0;
      v7 = 0uLL;
    }

    *a2 = v7;
    *(a2 + 16) = v7;
    return result;
  }

  if (result > 4)
  {
    if (result == 5)
    {
      type = AMCP::Implementation::get_type_marker<long double>();
      v12 = *(a2 + 32);
      *&v30 = 0;
      if (v12)
      {
        v12(3, a2, 0, &v30);
        v12 = v30;
      }

      if (v12 != type)
      {
        goto LABEL_28;
      }

      v13 = *(a3 + 32);
      v33 = 0;
      if (v13)
      {
        v13(3, a3, 0, &v33);
        v13 = v33;
      }

      if (v13 == type)
      {
        if (*(a2 + 32))
        {
          *&v30 = AMCP::Implementation::get_type_marker<long double>();
          v14 = (*(a2 + 32))(4, a2, 0, &v30);
        }

        else
        {
          v14 = 0;
        }

        *&v30 = AMCP::Implementation::get_type_marker<long double>();
        if (*v14 != *(*(a3 + 32))(4, a3, 0, &v30))
        {
          return 0;
        }
      }

      else
      {
LABEL_28:
        v15 = AMCP::Thing::convert_to<long double>(a2);
        if (v15 != AMCP::Thing::convert_to<long double>(a3))
        {
          return 0;
        }
      }

      return 1;
    }

    if (result != 6)
    {
      return result;
    }

    if (!AMCP::is_one_of<BOOL,char,signed char,unsigned char,short,unsigned short,int,unsigned int,long,unsigned long,long long,unsigned long long,float,double,long double,AMCP::Direction,applesauce::CF::BooleanRef,applesauce::CF::NumberRef>(a4))
    {
      goto LABEL_86;
    }

    if (*(a2 + 32))
    {
      *&v30 = AMCP::Implementation::get_type_marker<long double>();
      v9 = (*(a2 + 32))(4, a2, 0, &v30);
    }

    else
    {
      v9 = 0;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<BOOL>())
    {
      if (v9)
      {
        v16 = *v9 != 0.0;
        v30 = 0u;
        v31 = 0u;
        LOBYTE(v30) = v16;
        v17 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
LABEL_46:
        v32 = v17;
        goto LABEL_87;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<char>())
    {
      if (v9)
      {
        v18 = *v9;
        v30 = 0u;
        v31 = 0u;
        LOBYTE(v30) = v18;
        v17 = AMCP::Implementation::In_Place_Storage<char>::dispatch;
        goto LABEL_46;
      }

LABEL_81:
      __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
    }

    if (*a4 == AMCP::Implementation::get_type_marker<signed char>())
    {
      if (v9)
      {
        v19 = *v9;
        v30 = 0u;
        v31 = 0u;
        LOBYTE(v30) = v19;
        v17 = AMCP::Implementation::In_Place_Storage<signed char>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned char>())
    {
      if (v9)
      {
        v20 = *v9;
        v30 = 0u;
        v31 = 0u;
        LOBYTE(v30) = v20;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned char>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<short>())
    {
      AMCP::Implementation::create_number_from<double,short>(&v30, v9);
      goto LABEL_87;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned short>())
    {
      AMCP::Implementation::create_number_from<double,unsigned short>(&v30, v9);
      goto LABEL_87;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<int>())
    {
      if (v9)
      {
        v21 = *v9;
        v30 = 0u;
        v31 = 0u;
        LODWORD(v30) = v21;
        v17 = AMCP::Implementation::In_Place_Storage<int>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned int>())
    {
      if (v9)
      {
        v22 = *v9;
        v30 = 0u;
        v31 = 0u;
        LODWORD(v30) = v22;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned int>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long>())
    {
      if (v9)
      {
        v23 = *v9;
        v31 = 0uLL;
        v30 = v23;
        v17 = AMCP::Implementation::In_Place_Storage<long>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned long>())
    {
      if (v9)
      {
        v24 = *v9;
        v31 = 0uLL;
        v30 = v24;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned long>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long long>())
    {
      if (v9)
      {
        v25 = *v9;
        v31 = 0uLL;
        v30 = v25;
        v17 = AMCP::Implementation::In_Place_Storage<long long>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned long long>())
    {
      if (v9)
      {
        v26 = *v9;
        v31 = 0uLL;
        v30 = v26;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned long long>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<float>())
    {
      if (v9)
      {
        v27 = *v9;
        v30 = 0u;
        v31 = 0u;
        *&v30 = v27;
        v17 = AMCP::Implementation::In_Place_Storage<float>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<double>())
    {
      if (v9)
      {
        v28 = *v9;
        v31 = 0uLL;
        v30 = *&v28;
        v17 = AMCP::Implementation::In_Place_Storage<double>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long double>())
    {
      if (v9)
      {
        *(&v30 + 1) = 0;
        v31 = 0uLL;
        *&v30 = *v9;
        v17 = AMCP::Implementation::In_Place_Storage<long double>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Direction>())
    {
      if (v9)
      {
        v29 = *v9 != 0.0;
        v30 = 0u;
        v31 = 0u;
        LODWORD(v30) = v29;
        v17 = AMCP::Implementation::In_Place_Storage<AMCP::Direction>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>())
    {
      AMCP::Implementation::create_number_from<double,applesauce::CF::BooleanRef>(&v30, v9);
      goto LABEL_87;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>())
    {
      AMCP::Implementation::create_number_from<long double,applesauce::CF::NumberRef>(&v30, v9);
    }

    else
    {
LABEL_86:
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
    }

LABEL_87:
    AMCP::swap(&v30, a3, v8);
    if (v32)
    {
      v32(0, &v30, 0, 0);
    }

    return 0;
  }

  if (result == 3)
  {
    v10 = AMCP::Implementation::get_type_marker<long double>();
    result = 0;
    *a4 = v10;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<long double>())
  {
    return a2;
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_1DE242A9C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE242A68);
}

double AMCP::Thing::convert_to<long double>(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    goto LABEL_12;
  }

  type = AMCP::Implementation::get_type_marker<long double>();
  v3 = *(a1 + 32);
  v17 = 0;
  if (v3)
  {
    v3(3, a1, 0, &v17);
    v3 = v17;
  }

  if (v3 == type)
  {
    *&v15[0] = type;
    v4 = (*(a1 + 32))(4, a1, 0, v15);
    if (v4)
    {
      return *v4;
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v9, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = AMCP::Implementation::get_type_marker<long double>();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  (*(a1 + 32))(6, a1, v15, &v14);
  if (!v16)
  {
    v10 = __cxa_allocate_exception(8uLL);
    v11 = std::bad_cast::bad_cast(v10);
    __cxa_throw(v11, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = type;
  v6 = v16(4, v15, 0, &v14);
  if (!v6)
  {
    v12 = __cxa_allocate_exception(8uLL);
    v13 = std::bad_cast::bad_cast(v12);
    __cxa_throw(v13, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v5 = *v6;
  if (v16)
  {
    v16(0, v15, 0, 0);
  }

  return v5;
}

void sub_1DE242C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

CFNumberRef AMCP::Implementation::create_number_from<long double,applesauce::CF::NumberRef>(CFNumberRef *a1, uint64_t *a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  valuePtr = *a2;
  result = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  a1[2] = 0;
  a1[3] = 0;
  *a1 = result;
  a1[1] = 0;
  a1[4] = AMCP::Implementation::In_Place_Storage<applesauce::CF::NumberRef>::dispatch;
  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<double>::dispatch(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        result = 0;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        *a3 = *a2;
        *(a3 + 32) = AMCP::Implementation::In_Place_Storage<double>::dispatch;
        return result;
      }

      if (result != 2)
      {
        return result;
      }

      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<double>::dispatch;
      *(a2 + 32) = 0;
    }

    else
    {
      result = 0;
      *(a2 + 32) = 0;
      v7 = 0uLL;
    }

    *a2 = v7;
    *(a2 + 16) = v7;
    return result;
  }

  if (result > 4)
  {
    if (result == 5)
    {
      type = AMCP::Implementation::get_type_marker<double>();
      v12 = *(a2 + 32);
      *&v30 = 0;
      if (v12)
      {
        v12(3, a2, 0, &v30);
        v12 = v30;
      }

      if (v12 != type)
      {
        goto LABEL_28;
      }

      v13 = *(a3 + 32);
      v33 = 0;
      if (v13)
      {
        v13(3, a3, 0, &v33);
        v13 = v33;
      }

      if (v13 == type)
      {
        if (*(a2 + 32))
        {
          *&v30 = AMCP::Implementation::get_type_marker<double>();
          v14 = (*(a2 + 32))(4, a2, 0, &v30);
        }

        else
        {
          v14 = 0;
        }

        *&v30 = AMCP::Implementation::get_type_marker<double>();
        if (*v14 != *(*(a3 + 32))(4, a3, 0, &v30))
        {
          return 0;
        }
      }

      else
      {
LABEL_28:
        v15 = AMCP::Thing::convert_to<double>(a2);
        if (v15 != AMCP::Thing::convert_to<double>(a3))
        {
          return 0;
        }
      }

      return 1;
    }

    if (result != 6)
    {
      return result;
    }

    if (!AMCP::is_one_of<BOOL,char,signed char,unsigned char,short,unsigned short,int,unsigned int,long,unsigned long,long long,unsigned long long,float,double,long double,AMCP::Direction,applesauce::CF::BooleanRef,applesauce::CF::NumberRef>(a4))
    {
      goto LABEL_86;
    }

    if (*(a2 + 32))
    {
      *&v30 = AMCP::Implementation::get_type_marker<double>();
      v9 = (*(a2 + 32))(4, a2, 0, &v30);
    }

    else
    {
      v9 = 0;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<BOOL>())
    {
      if (v9)
      {
        v16 = *v9 != 0.0;
        v30 = 0u;
        v31 = 0u;
        LOBYTE(v30) = v16;
        v17 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
LABEL_46:
        v32 = v17;
        goto LABEL_87;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<char>())
    {
      if (v9)
      {
        v18 = *v9;
        v30 = 0u;
        v31 = 0u;
        LOBYTE(v30) = v18;
        v17 = AMCP::Implementation::In_Place_Storage<char>::dispatch;
        goto LABEL_46;
      }

LABEL_81:
      __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
    }

    if (*a4 == AMCP::Implementation::get_type_marker<signed char>())
    {
      if (v9)
      {
        v19 = *v9;
        v30 = 0u;
        v31 = 0u;
        LOBYTE(v30) = v19;
        v17 = AMCP::Implementation::In_Place_Storage<signed char>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned char>())
    {
      if (v9)
      {
        v20 = *v9;
        v30 = 0u;
        v31 = 0u;
        LOBYTE(v30) = v20;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned char>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<short>())
    {
      AMCP::Implementation::create_number_from<double,short>(&v30, v9);
      goto LABEL_87;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned short>())
    {
      AMCP::Implementation::create_number_from<double,unsigned short>(&v30, v9);
      goto LABEL_87;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<int>())
    {
      if (v9)
      {
        v21 = *v9;
        v30 = 0u;
        v31 = 0u;
        LODWORD(v30) = v21;
        v17 = AMCP::Implementation::In_Place_Storage<int>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned int>())
    {
      if (v9)
      {
        v22 = *v9;
        v30 = 0u;
        v31 = 0u;
        LODWORD(v30) = v22;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned int>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long>())
    {
      if (v9)
      {
        v23 = *v9;
        v31 = 0uLL;
        v30 = v23;
        v17 = AMCP::Implementation::In_Place_Storage<long>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned long>())
    {
      if (v9)
      {
        v24 = *v9;
        v31 = 0uLL;
        v30 = v24;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned long>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long long>())
    {
      if (v9)
      {
        v25 = *v9;
        v31 = 0uLL;
        v30 = v25;
        v17 = AMCP::Implementation::In_Place_Storage<long long>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned long long>())
    {
      if (v9)
      {
        v26 = *v9;
        v31 = 0uLL;
        v30 = v26;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned long long>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<float>())
    {
      if (v9)
      {
        v27 = *v9;
        v30 = 0u;
        v31 = 0u;
        *&v30 = v27;
        v17 = AMCP::Implementation::In_Place_Storage<float>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<double>())
    {
      if (v9)
      {
        *(&v30 + 1) = 0;
        v31 = 0uLL;
        *&v30 = *v9;
        v17 = AMCP::Implementation::In_Place_Storage<double>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long double>())
    {
      if (v9)
      {
        v28 = *v9;
        v31 = 0uLL;
        v30 = *&v28;
        v17 = AMCP::Implementation::In_Place_Storage<long double>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Direction>())
    {
      if (v9)
      {
        v29 = *v9 != 0.0;
        v30 = 0u;
        v31 = 0u;
        LODWORD(v30) = v29;
        v17 = AMCP::Implementation::In_Place_Storage<AMCP::Direction>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>())
    {
      AMCP::Implementation::create_number_from<double,applesauce::CF::BooleanRef>(&v30, v9);
      goto LABEL_87;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>())
    {
      AMCP::Implementation::create_number_from<double,applesauce::CF::NumberRef>(&v30, v9);
    }

    else
    {
LABEL_86:
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
    }

LABEL_87:
    AMCP::swap(&v30, a3, v8);
    if (v32)
    {
      v32(0, &v30, 0, 0);
    }

    return 0;
  }

  if (result == 3)
  {
    v10 = AMCP::Implementation::get_type_marker<double>();
    result = 0;
    *a4 = v10;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<double>())
  {
    return a2;
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_1DE24337C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE243348);
}

double AMCP::Thing::convert_to<double>(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    goto LABEL_12;
  }

  type = AMCP::Implementation::get_type_marker<double>();
  v3 = *(a1 + 32);
  v17 = 0;
  if (v3)
  {
    v3(3, a1, 0, &v17);
    v3 = v17;
  }

  if (v3 == type)
  {
    *&v15[0] = type;
    v4 = (*(a1 + 32))(4, a1, 0, v15);
    if (v4)
    {
      return *v4;
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v9, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = AMCP::Implementation::get_type_marker<double>();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  (*(a1 + 32))(6, a1, v15, &v14);
  if (!v16)
  {
    v10 = __cxa_allocate_exception(8uLL);
    v11 = std::bad_cast::bad_cast(v10);
    __cxa_throw(v11, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = type;
  v6 = v16(4, v15, 0, &v14);
  if (!v6)
  {
    v12 = __cxa_allocate_exception(8uLL);
    v13 = std::bad_cast::bad_cast(v12);
    __cxa_throw(v13, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v5 = *v6;
  if (v16)
  {
    v16(0, v15, 0, 0);
  }

  return v5;
}

void sub_1DE24351C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

double AMCP::Implementation::create_number_from<double,short>(uint64_t a1, double *a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  v2 = *a2;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = v2;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<short>::dispatch;
  return result;
}

double AMCP::Implementation::create_number_from<double,unsigned short>(uint64_t a1, double *a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  v2 = *a2;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = v2;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<unsigned short>::dispatch;
  return result;
}

void *AMCP::Implementation::create_number_from<double,applesauce::CF::BooleanRef>(void *result, double *a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  v2 = MEMORY[0x1E695E4C8];
  if (*a2 == 0.0)
  {
    v2 = MEMORY[0x1E695E4B8];
  }

  v3 = *v2;
  result[2] = 0;
  result[3] = 0;
  *result = v3;
  result[1] = 0;
  result[4] = AMCP::Implementation::In_Place_Storage<applesauce::CF::BooleanRef>::dispatch;
  return result;
}

void AMCP::Implementation::create_number_from<double,applesauce::CF::NumberRef>(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  valuePtr = *a2;
  v3 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  v6 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v4 = v3;
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  AMCP::Implementation::In_Place_Storage<applesauce::CF::NumberRef>::construct<applesauce::CF::NumberRef&>(a1, &v6);
  CFRelease(v4);
}

uint64_t AMCP::Implementation::In_Place_Storage<float>::dispatch(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        result = 0;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        *a3 = *a2;
        *(a3 + 32) = AMCP::Implementation::In_Place_Storage<float>::dispatch;
        return result;
      }

      if (result != 2)
      {
        return result;
      }

      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<float>::dispatch;
      *(a2 + 32) = 0;
    }

    else
    {
      result = 0;
      *(a2 + 32) = 0;
      v7 = 0uLL;
    }

    *a2 = v7;
    *(a2 + 16) = v7;
    return result;
  }

  if (result > 4)
  {
    if (result == 5)
    {
      type = AMCP::Implementation::get_type_marker<float>();
      v12 = *(a2 + 32);
      *&v30 = 0;
      if (v12)
      {
        v12(3, a2, 0, &v30);
        v12 = v30;
      }

      if (v12 != type)
      {
        goto LABEL_28;
      }

      v13 = *(a3 + 32);
      v33 = 0;
      if (v13)
      {
        v13(3, a3, 0, &v33);
        v13 = v33;
      }

      if (v13 == type)
      {
        if (*(a2 + 32))
        {
          *&v30 = AMCP::Implementation::get_type_marker<float>();
          v14 = (*(a2 + 32))(4, a2, 0, &v30);
        }

        else
        {
          v14 = 0;
        }

        *&v30 = AMCP::Implementation::get_type_marker<float>();
        if (*v14 != *(*(a3 + 32))(4, a3, 0, &v30))
        {
          return 0;
        }
      }

      else
      {
LABEL_28:
        v15 = AMCP::Thing::convert_to<float>(a2);
        if (v15 != AMCP::Thing::convert_to<float>(a3))
        {
          return 0;
        }
      }

      return 1;
    }

    if (result != 6)
    {
      return result;
    }

    if (!AMCP::is_one_of<BOOL,char,signed char,unsigned char,short,unsigned short,int,unsigned int,long,unsigned long,long long,unsigned long long,float,double,long double,AMCP::Direction,applesauce::CF::BooleanRef,applesauce::CF::NumberRef>(a4))
    {
      goto LABEL_86;
    }

    if (*(a2 + 32))
    {
      *&v30 = AMCP::Implementation::get_type_marker<float>();
      v9 = (*(a2 + 32))(4, a2, 0, &v30);
    }

    else
    {
      v9 = 0;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<BOOL>())
    {
      if (v9)
      {
        v16 = *v9 != 0.0;
        v30 = 0u;
        v31 = 0u;
        LOBYTE(v30) = v16;
        v17 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
LABEL_46:
        v32 = v17;
        goto LABEL_87;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<char>())
    {
      if (v9)
      {
        v18 = *v9;
        v30 = 0u;
        v31 = 0u;
        LOBYTE(v30) = v18;
        v17 = AMCP::Implementation::In_Place_Storage<char>::dispatch;
        goto LABEL_46;
      }

LABEL_81:
      __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
    }

    if (*a4 == AMCP::Implementation::get_type_marker<signed char>())
    {
      if (v9)
      {
        v19 = *v9;
        v30 = 0u;
        v31 = 0u;
        LOBYTE(v30) = v19;
        v17 = AMCP::Implementation::In_Place_Storage<signed char>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned char>())
    {
      if (v9)
      {
        v20 = *v9;
        v30 = 0u;
        v31 = 0u;
        LOBYTE(v30) = v20;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned char>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<short>())
    {
      AMCP::Implementation::create_number_from<float,short>(&v30, v9);
      goto LABEL_87;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned short>())
    {
      AMCP::Implementation::create_number_from<float,unsigned short>(&v30, v9);
      goto LABEL_87;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<int>())
    {
      if (v9)
      {
        v21 = *v9;
        v30 = 0u;
        v31 = 0u;
        LODWORD(v30) = v21;
        v17 = AMCP::Implementation::In_Place_Storage<int>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned int>())
    {
      if (v9)
      {
        v22 = *v9;
        v30 = 0u;
        v31 = 0u;
        LODWORD(v30) = v22;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned int>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long>())
    {
      if (v9)
      {
        v23 = *v9;
        v31 = 0uLL;
        v30 = v23;
        v17 = AMCP::Implementation::In_Place_Storage<long>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned long>())
    {
      if (v9)
      {
        v24 = *v9;
        v31 = 0uLL;
        v30 = v24;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned long>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long long>())
    {
      if (v9)
      {
        v25 = *v9;
        v31 = 0uLL;
        v30 = v25;
        v17 = AMCP::Implementation::In_Place_Storage<long long>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<unsigned long long>())
    {
      if (v9)
      {
        v26 = *v9;
        v31 = 0uLL;
        v30 = v26;
        v17 = AMCP::Implementation::In_Place_Storage<unsigned long long>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<float>())
    {
      if (v9)
      {
        v30 = 0u;
        v31 = 0u;
        *&v30 = *v9;
        v17 = AMCP::Implementation::In_Place_Storage<float>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<double>())
    {
      if (v9)
      {
        *&v27 = *v9;
        v31 = 0uLL;
        v30 = v27;
        v17 = AMCP::Implementation::In_Place_Storage<double>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<long double>())
    {
      if (v9)
      {
        *&v28 = *v9;
        v31 = 0uLL;
        v30 = v28;
        v17 = AMCP::Implementation::In_Place_Storage<long double>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Direction>())
    {
      if (v9)
      {
        v29 = *v9 != 0.0;
        v30 = 0u;
        v31 = 0u;
        LODWORD(v30) = v29;
        v17 = AMCP::Implementation::In_Place_Storage<AMCP::Direction>::dispatch;
        goto LABEL_46;
      }

      goto LABEL_81;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>())
    {
      AMCP::Implementation::create_number_from<float,applesauce::CF::BooleanRef>(&v30, v9);
      goto LABEL_87;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>())
    {
      AMCP::Implementation::create_number_from<float,applesauce::CF::NumberRef>(&v30, v9);
    }

    else
    {
LABEL_86:
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
    }

LABEL_87:
    AMCP::swap(&v30, a3, v8);
    if (v32)
    {
      v32(0, &v30, 0, 0);
    }

    return 0;
  }

  if (result == 3)
  {
    v10 = AMCP::Implementation::get_type_marker<float>();
    result = 0;
    *a4 = v10;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<float>())
  {
    return a2;
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_1DE243D8C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE243D58);
}

float AMCP::Thing::convert_to<float>(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    goto LABEL_12;
  }

  type = AMCP::Implementation::get_type_marker<float>();
  v3 = *(a1 + 32);
  v17 = 0;
  if (v3)
  {
    v3(3, a1, 0, &v17);
    v3 = v17;
  }

  if (v3 == type)
  {
    *&v15[0] = type;
    v4 = (*(a1 + 32))(4, a1, 0, v15);
    if (v4)
    {
      return *v4;
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v9, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = AMCP::Implementation::get_type_marker<float>();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  (*(a1 + 32))(6, a1, v15, &v14);
  if (!v16)
  {
    v10 = __cxa_allocate_exception(8uLL);
    v11 = std::bad_cast::bad_cast(v10);
    __cxa_throw(v11, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = type;
  v6 = v16(4, v15, 0, &v14);
  if (!v6)
  {
    v12 = __cxa_allocate_exception(8uLL);
    v13 = std::bad_cast::bad_cast(v12);
    __cxa_throw(v13, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v5 = *v6;
  if (v16)
  {
    v16(0, v15, 0, 0);
  }

  return v5;
}

void sub_1DE243F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

double AMCP::Implementation::create_number_from<float,short>(uint64_t a1, float *a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  v2 = *a2;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = v2;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<short>::dispatch;
  return result;
}

double AMCP::Implementation::create_number_from<float,unsigned short>(uint64_t a1, float *a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  v2 = *a2;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = v2;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<unsigned short>::dispatch;
  return result;
}

void *AMCP::Implementation::create_number_from<float,applesauce::CF::BooleanRef>(void *result, float *a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  v2 = MEMORY[0x1E695E4C8];
  if (*a2 == 0.0)
  {
    v2 = MEMORY[0x1E695E4B8];
  }

  v3 = *v2;
  result[2] = 0;
  result[3] = 0;
  *result = v3;
  result[1] = 0;
  result[4] = AMCP::Implementation::In_Place_Storage<applesauce::CF::BooleanRef>::dispatch;
  return result;
}

void AMCP::Implementation::create_number_from<float,applesauce::CF::NumberRef>(uint64_t a1, int *a2)
{
  if (!a2)
  {
    __assert_rtn("create_number_from", "Thing.h", 978, "in_value_ptr != nullptr");
  }

  valuePtr = *a2;
  v3 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  v6 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v4 = v3;
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  AMCP::Implementation::In_Place_Storage<applesauce::CF::NumberRef>::construct<applesauce::CF::NumberRef&>(a1, &v6);
  CFRelease(v4);
}

uint64_t AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[399];
}

uint64_t AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[467];
}

uint64_t AMCP::Implementation::get_type_marker<applesauce::CF::DateRef>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[469];
}

uint64_t AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[471];
}

uint64_t AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[473];
}

mcp_applesauce::CF::PropertyListRef *mcp_applesauce::CF::PropertyListRef::from_get(mcp_applesauce::CF::PropertyListRef *this, CFTypeRef cf)
{
  v2 = this;
  if (cf)
  {
    CFRetain(cf);

    return mcp_applesauce::CF::PropertyListRef::PropertyListRef(v2, cf);
  }

  else
  {
    *this = 0;
  }

  return this;
}

uint64_t AMCP::Implementation::In_Place_Storage<mcp_applesauce::CF::PropertyListRef>::construct<mcp_applesauce::CF::PropertyListRef&>(uint64_t a1, CFTypeRef *a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v3;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<mcp_applesauce::CF::PropertyListRef>::dispatch;
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<mcp_applesauce::CF::PropertyListRef>::dispatch(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        AMCP::Implementation::In_Place_Storage<mcp_applesauce::CF::PropertyListRef>::construct<mcp_applesauce::CF::PropertyListRef const&>(a3, a2);
        return 0;
      }

      if (result != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *a2 = 0;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<mcp_applesauce::CF::PropertyListRef>::dispatch;
    }

    AMCP::Implementation::In_Place_Storage<mcp_applesauce::CF::PropertyListRef>::destruct(a2);
    return 0;
  }

  if (result > 4)
  {
    if (result == 5)
    {
      v10 = AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>();
      v11 = *(a2 + 32);
      cf1[0] = 0;
      if (v11)
      {
        v11(3, a2, 0, cf1);
        v11 = cf1[0];
      }

      if (v11 != v10)
      {
        goto LABEL_34;
      }

      v12 = *(a3 + 32);
      v35 = 0;
      if (v12)
      {
        v12(3, a3, 0, &v35);
        v12 = v35;
      }

      if (v12 == v10)
      {
        if (*(a2 + 32))
        {
          cf1[0] = AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>();
          v13 = (*(a2 + 32))(4, a2, 0, cf1);
        }

        else
        {
          v13 = 0;
        }

        cf1[0] = AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>();
        v24 = (*(a3 + 32))(4, a3, 0, cf1);
        if (!mcp_applesauce::CF::operator==(*v13, *v24))
        {
          return 0;
        }
      }

      else
      {
LABEL_34:
        AMCP::Thing::convert_to<mcp_applesauce::CF::PropertyListRef>(cf1, a2);
        AMCP::Thing::convert_to<mcp_applesauce::CF::PropertyListRef>(&v35, a3);
        v14 = cf1[0];
        v15 = v35;
        v16 = mcp_applesauce::CF::operator==(cf1[0], v35);
        if (v15)
        {
          CFRelease(v15);
        }

        if (v14)
        {
          CFRelease(v14);
        }

        if (!v16)
        {
          return 0;
        }
      }

      return 1;
    }

    if (result != 6)
    {
      return result;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DateRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>())
    {
      if (*(a2 + 32))
      {
        cf1[0] = AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>();
        v8 = (*(a2 + 32))(4, a2, 0, cf1);
      }

      else
      {
        v8 = 0;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>())
      {
        if (v8)
        {
          v34 = 0;
          *cf1 = 0u;
          v33 = 0u;
          AMCP::Implementation::In_Place_Storage<mcp_applesauce::CF::PropertyListRef>::construct<mcp_applesauce::CF::PropertyListRef const&>(cf1, v8);
          goto LABEL_67;
        }

LABEL_92:
        __assert_rtn("create_cf_plist_from", "Thing.h", 2434, "in_value_ptr != nullptr");
      }

      if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>())
      {
        if (!v8)
        {
          goto LABEL_92;
        }

        if (*v8)
        {
          TypeID = CFStringGetTypeID();
          if (TypeID == CFGetTypeID(*v8))
          {
            v18 = *v8;
            if (v18)
            {
              CFRetain(v18);
              cf1[0] = v18;
              v19 = CFGetTypeID(v18);
              if (v19 != CFStringGetTypeID())
              {
                exception = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(exception, "Could not construct");
                __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              v35 = v18;
              v36 = 1;
              *cf1 = 0u;
              v33 = 0u;
              v34 = 0;
              AMCP::Implementation::In_Place_Storage<applesauce::CF::StringRef>::construct<applesauce::CF::StringRef&>(cf1, &v35);
LABEL_65:
              CFRelease(v18);
              goto LABEL_67;
            }

            v35 = 0;
            v36 = 1;
            *cf1 = 0u;
            v33 = 0u;
            v34 = 0;
            AMCP::Implementation::In_Place_Storage<applesauce::CF::StringRef>::construct<applesauce::CF::StringRef&>(cf1, &v35);
            goto LABEL_67;
          }
        }

        goto LABEL_66;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>())
      {
        if (!v8)
        {
          goto LABEL_92;
        }

        if (*v8)
        {
          v20 = CFDataGetTypeID();
          if (v20 == CFGetTypeID(*v8))
          {
            v18 = *v8;
            if (v18)
            {
              CFRetain(v18);
              cf1[0] = v18;
              v21 = CFGetTypeID(v18);
              if (v21 != CFDataGetTypeID())
              {
                v29 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v29, "Could not construct");
                __cxa_throw(v29, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              v35 = v18;
              v36 = 1;
              *cf1 = 0u;
              v33 = 0u;
              v34 = 0;
              AMCP::Implementation::In_Place_Storage<applesauce::CF::DataRef>::construct<applesauce::CF::DataRef&>(cf1, &v35);
              goto LABEL_65;
            }

            v35 = 0;
            v36 = 1;
            *cf1 = 0u;
            v33 = 0u;
            v34 = 0;
            AMCP::Implementation::In_Place_Storage<applesauce::CF::DataRef>::construct<applesauce::CF::DataRef&>(cf1, &v35);
LABEL_67:
            AMCP::swap(cf1, a3, v7);
            if (v34)
            {
              (v34)(0, cf1, 0, 0);
            }

            return 0;
          }
        }

LABEL_66:
        LOBYTE(v35) = 0;
        v36 = 0;
        *cf1 = 0u;
        v33 = 0u;
        v34 = 0;
        goto LABEL_67;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>())
      {
        if (!v8)
        {
          goto LABEL_92;
        }

        if (*v8)
        {
          v22 = CFNumberGetTypeID();
          if (v22 == CFGetTypeID(*v8))
          {
            v18 = *v8;
            if (v18)
            {
              CFRetain(v18);
              cf1[0] = v18;
              v23 = CFGetTypeID(v18);
              if (v23 != CFNumberGetTypeID())
              {
                v30 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v30, "Could not construct");
                __cxa_throw(v30, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              v35 = v18;
              v36 = 1;
              *cf1 = 0u;
              v33 = 0u;
              v34 = 0;
              AMCP::Implementation::In_Place_Storage<applesauce::CF::NumberRef>::construct<applesauce::CF::NumberRef&>(cf1, &v35);
              goto LABEL_65;
            }

            v35 = 0;
            v36 = 1;
            *cf1 = 0u;
            v33 = 0u;
            v34 = 0;
            AMCP::Implementation::In_Place_Storage<applesauce::CF::NumberRef>::construct<applesauce::CF::NumberRef&>(cf1, &v35);
            goto LABEL_67;
          }
        }

        goto LABEL_66;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>())
      {
        if (!v8)
        {
          goto LABEL_92;
        }

        if (*v8)
        {
          v25 = CFBooleanGetTypeID();
          if (v25 == CFGetTypeID(*v8))
          {
            v26 = *v8;
            if (v26)
            {
              CFRetain(v26);
              cf1[0] = v26;
              v27 = CFGetTypeID(v26);
              if (v27 != CFBooleanGetTypeID())
              {
                v31 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v31, "Could not construct");
                __cxa_throw(v31, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              *cf1 = 0u;
              v33 = 0u;
              v34 = 0;
              CFRetain(v26);
              cf1[0] = v26;
              v34 = AMCP::Implementation::In_Place_Storage<applesauce::CF::BooleanRef>::dispatch;
              CFRelease(v26);
            }

            else
            {
              cf1[1] = 0;
              v33 = 0u;
              cf1[0] = 0;
              v34 = AMCP::Implementation::In_Place_Storage<applesauce::CF::BooleanRef>::dispatch;
            }

            goto LABEL_67;
          }
        }
      }

      else
      {
        if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DateRef>())
        {
          AMCP::Implementation::create_cf_plist_from<mcp_applesauce::CF::PropertyListRef,applesauce::CF::DateRef>(cf1, v8);
          goto LABEL_67;
        }

        if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
        {
          AMCP::Implementation::create_cf_plist_from<mcp_applesauce::CF::PropertyListRef,applesauce::CF::ArrayRef>(cf1, v8);
          goto LABEL_67;
        }

        if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>())
        {
          AMCP::Implementation::create_cf_plist_from<mcp_applesauce::CF::PropertyListRef,applesauce::CF::DictionaryRef>(cf1, v8);
          goto LABEL_67;
        }
      }
    }

    v34 = 0;
    *cf1 = 0u;
    v33 = 0u;
    goto LABEL_67;
  }

  if (result == 3)
  {
    v9 = AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>();
    result = 0;
    *a4 = v9;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>())
  {
    return a2;
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_1DE244BC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  __cxa_free_exception(v9);
  applesauce::CF::ObjectRef<__CFBoolean const*>::~ObjectRef(&a9);
  __clang_call_terminate(a1);
}

void sub_1DE244CBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  mcp_applesauce::CF::PropertyListRef::~PropertyListRef(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE2448B8);
}

double AMCP::Implementation::In_Place_Storage<mcp_applesauce::CF::PropertyListRef>::destruct(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<mcp_applesauce::CF::PropertyListRef>::construct<mcp_applesauce::CF::PropertyListRef const&>(uint64_t a1, CFTypeRef *a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v3;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<mcp_applesauce::CF::PropertyListRef>::dispatch;
  return a1;
}

BOOL mcp_applesauce::CF::operator==(unint64_t cf1, unint64_t a2)
{
  result = (cf1 | a2) == 0;
  if (cf1)
  {
    if (a2)
    {
      return CFEqual(cf1, a2) != 0;
    }
  }

  return result;
}

CFTypeRef *AMCP::Thing::convert_to<mcp_applesauce::CF::PropertyListRef>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_16;
  }

  v4 = AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>();
  v5 = *(a2 + 32);
  v18 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v18);
    v5 = v18;
  }

  if (v5 == v4)
  {
    *&v16[0] = v4;
    result = (*(a2 + 32))(4, a2, 0, v16);
    if (result)
    {
      v7 = *result;
      if (*result)
      {
        result = CFRetain(*result);
      }

      *a1 = v7;
      return result;
    }

LABEL_16:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  (*(a2 + 32))(6, a2, v16, &v15);
  if (!v17)
  {
    v11 = __cxa_allocate_exception(8uLL);
    v12 = std::bad_cast::bad_cast(v11);
    __cxa_throw(v12, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = v4;
  result = v17(4, v16, 0, &v15);
  if (!result)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v8 = *result;
  if (*result)
  {
    result = CFRetain(*result);
  }

  *a1 = v8;
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE244F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::In_Place_Storage<applesauce::CF::StringRef>::construct<applesauce::CF::StringRef&>(uint64_t a1, CFTypeRef *a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v3;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<applesauce::CF::StringRef>::dispatch;
  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<applesauce::CF::DataRef>::construct<applesauce::CF::DataRef&>(uint64_t a1, CFTypeRef *a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v3;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<applesauce::CF::DataRef>::dispatch;
  return a1;
}

double AMCP::Implementation::create_cf_plist_from<mcp_applesauce::CF::PropertyListRef,applesauce::CF::DateRef>(uint64_t a1, CFTypeRef *a2)
{
  if (!a2)
  {
    __assert_rtn("create_cf_plist_from", "Thing.h", 2434, "in_value_ptr != nullptr");
  }

  if (*a2 && (TypeID = CFDateGetTypeID(), TypeID == CFGetTypeID(*a2)))
  {
    v5 = *a2;
    if (v5)
    {
      CFRetain(v5);
      v6 = CFGetTypeID(v5);
      if (v6 != CFDateGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      CFRetain(v5);
      *a1 = v5;
      *(a1 + 32) = AMCP::Implementation::In_Place_Storage<applesauce::CF::DateRef>::dispatch;
      CFRelease(v5);
    }

    else
    {
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *a1 = 0;
      *(a1 + 32) = AMCP::Implementation::In_Place_Storage<applesauce::CF::DateRef>::dispatch;
    }
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void sub_1DE2451A4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFDate const*>::~ObjectRef(&a10);
  __clang_call_terminate(a1);
}

double AMCP::Implementation::create_cf_plist_from<mcp_applesauce::CF::PropertyListRef,applesauce::CF::ArrayRef>(uint64_t a1, CFTypeRef *a2)
{
  if (!a2)
  {
    __assert_rtn("create_cf_plist_from", "Thing.h", 2434, "in_value_ptr != nullptr");
  }

  if (*a2 && (TypeID = CFArrayGetTypeID(), TypeID == CFGetTypeID(*a2)))
  {
    applesauce::CF::ArrayRef::from_get(&v9, *a2);
    v5 = v9;
    v7 = v9;
    v8 = 1;
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::construct<applesauce::CF::ArrayRef&>(a1, &v7);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  return result;
}

double AMCP::Implementation::create_cf_plist_from<mcp_applesauce::CF::PropertyListRef,applesauce::CF::DictionaryRef>(uint64_t a1, CFTypeRef *a2)
{
  if (!a2)
  {
    __assert_rtn("create_cf_plist_from", "Thing.h", 2434, "in_value_ptr != nullptr");
  }

  if (*a2 && (TypeID = CFDictionaryGetTypeID(), TypeID == CFGetTypeID(*a2)))
  {
    applesauce::CF::DictionaryRef::from_get(&v9, *a2);
    v5 = v9;
    v7 = v9;
    v8 = 1;
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::construct<applesauce::CF::DictionaryRef&>(a1, &v7);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  else
  {
    LOBYTE(v7) = 0;
    v8 = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::construct<applesauce::CF::DictionaryRef&>(uint64_t a1, CFTypeRef *a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v3;
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::dispatch;
  return a1;
}

BOOL AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::dispatch(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result)
      {
        AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::construct<applesauce::CF::DictionaryRef const&>(a3, a2);
        return 0;
      }

      if (result != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *a2 = 0;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::dispatch;
    }

    AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::destruct(a2);
    return 0;
  }

  if (result > 4)
  {
    if (result != 5)
    {
      if (result != 6)
      {
        return result;
      }

      if ((*a4 == AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DateRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>()) && *a4 == AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>())
      {
        if (*(a2 + 32))
        {
          cf1[0] = AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>();
          v7 = (*(a2 + 32))(4, a2, 0, cf1);
        }

        else
        {
          v7 = 0;
        }

        if (*a4 == AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>())
        {
          if (v7)
          {
            mcp_applesauce::CF::PropertyListRef::from_get(cf1, *v7);
            v85 = 0;
            *cf2 = 0u;
            v84 = 0u;
            AMCP::Implementation::In_Place_Storage<mcp_applesauce::CF::PropertyListRef>::construct<mcp_applesauce::CF::PropertyListRef&>(cf2, cf1);
            if (cf1[0])
            {
              CFRelease(cf1[0]);
            }

            if (v85)
            {
              goto LABEL_202;
            }

            goto LABEL_60;
          }

LABEL_206:
          __assert_rtn("create_cf_plist_from", "Thing.h", 2434, "in_value_ptr != nullptr");
        }

        if ((*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DateRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>()) && !v7)
        {
          goto LABEL_206;
        }
      }

      v85 = 0;
      *cf2 = 0u;
      v84 = 0u;
      if (*a4 != AMCP::Implementation::get_type_marker<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>() && *a4 != AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>())
      {
        goto LABEL_79;
      }

LABEL_60:
      if (*(a2 + 32))
      {
        cf1[0] = AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>();
        v18 = (*(a2 + 32))(4, a2, 0, cf1);
      }

      else
      {
        v18 = 0;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>())
      {
        if (v18)
        {
          if (!*v18)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v19 = CFStringCreateWithBytes(0, "item id", 7, 0x8000100u, 0);
          cf1[0] = v19;
          if (!v19)
          {
            v52 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v52, "Could not construct");
            __cxa_throw(v52, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v94, *v18, v19);
          CFRelease(v19);
          if (!*v18)
          {
            v53 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v53, "Could not construct");
            __cxa_throw(v53, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v20 = CFStringCreateWithBytes(0, "kind", 4, 0x8000100u, 0);
          cf1[0] = v20;
          if (!v20)
          {
            v54 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v54, "Could not construct");
            __cxa_throw(v54, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v92, *v18, v20);
          CFRelease(v20);
          if (!*v18)
          {
            v55 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v55, "Could not construct");
            __cxa_throw(v55, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v21 = CFStringCreateWithBytes(0, "name", 4, 0x8000100u, 0);
          cf1[0] = v21;
          if (!v21)
          {
            v56 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v56, "Could not construct");
            __cxa_throw(v56, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          applesauce::CF::details::find_at_key_or_optional<applesauce::CF::StringRef,applesauce::CF::StringRef>(&cf, *v18, v21);
          CFRelease(v21);
          if (v95 == 1)
          {
            if (!v94)
            {
              v57 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v57, "Could not construct");
              __cxa_throw(v57, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v22 = applesauce::CF::convert_to<unsigned int,0>(v94);
          }

          else
          {
            v22 = 0;
          }

          if (v93 == 1)
          {
            if (!v92)
            {
              v58 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v58, "Could not construct");
              __cxa_throw(v58, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v23 = applesauce::CF::convert_to<unsigned int,0>(v92);
          }

          else
          {
            v23 = 0;
          }

          v24 = v91;
          if (v91 == 1)
          {
            v25 = cf;
            if (!cf)
            {
              valuePtr = 0;
LABEL_90:
              v87 = 0uLL;
              cf1[0] = __PAIR64__(v23, v22);
              cf1[1] = v25;
              v88 = AMCP::Implementation::In_Place_Storage<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::dispatch;
              if (v25)
              {
                CFRelease(v25);
                if ((v91 & 1) == 0)
                {
LABEL_96:
                  if (v93 == 1 && v92)
                  {
                    CFRelease(v92);
                  }

                  if (v95 == 1 && v94)
                  {
                    CFRelease(v94);
                  }

                  goto LABEL_102;
                }
              }

              else if (!v24)
              {
                goto LABEL_96;
              }

              if (cf)
              {
                CFRelease(cf);
              }

              goto LABEL_96;
            }

            CFRetain(cf);
            valuePtr = v25;
          }

          else
          {
            v25 = CFStringCreateWithBytes(0, "", 0, 0x8000100u, 0);
            valuePtr = v25;
            if (!v25)
            {
              v59 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v59, "Could not construct");
              __cxa_throw(v59, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }
          }

          CFRetain(v25);
          goto LABEL_90;
        }

LABEL_207:
        __assert_rtn("create_selector_item_from", "Thing.h", 1366, "in_value_ptr != nullptr");
      }

      if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>())
      {
        if (!v18)
        {
          goto LABEL_207;
        }

        v88 = 0;
        *cf1 = 0u;
        v87 = 0u;
        AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::construct<applesauce::CF::DictionaryRef const&>(cf1, v18);
      }

      else
      {
LABEL_79:
        v88 = 0;
        *cf1 = 0u;
        v87 = 0u;
      }

LABEL_102:
      AMCP::swap(cf1, cf2, v17);
      if (v88)
      {
        (v88)(0, cf1, 0, 0);
      }

      if (v85)
      {
        goto LABEL_202;
      }

      if (*a4 != AMCP::Implementation::get_type_marker<std::tuple<unsigned int,unsigned int>>() && *a4 != AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>())
      {
        goto LABEL_139;
      }

      if (*(a2 + 32))
      {
        cf1[0] = AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>();
        v27 = (*(a2 + 32))(4, a2, 0, cf1);
      }

      else
      {
        v27 = 0;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::tuple<unsigned int,unsigned int>>())
      {
        if (v27)
        {
          if (!*v27)
          {
            v60 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v60, "Could not construct");
            __cxa_throw(v60, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          cf1[0] = CFStringCreateWithBytes(0, "u32 minimum", 11, 0x8000100u, 0);
          if (!cf1[0])
          {
            v61 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v61, "Could not construct");
            __cxa_throw(v61, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          LODWORD(cf) = 0;
          v92 = CFNumberCreate(0, kCFNumberIntType, &cf);
          if (!v92)
          {
            v62 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v62, "Could not construct");
            __cxa_throw(v62, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v94, *v27, cf1[0], &v92);
          if (v92)
          {
            CFRelease(v92);
          }

          if (cf1[0])
          {
            CFRelease(cf1[0]);
          }

          if (!*v27)
          {
            v63 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v63, "Could not construct");
            __cxa_throw(v63, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          cf1[0] = CFStringCreateWithBytes(0, "u32 maximum", 11, 0x8000100u, 0);
          if (!cf1[0])
          {
            v64 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v64, "Could not construct");
            __cxa_throw(v64, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          LODWORD(valuePtr) = 0;
          cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          if (!cf)
          {
            v65 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v65, "Could not construct");
            __cxa_throw(v65, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v92, *v27, cf1[0], &cf);
          if (cf)
          {
            CFRelease(cf);
          }

          if (cf1[0])
          {
            CFRelease(cf1[0]);
          }

          v31 = v94;
          if (!v94)
          {
            v66 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v66, "Could not construct");
            __cxa_throw(v66, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v32 = applesauce::CF::convert_to<double,0>(v94);
          v33 = v92;
          if (!v92)
          {
            v67 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v67, "Could not construct");
            __cxa_throw(v67, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v34 = v32;
          v35 = applesauce::CF::convert_to<double,0>(v92);
          v87 = 0uLL;
          cf1[0] = (v34 | (v35 << 32));
          cf1[1] = 0;
          v88 = AMCP::Implementation::In_Place_Storage<std::tuple<unsigned int,unsigned int>>::dispatch;
          CFRelease(v33);
          CFRelease(v31);
          goto LABEL_140;
        }

LABEL_208:
        __assert_rtn("create_min_max_u32_from", "Thing.h", 1502, "in_value_ptr != nullptr");
      }

      if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>())
      {
        if (!v27)
        {
          goto LABEL_208;
        }

        v88 = 0;
        *cf1 = 0u;
        v87 = 0u;
        AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::construct<applesauce::CF::DictionaryRef const&>(cf1, v27);
      }

      else
      {
LABEL_139:
        v88 = 0;
        *cf1 = 0u;
        v87 = 0u;
      }

LABEL_140:
      AMCP::swap(cf1, cf2, v26);
      if (v88)
      {
        (v88)(0, cf1, 0, 0);
      }

      if (v85)
      {
        goto LABEL_202;
      }

      if (*a4 != AMCP::Implementation::get_type_marker<AudioValueRange>() && *a4 != AMCP::Implementation::get_type_marker<CA::ValueRange>() && *a4 != AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>())
      {
        goto LABEL_191;
      }

      if (*(a2 + 32))
      {
        cf1[0] = AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>();
        v37 = (*(a2 + 32))(4, a2, 0, cf1);
      }

      else
      {
        v37 = 0;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<AudioValueRange>())
      {
        if (v37)
        {
          if (*v37)
          {
            cf1[0] = CFStringCreateWithBytes(0, "float minimum", 13, 0x8000100u, 0);
            if (!cf1[0])
            {
              v68 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v68, "Could not construct");
              __cxa_throw(v68, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            LODWORD(cf) = 0;
            v92 = CFNumberCreate(0, kCFNumberIntType, &cf);
            if (!v92)
            {
              v69 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v69, "Could not construct");
              __cxa_throw(v69, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v94, *v37, cf1[0], &v92);
            if (v92)
            {
              CFRelease(v92);
            }

            if (cf1[0])
            {
              CFRelease(cf1[0]);
            }

            if (!*v37)
            {
              v70 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v70, "Could not construct");
              __cxa_throw(v70, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            cf1[0] = CFStringCreateWithBytes(0, "float maximum", 13, 0x8000100u, 0);
            if (!cf1[0])
            {
              v71 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v71, "Could not construct");
              __cxa_throw(v71, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            LODWORD(valuePtr) = 0;
            cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            if (!cf)
            {
              v72 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v72, "Could not construct");
              __cxa_throw(v72, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v92, *v37, cf1[0], &cf);
            if (cf)
            {
              CFRelease(cf);
            }

            if (cf1[0])
            {
              CFRelease(cf1[0]);
            }

            v38 = v94;
            if (!v94)
            {
              v73 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v73, "Could not construct");
              __cxa_throw(v73, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v39 = applesauce::CF::convert_to<double,0>(v94);
            v40 = v92;
            if (!v92)
            {
              v74 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v74, "Could not construct");
              __cxa_throw(v74, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v41 = v39;
            v42 = applesauce::CF::convert_to<double,0>(v92);
            v87 = 0uLL;
            cf1[0] = *&v41;
            cf1[1] = *&v42;
            v88 = AMCP::Implementation::In_Place_Storage<AudioValueRange>::dispatch;
            CFRelease(v40);
            CFRelease(v38);
            goto LABEL_192;
          }

LABEL_235:
          v75 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v75, "Could not construct");
          __cxa_throw(v75, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        goto LABEL_209;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<CA::ValueRange>())
      {
        if (v37)
        {
          if (*v37)
          {
            cf1[0] = CFStringCreateWithBytes(0, "float minimum", 13, 0x8000100u, 0);
            if (!cf1[0])
            {
              v76 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v76, "Could not construct");
              __cxa_throw(v76, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            LODWORD(cf) = 0;
            v92 = CFNumberCreate(0, kCFNumberIntType, &cf);
            if (!v92)
            {
              v77 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v77, "Could not construct");
              __cxa_throw(v77, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v94, *v37, cf1[0], &v92);
            if (v92)
            {
              CFRelease(v92);
            }

            if (cf1[0])
            {
              CFRelease(cf1[0]);
            }

            if (!*v37)
            {
              v78 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v78, "Could not construct");
              __cxa_throw(v78, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            cf1[0] = CFStringCreateWithBytes(0, "float maximum", 13, 0x8000100u, 0);
            if (!cf1[0])
            {
              v79 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v79, "Could not construct");
              __cxa_throw(v79, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            LODWORD(valuePtr) = 0;
            cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            if (!cf)
            {
              v80 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v80, "Could not construct");
              __cxa_throw(v80, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            applesauce::CF::at_or<applesauce::CF::NumberRef,applesauce::CF::StringRef>(&v92, *v37, cf1[0], &cf);
            if (cf)
            {
              CFRelease(cf);
            }

            if (cf1[0])
            {
              CFRelease(cf1[0]);
            }

            v43 = v94;
            if (!v94)
            {
              v81 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v81, "Could not construct");
              __cxa_throw(v81, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v44 = applesauce::CF::convert_to<double,0>(v94);
            v45 = v92;
            if (!v92)
            {
              v82 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v82, "Could not construct");
              __cxa_throw(v82, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v46 = v44;
            v47 = applesauce::CF::convert_to<double,0>(v92);
            v87 = 0uLL;
            cf1[0] = *&v46;
            cf1[1] = *&v47;
            v88 = AMCP::Implementation::In_Place_Storage<CA::ValueRange>::dispatch;
            CFRelease(v45);
            CFRelease(v43);
            goto LABEL_192;
          }

          goto LABEL_235;
        }

LABEL_209:
        __assert_rtn("create_value_range_from", "Thing.h", 1563, "in_value_ptr != nullptr");
      }

      if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>())
      {
        if (!v37)
        {
          goto LABEL_209;
        }

        v88 = 0;
        *cf1 = 0u;
        v87 = 0u;
        AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::construct<applesauce::CF::DictionaryRef const&>(cf1, v37);
      }

      else
      {
LABEL_191:
        v88 = 0;
        *cf1 = 0u;
        v87 = 0u;
      }

LABEL_192:
      AMCP::swap(cf1, cf2, v36);
      if (v88)
      {
        (v88)(0, cf1, 0, 0);
      }

      if (!v85)
      {
        AMCP::Implementation::create_acl_from<applesauce::CF::DictionaryRef>(cf1, a2, a4);
        AMCP::swap(cf1, cf2, v48);
        if (v88)
        {
          (v88)(0, cf1, 0, 0);
        }

        if (!v85)
        {
          AMCP::Implementation::create_asbd_from<applesauce::CF::DictionaryRef>(cf1, a2, a4);
          AMCP::swap(cf1, cf2, v49);
          if (v88)
          {
            (v88)(0, cf1, 0, 0);
          }

          if (!v85)
          {
            AMCP::Implementation::create_available_format_from<applesauce::CF::DictionaryRef>(cf1, a2, a4);
            AMCP::swap(cf1, cf2, v50);
            AMCP::Thing::~Thing(cf1);
          }
        }
      }

LABEL_202:
      AMCP::swap(cf2, a3, v16);
      if (v85)
      {
        v85(0, cf2, 0, 0);
      }

      return 0;
    }

    v9 = AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>();
    v10 = *(a2 + 32);
    cf1[0] = 0;
    if (v10)
    {
      v10(3, a2, 0, cf1);
      v10 = cf1[0];
    }

    if (v10 == v9)
    {
      v11 = *(a3 + 32);
      cf2[0] = 0;
      if (v11)
      {
        v11(3, a3, 0, cf2);
        v11 = cf2[0];
      }

      if (v11 == v9)
      {
        if (*(a2 + 32))
        {
          cf1[0] = AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>();
          v12 = (*(a2 + 32))(4, a2, 0, cf1);
        }

        else
        {
          v12 = 0;
        }

        cf1[0] = AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>();
        v28 = (*(a3 + 32))(4, a3, 0, cf1);
        v29 = *v12;
        v30 = *v28;
        if (*v12 && v30)
        {
          if (!CFEqual(v29, v30))
          {
            return 0;
          }
        }

        else if (v29 | v30)
        {
          return 0;
        }

        return 1;
      }
    }

    AMCP::Thing::convert_to<applesauce::CF::DictionaryRef>(cf1, a2);
    AMCP::Thing::convert_to<applesauce::CF::DictionaryRef>(cf2, a3);
    v13 = cf1[0];
    v14 = cf2[0];
    v15 = (cf1[0] | cf2[0]) == 0;
    if (cf1[0] && cf2[0])
    {
      v15 = CFEqual(cf1[0], cf2[0]) != 0;
    }

    else if (!cf2[0])
    {
      goto LABEL_40;
    }

    CFRelease(v14);
LABEL_40:
    if (v13)
    {
      CFRelease(v13);
    }

    return v15;
  }

  if (result == 3)
  {
    v8 = AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>();
    result = 0;
    *a4 = v8;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>())
  {
    return a2;
  }

  else
  {
    return 0;
  }

  return result;
}
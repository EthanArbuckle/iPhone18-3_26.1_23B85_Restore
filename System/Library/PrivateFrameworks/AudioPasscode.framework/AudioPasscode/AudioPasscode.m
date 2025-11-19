void sub_24158F428(_Unwind_Exception *a1)
{
  MEMORY[0x245CEA790](v2, 0x1091C4021E3608ALL);
  *v3 = 0;

  _Unwind_Resume(a1);
}

EchoCodeDecoder **std::unique_ptr<EchoCodeDecoder>::~unique_ptr[abi:ne200100](EchoCodeDecoder **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    EchoCodeDecoder::~EchoCodeDecoder(v2);
    MEMORY[0x245CEA790]();
  }

  return a1;
}

void sub_24158FB0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  MEMORY[0x245CEA790](v52, 0x81C40B8603338);
  *v53 = 0;

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<EchoCodeEncoder>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__tree<std::__value_type<unsigned int,std::any>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::any>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::any>>>::destroy(v2 + 152, *(v2 + 160));
    v3 = *(v2 + 128);
    if (v3)
    {
      *(v2 + 136) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 104);
    if (v4)
    {
      *(v2 + 112) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 96);
    *(v2 + 96) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    std::unique_ptr<ShapingFilter>::~unique_ptr[abi:ne200100]((v2 + 88));
    std::unique_ptr<ShapingFilter>::~unique_ptr[abi:ne200100]((v2 + 80));
    v6 = *(v2 + 72);
    *(v2 + 72) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    MEMORY[0x245CEA790](v2, 0x10A1C40B771ED57);
  }

  return a1;
}

void sub_2415909FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void *);
  v9 = va_arg(va1, void);
  std::__tree<std::__value_type<unsigned int,std::any>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::any>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::any>>>::destroy(va, v8);
  std::unique_ptr<EchoCodeEncoder>::~unique_ptr[abi:ne200100](va1);

  _Unwind_Resume(a1);
}

uint64_t (**std::any::reset[abi:ne200100](uint64_t (**result)(void, void, void, void, void)))(void, void, void, void, void)
{
  if (*result)
  {
    return (*result)(0, result, 0, 0, 0);
  }

  return result;
}

void std::vector<unsigned char>::__append(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v6 - *a1;
    memset(v8, *a3, __len);
    memcpy(&v8[v7 - v6], v7, v12);
    *a1 = &v8[v7 - v6];
    a1[1] = &v8[__len];
    a1[2] = 0;
    if (v7)
    {

      operator delete(v7);
    }
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278CE1CC8, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void EchoCodeDecoder::~EchoCodeDecoder(EchoCodeDecoder *this)
{
  v2 = *(this + 35);
  if (v2)
  {
    *(this + 36) = v2;
    operator delete(v2);
  }

  v3 = *(this + 32);
  if (v3)
  {
    *(this + 33) = v3;
    operator delete(v3);
  }

  v4 = *(this + 29);
  if (v4)
  {
    *(this + 30) = v4;
    operator delete(v4);
  }

  v5 = *(this + 26);
  if (v5)
  {
    *(this + 27) = v5;
    operator delete(v5);
  }

  v6 = *(this + 23);
  if (v6)
  {
    *(this + 24) = v6;
    operator delete(v6);
  }

  v7 = *(this + 22);
  *(this + 22) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 21);
  *(this + 21) = 0;
  if (v8)
  {
    v9 = *(v8 + 72);
    if (v9)
    {
      *(v8 + 80) = v9;
      operator delete(v9);
    }

    v10 = *(v8 + 48);
    if (v10)
    {
      *(v8 + 56) = v10;
      operator delete(v10);
    }

    v11 = *(v8 + 24);
    if (v11)
    {
      *(v8 + 32) = v11;
      operator delete(v11);
    }

    std::unique_ptr<OpaqueFFTSetup,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueFFTSetup*,&(vDSP_destroy_fftsetup)>>::reset[abi:ne200100]((v8 + 8), 0);
    MEMORY[0x245CEA790](v8, 0x10A0C4067990E37);
  }

  std::unique_ptr<ShapingFilter>::~unique_ptr[abi:ne200100](this + 20);
  v12 = *(this + 16);
  if (v12)
  {
    *(this + 17) = v12;
    operator delete(v12);
  }

  std::__tree<std::__value_type<unsigned int,std::any>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::any>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::any>>>::destroy(this + 80, *(this + 11));
}

{
  EchoCodeDecoder::~EchoCodeDecoder(this);

  JUMPOUT(0x245CEA790);
}

uint64_t *std::unique_ptr<ShapingFilter>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::unique_ptr<vDSP_biquad_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_biquad_SetupStruct*,&(vDSP_biquad_DestroySetup)>>::reset[abi:ne200100]((v2 + 32), 0);
    v4 = (v2 + 8);
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v4);
    MEMORY[0x245CEA790](v2, 0x1020C409A1C8018);
  }

  return a1;
}

void std::unique_ptr<OpaqueFFTSetup,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueFFTSetup*,&(vDSP_destroy_fftsetup)>>::reset[abi:ne200100](OpaqueFFTSetup **a1, OpaqueFFTSetup *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    vDSP_destroy_fftsetup(v3);
  }
}

void std::unique_ptr<vDSP_biquad_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_biquad_SetupStruct*,&(vDSP_biquad_DestroySetup)>>::reset[abi:ne200100](vDSP_biquad_SetupStruct **a1, vDSP_biquad_SetupStruct *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    vDSP_biquad_DestroySetup(v3);
  }
}

void std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<float>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<float>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100](int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return MEMORY[0x277D827C8];
  }

  if (a4)
  {
    v6 = std::type_info::operator==[abi:ne200100](a4, MEMORY[0x277D827C8]);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<unsigned int>::__id;
  }

  if (v6)
  {
    return a2 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__any_imp::_SmallHandler<float>::__handle[abi:ne200100](int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = std::__any_imp::_SmallHandler<float>::__handle[abi:ne200100];
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = std::__any_imp::_SmallHandler<float>::__handle[abi:ne200100];
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return MEMORY[0x277D827B0];
  }

  if (a4)
  {
    v6 = std::type_info::operator==[abi:ne200100](a4, MEMORY[0x277D827B0]);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<float>::__id;
  }

  if (v6)
  {
    return a2 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::any>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::any>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::any>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 32);
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

uint64_t *std::__tree<std::__value_type<unsigned int,std::any>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::any>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::any>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<unsigned int,std::any>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned int,std::any>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::any::reset[abi:ne200100](v2 + 5);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100](int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100];
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100];
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return MEMORY[0x277D82798];
  }

  if (a4)
  {
    v6 = std::type_info::operator==[abi:ne200100](a4, MEMORY[0x277D82798]);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<BOOL>::__id;
  }

  if (v6)
  {
    return a2 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__tree<std::__value_type<unsigned int,std::any>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::any>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::any>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,std::any>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::any>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::any>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,std::any>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::any>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::any>>>::destroy(a1, a2[1]);
    std::any::reset[abi:ne200100](a2 + 5);

    operator delete(a2);
  }
}

uint64_t (**std::any_cast[abi:ne200100]<unsigned int>(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, MEMORY[0x277D827C8], &std::__any_imp::__unique_typeinfo<unsigned int>::__id);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, MEMORY[0x277D827C8], &std::__any_imp::__unique_typeinfo<unsigned int>::__id);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void std::__throw_bad_any_cast[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  exception->__vftable = 0;
  v1 = std::bad_any_cast::bad_any_cast(exception);
  __cxa_throw(v1, MEMORY[0x277D82758], std::bad_any_cast::~bad_any_cast);
}

std::bad_cast *std::bad_any_cast::bad_any_cast(std::bad_any_cast *this)
{
  result = std::bad_cast::bad_cast(this);
  result->__vftable = (MEMORY[0x277D828D0] + 16);
  return result;
}

void sub_241592914(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void EchoCodeDecoder::EchoCodeDecoder(EchoCodeDecoder *this)
{
  *this = &unk_28533D758;
  *(this + 1) = &unk_28533D7A8;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  *(this + 44) = 0;
  *(this + 60) = 0;
  *(this + 52) = 0;
  *(this + 17) = 100;
  *(this + 72) = 0;
  *(this + 11) = 0;
  *(this + 10) = this + 88;
  *(this + 16) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0;
  *(this + 30) = 0;
  *(this + 38) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 10) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  operator new();
}

void sub_24159344C(_Unwind_Exception *a1)
{
  v7 = v1[35];
  if (v7)
  {
    v1[36] = v7;
    operator delete(v7);
  }

  v8 = v1[32];
  if (v8)
  {
    v1[33] = v8;
    operator delete(v8);
  }

  v9 = v1[29];
  if (v9)
  {
    v1[30] = v9;
    operator delete(v9);
  }

  v10 = v1[26];
  if (v10)
  {
    v1[27] = v10;
    operator delete(v10);
  }

  v11 = v1[23];
  if (v11)
  {
    v1[24] = v11;
    operator delete(v11);
  }

  v12 = v1[22];
  v1[22] = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  std::unique_ptr<EchoDetector>::reset[abi:ne200100](v3 + 1, 0);
  std::unique_ptr<ShapingFilter>::reset[abi:ne200100](v3, 0);
  v13 = *v5;
  if (*v5)
  {
    v1[17] = v13;
    operator delete(v13);
  }

  std::__tree<std::__value_type<unsigned int,std::any>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::any>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::any>>>::destroy(v2, *v4);
  _Unwind_Resume(a1);
}

uint64_t EchoCodeDecoder::initialize(float *a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  result = EchoCodeDecoder::loadAPCConfig(a1, a2);
  if (!result)
  {
    if (!*(a1 + 6))
    {
      *(a1 + 6) = 2048;
    }

    if (!*(a1 + 7))
    {
      *(a1 + 7) = 2;
    }

    if (a1[8] == 0.0)
    {
      a1[8] = 0.002;
    }

    if (a1[9] == 0.0)
    {
      a1[9] = 0.008;
    }

    if (a1[16] == 0.0)
    {
      a1[16] = 18000.0;
    }

    v5 = *(a1 + 17);
    if (!v5)
    {
      v5 = 100;
      *(a1 + 17) = 100;
    }

    SyncType = echoCodec::getSyncType(v5);
    if (!*(a1 + 14))
    {
      if (SyncType)
      {
        v7 = 6;
      }

      else
      {
        v7 = 4;
      }

      *(a1 + 14) = *(a1 + 6) >> v7;
    }

    v8 = APCLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = (*(a1 + 17) / 100.0);
      v11 = 134217984;
      v12 = v9;
      _os_log_impl(&dword_24158E000, v8, OS_LOG_TYPE_INFO, "APC decoder algorithm version: %3.2f", &v11, 0xCu);
    }

    v10 = echoCodec::getSyncType(*(a1 + 17));
    if (!v10)
    {
      operator new();
    }

    if (v10)
    {
      operator new();
    }

    result = 4294967289;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t EchoCodeDecoder::loadAPCConfig(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  __p = 0;
  v8 = 0;
  v9 = 0;
  LODWORD(v5) = 0;
  *(&v5 + 1) = a1 + 16;
  v6 = 1;
  std::vector<APCConfigReader::paramData>::push_back[abi:ne200100](&__p, &v5);
  LODWORD(v5) = 3;
  *(&v5 + 1) = a1 + 20;
  v6 = 1;
  std::vector<APCConfigReader::paramData>::push_back[abi:ne200100](&__p, &v5);
  LODWORD(v5) = 111;
  *(&v5 + 1) = a1 + 64;
  v6 = 0;
  std::vector<APCConfigReader::paramData>::push_back[abi:ne200100](&__p, &v5);
  LODWORD(v5) = 113;
  *(&v5 + 1) = a1 + 68;
  v6 = 1;
  std::vector<APCConfigReader::paramData>::push_back[abi:ne200100](&__p, &v5);
  v3 = APCConfigReader::loadParams(&v10, &__p);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  return v3;
}

void sub_241593AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz)
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
    std::vector<float>::__append(this, __sz - v2);
  }
}

void std::vector<float>::resize(void *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v4 = (a1[1] - *a1) >> 2;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    std::vector<float>::__append(a1, a2 - v4, a3, a4);
  }
}

void *std::vector<unsigned char>::reserve(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t EchoCodeDecoder::reset(ShapingFilter **this)
{
  ShapingFilter::reset(this[20]);
  this[36] = this[35];
  BitCounter::reset((this + 13), 0);
  (*(*this[22] + 24))(this[22]);
  *(this + 40) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 72) = 0;
  return 0;
}

uint64_t EchoCodeDecoder::decode(EchoCodeDecoder *this, const float *a2, unsigned int *a3, unsigned __int8 *a4)
{
  SyncType = echoCodec::getSyncType(*(this + 17));
  if (SyncType)
  {

    return EchoCodeDecoder::decodeWithSyncEcho(this, a2, a3, a4);
  }

  else if (SyncType)
  {
    return 4294967291;
  }

  else
  {
    v9 = *a3;

    return EchoCodeDecoder::decodeWithSyncSeq(this, a2, v9, a4);
  }
}

uint64_t EchoCodeDecoder::decodeWithSyncSeq(EchoCodeDecoder *this, const float *a2, uint64_t a3, unsigned __int8 *a4)
{
  v5 = a3;
  v6 = a2;
  v25 = 0;
  if (!(*(**(this + 22) + 40))(*(this + 22), a2, a3, &v25, 0))
  {
    return 2;
  }

  if (*(this + 12) >= (8 * *(this + 5)))
  {
    return 4;
  }

  if ((v25 & 0x80000000) == 0)
  {
    v6 += v25;
    v5 -= v25;
    *(this + 11) = 0;
    v8 = APCLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24158E000, v8, OS_LOG_TYPE_INFO, "The beginning of the passcode has been found!", buf, 2u);
    }
  }

  if (v5 < 1)
  {
    return 3;
  }

  v9 = *(this + 11);
  v10 = *(this + 13) - v9;
  v11 = v10 >= v5 ? v5 : v10;
  ShapingFilter::filter(*(this + 20), v6, (*(this + 26) + 4 * v9), v11);
  v12 = *(this + 11) + v11;
  *(this + 11) = v12;
  if (v12 < *(this + 13))
  {
    return 3;
  }

  while (1)
  {
    if (*(this + 15))
    {
      v14 = 0;
      do
      {
        v23 = 0;
        if (EchoDetector::decodeEcho(*(this + 21), (*(this + 26) + 4 * *(this + 14) * v14), *(this + 6), &v23, 0))
        {
          BitCounter::count(this + 104, v23);
        }

        else
        {
          BitCounter::count(this + 104);
        }

        ++v14;
      }

      while (v14 < *(this + 15));
    }

    *a4 = 0;
    v15 = *(this + 28);
    v16 = *(this + 29);
    if (v15 == v16)
    {
      break;
    }

    if (v15 < v16)
    {
      *a4 = 1;
    }

    BitCounter::reset((this + 104), 0);
    v17 = *(this + 11);
    ++*(this + 12);
    memmove(*(this + 26), (*(this + 26) + 4 * *(this + 13)), 4 * (v17 - *(this + 13)));
    v18 = *(this + 13);
    v19 = *(this + 11) - v18;
    *(this + 11) = v19;
    v20 = __OFSUB__(v5, v11);
    v5 -= v11;
    if ((v5 < 0) ^ v20 | (v5 == 0))
    {
      return 0;
    }

    v6 += v11;
    v21 = v18 - v19;
    if (v21 >= v5)
    {
      v11 = v5;
    }

    else
    {
      v11 = v21;
    }

    ShapingFilter::filter(*(this + 20), v6, (*(this + 26) + 4 * v19), v11);
    result = 0;
    v22 = *(this + 11) + v11;
    *(this + 11) = v22;
    if (v22 < *(this + 13))
    {
      return result;
    }
  }

  if (v15)
  {
    return 4294967292;
  }

  else
  {
    return 4294967294;
  }
}

uint64_t EchoCodeDecoder::decodeWithSyncEcho(EchoCodeDecoder *this, const float *__X, unsigned int *a3, unsigned __int8 *a4)
{
  v5 = __X;
  v7 = *a3;
  EchoCodeDecoder::decodeWithSyncEcho(float const*,unsigned int &,unsigned char &)::count += v7;
  v39 = 0;
  if (*(this + 12) >= (8 * *(this + 5)))
  {
    v15 = 4;
  }

  else
  {
    if ((*(**(this + 22) + 40))(*(this + 22), __X, v7, &v39, 0))
    {
      v8 = *(this + 11);
      v9 = v39;
      if ((v39 + v8) >= 0)
      {
        v10 = v39 & (v39 >> 31);
        v11 = v10 + v8;
        memmove(*(this + 26), (*(this + 26) + 4 * (v10 + v8)), 4 * -v10);
        v8 = *(this + 11) - v11;
        *(this + 11) = v8;
        v9 = v39;
      }

      if ((v9 & 0x80000000) == 0)
      {
        if (v7 >= v9)
        {
          v12 = v9;
        }

        else
        {
          v12 = v7;
        }

        v13 = *(this + 13) - v8;
        v14 = v12 - v13;
        if (v12 > v13)
        {
          memmove(*(this + 26), (*(this + 26) + 4 * v14), 4 * (v8 - v14));
          v8 = *(this + 11) - v14;
          *(this + 11) = v8;
        }

        ShapingFilter::filter(*(this + 20), v5, (*(this + 26) + 4 * v8), v12);
        v5 += v12;
        LODWORD(v7) = v7 - v12;
      }

      v15 = 3;
      goto LABEL_27;
    }

    v15 = 3;
  }

  if (v7 >= 1)
  {
    v16 = *(this + 11);
    do
    {
      v17 = *(this + 13);
      if (v16 == v17)
      {
        if (v16 >= v7)
        {
          v18 = v7;
        }

        else
        {
          v18 = v16;
        }

        memmove(*(this + 26), (*(this + 26) + 4 * v18), 4 * (v16 - v18));
        v16 = *(this + 11) - v18;
        *(this + 11) = v16;
        v17 = *(this + 13);
      }

      v19 = v17 - v16;
      if (v19 >= v7)
      {
        v20 = v7;
      }

      else
      {
        v20 = v19;
      }

      ShapingFilter::filter(*(this + 20), v5, (*(this + 26) + 4 * v16), v20);
      v16 = *(this + 11) + v20;
      *(this + 11) = v16;
      v21 = __OFSUB__(v7, v20);
      LODWORD(v7) = v7 - v20;
    }

    while (!((v7 < 0) ^ v21 | (v7 == 0)));
  }

  do
  {
LABEL_27:
    if (v7 < 1)
    {
      break;
    }

    v22 = *(this + 11);
    v23 = *(this + 13) - v22;
    if (v23 >= v7)
    {
      v24 = v7;
    }

    else
    {
      v24 = v23;
    }

    ShapingFilter::filter(*(this + 20), v5, (*(this + 26) + 4 * v22), v24);
    v25 = *(this + 11) + v24;
    *(this + 11) = v25;
    if (v25 < *(this + 13))
    {
      LODWORD(v7) = v7 - v24;
      break;
    }

    if (!*(this + 15))
    {
      v26 = 0;
      goto LABEL_59;
    }

    v26 = 0;
    v27 = 0;
    while (1)
    {
      v38 = 0;
      v28 = EchoDetector::decodeEcho(*(this + 21), (*(this + 26) + 4 * (*(this + 14) * v27)), *(this + 6), &v38, 0);
      v29 = *(this + 14);
      if (v28)
      {
        if ((*(this + 72) & 1) == 0)
        {
          BitCounter::reset((this + 104), 0);
          *(this + 72) = 1;
        }

        BitCounter::count(this + 104, v38);
      }

      else if (*(this + 72))
      {
        BitCounter::count(this + 104);
      }

      v26 += v29;
      if (*(this + 72) != 1)
      {
        goto LABEL_49;
      }

      if (((*(**(this + 22) + 72))(*(this + 22)) & 1) != 0 || *(this + 12))
      {
        v30 = 0;
      }

      else
      {
        if (*(this + 30) > *(this + 15))
        {
          BitCounter::reset((this + 104), 0);
          *(this + 72) = 0;
          (*(**(this + 22) + 24))(*(this + 22));
          v32 = APCLogObject();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_24158E000, v32, OS_LOG_TYPE_DEBUG, "A wrong frame start was found. Restarting...", buf, 2u);
          }
        }

        v30 = 1;
      }

      if (*(this + 26) < *(this + 27))
      {
        goto LABEL_49;
      }

      v31 = BitCounter::decodeBit((this + 104));
      if (v30)
      {
        if ((*(this + 28) + *(this + 29)) < 0xA)
        {
          break;
        }
      }

      if (v31 < 0)
      {
        break;
      }

      *a4 = v31;
      BitCounter::reset((this + 104), 0);
      v15 = 0;
      ++*(this + 12);
LABEL_49:
      if (++v27 >= *(this + 15))
      {
        goto LABEL_59;
      }
    }

    *(this + 72) = 0;
    *(this + 12) = 0;
    (*(**(this + 22) + 24))(*(this + 22));
    v33 = APCLogObject();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *v36 = 0;
      _os_log_impl(&dword_24158E000, v33, OS_LOG_TYPE_ERROR, "Passcode bit error. Restarting...", v36, 2u);
    }

    v15 = 4294967286;
LABEL_59:
    memmove(*(this + 26), (*(this + 26) + 4 * v26), 4 * (*(this + 11) - v26));
    *(this + 11) -= v26;
    v5 += v24;
    LODWORD(v7) = v7 - v24;
  }

  while (v15 != -10);
  *a3 -= v7;
  return v15;
}

void EchoCodeDecoder::Process(EchoCodeDecoder *this, const float *a2, int a3, char *a4, int *a5)
{
  v48 = *MEMORY[0x277D85DE8];
  if (a3 < 1)
  {
    v43 = 0;
    v32 = 0;
    goto LABEL_42;
  }

  v7 = a3;
  v42 = a5;
  v43 = 0;
  while (1)
  {
    v45 = 0;
    v9 = *(this + 6);
    if (v9 >= v7)
    {
      v9 = v7;
    }

    v44 = v9;
    v10 = EchoCodeDecoder::decode(this, a2, &v44, &v45);
    v11 = v10;
    v12 = v44;
    if (v10 <= 1)
    {
      if (v10 != -10)
      {
        if (v10)
        {
          goto LABEL_58;
        }

        v14 = *(this + 36);
        v13 = *(this + 37);
        if (v14 >= v13)
        {
          v17 = *(this + 35);
          v18 = (v14 - v17);
          v19 = v14 - v17 + 1;
          if (v19 < 0)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v20 = v13 - v17;
          if (2 * v20 > v19)
          {
            v19 = 2 * v20;
          }

          if (v20 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v21 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            operator new();
          }

          v22 = v14 - v17;
          *v18 = v45 & 1;
          v15 = v18 + 1;
          memcpy(0, v17, v22);
          *(this + 35) = 0;
          *(this + 36) = v18 + 1;
          *(this + 37) = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          *v14 = v45 & 1;
          v15 = v14 + 1;
        }

        *(this + 36) = v15;
        if (v15 - *(this + 70) >= (8 * *(this + 5)))
        {
          v43 = mach_absolute_time();
          v23 = APCLogObject();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v47 = v43;
            _os_log_impl(&dword_24158E000, v23, OS_LOG_TYPE_INFO, "Decoding completion time: %llu", buf, 0xCu);
          }
        }

        v24 = *(this + 35);
        v25 = *(this + 36);
        if (v24 != v25 && ((v25 - v24) & 7) == 0)
        {
          v26 = APCLogObject();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v27 = 0;
            v28 = *(this + 36);
            v29 = -8;
            do
            {
              v30 = *(v28 + v29) & 1 | (2 * (v27 & 0x7F));
              v27 = *(v28 + v29) & 1 | (2 * (v27 & 0x7F));
            }

            while (!__CFADD__(v29++, 1));
            *buf = 67109120;
            LODWORD(v47) = v30;
            _os_log_impl(&dword_24158E000, v26, OS_LOG_TYPE_INFO, "One byte has been decoded: 0x%02X", buf, 8u);
          }
        }

        goto LABEL_14;
      }

LABEL_13:
      *(this + 36) = *(this + 35);
      goto LABEL_14;
    }

    if (v10 == 2)
    {
      goto LABEL_13;
    }

    if (v10 != 3)
    {
      break;
    }

LABEL_14:
    a2 += v12;
    v16 = __OFSUB__(v7, v12);
    v7 -= v12;
    if ((v7 < 0) ^ v16 | (v7 == 0))
    {
      goto LABEL_39;
    }
  }

  if (v10 == 4)
  {
LABEL_39:
    v33 = 1;
    goto LABEL_40;
  }

LABEL_58:
  v33 = 0;
LABEL_40:
  v32 = v11 == 4;
  if (!v33)
  {
    v36 = 1;
    a5 = v42;
LABEL_51:
    *a5 = 0;
    if (!v32)
    {
      goto LABEL_55;
    }

    goto LABEL_56;
  }

  a5 = v42;
LABEL_42:
  v34 = *(this + 35);
  v35 = *(this + 5);
  if (*(this + 72) - v34 < (8 * v35))
  {
    v36 = 0;
    goto LABEL_51;
  }

  if (v35)
  {
    v37 = 0;
    do
    {
      v38 = 0;
      v39 = 0;
      do
      {
        v39 = *(*(this + 35) + 8 * (v37 & 0x1FFFFFFF) + v38++) & 1 | (2 * v39);
      }

      while (v38 != 8);
      *a4++ = v39;
      ++v37;
      v40 = *(this + 5);
    }

    while (v37 < v40);
    v34 = *(this + 35);
  }

  else
  {
    LODWORD(v40) = 0;
  }

  v36 = 0;
  *(this + 36) = v34;
  *a5 = v40;
  *a4 = v43;
  if (v32)
  {
LABEL_56:
    EchoCodeDecoder::reset(this);
    goto LABEL_57;
  }

LABEL_55:
  if (v36)
  {
    goto LABEL_56;
  }

LABEL_57:
  v41 = *MEMORY[0x277D85DE8];
}

void sub_241594850(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t EchoCodeDecoder::convertBitsToByte(EchoCodeDecoder *this, const unsigned __int8 *a2)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = *(this + v2++) & 1 | (2 * v3);
    v3 = v4;
  }

  while (v2 != 8);
  return v4;
}

uint64_t EchoCodeDecoder::setParams(_DWORD *a1, int a2, void (**a3)(uint64_t))
{
  if (a1[4])
  {
    return 4294967287;
  }

  result = 4294967290;
  if (a2 > 105)
  {
    switch(a2)
    {
      case 'j':
        v10 = std::any_cast[abi:ne200100]<float>(a3);
        if (v10)
        {
          a1[9] = *v10;
          goto LABEL_22;
        }

        break;
      case 'o':
        v12 = std::any_cast[abi:ne200100]<float>(a3);
        if (v12)
        {
          a1[16] = *v12;
          goto LABEL_22;
        }

        break;
      case 'q':
        v8 = std::any_cast[abi:ne200100]<unsigned int>(a3);
        if (v8)
        {
          a1[17] = *v8;
          goto LABEL_22;
        }

        break;
      default:
        return result;
    }

LABEL_24:
    std::__throw_bad_any_cast[abi:ne200100]();
  }

  if (a2 == 100)
  {
    v9 = std::any_cast[abi:ne200100]<unsigned int>(a3);
    if (v9)
    {
      a1[6] = *v9;
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  if (a2 == 101)
  {
    v11 = std::any_cast[abi:ne200100]<unsigned int>(a3);
    if (v11)
    {
      a1[7] = *v11;
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  if (a2 != 105)
  {
    return result;
  }

  v7 = std::any_cast[abi:ne200100]<float>(a3);
  if (!v7)
  {
    goto LABEL_24;
  }

  a1[8] = *v7;
LABEL_22:
  v14 = a2;
  v15 = &v14;
  v13 = std::__tree<std::__value_type<unsigned int,std::any>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::any>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::any>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((a1 + 20), &v14);
  std::any::operator=[abi:ne200100](v13 + 5, a3);
  return 0;
}

unint64_t *std::any::operator=[abi:ne200100](unint64_t *a1, void (**a2)(uint64_t))
{
  v5[8] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v5[1] = 0;
  if (*a2)
  {
    (*a2)(1);
  }

  if (v5 != a1 && *a1 != 0)
  {
    (*a1)(2, a1, v5, 0, 0);
  }

  std::any::reset[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_241594B20(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::vector<APCConfigReader::paramData>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<APCConfigReader::paramData>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

void non-virtual thunk toEchoCodeDecoder::~EchoCodeDecoder(EchoCodeDecoder *this)
{
  EchoCodeDecoder::~EchoCodeDecoder((this - 8));
}

{
  EchoCodeDecoder::~EchoCodeDecoder((this - 8));

  JUMPOUT(0x245CEA790);
}

void std::vector<float>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
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
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::vector<float>::__append(uint64_t a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v7) >> 2)
  {
    if (a2)
    {
      v13 = 0;
      a4.i32[0] = *a3;
      v14 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v15 = vdupq_n_s64(v14);
      v16 = v7 + 4 * a2;
      v17 = v14 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v18 = (v7 + 8);
      do
      {
        v19 = vdupq_n_s64(v13);
        v20 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_2415AC930)));
        if (vuzp1_s16(v20, a4).u8[0])
        {
          *(v18 - 2) = a4.i32[0];
        }

        if (vuzp1_s16(v20, a4).i8[2])
        {
          *(v18 - 1) = a4.i32[0];
        }

        if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_2415AC920)))).i32[1])
        {
          *v18 = a4.i32[0];
          v18[1] = a4.i32[0];
        }

        v13 += 4;
        v18 += 4;
      }

      while (v17 != v13);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v8 = v7 - *a1;
    v9 = a2 + (v8 >> 2);
    if (v9 >> 62)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v8 >> 2;
    v11 = v6 - *a1;
    if (v11 >> 1 > v9)
    {
      v9 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v21 = 0;
    v22 = 4 * v10;
    a4.i32[0] = *a3;
    v23 = 4 * v10 + 4 * a2;
    v24 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v25 = vdupq_n_s64(v24);
    v26 = v24 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v27 = (4 * v10 + 8);
    do
    {
      v28 = vdupq_n_s64(v21);
      v29 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_2415AC930)));
      if (vuzp1_s16(v29, a4).u8[0])
      {
        *(v27 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v29, a4).i8[2])
      {
        *(v27 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_2415AC920)))).i32[1])
      {
        *v27 = a4.i32[0];
        v27[1] = a4.i32[0];
      }

      v21 += 4;
      v27 += 4;
    }

    while (v26 != v21);
    v30 = *(a1 + 8) - *a1;
    v31 = v22 - v30;
    memcpy((v22 - v30), *a1, v30);
    v32 = *a1;
    *a1 = v31;
    *(a1 + 8) = v23;
    *(a1 + 16) = 0;
    if (v32)
    {

      operator delete(v32);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<APCConfigReader::paramData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::unique_ptr<ShapingFilter>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::unique_ptr<vDSP_biquad_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_biquad_SetupStruct*,&(vDSP_biquad_DestroySetup)>>::reset[abi:ne200100]((v2 + 32), 0);
    v3 = (v2 + 8);
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
    return MEMORY[0x245CEA790](v2, 0x1020C409A1C8018);
  }

  return result;
}

uint64_t *std::unique_ptr<EchoDetector>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 72);
    if (v3)
    {
      *(v2 + 80) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 48);
    if (v4)
    {
      *(v2 + 56) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 24);
    if (v5)
    {
      *(v2 + 32) = v5;
      operator delete(v5);
    }

    std::unique_ptr<OpaqueFFTSetup,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueFFTSetup*,&(vDSP_destroy_fftsetup)>>::reset[abi:ne200100]((v2 + 8), 0);

    JUMPOUT(0x245CEA790);
  }

  return result;
}

void SyncEchoDetector::SyncEchoDetector(SyncEchoDetector *this)
{
  *(this + 8) = 0;
  *(this + 3) = 0u;
  *this = &unk_28533DD28;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 54) = 0;
  *(this + 12) = 0u;
  *(this + 28) = 0u;
  *(this + 22) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 172) = 0u;
  EchoDetector::EchoDetector((this + 224));
  *(this + 80) = 0;
  *(this + 324) = 1;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
}

void sub_2415952A8(_Unwind_Exception *exception_object)
{
  v4 = v2;
  v6 = *v4;
  if (*v4)
  {
    v1[25] = v6;
    operator delete(v6);
  }

  v7 = v1[18];
  if (v7)
  {
    v1[19] = v7;
    operator delete(v7);
  }

  v8 = v1[15];
  if (v8)
  {
    v1[16] = v8;
    operator delete(v8);
  }

  v9 = v1[12];
  if (v9)
  {
    v1[13] = v9;
    operator delete(v9);
  }

  v10 = v1[9];
  if (v10)
  {
    v1[10] = v10;
    operator delete(v10);
  }

  v11 = *v3;
  if (*v3)
  {
    v1[7] = v11;
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (**std::any_cast[abi:ne200100]<float>(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, MEMORY[0x277D827B0], &std::__any_imp::__unique_typeinfo<float>::__id);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, MEMORY[0x277D827B0], &std::__any_imp::__unique_typeinfo<float>::__id);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *APCNullEncoder::Process(APCNullEncoder *this, const float *a2, float *__dst, int a4)
{
  if (a4)
  {
    return memmove(__dst, a2, 4 * a4);
  }

  return result;
}

void APCNullDecoder::APCNullDecoder(APCNullDecoder *this, NullCodecConfiguration *a2)
{
  v3 = a2;
  *this = &unk_28533D880;
  v4 = [(AUPasscodeCodecConfiguration *)v3 sampleRate];
  [(NullCodecConfiguration *)v3 retrievalCallbackInterval];
  *(this + 3) = (v5 * v4);
  v6 = [(AUPasscodeCodecConfiguration *)v3 payloadLengthBytes];
  *(this + 4) = v6;
  std::vector<unsigned char>::vector[abi:ne200100](this + 3, v6);
}

const void **APCNullDecoder::Process(const void **this, const float *a2, int a3, char *__dst, int *a5)
{
  v6 = *(this + 3);
  v7 = *(this + 2) + a3;
  *(this + 2) = v7;
  if (v7 >= v6)
  {
    v9 = this;
    if (__dst)
    {
      if (a5)
      {
        v10 = *(this + 4);
        if (*a5 >= v10)
        {
          this = memcpy(__dst, this[3], v10);
          v11 = *(v9 + 4);
          *a5 = v11;
          *&__dst[v11] = 0;
        }
      }
    }

    *(v9 + 2) = 0;
  }

  else if (a5)
  {
    *a5 = 0;
  }

  return this;
}

void APCNullDecoder::~APCNullDecoder(APCNullDecoder *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x245CEA790);
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_241595634(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void sub_241595EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose(&a23, 8);
  _Block_object_dispose((v29 - 144), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24159662C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_241596798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

id APCLogObject(void)
{
  if ((atomic_load_explicit(&qword_27E548BB0, memory_order_acquire) & 1) == 0)
  {
    APCLogObject();
  }

  v1 = _MergedGlobals;

  return v1;
}

void EchoCodeEncoder::EchoCodeEncoder(EchoCodeEncoder *this)
{
  *this = &unk_28533D908;
  *(this + 1) = &unk_28533D978;
  *(this + 52) = 0;
  *(this + 60) = 0x6400000000;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 24) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 20) = 0;
  *(this + 19) = this + 160;
  *(this + 21) = 0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  operator new();
}

void sub_2415984E8(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<unsigned int,std::any>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::any>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::any>>>::destroy(v3, *(v1 + 160));
  v6 = *(v1 + 128);
  if (v6)
  {
    *(v1 + 136) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 104);
  if (v7)
  {
    *(v1 + 112) = v7;
    operator delete(v7);
  }

  v8 = *(v1 + 96);
  *(v1 + 96) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  std::unique_ptr<ShapingFilter>::reset[abi:ne200100](v2, 0);
  std::unique_ptr<ShapingFilter>::reset[abi:ne200100]((v1 + 80), 0);
  v9 = *v4;
  *v4 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t EchoCodeEncoder::initialize(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  result = EchoCodeEncoder::loadAPCConfig(a1, a2);
  if (!result)
  {
    v4 = *(a1 + 20);
    if (!v4)
    {
      v4 = 2048;
      *(a1 + 20) = 2048;
    }

    if (!*(a1 + 28))
    {
      *(a1 + 28) = 2;
    }

    if (*(a1 + 36) == 0.0)
    {
      *(a1 + 36) = 1056964608;
    }

    if (*(a1 + 52) == 0.0)
    {
      *(a1 + 52) = 1008981770;
    }

    if (*(a1 + 60) == 0.0)
    {
      *(a1 + 60) = 1183621120;
    }

    if ((*(a1 + 49) & 1) == 0)
    {
      *(a1 + 48) = 257;
    }

    if (!*(a1 + 64))
    {
      *(a1 + 64) = 100;
    }

    v5 = APCLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = (*(a1 + 64) / 100.0);
      *v13 = 134217984;
      *&v13[4] = v6;
      _os_log_impl(&dword_24158E000, v5, OS_LOG_TYPE_INFO, "APC encoder algorithm version: %3.2f", v13, 0xCu);
    }

    SyncType = echoCodec::getSyncType(*(a1 + 64));
    if (SyncType)
    {
      operator new();
    }

    if (!SyncType)
    {
      operator new();
    }

    v8 = *(a1 + 72);
    *(a1 + 72) = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = *(a1 + 96);
    *(a1 + 96) = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    *(a1 + 20) = echoCodec::getSRCFreeFrameSize(*(a1 + 20), *(a1 + 16));
    *(a1 + 32) = *(a1 + 28) * *(a1 + 20) - echoCodec::getSRCFreeFrameSize((v4 >> 2), *(a1 + 16));
    ShapingFilter::initialize(*(a1 + 80), 0, *(a1 + 16), 1u, 1, *(a1 + 60));
    ShapingFilter::initialize(*(a1 + 88), 1, *(a1 + 16), 1u, 1, *(a1 + 60));
    (*(**(a1 + 72) + 16))(*(a1 + 72), *(a1 + 16), *(a1 + 32), a1 + 152);
    v10 = *(a1 + 56);
    if (!v10)
    {
      v10 = (*(a1 + 36) * *(a1 + 16));
    }

    *(a1 + 24) = v10;
    (*(**(a1 + 96) + 32))(*(a1 + 96), a1 + 152);
    if (*(a1 + 49) == 1)
    {
      v11 = *(a1 + 48);
    }

    else
    {
      v11 = 0;
    }

    if ((*(**(a1 + 96) + 16))(*(a1 + 96), *(a1 + 16), *(a1 + 20), *(a1 + 24), v11 & 1))
    {
      std::vector<float>::resize((a1 + 104), *(a1 + 20));
      std::vector<float>::resize((a1 + 128), *(a1 + 20));
      result = 0;
    }

    else
    {
      result = 4294967290;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t EchoCodeEncoder::loadAPCConfig(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  __p = 0;
  v8 = 0;
  v9 = 0;
  LODWORD(v5) = 0;
  *(&v5 + 1) = a1 + 16;
  v6 = 1;
  std::vector<APCConfigReader::paramData>::push_back[abi:ne200100](&__p, &v5);
  LODWORD(v5) = 3;
  *(&v5 + 1) = a1 + 40;
  v6 = 1;
  std::vector<APCConfigReader::paramData>::push_back[abi:ne200100](&__p, &v5);
  LODWORD(v5) = 108;
  *(&v5 + 1) = a1 + 56;
  v6 = 1;
  std::vector<APCConfigReader::paramData>::push_back[abi:ne200100](&__p, &v5);
  LODWORD(v5) = 103;
  *(&v5 + 1) = a1 + 52;
  v6 = 0;
  std::vector<APCConfigReader::paramData>::push_back[abi:ne200100](&__p, &v5);
  LODWORD(v5) = 111;
  *(&v5 + 1) = a1 + 60;
  v6 = 0;
  std::vector<APCConfigReader::paramData>::push_back[abi:ne200100](&__p, &v5);
  LODWORD(v5) = 112;
  *(&v5 + 1) = a1 + 48;
  v6 = 5;
  std::vector<APCConfigReader::paramData>::push_back[abi:ne200100](&__p, &v5);
  LODWORD(v5) = 113;
  *(&v5 + 1) = a1 + 64;
  v6 = 1;
  std::vector<APCConfigReader::paramData>::push_back[abi:ne200100](&__p, &v5);
  v3 = APCConfigReader::loadParams(&v10, &__p);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  return v3;
}

void sub_241598C98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<SyncSeqEmbedder>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 128);
    if (v3)
    {
      *(v2 + 136) = v3;
      operator delete(v3);
    }

    std::unique_ptr<vDSP_biquad_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_biquad_SetupStruct*,&(vDSP_biquad_DestroySetup)>>::reset[abi:ne200100]((v2 + 120), 0);
    v6 = (v2 + 96);
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
    v4 = *(v2 + 64);
    if (v4)
    {
      *(v2 + 72) = v4;
      operator delete(v4);
    }

    MEMORY[0x245CEA790](v2, 0x10A1C40488B4B6ALL);
  }

  return a1;
}

EchoEmbedder **std::unique_ptr<SyncedEchoEmbedder>::~unique_ptr[abi:ne200100](EchoEmbedder **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    EchoEmbedder::~EchoEmbedder(v2);
    MEMORY[0x245CEA790]();
  }

  return a1;
}

uint64_t EchoCodeEncoder::encode(EchoCodeEncoder *this, const float *a2, float *a3, vDSP_Length a4)
{
  v20[4] = *MEMORY[0x277D85DE8];
  ShapingFilter::filter(*(this + 10), a2, a3, a4);
  vDSP_vclr(*(this + 13), 1, (*(this + 14) - *(this + 13)) >> 2);
  v7 = *(this + 12);
  v20[0] = &unk_28533DA18;
  v20[1] = this;
  v20[3] = v20;
  v8 = (*(*v7 + 40))(v7, this + 104, a4, v20);
  std::__function::__value_func<void ()(float *,unsigned int)>::~__value_func[abi:ne200100](v20);
  v9 = v8 & ~(v8 >> 31);
  v10 = a4 - v9;
  if ((a4 - v9) < 1)
  {
    v15 = 1;
LABEL_11:
    v17 = *(this + 13);
    v16 = (this + 104);
    ShapingFilter::filter(*(v16 - 2), v17, v17, a4);
    MEMORY[0x245CEAD70](*v16, 1, a3, 1, a3, 1, a4);
  }

  else
  {
    v11 = (*(this + 13) + 4 * v9);
    while (1)
    {
      v12 = *(this + 5);
      v13 = v10 >= v12 ? v12 : v10;
      if (!EchoEmbedder::encodeEcho(*(this + 9), v11, v13))
      {
        break;
      }

      v11 += v13;
      v14 = __OFSUB__(v10, v13);
      v10 -= v13;
      if ((v10 < 0) ^ v14 | (v10 == 0))
      {
        v15 = *(*(this + 9) + 120) < *(*(this + 9) + 168);
        goto LABEL_11;
      }
    }

    v15 = 4294967290;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_241598F40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(float *,unsigned int)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

EchoCodeEncoder *EchoCodeEncoder::Process(EchoCodeEncoder *this, const float *a2, float *a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = a4;
    v7 = this;
    do
    {
      v8 = *(v7 + 5);
      if (v8 >= v4)
      {
        v9 = v4;
      }

      else
      {
        v9 = v8;
      }

      this = EchoCodeEncoder::encode(v7, a2, a3, v9);
      a2 += v9;
      a3 += v9;
      v4 -= v9;
    }

    while (v4 >= 1 && this < 2);
  }

  return this;
}

float EchoCodeEncoder::evaluateCarrier(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v24 = 0;
  v25 = a4;
  v22 = 0;
  v23 = 0;
  *(&v32 + 1) = &v30 + 4;
  LODWORD(v32) = 0;
  v33 = 1;
  std::vector<APCConfigReader::paramData>::push_back[abi:ne200100](&v22, &v32);
  *(&v32 + 1) = &v30;
  LODWORD(v32) = 3;
  v33 = 1;
  std::vector<APCConfigReader::paramData>::push_back[abi:ne200100](&v22, &v32);
  *(&v32 + 1) = &v29 + 4;
  LODWORD(v32) = 100;
  v33 = 1;
  std::vector<APCConfigReader::paramData>::push_back[abi:ne200100](&v22, &v32);
  *(&v32 + 1) = &v29;
  LODWORD(v32) = 101;
  v33 = 1;
  std::vector<APCConfigReader::paramData>::push_back[abi:ne200100](&v22, &v32);
  *(&v32 + 1) = &v28 + 4;
  LODWORD(v32) = 102;
  v33 = 0;
  std::vector<APCConfigReader::paramData>::push_back[abi:ne200100](&v22, &v32);
  *(&v32 + 1) = &v28;
  LODWORD(v32) = 103;
  v33 = 0;
  std::vector<APCConfigReader::paramData>::push_back[abi:ne200100](&v22, &v32);
  *(&v32 + 1) = &v27 + 4;
  LODWORD(v32) = 111;
  v33 = 0;
  std::vector<APCConfigReader::paramData>::push_back[abi:ne200100](&v22, &v32);
  *(&v32 + 1) = &v26;
  LODWORD(v32) = 112;
  v33 = 5;
  std::vector<APCConfigReader::paramData>::push_back[abi:ne200100](&v22, &v32);
  *(&v32 + 1) = &v27;
  LODWORD(v32) = 113;
  v33 = 1;
  std::vector<APCConfigReader::paramData>::push_back[abi:ne200100](&v22, &v32);
  v5 = 0.0;
  if (!APCConfigReader::loadParams(&v25, &v22))
  {
    v6 = HIDWORD(v29);
    if (!HIDWORD(v29))
    {
      v6 = 2048;
      HIDWORD(v29) = 2048;
    }

    if (!v29)
    {
      LODWORD(v29) = 2;
    }

    if (*(&v28 + 1) == 0.0)
    {
      HIDWORD(v28) = 1065353216;
    }

    if (*&v28 == 0.0)
    {
      LODWORD(v28) = 1008981770;
    }

    if (*(&v27 + 1) == 0.0)
    {
      HIDWORD(v27) = 1183621120;
    }

    if ((v26 & 0x100) == 0)
    {
      v26 = 257;
    }

    if (!v27)
    {
      LODWORD(v27) = 100;
    }

    HIDWORD(v29) = echoCodec::getSRCFreeFrameSize(v6, HIDWORD(v30));
    echoCodec::getSRCFreeFrameSize((v6 >> 2), HIDWORD(v30));
    if (3 * HIDWORD(v30) <= a3)
    {
      std::vector<float>::vector[abi:ne200100](&__Y, (2 * HIDWORD(v29)));
      std::vector<float>::vector[abi:ne200100](v19, HIDWORD(v29));
      std::vector<float>::vector[abi:ne200100](__C, HIDWORD(v29));
      std::vector<float>::vector[abi:ne200100](__p, (HIDWORD(v29) + HIDWORD(v29) * v29));
      vDSP_vclr(__Y, 1, v21 - __Y);
      v16 = 0;
      SyncType = echoCodec::getSyncType(v27);
      if (!SyncType)
      {
        operator new();
      }

      if (SyncType)
      {
        operator new();
      }

      LODWORD(v15) = 108;
      *&v32 = &v15;
      v8 = std::__tree<std::__value_type<unsigned int,std::any>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::any>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::any>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(a4, &v15);
      v9 = (v8 + 5);
      v31[0] = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
      v31[1] = 24000;
      if (v31 != (v8 + 5))
      {
        v10 = *v9;
        if (*v9)
        {
          v32 = 0uLL;
          v10(2, v9, &v32, 0, 0);
          v31[0](2, v31, v9, 0, 0);
          (v32)(2, &v32, v31, 0, 0);
          std::any::reset[abi:ne200100](&v32);
        }

        else
        {
          *(v8 + 12) = 24000;
          v8[5] = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
          v31[0] = 0;
        }
      }

      std::any::reset[abi:ne200100](v31);
      v5 = 1.0;
      v11 = v16;
      v16 = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (__C[0])
      {
        __C[1] = __C[0];
        operator delete(__C[0]);
      }

      if (v19[0])
      {
        v19[1] = v19[0];
        operator delete(v19[0]);
      }

      if (__Y)
      {
        v21 = __Y;
        operator delete(__Y);
      }
    }
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_24159A008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, void *a33)
{
  std::unique_ptr<ShapingFilter>::reset[abi:ne200100](&a17, 0);
  std::unique_ptr<ShapingFilter>::reset[abi:ne200100](&a18, 0);
  v36 = a19;
  a19 = 0;
  if (v36)
  {
    (*(*v36 + 8))(v36);
    if (!v34)
    {
LABEL_3:
      if (!v33)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v34)
  {
    goto LABEL_3;
  }

  (*(*v34 + 8))(v34);
  if (!v33)
  {
LABEL_5:
    if (__p)
    {
      a21 = __p;
      operator delete(__p);
    }

    if (a23)
    {
      a24 = a23;
      operator delete(a23);
    }

    if (a26)
    {
      a27 = a26;
      operator delete(a26);
    }

    if (a29)
    {
      a30 = a29;
      operator delete(a29);
    }

    if (a32)
    {
      a33 = a32;
      operator delete(a32);
    }

    _Unwind_Resume(a1);
  }

LABEL_4:
  (*(*v33 + 8))(v33);
  goto LABEL_5;
}

uint64_t EchoCodeEncoder::reset(EchoCodeEncoder *this)
{
  if (!*(this + 4))
  {
    return 0xFFFFFFFFLL;
  }

  (*(**(this + 12) + 24))(*(this + 12));
  EchoEmbedder::reset(*(this + 9));
  return 0;
}

uint64_t EchoCodeEncoder::Status(EchoCodeEncoder *this)
{
  v1 = *(this + 9);
  if (v1)
  {
    return *(v1 + 120) < *(v1 + 168);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t EchoCodeEncoder::setPasscode(EchoCodeEncoder *this, const unsigned __int8 *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(this + 10) == a3)
  {
    if (a3)
    {
      v6 = a3;
      v7 = a2;
      do
      {
        v8 = APCLogObject();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = *v7;
          *buf = 67109120;
          v13 = v9;
          _os_log_impl(&dword_24158E000, v8, OS_LOG_TYPE_INFO, "APC encoder just received 1 byte of passcode: 0x%02X", buf, 8u);
        }

        ++v7;
        --v6;
      }

      while (v6);
    }

    (*(**(this + 9) + 24))(*(this + 9), a2, a3);
    result = 0;
  }

  else
  {
    result = 4294967290;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t EchoCodeEncoder::setParams(uint64_t a1, int a2, void (**a3)(uint64_t))
{
  if (*(a1 + 16))
  {
    return 4294967287;
  }

  result = 4294967290;
  if (a2 > 109)
  {
    if (a2 <= 111)
    {
      if (a2 == 110)
      {
        v13 = std::any_cast[abi:ne200100]<unsigned int>(a3);
        if (!v13)
        {
          goto LABEL_37;
        }

        if (*v13)
        {
          v14 = std::any_cast[abi:ne200100]<unsigned int>(a3);
          if (v14)
          {
            *(a1 + 44) = *v14;
            goto LABEL_35;
          }

          goto LABEL_37;
        }
      }

      else
      {
        v8 = std::any_cast[abi:ne200100]<float>(a3);
        if (!v8)
        {
          goto LABEL_37;
        }

        if (*v8 >= 16000.0)
        {
          v9 = std::any_cast[abi:ne200100]<float>(a3);
          if (!v9)
          {
            goto LABEL_37;
          }

          if (*v9 <= 20000.0)
          {
            *(a1 + 60) = std::any_cast[abi:ne200100]<float>(a3);
            goto LABEL_35;
          }
        }
      }

      return 4294967290;
    }

    if (a2 == 112)
    {
      v16 = std::any_cast[abi:ne200100]<BOOL>(a3);
      if (v16)
      {
        *(a1 + 48) = *v16 | 0x100;
        goto LABEL_35;
      }
    }

    else
    {
      if (a2 != 113)
      {
        return result;
      }

      v11 = std::any_cast[abi:ne200100]<unsigned int>(a3);
      if (v11)
      {
        *(a1 + 64) = *v11;
        goto LABEL_35;
      }
    }

LABEL_37:
    std::__throw_bad_any_cast[abi:ne200100]();
  }

  if (a2 > 102)
  {
    if (a2 == 103)
    {
      v15 = std::any_cast[abi:ne200100]<float>(a3);
      if (v15)
      {
        *(a1 + 52) = *v15;
        goto LABEL_35;
      }
    }

    else
    {
      if (a2 != 104)
      {
        return result;
      }

      v10 = std::any_cast[abi:ne200100]<float>(a3);
      if (v10)
      {
        *(a1 + 36) = *v10;
        goto LABEL_35;
      }
    }

    goto LABEL_37;
  }

  if (a2 == 100)
  {
    v12 = std::any_cast[abi:ne200100]<unsigned int>(a3);
    if (v12)
    {
      *(a1 + 20) = *v12;
      goto LABEL_35;
    }

    goto LABEL_37;
  }

  if (a2 != 101)
  {
    return result;
  }

  v7 = std::any_cast[abi:ne200100]<unsigned int>(a3);
  if (!v7)
  {
    goto LABEL_37;
  }

  *(a1 + 28) = *v7;
LABEL_35:
  v18 = a2;
  v19 = &v18;
  v17 = std::__tree<std::__value_type<unsigned int,std::any>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::any>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::any>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(a1 + 152, &v18);
  std::any::operator=[abi:ne200100](v17 + 5, a3);
  return 0;
}

float std::any_cast[abi:ne200100]<float>(uint64_t (**a1)(uint64_t, void, void, void, void *))
{
  v1 = std::any_cast[abi:ne200100]<float>(a1);
  if (!v1)
  {
    std::__throw_bad_any_cast[abi:ne200100]();
  }

  return *v1;
}

void EchoCodeEncoder::~EchoCodeEncoder(EchoCodeEncoder *this)
{
  std::__tree<std::__value_type<unsigned int,std::any>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::any>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::any>>>::destroy(this + 152, *(this + 20));
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<ShapingFilter>::reset[abi:ne200100](this + 11, 0);
  std::unique_ptr<ShapingFilter>::reset[abi:ne200100](this + 10, 0);
  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  std::__tree<std::__value_type<unsigned int,std::any>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::any>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::any>>>::destroy(this + 152, *(this + 20));
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<ShapingFilter>::reset[abi:ne200100](this + 11, 0);
  std::unique_ptr<ShapingFilter>::reset[abi:ne200100](this + 10, 0);
  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  JUMPOUT(0x245CEA790);
}

void non-virtual thunk toEchoCodeEncoder::~EchoCodeEncoder(EchoCodeEncoder *this)
{
  std::__tree<std::__value_type<unsigned int,std::any>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::any>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::any>>>::destroy(this + 144, *(this + 19));
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<ShapingFilter>::reset[abi:ne200100](this + 10, 0);
  std::unique_ptr<ShapingFilter>::reset[abi:ne200100](this + 9, 0);
  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    v6 = *(*v5 + 8);

    v6();
  }
}

{
  EchoCodeEncoder::~EchoCodeEncoder((this - 8));
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_24159A978(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void EchoEmbedder::EchoEmbedder(EchoEmbedder *this)
{
  *(this + 40) = 0u;
  *this = &unk_28533DBB8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 16) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  *(this + 14) = Random::instance(this);
  *(this + 30) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
}

void sub_24159AA54(_Unwind_Exception *a1)
{
  v4 = *(v1 + 88);
  if (v4)
  {
    *(v1 + 96) = v4;
    operator delete(v4);
  }

  EchoEmbedder::EchoEmbedder((v1 + 64), v2, v1);
  _Unwind_Resume(a1);
}

void EchoEmbedder::~EchoEmbedder(EchoEmbedder *this)
{
  *this = &unk_28533DBB8;
  std::deque<unsigned char>::~deque[abi:ne200100](this + 16);
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    *(this + 6) = v4;
    operator delete(v4);
  }
}

{
  EchoEmbedder::~EchoEmbedder(this);

  JUMPOUT(0x245CEA790);
}

uint64_t std::deque<unsigned char>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 2048;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 4096;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<unsigned char *>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<unsigned char *>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__function::__func<EchoCodeEncoder::encode(float const*,float *,unsigned int)::$_0,std::allocator<EchoCodeEncoder::encode(float const*,float *,unsigned int)::$_0>,void ()(float *,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28533DA18;
  a2[1] = v2;
  return result;
}

void std::__function::__func<EchoCodeEncoder::encode(float const*,float *,unsigned int)::$_0,std::allocator<EchoCodeEncoder::encode(float const*,float *,unsigned int)::$_0>,void ()(float *,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  Random::getSamples(*(*(v4 + 72) + 112), *(v4 + 128), *a3);
  v5 = *(v4 + 128);

  JUMPOUT(0x245CEAD90);
}

uint64_t std::__function::__func<EchoCodeEncoder::encode(float const*,float *,unsigned int)::$_0,std::allocator<EchoCodeEncoder::encode(float const*,float *,unsigned int)::$_0>,void ()(float *,unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(float *,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<EchoCodeEncoder::evaluateCarrier(float const*,unsigned int,std::map<unsigned int,std::any> &)::$_0,std::allocator<EchoCodeEncoder::evaluateCarrier(float const*,unsigned int,std::map<unsigned int,std::any> &)::$_0>,void ()(float *,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28533DAA8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<EchoCodeEncoder::evaluateCarrier(float const*,unsigned int,std::map<unsigned int,std::any> &)::$_0,std::allocator<EchoCodeEncoder::evaluateCarrier(float const*,unsigned int,std::map<unsigned int,std::any> &)::$_0>,void ()(float *,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v4 = *a2;
  Random::getSamples(*(**(a1 + 8) + 112), **(a1 + 16), *a3);
  v5 = *(a1 + 24);
  v6 = **(a1 + 16);

  JUMPOUT(0x245CEAD90);
}

uint64_t std::__function::__func<EchoCodeEncoder::evaluateCarrier(float const*,unsigned int,std::map<unsigned int,std::any> &)::$_0,std::allocator<EchoCodeEncoder::evaluateCarrier(float const*,unsigned int,std::map<unsigned int,std::any> &)::$_0>,void ()(float *,unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t (**std::any_cast[abi:ne200100]<BOOL>(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, MEMORY[0x277D82798], &std::__any_imp::__unique_typeinfo<BOOL>::__id);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, MEMORY[0x277D82798], &std::__any_imp::__unique_typeinfo<BOOL>::__id);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void mlsCodec::getSequence(std::vector<unsigned int> *a1, unsigned int a2, float a3)
{
  v16 = 0;
  SimpleMLS<20u>::Reset(&v16);
  std::vector<float>::resize(a1, a2 & 0xFFFFFFF0);
  if (a2 >= 0x10)
  {
    v6 = 0;
    v7 = 0;
    v8 = a2 >> 4;
    v9 = v16;
    do
    {
      v10 = v9;
      v11 = v9 ^ (v9 >> 3) & 1;
      std::bitset<20ul>::operator>>=[abi:ne200100](&v16, 1uLL);
      v12 = 0;
      if (v11)
      {
        v13 = 0x80000;
      }

      else
      {
        v13 = 0;
      }

      v9 = v13 | v16 & 0xFFFFFFFFFFF7FFFFLL;
      v16 = v9;
      if (v10)
      {
        v14 = a3;
      }

      else
      {
        v14 = -a3;
      }

      v15 = &a1->__begin_[v6];
      do
      {
        *&v15[v12 / 4] = vmulq_n_f32(mlsCodec::kGaussianPulse[v12 / 0x10], v14);
        v12 += 16;
      }

      while (v12 != 64);
      ++v7;
      v6 += 16;
    }

    while (v7 != v8);
  }
}

void *SimpleMLS<20u>::Reset(uint64_t a1)
{
  v2 = a1;
  v3 = 0;
  return std::__fill_n_BOOL[abi:ne200100]<true,std::__bitset<1ul,20ul>>(&v2, 0x14uLL);
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::__bitset<1ul,20ul>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,20ul>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t std::bitset<20ul>::operator>>=[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x14)
  {
    v3 = 20;
  }

  else
  {
    v3 = a2;
  }

  v10 = a1;
  v11 = v3;
  v8 = a1;
  v9 = 20;
  v6 = a1;
  if (a2)
  {
    v7 = 0;
    std::__copy_unaligned[abi:ne200100]<std::__bitset<1ul,20ul>,false>(&v10, &v8, &v6, v5);
    v10 = a1;
    v11 = 20 - v3;
    std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,20ul>>(&v10, v3);
  }

  else
  {
    v7 = v3;
    std::__copy_aligned[abi:ne200100]<std::__bitset<1ul,20ul>,false>(&v10, &v8, &v6, v5);
  }

  return a1;
}

void *std::__copy_aligned[abi:ne200100]<std::__bitset<1ul,20ul>,false>@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = *result;
  v9 = *(a2 + 2) + 8 * (v7 - *result);
  v10 = *(result + 2);
  v11 = v9 - v10;
  if (v9 - v10 <= 0)
  {
    v19 = *a3;
  }

  else
  {
    v12 = result;
    if (v10)
    {
      if (v11 >= (64 - v10))
      {
        v13 = (64 - v10);
      }

      else
      {
        v13 = v9 - v10;
      }

      v11 -= v13;
      v14 = *a3;
      *v14 = **a3 & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v10 - v13)) & (-1 << v10)) | *v8 & (0xFFFFFFFFFFFFFFFFLL >> (64 - v10 - v13)) & (-1 << v10);
      v15 = v13 + *(a3 + 8);
      *a3 = v14 + ((v15 >> 3) & 0x3FFFFFF8);
      *(a3 + 8) = v15 & 0x3F;
      v8 = (*result + 8);
      *result = v8;
    }

    if (v11 >= 0)
    {
      v16 = v11;
    }

    else
    {
      v16 = v11 + 63;
    }

    v17 = v16 >> 6;
    if ((v11 + 63) >= 0x7F)
    {
      result = memmove(*a3, v8, 8 * v17);
    }

    v18 = v11 - (v17 << 6);
    v19 = (*a3 + 8 * v17);
    *a3 = v19;
    if (v18 >= 1)
    {
      v20 = (*v12 + 8 * v17);
      *v12 = v20;
      v21 = 0xFFFFFFFFFFFFFFFFLL >> ((v17 << 6) - v11);
      v22 = *v20 & v21;
      v19 = *a3;
      **a3 = **a3 & ~v21 | v22;
      *(a3 + 8) = v18;
    }
  }

  *a4 = v19;
  *(a4 + 8) = *(a3 + 8);
  return result;
}

unsigned int *std::__copy_unaligned[abi:ne200100]<std::__bitset<1ul,20ul>,false>@<X0>(unsigned int *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = result[2];
  v6 = *(a2 + 8) + 8 * (*a2 - *result) - v5;
  if (v6 <= 0)
  {
    v20 = *a3;
    v18 = *(a3 + 8);
  }

  else
  {
    if (v5)
    {
      if (v6 >= (64 - v5))
      {
        v7 = (64 - v5);
      }

      else
      {
        v7 = *(a2 + 8) + 8 * (*a2 - *result) - v5;
      }

      v6 -= v7;
      v8 = (0xFFFFFFFFFFFFFFFFLL >> (64 - v5 - v7)) & (-1 << v5) & *v4;
      v9 = *(a3 + 8);
      if (v7 >= (64 - v9))
      {
        v10 = (64 - v9);
      }

      else
      {
        v10 = v7;
      }

      v11 = *a3;
      v12 = v8 >> (v5 - v9);
      v13 = v9 >= v5;
      v15 = v9 - v5;
      v14 = v15 != 0 && v13;
      v16 = v8 << v15;
      if (!v14)
      {
        v16 = v12;
      }

      *v11 = **a3 & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v9 - v10)) & (-1 << v9)) | v16;
      v17 = (v11 + (((v10 + v9) >> 3) & 0x3FFFFFF8));
      *a3 = v17;
      v18 = (v9 + v10) & 0x3F;
      *(a3 + 8) = v18;
      v19 = v7 - v10;
      if (v19 >= 1)
      {
        *v17 = (v8 >> (v10 + result[2])) | *v17 & ~(0xFFFFFFFFFFFFFFFFLL >> -v19);
        *(a3 + 8) = v19;
        v18 = v19;
      }

      v4 = (*result + 8);
      *result = v4;
    }

    else
    {
      v18 = *(a3 + 8);
    }

    v21 = 64 - v18;
    v22 = -1 << v18;
    if (v6 < 64)
    {
      v26 = v6;
    }

    else
    {
      do
      {
        v23 = *v4;
        v24 = *a3;
        *v24 = **a3 & ~v22 | (v23 << v18);
        v25 = v24[1];
        *a3 = ++v24;
        *v24 = v25 & v22 | (v23 >> v21);
        v26 = v6 - 64;
        v4 = (*result + 8);
        *result = v4;
        v14 = v6 > 0x7F;
        v6 -= 64;
      }

      while (v14);
    }

    v20 = *a3;
    if (v26 >= 1)
    {
      v27 = *v4 & (0xFFFFFFFFFFFFFFFFLL >> -v26);
      if (v26 >= v21)
      {
        v28 = 64 - v18;
      }

      else
      {
        v28 = v26;
      }

      *v20 = *v20 & ~((0xFFFFFFFFFFFFFFFFLL >> (v21 - v28)) & v22) | (v27 << v18);
      v20 = (v20 + (((v28 + v18) >> 3) & 0x3FFFFFF8));
      *a3 = v20;
      v18 = (v18 + v28) & 0x3F;
      *(a3 + 8) = v18;
      if (v26 - v28 >= 1)
      {
        *v20 = *v20 & ~(0xFFFFFFFFFFFFFFFFLL >> (v28 - v26)) | (v27 >> v28);
        *(a3 + 8) = v26 - v28;
        v18 = v26 - v28;
      }
    }
  }

  *a4 = v20;
  *(a4 + 8) = v18;
  return result;
}

void sub_24159B76C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_24159B848(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_24159C960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose(&a23, 8);
  _Block_object_dispose((v29 - 144), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t echoCodec::getFsIndex(echoCodec *this)
{
  if (this == 48000)
  {
    v1 = 1;
  }

  else
  {
    v1 = -1;
  }

  if (this == 44100)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

BOOL ShapingFilter::initialize(uint64_t a1, int a2, int a3, unsigned int a4, char a5, float a6)
{
  if (a3 == 48000)
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

  if (a3 == 44100)
  {
    v6 = 0;
  }

  if ((v6 & 0x80000000) != 0)
  {
    return 0;
  }

  v10 = 20000.0;
  if (a6 <= 20000.0)
  {
    v10 = a6;
  }

  v11 = (v10 / 1000.0) + 0.5;
  v12 = a6 < 16000.0;
  v13 = 16.5;
  if (!v12)
  {
    v13 = v11;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v14 = &ShapingFilter::mHPFCoef;
      if (a4)
      {
        goto LABEL_14;
      }
    }

    return 0;
  }

  v14 = &ShapingFilter::mLPFCoef;
  if (!a4)
  {
    return 0;
  }

LABEL_14:
  Setup = vDSP_biquad_CreateSetup(&v14[75 * v6 - 240 + 15 * v13], 3uLL);
  std::unique_ptr<vDSP_biquad_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_biquad_SetupStruct*,&(vDSP_biquad_DestroySetup)>>::reset[abi:ne200100]((a1 + 32), Setup);
  std::vector<std::vector<float>>::resize((a1 + 8), a4);
  v16 = 0;
  do
  {
    std::vector<float>::resize((*(a1 + 8) + v16), 8uLL);
    vDSP_vclr(*(*(a1 + 8) + v16), 1, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *(a1 + 8)) >> 3));
    v16 += 24;
  }

  while (24 * a4 != v16);
  *a1 = a4;
  *(a1 + 4) = a5;
  return *(a1 + 32) != 0;
}

uint64_t ShapingFilter::getCutOffFreqIndex(ShapingFilter *this, float a2)
{
  v2 = 20000.0;
  if (a2 <= 20000.0)
  {
    v2 = a2;
  }

  v3 = (v2 / 1000.0) + 0.5;
  v4 = a2 < 16000.0;
  v5 = 16.5;
  if (!v4)
  {
    v5 = v3;
  }

  return v5 - 16;
}

void std::vector<std::vector<float>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<float>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void ShapingFilter::reset(ShapingFilter *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  while (v1 != v2)
  {
    v3 = *v1;
    v4 = *(v1 + 8);
    v1 += 24;
    vDSP_vclr(v3, 1, (v4 - v3) >> 2);
  }
}

void ShapingFilter::filter(ShapingFilter *this, const float *__X, float *__Y, vDSP_Length __N)
{
  if (*(this + 4))
  {
    v4 = *this;
  }

  else
  {
    v4 = 1;
  }

  if (*this)
  {
    v8 = 0;
    v9 = 0;
    v10 = __N;
    if (*(this + 4))
    {
      v11 = 1;
    }

    else
    {
      v11 = __N;
    }

    v12 = 4 * v11;
    do
    {
      vDSP_biquad(*(this + 4), *(*(this + 1) + v8), __X, v4, __Y, v4, v10);
      ++v9;
      v8 += 24;
      __X = (__X + v12);
      __Y = (__Y + v12);
    }

    while (v9 < *this);
  }
}

uint64_t APCConfigReader::loadParams(uint64_t a1, void *a2)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v3 = -1431655765 * ((a2[1] - *a2) >> 3);
  v17[0] = 0;
  v17[1] = 0;
  if (v3)
  {
    v5 = 0;
    v6 = 24 * v3;
    do
    {
      if (APCConfigReader::getParameter(a1, *(*a2 + v5), v17))
      {
        v7 = *(*a2 + v5 + 16);
        if (v7)
        {
          if (v7 == 1)
          {
            v9 = std::any_cast[abi:ne200100]<unsigned int>(v17);
            if (!v9)
            {
              goto LABEL_27;
            }

            **(*a2 + v5 + 8) = *v9;
          }

          else if (v7 == 5)
          {
            v8 = std::any_cast[abi:ne200100]<BOOL>(v17);
            if (!v8)
            {
              std::__throw_bad_any_cast[abi:ne200100]();
            }

            **(*a2 + v5 + 8) = *v8 | 0x100;
          }
        }

        else
        {
          v10 = std::any_cast[abi:ne200100]<float>(v17);
          if (!v10)
          {
LABEL_27:
            std::__throw_bad_any_cast[abi:ne200100]();
          }

          **(*a2 + v5 + 8) = *v10;
        }
      }

      v5 += 24;
    }

    while (v6 != v5);
  }

  if (APCConfigReader::getParameter(a1, 0, v17))
  {
    v11 = std::any_cast[abi:ne200100]<unsigned int>(v17);
    if (!v11)
    {
      std::__throw_bad_any_cast[abi:ne200100]();
    }

    if (*v11 != 44100 && *v11 != 48000)
    {
      goto LABEL_25;
    }
  }

  if (!APCConfigReader::getParameter(a1, 1u, v17))
  {
    goto LABEL_24;
  }

  v13 = std::any_cast[abi:ne200100]<unsigned int>(v17);
  if (!v13)
  {
    std::__throw_bad_any_cast[abi:ne200100]();
  }

  if (!*v13)
  {
LABEL_25:
    v14 = 4294967289;
  }

  else
  {
LABEL_24:
    v14 = 0;
  }

  std::any::reset[abi:ne200100](v17);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_24159E780(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::any::reset[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t APCConfigReader::getParameter(uint64_t a1, unsigned int a2, unint64_t *a3)
{
  v3 = *(*a1 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = *a1 + 8;
  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= a2;
    v7 = v5 < a2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 == *a1 + 8 || *(v4 + 32) > a2)
  {
    return 0;
  }

  std::any::operator=[abi:ne200100](a3, (v4 + 40));
  return 1;
}

void BitCounter::initialize(BitCounter *this, int a2, int a3)
{
  *(this + 1) = a2;
  if (a3)
  {
    v5 = *(this + 3);
    v4 = (this + 24);
    v6 = (8 * a2);
    v7 = *(this + 4) - v5;
    if (v6 <= v7)
    {
      if (v6 < v7)
      {
        *(this + 4) = v5 + v6;
      }
    }

    else
    {
      std::vector<signed char>::__append(v4, v6 - v7);
    }
  }

  *(this + 4) = 0;
  *this = 0;
  *(this + 1) = 0;
}

void BitCounter::reset(BitCounter *this, int a2)
{
  *(this + 4) = 0;
  *this = 0;
  *(this + 1) = 0;
  v2 = *(this + 24);
  v3 = *(this + 4);
  v4 = *(this + 3);
  if (v4 != v3 && a2 != 0)
  {
    *(this + 12) = 0;
    if (v3 - v4 >= 1)
    {
      bzero(v4, v3 - v4);
    }
  }
}

uint64_t BitCounter::decodeBit(BitCounter *this)
{
  v1 = *(this + 2);
  v2 = *(this + 3);
  v3 = v1 - v2;
  if (v1 == v2)
  {
    return -1;
  }

  v4 = v1 <= v2 ? *(this + 3) : *(this + 2);
  if (v3 < 0)
  {
    v3 = v2 - v1;
  }

  if ((v4 / v3) >= 5.0)
  {
    return -1;
  }

  else
  {
    return v1 <= v2;
  }
}

uint64_t BitCounter::count(uint64_t this, int a2)
{
  if (a2)
  {
    ++*(this + 12);
  }

  else
  {
    ++*(this + 8);
  }

  *(this + 16) = 0;
  v2 = *(this + 24);
  v3 = *(this + 32);
  if (v2 != v3)
  {
    v4 = *(this + 48);
    if (v4 < v3 - v2)
    {
      *(this + 48) = v4 + 1;
      *(v2 + v4) = 2 * (a2 & 1) - 1;
    }
  }

  ++*this;
  return this;
}

uint64_t BitCounter::count(uint64_t this)
{
  v1 = *(this + 24);
  v2 = *(this + 32);
  if (v1 != v2)
  {
    v3 = *(this + 48);
    if (v3 < v2 - v1)
    {
      *(this + 48) = v3 + 1;
      *(v1 + v3) = 0;
    }
  }

  ++*this;
  ++*(this + 16);
  return this;
}

void PayloadQueue::set(PayloadQueue *this, const unsigned __int8 *a2, int a3)
{
  v6 = *(this + 2);
  v7 = *(this + 3);
  *(this + 6) = 0;
  v8 = (v7 - v6) >> 3;
  if (v8 >= 3)
  {
    do
    {
      operator delete(*v6);
      v9 = *(this + 3);
      v6 = (*(this + 2) + 8);
      *(this + 2) = v6;
      v8 = (v9 - v6) >> 3;
    }

    while (v8 > 2);
  }

  if (v8 == 1)
  {
    v10 = 2048;
  }

  else
  {
    if (v8 != 2)
    {
      goto LABEL_8;
    }

    v10 = 4096;
  }

  *(this + 5) = v10;
LABEL_8:
  v11 = (a3 - 1);
  if (v11 >= 0)
  {
    do
    {
      v12 = a2[v11];
      v13 = 8;
      do
      {
        v15 = v12 & 1;
        std::deque<unsigned char>::push_front((this + 8), &v15);
        v12 >>= 1;
        --v13;
      }

      while (v13);
    }

    while (v11-- > 0);
  }
}

int64x2_t std::deque<unsigned char>::push_front(int64x2_t *a1, _BYTE *a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    std::deque<unsigned char>::__add_front_capacity(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 >> 12));
  v7 = *v6 + (v4 & 0xFFF);
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4096;
  }

  *(v7 - 1) = *a2;
  result = vaddq_s64(a1[2], xmmword_2415ACC70);
  a1[2] = result;
  return result;
}

uint64_t *PayloadQueue::insertBit(PayloadQueue *this, unsigned int a2, char a3)
{
  v10 = a3;
  v4 = *(this + 2);
  v5 = (v4 + 8 * (*(this + 5) >> 12));
  if (*(this + 3) == v4)
  {
    v6 = 0;
    if (!a2)
    {
      return std::deque<unsigned char>::insert((this + 8), v5, v6, &v10);
    }
  }

  else
  {
    v6 = *v5 + (*(this + 5) & 0xFFFLL);
    if (!a2)
    {
      return std::deque<unsigned char>::insert((this + 8), v5, v6, &v10);
    }
  }

  v7 = v6 - *v5 + a2;
  if (v7 < 1)
  {
    v8 = 4095 - v7;
    v5 -= 8 * (v8 >> 12);
    v6 = *v5 + (~v8 & 0xFFF);
  }

  else
  {
    v5 += 8 * (v7 >> 12);
    v6 = *v5 + (v7 & 0xFFF);
  }

  return std::deque<unsigned char>::insert((this + 8), v5, v6, &v10);
}

uint64_t *std::deque<unsigned char>::insert(int64x2_t *a1, char *a2, uint64_t a3, char *a4)
{
  v6 = a1[2].u64[0];
  v7 = a1->i64[1];
  v8 = a1[1].i64[0];
  v9 = (v7 + 8 * (v6 >> 12));
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = *v9 + (a1[2].i64[0] & 0xFFF);
  }

  if (a3 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3 + ((a2 - v9) << 9) - (v10 + *a2) + *v9;
  }

  v12 = a1[2].i64[1];
  v13 = v12 - v11;
  if (v11 >= v12 - v11)
  {
    if (v8 == v7)
    {
      v20 = 0;
    }

    else
    {
      v20 = ((v8 - v7) << 9) - 1;
    }

    if (v20 == v12 + v6)
    {
      std::deque<unsigned char>::__add_back_capacity(a1);
      v12 = a1[2].i64[1];
      v13 = v12 - v11;
    }

    if (v12 == v11)
    {
      *(*(a1->i64[1] + (((a1[2].i64[0] + v11) >> 9) & 0x7FFFFFFFFFFFF8)) + ((a1[2].i64[0] + v11) & 0xFFF)) = *a4;
      ++a1[2].i64[1];
    }

    else
    {
      v51 = a4;
      v21 = a1[2].i64[0] + v12;
      v22 = a1->i64[1];
      v23 = (v22 + 8 * (v21 >> 12));
      v24 = *v23;
      v25 = (*v23 + (v21 & 0xFFF));
      if (a1[1].i64[0] == v22)
      {
        v25 = 0;
      }

      v49 = v23;
      v50 = v25;
      v26 = &v25[~v24];
      if (v26 < 1)
      {
        v37 = 4095 - v26;
        v27 = &v23[-8 * (v37 >> 12)];
        v28 = (*v27 + (~v37 & 0xFFF));
      }

      else
      {
        v27 = &v23[8 * (v26 >> 12)];
        v28 = (*v27 + (v26 & 0xFFF));
      }

      if (v28 == a4)
      {
        v51 = v25;
        a4 = v25;
      }

      *v25 = *v28;
      ++a1[2].i64[1];
      if (v13 >= 2)
      {
        v38 = std::__deque_iterator<unsigned char,unsigned char *,unsigned char &,unsigned char **,long,4096l>::operator-[abi:ne200100](&v49, v13);
        v23 = std::deque<unsigned char>::__move_backward_and_check(a1, v38, v39, v27, v28, v49, v50, &v51);
        v25 = v40;
        v49 = v23;
        v50 = v40;
        a4 = v51;
      }

      v41 = *a4;
      if (v25 == *v23)
      {
        v49 = v23 - 8;
        v25 = (*(v23 - 1) + 4096);
      }

      *(v25 - 1) = v41;
    }
  }

  else
  {
    if (v6)
    {
      if (v11)
      {
LABEL_10:
        v51 = a4;
        v14 = a1->i64[1];
        v15 = (v14 + 8 * (a1[2].i64[0] >> 12));
        v16 = *v15;
        if (a1[1].i64[0] == v14)
        {
          v17 = 0;
        }

        else
        {
          v17 = (*v15 + (a1[2].i64[0] & 0xFFF));
        }

        v49 = (v14 + 8 * (a1[2].i64[0] >> 12));
        v50 = v17;
        v18 = &v17[~v16];
        if (v18 < 1)
        {
          v19 = (v15[-((4095 - v18) >> 12)] + (~(4095 - v18) & 0xFFF));
        }

        else
        {
          v19 = (*(v15 + ((v18 >> 9) & 0x7FFFFFFFFFFFF8)) + (v18 & 0xFFF));
        }

        if (v17 == a4)
        {
          v51 = v19;
          a4 = v19;
        }

        *v19 = *v17;
        a1[2] = vaddq_s64(a1[2], xmmword_2415ACC70);
        if (v11 != 1)
        {
          v32 = &v17[-*v15];
          if (v32 < 0)
          {
            v42 = 4094 - v32;
            v34 = &v15[-(v42 >> 12)];
            v35 = *v34;
            v36 = ~v42 & 0xFFFLL;
          }

          else
          {
            v33 = v32 + 1;
            v34 = &v15[v33 >> 12];
            v35 = *v34;
            v36 = v33 & 0xFFF;
          }

          v43 = (v35 + v36);
          v44 = std::__deque_iterator<unsigned char,unsigned char *,unsigned char &,unsigned char **,long,4096l>::operator+[abi:ne200100](&v49, v11);
          v49 = std::deque<unsigned char>::__move_and_check(a1, v34, v43, v44, v45, v49, v50, &v51);
          v50 = v17;
          a4 = v51;
        }

        *v17 = *a4;
        goto LABEL_49;
      }
    }

    else
    {
      std::deque<unsigned char>::__add_front_capacity(a1);
      if (v11)
      {
        goto LABEL_10;
      }
    }

    v29 = a1->i64[1];
    v30 = (v29 + 8 * (a1[2].i64[0] >> 12));
    v31 = *v30 + (a1[2].i64[0] & 0xFFF);
    if (a1[1].i64[0] == v29)
    {
      v31 = 0;
    }

    if (v31 == *v30)
    {
      v31 = *(v30 - 1) + 4096;
    }

    *(v31 - 1) = *a4;
    a1[2] = vaddq_s64(a1[2], xmmword_2415ACC70);
  }

LABEL_49:
  v46 = a1->i64[1];
  if (a1[1].i64[0] == v46)
  {
    v47 = 0;
  }

  else
  {
    v47 = (*(v46 + 8 * (a1[2].i64[0] >> 12)) + (a1[2].i64[0] & 0xFFF));
  }

  v49 = (v46 + 8 * (a1[2].i64[0] >> 12));
  v50 = v47;
  return std::__deque_iterator<unsigned char,unsigned char *,unsigned char &,unsigned char **,long,4096l>::operator+[abi:ne200100](&v49, v11);
}

void Random::Random(Random *this)
{
  *this = 0x100000000;
  *(this + 1) = 0x3F80000000000000;
  *(this + 20) = 0;
  rep = std::chrono::system_clock::now().__d_.__rep_;
  if (rep >= 0)
  {
    v3 = rep;
  }

  else
  {
    v3 = -rep;
  }

  v4 = v3 - 0x7FFFFFFF;
  if (v3 < 0x7FFFFFFF)
  {
    v4 = v3;
  }

  if (v4 <= 1)
  {
    v4 = 1;
  }

  *this = v3;
  *(this + 1) = v4;
  *(this + 1) = 0x3F80000000000000;
  *(this + 20) = 0;
}

BOOL Random::setSeed(Random *this, unsigned int a2)
{
  if (a2)
  {
    v2 = a2 + ((a2 / 0x7FFFFFFF) | ((a2 / 0x7FFFFFFF) << 31));
    if (v2 <= 1)
    {
      v2 = 1;
    }

    *this = a2;
    *(this + 1) = v2;
  }

  return a2 != 0;
}

_DWORD *Random::reset(_DWORD *this)
{
  v1 = *this + ((*this / 0x7FFFFFFFu) | ((*this / 0x7FFFFFFFu) << 31));
  if (v1 <= 1)
  {
    v1 = 1;
  }

  this[1] = v1;
  return this;
}

void Random::getSamples(Random *this, float *a2, unsigned int a3)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      *a2++ = std::normal_distribution<float>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(this + 8, this + 1, this + 2);
      --v5;
    }

    while (v5);
  }
}

uint64_t Random::instance(Random *this)
{
  {
    operator new();
  }

  return Random::instance(void)::sInstance;
}

void EchoEmbedder::initialize(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  __sz = a3;
  v6 = 0;
  v36[1] = *MEMORY[0x277D85DE8];
  v36[0] = 0;
  v35[0] = 102;
  v7 = (a1 + 24);
  v35[1] = a1 + 24;
  v35[2] = 103;
  v8 = (a1 + 28);
  v35[3] = a1 + 28;
  v35[4] = 105;
  v35[5] = v36;
  v35[6] = 106;
  v35[7] = v36 + 4;
  v35[8] = 0x10000006ELL;
  v35[9] = &__sz + 4;
  v35[10] = 111;
  v9 = (a1 + 20);
  v35[11] = a1 + 20;
  v35[12] = 0x500000070;
  v10 = (a1 + 32);
  v11 = (a4 + 8);
  v35[13] = a1 + 32;
  do
  {
    v12 = *v11;
    if (*v11)
    {
      v13 = &v35[v6];
      v14 = v35[v6];
      v15 = v11;
      do
      {
        v16 = *(v12 + 32);
        v29 = v16 >= v14;
        v17 = v16 < v14;
        if (v29)
        {
          v15 = v12;
        }

        v12 = *(v12 + 8 * v17);
      }

      while (v12);
      if (v15 != v11 && v14 >= *(v15 + 8))
      {
        v18 = *(v13 + 1);
        switch(v18)
        {
          case 5:
            v21 = std::any_cast[abi:ne200100]<BOOL const>(v15 + 5);
            if (!v21)
            {
LABEL_48:
              std::__throw_bad_any_cast[abi:ne200100]();
            }

            *v13[1] = *v21 | 0x100;
            break;
          case 1:
            v20 = std::any_cast[abi:ne200100]<unsigned int const>(v15 + 5);
            if (!v20)
            {
              goto LABEL_48;
            }

            *v13[1] = *v20;
            break;
          case 0:
            v19 = std::any_cast[abi:ne200100]<float const>(v15 + 5);
            if (!v19)
            {
              goto LABEL_48;
            }

            *v13[1] = *v19;
            break;
        }
      }
    }

    v6 += 2;
  }

  while (v6 != 14);
  if (*v7 == 0.0)
  {
    *v7 = 1.0;
  }

  if (*v8 == 0.0)
  {
    *v8 = 0.01;
  }

  if (v36[0].f32[0] == 0.0)
  {
    v36[0].i32[0] = 990057071;
  }

  if (v36[0].f32[1] == 0.0)
  {
    v36[0].i32[1] = 1006834287;
  }

  if (*v9 == 0.0)
  {
    *v9 = 18000.0;
  }

  std::vector<float>::resize((a1 + 40), 2uLL);
  v22 = *(a1 + 40);
  *v22 = vcvt_u32_f32(vmul_n_f32(v36[0], a2));
  v23 = (v22 + 4);
  *(a1 + 8) = a2;
  *(a1 + 12) = __sz;
  if ((*(a1 + 33) & 1) == 0)
  {
    *v10 = 257;
  }

  v24 = *(a1 + 48);
  if (v22 != v24 && v23 != v24)
  {
    v25 = v22->i32[0];
    v26 = (v22 + 4);
    do
    {
      v28 = v26->i32[0];
      v26 = (v26 + 4);
      v27 = v28;
      v29 = v25 >= v28;
      if (v25 <= v28)
      {
        v25 = v27;
      }

      if (!v29)
      {
        v22 = v23;
      }

      v23 = v26;
    }

    while (v26 != v24);
  }

  v30 = v22->i32[0];
  std::vector<float>::resize((a1 + 64), __sz);
  std::vector<float>::resize((a1 + 88), (*(a1 + 12) + v30));
  v31 = *(a1 + 112);
  if (HIDWORD(__sz))
  {
    v32 = HIDWORD(__sz) + ((HIDWORD(__sz) / 0x7FFFFFFF) | ((HIDWORD(__sz) / 0x7FFFFFFF) << 31));
    if (v32 <= 1)
    {
      v32 = 1;
    }

    *v31 = HIDWORD(__sz);
    v31[1] = v32;
  }

  else
  {
    v32 = *v31 + ((*v31 / 0x7FFFFFFFu) | ((*v31 / 0x7FFFFFFFu) << 31));
    if (v32 <= 1)
    {
      v32 = 1;
    }
  }

  v31[1] = v32;
  v33 = *MEMORY[0x277D85DE8];
}

uint64_t EchoEmbedder::reset(uint64_t this)
{
  *(this + 16) = 0;
  v1 = *(this + 112);
  v2 = *v1 + ((*v1 / 0x7FFFFFFFu) | ((*v1 / 0x7FFFFFFFu) << 31));
  if (v2 <= 1)
  {
    v2 = 1;
  }

  v1[1] = v2;
  *(this + 120) = 0;
  return this;
}

uint64_t EchoEmbedder::encodeEcho(EchoEmbedder *this, float *__C, vDSP_Length __N)
{
  LODWORD(v3) = __N;
  if (__N >= 1 && *(this + 30) < *(this + 42))
  {
    v6 = *(this + 4);
    while (1)
    {
      if (v6)
      {
        v7 = *(this + 3);
      }

      else
      {
        v8 = *(this + 30);
        if (v8 >= *(this + 42))
        {
          v9 = 0;
        }

        else
        {
          v9 = *(*(*(this + 17) + (((*(this + 20) + v8) >> 9) & 0x7FFFFFFFFFFFF8)) + ((*(this + 20) + v8) & 0xFFF));
        }

        v10 = *(this + 5);
        if (v9 >= (*(this + 6) - v10) >> 2)
        {
          return 0;
        }

        v11 = *(this + 11);
        v12 = *(this + 3);
        v13 = *(v10 + 4 * v9);
        v14 = v13 + v12;
        if (v13 + v12)
        {
          v15 = *(this + 14);
          do
          {
            *v11++ = std::normal_distribution<float>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(v15 + 8, (v15 + 4), (v15 + 8));
            --v14;
          }

          while (v14);
          v11 = *(this + 11);
          v13 = *(*(this + 5) + 4 * v9);
          v12 = *(this + 3);
        }

        MEMORY[0x245CEAD90](v11, 1, this + 24, &v11[v13], 1, *(this + 8), 1, v12);
        v7 = *(this + 3);
        *(this + 4) = v7;
        v6 = v7;
      }

      if (v3 >= v6)
      {
        v16 = v6;
      }

      else
      {
        v16 = v3;
      }

      MEMORY[0x245CEADA0](*(this + 8) + 4 * (v7 - v6), 1, this + 28, __C, 1, v16);
      LODWORD(v3) = v3 - v16;
      __C += v16;
      v6 = *(this + 4) - v16;
      *(this + 4) = v6;
      if (v6)
      {
        if (v3 <= 0)
        {
          return 1;
        }
      }

      else
      {
        v17 = *(this + 30);
        v18 = v17 + 1;
        v19 = *(this + 42);
        if (v17 + 1 < v19)
        {
          v20 = v17 + 1;
        }

        else
        {
          v20 = *(this + 42);
        }

        *(this + 30) = v20;
        if (v18 >= v19 || v3 <= 0)
        {
          break;
        }
      }
    }
  }

  if (v3 >= 1)
  {
    if (*(this + 33) != 1 || *(this + 32) != 1)
    {
      v21 = 1;
      vDSP_vclr(__C, 1, v3);
      return v21;
    }

    v3 = v3;
    do
    {
      *__C++ = std::normal_distribution<float>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(*(this + 14) + 8, (*(this + 14) + 4), (*(this + 14) + 8)) * *(this + 7);
      --v3;
    }

    while (v3);
  }

  return 1;
}

void SyncedEchoEmbedder::initialize(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  EchoEmbedder::initialize(a1, a2, a3, a4);
  v16 = (a2 * 0.005);
  std::vector<unsigned int>::push_back[abi:ne200100]((a1 + 40), &v16);
  v15 = (a2 * 0.01);
  std::vector<unsigned int>::push_back[abi:ne200100]((a1 + 40), &v15);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = v6 + 1;
  if (v6 != v7 && v8 != v7)
  {
    v10 = *v6;
    v11 = v6 + 1;
    do
    {
      v13 = *v11++;
      v12 = v13;
      v14 = v10 >= v13;
      if (v10 <= v13)
      {
        v10 = v12;
      }

      if (!v14)
      {
        v6 = v8;
      }

      v8 = v11;
    }

    while (v11 != v7);
  }

  std::vector<float>::resize((a1 + 88), *(a1 + 12) + *v6);
}

void std::vector<unsigned int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t *SyncedEchoEmbedder::setPayload(SyncedEchoEmbedder *this, const unsigned __int8 *a2, int a3)
{
  v4 = (*(this + 12) - *(this + 10)) >> 2;
  v7[0] = v4 - 2;
  v7[1] = v4 - 1;
  PayloadQueue::set((this + 120), a2, a3);
  for (i = 0; i != 8; ++i)
  {
    result = PayloadQueue::insertBit((this + 120), i, v7[kSyncEchoBitData[i]]);
  }

  return result;
}

void EchoDetector::EchoDetector(EchoDetector *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  std::vector<float>::vector[abi:ne200100](this + 3, 2uLL);
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 3) = 0u;
}

void EchoDetector::initialize(EchoDetector *this, unsigned int a2, int a3, const float *a4)
{
  v8 = (ceil(log(a2) / 0.693147182) + 0.5);
  *this = a3;
  *(this + 4) = a2;
  std::vector<float>::resize(this + 2, 1 << (v8 + 1));
  std::vector<float>::resize(this + 3, 1 << (v8 - 1));
  v9 = *(this + 3);
  v10 = *(this + 4);
  if (v10 != v9)
  {
    memmove(v9, a4, v10 - v9);
  }

  fftsetup = vDSP_create_fftsetup(v8, 0);

  std::unique_ptr<OpaqueFFTSetup,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueFFTSetup*,&(vDSP_destroy_fftsetup)>>::reset[abi:ne200100](this + 1, fftsetup);
}

uint64_t EchoDetector::decodeEcho(EchoDetector *this, const float *a2, unsigned int a3, _BOOL4 *a4, int a5)
{
  if (*(this + 4) > a3)
  {
    return 0;
  }

  v38 = v8;
  v39 = v7;
  v40 = v5;
  v41 = v6;
  v34 = vcvt_u32_f32(vrndm_f32(vmul_n_f32(*(*(this + 3) + 4 * (2 * a5)), *this)));
  EchoDetector::autoCepstrum(this, a2, a3);
  v12 = *this;
  v13 = ((v12 * 0.5) / 1000.0);
  v14 = v34.i32[0] - v13;
  v15 = v34.i32[1] + v13;
  v16 = 0.0;
  v17 = v15 - v14;
  if (v15 > v14)
  {
    do
    {
      v16 = v16 + (*(*(this + 9) + 4 * v14) * *(*(this + 9) + 4 * v14));
      ++v14;
    }

    while (v14 < v15);
  }

  v18 = sqrtf(v16 / v17);
  v37 = 0.0;
  v36 = 0;
  v35 = 0.0;
  v19 = ((v12 * 0.125) / 1000.0);
  v20 = v34.i32[0];
  v21 = &v37;
  v22 = &v36;
  v23 = 1;
  do
  {
    v24 = v23;
    v25 = v20 - v19;
    v26 = v20 + v19;
    *v21 = 0.0;
    v27 = 0.0;
    if (v25 < v26)
    {
      v28 = (*(this + 9) + 4 * v25);
      v29 = v26 - v25;
      do
      {
        v30 = *v28++;
        v31 = v30;
        if (v30 >= v27)
        {
          v27 = v31;
        }

        --v29;
      }

      while (v29);
      *v21 = v27;
    }

    v32 = log10f(v27 / v18);
    v23 = 0;
    *v22 = v32 * 20.0;
    v21 = &v36 + 1;
    v22 = &v35;
    v20 = v34.i32[1];
  }

  while ((v24 & 1) != 0);
  if (*&v36 > 12.0)
  {
    v33 = v35 > 12.0 && v37 <= *(&v36 + 1);
    goto LABEL_19;
  }

  if (v35 > 12.0)
  {
    v33 = 1;
LABEL_19:
    *a4 = v33;
    return 1;
  }

  return 0;
}

float EchoDetector::autoCepstrum(EchoDetector *this, const float *a2, unsigned int a3)
{
  v5 = this + 48;
  v4 = *(this + 6);
  v6 = (*(v5 + 1) - v4) >> 2;
  v7 = v6 >> 1;
  v8 = 32 - __clz((v6 >> 1) - 1);
  v9 = a3;
  if (a3)
  {
    memmove(v4, a2, 4 * a3);
    v4 = *(this + 6);
    v10 = (*(this + 7) - v4) >> 2;
  }

  else
  {
    v10 = v6;
  }

  vDSP_vclr(v4 + v9, 1, v10 - v9);
  v21.realp = *(this + 6);
  v21.imagp = &v21.realp[v7];
  vDSP_fft_zip(*(this + 1), &v21, 1, v8, 1);
  v11 = *(this + 6);
  if (v7)
  {
    v12 = (v6 >> 1);
    v13 = *(this + 6);
    v14 = v6 >> 1;
    do
    {
      *v13 = logf((*(v11 + 4 * v14) * *(v11 + 4 * v14)) + (*v13 * *v13));
      ++v13;
      LODWORD(v14) = v14 + 1;
      --v12;
    }

    while (v12);
  }

  vDSP_vclr((v11 + 4 * (v6 >> 1)), 1, (v6 >> 1));
  vDSP_fft_zip(*(this + 1), &v21, 1, v8, -1);
  if (v7 >= 2)
  {
    v16 = *(this + 6);
    v17 = *(this + 9);
    v18 = (v6 >> 2) & 0x7FFFFFFF;
    v19 = v16;
    do
    {
      v20 = *v19++;
      result = sqrtf((v16[v7] * v16[v7]) + (v20 * v20));
      *v17++ = result;
      ++v7;
      --v18;
    }

    while (v18);
  }

  return result;
}

uint64_t AdaptiveThreshold::initialize(AdaptiveThreshold *this, std::vector<unsigned int>::size_type __sz, float a3)
{
  v3 = a3 < 0.0 || __sz == 0;
  v4 = !v3;
  if (!v3)
  {
    v7 = __sz;
    std::vector<float>::resize((this + 16), __sz);
    std::vector<float>::resize((this + 40), v7);
    vDSP_vclr(*(this + 2), 1, (*(this + 3) - *(this + 2)) >> 2);
    *this = a3;
    *(this + 1) = a3;
    *(this + 2) = 0;
  }

  return v4;
}

float AdaptiveThreshold::reset(float **this)
{
  vDSP_vclr(this[2], 1, this[3] - this[2]);
  result = *(this + 1);
  *this = result;
  *(this + 2) = 0;
  return result;
}

float AdaptiveThreshold::updateThreshold(AdaptiveThreshold *this, float a2)
{
  v3 = *(this + 2);
  v4 = *(this + 3);
  if (v3 != v4)
  {
    __StandardDeviation = 0;
    vDSP_normalize(v3, 1, 0, 1, &__StandardDeviation + 1, &__StandardDeviation, v4 - v3);
    v6 = *(this + 2);
    v7 = *(this + 3) - v6;
    v8 = 0.0;
    v9 = fabsf(a2);
    if (*(this + 2) >= (v7 >> 2))
    {
      v10 = __StandardDeviation;
      *this = *(&__StandardDeviation + 1) + (*(this + 1) * *&__StandardDeviation);
      v8 = (v9 - *(&v10 + 1)) / *&v10;
    }

    memmove(v6, (v6 + 4), v7 - 4);
    v11 = *(this + 2);
    v12 = *(this + 3);
    if (v11 + 1 < ((v12 - *(this + 2)) >> 2))
    {
      v13 = v11 + 1;
    }

    else
    {
      v13 = (v12 - *(this + 2)) >> 2;
    }

    *(this + 2) = v13;
    if (v8 > *(this + 1))
    {
      v9 = (*(v12 - 8) * 0.98) + (v9 * 0.02);
    }

    *(v12 - 4) = v9;
  }

  return *this;
}

void SyncSequence::initialize(SyncSequence *this, int a2, float a3, unsigned int a4, float a5)
{
  v10 = a3;
  std::vector<float>::resize((this + 8), 0x800uLL);
  *&v8 = MEMORY[0x245CEADA0](&echoCodec::kSyncNoiseSequence + 0x2000 * (a2 != 44100), 1, &v10, *(this + 1), 1, 2048);
  v9 = 0;
  std::vector<float>::resize(this + 1, a4, &v9, v8);
  *this = 0;
}

uint64_t SyncSeqEmbedder::initialize(SyncSeqEmbedder *this, int a2, int a3, int a4, char a5)
{
  v6 = *(this + 7);
  if (!v6)
  {
    return 0;
  }

  v8 = *(this + 8);
  if (v8 == 0.0)
  {
    return 0;
  }

  v9 = *(this + 9);
  if (v9 == 0.0)
  {
    return 0;
  }

  SyncSeqEmbedder::initialize(this, a2, a4, 2 * a3, v6, v8, v9);
  *(this + 40) = a5;
  result = 1;
  *(this + 8) = 1;
  return result;
}

void SyncSeqEmbedder::initialize(SyncSeqEmbedder *this, int a2, int a3, unsigned int a4, unsigned int a5, float a6, float a7)
{
  *(this + 3) = a3;
  *(this + 4) = a4;
  *(this + 5) = a3;
  *(this + 6) = a4;
  *(this + 11) = 0;
  SyncSequence::initialize((this + 56), a2, a6, a5, a7);
  ShapingFilter::initialize(this + 88, 1, a2, 1u, 1, a7);
  *(this + 6) = 0;
  std::vector<float>::resize((this + 128), a4);
  v11 = *(this + 16);
  v12 = (*(this + 17) - v11) >> 2;

  vDSP_vclr(v11, 1, v12);
}

_DWORD *SyncSeqEmbedder::setConfig(_DWORD *result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v22 = *MEMORY[0x277D85DE8];
  v16 = 100;
  v17 = 0;
  v4 = result + 7;
  v18 = result + 7;
  v19 = 111;
  v20 = 1;
  v5 = (result + 9);
  v21 = result + 9;
  v6 = (a2 + 8);
  do
  {
    v7 = *v6;
    if (*v6)
    {
      v8 = &v16 + v3;
      v9 = *(&v16 + v3);
      v10 = v6;
      do
      {
        v11 = *(v7 + 32);
        v12 = v11 >= v9;
        v13 = v11 < v9;
        if (v12)
        {
          v10 = v7;
        }

        v7 = *(v7 + 8 * v13);
      }

      while (v7);
      if (v10 != v6 && v9 >= *(v10 + 8))
      {
        v14 = (v10 + 5);
        if (v8[4] == 1)
        {
          result = std::any_cast[abi:ne200100]<float const>(v14);
          if (!result)
          {
            goto LABEL_23;
          }

          **(v8 + 1) = *result;
        }

        else
        {
          result = std::any_cast[abi:ne200100]<unsigned int const>(v14);
          if (!result)
          {
LABEL_23:
            std::__throw_bad_any_cast[abi:ne200100]();
          }

          **(v8 + 1) = *result;
        }
      }
    }

    v3 += 16;
  }

  while (v3 != 32);
  if (!*v4)
  {
    *v4 = 2048;
  }

  if (v2[8] == 0.0)
  {
    v2[8] = 0.06;
  }

  if (*v5 == 0.0)
  {
    *v5 = 18000.0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SyncSeqEmbedder::getFrameStartOffset(uint64_t a1, std::vector<unsigned int> *a2, std::vector<unsigned int>::size_type a3, uint64_t a4)
{
  v5 = a3;
  v8 = SyncSeqEmbedder::embedSyncFrame(a1, a2, a3);
  if (*(a1 + 40) == 1)
  {
    if (!*(a1 + 44))
    {
      begin = a2->__begin_;
      v12 = a4;
      LODWORD(v10) = v5;
      goto LABEL_6;
    }

    v9 = *(a1 + 48);
    std::function<void ()(float *,unsigned int)>::operator()(a4, a2->__begin_, v9);
    v10 = HIDWORD(v9);
    if (HIDWORD(v9))
    {
      begin = &a2->__begin_[v5 - HIDWORD(v9)];
      v12 = a4;
LABEL_6:
      std::function<void ()(float *,unsigned int)>::operator()(v12, begin, v10);
    }
  }

  return v8;
}

uint64_t SyncSeqEmbedder::embedSyncFrame(uint64_t a1, std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz)
{
  v3 = __sz;
  v5 = *(a1 + 20);
  v6 = *(a1 + 24);
  begin = this->__begin_;
  if (((this->__end_ - this->__begin_) >> 2) < __sz)
  {
    std::vector<float>::resize(this, __sz);
  }

  *(a1 + 48) = 0;
  v8 = *(a1 + 44);
  if (v8 == 1)
  {
    v9 = *(a1 + 20);
  }

  else
  {
    if (v8)
    {
      return (v6 + v5);
    }

    v9 = *(a1 + 20);
    if (v9 >= v3)
    {
      *(a1 + 20) = v9 - v3;
      return (v6 + v5);
    }

    *(a1 + 44) = 1;
  }

  v10 = v3 - v9;
  if (v9)
  {
    *(a1 + 48) = v9;
    begin += v9;
    *(a1 + 20) = 0;
  }

  if (v10 >= 1)
  {
    v12 = *(a1 + 64);
    v11 = *(a1 + 72);
    v13 = *(a1 + 56);
    while (1)
    {
      v14 = (v11 - v12) >> 2;
      v15 = v14 >= v13;
      v16 = v14 - v13;
      if (v16)
      {
        if (v16 != 0 && v15)
        {
          v21 = v12 + 4 * v13;
        }

        else
        {
          v21 = 0;
        }

        if (v10 >= v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = v10;
        }

        MEMORY[0x245CEAD70](begin, 1, v21, 1, begin, 1, v18);
        v13 = *(a1 + 56) + v18;
        v12 = *(a1 + 64);
        v11 = *(a1 + 72);
        if (v13 >= ((v11 - v12) >> 2))
        {
          v13 = (v11 - v12) >> 2;
        }

        *(a1 + 56) = v13;
        *(a1 + 24) -= v18;
        goto LABEL_33;
      }

      v17 = *(a1 + 24);
      if (v17)
      {
        LODWORD(v18) = v10 >= v17 ? *(a1 + 24) : v10;
        v19 = v17 - v18;
        *(a1 + 24) = v19;
        v20 = v19 < 1;
      }

      else
      {
        v20 = 1;
        LODWORD(v18) = v10;
      }

      if (v10 == v3)
      {
        break;
      }

      *(a1 + 52) = v18;
      if (v20)
      {
        goto LABEL_32;
      }

LABEL_33:
      begin += v18;
      v22 = __OFSUB__(v10, v18);
      v10 -= v18;
      if ((v10 < 0) ^ v22 | (v10 == 0))
      {
        return (v6 + v5);
      }
    }

    *(a1 + 48) = v18;
    if (!v20)
    {
      goto LABEL_33;
    }

LABEL_32:
    *(a1 + 44) = 2;
    goto LABEL_33;
  }

  return (v6 + v5);
}

uint64_t std::function<void ()(float *,unsigned int)>::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

double SyncSeqEmbedder::reset(SyncSeqEmbedder *this)
{
  result = *(this + 12);
  *(this + 20) = result;
  *(this + 52) = 0;
  *(this + 44) = 0;
  return result;
}

uint64_t SyncSeqEmbedder::searchSyncPosition(uint64_t this, unsigned int a2)
{
  if (!*(this + 44))
  {
    v2 = *(this + 20);
    v3 = v2 >= a2;
    v4 = v2 - a2;
    if (v3)
    {
      *(this + 20) = v4;
    }

    else
    {
      *(this + 44) = 1;
    }
  }

  return this;
}

void SyncSeqDetector::initialize(SyncSeqDetector *this, int a2, unsigned int a3, float a4, unsigned int a5, int a6, float a7, float a8)
{
  *(this + 3) = a2;
  *(this + 4) = a5;
  v15 = a5;
  std::vector<float>::resize(this + 9, a5);
  std::vector<float>::resize(this + 8, v15);
  vDSP_vclr(*(this + 24), 1, (*(this + 25) - *(this + 24)) >> 2);
  *(this + 5) = 0;
  *(this + 8) = a5 - a6;
  v16 = a3 / (a3 >> 3);
  *(this + 14) = a3 >> 3;
  *(this + 15) = v16;
  std::vector<SyncSeqDetector::peakInfo>::resize(this + 8, (2 * v16));
  v17 = (2 * *(this + 15));
  if (v17)
  {
    v18 = *(this + 8) + 4;
    do
    {
      *(v18 - 4) = 0xFFFFFFFFLL;
      v18 += 8;
      --v17;
    }

    while (v17);
  }

  AdaptiveThreshold::initialize((this + 88), 0x14uLL, a7);
  *(this + 10) = 1092616192;
  *(this + 19) = 0xFFFFFFFFLL;
  SyncSequence::initialize((this + 160), a2, a4, a3, v19);
  Setup = vDSP_biquad_CreateSetup(&SyncSeqDetector::mBPFCoef[10 * (a2 == 48000)], 2uLL);
  std::unique_ptr<vDSP_biquad_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_biquad_SetupStruct*,&(vDSP_biquad_DestroySetup)>>::reset[abi:ne200100](this + 33, Setup);
  std::vector<float>::resize(this + 10, 6uLL);
  v21 = *(this + 30);
  v22 = (*(this + 31) - v21) >> 2;

  vDSP_vclr(v21, 1, v22);
}

_DWORD *SyncSeqDetector::setConfig(_DWORD *result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v28 = *MEMORY[0x277D85DE8];
  v19 = 100;
  v20 = 0;
  v4 = result + 11;
  v21 = result + 11;
  v22 = 111;
  v23 = 1;
  v5 = (result + 13);
  v24 = result + 13;
  v25 = 109;
  v26 = 1;
  v6 = (result + 9);
  v27 = result + 9;
  v7 = (a2 + 8);
  do
  {
    v8 = *v7;
    if (*v7)
    {
      v9 = &v19 + v3;
      v10 = *(&v19 + v3);
      v11 = v7;
      do
      {
        v12 = *(v8 + 32);
        v13 = v12 >= v10;
        v14 = v12 < v10;
        if (v13)
        {
          v11 = v8;
        }

        v8 = *(v8 + 8 * v14);
      }

      while (v8);
      if (v11 != v7 && v10 >= *(v11 + 8))
      {
        v15 = (v11 + 5);
        if (v9[4] == 1)
        {
          result = std::any_cast[abi:ne200100]<float const>(v15);
          if (!result)
          {
            goto LABEL_26;
          }

          **(v9 + 1) = *result;
        }

        else
        {
          result = std::any_cast[abi:ne200100]<unsigned int const>(v15);
          if (!result)
          {
LABEL_26:
            std::__throw_bad_any_cast[abi:ne200100]();
          }

          **(v9 + 1) = *result;
        }
      }
    }

    v3 += 16;
  }

  while (v3 != 48);
  if (v2[12] == 0.0)
  {
    v2[12] = 0.06;
  }

  if (*v5 == 0.0)
  {
    *v5 = 18000.0;
  }

  v16 = *(v2 + 11);
  if (*v6 == 0.0)
  {
    *v6 = 0.06;
  }

  if (v16)
  {
    v17 = 2 * v16;
  }

  else
  {
    v17 = 4096;
  }

  *v4 = v17;
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SyncSeqDetector::getFrameStartOffset(SyncSeqDetector *this, const float *a2, int a3, int *a4, int a5)
{
  if ((*(this + 24) & 1) != 0 || SyncSeqDetector::detectSyncFrame(this, a2, a3, a5))
  {
    *a4 = *(this + 11) + *(this + 7);
    *(this + 7) -= a3;
  }

  return *(this + 24);
}

uint64_t SyncSeqDetector::detectSyncFrame(SyncSeqDetector *this, const float *__X, int a3, int a4)
{
  if (a4)
  {
    v4 = 2.97;
  }

  else
  {
    v4 = 2.7;
  }

  if (a3 < 1)
  {
    return 0;
  }

  v5 = a3;
  v8 = ((*(this + 25) - *(this + 24)) >> 3) & 0x7FFFFFFFLL;
  v9 = *(this + 5);
  v10 = __X;
  while (1)
  {
    v11 = *(this + 24);
    v12 = ((*(this + 25) - v11) >> 2) - v9;
    if (v12 >= v5)
    {
      v13 = v5;
    }

    else
    {
      v13 = v12;
    }

    vDSP_biquad(*(this + 33), *(this + 30), v10, 1, (v11 + 4 * v9), 1, v13);
    v14 = (v13 + *(this + 5));
    *(this + 5) = v14;
    v15 = *(this + 24);
    if (v14 < (*(this + 25) - v15) >> 2)
    {
      if (v10 == __X)
      {
        v48 = *(this + 8);
        v49 = *(this + 9) - v48;
        if ((v49 & 0x7FFFFFFF8) != 0)
        {
          v50 = (v49 >> 3);
          do
          {
            *v48 -= v13;
            v48 += 2;
            --v50;
          }

          while (v50);
        }
      }

      return 0;
    }

    LODWORD(v16) = *(this + 15);
    if (v16)
    {
      v17 = 0;
      v18 = 0;
      v19 = *(this + 8);
      do
      {
        *(v19 + v17) = *(v19 + 8 * (v18 + v16));
        v19 = *(this + 8);
        *(v19 + v17) -= v13;
        v16 = *(this + 15);
        *(v19 + 8 * (v18++ + v16)) = 0xFFFFFFFFLL;
        v17 += 8;
      }

      while (v18 < v16);
      v15 = *(this + 24);
    }

    v20 = *(this + 21);
    v21 = *(this + 22) - v20;
    v22 = *(this + 40);
    v23 = v20 + 4 * v22;
    v24 = v22 >= (v21 >> 2) ? 0 : v23;
    vDSP_conv(v15, 1, v24, 1, *(this + 27), 1, *(this + 4) - (v21 >> 2), (v21 >> 2));
    v25 = *(this + 15);
    if (v25)
    {
      v26 = 0;
      v27 = *(this + 8) + 8 * v25;
      v28 = *(this + 27);
      v29 = *(this + 14);
      do
      {
        v30 = v29 * v26;
        v31 = (v28 + 4 * (v29 * v26));
        v32 = v26 + 1;
        v33 = v29 * (v26 + 1);
        v34 = (v28 + 4 * v33);
        v35 = v31 + 1;
        if (4 * (v29 * v26) == 4 * v33 || v35 == v34)
        {
          v38 = (v28 + 4 * v30);
        }

        else
        {
          v37 = *v31;
          v38 = (v28 + 4 * v30);
          v39 = v31 + 1;
          do
          {
            v40 = *v39++;
            v41 = v40;
            if (fabsf(v37) < fabsf(v40))
            {
              v37 = v41;
              v38 = v35;
            }

            v35 = v39;
          }

          while (v39 != v34);
        }

        v42 = v27 + 8 * v26;
        *v42 = v30 + ((v38 - v31) >> 2);
        *(v42 + 4) = fabsf(*v38);
        v26 = v32;
      }

      while (v32 != v25);
      if (v25 >= 1)
      {
        break;
      }
    }

LABEL_43:
    v10 += v13;
    v5 -= v13;
    memmove(*(this + 24), (*(this + 24) + 4 * (((*(this + 25) - *(this + 24)) >> 2) - v8)), 4 * v8);
    v9 = *(this + 5) - v8;
    *(this + 5) = v9;
    if (v5 <= 0)
    {
      return 0;
    }
  }

  v43 = (v27 - 12);
  v44 = -2;
  while (1)
  {
    v45 = *v43;
    if (*v43 > 0.0 && v45 > AdaptiveThreshold::updateThreshold((this + 88), *v43))
    {
      v46 = *(v43 - 2);
      if (v46 < v45)
      {
        v47 = v43[2];
        if (v47 < v45)
        {
          if (v46 >= *(v43 - 4))
          {
            v46 = *(v43 - 4);
          }

          if (v43[4] < v47)
          {
            v47 = v43[4];
          }

          if (v46 < v47)
          {
            v46 = v47;
          }

          if (v45 > (v4 * v46))
          {
            break;
          }
        }
      }
    }

    ++v44;
    v43 += 2;
    if (v44 >= *(this + 15) - 2)
    {
      goto LABEL_43;
    }
  }

  *(this + 7) = v13 + ((v10 - __X) >> 2) + *(v43 - 1) - ((*(this + 25) - *(this + 24)) >> 2);
  result = 1;
  *(this + 24) = 1;
  return result;
}

void std::vector<SyncSeqDetector::peakInfo>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<SyncSeqDetector::peakInfo>::__append(a1, a2 - v2);
  }
}

void SyncSeqDetector::reset(float **this)
{
  vDSP_vclr(this[24], 1, this[25] - this[24]);
  *(this + 5) = 0;
  *(this + 24) = 0;
  *(this + 7) = 0;
  vDSP_vclr(this[13], 1, this[14] - this[13]);
  *(this + 22) = *(this + 23);
  *(this + 24) = 0;
  *(this + 10) = 1092616192;
  this[19] = 0xFFFFFFFFLL;
  v2 = this[30];
  v3 = this[31] - v2;

  vDSP_vclr(v2, 1, v3);
}

uint64_t PasscodePositioner::initialize(PasscodePositioner *this, unsigned int a2, unsigned int a3, int a4, char a5)
{
  *(this + 3) = a4;
  *(this + 4) = a4;
  *(this + 20) = a5;
  *(this + 6) = 0;
  return 1;
}

_DWORD *PasscodePositioner::reset(_DWORD *this)
{
  this[4] = this[3];
  this[6] = 0;
  return this;
}

uint64_t PasscodePositioner::getFrameStartOffset(uint64_t a1, uint64_t *a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (*(a1 + 24))
  {
    v5 = 0;
  }

  else
  {
    v6 = v4 - a3;
    v5 = v4 >= a3;
    if (v4 < a3)
    {
      v6 = 0;
      *(a1 + 24) = 1;
    }

    *(a1 + 16) = v6;
  }

  if (*(a1 + 20) == 1)
  {
    v7 = *a2;
    if (!v5)
    {
      a3 = v4;
    }

    std::function<void ()(float *,unsigned int)>::operator()(a4, v7, a3);
  }

  return v4;
}

uint64_t SyncEchoDetector::initialize(SyncEchoDetector *this, unsigned int a2, unsigned int a3)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v28[0] = 0x3C23D70A3BA3D70ALL;
  v5 = a2 / 48000.0;
  v6 = vcvtps_u32_f32(v5 * (a3 >> 6));
  v7 = *(this + 4) * a3 - vcvtps_u32_f32(v5 * (a3 >> 2));
  *(this + 5) = v7;
  v8 = (this + 20);
  *(this + 6) = v6;
  v9 = (this + 24);
  *(this + 3) = a3;
  *(this + 7) = (v7 - a3) / v6;
  EchoDetector::initialize((this + 224), a3, a2, v28);
  BitCounter::initialize((this + 168), *v8 / *v9, 1);
  ShapingFilter::initialize(this + 320, 1, a2, 1u, 1, *(this + 10));
  std::vector<float>::resize(this + 2, *v8);
  v10 = *(this + 12);
  v11 = *(this + 43);
  v12 = 10 * v11;
  v13 = *(this + 13) - v10;
  if (v12 <= v13)
  {
    if (v12 < v13)
    {
      *(this + 13) = &v10[v12];
    }
  }

  else
  {
    std::vector<signed char>::__append(this + 12, v12 - v13);
    v10 = *(this + 12);
    v11 = *(this + 43);
  }

  if (v11)
  {
    memset(v10, 255, v11);
    v10 = *(this + 12);
    v14 = *(this + 43);
  }

  else
  {
    v14 = 0;
  }

  v15 = &v10[9 * v14];
  v16 = *(this + 13) - v15;
  if (v16 >= 1)
  {
    memset(v15, 255, v16);
    v14 = *(this + 43);
  }

  v17 = *(this + 15);
  v18 = (8 * v14);
  v19 = *(this + 16) - v17;
  if (v18 <= v19)
  {
    if (v18 < v19)
    {
      *(this + 16) = v17 + v18;
    }
  }

  else
  {
    std::vector<signed char>::__append(this + 15, v18 - v19);
  }

  v20 = 0;
  do
  {
    v21 = *(this + 43);
    v22 = (v21 * v20);
    v23 = v20 + 1;
    v24 = (v21 * (v20 + 1)) - v22;
    if (v24 >= 1)
    {
      if ((0x72uLL >> v20))
      {
        v25 = 1;
      }

      else
      {
        v25 = -1;
      }

      memset((v22 + *(this + 15)), v25, v24);
    }

    v20 = v23;
  }

  while (v23 != 8);
  std::vector<float>::resize(this + 6, (2 * *(this + 43)));
  *(this + 4) = 0;
  *(this + 22) = 0;
  *(this + 10) = *(this + 9);
  v26 = *MEMORY[0x277D85DE8];
  return 1;
}

void SyncEchoDetector::reset(SyncEchoDetector *this)
{
  *(this + 4) = 0;
  *(this + 22) = 0;
  *(this + 10) = *(this + 9);
  ShapingFilter::reset((this + 320));
}

_DWORD *SyncEchoDetector::setConfig(_DWORD *result, uint64_t a2)
{
  v2 = 0;
  v21 = *MEMORY[0x277D85DE8];
  v15 = 101;
  v16 = 0;
  v3 = result + 4;
  v17 = result + 4;
  v18 = 111;
  v19 = 1;
  v4 = (result + 10);
  v20 = result + 10;
  v5 = (a2 + 8);
  do
  {
    v6 = *v5;
    if (*v5)
    {
      v7 = &v15 + v2;
      v8 = *(&v15 + v2);
      v9 = v5;
      do
      {
        v10 = *(v6 + 32);
        v11 = v10 >= v8;
        v12 = v10 < v8;
        if (v11)
        {
          v9 = v6;
        }

        v6 = *(v6 + 8 * v12);
      }

      while (v6);
      if (v9 != v5 && v8 >= *(v9 + 8))
      {
        v13 = (v9 + 5);
        if (v7[4] == 1)
        {
          result = std::any_cast[abi:ne200100]<float const>(v13);
          if (!result)
          {
            goto LABEL_21;
          }

          **(v7 + 1) = *result;
        }

        else
        {
          result = std::any_cast[abi:ne200100]<unsigned int const>(v13);
          if (!result)
          {
LABEL_21:
            std::__throw_bad_any_cast[abi:ne200100]();
          }

          **(v7 + 1) = *result;
        }
      }
    }

    v2 += 16;
  }

  while (v2 != 32);
  if (!*v3)
  {
    *v3 = 2;
  }

  if (*v4 == 0.0)
  {
    *v4 = 18000.0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SyncEchoDetector::getFrameStartOffset(SyncEchoDetector *this, const float *a2, int a3, int *a4)
{
  if (*(this + 45))
  {
    *a4 = *(this + 9) + 8 * *(this + 5);
    *(this + 9) -= a3;
    v7 = 1;
  }

  else
  {
    SyncEchoDetector::detectSyncEcho(this, a2, a3);
    *a4 = *(this + 9) + 8 * *(this + 5);
    *(this + 9) -= a3;
    v7 = *(this + 45);
  }

  return v7 & 1;
}

uint64_t SyncEchoDetector::detectSyncEcho(SyncEchoDetector *this, const float *__X, int a3)
{
  SyncEchoDetector::detectSyncEcho(float const*,unsigned int)::count += a3;
  if (a3 >= 1)
  {
    v5 = *(this + 8);
    v6 = a3;
    do
    {
      v7 = *(this + 5) - v5;
      if (v7 >= v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = v7;
      }

      ShapingFilter::filter((this + 320), __X, (*(this + 6) + 4 * v5), v8);
      v9 = *(this + 8) + v8;
      *(this + 8) = v9;
      if (v9 < *(this + 5))
      {
        break;
      }

      v10 = *(this + 7);
      if (v10)
      {
        for (i = 0; i < v10; ++i)
        {
          v34 = 0;
          if (EchoDetector::decodeEcho((this + 224), (*(this + 6) + 4 * *(this + 6) * i), *(this + 3), &v34, 0))
          {
            if ((*(this + 44) & 1) == 0)
            {
              *(this + 46) = 0;
              *(this + 42) = 0;
              *(this + 22) = 0;
              v12 = *(this + 24);
              v13 = *(this + 25);
              if (v12 != v13)
              {
                *(this + 54) = 0;
                if (v13 - v12 >= 1)
                {
                  bzero(v12, v13 - v12);
                }
              }

              *(this + 44) = 1;
            }

            BitCounter::count(this + 168, v34);
          }

          else if (*(this + 44))
          {
            BitCounter::count(this + 168);
          }

          if (*(this + 44) == 1)
          {
            v14 = *(this + 9);
            v15 = *(this + 10);
            if (v14 == v15 && *(this + 46) > *(this + 7) >> 1 && (*(this + 44) + *(this + 45)) <= 9)
            {
              *(this + 46) = 0;
              *(this + 42) = 0;
              *(this + 22) = 0;
              *(this + 44) = 0;
              v15 = v14;
              *(this + 10) = v14;
            }

            if (*(this + 42) >= *(this + 43))
            {
              v16 = *(this + 44);
              v17 = *(this + 45);
              if (v16 == v17 || v17 + v16 <= 9)
              {
                *(this + 44) = 0;
                *(this + 10) = v14;
              }

              else
              {
                v18 = v16 < v17;
                *(this + 46) = 0;
                *(this + 42) = 0;
                *(this + 22) = 0;
                v19 = *(this + 11);
                if (v15 >= v19)
                {
                  v21 = (v15 - v14);
                  v22 = v15 - v14 + 1;
                  if (v22 < 0)
                  {
                    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
                  }

                  v23 = v19 - v14;
                  if (2 * v23 > v22)
                  {
                    v22 = 2 * v23;
                  }

                  if (v23 >= 0x3FFFFFFFFFFFFFFFLL)
                  {
                    v24 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v24 = v22;
                  }

                  if (v24)
                  {
                    operator new();
                  }

                  v25 = v15 - v14;
                  *v21 = v18;
                  v20 = v21 + 1;
                  memcpy(0, v14, v25);
                  *(this + 9) = 0;
                  *(this + 10) = v21 + 1;
                  *(this + 11) = 0;
                  if (v14)
                  {
                    operator delete(v14);
                  }
                }

                else
                {
                  *v15 = v18;
                  v20 = v15 + 1;
                }

                *(this + 10) = v20;
                v26 = *(this + 9);
                if (v20 - v26 == 8)
                {
                  v27 = *v26 == 0x1010100000100;
                  *(this + 45) = v27;
                  if (v27)
                  {
                    *(this + 9) = v8 + a3 + *(this + 6) * SyncEchoDetector::estimateFrameStart(this) - (v6 + *(this + 8) + 8 * *(this + 5));
                    v28 = APCLogObject();
                    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_24158E000, v28, OS_LOG_TYPE_INFO, "A valid passcode frame start has been found!", buf, 2u);
                    }
                  }

                  else
                  {
                    *(this + 10) = v26;
                  }
                }
              }
            }
          }

          v10 = *(this + 7);
        }

        v9 = *(this + 8);
      }

      v29 = *(this + 6) * v10;
      memmove(*(this + 6), (*(this + 6) + 4 * v29), 4 * (v9 - v29));
      v5 = *(this + 8) - v29;
      *(this + 8) = v5;
      __X += v8;
      v30 = __OFSUB__(v6, v8);
      v6 -= v8;
    }

    while (!((v6 < 0) ^ v30 | (v6 == 0)));
  }

  return 1;
}

uint64_t SyncEchoDetector::estimateFrameStart(SyncEchoDetector *this)
{
  v2 = *(this + 43);
  v3 = (8 * v2);
  if (v3)
  {
    memmove((*(this + 12) + v2), *(this + 24), v3);
    LODWORD(v2) = *(this + 43);
  }

  if ((v2 & 0x7FFFFFFF) != 0)
  {
    v4 = 0;
    v6 = *(this + 15);
    v5 = *(this + 16);
    v7 = *(this + 18);
    do
    {
      if (v5 == v6)
      {
        v9 = 0;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        do
        {
          v9 += *(v6 + v8) * *(*(this + 12) + (v4 + v8));
          ++v8;
        }

        while (v5 - v6 > v8);
      }

      *&v7[4 * v4++] = v9;
      LODWORD(v2) = *(this + 43);
    }

    while (v4 < (2 * v2));
  }

  else
  {
    v7 = *(this + 18);
  }

  v10 = *(this + 19);
  v11 = v7 + 4;
  v12 = v7 == v10 || v11 == v10;
  v13 = v7;
  if (!v12)
  {
    v14 = *v7;
    v13 = v7;
    v15 = v7 + 4;
    do
    {
      v17 = *v15;
      v15 += 4;
      v16 = v17;
      v18 = v14 < v17;
      if (v14 <= v17)
      {
        v14 = v16;
      }

      if (v18)
      {
        v13 = v11;
      }

      v11 = v15;
    }

    while (v15 != v10);
  }

  return ((v13 - v7) >> 2) - v2 + 1;
}

void SyncedEchoEmbedder::~SyncedEchoEmbedder(SyncedEchoEmbedder *this)
{
  EchoEmbedder::~EchoEmbedder(this);

  JUMPOUT(0x245CEA790);
}

void SyncSeqEmbedder::~SyncSeqEmbedder(SyncSeqEmbedder *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  std::unique_ptr<vDSP_biquad_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_biquad_SetupStruct*,&(vDSP_biquad_DestroySetup)>>::reset[abi:ne200100](this + 15, 0);
  v4 = (this + 96);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }
}

{
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  std::unique_ptr<vDSP_biquad_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_biquad_SetupStruct*,&(vDSP_biquad_DestroySetup)>>::reset[abi:ne200100](this + 15, 0);
  v4 = (this + 96);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  MEMORY[0x245CEA790](this, 0x10A1C40488B4B6ALL);
}

void SyncSeqDetector::~SyncSeqDetector(vDSP_biquad_SetupStruct **this)
{
  SyncSeqDetector::~SyncSeqDetector(this);

  JUMPOUT(0x245CEA790);
}

{
  std::unique_ptr<vDSP_biquad_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_biquad_SetupStruct*,&(vDSP_biquad_DestroySetup)>>::reset[abi:ne200100](this + 33, 0);
  v2 = this[30];
  if (v2)
  {
    this[31] = v2;
    operator delete(v2);
  }

  v3 = this[27];
  if (v3)
  {
    this[28] = v3;
    operator delete(v3);
  }

  v4 = this[24];
  if (v4)
  {
    this[25] = v4;
    operator delete(v4);
  }

  v5 = this[21];
  if (v5)
  {
    this[22] = v5;
    operator delete(v5);
  }

  v6 = this[16];
  if (v6)
  {
    this[17] = v6;
    operator delete(v6);
  }

  v7 = this[13];
  if (v7)
  {
    this[14] = v7;
    operator delete(v7);
  }

  v8 = this[8];
  if (v8)
  {
    this[9] = v8;
    operator delete(v8);
  }
}

void SyncEchoDetector::~SyncEchoDetector(vDSP_biquad_SetupStruct **this)
{
  SyncEchoDetector::~SyncEchoDetector(this);

  JUMPOUT(0x245CEA790);
}

{
  std::unique_ptr<vDSP_biquad_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_biquad_SetupStruct*,&(vDSP_biquad_DestroySetup)>>::reset[abi:ne200100](this + 44, 0);
  v11 = (this + 41);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v2 = this[37];
  if (v2)
  {
    this[38] = v2;
    operator delete(v2);
  }

  v3 = this[34];
  if (v3)
  {
    this[35] = v3;
    operator delete(v3);
  }

  v4 = this[31];
  if (v4)
  {
    this[32] = v4;
    operator delete(v4);
  }

  std::unique_ptr<OpaqueFFTSetup,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueFFTSetup*,&(vDSP_destroy_fftsetup)>>::reset[abi:ne200100](this + 29, 0);
  v5 = this[24];
  if (v5)
  {
    this[25] = v5;
    operator delete(v5);
  }

  v6 = this[18];
  if (v6)
  {
    this[19] = v6;
    operator delete(v6);
  }

  v7 = this[15];
  if (v7)
  {
    this[16] = v7;
    operator delete(v7);
  }

  v8 = this[12];
  if (v8)
  {
    this[13] = v8;
    operator delete(v8);
  }

  v9 = this[9];
  if (v9)
  {
    this[10] = v9;
    operator delete(v9);
  }

  v10 = this[6];
  if (v10)
  {
    this[7] = v10;
    operator delete(v10);
  }
}

void std::vector<std::vector<float>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<float>>::~__split_buffer(v18);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<float>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void std::vector<signed char>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void sub_2415A1D18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<SyncSeqDetector::peakInfo>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 3)
  {
    if (a2)
    {
      v11 = v4 + 8 * a2;
      do
      {
        *v4 = 0xFFFFFFFFLL;
        *(v4 + 4) = 0;
        v4 += 8;
      }

      while (v4 != v11);
      v4 = v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = v4 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 3;
    v9 = v5 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<SyncSeqDetector::peakInfo>>(a1, v10);
    }

    v12 = 8 * v8;
    v13 = 8 * v8 + 8 * a2;
    v14 = v12;
    do
    {
      *v14 = 0xFFFFFFFFLL;
      *(v14 + 4) = 0;
      v14 += 8;
    }

    while (v14 != v13);
    v15 = *(a1 + 8) - *a1;
    v16 = v12 - v15;
    memcpy((v12 - v15), *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SyncSeqDetector::peakInfo>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

float std::normal_distribution<float>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(uint64_t a1, unsigned int *a2, float *a3)
{
  if (*(a1 + 12))
  {
    *(a1 + 12) = 0;
    v5 = *(a1 + 8);
  }

  else
  {
    v6 = *a2;
    do
    {
      v7 = v6 / 0xADC8;
      v8 = 48271 * (v6 % 0xADC8);
      v7 *= 3399;
      v9 = v8 >= v7;
      v10 = v8 - v7;
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0x7FFFFFFF;
      }

      v12 = v11 + v10;
      v13 = (vcvts_n_f32_u32(v12 - 1, 0x1FuLL) * 2.0) + -1.0;
      v14 = v12 / 0xADC8;
      v15 = 48271 * (v12 % 0xADC8);
      v14 *= 3399;
      v9 = v15 >= v14;
      v16 = v15 - v14;
      if (v9)
      {
        v17 = 0;
      }

      else
      {
        v17 = 0x7FFFFFFF;
      }

      v6 = v17 + v16;
      v18 = (vcvts_n_f32_u32(v6 - 1, 0x1FuLL) * 2.0) + -1.0;
      v19 = (v18 * v18) + (v13 * v13);
    }

    while (v19 > 1.0 || v19 == 0.0);
    *a2 = v6;
    v20 = sqrtf((logf((v18 * v18) + (v13 * v13)) * -2.0) / v19);
    *(a1 + 8) = v18 * v20;
    *(a1 + 12) = 1;
    v5 = v13 * v20;
  }

  return *a3 + (v5 * a3[1]);
}

const void **std::deque<unsigned char>::__add_front_capacity(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v1) << 9) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x1000)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned char *>>(a1, v10);
  }

  *(a1 + 32) = v5 + 4096;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return std::__split_buffer<unsigned char *>::emplace_front<unsigned char *&>(a1, v11);
}

void sub_2415A2384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **std::__split_buffer<unsigned char *>::emplace_front<unsigned char *&>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned char *>>(result, v9);
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned char *>>(result[4], v9);
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

void *std::__split_buffer<unsigned char *>::emplace_back<unsigned char *>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned char *>>(result, v11);
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned char *>>(result[4], v11);
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned char *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::deque<unsigned char>::__move_and_check(int a1, char *a2, char *__src, char *a4, char *a5, void **a6, char *__dst, unint64_t *a8)
{
  if (a5 != __src)
  {
    v10 = __src;
    v11 = a2;
    v12 = &a5[512 * (a4 - a2)] - __src - *a4 + *a2;
    if (v12 >= 1)
    {
      do
      {
        v14 = *v11 + 4096;
        if (v14 - v10 >= v12)
        {
          v15 = v12;
        }

        else
        {
          v15 = v14 - v10;
        }

        if (v14 - v10 <= v12)
        {
          v16 = *v11 + 4096;
        }

        else
        {
          v16 = &v10[v12];
        }

        v17 = *a8;
        if (v10 <= *a8 && v17 < v16)
        {
          if (v10 != __dst && __dst - v10 + ((a6 - v11) << 9) + *v11 != *a6)
          {
            v19 = __dst - v10 + ((a6 - v11) << 9) - *a6 + v17;
            if (v19 < 1)
            {
              v17 = *&v11[-8 * ((4095 - v19) >> 12)] + (~(4095 - v19) & 0xFFF);
            }

            else
            {
              v17 = *&v11[(v19 >> 9) & 0x7FFFFFFFFFFFF8] + (v19 & 0xFFF);
            }
          }

          *a8 = v17;
        }

        if (v10 != v16)
        {
          v30 = v15;
          v21 = *a6++;
          v20 = v21;
          v22 = v10;
          while (1)
          {
            v23 = v20 - __dst + 4096;
            if ((v16 - v22) >= v23)
            {
              v24 = v23;
            }

            else
            {
              v24 = v16 - v22;
            }

            if (v24)
            {
              memmove(__dst, v22, v24);
            }

            v22 += v24;
            if (v22 == v16)
            {
              break;
            }

            v25 = *a6++;
            v20 = v25;
            __dst = v25;
          }

          __dst += v24;
          if (*(a6 - 1) + 4096 == __dst)
          {
            __dst = *a6;
          }

          else
          {
            --a6;
          }

          v15 = v30;
        }

        if (v14 != v10)
        {
          v26 = &v10[v15 - *v11];
          if (v26 < 1)
          {
            v27 = 4095 - v26;
            v11 -= 8 * (v27 >> 12);
            v10 = (*v11 + (~v27 & 0xFFF));
          }

          else
          {
            v11 += 8 * (v26 >> 12);
            v10 = (*v11 + (v26 & 0xFFF));
          }
        }

        v28 = v12 <= v15;
        v12 -= v15;
      }

      while (!v28);
    }
  }

  return a6;
}

uint64_t *std::__deque_iterator<unsigned char,unsigned char *,unsigned char &,unsigned char **,long,4096l>::operator+[abi:ne200100](uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = *(a1 + 8) - *result + a2;
    if (v4 < 1)
    {
      result -= (4095 - v4) >> 12;
      v6 = *result;
    }

    else
    {
      result += v4 >> 12;
      v5 = *result;
    }
  }

  return result;
}

void *std::deque<unsigned char>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1000;
  v3 = v1 - 4096;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned char *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<unsigned char *>::emplace_back<unsigned char *>(a1, &v10);
}

void sub_2415A2B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

char *std::deque<unsigned char>::__move_backward_and_check(uint64_t a1, char *a2, char *a3, char *a4, char *a5, char *a6, char *a7, unint64_t *a8)
{
  if (a5 != a3)
  {
    v10 = a5;
    v11 = a4;
    v12 = &a5[512 * (a4 - a2)] - a3 - *a4 + *a2;
    if (v12 >= 1)
    {
      while (1)
      {
        v14 = *v11;
        if (v10 == *v11)
        {
          v15 = *(v11 - 1);
          v11 -= 8;
          v14 = v15;
          v10 = v15 + 4096;
        }

        v16 = v10 - 1;
        if (v10 - v14 >= v12)
        {
          v17 = v12;
        }

        else
        {
          v17 = v10 - v14;
        }

        if (v10 - v14 <= v12)
        {
          v18 = v14;
        }

        else
        {
          v18 = &v10[-v12];
        }

        v19 = *a8;
        v20 = *a8 >= v10 || v18 > v19;
        if (v20)
        {
          goto LABEL_23;
        }

        if (v16 == a7)
        {
          break;
        }

        v21 = &v14[512 * (a6 - v11) + a7 - v10 - *a6];
        if (v21)
        {
          goto LABEL_19;
        }

LABEL_22:
        *a8 = v19;
LABEL_23:
        if (v18 != v10)
        {
          v23 = *a6;
          while (1)
          {
            v24 = &a7[-v23];
            if (v10 - v18 >= v24)
            {
              v25 = v24;
            }

            else
            {
              v25 = v10 - v18;
            }

            v10 -= v25;
            a7 -= v25;
            if (v25)
            {
              memmove(a7, v10, v25);
            }

            if (v10 == v18)
            {
              break;
            }

            v26 = *(a6 - 1);
            a6 -= 8;
            v23 = v26;
            a7 = (v26 + 4096);
          }

          if ((*a6 + 4096) == a7)
          {
            v27 = *(a6 + 1);
            a6 += 8;
            a7 = v27;
          }
        }

        if (v17 != 1)
        {
          v28 = &v16[-*v11 - v17];
          if (v28 > 0x7FFFFFFFFFFFFFFELL)
          {
            v30 = 4094 - v28;
            v11 -= 8 * (v30 >> 12);
            v16 = (*v11 + (~v30 & 0xFFF));
          }

          else
          {
            v29 = v28 + 1;
            v11 += 8 * (v29 >> 12);
            v16 = (*v11 + (v29 & 0xFFF));
          }
        }

        v10 = v16;
        v20 = v12 <= v17;
        v12 -= v17;
        if (v20)
        {
          return a6;
        }
      }

      v21 = -1;
LABEL_19:
      v22 = v21 + v19 - v14;
      if (v22 < 1)
      {
        v19 = *&v11[-8 * ((4095 - v22) >> 12)] + (~(4095 - v22) & 0xFFF);
      }

      else
      {
        v19 = *&v11[(v22 >> 9) & 0x7FFFFFFFFFFFF8] + (v22 & 0xFFF);
      }

      goto LABEL_22;
    }
  }

  return a6;
}

uint64_t *std::__deque_iterator<unsigned char,unsigned char *,unsigned char &,unsigned char **,long,4096l>::operator-[abi:ne200100](uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = *(a1 + 8) - a2 - *result;
    if (v4 < 1)
    {
      result -= (4095 - v4) >> 12;
      v6 = *result;
    }

    else
    {
      result += v4 >> 12;
      v5 = *result;
    }
  }

  return result;
}

uint64_t (**std::any_cast[abi:ne200100]<float const>(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, MEMORY[0x277D827B0], &std::__any_imp::__unique_typeinfo<float>::__id);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t (**std::any_cast[abi:ne200100]<unsigned int const>(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, MEMORY[0x277D827C8], &std::__any_imp::__unique_typeinfo<unsigned int>::__id);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t (**std::any_cast[abi:ne200100]<BOOL const>(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, MEMORY[0x277D82798], &std::__any_imp::__unique_typeinfo<BOOL>::__id);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

void BufferedAudioBus::init(BufferedAudioBus *this, AVAudioFormat *a2, uint64_t a3)
{
  v8 = a2;
  *(this + 2) = 0;
  v5 = *(this + 2);
  *(this + 2) = 0;

  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = [objc_alloc(MEMORY[0x277CEFD20]) initWithFormat:v8 error:0];
  v7 = *this;
  *this = v6;

  [*this setMaximumChannelCount:a3];
}

void sub_2415A3F80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BufferedAudioBus::allocateRenderResources(BufferedAudioBus *this, int a2)
{
  *(this + 2) = a2;
  v3 = objc_alloc(MEMORY[0x277CB83C8]);
  v4 = [*this format];
  v5 = [v3 initWithPCMFormat:v4 frameCapacity:*(this + 2)];
  v6 = *(this + 2);
  *(this + 2) = v5;

  *(this + 3) = [*(this + 2) audioBufferList];
  result = [*(this + 2) mutableAudioBufferList];
  *(this + 4) = result;
  return result;
}

uint64_t BufferedInputBus::pullInput(BufferedInputBus *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a6;
  if (v11)
  {
    BufferedInputBus::prepareInputBufferList(a1);
    v12 = v11[2](v11, a2, a3, a4, a5, a1->mutableAudioBufferList);
  }

  else
  {
    v12 = 4294956420;
  }

  return v12;
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

BufferedInputBus *BufferedInputBus::prepareInputBufferList(BufferedInputBus *this)
{
  maxFrames = this->maxFrames;
  originalAudioBufferList = this->originalAudioBufferList;
  mutableAudioBufferList = this->mutableAudioBufferList;
  mNumberBuffers = originalAudioBufferList->mNumberBuffers;
  mutableAudioBufferList->mNumberBuffers = mNumberBuffers;
  if (mNumberBuffers)
  {
    v5 = 4 * maxFrames;
    p_mData = &originalAudioBufferList->mBuffers[0].mData;
    v7 = &mutableAudioBufferList->mBuffers[0].mData;
    do
    {
      v8 = *(p_mData - 2);
      v9 = *p_mData;
      p_mData += 2;
      *v7 = v9;
      *(v7 - 2) = v8;
      *(v7 - 1) = v5;
      v7 += 2;
      --mNumberBuffers;
    }

    while (mNumberBuffers);
  }

  return this;
}

void *___Z16NewAudioCapturer20AudioCapturerOptionsPKcS1_jPK27AudioStreamBasicDescriptionRS3__block_invoke()
{
  result = dlopen(_ZZZ16NewAudioCapturer20AudioCapturerOptionsPKcS1_jPK27AudioStreamBasicDescriptionRS3_EUb_E8kLibPath, 5);
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

void DecodedDataMessage::DecodedDataMessage(DecodedDataMessage *this, AUPasscodeDecoder *a2)
{
  v3 = a2;
  *(this + 4) = 0;
  *this = &unk_28533DDE0;
  *(this + 1) = 0;
  v4 = v3;
  *(this + 3) = v4;
  std::vector<unsigned char>::vector[abi:ne200100](this + 4, 256);
  *(this + 14) = 0;
  *(this + 60) = 0;
}

void sub_2415A4EA8(_Unwind_Exception *a1)
{
  caulk::concurrent::message::~message(v1);

  _Unwind_Resume(a1);
}

void DecodedDataMessage::~DecodedDataMessage(DecodedDataMessage *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  caulk::concurrent::message::~message(this);
}

{
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x245CEA790);
}

void sub_2415A4FE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<DecodedDataMessage>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      *(v2 + 40) = v3;
      operator delete(v3);
    }

    caulk::concurrent::message::~message(v2);

    JUMPOUT(0x245CEA790);
  }

  return result;
}

uint64_t std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MEMORY[0x245CEA6D0]();

    JUMPOUT(0x245CEA790);
  }

  return result;
}

void sub_2415A5ED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2415A624C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2415A70C8(_Unwind_Exception *a1)
{
  v9 = v6;

  _Unwind_Resume(a1);
}

void sub_2415A72B8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2415A74B4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2415A85C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void EOFReachedMessage::~EOFReachedMessage(EOFReachedMessage *this)
{

  caulk::concurrent::message::~message(this);
}

{

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x245CEA790);
}

void std::default_delete<EOFReachedMessage>::operator()[abi:ne200100](uint64_t a1, id *a2)
{
  if (a2)
  {

    caulk::concurrent::message::~message(a2);

    JUMPOUT(0x245CEA790);
  }
}

OpaqueExtAudioFile *std::unique_ptr<OpaqueExtAudioFile,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueExtAudioFile*,&(ExtAudioFileDispose)>>::reset[abi:ne200100](OpaqueExtAudioFile **a1, OpaqueExtAudioFile *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    return ExtAudioFileDispose(result);
  }

  return result;
}

void sub_2415AA8D8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);

  _Unwind_Resume(a1);
}

void sub_2415AA9FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *std::vector<float>::assign(void *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a2 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 62))
    {
      v8 = v6 >> 1;
      if (v6 >> 1 <= a2)
      {
        v8 = a2;
      }

      if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v9 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<float>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v10 = a1[1];
  v11 = (v10 - result) >> 2;
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = (v10 - result) >> 2;
  }

  if (v12)
  {
    v13 = 0;
    a4.i32[0] = *a3;
    v14 = (v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = vdupq_n_s64(v12 - 1);
    v16 = result + 2;
    do
    {
      v17 = vdupq_n_s64(v13);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_2415AC930)));
      if (vuzp1_s16(v18, a4).u8[0])
      {
        *(v16 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v18, a4).i8[2])
      {
        *(v16 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_2415AC920)))).i32[1])
      {
        *v16 = a4.i32[0];
        v16[1] = a4.i32[0];
      }

      v13 += 4;
      v16 += 4;
    }

    while (v14 != v13);
  }

  v19 = a2 >= v11;
  v20 = a2 - v11;
  if (v20 != 0 && v19)
  {
    v21 = 0;
    v22 = v10 + 4 * v20;
    a4.i32[0] = *a3;
    v23 = (4 * a2 - (v10 - result) - 4) >> 2;
    v24 = vdupq_n_s64(v23);
    v25 = (v10 + 8);
    do
    {
      v26 = vdupq_n_s64(v21);
      v27 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_2415AC930)));
      if (vuzp1_s16(v27, a4).u8[0])
      {
        *(v25 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v27, a4).i8[2])
      {
        *(v25 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_2415AC920)))).i32[1])
      {
        *v25 = a4.i32[0];
        v25[1] = a4.i32[0];
      }

      v21 += 4;
      v25 += 4;
    }

    while (((v23 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v21);
    a1[1] = v22;
  }

  else
  {
    a1[1] = &result[a2];
  }

  return result;
}

void *std::vector<char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2415AB0A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void APCLogObject()
{
  if (__cxa_guard_acquire(&qword_27E548BB0))
  {
    _MergedGlobals = os_log_create("com.apple.audiopasscode", "");

    __cxa_guard_release(&qword_27E548BB0);
  }
}

void EchoEmbedder::EchoEmbedder(void **a1, void **a2, uint64_t a3)
{
  v5 = *a1;
  if (v5)
  {
    *(a3 + 72) = v5;
    operator delete(v5);
  }

  v6 = *a2;
  if (*a2)
  {
    *(a3 + 48) = v6;

    operator delete(v6);
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}
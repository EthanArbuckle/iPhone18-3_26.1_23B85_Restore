void sub_1DE2714C4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long>,std::vector<unsigned short>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (((v4 >> 3) & 0x8000000000000000) == 0)
    {
      std::allocator<short>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned short>>::dispatch;
}

void sub_1DE2715C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long>,std::vector<int>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<int>>::dispatch;
}

void sub_1DE2716C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long>,std::vector<unsigned int>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned int>>::dispatch;
}

void sub_1DE2717C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Implementation::create_vector_of_numbers_from<std::vector<long>,std::vector<long>>(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long>>::dispatch;
  return result;
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long>,std::vector<unsigned long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long>>::dispatch;
}

void sub_1DE271934(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long>,std::vector<long long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long long>>::dispatch;
}

void sub_1DE271A34(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long>,std::vector<unsigned long long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long long>>::dispatch;
}

void sub_1DE271B34(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long>,std::vector<float>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<float>>::dispatch;
}

void sub_1DE271C38(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long>,std::vector<double>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<double>>::dispatch;
}

void sub_1DE271D3C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long>,std::vector<long double>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long double>::__init_with_size[abi:ne200100]<long double *,long double *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long double>>::dispatch;
}

void sub_1DE271E40(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long>,applesauce::CF::ArrayRef>(void *a1, uint64_t **a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    valuePtr = *v5;
    v7 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::NumberRef>(Mutable, v7);
    CFRelease(v7);
    ++v5;
  }

  mcp_applesauce::CF::Array_Builder::copy_array(&valuePtr, Mutable);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = valuePtr;
  a1[1] = 0;
  a1[4] = AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::dispatch;
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1DE271F94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  mcp_applesauce::CF::Array_Builder::~Array_Builder(va1);
  _Unwind_Resume(a1);
}

void std::allocator<unsigned long>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t AMCP::Implementation::In_Place_Storage<std::vector<unsigned int>>::dispatch(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v11 = AMCP::Implementation::get_type_marker<std::vector<unsigned int>>();
        result = 0;
        *a4 = v11;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned int>>())
      {
        return a2;
      }

      else
      {
        return 0;
      }

      return result;
    }

    if (result == 5)
    {
      v12 = AMCP::Implementation::get_type_marker<std::vector<unsigned int>>();
      v13 = a2[4];
      *&v27 = 0;
      if (v13)
      {
        v13(3, a2, 0, &v27);
        v13 = v27;
      }

      if (v13 != v12)
      {
        goto LABEL_30;
      }

      v14 = *(a3 + 32);
      v30 = 0;
      if (v14)
      {
        v14(3, a3, 0, &v30);
        v14 = v30;
      }

      if (v14 == v12)
      {
        if (a2[4])
        {
          *&v27 = AMCP::Implementation::get_type_marker<std::vector<unsigned int>>();
          v15 = (a2[4])(4, a2, 0, &v27);
        }

        else
        {
          v15 = 0;
        }

        *&v27 = AMCP::Implementation::get_type_marker<std::vector<unsigned int>>();
        v23 = (*(a3 + 32))(4, a3, 0, &v27);
        v24 = *(v15 + 8) - *v15;
        if (v24 != *(v23 + 8) - *v23 || memcmp(*v15, *v23, v24))
        {
          return 0;
        }
      }

      else
      {
LABEL_30:
        AMCP::Thing::convert_to<std::vector<unsigned int>>(&v27, a2);
        AMCP::Thing::convert_to<std::vector<unsigned int>>(&v30, a3);
        v16 = v27;
        v17 = v30;
        v18 = *(&v27 + 1) - v27 == v31 - v30 && memcmp(v27, v30, *(&v27 + 1) - v27) == 0;
        if (v17)
        {
          operator delete(v17);
        }

        if (v16)
        {
          operator delete(v16);
        }

        if (!v18)
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

    if (!AMCP::is_one_of<std::vector<BOOL>,std::vector<char>,std::vector<signed char>,std::vector<unsigned char>,std::vector<short>,std::vector<unsigned short>,std::vector<int>,std::vector<unsigned int>,std::vector<long>,std::vector<unsigned long>,std::vector<long long>,std::vector<unsigned long long>,std::vector<float>,std::vector<double>,std::vector<long double>,applesauce::CF::ArrayRef>(a4))
    {
      goto LABEL_95;
    }

    if (a2[4])
    {
      *&v27 = AMCP::Implementation::get_type_marker<std::vector<unsigned int>>();
      v9 = (a2[4])(4, a2, 0, &v27);
    }

    else
    {
      v9 = 0;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<BOOL>>())
    {
      if (v9)
      {
        v19 = *v9;
        v20 = v9[1];
        v31 = 0;
        v32 = 0;
        v30 = 0;
        if (v20 != v19)
        {
          std::vector<BOOL>::__vallocate[abi:ne200100](&v30, (v20 - v19) >> 2);
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        std::vector<BOOL>::vector(&v27, &v30);
        v29 = AMCP::Implementation::In_Place_Storage<std::vector<BOOL>>::dispatch;
        if (v30)
        {
          operator delete(v30);
        }

        goto LABEL_96;
      }

LABEL_86:
      __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<char>>())
    {
      if (!v9)
      {
        goto LABEL_86;
      }

      v21 = v9[1];
      if (v21 != *v9)
      {
        if ((((v21 - *v9) >> 2) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(&v27, 0, 0, 0);
      v26 = AMCP::Implementation::In_Place_Storage<std::vector<char>>::dispatch;
LABEL_72:
      v29 = v26;
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<signed char>>())
    {
      if (!v9)
      {
        goto LABEL_86;
      }

      v22 = v9[1];
      if (v22 != *v9)
      {
        if ((((v22 - *v9) >> 2) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(&v27, 0, 0, 0);
      v26 = AMCP::Implementation::In_Place_Storage<std::vector<signed char>>::dispatch;
      goto LABEL_72;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned char>>())
    {
      if (!v9)
      {
        goto LABEL_86;
      }

      v25 = v9[1];
      if (v25 != *v9)
      {
        if ((((v25 - *v9) >> 2) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v27, 0, 0, 0);
      v26 = AMCP::Implementation::In_Place_Storage<std::vector<unsigned char>>::dispatch;
      goto LABEL_72;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<short>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned int>,std::vector<short>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned short>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned int>,std::vector<unsigned short>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<int>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned int>,std::vector<int>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned int>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned int>,std::vector<unsigned int>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned int>,std::vector<long>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned int>,std::vector<unsigned long>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned int>,std::vector<long long>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned long long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned int>,std::vector<unsigned long long>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<float>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned int>,std::vector<float>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<double>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned int>,std::vector<double>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long double>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned int>,std::vector<long double>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned int>,applesauce::CF::ArrayRef>(&v27, v9);
    }

    else
    {
LABEL_95:
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
    }

LABEL_96:
    AMCP::swap(&v27, a3, v8);
    if (v29)
    {
      v29(0, &v27, 0, 0);
    }

    return 0;
  }

  switch(result)
  {
    case 0:
      v10 = *a2;
      if (*a2)
      {
        a2[1] = v10;
        operator delete(v10);
      }

      result = 0;
      a2[4] = 0;
      v7 = 0uLL;
      goto LABEL_19;
    case 1:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a3, *a2, a2[1], (a2[1] - *a2) >> 2);
      result = 0;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned int>>::dispatch;
      return result;
    case 2:
      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 16) = a2[2];
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned int>>::dispatch;
      a2[4] = 0;
LABEL_19:
      *a2 = v7;
      *(a2 + 1) = v7;
      break;
  }

  return result;
}

void sub_1DE27277C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (v14)
  {
    operator delete(v14);
  }

  __clang_call_terminate(a1);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned int>,std::vector<short>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (((v4 >> 2) & 0x8000000000000000) == 0)
    {
      std::allocator<short>::allocate_at_least[abi:ne200100](v4 >> 2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<short>>::dispatch;
}

void sub_1DE2728E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned int>,std::vector<unsigned short>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (((v4 >> 2) & 0x8000000000000000) == 0)
    {
      std::allocator<short>::allocate_at_least[abi:ne200100](v4 >> 2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned short>>::dispatch;
}

void sub_1DE2729E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned int>,std::vector<int>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 2) >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4 >> 2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<int>>::dispatch;
}

void sub_1DE272AE4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned int>,std::vector<unsigned int>>(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned int>>::dispatch;
  return result;
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned int>,std::vector<long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 2) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long>>::dispatch;
}

void sub_1DE272C58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned int>,std::vector<unsigned long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 2) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long>>::dispatch;
}

void sub_1DE272D58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned int>,std::vector<long long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 2) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long long>>::dispatch;
}

void sub_1DE272E58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned int>,std::vector<unsigned long long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 2) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long long>>::dispatch;
}

void sub_1DE272F58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned int>,std::vector<float>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 2) >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4 >> 2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<float>>::dispatch;
}

void sub_1DE27305C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned int>,std::vector<double>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 2) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<double>>::dispatch;
}

void sub_1DE273160(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned int>,std::vector<long double>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 2) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long double>::__init_with_size[abi:ne200100]<long double *,long double *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long double>>::dispatch;
}

void sub_1DE273264(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned int>,applesauce::CF::ArrayRef>(void *a1, int **a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v9[1] = Mutable;
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    valuePtr = *v5;
    v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v9[0] = v7;
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::NumberRef>(Mutable, v7);
    CFRelease(v7);
    ++v5;
  }

  mcp_applesauce::CF::Array_Builder::copy_array(v9, Mutable);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = v9[0];
  a1[1] = 0;
  a1[4] = AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::dispatch;
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1DE2733B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  mcp_applesauce::CF::Array_Builder::~Array_Builder(va1);
  _Unwind_Resume(a1);
}

void std::vector<long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<unsigned long>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE273490(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Implementation::In_Place_Storage<std::vector<int>>::dispatch(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v11 = AMCP::Implementation::get_type_marker<std::vector<int>>();
        result = 0;
        *a4 = v11;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<std::vector<int>>())
      {
        return a2;
      }

      else
      {
        return 0;
      }

      return result;
    }

    if (result == 5)
    {
      v12 = AMCP::Implementation::get_type_marker<std::vector<int>>();
      v13 = a2[4];
      *&v27 = 0;
      if (v13)
      {
        v13(3, a2, 0, &v27);
        v13 = v27;
      }

      if (v13 != v12)
      {
        goto LABEL_30;
      }

      v14 = *(a3 + 32);
      v30 = 0;
      if (v14)
      {
        v14(3, a3, 0, &v30);
        v14 = v30;
      }

      if (v14 == v12)
      {
        if (a2[4])
        {
          *&v27 = AMCP::Implementation::get_type_marker<std::vector<int>>();
          v15 = (a2[4])(4, a2, 0, &v27);
        }

        else
        {
          v15 = 0;
        }

        *&v27 = AMCP::Implementation::get_type_marker<std::vector<int>>();
        v23 = (*(a3 + 32))(4, a3, 0, &v27);
        v24 = *(v15 + 8) - *v15;
        if (v24 != *(v23 + 8) - *v23 || memcmp(*v15, *v23, v24))
        {
          return 0;
        }
      }

      else
      {
LABEL_30:
        AMCP::Thing::convert_to<std::vector<int>>(&v27, a2);
        AMCP::Thing::convert_to<std::vector<int>>(&v30, a3);
        v16 = v27;
        v17 = v30;
        v18 = *(&v27 + 1) - v27 == v31 - v30 && memcmp(v27, v30, *(&v27 + 1) - v27) == 0;
        if (v17)
        {
          operator delete(v17);
        }

        if (v16)
        {
          operator delete(v16);
        }

        if (!v18)
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

    if (!AMCP::is_one_of<std::vector<BOOL>,std::vector<char>,std::vector<signed char>,std::vector<unsigned char>,std::vector<short>,std::vector<unsigned short>,std::vector<int>,std::vector<unsigned int>,std::vector<long>,std::vector<unsigned long>,std::vector<long long>,std::vector<unsigned long long>,std::vector<float>,std::vector<double>,std::vector<long double>,applesauce::CF::ArrayRef>(a4))
    {
      goto LABEL_95;
    }

    if (a2[4])
    {
      *&v27 = AMCP::Implementation::get_type_marker<std::vector<int>>();
      v9 = (a2[4])(4, a2, 0, &v27);
    }

    else
    {
      v9 = 0;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<BOOL>>())
    {
      if (v9)
      {
        v19 = *v9;
        v20 = v9[1];
        v31 = 0;
        v32 = 0;
        v30 = 0;
        if (v20 != v19)
        {
          std::vector<BOOL>::__vallocate[abi:ne200100](&v30, (v20 - v19) >> 2);
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        std::vector<BOOL>::vector(&v27, &v30);
        v29 = AMCP::Implementation::In_Place_Storage<std::vector<BOOL>>::dispatch;
        if (v30)
        {
          operator delete(v30);
        }

        goto LABEL_96;
      }

LABEL_86:
      __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<char>>())
    {
      if (!v9)
      {
        goto LABEL_86;
      }

      v21 = v9[1];
      if (v21 != *v9)
      {
        if ((((v21 - *v9) >> 2) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(&v27, 0, 0, 0);
      v26 = AMCP::Implementation::In_Place_Storage<std::vector<char>>::dispatch;
LABEL_72:
      v29 = v26;
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<signed char>>())
    {
      if (!v9)
      {
        goto LABEL_86;
      }

      v22 = v9[1];
      if (v22 != *v9)
      {
        if ((((v22 - *v9) >> 2) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(&v27, 0, 0, 0);
      v26 = AMCP::Implementation::In_Place_Storage<std::vector<signed char>>::dispatch;
      goto LABEL_72;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned char>>())
    {
      if (!v9)
      {
        goto LABEL_86;
      }

      v25 = v9[1];
      if (v25 != *v9)
      {
        if ((((v25 - *v9) >> 2) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v27, 0, 0, 0);
      v26 = AMCP::Implementation::In_Place_Storage<std::vector<unsigned char>>::dispatch;
      goto LABEL_72;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<short>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<int>,std::vector<short>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned short>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<int>,std::vector<unsigned short>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<int>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<int>,std::vector<int>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned int>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<int>,std::vector<unsigned int>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<int>,std::vector<long>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<int>,std::vector<unsigned long>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<int>,std::vector<long long>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned long long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<int>,std::vector<unsigned long long>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<float>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<int>,std::vector<float>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<double>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<int>,std::vector<double>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long double>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<int>,std::vector<long double>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<int>,applesauce::CF::ArrayRef>(&v27, v9);
    }

    else
    {
LABEL_95:
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
    }

LABEL_96:
    AMCP::swap(&v27, a3, v8);
    if (v29)
    {
      v29(0, &v27, 0, 0);
    }

    return 0;
  }

  switch(result)
  {
    case 0:
      v10 = *a2;
      if (*a2)
      {
        a2[1] = v10;
        operator delete(v10);
      }

      result = 0;
      a2[4] = 0;
      v7 = 0uLL;
      goto LABEL_19;
    case 1:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a3, *a2, a2[1], (a2[1] - *a2) >> 2);
      result = 0;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<int>>::dispatch;
      return result;
    case 2:
      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 16) = a2[2];
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<int>>::dispatch;
      a2[4] = 0;
LABEL_19:
      *a2 = v7;
      *(a2 + 1) = v7;
      break;
  }

  return result;
}

void sub_1DE273C14(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (v14)
  {
    operator delete(v14);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Thing::convert_to<std::vector<int>>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v4 = AMCP::Implementation::get_type_marker<std::vector<int>>();
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
    v6 = (*(a2 + 32))(4, a2, 0, v16);
    if (v6)
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, *v6, v6[1], (v6[1] - *v6) >> 2);
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<std::vector<int>>();
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
  v8 = v17(4, v16, 0, &v15);
  if (!v8)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, *v8, v8[1], (v8[1] - *v8) >> 2);
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE273E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<int>,std::vector<short>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (((v4 >> 2) & 0x8000000000000000) == 0)
    {
      std::allocator<short>::allocate_at_least[abi:ne200100](v4 >> 2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<short>>::dispatch;
}

void sub_1DE273F5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<int>,std::vector<unsigned short>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (((v4 >> 2) & 0x8000000000000000) == 0)
    {
      std::allocator<short>::allocate_at_least[abi:ne200100](v4 >> 2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned short>>::dispatch;
}

void sub_1DE274058(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Implementation::create_vector_of_numbers_from<std::vector<int>,std::vector<int>>(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<int>>::dispatch;
  return result;
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<int>,std::vector<unsigned int>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 2) >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4 >> 2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned int>>::dispatch;
}

void sub_1DE2741CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<int>,std::vector<long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 2) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long>>::dispatch;
}

void sub_1DE2742CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<int>,std::vector<unsigned long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 2) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long>>::dispatch;
}

void sub_1DE2743CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<int>,std::vector<long long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 2) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long long>>::dispatch;
}

void sub_1DE2744CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<int>,std::vector<unsigned long long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 2) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long long>>::dispatch;
}

void sub_1DE2745CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<int>,std::vector<float>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 2) >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4 >> 2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<float>>::dispatch;
}

void sub_1DE2746D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<int>,std::vector<double>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 2) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<double>>::dispatch;
}

void sub_1DE2747D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<int>,std::vector<long double>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 2) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long double>::__init_with_size[abi:ne200100]<long double *,long double *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long double>>::dispatch;
}

void sub_1DE2748D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<int>,applesauce::CF::ArrayRef>(void *a1, int **a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v9[1] = Mutable;
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    valuePtr = *v5;
    v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v9[0] = v7;
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::NumberRef>(Mutable, v7);
    CFRelease(v7);
    ++v5;
  }

  mcp_applesauce::CF::Array_Builder::copy_array(v9, Mutable);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = v9[0];
  a1[1] = 0;
  a1[4] = AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::dispatch;
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1DE274A2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  mcp_applesauce::CF::Array_Builder::~Array_Builder(va1);
  _Unwind_Resume(a1);
}

uint64_t std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE274AC4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Implementation::In_Place_Storage<std::vector<unsigned short>>::dispatch(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v11 = AMCP::Implementation::get_type_marker<std::vector<unsigned short>>();
        result = 0;
        *a4 = v11;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned short>>())
      {
        return a2;
      }

      else
      {
        return 0;
      }

      return result;
    }

    if (result == 5)
    {
      v12 = AMCP::Implementation::get_type_marker<std::vector<unsigned short>>();
      v13 = a2[4];
      *&v27 = 0;
      if (v13)
      {
        v13(3, a2, 0, &v27);
        v13 = v27;
      }

      if (v13 != v12)
      {
        goto LABEL_30;
      }

      v14 = *(a3 + 32);
      v30 = 0;
      if (v14)
      {
        v14(3, a3, 0, &v30);
        v14 = v30;
      }

      if (v14 == v12)
      {
        if (a2[4])
        {
          *&v27 = AMCP::Implementation::get_type_marker<std::vector<unsigned short>>();
          v15 = (a2[4])(4, a2, 0, &v27);
        }

        else
        {
          v15 = 0;
        }

        *&v27 = AMCP::Implementation::get_type_marker<std::vector<unsigned short>>();
        v23 = (*(a3 + 32))(4, a3, 0, &v27);
        v24 = *(v15 + 8) - *v15;
        if (v24 != *(v23 + 8) - *v23 || memcmp(*v15, *v23, v24))
        {
          return 0;
        }
      }

      else
      {
LABEL_30:
        AMCP::Thing::convert_to<std::vector<unsigned short>>(&v27, a2);
        AMCP::Thing::convert_to<std::vector<unsigned short>>(&v30, a3);
        v16 = v27;
        v17 = v30;
        v18 = *(&v27 + 1) - v27 == v31 - v30 && memcmp(v27, v30, *(&v27 + 1) - v27) == 0;
        if (v17)
        {
          operator delete(v17);
        }

        if (v16)
        {
          operator delete(v16);
        }

        if (!v18)
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

    if (!AMCP::is_one_of<std::vector<BOOL>,std::vector<char>,std::vector<signed char>,std::vector<unsigned char>,std::vector<short>,std::vector<unsigned short>,std::vector<int>,std::vector<unsigned int>,std::vector<long>,std::vector<unsigned long>,std::vector<long long>,std::vector<unsigned long long>,std::vector<float>,std::vector<double>,std::vector<long double>,applesauce::CF::ArrayRef>(a4))
    {
      goto LABEL_95;
    }

    if (a2[4])
    {
      *&v27 = AMCP::Implementation::get_type_marker<std::vector<unsigned short>>();
      v9 = (a2[4])(4, a2, 0, &v27);
    }

    else
    {
      v9 = 0;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<BOOL>>())
    {
      if (v9)
      {
        v19 = *v9;
        v20 = v9[1];
        v31 = 0;
        v32 = 0;
        v30 = 0;
        if (v20 != v19)
        {
          std::vector<BOOL>::__vallocate[abi:ne200100](&v30, (v20 - v19) >> 1);
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        std::vector<BOOL>::vector(&v27, &v30);
        v29 = AMCP::Implementation::In_Place_Storage<std::vector<BOOL>>::dispatch;
        if (v30)
        {
          operator delete(v30);
        }

        goto LABEL_96;
      }

LABEL_86:
      __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<char>>())
    {
      if (!v9)
      {
        goto LABEL_86;
      }

      v21 = v9[1];
      if (v21 != *v9)
      {
        if ((((v21 - *v9) >> 1) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(&v27, 0, 0, 0);
      v26 = AMCP::Implementation::In_Place_Storage<std::vector<char>>::dispatch;
LABEL_72:
      v29 = v26;
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<signed char>>())
    {
      if (!v9)
      {
        goto LABEL_86;
      }

      v22 = v9[1];
      if (v22 != *v9)
      {
        if ((((v22 - *v9) >> 1) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(&v27, 0, 0, 0);
      v26 = AMCP::Implementation::In_Place_Storage<std::vector<signed char>>::dispatch;
      goto LABEL_72;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned char>>())
    {
      if (!v9)
      {
        goto LABEL_86;
      }

      v25 = v9[1];
      if (v25 != *v9)
      {
        if ((((v25 - *v9) >> 1) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v27, 0, 0, 0);
      v26 = AMCP::Implementation::In_Place_Storage<std::vector<unsigned char>>::dispatch;
      goto LABEL_72;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<short>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned short>,std::vector<short>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned short>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned short>,std::vector<unsigned short>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<int>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned short>,std::vector<int>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned int>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned short>,std::vector<unsigned int>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned short>,std::vector<long>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned short>,std::vector<unsigned long>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned short>,std::vector<long long>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned long long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned short>,std::vector<unsigned long long>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<float>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned short>,std::vector<float>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<double>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned short>,std::vector<double>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long double>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned short>,std::vector<long double>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned short>,applesauce::CF::ArrayRef>(&v27, v9);
    }

    else
    {
LABEL_95:
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
    }

LABEL_96:
    AMCP::swap(&v27, a3, v8);
    if (v29)
    {
      v29(0, &v27, 0, 0);
    }

    return 0;
  }

  switch(result)
  {
    case 0:
      v10 = *a2;
      if (*a2)
      {
        a2[1] = v10;
        operator delete(v10);
      }

      result = 0;
      a2[4] = 0;
      v7 = 0uLL;
      goto LABEL_19;
    case 1:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a3, *a2, a2[1], (a2[1] - *a2) >> 1);
      result = 0;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned short>>::dispatch;
      return result;
    case 2:
      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 16) = a2[2];
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned short>>::dispatch;
      a2[4] = 0;
LABEL_19:
      *a2 = v7;
      *(a2 + 1) = v7;
      break;
  }

  return result;
}

void sub_1DE275248(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (v14)
  {
    operator delete(v14);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Thing::convert_to<std::vector<unsigned short>>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v4 = AMCP::Implementation::get_type_marker<std::vector<unsigned short>>();
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
    v6 = (*(a2 + 32))(4, a2, 0, v16);
    if (v6)
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a1, *v6, v6[1], (v6[1] - *v6) >> 1);
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<std::vector<unsigned short>>();
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
  v8 = v17(4, v16, 0, &v15);
  if (!v8)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a1, *v8, v8[1], (v8[1] - *v8) >> 1);
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE27548C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned short>,std::vector<short>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (((v4 >> 1) & 0x8000000000000000) == 0)
    {
      std::allocator<short>::allocate_at_least[abi:ne200100](v4 >> 1);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<short>>::dispatch;
}

void sub_1DE275590(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned short>,std::vector<unsigned short>>(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a1, *a2, a2[1], (a2[1] - *a2) >> 1);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned short>>::dispatch;
  return result;
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned short>,std::vector<int>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 1) >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4 >> 1);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<int>>::dispatch;
}

void sub_1DE275704(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned short>,std::vector<unsigned int>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 1) >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4 >> 1);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned int>>::dispatch;
}

void sub_1DE275804(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned short>,std::vector<long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 1) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 1);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long>>::dispatch;
}

void sub_1DE275904(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned short>,std::vector<unsigned long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 1) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 1);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long>>::dispatch;
}

void sub_1DE275A04(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned short>,std::vector<long long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 1) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 1);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long long>>::dispatch;
}

void sub_1DE275B04(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned short>,std::vector<unsigned long long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 1) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 1);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long long>>::dispatch;
}

void sub_1DE275C04(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned short>,std::vector<float>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 1) >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4 >> 1);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<float>>::dispatch;
}

void sub_1DE275D08(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned short>,std::vector<double>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 1) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 1);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<double>>::dispatch;
}

void sub_1DE275E0C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned short>,std::vector<long double>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 1) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 1);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long double>::__init_with_size[abi:ne200100]<long double *,long double *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long double>>::dispatch;
}

void sub_1DE275F10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned short>,applesauce::CF::ArrayRef>(void *a1, __int16 **a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v9[1] = Mutable;
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    valuePtr = *v5;
    v7 = CFNumberCreate(0, kCFNumberShortType, &valuePtr);
    v9[0] = v7;
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::NumberRef>(Mutable, v7);
    CFRelease(v7);
    ++v5;
  }

  mcp_applesauce::CF::Array_Builder::copy_array(v9, Mutable);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = v9[0];
  a1[1] = 0;
  a1[4] = AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::dispatch;
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1DE276064(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  mcp_applesauce::CF::Array_Builder::~Array_Builder(va1);
  _Unwind_Resume(a1);
}

uint64_t std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE2760FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Implementation::In_Place_Storage<std::vector<short>>::dispatch(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v11 = AMCP::Implementation::get_type_marker<std::vector<short>>();
        result = 0;
        *a4 = v11;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<std::vector<short>>())
      {
        return a2;
      }

      else
      {
        return 0;
      }

      return result;
    }

    if (result == 5)
    {
      v12 = AMCP::Implementation::get_type_marker<std::vector<short>>();
      v13 = a2[4];
      *&v27 = 0;
      if (v13)
      {
        v13(3, a2, 0, &v27);
        v13 = v27;
      }

      if (v13 != v12)
      {
        goto LABEL_30;
      }

      v14 = *(a3 + 32);
      v30 = 0;
      if (v14)
      {
        v14(3, a3, 0, &v30);
        v14 = v30;
      }

      if (v14 == v12)
      {
        if (a2[4])
        {
          *&v27 = AMCP::Implementation::get_type_marker<std::vector<short>>();
          v15 = (a2[4])(4, a2, 0, &v27);
        }

        else
        {
          v15 = 0;
        }

        *&v27 = AMCP::Implementation::get_type_marker<std::vector<short>>();
        v23 = (*(a3 + 32))(4, a3, 0, &v27);
        v24 = *(v15 + 8) - *v15;
        if (v24 != *(v23 + 8) - *v23 || memcmp(*v15, *v23, v24))
        {
          return 0;
        }
      }

      else
      {
LABEL_30:
        AMCP::Thing::convert_to<std::vector<short>>(&v27, a2);
        AMCP::Thing::convert_to<std::vector<short>>(&v30, a3);
        v16 = v27;
        v17 = v30;
        v18 = *(&v27 + 1) - v27 == v31 - v30 && memcmp(v27, v30, *(&v27 + 1) - v27) == 0;
        if (v17)
        {
          operator delete(v17);
        }

        if (v16)
        {
          operator delete(v16);
        }

        if (!v18)
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

    if (!AMCP::is_one_of<std::vector<BOOL>,std::vector<char>,std::vector<signed char>,std::vector<unsigned char>,std::vector<short>,std::vector<unsigned short>,std::vector<int>,std::vector<unsigned int>,std::vector<long>,std::vector<unsigned long>,std::vector<long long>,std::vector<unsigned long long>,std::vector<float>,std::vector<double>,std::vector<long double>,applesauce::CF::ArrayRef>(a4))
    {
      goto LABEL_95;
    }

    if (a2[4])
    {
      *&v27 = AMCP::Implementation::get_type_marker<std::vector<short>>();
      v9 = (a2[4])(4, a2, 0, &v27);
    }

    else
    {
      v9 = 0;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<BOOL>>())
    {
      if (v9)
      {
        v19 = *v9;
        v20 = v9[1];
        v31 = 0;
        v32 = 0;
        v30 = 0;
        if (v20 != v19)
        {
          std::vector<BOOL>::__vallocate[abi:ne200100](&v30, (v20 - v19) >> 1);
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        std::vector<BOOL>::vector(&v27, &v30);
        v29 = AMCP::Implementation::In_Place_Storage<std::vector<BOOL>>::dispatch;
        if (v30)
        {
          operator delete(v30);
        }

        goto LABEL_96;
      }

LABEL_86:
      __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<char>>())
    {
      if (!v9)
      {
        goto LABEL_86;
      }

      v21 = v9[1];
      if (v21 != *v9)
      {
        if ((((v21 - *v9) >> 1) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(&v27, 0, 0, 0);
      v26 = AMCP::Implementation::In_Place_Storage<std::vector<char>>::dispatch;
LABEL_72:
      v29 = v26;
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<signed char>>())
    {
      if (!v9)
      {
        goto LABEL_86;
      }

      v22 = v9[1];
      if (v22 != *v9)
      {
        if ((((v22 - *v9) >> 1) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(&v27, 0, 0, 0);
      v26 = AMCP::Implementation::In_Place_Storage<std::vector<signed char>>::dispatch;
      goto LABEL_72;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned char>>())
    {
      if (!v9)
      {
        goto LABEL_86;
      }

      v25 = v9[1];
      if (v25 != *v9)
      {
        if ((((v25 - *v9) >> 1) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v27, 0, 0, 0);
      v26 = AMCP::Implementation::In_Place_Storage<std::vector<unsigned char>>::dispatch;
      goto LABEL_72;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<short>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<short>,std::vector<short>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned short>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<short>,std::vector<unsigned short>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<int>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<short>,std::vector<int>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned int>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<short>,std::vector<unsigned int>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<short>,std::vector<long>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<short>,std::vector<unsigned long>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<short>,std::vector<long long>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned long long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<short>,std::vector<unsigned long long>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<float>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<short>,std::vector<float>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<double>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<short>,std::vector<double>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long double>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<short>,std::vector<long double>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<short>,applesauce::CF::ArrayRef>(&v27, v9);
    }

    else
    {
LABEL_95:
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
    }

LABEL_96:
    AMCP::swap(&v27, a3, v8);
    if (v29)
    {
      v29(0, &v27, 0, 0);
    }

    return 0;
  }

  switch(result)
  {
    case 0:
      v10 = *a2;
      if (*a2)
      {
        a2[1] = v10;
        operator delete(v10);
      }

      result = 0;
      a2[4] = 0;
      v7 = 0uLL;
      goto LABEL_19;
    case 1:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(a3, *a2, a2[1], (a2[1] - *a2) >> 1);
      result = 0;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<short>>::dispatch;
      return result;
    case 2:
      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 16) = a2[2];
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<short>>::dispatch;
      a2[4] = 0;
LABEL_19:
      *a2 = v7;
      *(a2 + 1) = v7;
      break;
  }

  return result;
}

void sub_1DE276880(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (v14)
  {
    operator delete(v14);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Thing::convert_to<std::vector<short>>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v4 = AMCP::Implementation::get_type_marker<std::vector<short>>();
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
    v6 = (*(a2 + 32))(4, a2, 0, v16);
    if (v6)
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(a1, *v6, v6[1], (v6[1] - *v6) >> 1);
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<std::vector<short>>();
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
  v8 = v17(4, v16, 0, &v15);
  if (!v8)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(a1, *v8, v8[1], (v8[1] - *v8) >> 1);
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE276AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::create_vector_of_numbers_from<std::vector<short>,std::vector<short>>(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(a1, *a2, a2[1], (a2[1] - *a2) >> 1);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<short>>::dispatch;
  return result;
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<short>,std::vector<unsigned short>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (((v4 >> 1) & 0x8000000000000000) == 0)
    {
      std::allocator<short>::allocate_at_least[abi:ne200100](v4 >> 1);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned short>>::dispatch;
}

void sub_1DE276C3C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<short>,std::vector<int>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 1) >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4 >> 1);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<int>>::dispatch;
}

void sub_1DE276D3C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<short>,std::vector<unsigned int>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 1) >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4 >> 1);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned int>>::dispatch;
}

void sub_1DE276E3C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<short>,std::vector<long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 1) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 1);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long>>::dispatch;
}

void sub_1DE276F3C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<short>,std::vector<unsigned long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 1) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 1);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long>>::dispatch;
}

void sub_1DE27703C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<short>,std::vector<long long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 1) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 1);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long long>>::dispatch;
}

void sub_1DE27713C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<short>,std::vector<unsigned long long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 1) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 1);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long long>>::dispatch;
}

void sub_1DE27723C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<short>,std::vector<float>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 1) >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4 >> 1);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<float>>::dispatch;
}

void sub_1DE277340(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<short>,std::vector<double>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 1) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 1);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<double>>::dispatch;
}

void sub_1DE277444(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<short>,std::vector<long double>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 1) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 1);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long double>::__init_with_size[abi:ne200100]<long double *,long double *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long double>>::dispatch;
}

void sub_1DE277548(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<short>,applesauce::CF::ArrayRef>(void *a1, __int16 **a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v9[1] = Mutable;
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    valuePtr = *v5;
    v7 = CFNumberCreate(0, kCFNumberShortType, &valuePtr);
    v9[0] = v7;
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::NumberRef>(Mutable, v7);
    CFRelease(v7);
    ++v5;
  }

  mcp_applesauce::CF::Array_Builder::copy_array(v9, Mutable);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = v9[0];
  a1[1] = 0;
  a1[4] = AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::dispatch;
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1DE27769C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  mcp_applesauce::CF::Array_Builder::~Array_Builder(va1);
  _Unwind_Resume(a1);
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

void std::vector<short>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::allocator<short>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

void std::allocator<short>::allocate_at_least[abi:ne200100](uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t AMCP::Implementation::In_Place_Storage<std::vector<unsigned char>>::dispatch(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v11 = AMCP::Implementation::get_type_marker<std::vector<unsigned char>>();
        result = 0;
        *a4 = v11;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned char>>())
      {
        return a2;
      }

      else
      {
        return 0;
      }

      return result;
    }

    if (result == 5)
    {
      v12 = AMCP::Implementation::get_type_marker<std::vector<unsigned char>>();
      v13 = a2[4];
      *&v26 = 0;
      if (v13)
      {
        v13(3, a2, 0, &v26);
        v13 = v26;
      }

      if (v13 != v12)
      {
        goto LABEL_30;
      }

      v14 = *(a3 + 32);
      v29 = 0;
      if (v14)
      {
        v14(3, a3, 0, &v29);
        v14 = v29;
      }

      if (v14 == v12)
      {
        if (a2[4])
        {
          *&v26 = AMCP::Implementation::get_type_marker<std::vector<unsigned char>>();
          v15 = (a2[4])(4, a2, 0, &v26);
        }

        else
        {
          v15 = 0;
        }

        *&v26 = AMCP::Implementation::get_type_marker<std::vector<unsigned char>>();
        v23 = (*(a3 + 32))(4, a3, 0, &v26);
        v24 = *(v15 + 8) - *v15;
        if (v24 != *(v23 + 8) - *v23 || memcmp(*v15, *v23, v24))
        {
          return 0;
        }
      }

      else
      {
LABEL_30:
        AMCP::Thing::convert_to<std::vector<unsigned char>>(&v26, a2);
        AMCP::Thing::convert_to<std::vector<unsigned char>>(&v29, a3);
        v16 = v26;
        v17 = v29;
        v18 = *(&v26 + 1) - v26 == v30 - v29 && memcmp(v26, v29, *(&v26 + 1) - v26) == 0;
        if (v17)
        {
          operator delete(v17);
        }

        if (v16)
        {
          operator delete(v16);
        }

        if (!v18)
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

    if (AMCP::is_one_of<std::vector<BOOL>,std::vector<char>,std::vector<signed char>,std::vector<unsigned char>,std::vector<short>,std::vector<unsigned short>,std::vector<int>,std::vector<unsigned int>,std::vector<long>,std::vector<unsigned long>,std::vector<long long>,std::vector<unsigned long long>,std::vector<float>,std::vector<double>,std::vector<long double>,applesauce::CF::ArrayRef>(a4))
    {
      if (a2[4])
      {
        *&v26 = AMCP::Implementation::get_type_marker<std::vector<unsigned char>>();
        v9 = (a2[4])(4, a2, 0, &v26);
      }

      else
      {
        v9 = 0;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<BOOL>>())
      {
        if (v9)
        {
          v19 = *v9;
          v20 = v9[1];
          v30 = 0;
          v31 = 0;
          v29 = 0;
          if (v20 != v19)
          {
            std::vector<BOOL>::__vallocate[abi:ne200100](&v29, v20 - v19);
          }

          v28 = 0;
          v26 = 0u;
          v27 = 0u;
          std::vector<BOOL>::vector(&v26, &v29);
          v28 = AMCP::Implementation::In_Place_Storage<std::vector<BOOL>>::dispatch;
          if (v29)
          {
            operator delete(v29);
          }

          goto LABEL_93;
        }

LABEL_83:
        __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<char>>())
      {
        if (!v9)
        {
          goto LABEL_83;
        }

        v21 = v9[1];
        if (v21 != *v9)
        {
          if (((v21 - *v9) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v28 = 0;
        v26 = 0u;
        v27 = 0u;
        std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(&v26, 0, 0, 0);
        v25 = AMCP::Implementation::In_Place_Storage<std::vector<char>>::dispatch;
LABEL_67:
        v28 = v25;
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<signed char>>())
      {
        if (!v9)
        {
          goto LABEL_83;
        }

        v22 = v9[1];
        if (v22 != *v9)
        {
          if (((v22 - *v9) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v28 = 0;
        v26 = 0u;
        v27 = 0u;
        std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(&v26, 0, 0, 0);
        v25 = AMCP::Implementation::In_Place_Storage<std::vector<signed char>>::dispatch;
        goto LABEL_67;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned char>>())
      {
        if (!v9)
        {
          goto LABEL_83;
        }

        v28 = 0;
        v26 = 0u;
        v27 = 0u;
        std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v26, *v9, v9[1], v9[1] - *v9);
        v28 = AMCP::Implementation::In_Place_Storage<std::vector<unsigned char>>::dispatch;
LABEL_93:
        AMCP::swap(&v26, a3, v8);
        if (v28)
        {
          v28(0, &v26, 0, 0);
        }

        return 0;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<short>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned char>,std::vector<short>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned short>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned char>,std::vector<unsigned short>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<int>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned char>,std::vector<int>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned int>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned char>,std::vector<unsigned int>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned char>,std::vector<long>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned long>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned char>,std::vector<unsigned long>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long long>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned char>,std::vector<long long>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned long long>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned char>,std::vector<unsigned long long>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<float>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned char>,std::vector<float>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<double>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned char>,std::vector<double>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long double>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned char>,std::vector<long double>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned char>,applesauce::CF::ArrayRef>(&v26, v9);
        goto LABEL_93;
      }
    }

    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    goto LABEL_93;
  }

  switch(result)
  {
    case 0:
      v10 = *a2;
      if (*a2)
      {
        a2[1] = v10;
        operator delete(v10);
      }

      result = 0;
      a2[4] = 0;
      v7 = 0uLL;
      goto LABEL_19;
    case 1:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, *a2, a2[1], a2[1] - *a2);
      result = 0;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned char>>::dispatch;
      return result;
    case 2:
      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 16) = a2[2];
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned char>>::dispatch;
      a2[4] = 0;
LABEL_19:
      *a2 = v7;
      *(a2 + 1) = v7;
      break;
  }

  return result;
}

void sub_1DE277EA0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (v14)
  {
    operator delete(v14);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Thing::convert_to<std::vector<unsigned char>>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v4 = AMCP::Implementation::get_type_marker<std::vector<unsigned char>>();
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
    v6 = (*(a2 + 32))(4, a2, 0, v16);
    if (v6)
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1, *v6, v6[1], v6[1] - *v6);
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<std::vector<unsigned char>>();
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
  v8 = v17(4, v16, 0, &v15);
  if (!v8)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1, *v8, v8[1], v8[1] - *v8);
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE2780D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned char>,std::vector<short>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      std::allocator<short>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<short>>::dispatch;
}

void sub_1DE2781D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned char>,std::vector<unsigned short>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      std::allocator<short>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned short>>::dispatch;
}

void sub_1DE2782CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned char>,std::vector<int>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!(v4 >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<int>>::dispatch;
}

void sub_1DE2783C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned char>,std::vector<unsigned int>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!(v4 >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned int>>::dispatch;
}

void sub_1DE2784C4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned char>,std::vector<long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!(v4 >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long>>::dispatch;
}

void sub_1DE2785C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned char>,std::vector<unsigned long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!(v4 >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long>>::dispatch;
}

void sub_1DE2786BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned char>,std::vector<long long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!(v4 >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long long>>::dispatch;
}

void sub_1DE2787B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned char>,std::vector<unsigned long long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!(v4 >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long long>>::dispatch;
}

void sub_1DE2788B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned char>,std::vector<float>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!(v4 >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<float>>::dispatch;
}

void sub_1DE2789B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned char>,std::vector<double>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!(v4 >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<double>>::dispatch;
}

void sub_1DE278AB4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned char>,std::vector<long double>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!(v4 >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long double>::__init_with_size[abi:ne200100]<long double *,long double *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long double>>::dispatch;
}

void sub_1DE278BB4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned char>,applesauce::CF::ArrayRef>(void *a1, char **a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v9[1] = Mutable;
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    valuePtr = *v5;
    v7 = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
    v9[0] = v7;
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::NumberRef>(Mutable, v7);
    CFRelease(v7);
    ++v5;
  }

  mcp_applesauce::CF::Array_Builder::copy_array(v9, Mutable);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = v9[0];
  a1[1] = 0;
  a1[4] = AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::dispatch;
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1DE278D08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  mcp_applesauce::CF::Array_Builder::~Array_Builder(va1);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::In_Place_Storage<std::vector<signed char>>::dispatch(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v11 = AMCP::Implementation::get_type_marker<std::vector<signed char>>();
        result = 0;
        *a4 = v11;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<std::vector<signed char>>())
      {
        return a2;
      }

      else
      {
        return 0;
      }

      return result;
    }

    if (result == 5)
    {
      v12 = AMCP::Implementation::get_type_marker<std::vector<signed char>>();
      v13 = a2[4];
      *&v26 = 0;
      if (v13)
      {
        v13(3, a2, 0, &v26);
        v13 = v26;
      }

      if (v13 != v12)
      {
        goto LABEL_30;
      }

      v14 = *(a3 + 32);
      v29 = 0;
      if (v14)
      {
        v14(3, a3, 0, &v29);
        v14 = v29;
      }

      if (v14 == v12)
      {
        if (a2[4])
        {
          *&v26 = AMCP::Implementation::get_type_marker<std::vector<signed char>>();
          v15 = (a2[4])(4, a2, 0, &v26);
        }

        else
        {
          v15 = 0;
        }

        *&v26 = AMCP::Implementation::get_type_marker<std::vector<signed char>>();
        v22 = (*(a3 + 32))(4, a3, 0, &v26);
        v23 = *(v15 + 8) - *v15;
        if (v23 != *(v22 + 8) - *v22 || memcmp(*v15, *v22, v23))
        {
          return 0;
        }
      }

      else
      {
LABEL_30:
        AMCP::Thing::convert_to<std::vector<signed char>>(&v26, a2);
        AMCP::Thing::convert_to<std::vector<signed char>>(&v29, a3);
        v16 = v26;
        v17 = v29;
        v18 = *(&v26 + 1) - v26 == v30 - v29 && memcmp(v26, v29, *(&v26 + 1) - v26) == 0;
        if (v17)
        {
          operator delete(v17);
        }

        if (v16)
        {
          operator delete(v16);
        }

        if (!v18)
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

    if (AMCP::is_one_of<std::vector<BOOL>,std::vector<char>,std::vector<signed char>,std::vector<unsigned char>,std::vector<short>,std::vector<unsigned short>,std::vector<int>,std::vector<unsigned int>,std::vector<long>,std::vector<unsigned long>,std::vector<long long>,std::vector<unsigned long long>,std::vector<float>,std::vector<double>,std::vector<long double>,applesauce::CF::ArrayRef>(a4))
    {
      if (a2[4])
      {
        *&v26 = AMCP::Implementation::get_type_marker<std::vector<signed char>>();
        v9 = (a2[4])(4, a2, 0, &v26);
      }

      else
      {
        v9 = 0;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<BOOL>>())
      {
        if (v9)
        {
          v19 = *v9;
          v20 = v9[1];
          v30 = 0;
          v31 = 0;
          v29 = 0;
          if (v20 != v19)
          {
            std::vector<BOOL>::__vallocate[abi:ne200100](&v29, v20 - v19);
          }

          v28 = 0;
          v26 = 0u;
          v27 = 0u;
          std::vector<BOOL>::vector(&v26, &v29);
          v28 = AMCP::Implementation::In_Place_Storage<std::vector<BOOL>>::dispatch;
          if (v29)
          {
            operator delete(v29);
          }

          goto LABEL_93;
        }

LABEL_83:
        __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<char>>())
      {
        if (!v9)
        {
          goto LABEL_83;
        }

        v21 = v9[1];
        if (v21 != *v9)
        {
          if (((v21 - *v9) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v28 = 0;
        v26 = 0u;
        v27 = 0u;
        std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(&v26, 0, 0, 0);
        v25 = AMCP::Implementation::In_Place_Storage<std::vector<char>>::dispatch;
LABEL_64:
        v28 = v25;
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<signed char>>())
      {
        if (!v9)
        {
          goto LABEL_83;
        }

        v28 = 0;
        v26 = 0u;
        v27 = 0u;
        std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(&v26, *v9, v9[1], v9[1] - *v9);
        v28 = AMCP::Implementation::In_Place_Storage<std::vector<signed char>>::dispatch;
LABEL_93:
        AMCP::swap(&v26, a3, v8);
        if (v28)
        {
          v28(0, &v26, 0, 0);
        }

        return 0;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned char>>())
      {
        if (!v9)
        {
          goto LABEL_83;
        }

        v24 = v9[1];
        if (v24 != *v9)
        {
          if (((v24 - *v9) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v28 = 0;
        v26 = 0u;
        v27 = 0u;
        std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v26, 0, 0, 0);
        v25 = AMCP::Implementation::In_Place_Storage<std::vector<unsigned char>>::dispatch;
        goto LABEL_64;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<short>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<signed char>,std::vector<short>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned short>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<signed char>,std::vector<unsigned short>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<int>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<signed char>,std::vector<int>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned int>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<signed char>,std::vector<unsigned int>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<signed char>,std::vector<long>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned long>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<signed char>,std::vector<unsigned long>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long long>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<signed char>,std::vector<long long>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned long long>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<signed char>,std::vector<unsigned long long>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<float>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<signed char>,std::vector<float>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<double>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<signed char>,std::vector<double>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long double>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<signed char>,std::vector<long double>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<signed char>,applesauce::CF::ArrayRef>(&v26, v9);
        goto LABEL_93;
      }
    }

    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    goto LABEL_93;
  }

  switch(result)
  {
    case 0:
      v10 = *a2;
      if (*a2)
      {
        a2[1] = v10;
        operator delete(v10);
      }

      result = 0;
      a2[4] = 0;
      v7 = 0uLL;
      goto LABEL_19;
    case 1:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(a3, *a2, a2[1], a2[1] - *a2);
      result = 0;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<signed char>>::dispatch;
      return result;
    case 2:
      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 16) = a2[2];
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<signed char>>::dispatch;
      a2[4] = 0;
LABEL_19:
      *a2 = v7;
      *(a2 + 1) = v7;
      break;
  }

  return result;
}

void sub_1DE279448(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (v14)
  {
    operator delete(v14);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Thing::convert_to<std::vector<signed char>>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v4 = AMCP::Implementation::get_type_marker<std::vector<signed char>>();
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
    v6 = (*(a2 + 32))(4, a2, 0, v16);
    if (v6)
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(a1, *v6, v6[1], v6[1] - *v6);
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<std::vector<signed char>>();
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
  v8 = v17(4, v16, 0, &v15);
  if (!v8)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(a1, *v8, v8[1], v8[1] - *v8);
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE27967C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<signed char>,std::vector<short>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      std::allocator<short>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<short>>::dispatch;
}

void sub_1DE27977C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<signed char>,std::vector<unsigned short>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      std::allocator<short>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned short>>::dispatch;
}

void sub_1DE279874(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<signed char>,std::vector<int>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!(v4 >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<int>>::dispatch;
}

void sub_1DE279970(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<signed char>,std::vector<unsigned int>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!(v4 >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned int>>::dispatch;
}

void sub_1DE279A6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<signed char>,std::vector<long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!(v4 >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long>>::dispatch;
}

void sub_1DE279B68(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<signed char>,std::vector<unsigned long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!(v4 >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long>>::dispatch;
}

void sub_1DE279C64(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<signed char>,std::vector<long long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!(v4 >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long long>>::dispatch;
}

void sub_1DE279D60(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<signed char>,std::vector<unsigned long long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!(v4 >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long long>>::dispatch;
}

void sub_1DE279E5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<signed char>,std::vector<float>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!(v4 >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<float>>::dispatch;
}

void sub_1DE279F5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<signed char>,std::vector<double>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!(v4 >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<double>>::dispatch;
}

void sub_1DE27A05C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<signed char>,std::vector<long double>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!(v4 >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long double>::__init_with_size[abi:ne200100]<long double *,long double *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long double>>::dispatch;
}

void sub_1DE27A15C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<signed char>,applesauce::CF::ArrayRef>(void *a1, char **a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v9[1] = Mutable;
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    valuePtr = *v5;
    v7 = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
    v9[0] = v7;
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::NumberRef>(Mutable, v7);
    CFRelease(v7);
    ++v5;
  }

  mcp_applesauce::CF::Array_Builder::copy_array(v9, Mutable);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = v9[0];
  a1[1] = 0;
  a1[4] = AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::dispatch;
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1DE27A2B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  mcp_applesauce::CF::Array_Builder::~Array_Builder(va1);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::In_Place_Storage<std::vector<char>>::dispatch(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v11 = AMCP::Implementation::get_type_marker<std::vector<char>>();
        result = 0;
        *a4 = v11;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<std::vector<char>>())
      {
        return a2;
      }

      else
      {
        return 0;
      }

      return result;
    }

    if (result == 5)
    {
      v12 = AMCP::Implementation::get_type_marker<std::vector<char>>();
      v13 = a2[4];
      *&v26 = 0;
      if (v13)
      {
        v13(3, a2, 0, &v26);
        v13 = v26;
      }

      if (v13 != v12)
      {
        goto LABEL_30;
      }

      v14 = *(a3 + 32);
      v29 = 0;
      if (v14)
      {
        v14(3, a3, 0, &v29);
        v14 = v29;
      }

      if (v14 == v12)
      {
        if (a2[4])
        {
          *&v26 = AMCP::Implementation::get_type_marker<std::vector<char>>();
          v15 = (a2[4])(4, a2, 0, &v26);
        }

        else
        {
          v15 = 0;
        }

        *&v26 = AMCP::Implementation::get_type_marker<std::vector<char>>();
        v22 = (*(a3 + 32))(4, a3, 0, &v26);
        v23 = *(v15 + 8) - *v15;
        if (v23 != *(v22 + 8) - *v22 || memcmp(*v15, *v22, v23))
        {
          return 0;
        }
      }

      else
      {
LABEL_30:
        AMCP::Thing::convert_to<std::vector<char>>(&v26, a2);
        AMCP::Thing::convert_to<std::vector<char>>(&v29, a3);
        v16 = v26;
        v17 = v29;
        v18 = *(&v26 + 1) - v26 == v30 - v29 && memcmp(v26, v29, *(&v26 + 1) - v26) == 0;
        if (v17)
        {
          operator delete(v17);
        }

        if (v16)
        {
          operator delete(v16);
        }

        if (!v18)
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

    if (AMCP::is_one_of<std::vector<BOOL>,std::vector<char>,std::vector<signed char>,std::vector<unsigned char>,std::vector<short>,std::vector<unsigned short>,std::vector<int>,std::vector<unsigned int>,std::vector<long>,std::vector<unsigned long>,std::vector<long long>,std::vector<unsigned long long>,std::vector<float>,std::vector<double>,std::vector<long double>,applesauce::CF::ArrayRef>(a4))
    {
      if (a2[4])
      {
        *&v26 = AMCP::Implementation::get_type_marker<std::vector<char>>();
        v9 = (a2[4])(4, a2, 0, &v26);
      }

      else
      {
        v9 = 0;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<BOOL>>())
      {
        if (v9)
        {
          v19 = *v9;
          v20 = v9[1];
          v30 = 0;
          v31 = 0;
          v29 = 0;
          if (v20 != v19)
          {
            std::vector<BOOL>::__vallocate[abi:ne200100](&v29, v20 - v19);
          }

          v28 = 0;
          v26 = 0u;
          v27 = 0u;
          std::vector<BOOL>::vector(&v26, &v29);
          v28 = AMCP::Implementation::In_Place_Storage<std::vector<BOOL>>::dispatch;
          if (v29)
          {
            operator delete(v29);
          }

          goto LABEL_93;
        }

LABEL_83:
        __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<char>>())
      {
        if (!v9)
        {
          goto LABEL_83;
        }

        v28 = 0;
        v26 = 0u;
        v27 = 0u;
        std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(&v26, *v9, v9[1], v9[1] - *v9);
        v28 = AMCP::Implementation::In_Place_Storage<std::vector<char>>::dispatch;
LABEL_93:
        AMCP::swap(&v26, a3, v8);
        if (v28)
        {
          v28(0, &v26, 0, 0);
        }

        return 0;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<signed char>>())
      {
        if (!v9)
        {
          goto LABEL_83;
        }

        v21 = v9[1];
        if (v21 != *v9)
        {
          if (((v21 - *v9) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v28 = 0;
        v26 = 0u;
        v27 = 0u;
        std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(&v26, 0, 0, 0);
        v25 = AMCP::Implementation::In_Place_Storage<std::vector<signed char>>::dispatch;
LABEL_69:
        v28 = v25;
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned char>>())
      {
        if (!v9)
        {
          goto LABEL_83;
        }

        v24 = v9[1];
        if (v24 != *v9)
        {
          if (((v24 - *v9) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v28 = 0;
        v26 = 0u;
        v27 = 0u;
        std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v26, 0, 0, 0);
        v25 = AMCP::Implementation::In_Place_Storage<std::vector<unsigned char>>::dispatch;
        goto LABEL_69;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<short>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<char>,std::vector<short>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned short>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<char>,std::vector<unsigned short>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<int>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<char>,std::vector<int>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned int>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<char>,std::vector<unsigned int>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<char>,std::vector<long>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned long>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<char>,std::vector<unsigned long>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long long>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<char>,std::vector<long long>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned long long>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<char>,std::vector<unsigned long long>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<float>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<char>,std::vector<float>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<double>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<char>,std::vector<double>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long double>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<char>,std::vector<long double>>(&v26, v9);
        goto LABEL_93;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<char>,applesauce::CF::ArrayRef>(&v26, v9);
        goto LABEL_93;
      }
    }

    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    goto LABEL_93;
  }

  switch(result)
  {
    case 0:
      v10 = *a2;
      if (*a2)
      {
        a2[1] = v10;
        operator delete(v10);
      }

      result = 0;
      a2[4] = 0;
      v7 = 0uLL;
      goto LABEL_19;
    case 1:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(a3, *a2, a2[1], a2[1] - *a2);
      result = 0;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<char>>::dispatch;
      return result;
    case 2:
      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 16) = a2[2];
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<char>>::dispatch;
      a2[4] = 0;
LABEL_19:
      *a2 = v7;
      *(a2 + 1) = v7;
      break;
  }

  return result;
}

void sub_1DE27A9F0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (v14)
  {
    operator delete(v14);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Thing::convert_to<std::vector<char>>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v4 = AMCP::Implementation::get_type_marker<std::vector<char>>();
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
    v6 = (*(a2 + 32))(4, a2, 0, v16);
    if (v6)
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(a1, *v6, v6[1], v6[1] - *v6);
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<std::vector<char>>();
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
  v8 = v17(4, v16, 0, &v15);
  if (!v8)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(a1, *v8, v8[1], v8[1] - *v8);
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE27AC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<char>,std::vector<short>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      std::allocator<short>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<short>>::dispatch;
}

void sub_1DE27AD24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<char>,std::vector<unsigned short>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      std::allocator<short>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned short>>::dispatch;
}

void sub_1DE27AE1C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<char>,std::vector<int>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!(v4 >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<int>>::dispatch;
}

void sub_1DE27AF18(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<char>,std::vector<unsigned int>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!(v4 >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned int>>::dispatch;
}

void sub_1DE27B014(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<char>,std::vector<long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!(v4 >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long>>::dispatch;
}

void sub_1DE27B110(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<char>,std::vector<unsigned long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!(v4 >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long>>::dispatch;
}

void sub_1DE27B20C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<char>,std::vector<long long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!(v4 >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long long>>::dispatch;
}

void sub_1DE27B308(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<char>,std::vector<unsigned long long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!(v4 >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long long>>::dispatch;
}

void sub_1DE27B404(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<char>,std::vector<float>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!(v4 >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<float>>::dispatch;
}

void sub_1DE27B504(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<char>,std::vector<double>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!(v4 >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<double>>::dispatch;
}

void sub_1DE27B604(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<char>,std::vector<long double>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!(v4 >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long double>::__init_with_size[abi:ne200100]<long double *,long double *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long double>>::dispatch;
}

void sub_1DE27B704(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<char>,applesauce::CF::ArrayRef>(void *a1, char **a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v9[1] = Mutable;
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    valuePtr = *v5;
    v7 = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
    v9[0] = v7;
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::NumberRef>(Mutable, v7);
    CFRelease(v7);
    ++v5;
  }

  mcp_applesauce::CF::Array_Builder::copy_array(v9, Mutable);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = v9[0];
  a1[1] = 0;
  a1[4] = AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::dispatch;
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1DE27B858(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  mcp_applesauce::CF::Array_Builder::~Array_Builder(va1);
  _Unwind_Resume(a1);
}

BOOL AMCP::Implementation::In_Place_Storage<std::vector<BOOL>>::dispatch(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v10 = AMCP::Implementation::get_type_marker<std::vector<BOOL>>();
        result = 0;
        *a4 = v10;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<std::vector<BOOL>>())
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

      if (!AMCP::is_one_of<std::vector<BOOL>,std::vector<char>,std::vector<signed char>,std::vector<unsigned char>,std::vector<short>,std::vector<unsigned short>,std::vector<int>,std::vector<unsigned int>,std::vector<long>,std::vector<unsigned long>,std::vector<long long>,std::vector<unsigned long long>,std::vector<float>,std::vector<double>,std::vector<long double>,applesauce::CF::ArrayRef>(a4))
      {
        goto LABEL_119;
      }

      if (*(a2 + 32))
      {
        v41[0] = AMCP::Implementation::get_type_marker<std::vector<BOOL>>();
        v9 = (*(a2 + 32))(4, a2, 0, v41);
      }

      else
      {
        v9 = 0;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<BOOL>>())
      {
        if (v9)
        {
          v43 = 0;
          *v41 = 0u;
          v42 = 0u;
          std::vector<BOOL>::vector(v41, v9);
          v43 = AMCP::Implementation::In_Place_Storage<std::vector<BOOL>>::dispatch;
          goto LABEL_120;
        }

LABEL_110:
        __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<char>>())
      {
        if (!v9)
        {
          goto LABEL_110;
        }

        v23 = v9[1];
        if (v23)
        {
          if ((v23 & 0x8000000000000000) == 0)
          {
            v24 = *v9;
            v25 = v9[1];
            operator new();
          }

          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v43 = 0;
        *v41 = 0u;
        v42 = 0u;
        std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(v41, 0, 0, 0);
        v40 = AMCP::Implementation::In_Place_Storage<std::vector<char>>::dispatch;
LABEL_97:
        v43 = v40;
        goto LABEL_120;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<signed char>>())
      {
        if (!v9)
        {
          goto LABEL_110;
        }

        v26 = v9[1];
        if (v26)
        {
          if ((v26 & 0x8000000000000000) == 0)
          {
            v27 = *v9;
            v28 = v9[1];
            operator new();
          }

          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v43 = 0;
        *v41 = 0u;
        v42 = 0u;
        std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(v41, 0, 0, 0);
        v40 = AMCP::Implementation::In_Place_Storage<std::vector<signed char>>::dispatch;
        goto LABEL_97;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned char>>())
      {
        if (!v9)
        {
          goto LABEL_110;
        }

        v37 = v9[1];
        if (v37)
        {
          if ((v37 & 0x8000000000000000) == 0)
          {
            v38 = *v9;
            v39 = v9[1];
            operator new();
          }

          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v43 = 0;
        *v41 = 0u;
        v42 = 0u;
        std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v41, 0, 0, 0);
        v40 = AMCP::Implementation::In_Place_Storage<std::vector<unsigned char>>::dispatch;
        goto LABEL_97;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<short>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<BOOL>,std::vector<short>>(v41, v9);
        goto LABEL_120;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned short>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<BOOL>,std::vector<unsigned short>>(v41, v9);
        goto LABEL_120;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<int>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<BOOL>,std::vector<int>>(v41, v9);
        goto LABEL_120;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned int>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<BOOL>,std::vector<unsigned int>>(v41, v9);
        goto LABEL_120;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<BOOL>,std::vector<long>>(v41, v9);
        goto LABEL_120;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned long>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<BOOL>,std::vector<unsigned long>>(v41, v9);
        goto LABEL_120;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long long>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<BOOL>,std::vector<long long>>(v41, v9);
        goto LABEL_120;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned long long>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<BOOL>,std::vector<unsigned long long>>(v41, v9);
        goto LABEL_120;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<float>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<BOOL>,std::vector<float>>(v41, v9);
        goto LABEL_120;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<double>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<BOOL>,std::vector<double>>(v41, v9);
        goto LABEL_120;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long double>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<BOOL>,std::vector<long double>>(v41, v9);
        goto LABEL_120;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<BOOL>,applesauce::CF::ArrayRef>(v41, v9);
      }

      else
      {
LABEL_119:
        v43 = 0;
        *v41 = 0u;
        v42 = 0u;
      }

LABEL_120:
      AMCP::swap(v41, a3, v8);
      if (v43)
      {
        (v43)(0, v41, 0, 0);
      }

      return 0;
    }

    v11 = AMCP::Implementation::get_type_marker<std::vector<BOOL>>();
    v12 = *(a2 + 32);
    v41[0] = 0;
    if (v12)
    {
      v12(3, a2, 0, v41);
      v12 = v41[0];
    }

    if (v12 == v11)
    {
      v13 = *(a3 + 32);
      __p[0] = 0;
      if (v13)
      {
        v13(3, a3, 0, __p);
        v13 = __p[0];
      }

      if (v13 == v11)
      {
        if (*(a2 + 32))
        {
          v41[0] = AMCP::Implementation::get_type_marker<std::vector<BOOL>>();
          v14 = (*(a2 + 32))(4, a2, 0, v41);
        }

        else
        {
          v14 = 0;
        }

        if (*(a3 + 32))
        {
          v41[0] = AMCP::Implementation::get_type_marker<std::vector<BOOL>>();
          v29 = (*(a3 + 32))(4, a3, 0, v41);
        }

        else
        {
          v29 = 0;
        }

        v30 = *(v14 + 8);
        if (v30 != *(v29 + 8))
        {
          return 0;
        }

        v31 = *v14;
        v32 = *(v14 + 8) & 0x3FLL;
        if (v30 > 0x3F || v32)
        {
          v33 = 0;
          v34 = 0;
          v35 = &v31[v30 >> 6];
          v36 = *v29;
          while (((*v31 >> v33) & 1) != (((*v36 >> v34) & 1) == 0))
          {
            v31 += v33 == 63;
            if (v33 == 63)
            {
              v33 = 0;
            }

            else
            {
              ++v33;
            }

            v36 += v34 == 63;
            if (v34 == 63)
            {
              v34 = 0;
            }

            else
            {
              ++v34;
            }

            if (v33 == v32 && v31 == v35)
            {
              return 1;
            }
          }

          return 0;
        }

        return 1;
      }
    }

    AMCP::Thing::convert_to<std::vector<BOOL>>(v41, a2);
    AMCP::Thing::convert_to<std::vector<BOOL>>(__p, a3);
    if (v41[1] == __p[1])
    {
      v15 = v41[0];
      v16 = __p[0];
      if (v41[1] > 0x3F || (v41[1] & 0x3F) != 0)
      {
        v17 = 0;
        v18 = 0;
        v19 = __p[0];
        while (1)
        {
          v20 = *v15 >> v17;
          v21 = ((*v19 >> v18) & 1) == 0;
          if ((v20 & 1) == v21)
          {
            break;
          }

          v15 += v17 == 63;
          if (v17 == 63)
          {
            v17 = 0;
          }

          else
          {
            ++v17;
          }

          v19 += v18 == 63;
          if (v18 == 63)
          {
            v18 = 0;
          }

          else
          {
            ++v18;
          }

          if (v17 == (v41[1] & 0x3F) && v15 == (v41[0] + 8 * (v41[1] >> 6)))
          {
            goto LABEL_43;
          }
        }

        v22 = v20 ^ v21;
        if (!__p[0])
        {
LABEL_47:
          if (v41[0])
          {
            operator delete(v41[0]);
          }

          return (v22 & 1) != 0;
        }
      }

      else
      {
LABEL_43:
        v22 = 1;
        if (!__p[0])
        {
          goto LABEL_47;
        }
      }
    }

    else
    {
      v22 = 0;
      v16 = __p[0];
      if (!__p[0])
      {
        goto LABEL_47;
      }
    }

    operator delete(v16);
    goto LABEL_47;
  }

  if (!result)
  {
    if (*a2)
    {
      operator delete(*a2);
    }

    result = 0;
    *(a2 + 32) = 0;
    v7 = 0uLL;
    goto LABEL_19;
  }

  if (result)
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    std::vector<BOOL>::vector(a3, a2);
    result = 0;
    *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<BOOL>>::dispatch;
    return result;
  }

  if (result == 2)
  {
    result = 0;
    v7 = 0uLL;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *a3 = *a2;
    *(a3 + 8) = *(a2 + 8);
    *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<BOOL>>::dispatch;
    *(a2 + 32) = 0;
LABEL_19:
    *a2 = v7;
    *(a2 + 16) = v7;
  }

  return result;
}

void sub_1DE27C0D0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (v9)
  {
    operator delete(v9);
  }

  __clang_call_terminate(a1);
}

void *AMCP::Thing::convert_to<std::vector<BOOL>>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v4 = AMCP::Implementation::get_type_marker<std::vector<BOOL>>();
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
    v6 = (*(a2 + 32))(4, a2, 0, v16);
    if (v6)
    {
      return std::vector<BOOL>::vector(a1, v6);
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<std::vector<BOOL>>();
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
  v8 = v17(4, v16, 0, &v15);
  if (!v8)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  result = std::vector<BOOL>::vector(a1, v8);
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE27C2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<BOOL>,std::vector<short>>(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  if (v3)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v4 = *a2;
      std::allocator<short>::allocate_at_least[abi:ne200100](a2[1]);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<short>>::dispatch;
}

void sub_1DE27C420(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<BOOL>,std::vector<unsigned short>>(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  if (v3)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v4 = *a2;
      std::allocator<short>::allocate_at_least[abi:ne200100](a2[1]);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned short>>::dispatch;
}

void sub_1DE27C558(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<BOOL>,std::vector<int>>(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  if (v3)
  {
    if (!(v3 >> 62))
    {
      v4 = *a2;
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](a2[1]);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<int>>::dispatch;
}

void sub_1DE27C694(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<BOOL>,std::vector<unsigned int>>(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  if (v3)
  {
    if (!(v3 >> 62))
    {
      v4 = *a2;
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](a2[1]);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned int>>::dispatch;
}

void sub_1DE27C7D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<BOOL>,std::vector<long>>(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  if (v3)
  {
    if (!(v3 >> 61))
    {
      v4 = *a2;
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](a2[1]);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long>>::dispatch;
}

void sub_1DE27C90C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<BOOL>,std::vector<unsigned long>>(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  if (v3)
  {
    if (!(v3 >> 61))
    {
      v4 = *a2;
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](a2[1]);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long>>::dispatch;
}

void sub_1DE27CA48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<BOOL>,std::vector<long long>>(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  if (v3)
  {
    if (!(v3 >> 61))
    {
      v4 = *a2;
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](a2[1]);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long long>>::dispatch;
}

void sub_1DE27CB84(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<BOOL>,std::vector<unsigned long long>>(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  if (v3)
  {
    if (!(v3 >> 61))
    {
      v4 = *a2;
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](a2[1]);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long long>>::dispatch;
}

void sub_1DE27CCC0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<BOOL>,std::vector<float>>(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  if (v3)
  {
    if (!(v3 >> 62))
    {
      v4 = *a2;
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](a2[1]);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<float>>::dispatch;
}

void sub_1DE27CE08(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<BOOL>,std::vector<double>>(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  if (v3)
  {
    if (!(v3 >> 61))
    {
      v4 = *a2;
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](a2[1]);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<double>>::dispatch;
}

void sub_1DE27CF50(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<BOOL>,std::vector<long double>>(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  if (v3)
  {
    if (!(v3 >> 61))
    {
      v4 = *a2;
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](a2[1]);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long double>::__init_with_size[abi:ne200100]<long double *,long double *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long double>>::dispatch;
}

void sub_1DE27D098(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<BOOL>,applesauce::CF::ArrayRef>(void *a1, uint64_t a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v13[1] = Mutable;
  v5 = *(a2 + 8);
  v6 = v5 & 0x3F;
  if (v5 > 0x3F || v6 != 0)
  {
    v8 = 0;
    v9 = *a2;
    v10 = *a2 + 8 * (v5 >> 6);
    do
    {
      valuePtr = (*v9 >> v8) & 1;
      v11 = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
      v13[0] = v11;
      if (!v11)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::NumberRef>(Mutable, v11);
      CFRelease(v11);
      v9 += v8 == 63;
      if (v8 == 63)
      {
        v8 = 0;
      }

      else
      {
        ++v8;
      }
    }

    while (v9 != v10 || v8 != v6);
  }

  mcp_applesauce::CF::Array_Builder::copy_array(v13, Mutable);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = v13[0];
  a1[1] = 0;
  a1[4] = AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::dispatch;
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1DE27D22C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  mcp_applesauce::CF::Array_Builder::~Array_Builder(va1);
  _Unwind_Resume(a1);
}

unint64_t applesauce::CF::convert_to<unsigned long long,0>(const __CFNumber *a1)
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
        v12 = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
        goto LABEL_17;
      case kCFNumberSInt32Type:
        LODWORD(valuePtr) = 0;
        v11 = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_38;
      case kCFNumberSInt64Type:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
        goto LABEL_31;
      case kCFNumberFloat32Type:
        LODWORD(valuePtr) = 0;
        v7 = CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
        goto LABEL_9;
      case kCFNumberFloat64Type:
        valuePtr = 0.0;
        v10 = CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
        goto LABEL_19;
      case kCFNumberCharType:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
LABEL_22:
        v16 = Value;
        LODWORD(v17) = Value != 0;
        if (Value)
        {
          v18 = LOBYTE(valuePtr);
        }

        else
        {
          v18 = 0;
        }

        if (SLOBYTE(valuePtr) < 0)
        {
          v17 = v17;
        }

        else
        {
          v17 = 0;
        }

        if (!v16)
        {
          goto LABEL_43;
        }

        return v18 | (v17 << 63 >> 63 << 8);
      case kCFNumberShortType:
        LOWORD(valuePtr) = 0;
        v12 = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
LABEL_17:
        v13 = v12;
        v14 = LOBYTE(valuePtr);
        v15 = SLOWORD(valuePtr);
        goto LABEL_39;
      case kCFNumberIntType:
        LODWORD(valuePtr) = 0;
        v11 = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
LABEL_38:
        v13 = v11;
        v14 = LOBYTE(valuePtr);
        v15 = SLODWORD(valuePtr);
LABEL_39:
        v19 = v15 & 0xFFFFFFFFFFFFFF00 | v14;
        if (v13)
        {
          result = v19;
        }

        else
        {
          result = 0;
        }

        if (!v13)
        {
          goto LABEL_43;
        }

        return result;
      case kCFNumberLongType:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
        goto LABEL_31;
      case kCFNumberLongLongType:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
        goto LABEL_31;
      case kCFNumberFloatType:
        LODWORD(valuePtr) = 0;
        v7 = CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
LABEL_9:
        v8 = v7;
        v9 = *&valuePtr;
        goto LABEL_32;
      case kCFNumberDoubleType:
        valuePtr = 0.0;
        v10 = CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
        goto LABEL_19;
      case kCFNumberCFIndexType:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
        goto LABEL_31;
      case kCFNumberNSIntegerType:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_31:
        v8 = v6;
        v9 = *&valuePtr;
        goto LABEL_32;
      case kCFNumberCGFloatType:
        valuePtr = 0.0;
        v10 = CFNumberGetValue(a1, kCFNumberCGFloatType, &valuePtr);
LABEL_19:
        v8 = v10;
        v9 = valuePtr;
LABEL_32:
        if (v8)
        {
          result = v9;
        }

        else
        {
          result = 0;
        }

        if (v8)
        {
          return result;
        }

        goto LABEL_43;
      default:
        goto LABEL_43;
    }
  }

  v4 = CFBooleanGetTypeID();
  if (v4 != CFGetTypeID(a1))
  {
LABEL_43:
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return CFBooleanGetValue(a1);
}

unint64_t applesauce::CF::convert_to<long long,0>(const __CFNumber *a1)
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
        v12 = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
        goto LABEL_17;
      case kCFNumberSInt32Type:
        LODWORD(valuePtr) = 0;
        v11 = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_38;
      case kCFNumberSInt64Type:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
        goto LABEL_31;
      case kCFNumberFloat32Type:
        LODWORD(valuePtr) = 0;
        v7 = CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
        goto LABEL_9;
      case kCFNumberFloat64Type:
        valuePtr = 0.0;
        v10 = CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
        goto LABEL_19;
      case kCFNumberCharType:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
LABEL_22:
        v16 = Value;
        LODWORD(v17) = Value != 0;
        if (Value)
        {
          v18 = LOBYTE(valuePtr);
        }

        else
        {
          v18 = 0;
        }

        if (SLOBYTE(valuePtr) < 0)
        {
          v17 = v17;
        }

        else
        {
          v17 = 0;
        }

        if (!v16)
        {
          goto LABEL_43;
        }

        return v18 | (v17 << 63 >> 63 << 8);
      case kCFNumberShortType:
        LOWORD(valuePtr) = 0;
        v12 = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
LABEL_17:
        v13 = v12;
        v14 = LOBYTE(valuePtr);
        v15 = SLOWORD(valuePtr);
        goto LABEL_39;
      case kCFNumberIntType:
        LODWORD(valuePtr) = 0;
        v11 = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
LABEL_38:
        v13 = v11;
        v14 = LOBYTE(valuePtr);
        v15 = SLODWORD(valuePtr);
LABEL_39:
        v19 = v15 & 0xFFFFFFFFFFFFFF00 | v14;
        if (v13)
        {
          result = v19;
        }

        else
        {
          result = 0;
        }

        if (!v13)
        {
          goto LABEL_43;
        }

        return result;
      case kCFNumberLongType:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
        goto LABEL_31;
      case kCFNumberLongLongType:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
        goto LABEL_31;
      case kCFNumberFloatType:
        LODWORD(valuePtr) = 0;
        v7 = CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
LABEL_9:
        v8 = v7;
        v9 = *&valuePtr;
        goto LABEL_32;
      case kCFNumberDoubleType:
        valuePtr = 0.0;
        v10 = CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
        goto LABEL_19;
      case kCFNumberCFIndexType:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
        goto LABEL_31;
      case kCFNumberNSIntegerType:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_31:
        v8 = v6;
        v9 = *&valuePtr;
        goto LABEL_32;
      case kCFNumberCGFloatType:
        valuePtr = 0.0;
        v10 = CFNumberGetValue(a1, kCFNumberCGFloatType, &valuePtr);
LABEL_19:
        v8 = v10;
        v9 = valuePtr;
LABEL_32:
        if (v8)
        {
          result = v9;
        }

        else
        {
          result = 0;
        }

        if (v8)
        {
          return result;
        }

        goto LABEL_43;
      default:
        goto LABEL_43;
    }
  }

  v4 = CFBooleanGetTypeID();
  if (v4 != CFGetTypeID(a1))
  {
LABEL_43:
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return CFBooleanGetValue(a1);
}

unint64_t applesauce::CF::convert_to<unsigned long,0>(const __CFNumber *a1)
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
        v12 = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
        goto LABEL_17;
      case kCFNumberSInt32Type:
        LODWORD(valuePtr) = 0;
        v11 = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_38;
      case kCFNumberSInt64Type:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
        goto LABEL_31;
      case kCFNumberFloat32Type:
        LODWORD(valuePtr) = 0;
        v7 = CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
        goto LABEL_9;
      case kCFNumberFloat64Type:
        valuePtr = 0.0;
        v10 = CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
        goto LABEL_19;
      case kCFNumberCharType:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
LABEL_22:
        v16 = Value;
        LODWORD(v17) = Value != 0;
        if (Value)
        {
          v18 = LOBYTE(valuePtr);
        }

        else
        {
          v18 = 0;
        }

        if (SLOBYTE(valuePtr) < 0)
        {
          v17 = v17;
        }

        else
        {
          v17 = 0;
        }

        if (!v16)
        {
          goto LABEL_43;
        }

        return v18 | (v17 << 63 >> 63 << 8);
      case kCFNumberShortType:
        LOWORD(valuePtr) = 0;
        v12 = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
LABEL_17:
        v13 = v12;
        v14 = LOBYTE(valuePtr);
        v15 = SLOWORD(valuePtr);
        goto LABEL_39;
      case kCFNumberIntType:
        LODWORD(valuePtr) = 0;
        v11 = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
LABEL_38:
        v13 = v11;
        v14 = LOBYTE(valuePtr);
        v15 = SLODWORD(valuePtr);
LABEL_39:
        v19 = v15 & 0xFFFFFFFFFFFFFF00 | v14;
        if (v13)
        {
          result = v19;
        }

        else
        {
          result = 0;
        }

        if (!v13)
        {
          goto LABEL_43;
        }

        return result;
      case kCFNumberLongType:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
        goto LABEL_31;
      case kCFNumberLongLongType:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
        goto LABEL_31;
      case kCFNumberFloatType:
        LODWORD(valuePtr) = 0;
        v7 = CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
LABEL_9:
        v8 = v7;
        v9 = *&valuePtr;
        goto LABEL_32;
      case kCFNumberDoubleType:
        valuePtr = 0.0;
        v10 = CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
        goto LABEL_19;
      case kCFNumberCFIndexType:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
        goto LABEL_31;
      case kCFNumberNSIntegerType:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_31:
        v8 = v6;
        v9 = *&valuePtr;
        goto LABEL_32;
      case kCFNumberCGFloatType:
        valuePtr = 0.0;
        v10 = CFNumberGetValue(a1, kCFNumberCGFloatType, &valuePtr);
LABEL_19:
        v8 = v10;
        v9 = valuePtr;
LABEL_32:
        if (v8)
        {
          result = v9;
        }

        else
        {
          result = 0;
        }

        if (v8)
        {
          return result;
        }

        goto LABEL_43;
      default:
        goto LABEL_43;
    }
  }

  v4 = CFBooleanGetTypeID();
  if (v4 != CFGetTypeID(a1))
  {
LABEL_43:
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return CFBooleanGetValue(a1);
}

unint64_t applesauce::CF::convert_to<long,0>(const __CFNumber *a1)
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
        v12 = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
        goto LABEL_17;
      case kCFNumberSInt32Type:
        LODWORD(valuePtr) = 0;
        v11 = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_38;
      case kCFNumberSInt64Type:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
        goto LABEL_31;
      case kCFNumberFloat32Type:
        LODWORD(valuePtr) = 0;
        v7 = CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
        goto LABEL_9;
      case kCFNumberFloat64Type:
        valuePtr = 0.0;
        v10 = CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
        goto LABEL_19;
      case kCFNumberCharType:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
LABEL_22:
        v16 = Value;
        LODWORD(v17) = Value != 0;
        if (Value)
        {
          v18 = LOBYTE(valuePtr);
        }

        else
        {
          v18 = 0;
        }

        if (SLOBYTE(valuePtr) < 0)
        {
          v17 = v17;
        }

        else
        {
          v17 = 0;
        }

        if (!v16)
        {
          goto LABEL_43;
        }

        return v18 | (v17 << 63 >> 63 << 8);
      case kCFNumberShortType:
        LOWORD(valuePtr) = 0;
        v12 = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
LABEL_17:
        v13 = v12;
        v14 = LOBYTE(valuePtr);
        v15 = SLOWORD(valuePtr);
        goto LABEL_39;
      case kCFNumberIntType:
        LODWORD(valuePtr) = 0;
        v11 = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
LABEL_38:
        v13 = v11;
        v14 = LOBYTE(valuePtr);
        v15 = SLODWORD(valuePtr);
LABEL_39:
        v19 = v15 & 0xFFFFFFFFFFFFFF00 | v14;
        if (v13)
        {
          result = v19;
        }

        else
        {
          result = 0;
        }

        if (!v13)
        {
          goto LABEL_43;
        }

        return result;
      case kCFNumberLongType:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
        goto LABEL_31;
      case kCFNumberLongLongType:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
        goto LABEL_31;
      case kCFNumberFloatType:
        LODWORD(valuePtr) = 0;
        v7 = CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
LABEL_9:
        v8 = v7;
        v9 = *&valuePtr;
        goto LABEL_32;
      case kCFNumberDoubleType:
        valuePtr = 0.0;
        v10 = CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
        goto LABEL_19;
      case kCFNumberCFIndexType:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
        goto LABEL_31;
      case kCFNumberNSIntegerType:
        valuePtr = 0.0;
        v6 = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_31:
        v8 = v6;
        v9 = *&valuePtr;
        goto LABEL_32;
      case kCFNumberCGFloatType:
        valuePtr = 0.0;
        v10 = CFNumberGetValue(a1, kCFNumberCGFloatType, &valuePtr);
LABEL_19:
        v8 = v10;
        v9 = valuePtr;
LABEL_32:
        if (v8)
        {
          result = v9;
        }

        else
        {
          result = 0;
        }

        if (v8)
        {
          return result;
        }

        goto LABEL_43;
      default:
        goto LABEL_43;
    }
  }

  v4 = CFBooleanGetTypeID();
  if (v4 != CFGetTypeID(a1))
  {
LABEL_43:
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return CFBooleanGetValue(a1);
}

void std::vector<unsigned int>::reserve(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      v2 = this->__end_ - this->__begin_;
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](__n);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t applesauce::CF::convert_to<int,0>(const __CFNumber *a1)
{
  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    switch(CFNumberGetType(a1))
    {
      case kCFNumberSInt8Type:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt8Type, &valuePtr);
        goto LABEL_26;
      case kCFNumberSInt16Type:
        LOWORD(valuePtr) = 0;
        v10 = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
        goto LABEL_19;
      case kCFNumberSInt32Type:
        LODWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_34;
      case kCFNumberSInt64Type:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
        goto LABEL_34;
      case kCFNumberFloat32Type:
        LODWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
        goto LABEL_11;
      case kCFNumberFloat64Type:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
        goto LABEL_23;
      case kCFNumberCharType:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
LABEL_26:
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
LABEL_19:
        if (v10)
        {
          v11 = SLOWORD(valuePtr) & 0xFFFFFFFFLL | 0x100000000;
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_37;
      case kCFNumberIntType:
        LODWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
        goto LABEL_34;
      case kCFNumberLongType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
        goto LABEL_34;
      case kCFNumberLongLongType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
        goto LABEL_34;
      case kCFNumberFloatType:
        LODWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
LABEL_11:
        v9 = *&valuePtr;
        goto LABEL_35;
      case kCFNumberDoubleType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
        goto LABEL_23;
      case kCFNumberCFIndexType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
        goto LABEL_34;
      case kCFNumberNSIntegerType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_34:
        v9 = LODWORD(valuePtr);
        goto LABEL_35;
      case kCFNumberCGFloatType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberCGFloatType, &valuePtr);
LABEL_23:
        v9 = valuePtr;
LABEL_35:
        v11 = v9 | 0x100000000;
        if (!v8)
        {
          v11 = 0;
        }

LABEL_37:
        v13 = vshlq_u64(vdupq_n_s64(v11), xmmword_1DE757E40);
        break;
      default:
        LOBYTE(v11) = 0;
        v13 = 0uLL;
        break;
    }

    v14 = vandq_s8(vshlq_u64(v13, xmmword_1DE757E50), xmmword_1DE757E60);
    result = v14.i64[0] | v11 | v14.i64[1];
  }

  else
  {
    v4 = CFBooleanGetTypeID();
    if (v4 == CFGetTypeID(a1))
    {
      v5 = CFBooleanGetValue(a1);
      v6 = 0x100000000;
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    result = v6 | v5;
  }

  if ((result & 0x100000000) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

uint64_t applesauce::CF::convert_to<unsigned short,0>(const __CFNumber *a1)
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
        v9 = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
        goto LABEL_27;
      case kCFNumberSInt32Type:
        LODWORD(valuePtr) = 0;
        v9 = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_27;
      case kCFNumberSInt64Type:
        valuePtr = 0.0;
        v9 = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
        goto LABEL_27;
      case kCFNumberFloat32Type:
        LODWORD(valuePtr) = 0;
        v9 = CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
        goto LABEL_11;
      case kCFNumberFloat64Type:
        valuePtr = 0.0;
        v9 = CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
        goto LABEL_20;
      case kCFNumberCharType:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
LABEL_23:
        v11 = Value != 0;
        LOBYTE(v12) = LOBYTE(valuePtr);
        v3 = SLOBYTE(valuePtr) >> 7;
        if (!Value)
        {
          LOBYTE(v12) = 0;
        }

        break;
      case kCFNumberShortType:
        LOWORD(valuePtr) = 0;
        v9 = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
        goto LABEL_27;
      case kCFNumberIntType:
        LODWORD(valuePtr) = 0;
        v9 = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
        goto LABEL_27;
      case kCFNumberLongType:
        valuePtr = 0.0;
        v9 = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
        goto LABEL_27;
      case kCFNumberLongLongType:
        valuePtr = 0.0;
        v9 = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
        goto LABEL_27;
      case kCFNumberFloatType:
        LODWORD(valuePtr) = 0;
        v9 = CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
LABEL_11:
        v10 = *&valuePtr;
        goto LABEL_28;
      case kCFNumberDoubleType:
        valuePtr = 0.0;
        v9 = CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
        goto LABEL_20;
      case kCFNumberCFIndexType:
        valuePtr = 0.0;
        v9 = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
        goto LABEL_27;
      case kCFNumberNSIntegerType:
        valuePtr = 0.0;
        v9 = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_27:
        v10 = LOWORD(valuePtr);
        goto LABEL_28;
      case kCFNumberCGFloatType:
        valuePtr = 0.0;
        v9 = CFNumberGetValue(a1, kCFNumberCGFloatType, &valuePtr);
LABEL_20:
        v10 = valuePtr;
LABEL_28:
        v12 = v10 | 0x10000;
        if (!v9)
        {
          v12 = 0;
        }

        v3 = v12 >> 8;
        v11 = HIWORD(v12);
        break;
      default:
        v11 = 0;
        LOBYTE(v12) = 0;
        break;
    }

    v8 = (v11 << 16) | (v3 << 8) | v12;
  }

  else
  {
    v5 = CFBooleanGetTypeID();
    if (v5 == CFGetTypeID(a1))
    {
      v6 = CFBooleanGetValue(a1);
      v7 = 0x10000;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    v8 = v7 | v6;
  }

  if (!HIWORD(v8))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return v8;
}

uint64_t applesauce::CF::convert_to<short,0>(const __CFNumber *a1)
{
  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    switch(CFNumberGetType(a1))
    {
      case kCFNumberSInt8Type:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt8Type, &valuePtr);
        goto LABEL_26;
      case kCFNumberSInt16Type:
        LOWORD(valuePtr) = 0;
        v9 = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
        goto LABEL_30;
      case kCFNumberSInt32Type:
        LODWORD(valuePtr) = 0;
        v9 = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_30;
      case kCFNumberSInt64Type:
        valuePtr = 0.0;
        v9 = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
        goto LABEL_30;
      case kCFNumberFloat32Type:
        LODWORD(valuePtr) = 0;
        v10 = CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
        goto LABEL_11;
      case kCFNumberFloat64Type:
        valuePtr = 0.0;
        v10 = CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
        goto LABEL_20;
      case kCFNumberCharType:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
LABEL_26:
        v13 = Value != 0;
        LOBYTE(v12) = LOBYTE(valuePtr);
        v3 = SLOBYTE(valuePtr) >> 7;
        if (!Value)
        {
          LOBYTE(v12) = 0;
        }

        break;
      case kCFNumberShortType:
        LOWORD(valuePtr) = 0;
        v9 = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
        goto LABEL_30;
      case kCFNumberIntType:
        LODWORD(valuePtr) = 0;
        v9 = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
        goto LABEL_30;
      case kCFNumberLongType:
        valuePtr = 0.0;
        v9 = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
        goto LABEL_30;
      case kCFNumberLongLongType:
        valuePtr = 0.0;
        v9 = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
        goto LABEL_30;
      case kCFNumberFloatType:
        LODWORD(valuePtr) = 0;
        v10 = CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
LABEL_11:
        v11 = *&valuePtr;
        goto LABEL_21;
      case kCFNumberDoubleType:
        valuePtr = 0.0;
        v10 = CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
        goto LABEL_20;
      case kCFNumberCFIndexType:
        valuePtr = 0.0;
        v9 = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
        goto LABEL_30;
      case kCFNumberNSIntegerType:
        valuePtr = 0.0;
        v9 = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_30:
        v12 = LOWORD(valuePtr) | 0x10000;
        if (!v9)
        {
          v12 = 0;
        }

        goto LABEL_32;
      case kCFNumberCGFloatType:
        valuePtr = 0.0;
        v10 = CFNumberGetValue(a1, kCFNumberCGFloatType, &valuePtr);
LABEL_20:
        v11 = valuePtr;
LABEL_21:
        if (v10)
        {
          v12 = v11 | 0x10000;
        }

        else
        {
          v12 = 0;
        }

LABEL_32:
        v3 = v12 >> 8;
        v13 = HIWORD(v12);
        break;
      default:
        v13 = 0;
        LOBYTE(v12) = 0;
        break;
    }

    v8 = (v13 << 16) | (v3 << 8) | v12;
  }

  else
  {
    v5 = CFBooleanGetTypeID();
    if (v5 == CFGetTypeID(a1))
    {
      v6 = CFBooleanGetValue(a1);
      v7 = 0x10000;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    v8 = v7 | v6;
  }

  if (!HIWORD(v8))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return v8;
}

uint64_t std::vector<BOOL>::reserve(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1DE27E89C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<BOOL>::push_back(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = std::vector<BOOL>::reserve(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

BOOL AMCP::Implementation::In_Place_Storage<applesauce::CF::DateRef>::dispatch(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v9 = AMCP::Implementation::get_type_marker<applesauce::CF::DateRef>();
        result = 0;
        *a4 = v9;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DateRef>())
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

      if ((*a4 == AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DateRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>()) && *a4 == AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>())
      {
        if (*(a2 + 32))
        {
          theDate[0] = AMCP::Implementation::get_type_marker<applesauce::CF::DateRef>();
          v8 = (*(a2 + 32))(4, a2, 0, theDate);
        }

        else
        {
          v8 = 0;
        }

        if (*a4 == AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>())
        {
          if (v8)
          {
            mcp_applesauce::CF::PropertyListRef::from_get(&otherDate, *v8);
            v23 = 0;
            *theDate = 0u;
            v22 = 0u;
            AMCP::Implementation::In_Place_Storage<mcp_applesauce::CF::PropertyListRef>::construct<mcp_applesauce::CF::PropertyListRef&>(theDate, &otherDate);
            if (otherDate)
            {
              CFRelease(otherDate);
            }

            goto LABEL_60;
          }

LABEL_78:
          __assert_rtn("create_cf_plist_from", "Thing.h", 2434, "in_value_ptr != nullptr");
        }

        if ((*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DateRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>()) && !v8)
        {
          goto LABEL_78;
        }
      }

      v23 = 0;
      *theDate = 0u;
      v22 = 0u;
LABEL_60:
      AMCP::swap(theDate, a3, v7);
      if (v23)
      {
        v23(0, theDate, 0, 0);
      }

      return 0;
    }

    v10 = AMCP::Implementation::get_type_marker<applesauce::CF::DateRef>();
    v11 = *(a2 + 32);
    theDate[0] = 0;
    if (v11)
    {
      (v11)(3, a2, 0, theDate);
      v11 = theDate[0];
    }

    if (v11 == v10)
    {
      v12 = *(a3 + 32);
      otherDate = 0;
      if (v12)
      {
        (v12)(3, a3, 0, &otherDate);
        v12 = otherDate;
      }

      if (v12 == v10)
      {
        if (*(a2 + 32))
        {
          theDate[0] = AMCP::Implementation::get_type_marker<applesauce::CF::DateRef>();
          v13 = (*(a2 + 32))(4, a2, 0, theDate);
        }

        else
        {
          v13 = 0;
        }

        theDate[0] = AMCP::Implementation::get_type_marker<applesauce::CF::DateRef>();
        v19 = *(*(a3 + 32))(4, a3, 0, theDate);
        if (!*v13)
        {
          if (v19)
          {
            v20 = kCFCompareLessThan;
          }

          else
          {
            v20 = kCFCompareEqualTo;
          }

          return v20 == kCFCompareEqualTo;
        }

        if (v19)
        {
          v20 = CFDateCompare(*v13, v19, 0);
          return v20 == kCFCompareEqualTo;
        }

        return 0;
      }
    }

    AMCP::Thing::convert_to<applesauce::CF::DateRef>(theDate, a2);
    AMCP::Thing::convert_to<applesauce::CF::DateRef>(&otherDate, a3);
    v15 = theDate[0];
    v16 = otherDate;
    if (theDate[0])
    {
      if (!otherDate)
      {
        v17 = 0;
        goto LABEL_63;
      }

      v17 = CFDateCompare(theDate[0], otherDate, 0) == kCFCompareEqualTo;
    }

    else
    {
      if (otherDate)
      {
        v18 = -1;
      }

      else
      {
        v18 = 0;
      }

      v17 = otherDate == 0;
      if (!otherDate)
      {
        return !v18;
      }
    }

    CFRelease(v16);
    if (!v15)
    {
      return v17;
    }

LABEL_63:
    CFRelease(v15);
    return v17;
  }

  if (!result)
  {
LABEL_11:
    AMCP::Implementation::In_Place_Storage<applesauce::CF::DateRef>::destruct(a2);
    return 0;
  }

  if (!result)
  {
    if (result != 2)
    {
      return result;
    }

    *a3 = 0u;
    *(a3 + 16) = 0u;
    *a3 = *a2;
    *a2 = 0;
    *(a3 + 32) = AMCP::Implementation::In_Place_Storage<applesauce::CF::DateRef>::dispatch;
    goto LABEL_11;
  }

  *a3 = 0u;
  *(a3 + 16) = 0u;
  v14 = *a2;
  if (*a2)
  {
    CFRetain(v14);
  }

  result = 0;
  *a3 = v14;
  *(a3 + 32) = AMCP::Implementation::In_Place_Storage<applesauce::CF::DateRef>::dispatch;
  return result;
}

void sub_1DE27EE74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  applesauce::CF::DateRef::~DateRef(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE27EE08);
}

double AMCP::Implementation::In_Place_Storage<applesauce::CF::DateRef>::destruct(uint64_t a1)
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

CFTypeRef *AMCP::Thing::convert_to<applesauce::CF::DateRef>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_16;
  }

  v4 = AMCP::Implementation::get_type_marker<applesauce::CF::DateRef>();
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

  v15 = AMCP::Implementation::get_type_marker<applesauce::CF::DateRef>();
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

void sub_1DE27F08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void applesauce::CF::DateRef::~DateRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

const void **applesauce::CF::ObjectRef<__CFDate const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<__CFBoolean const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<applesauce::CF::DataRef>::dispatch(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        AMCP::Implementation::In_Place_Storage<applesauce::CF::DataRef>::construct<applesauce::CF::DataRef const&>(a3, a2);
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
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<applesauce::CF::DataRef>::dispatch;
    }

    AMCP::Implementation::In_Place_Storage<applesauce::CF::DataRef>::destruct(a2);
    return 0;
  }

  if (result > 4)
  {
    if (result == 5)
    {
      v9 = AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>();
      v10 = *(a2 + 32);
      v27[0] = 0;
      if (v10)
      {
        v10(3, a2, 0, v27);
        v10 = v27[0];
      }

      if (v10 != v9)
      {
        goto LABEL_35;
      }

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
          v27[0] = AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>();
          v12 = (*(a2 + 32))(4, a2, 0, v27);
        }

        else
        {
          v12 = 0;
        }

        v27[0] = AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>();
        v21 = (*(a3 + 32))(4, a3, 0, v27);
        if (!applesauce::CF::operator==(v12, v21))
        {
          return 0;
        }
      }

      else
      {
LABEL_35:
        AMCP::Thing::convert_to<applesauce::CF::DataRef>(v27, a2);
        AMCP::Thing::convert_to<applesauce::CF::DataRef>(cf, a3);
        v13 = applesauce::CF::operator==(v27, cf);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        if (v27[0])
        {
          CFRelease(v27[0]);
        }

        if (!v13)
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

    if ((*a4 == AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DateRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>()) && *a4 == AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>())
    {
      if (*(a2 + 32))
      {
        v27[0] = AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>();
        v7 = (*(a2 + 32))(4, a2, 0, v27);
      }

      else
      {
        v7 = 0;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<mcp_applesauce::CF::PropertyListRef>())
      {
        if (v7)
        {
          mcp_applesauce::CF::PropertyListRef::from_get(v27, *v7);
          v26 = 0;
          *cf = 0u;
          v25 = 0u;
          AMCP::Implementation::In_Place_Storage<mcp_applesauce::CF::PropertyListRef>::construct<mcp_applesauce::CF::PropertyListRef&>(cf, v27);
          if (v27[0])
          {
            CFRelease(v27[0]);
          }

          if (v26)
          {
            goto LABEL_74;
          }

          goto LABEL_57;
        }

LABEL_81:
        __assert_rtn("create_cf_plist_from", "Thing.h", 2434, "in_value_ptr != nullptr");
      }

      if ((*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::NumberRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::BooleanRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DateRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DictionaryRef>()) && !v7)
      {
        goto LABEL_81;
      }
    }

    v26 = 0;
    *cf = 0u;
    v25 = 0u;
    if (*a4 != AMCP::Implementation::get_type_marker<AMCP::Bag_O_Bytes>() && *a4 != AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>())
    {
      goto LABEL_71;
    }

LABEL_57:
    if (*(a2 + 32))
    {
      v27[0] = AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>();
      v16 = (*(a2 + 32))(4, a2, 0, v27);
    }

    else
    {
      v16 = 0;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Bag_O_Bytes>())
    {
      if (v16)
      {
        if (!*v16)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        Length = CFDataGetLength(*v16);
        LOBYTE(v27[0]) = 0;
        std::vector<std::byte>::vector[abi:ne200100](&v30, Length);
        v18 = *v16;
        if (!*v16)
        {
          v23 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v23, "Could not construct");
          __cxa_throw(v23, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v19 = v30;
        BytePtr = CFDataGetBytePtr(v18);
        memcpy(v19, BytePtr, v31 - v30);
        *v27 = 0u;
        v28 = 0u;
        v29 = 0;
        std::vector<std::byte>::__init_with_size[abi:ne200100]<std::byte*,std::byte*>(v27, v30, v31, v31 - v30);
        v29 = AMCP::Implementation::In_Place_Storage<AMCP::Bag_O_Bytes>::dispatch;
        if (v30)
        {
          v31 = v30;
          operator delete(v30);
        }

        goto LABEL_72;
      }

LABEL_82:
      __assert_rtn("create_data_bag_from", "Thing.h", 2381, "in_value_ptr != nullptr");
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>())
    {
      if (!v16)
      {
        goto LABEL_82;
      }

      v29 = 0;
      *v27 = 0u;
      v28 = 0u;
      AMCP::Implementation::In_Place_Storage<applesauce::CF::DataRef>::construct<applesauce::CF::DataRef const&>(v27, v16);
    }

    else
    {
LABEL_71:
      v29 = 0;
      *v27 = 0u;
      v28 = 0u;
    }

LABEL_72:
    AMCP::swap(v27, cf, v15);
    if (v29)
    {
      v29(0, v27, 0, 0);
    }

LABEL_74:
    AMCP::swap(cf, a3, v14);
    if (v26)
    {
      v26(0, cf, 0, 0);
    }

    return 0;
  }

  if (result == 3)
  {
    v8 = AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>();
    result = 0;
    *a4 = v8;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>())
  {
    return a2;
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_1DE27F71C(void *a1)
{
  v3 = *(v1 - 56);
  if (v3)
  {
    *(v1 - 48) = v3;
    operator delete(v3);
  }

  __clang_call_terminate(a1);
}

double AMCP::Implementation::In_Place_Storage<applesauce::CF::DataRef>::destruct(uint64_t a1)
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

uint64_t AMCP::Implementation::In_Place_Storage<applesauce::CF::DataRef>::construct<applesauce::CF::DataRef const&>(uint64_t a1, CFTypeRef *a2)
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

BOOL applesauce::CF::operator==(CFDataRef *a1, CFDataRef *a2)
{
  v3 = *a1;
  result = (*a1 | *a2) == 0;
  if (v3)
  {
    v5 = *a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    BytePtr = CFDataGetBytePtr(v3);
    if (*a2)
    {
      v8 = CFDataGetBytePtr(*a2);
    }

    else
    {
      v8 = 0;
    }

    if (*a1)
    {
      Length = CFDataGetLength(*a1);
    }

    else
    {
      Length = 0;
    }

    v10 = *a2;
    if (*a2)
    {
      v10 = CFDataGetLength(v10);
    }

    return Length == v10 && memcmp(BytePtr, v8, Length) == 0;
  }

  return result;
}

CFTypeRef *AMCP::Thing::convert_to<applesauce::CF::DataRef>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_16;
  }

  v4 = AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>();
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

  v15 = AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>();
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

void sub_1DE27FAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void applesauce::CF::DataRef::~DataRef(const void **this)
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

uint64_t AMCP::Implementation::get_type_marker<AMCP::Bag_O_Bytes>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[401];
}

void *std::vector<std::byte>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1DE27FBEC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::byte>::__init_with_size[abi:ne200100]<std::byte*,std::byte*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE27FC68(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL AMCP::Implementation::In_Place_Storage<AMCP::Bag_O_Bytes>::dispatch(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v11 = AMCP::Implementation::get_type_marker<AMCP::Bag_O_Bytes>();
        result = 0;
        *a4 = v11;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Bag_O_Bytes>())
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

      if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Bag_O_Bytes>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>())
      {
        if (*(a2 + 32))
        {
          *&v26 = AMCP::Implementation::get_type_marker<AMCP::Bag_O_Bytes>();
          v9 = (*(a2 + 32))(4, a2, 0, &v26);
        }

        else
        {
          v9 = 0;
        }

        if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Bag_O_Bytes>())
        {
          if (v9)
          {
            v28 = 0;
            v26 = 0u;
            v27 = 0u;
            std::vector<std::byte>::__init_with_size[abi:ne200100]<std::byte*,std::byte*>(&v26, *v9, v9[1], v9[1] - *v9);
            v28 = AMCP::Implementation::In_Place_Storage<AMCP::Bag_O_Bytes>::dispatch;
            goto LABEL_56;
          }

LABEL_67:
          __assert_rtn("create_data_bag_from", "Thing.h", 2381, "in_value_ptr != nullptr");
        }

        if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::DataRef>())
        {
          if (v9)
          {
            AMCP::CF::create_data(cf, *v9, v9[1] - *v9);
            v28 = 0;
            v26 = 0u;
            v27 = 0u;
            AMCP::Implementation::In_Place_Storage<applesauce::CF::DataRef>::construct<applesauce::CF::DataRef&>(&v26, cf);
            if (cf[0])
            {
              CFRelease(cf[0]);
            }

            goto LABEL_56;
          }

          goto LABEL_67;
        }
      }

      v28 = 0;
      v26 = 0u;
      v27 = 0u;
LABEL_56:
      AMCP::swap(&v26, a3, v8);
      if (v28)
      {
        (v28)(0, &v26, 0, 0);
      }

      return 0;
    }

    v12 = AMCP::Implementation::get_type_marker<AMCP::Bag_O_Bytes>();
    v13 = *(a2 + 32);
    *&v26 = 0;
    if (v13)
    {
      v13(3, a2, 0, &v26);
      v13 = v26;
    }

    if (v13 == v12)
    {
      v14 = *(a3 + 32);
      cf[0] = 0;
      if (v14)
      {
        v14(3, a3, 0, cf);
        v14 = cf[0];
      }

      if (v14 == v12)
      {
        if (*(a2 + 32))
        {
          *&v26 = AMCP::Implementation::get_type_marker<AMCP::Bag_O_Bytes>();
          v15 = (*(a2 + 32))(4, a2, 0, &v26);
        }

        else
        {
          v15 = 0;
        }

        *&v26 = AMCP::Implementation::get_type_marker<AMCP::Bag_O_Bytes>();
        v22 = (*(a3 + 32))(4, a3, 0, &v26);
        v24 = *v15;
        v23 = *(v15 + 8);
        v25 = *v22;
        if (&v23[-*v15] != (*(v22 + 8) - *v22))
        {
          return 0;
        }

        while (v24 != v23)
        {
          if (*v24 != *v25)
          {
            return 0;
          }

          ++v24;
          ++v25;
        }

        return 1;
      }
    }

    AMCP::Thing::convert_to<AMCP::Bag_O_Bytes>(&v26, a2);
    AMCP::Thing::convert_to<AMCP::Bag_O_Bytes>(cf, a3);
    v16 = v26;
    if ((*(&v26 + 1) - v26) == (cf[1] - cf[0]))
    {
      if (v26 == *(&v26 + 1))
      {
        v20 = 1;
        if (!cf[0])
        {
LABEL_43:
          if (v16)
          {
            operator delete(v16);
          }

          return v20;
        }

LABEL_42:
        operator delete(cf[0]);
        goto LABEL_43;
      }

      v17 = v26 + 1;
      v18 = cf[0];
      do
      {
        v19 = *v18++;
        v20 = *(v17 - 1) == v19;
        v21 = *(v17 - 1) != v19 || v17 == *(&v26 + 1);
        ++v17;
      }

      while (!v21);
    }

    else
    {
      v20 = 0;
    }

    if (!cf[0])
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (!result)
  {
    v10 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v10;
      operator delete(v10);
    }

    result = 0;
    *(a2 + 32) = 0;
    v7 = 0uLL;
    goto LABEL_20;
  }

  if (result)
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    std::vector<std::byte>::__init_with_size[abi:ne200100]<std::byte*,std::byte*>(a3, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    result = 0;
    *(a3 + 32) = AMCP::Implementation::In_Place_Storage<AMCP::Bag_O_Bytes>::dispatch;
    return result;
  }

  if (result == 2)
  {
    result = 0;
    v7 = 0uLL;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *a3 = *a2;
    *(a3 + 16) = *(a2 + 16);
    *(a3 + 32) = AMCP::Implementation::In_Place_Storage<AMCP::Bag_O_Bytes>::dispatch;
    *(a2 + 32) = 0;
LABEL_20:
    *a2 = v7;
    *(a2 + 16) = v7;
  }

  return result;
}

void sub_1DE280090(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE27FFCCLL);
}

uint64_t AMCP::Thing::convert_to<AMCP::Bag_O_Bytes>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v4 = AMCP::Implementation::get_type_marker<AMCP::Bag_O_Bytes>();
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
    v6 = (*(a2 + 32))(4, a2, 0, v16);
    if (v6)
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return std::vector<std::byte>::__init_with_size[abi:ne200100]<std::byte*,std::byte*>(a1, *v6, v6[1], v6[1] - *v6);
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<AMCP::Bag_O_Bytes>();
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
  v8 = v17(4, v16, 0, &v15);
  if (!v8)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = std::vector<std::byte>::__init_with_size[abi:ne200100]<std::byte*,std::byte*>(a1, *v8, v8[1], v8[1] - *v8);
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE280270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

const void *AMCP::CF::create_data(AMCP::CF *this, const UInt8 *a2, CFIndex a3)
{
  result = CFDataCreate(0, a2, a3);
  *this = result;
  if (result)
  {
    v5 = CFGetTypeID(result);
    result = CFDataGetTypeID();
    if (v5 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return result;
}
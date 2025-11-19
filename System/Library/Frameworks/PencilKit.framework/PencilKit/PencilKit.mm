_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
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
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

id _PencilKitBundle()
{
  v0 = _PencilKitBundle_kitBundle;
  if (!_PencilKitBundle_kitBundle)
  {
    v1 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v2 = _PencilKitBundle_kitBundle;
    _PencilKitBundle_kitBundle = v1;

    v0 = _PencilKitBundle_kitBundle;
  }

  return v0;
}

uint64_t PKIsInlineDrawingOrPaperAttachment(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (([v1 fileType], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "isEqualToString:", @"com.apple.drawing"), v2, (v3) || (objc_msgSend(v1, "fileType"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", @"com.apple.paper"), v4, v5)))
  {
    v6 = objc_opt_respondsToSelector();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t PKIsSixChannelBlendEnabledInPaper()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"internalSettings.drawing.disableSixChannelBlendInPaper"];

  return v1 ^ 1u;
}

BOOL PKIsDeviceLocked()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getMKBGetDeviceLockStateSymbolLoc_ptr;
  v7 = getMKBGetDeviceLockStateSymbolLoc_ptr;
  if (!getMKBGetDeviceLockStateSymbolLoc_ptr)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMKBGetDeviceLockStateSymbolLoc_block_invoke;
    v3[3] = &unk_1E82D6498;
    v3[4] = &v4;
    __getMKBGetDeviceLockStateSymbolLoc_block_invoke(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    dlerror();
    v2 = abort_report_np();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v2);
  }

  return v0(0) - 1 < 2;
}

void std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<PKOutputFunction>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<double>>,std::vector<double>*,std::vector<double>*,std::vector<double>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<double>>,std::vector<double>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void std::vector<std::vector<double>>::__assign_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<std::vector<ClipperLib::IntPoint>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::vector<double>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<double> *,std::vector<double> *,std::vector<double> *>(&v19, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      v15 = a1[1];
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v14 = v15;
      }

      while (v15 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<double> *,std::vector<double> *,std::vector<double> *>(&v18, a2, (a2 + v11), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<double>>,std::vector<double>*,std::vector<double>*,std::vector<double>*>(a1, (a2 + v11), a3, a1[1]);
  }
}

void PKOutputFunction::PKOutputFunction(PKOutputFunction *this, const PKOutputFunction *a2)
{
  *(this + 5) = 0;
  *this = *a2;
  *(this + 1) = *(a2 + 1);
  v3 = *(a2 + 5);
  *(this + 4) = *(a2 + 4);
  if (v3)
  {
    v4 = (*(*v3 + 24))(v3);
    v5 = *(this + 5);
    *(this + 5) = v4;
    if (v5)
    {
      (*(*v5 + 40))(v5);
    }
  }

  else
  {
    *(this + 5) = 0;
  }
}

void sub_1C7CCD9C8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  *(v1 + 40) = 0;
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<PKOutputFunction>::__emplace_back_slow_path<PKOutputFunction>(uint64_t a1, const PKOutputFunction *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PKOutputFunction>>(a1, v6);
  }

  v13 = 0;
  v14 = 48 * v2;
  PKOutputFunction::PKOutputFunction((48 * v2), a2);
  v15 = 48 * v2 + 48;
  v7 = *(a1 + 8);
  v8 = (48 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PKOutputFunction>,PKOutputFunction*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<PKOutputFunction>::~__split_buffer(&v13);
  return v12;
}

void sub_1C7CCDB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<PKOutputFunction>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<double>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void *PKFunctionPiecewiseBezier::operator=(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a1 + 1, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a1 + 4, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a1 + 7, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a1 + 10, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 3);
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a1 + 13, *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 3);
    std::vector<std::vector<double>>::__assign_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(a1 + 16, *(a2 + 128), *(a2 + 136), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 136) - *(a2 + 128)) >> 3));
    std::vector<std::vector<double>>::__assign_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(a1 + 19, *(a2 + 152), *(a2 + 160), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 160) - *(a2 + 152)) >> 3));
  }

  return a1;
}

uint64_t std::vector<PKOutputFunction>::__init_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<PKOutputFunction>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C7CCDDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PKOutputFunction>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void PKFunctionPiecewiseBezier::solve(PKFunctionPiecewiseBezier *this)
{
  v2 = (*(this + 8) - *(this + 7)) >> 3;
  v3 = v2 - 1;
  if (v2)
  {
    v4 = v2 - 1;
  }

  else
  {
    v4 = 0;
  }

  std::vector<std::vector<double>>::resize(this + 16, v4);
  std::vector<std::vector<double>>::resize(this + 19, v4);
  if (v3)
  {
    v5 = 0;
    do
    {
      v6 = objc_alloc(MEMORY[0x1E69793D0]);
      v7 = *(this + 13) + 32 * v5;
      v8 = *v7;
      v9 = *(v7 + 8);
      *&v8 = *v7;
      *&v9 = v9;
      v10 = *(v7 + 16);
      v11 = *(v7 + 24);
      *&v10 = v10;
      *&v11 = v11;
      v12 = [v6 initWithControlPoints:v8 :v9 :v10 :v11];
      v13 = 0;
      v14 = *(this + 1);
      v15 = *(v14 + 8 * v5);
      v16 = v5 + 1;
      v17 = *(v14 + 8 * (v5 + 1));
      v18 = v17 - v15;
      do
      {
        v19 = *(this + 16);
        *&v17 = v13 / 10.0;
        [v12 _solveForInput:v17];
        v37 = v15 + v18 * v20;
        std::vector<double>::push_back[abi:ne200100]((v19 + 24 * v5), &v37);
        ++v13;
      }

      while (v13 != 11);

      ++v5;
    }

    while (v16 != v3);
    v21 = 0;
    do
    {
      v22 = objc_alloc(MEMORY[0x1E69793D0]);
      v23 = *(this + 13) + 32 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      *&v24 = *v23;
      *&v25 = v25;
      v26 = *(v23 + 16);
      v27 = *(v23 + 24);
      *&v26 = v26;
      *&v27 = v27;
      v28 = [v22 initWithControlPoints:v24 :v25 :v26 :v27];
      v29 = 0;
      v30 = *(this + 4);
      v31 = *(v30 + 8 * v21);
      v32 = v21 + 1;
      v33 = *(v30 + 8 * (v21 + 1));
      v34 = v33 - v31;
      do
      {
        v35 = *(this + 19);
        *&v33 = v29 / 10.0;
        [v28 _solveForInput:v33];
        v37 = v31 + v34 * v36;
        std::vector<double>::push_back[abi:ne200100]((v35 + 24 * v21), &v37);
        ++v29;
      }

      while (v29 != 11);

      ++v21;
    }

    while (v32 != v3);
  }
}

void std::vector<double>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
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

uint64_t std::vector<PKOutputFunction>::__assign_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(uint64_t a1, PKOutputFunction *a2, PKOutputFunction *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    std::vector<PKOutputFunction>::__vdeallocate(a1);
    if (a4 <= 0x555555555555555)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v10 = 0x555555555555555;
      }

      else
      {
        v10 = v9;
      }

      std::vector<PKOutputFunction>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 4) >= a4)
  {
    result = std::__copy_impl::operator()[abi:ne200100]<PKOutputFunction *,PKOutputFunction *,PKOutputFunction *>(a2, a3, v8);
    v13 = result;
    v14 = *(a1 + 8);
    if (v14 != result)
    {
      do
      {
        result = *(v14 - 8);
        *(v14 - 8) = 0;
        if (result)
        {
          result = (*(*result + 40))(result);
        }

        v14 -= 48;
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<PKOutputFunction *,PKOutputFunction *,PKOutputFunction *>(a2, (a2 + v11), v8);
    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<PKOutputFunction>,PKOutputFunction*,PKOutputFunction*,PKOutputFunction*>(a1, (a2 + v11), a3, *(a1 + 8));
    *(a1 + 8) = result;
  }

  return result;
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<PKOutputFunction *,PKOutputFunction *,PKOutputFunction *>(PKOutputFunction *a1, PKOutputFunction *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      PKOutputFunction::PKOutputFunction(v8, v5);
      PKOutputFunction::operator=(a3, v8);
      v6 = v9;
      v9 = 0;
      if (v6)
      {
        (*(*v6 + 40))(v6);
      }

      v5 = (v5 + 48);
      a3 += 48;
    }

    while (v5 != a2);
  }

  return a3;
}

void sub_1C7CCE654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 40))(a14);
  }

  _Unwind_Resume(exception_object);
}

void std::__split_buffer<std::vector<ClipperLib::IntPoint>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::vector<double>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<double>>::__append(a1, v6);
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

void std::vector<std::vector<double>>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<double>>>(a1, v9);
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
    std::__split_buffer<std::vector<ClipperLib::IntPoint>>::~__split_buffer(v18);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<double>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<ClipperLib::IntPoint>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<ClipperLib::IntPoint>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<double>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, a2);
  }

  std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C7CCEA88(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<double>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<double>>>(a1, a2);
  }

  std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
}

void sub_1C7CCED48(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t PKHashBytes(uint64_t a1, int a2)
{
  if (a2 < 4)
  {
    v2 = 0;
    v5 = a2;
  }

  else
  {
    v2 = 0;
    v3 = a2 + 4;
    v4 = (a1 + 3);
    v5 = a2;
    do
    {
      v6 = *(v4 - 3) + 16 * v2;
      v7 = *(v4 - 2) + 16 * (v6 ^ (16 * (v6 >> 28)));
      v8 = *(v4 - 1) + 16 * (v7 ^ (16 * (v7 >> 28)));
      v9 = *v4;
      v4 += 4;
      v10 = v9 + 16 * (v8 ^ (16 * (v8 >> 28)));
      v2 = (v10 ^ ((v10 & 0xF0000000) >> 24)) & ~(v10 & 0xF0000000);
      v3 -= 4;
      v5 -= 4;
    }

    while (v3 > 7);
  }

  switch(v5)
  {
    case 1:
      v11 = a2;
      goto LABEL_13;
    case 3:
      v11 = a2;
      v12 = *(a1 + a2 - 3) + 16 * v2;
      v2 = (v12 ^ ((v12 & 0xF0000000) >> 24)) & ~(v12 & 0xF0000000);
      goto LABEL_11;
    case 2:
      v11 = a2;
LABEL_11:
      v13 = *(a1 + v11 - 2) + 16 * v2;
      v2 = (v13 ^ ((v13 & 0xF0000000) >> 24)) & ~(v13 & 0xF0000000);
LABEL_13:
      v14 = *(a1 + v11 - 1) + 16 * v2;
      return (v14 ^ ((v14 & 0xF0000000) >> 24)) & ~(v14 & 0xF0000000);
  }

  return v2;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<anonymous namespace::PKMetalKernelKey,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,void *>,std::__hash_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void *__getMKBGetDeviceLockStateSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MobileKeyBagLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = __const__block__paths_64;
    v7 = 0;
    MobileKeyBagLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = MobileKeyBagLibraryCore_frameworkLibrary;
    if (MobileKeyBagLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = MobileKeyBagLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "MKBGetDeviceLockState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBGetDeviceLockStateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

BOOL PKIsPhoneDevice()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom] == 0;

  return v1;
}

BOOL PKIsQuickNoteOnPhone()
{
  result = PKIsPhoneDevice();
  if (result)
  {
    v1 = [MEMORY[0x1E696AAE8] mainBundle];
    v2 = [v1 bundleIdentifier];
    v3 = [v2 isEqualToString:@"com.apple.mobilenotes.EditorExtension"];

    return v3;
  }

  return result;
}

double DKDScaleForTransform(_OWORD *a1)
{
  v4[9] = *MEMORY[0x1E69E9840];
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  DKD_CGAffineTransformDecompose(v3, v4);
  return *v4;
}

double DKD_CGAffineTransformDecompose(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = sqrt(v4 * v4 + *a1 * *a1);
  v8 = sqrt(v6 * v6 + v5 * v5);
  v9 = *a1 * v6 - v5 * v4;
  v10 = -v8;
  v11 = -v7;
  if (*a1 < v6)
  {
    v10 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v9 < 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v9 < 0.0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v8;
  }

  v14 = *(a1 + 16);
  *&v20.a = *a1;
  *&v20.c = v14;
  *&v20.tx = *(a1 + 32);
  CGAffineTransformScale(&v21, &v20, 1.0 / v12, 1.0 / v13);
  v15 = *&v21.c;
  *a1 = *&v21.a;
  *(a1 + 16) = v15;
  *(a1 + 32) = *&v21.tx;
  v16 = atan2(*(a1 + 8), *a1);
  v17 = *(a1 + 16);
  *&v20.a = *a1;
  *&v20.c = v17;
  *&v20.tx = *(a1 + 32);
  CGAffineTransformRotate(&v21, &v20, -v16);
  v18 = *&v21.c;
  *a1 = *&v21.a;
  *(a1 + 16) = v18;
  *(a1 + 32) = *&v21.tx;
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v16;
  *(a2 + 24) = *a1;
  *(a2 + 32) = *(a1 + 8);
  *(a2 + 40) = *(a1 + 16);
  *(a2 + 48) = *(a1 + 24);
  *(a2 + 56) = *(a1 + 32);
  result = *(a1 + 40);
  *(a2 + 64) = result;
  return result;
}

uint64_t specialized InkDescriptor.objc(variant:textureLoader:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v99 = a1;
  v100 = a2;
  v4 = (a3 + 39);
  v5 = type metadata accessor for InkFunction();
  v101 = *(v5 - 8);
  v102 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a3;
  v93 = a3[1];
  v94 = v8;
  v9 = *(a3 + 7);
  v130 = *(a3 + 6);
  v131 = v9;
  v10 = *(a3 + 11);
  v134 = *(a3 + 10);
  v135 = v10;
  v11 = *(a3 + 9);
  v132 = *(a3 + 8);
  v133 = v11;
  *(v139 + 15) = *(a3 + 255);
  v12 = *(a3 + 15);
  v138 = *(a3 + 14);
  v139[0] = v12;
  v13 = *(a3 + 13);
  v136 = *(a3 + 12);
  v137 = v13;
  v14 = *(a3 + 5);
  v128 = *(a3 + 4);
  v129 = v14;
  v15 = *(a3 + 3);
  v126 = *(a3 + 2);
  v127 = v15;
  v16 = a3[33];
  v17 = *(a3 + 34);
  v18 = *(a3 + 35);
  v19 = *(a3 + 36);
  v20 = *(a3 + 37);
  v21 = *(a3 + 38);
  v22 = *v4;
  v97 = v4[1];
  v98 = v22;
  *&v15 = a3[43];
  v95 = a3[44];
  v96 = v15;
  *&v15 = a3[45];
  v74 = a3[46];
  *&v75 = v15;
  *&v15 = a3[47];
  v72 = a3[48];
  *&v73 = v15;
  v23 = *(a3 + 49);
  v24 = *(a3 + 50);
  v25 = *(a3 + 51);
  v71 = a3[52];
  LODWORD(v8) = *(a3 + 424);
  *&v15 = a3[54];
  v82 = a3[55];
  *&v83 = v15;
  *&v15 = a3[56];
  v80 = a3[57];
  *&v81 = v15;
  *&v15 = a3[58];
  v78 = a3[59];
  *&v79 = v15;
  *&v15 = a3[60];
  v76 = a3[61];
  *&v77 = v15;
  LODWORD(v6) = *(a3 + 496);
  v86 = v8;
  v87 = v6;
  *&v15 = a3[63];
  v84 = a3[64];
  *&v85 = v15;
  v88 = *(v4 + 208);
  v26 = *(v4 + 209);
  v27 = 1 << *(v16 + 32);
  v28 = -1;
  v89 = a3[66];
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v92 = a3[67];
  v29 = v16 + 64;
  v30 = v28 & *(v16 + 64);
  v31 = (v27 + 63) >> 6;
  v90 = *(v4 + 232);
  v91 = v26;
  v105 = v16;

  v33 = 0;
  v34 = MEMORY[0x1E69E7CC0];
  v35 = MEMORY[0x1E69E7CC0];
  v103 = v31;
  v104 = v29;
  while (v30)
  {
    v108 = v35;
LABEL_12:
    v37 = __clz(__rbit64(v30)) | (v33 << 6);
    v38 = v105[7];
    v109 = *(v105[6] + v37);
    v39 = *(v38 + 8 * v37);
    *&v124[0] = v34;
    v40 = v39[2];
    v106 = v39;
    v107 = v30;
    if (v40)
    {
      v41 = v101;
      v42 = *(v102 + 48);
      v43 = v39 + ((*(v101 + 80) + 32) & ~*(v101 + 80));

      v44 = *(v41 + 72);
      do
      {
        outlined init with copy of InkFunction(v43, v7);
        if (v7[v42] == 1)
        {
          outlined destroy of InkFunction(v7);
        }

        else
        {
          InkFunction.objc(property:)(qword_1C801B898[v109]);
          v45 = outlined destroy of InkFunction(v7);
          MEMORY[0x1CCA6CF60](v45);
          if (*((*&v124[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v124[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v34 = *&v124[0];
        }

        v43 += v44;
        --v40;
      }

      while (v40);
    }

    else
    {
    }

    v30 = (v107 - 1) & v107;
    *&v124[0] = v108;

    specialized Array.append<A>(contentsOf:)(v34);

    v35 = *&v124[0];
    v31 = v103;
    v29 = v104;
    v34 = MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v36 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v36 >= v31)
    {

      v122 = v138;
      v123[0] = v139[0];
      *(v123 + 15) = *(v139 + 15);
      v118 = v134;
      v119 = v135;
      v120 = v136;
      v121 = v137;
      v114 = v130;
      v115 = v131;
      v116 = v132;
      v117 = v133;
      v110 = v126;
      v111 = v127;
      v112 = v128;
      v113 = v129;
      outlined init with copy of InkRendering(&v126, v124);
      v109 = specialized InkRendering.objc(textureLoader:)(&v110);
      v124[12] = v122;
      v125[0] = v123[0];
      *(v125 + 15) = *(v123 + 15);
      v124[8] = v118;
      v124[9] = v119;
      v124[10] = v120;
      v124[11] = v121;
      v124[4] = v114;
      v124[5] = v115;
      v124[6] = v116;
      v124[7] = v117;
      v124[0] = v110;
      v124[1] = v111;
      v124[2] = v112;
      v124[3] = v113;
      outlined destroy of InkRendering(v124);
      v108 = [objc_allocWithZone(PKInkSmoothingDescriptor) initWithStylusSmoothing:v17 touch:v18 velocity:v19 angle:v20 radius:v21];
      if (v86)
      {
        v107 = 0;
        if ((v87 & 1) == 0)
        {
          goto LABEL_22;
        }

LABEL_25:
        v106 = 0;
        if (v88)
        {
          goto LABEL_26;
        }

LABEL_23:
        v47 = objc_allocWithZone(PKInkAnimationDescriptor);
        v48 = [v47 initWithDuration:v85 sizeDelta:*&v84];
      }

      else
      {
        v49 = objc_allocWithZone(PKInkFeatheringDescriptor);
        v107 = [v49 initWithStartCapTime:v75 startCapDistance:*&v74 startCapFade:v73 startCapShrink:*&v72 endCapTime:v23 endCapDistance:v24 endCapFade:v25 endCapShrink:*&v71];
        if (v87)
        {
          goto LABEL_25;
        }

LABEL_22:
        v46 = objc_allocWithZone(PKInkFeatheringDescriptor);
        v106 = [v46 initWithStartCapTime:v83 startCapDistance:*&v82 startCapFade:v81 startCapShrink:*&v80 endCapTime:v79 endCapDistance:*&v78 endCapFade:v77 endCapShrink:*&v76];
        if ((v88 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_26:
        v48 = 0;
      }

      specialized _arrayForceCast<A, B>(_:)(v89);
      v50 = objc_allocWithZone(PKInkBehavior);
      v51 = MEMORY[0x1CCA6CE70](v94, v93);
      v52 = MEMORY[0x1CCA6CE70](v99, v100);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
      isa = Array._bridgeToObjectiveC()().super.isa;

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for PKInkFunction);
      v54 = Array._bridgeToObjectiveC()().super.isa;
      v105 = v54;

      v110 = v98;
      v111 = v97;
      *&v112 = v96;
      *(&v112 + 1) = v95;
      v70 = v54;
      BYTE2(v69) = v91;
      LOWORD(v69) = v90;
      v67 = v52;
      v68 = isa;
      v55 = isa;
      v56 = v52;
      v66 = v51;
      v57 = v51;
      v65 = v48;
      v58 = v50;
      v59 = v109;
      v60 = v48;
      v62 = v107;
      v61 = v108;
      v63 = v106;
      v64 = [v58 initWithRenderingDescriptor:v109 blendAlpha:&v110 targetMultiple:1 baseAlpha:v108 inkTransform:v107 useUnclampedWeight:v106 smoothingDescriptor:1.0 featheringDescriptor:0.0 pencilFeatheringDescriptor:1.0 animationDescriptor:*&v92 identifier:0.0 version:0.0 variant:v65 uiWidths:v66 defaultWidth:3 uiAzimuthControl:v67 showBrushIndicator:v68 supportsCombiningStrokes:v69 rulerOffsetScale:0 rulerOffsetConstant:v70 weightFunction:? inkFunctions:?];

      return v64;
    }

    v30 = *(v29 + 8 * v36);
    ++v33;
    if (v30)
    {
      v108 = v35;
      v33 = v36;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t InkDescriptor.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9PencilKit13InkDescriptorV10CodingKeys33_1629EF4F71A70372363BC5E8C6DB6C1CLLOGMd);
  v5 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v7 = &v18 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type InkDescriptor.CodingKeys and conformance InkDescriptor.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v23 = a2;
  LOBYTE(v26[0]) = 0;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = v9;
  LOBYTE(v26[0]) = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v11;
  v20 = v10;
  v48[263] = 2;
  lazy protocol witness table accessor for type InkRendering and conformance InkRendering();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v75 = v60;
  v76 = v61;
  v77[0] = *v62;
  *(v77 + 15) = *&v62[15];
  v72 = v57;
  v73 = v58;
  v74 = v59;
  v68 = v53;
  v69 = v54;
  v70 = v55;
  v71 = v56;
  v64 = v49;
  v65 = v50;
  v66 = v51;
  v67 = v52;
  v47 = 3;
  lazy protocol witness table accessor for type InkBehavior and conformance InkBehavior();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  memcpy(&v63[5], v48, 0x102uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12CoreGraphics7CGFloatVGMd);
  v25[0] = 4;
  lazy protocol witness table accessor for type [CGFloat] and conformance <A> [A](&lazy protocol witness table cache variable for type [CGFloat] and conformance <A> [A], lazy protocol witness table accessor for type CGFloat and conformance CGFloat);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v26[0];
  v25[0] = 5;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v26[0];
  v46 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit16DecodableDefaultVySbGMd);
  lazy protocol witness table accessor for type DecodableDefault<Bool> and conformance DecodableDefault<A>(&lazy protocol witness table cache variable for type DecodableDefault<Bool> and conformance DecodableDefault<A>, &_s9PencilKit16DecodableDefaultVySbGMd);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v5 + 8))(v7, v24);
  v13 = v45 & 1;
  v15 = v21;
  v14 = v22;
  *v25 = v8;
  *&v25[8] = v22;
  *&v25[16] = v20;
  *&v25[24] = v21;
  *&v25[224] = v76;
  *&v25[240] = v77[0];
  *&v25[255] = *(v77 + 15);
  *&v25[160] = v72;
  *&v25[176] = v73;
  *&v25[208] = v75;
  *&v25[192] = v74;
  *&v25[96] = v68;
  *&v25[112] = v69;
  *&v25[144] = v71;
  *&v25[128] = v70;
  *&v25[32] = v64;
  *&v25[48] = v65;
  *&v25[80] = v67;
  *&v25[64] = v66;
  memcpy(&v25[259], v63, 0x107uLL);
  v16 = v19;
  *&v25[528] = v19;
  *&v25[536] = v12;
  v25[544] = v45 & 1;
  memcpy(v23, v25, 0x221uLL);
  outlined init with copy of InkDescriptor(v25, v26);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v26[0] = v8;
  v26[1] = v14;
  v26[2] = v20;
  v26[3] = v15;
  v39 = v76;
  *v40 = v77[0];
  *&v40[15] = *(v77 + 15);
  v35 = v72;
  v36 = v73;
  v37 = v74;
  v38 = v75;
  v31 = v68;
  v32 = v69;
  v33 = v70;
  v34 = v71;
  v27 = v64;
  v28 = v65;
  v29 = v66;
  v30 = v67;
  memcpy(v41, v63, sizeof(v41));
  v42 = v16;
  v43 = v12;
  v44 = v13;
  return outlined destroy of InkDescriptor(v26);
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PencilKit13PKRefineMorphV7NStrokeVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t lazy protocol witness table accessor for type [CGFloat] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12CoreGraphics7CGFloatVGMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CGSize and conformance CGSize(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t closure #3 in InkFunction.objc(property:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = 0.0;
  v5 = *result % 3;
  if (!v5)
  {
    v7 = *(result + 8);
    result = type metadata accessor for InkFunction();
    v4 = v7 * dbl_1C801B850[*(a2 + *(result + 20))] + 0.0;
  }

  *a3 = v4;
  *(a3 + 8) = v5 != 0;
  return result;
}

uint64_t outlined copy of (@escaping @callee_guaranteed @async (@guaranteed [PKStroke], @guaranteed [PKStroke]) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo12RefineVertexaGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo22RefineFragmentUniformsaGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 12);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[12 * v8])
    {
      memmove(v12, v13, 12 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 12 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PencilKit27RecognitionSearchControllerC0G6ResultVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PencilKit13PKRefineMorphV5MatchV0H2ToVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PencilKit13PKRefineMorphV5MatchVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo7CGPointVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatV_SitGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *specialized Sequence.flatMap<A>(_:)(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = 0;
  v17 = a3 + 32;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v19 = v5;
    v20 = *(v17 + 16 * v5);
    result = a1(&v21, &v19);
    if (v3)
    {

      return v6;
    }

    v8 = v21;
    v9 = *(v21 + 16);
    v10 = *(v6 + 2);
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v11 <= *(v6 + 3) >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v12 = v10 + v9;
      }

      else
      {
        v12 = v10;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v6);
      v6 = result;
      if (*(v8 + 16))
      {
LABEL_15:
        v13 = *(v6 + 2);
        if ((*(v6 + 3) >> 1) - v13 < v9)
        {
          goto LABEL_24;
        }

        memcpy(&v6[8 * v13 + 32], (v8 + 32), 8 * v9);

        if (v9)
        {
          v14 = *(v6 + 2);
          v15 = __OFADD__(v14, v9);
          v16 = v14 + v9;
          if (v15)
          {
            goto LABEL_25;
          }

          *(v6 + 2) = v16;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_23;
    }

LABEL_4:
    if (v4 == ++v5)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t InkAnimationDescriptor.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9PencilKit22InkAnimationDescriptorV10CodingKeys33_1629EF4F71A70372363BC5E8C6DB6C1CLLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type InkAnimationDescriptor.CodingKeys and conformance InkAnimationDescriptor.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v15 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v10 = v9;
    v13[15] = 1;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v11 = v14;
    *a2 = v10;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = __CocoaSet.count.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in InkFunction.objc(property:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = 0.0;
  v5 = *result % 3;
  if (!v5)
  {
    v6 = *(v2 + 16);
    v7 = *(result + 16);
    result = type metadata accessor for InkFunction();
    v4 = *(v6 + *(result + 24)) + v7 * (*(v6 + *(result + 24) + 8) - *(v6 + *(result + 24)));
  }

  *a2 = v4;
  *(a2 + 8) = v5 != 0;
  return result;
}

char *specialized Sequence.compactMap<A>(_:)(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = 0;
  v7 = a3 + 32;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v15 = v6;
    v16 = *(v7 + 16 * v6);
    a1(&v13, &v15);
    if (v3)
    {
      break;
    }

    if ((v14 & 1) == 0)
    {
      v9 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      }

      v11 = *(v8 + 2);
      v10 = *(v8 + 3);
      if (v11 >= v10 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
      }

      *(v8 + 2) = v11 + 1;
      *&v8[8 * v11 + 32] = v9;
    }

    if (v4 == ++v6)
    {
      return v8;
    }
  }

  return v8;
}

id specialized InkRendering.objc(textureLoader:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 15);
  v5 = *(a1 + 16);
  if (!v3)
  {
    v9 = 0;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  *&v16 = *(a1 + 1);
  *(&v16 + 1) = v3;
  v6 = *(a1 + 72);
  v19 = *(a1 + 56);
  v20 = v6;
  v21[0] = *(a1 + 88);
  v7 = v21[0];
  *(v21 + 11) = *(a1 + 99);
  v8 = *(a1 + 40);
  v17 = *(a1 + 24);
  v18 = v8;
  v22 = v16;
  v23 = v3;
  v24 = v17;
  v25 = v8;
  *(v28 + 11) = *(v21 + 11);
  v27 = v6;
  v28[0] = v7;
  v26 = v19;
  outlined init with copy of InkDescriptorParticles(&v22, &v29);
  v9 = specialized InkDescriptorParticles.objc(textureLoader:)(&v16);
  v33 = v20;
  v34[0] = v21[0];
  *(v34 + 11) = *(v21 + 11);
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  outlined destroy of InkDescriptorParticles(&v29);
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  *&v16 = v4;
  *(&v16 + 1) = v5;
  v10 = *(a1 + 184);
  v19 = *(a1 + 168);
  v20 = v10;
  v21[0] = *(a1 + 200);
  v11 = v21[0];
  *(v21 + 11) = *(a1 + 211);
  v12 = *(a1 + 152);
  v17 = *(a1 + 136);
  v18 = v12;
  v22 = v4;
  v23 = v5;
  v24 = v17;
  v25 = v12;
  *(v28 + 11) = *(v21 + 11);
  v27 = v10;
  v28[0] = v11;
  v26 = v19;
  outlined init with copy of InkDescriptorParticles(&v22, &v29);
  v13 = specialized InkDescriptorParticles.objc(textureLoader:)(&v16);
  v33 = v20;
  v34[0] = v21[0];
  *(v34 + 11) = *(v21 + 11);
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  outlined destroy of InkDescriptorParticles(&v29);
LABEL_6:
  v14 = [objc_allocWithZone(PKInkRenderingDescriptor) initWithType:v3 != 0 blendMode:v2 alternateMode:0 particleDescriptor:v9 secondaryParticleDescriptor:v13];

  return v14;
}

uint64_t lazy protocol witness table accessor for type DecodableDefault<Bool> and conformance DecodableDefault<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t InkDescriptorParticles.init(from:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9PencilKit22InkDescriptorParticlesV10CodingKeys33_1629EF4F71A70372363BC5E8C6DB6C1CLLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = *(a1 + 24);
  v42 = a1;
  v8 = a1;
  v10 = &v32 - v9;
  __swift_project_boxed_opaque_existential_1(v8, v7);
  lazy protocol witness table accessor for type InkDescriptorParticles.CodingKeys and conformance InkDescriptorParticles.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v43 = v2;
    v41 = 0;
    v44 = 0;
    v40 = 0.0;
    __swift_destroy_boxed_opaque_existential_0(v42);
    *&v53 = -2.31584178e77;
    *&v54 = 0x80000001C8020CF0;
    *(&v54 + 1) = 0x3FB999999999999ALL;
    v55 = 1.0;
    v56 = 1.0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = v40;
    v61 = 0.0;
    v62 = 0;
    v63 = v44;
    *v64 = *v68;
    *&v64[3] = *&v68[3];
    v65 = 1;
    v66 = 1;
    v67 = v41;
  }

  else
  {
    LOBYTE(v53) = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v39 = v13;
    v14 = v11;
    LOBYTE(v45) = 1;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = v53;
    type metadata accessor for CGSize(0);
    LOBYTE(v45) = 2;
    lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type CGSize and conformance CGSize, type metadata accessor for CGSize);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v17 = *&v53;
    v16 = *&v54;
    LOBYTE(v45) = 3;
    lazy protocol witness table accessor for type InkMask and conformance InkMask();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v38 = v53;
    v35 = v54;
    v40 = v55;
    v36 = v56;
    v37 = v57;
    v44 = v58;

    LOBYTE(v45) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit16DecodableDefaultVySiGMd);
    lazy protocol witness table accessor for type DecodableDefault<Bool> and conformance DecodableDefault<A>(&lazy protocol witness table cache variable for type DecodableDefault<Int> and conformance DecodableDefault<A>, &_s9PencilKit16DecodableDefaultVySiGMd);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if (v54)
    {
      v18 = 1;
    }

    else
    {
      v18 = v53;
    }

    LOBYTE(v45) = 5;
    lazy protocol witness table accessor for type InkDescriptorParticles.ParticleRotation and conformance InkDescriptorParticles.ParticleRotation();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v19 = v53;
    LOBYTE(v53) = 6;
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    v34 = v19;
    v41 = v20 & 1;
    v51 = 7;
    lazy protocol witness table accessor for type InkDescriptorParticles.ParticleBlendMode and conformance InkDescriptorParticles.ParticleBlendMode();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v43 = 0;
    (*(v6 + 8))(v10, v5);
    v33 = v52;
    *&v45 = v14;
    *(&v45 + 1) = v39;
    *&v46 = v15;
    *(&v46 + 1) = v17;
    *&v47 = v16;
    *(&v47 + 1) = v38;
    v21 = v35;
    v48 = v35;
    v22 = *(&v35 + 1);
    v23 = v40;
    *&v49 = v40;
    v24 = v36;
    *(&v49 + 1) = v36;
    v25 = v37;
    *v50 = v37;
    v26 = v44;
    v50[8] = v44;
    *&v50[12] = *&v68[3];
    *&v50[9] = *v68;
    *&v50[16] = v18;
    v50[24] = v34;
    v32 = v18;
    v27 = v41;
    v50[25] = v41;
    v50[26] = v52;
    v28 = v46;
    *a2 = v45;
    a2[1] = v28;
    v29 = v47;
    v30 = v48;
    *(a2 + 91) = *&v50[11];
    v31 = *v50;
    a2[4] = v49;
    a2[5] = v31;
    a2[2] = v29;
    a2[3] = v30;
    outlined init with copy of InkDescriptorParticles(&v45, &v53);
    __swift_destroy_boxed_opaque_existential_0(v42);
    v53 = v14;
    *&v54 = v39;
    *(&v54 + 1) = v15;
    v55 = v17;
    v56 = v16;
    v57 = v38;
    v58 = v21;
    v59 = v22;
    v60 = v23;
    v61 = v24;
    v62 = v25;
    v63 = v26;
    *v64 = *v68;
    *&v64[3] = *&v68[3];
    v65 = v32;
    v66 = v34;
    LOBYTE(v67) = v27;
    HIBYTE(v67) = v33;
  }

  return outlined destroy of InkDescriptorParticles(&v53);
}

uint64_t InkBehavior.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9PencilKit11InkBehaviorV10CodingKeys33_1629EF4F71A70372363BC5E8C6DB6C1CLLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - v7;
  *&v131 = COERCE_DOUBLE(_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9PencilKit11InkBehaviorV0E8PropertyO_SayAC0E8FunctionVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]));
  v130 = 1;
  v69 = 1;
  v127 = 1;
  v9 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  lazy protocol witness table accessor for type InkBehavior.CodingKeys and conformance InkBehavior.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v59 = v2;
    v60 = 0;
    v67 = 0;
    v68 = 0;
    v65 = 0;
    v66 = 0;
    v57 = 0;
    v58 = 0;
    v63 = 0;
    v64 = 0;
    v55 = 0;
    v62 = 0;
    v61 = 0.5;
    v53 = 0;
    v54 = 1.0;
    __swift_destroy_boxed_opaque_existential_0(v56);
    v92 = v131;
    v93 = 0x3FBEB851EB851EB8;
    *&v94 = 0.16;
    *&v95 = 0.05;
    v96 = v61;
    v97 = 0.0;
    v98 = 1.0;
    v99 = 0;
    v100 = 0;
    v101 = v54;
    v102 = 0.0;
    v103 = v53;
    v104 = v55;
    v105 = 0;
    v106 = 0;
    v107 = 0;
    v108 = 0;
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v112 = 1;
    *v113 = v129[0];
    *&v113[3] = *(v129 + 3);
    v114 = v57;
    v115 = v66;
    v116 = v67;
    v117 = v68;
    v118 = v60;
    v119 = v65;
    v120 = v64;
    v121 = v58;
    v122 = v69;
    *v123 = *v128;
    *&v123[3] = *&v128[3];
    v124 = v62;
    v125 = v63;
    v126 = v127;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy9PencilKit11InkBehaviorV0C8PropertyOSayAA0C8FunctionVGGMd);
    v70[0] = 0;
    lazy protocol witness table accessor for type [InkBehavior.InkProperty : [InkFunction]] and conformance <> [A : B]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v131 = v92;
    v70[0] = 1;
    lazy protocol witness table accessor for type InkSmoothing and conformance InkSmoothing();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v92;
    v12 = v93;
    v13 = v94;
    v61 = *&v95;
    v14 = v96;
    type metadata accessor for CGAffineTransform(0);
    v70[0] = 2;
    lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type CGAffineTransform and conformance CGAffineTransform, type metadata accessor for CGAffineTransform);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v51 = *&v92;
    v52 = v93;
    v15 = v94;
    v16 = *&v95;
    v17 = v96;
    v18 = *&v97;
    v82 = 3;
    lazy protocol witness table accessor for type InkFeathering and conformance InkFeathering();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v53 = v18;
    v54 = v16;
    v19 = v83;
    v49 = v85;
    v50 = v84;
    v20 = v87;
    v47 = v88;
    v48 = v86;
    v46 = v89;
    v44 = a2;
    v45 = v90;
    v21 = v91;
    v72 = 4;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v55 = v19;
    v43 = v14;
    v22 = v18;
    v66 = v74;
    v67 = v75;
    v68 = v76;
    v60 = v77;
    v64 = v79;
    v65 = v78;
    v57 = v73;
    v58 = v80;
    v69 = v81;
    v70[0] = 5;
    lazy protocol witness table accessor for type InkAnimationDescriptor and conformance InkAnimationDescriptor();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v42 = v21;
    v62 = v92;
    v63 = v93;
    v127 = v94;
    v71 = 6;
    v23 = KeyedDecodingContainer.decode(_:forKey:)();
    v59 = 0;
    v24 = v23;
    (*(v6 + 8))(v8, v5);
    v38 = v24 & 1;
    v25 = v131;
    *v70 = v131;
    *&v70[8] = v11;
    *&v70[16] = v12;
    v41 = v13;
    v39 = v12;
    v36 = v11;
    v26 = v61;
    *&v70[24] = v13;
    *&v70[32] = v61;
    v27 = v43;
    v28 = v51;
    v29 = v52;
    *&v70[40] = v43;
    *&v70[48] = v51;
    *&v70[56] = v52;
    *&v70[64] = v15;
    *&v70[72] = v16;
    *&v70[80] = v17;
    *&v70[88] = v22;
    *&v70[96] = v19;
    *&v70[104] = v50;
    *&v70[112] = v49;
    *&v70[120] = v48;
    v40 = v20;
    *&v70[128] = v20;
    *&v70[136] = v47;
    v30 = v45;
    *&v70[144] = v46;
    *&v70[152] = v45;
    v70[160] = v42;
    *&v70[161] = v129[0];
    *&v70[164] = *(v129 + 3);
    v32 = v57;
    v31 = v58;
    *&v70[168] = v57;
    *&v70[176] = v66;
    *&v70[184] = v67;
    v33 = v60;
    *&v70[192] = v68;
    *&v70[200] = v60;
    *&v70[208] = v65;
    *&v70[216] = v64;
    *&v70[224] = v58;
    v34 = v69;
    v70[232] = v69;
    *&v70[233] = *v128;
    *&v70[236] = *&v128[3];
    *&v70[240] = v62;
    *&v70[248] = v63;
    v37 = v127;
    v70[256] = v127;
    v70[257] = v38;
    memcpy(v44, v70, 0x102uLL);
    outlined init with copy of InkBehavior(v70, &v92);
    __swift_destroy_boxed_opaque_existential_0(v56);
    v92 = v25;
    v93 = v36;
    v94 = v39;
    v95 = v41;
    v96 = v26;
    v97 = v27;
    v98 = v28;
    v99 = v29;
    v100 = v15;
    v101 = v16;
    v102 = v17;
    v103 = v22;
    v104 = v19;
    v105 = v50;
    v106 = v49;
    v107 = v48;
    v108 = v40;
    v109 = v47;
    v110 = v46;
    v111 = v30;
    v112 = v42;
    *v113 = v129[0];
    *&v113[3] = *(v129 + 3);
    v114 = v32;
    v115 = v66;
    v116 = v67;
    v117 = v68;
    v118 = v33;
    v119 = v65;
    v120 = v64;
    v121 = v31;
    v122 = v34;
    *v123 = *v128;
    *&v123[3] = *&v128[3];
    v124 = v62;
    v125 = v63;
    LOBYTE(v126) = v37;
    HIBYTE(v126) = v38;
  }

  return outlined destroy of InkBehavior(&v92);
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t outlined destroy of InkFunction(uint64_t a1)
{
  v2 = type metadata accessor for InkFunction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of InkDescriptorParticles?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit22InkDescriptorParticlesVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySNy12CoreGraphics7CGFloatVGGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9PencilKit8PKStrokeVGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9PencilKit13PKStrokePointVGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySo7CGPointVGMd);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t InkRendering.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9PencilKit12InkRenderingV10CodingKeys33_1629EF4F71A70372363BC5E8C6DB6C1CLLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - v7;
  v9 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  lazy protocol witness table accessor for type InkRendering.CodingKeys and conformance InkRendering.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v53 = v2;
    v54 = 0;
    v131 = 0;
    v60 = 0;
    v61 = 0;
    v58 = 0;
    v59 = 0;
    v56 = 0;
    v57 = 0;
    v55 = 0;
    __swift_destroy_boxed_opaque_existential_0(v52);
    v109[0] = 0;
    v110 = 0;
    v111 = v54;
    v112 = v131;
    v113 = v61;
    v114 = v60;
    v115 = v59;
    v116 = v58;
    v117 = v57;
    v118 = v56;
    v119 = v55;
    v120 = 0;
    v121 = 0;
    v122 = 0;
    v124 = 0;
    v123 = 0;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    memset(v130, 0, 27);
  }

  else
  {
    v51 = v6;
    LOBYTE(v63) = 0;
    lazy protocol witness table accessor for type InkRendering.BlendMode and conformance InkRendering.BlendMode();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v50 = v109[0];
    v93[119] = 1;
    lazy protocol witness table accessor for type InkDescriptorParticles and conformance InkDescriptorParticles();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v48 = a2;
    v49 = v94;
    v54 = v95;
    v131 = v96;
    v60 = v98;
    v61 = v97;
    v58 = v100;
    v59 = v99;
    v56 = v102;
    v57 = v101;
    v55 = v103;
    v11 = v104;
    v12 = v105;
    v13 = v106;
    v14 = v107 | (v108 << 16);
    memset(v93, 0, 107);
    outlined destroy of InkDescriptorParticles?(v93);
    v77 = 2;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v53 = 0;
    (*(v51 + 8))(v8, v5);
    v15 = v78;
    v36 = v78;
    v34 = v79;
    v51 = v80;
    v46 = v82;
    v47 = v81;
    v44 = v84;
    v45 = v83;
    v42 = v86;
    v43 = v85;
    v40 = v88;
    v41 = v87;
    v38 = v90;
    v39 = v89;
    v16 = v91;
    v37 = v92;
    memset(v62, 0, 107);
    outlined destroy of InkDescriptorParticles?(v62);
    v17 = v54;
    *(&v63 + 1) = v49;
    *&v64 = v54;
    *(&v64 + 1) = v131;
    *&v65 = v61;
    *(&v65 + 1) = v60;
    *&v66 = v59;
    *(&v66 + 1) = v58;
    *&v67 = v57;
    *(&v67 + 1) = v56;
    *&v68 = v55;
    *(&v68 + 1) = v11;
    *&v69 = v12;
    *(&v69 + 1) = v13;
    v35 = HIWORD(v14);
    BYTE2(v70) = BYTE2(v14);
    LOWORD(v70) = v14;
    *(&v70 + 1) = v15;
    v18 = v34;
    *&v71 = v34;
    *(&v71 + 1) = v51;
    *&v72 = v47;
    *(&v72 + 1) = v46;
    *&v73 = v45;
    *(&v73 + 1) = v44;
    *&v74 = v43;
    *(&v74 + 1) = v42;
    *&v75 = v41;
    *(&v75 + 1) = v40;
    *v76 = v39;
    *&v76[8] = v38;
    v76[18] = v37;
    *&v76[16] = v16;
    v19 = v70;
    v20 = v71;
    v21 = v72;
    v22 = v73;
    v23 = v64;
    v24 = v65;
    v25 = v66;
    v26 = v67;
    v27 = v68;
    v28 = v69;
    v29 = v74;
    v30 = v75;
    v31 = *v76;
    v32 = v48;
    *(v48 + 223) = *&v76[15];
    v33 = v50;
    LOBYTE(v63) = v50;
    v32[8] = v20;
    v32[9] = v21;
    *v32 = v63;
    v32[1] = v23;
    v32[6] = v28;
    v32[7] = v19;
    v32[4] = v26;
    v32[5] = v27;
    v32[2] = v24;
    v32[3] = v25;
    v32[12] = v30;
    v32[13] = v31;
    v32[10] = v22;
    v32[11] = v29;
    outlined init with copy of InkRendering(&v63, v109);
    __swift_destroy_boxed_opaque_existential_0(v52);
    v109[0] = v33;
    v110 = v49;
    v111 = v17;
    v112 = v131;
    v113 = v61;
    v114 = v60;
    v115 = v59;
    v116 = v58;
    v117 = v57;
    v118 = v56;
    v119 = v55;
    v120 = v11;
    v121 = v12;
    v122 = v13;
    v124 = v35;
    v123 = v14;
    *&v125 = v36;
    *(&v125 + 1) = v18;
    *&v126 = v51;
    *(&v126 + 1) = v47;
    *&v127 = v46;
    *(&v127 + 1) = v45;
    *&v128 = v44;
    *(&v128 + 1) = v43;
    *&v129 = v42;
    *(&v129 + 1) = v41;
    v130[0] = v40;
    v130[1] = v39;
    v130[2] = v38;
    BYTE2(v130[3]) = v37;
    LOWORD(v130[3]) = v16;
  }

  return outlined destroy of InkRendering(v109);
}

uint64_t outlined init with copy of InkFunction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InkFunction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t InkSmoothing.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9PencilKit12InkSmoothingV10CodingKeys33_1629EF4F71A70372363BC5E8C6DB6C1CLLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type InkSmoothing.CodingKeys and conformance InkSmoothing.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v17;
    v16 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = v17;
    v16 = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v17;
    v16 = 3;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13 = v17;
    v16 = 4;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v14 = v17;
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v11;
    a2[3] = v13;
    a2[4] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t specialized static PKInkBehavior.loadInkV2(url:)()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  v0 = Data.init(contentsOf:options:)();
  v2 = v1;
  lazy protocol witness table accessor for type InkDescriptor and conformance InkDescriptor();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  outlined consume of Data._Representation(v0, v2);
  memcpy(__dst, __src, 0x221uLL);
  memcpy(v5, __src, 0x221uLL);
  v3 = specialized InkDescriptor.objc(variant:textureLoader:)(0x746C7561666564, 0xE700000000000000, v5);

  outlined destroy of InkDescriptor(__dst);
  return v3;
}

id InkFunction.objc(property:)(uint64_t a1)
{
  v53 = a1;
  v2 = type metadata accessor for InkFunction();
  v3 = *(v1 + *(v2 + 36));
  v57 = v1;
  v4 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in InkFunction.objc(property:), v56, v3);
  v54 = v3;
  v55 = v2;
  v5 = v1 + *(v2 + 28);
  v6 = *(v5 + 16);
  v52 = v4;
  if (v6)
  {
  }

  else
  {
    v8 = *(v3 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      v11 = *v5;
      v12 = *(v5 + 8) - *v5;
      v13 = (v3 + 40);
      v7 = MEMORY[0x1E69E7CC0];
      do
      {
        if (!(v9 + 3 * (v10 / 3)))
        {
          v14 = *v13;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
          }

          v16 = *(v7 + 16);
          v15 = *(v7 + 24);
          if (v16 >= v15 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v7);
          }

          *(v7 + 16) = v16 + 1;
          *(v7 + 8 * v16 + 32) = v11 + v12 * v14;
        }

        ++v10;
        --v9;
        v13 += 2;
        --v8;
      }

      while (v8);
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }
  }

  (MEMORY[0x1EEE9AC00])();
  v49 = v1;
  v17 = v54;
  isUniquelyReferenced_nonNull_native = specialized Sequence.compactMap<A>(_:)(partial apply for closure #3 in InkFunction.objc(property:), &v48, v54);
  v50 = 0;
  v51 = isUniquelyReferenced_nonNull_native;
  v19 = v1 + v55[8];
  if (*(v19 + 16))
  {

    v20 = isUniquelyReferenced_nonNull_native;
  }

  else
  {
    v21 = *(v17 + 16);
    if (v21)
    {
      v22 = v17;
      v23 = 0;
      v24 = 0;
      v25 = *v19;
      v26 = (v22 + 32);
      v27 = *(v19 + 8) - *v19;
      v20 = MEMORY[0x1E69E7CC0];
      do
      {
        if (!(v23 + 3 * (v24 / 3)))
        {
          v28 = *v26;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 16) + 1, 1, v20);
            v20 = isUniquelyReferenced_nonNull_native;
          }

          v30 = *(v20 + 16);
          v29 = *(v20 + 24);
          if (v30 >= v29 >> 1)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v20);
            v20 = isUniquelyReferenced_nonNull_native;
          }

          *(v20 + 16) = v30 + 1;
          *(v20 + 8 * v30 + 32) = v25 + v27 * v28;
        }

        ++v24;
        --v23;
        v26 += 2;
        --v21;
      }

      while (v21);
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }
  }

  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  v49 = v1;
  v31 = specialized Sequence.flatMap<A>(_:)(partial apply for closure #5 in InkFunction.objc(property:), &v48, v54);
  v32 = qword_1C801B7E0[*(v1 + v55[5])];
  v33 = qword_1C801B828[*(v1 + v55[11])];
  v34 = *(v1 + v55[10]);
  v35 = 23;
  if ((v34 & 1) == 0)
  {
    v35 = 7;
  }

  v36 = 31;
  if ((v34 & 1) == 0)
  {
    v36 = 15;
  }

  if ((v34 & 2) != 0)
  {
    v37 = v36;
  }

  else
  {
    v37 = v35;
  }

  v38 = Array<A>.ns.getter(v51);

  v39 = Array<A>.ns.getter(v20);

  v40 = v52;
  v41 = Array<A>.ns.getter(v52);
  v42 = Array<A>.ns.getter(v7);

  v43 = Array<A>.ns.getter(v40);

  v44 = Array<A>.ns.getter(v31);

  v45 = objc_allocWithZone(PKInkFunction);
  v46 = [v45 initWithProperty:v53 input:v32 math:v33 inputMask:v37 deviceMask:3 inputPoints:v38 maxInputPoints:v39 minOutputPoints:v41 maxOutputPoints:v42 outputPoints:v43 controlPoints:v44 functionType:{0, v50}];

  return v46;
}

uint64_t InkFunction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9PencilKit11InkFunctionV10CodingKeysOGMd);
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v4 = &v27 - v3;
  v5 = type metadata accessor for InkFunction();
  v6 = (v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v34 = v6[7];
  v8[v34] = 3;
  v33 = v6[8];
  *&v8[v33] = xmmword_1C8019980;
  v9 = &v8[v6[9]];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = &v8[v6[10]];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = v6[11];
  *&v8[v11] = &outlined read-only object #0 of InkFunction.init(from:);
  v31 = v6[12];
  v32 = v11;
  *&v8[v31] = 0;
  v12 = v6[13];
  v8[v12] = 0;
  v13 = v6[14];
  v39 = v8;
  v40 = a1;
  v8[v13] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type InkFunction.CodingKeys and conformance InkFunction.CodingKeys();
  v36 = v4;
  v14 = v38;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    v15 = v39;
  }

  else
  {
    v17 = v33;
    v16 = v34;
    v38 = v9;
    v28 = v12;
    v29 = v10;
    v27 = v13;
    v18 = v35;
    v43 = 0;
    lazy protocol witness table accessor for type InkFunction.Input and conformance InkFunction.Input();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = v39;
    v39[v16] = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy12CoreGraphics7CGFloatVGMd);
    v43 = 1;
    lazy protocol witness table accessor for type ClosedRange<CGFloat> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<CGFloat> and conformance <> ClosedRange<A>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v15 + v17) = v41;
    v43 = 2;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v19 = v42;
    v20 = v38;
    *v38 = v41;
    v20[16] = v19;
    v43 = 3;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v21 = v42;
    v22 = v29;
    *v29 = v41;
    v22[16] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7CGPointVGMd);
    v43 = 4;
    lazy protocol witness table accessor for type [CGPoint] and conformance <A> [A](&lazy protocol witness table cache variable for type [CGPoint] and conformance <A> [A], &lazy protocol witness table cache variable for type CGPoint and conformance CGPoint);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v15 + v32) = v41;
    v43 = 5;
    lazy protocol witness table accessor for type InkFunction.InputProperties and conformance InkFunction.InputProperties();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v15 + v31) = v41;
    LOBYTE(v41) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit16DecodableDefaultVyAA11InkFunctionV4MathOGMd);
    lazy protocol witness table accessor for type DecodableDefault<Bool> and conformance DecodableDefault<A>(&lazy protocol witness table cache variable for type DecodableDefault<InkFunction.Math> and conformance DecodableDefault<A>, &_s9PencilKit16DecodableDefaultVyAA11InkFunctionV4MathOGMd);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v24 = v43;
    if (v43 == 5)
    {
      v24 = 0;
    }

    *(v15 + v28) = v24;
    LOBYTE(v41) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit16DecodableDefaultVySbGMd);
    lazy protocol witness table accessor for type DecodableDefault<Bool> and conformance DecodableDefault<A>(&lazy protocol witness table cache variable for type DecodableDefault<Bool> and conformance DecodableDefault<A>, &_s9PencilKit16DecodableDefaultVySbGMd);
    v25 = v36;
    v26 = v37;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v18 + 8))(v25, v26);
    *(v15 + v27) = v43 & 1;
    outlined init with copy of InkFunction(v15, v30);
  }

  __swift_destroy_boxed_opaque_existential_0(v40);
  return outlined destroy of InkFunction(v15);
}

id Array<A>.ns.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = v14;
    v4 = (a1 + 32);
    do
    {
      v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      v13 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
      v14 = v3;
      *&v12 = v5;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        v3 = v14;
      }

      *(v3 + 16) = v7 + 1;
      outlined init with take of Any(&v12, (v3 + 32 * v7 + 32));
      ++v4;
      --v1;
    }

    while (v1);
  }

  v8 = objc_allocWithZone(MEMORY[0x1E695DF70]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v8 initWithArray_];

  return v10;
}

uint64_t type metadata accessor for InkFunction()
{
  result = type metadata singleton initialization cache for InkFunction;
  if (!type metadata singleton initialization cache for InkFunction)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InkSmoothing and conformance InkSmoothing()
{
  result = lazy protocol witness table cache variable for type InkSmoothing and conformance InkSmoothing;
  if (!lazy protocol witness table cache variable for type InkSmoothing and conformance InkSmoothing)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkSmoothing and conformance InkSmoothing);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkSmoothing and conformance InkSmoothing;
  if (!lazy protocol witness table cache variable for type InkSmoothing and conformance InkSmoothing)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkSmoothing and conformance InkSmoothing);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InkFunction.CodingKeys and conformance InkFunction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type InkFunction.CodingKeys and conformance InkFunction.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkFunction.CodingKeys and conformance InkFunction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFunction.CodingKeys and conformance InkFunction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkFunction.CodingKeys and conformance InkFunction.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkFunction.CodingKeys and conformance InkFunction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFunction.CodingKeys and conformance InkFunction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkFunction.CodingKeys and conformance InkFunction.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkFunction.CodingKeys and conformance InkFunction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFunction.CodingKeys and conformance InkFunction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkFunction.CodingKeys and conformance InkFunction.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkFunction.CodingKeys and conformance InkFunction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFunction.CodingKeys and conformance InkFunction.CodingKeys);
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance InkSmoothing.CodingKeys()
{
  v1 = *v0;
  v2 = 0x73756C797473;
  v3 = 0x797469636F6C6576;
  v4 = 0x6F69746365726964;
  if (v1 != 3)
  {
    v4 = 0x737569646172;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6863756F74;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance InkAnimationDescriptor.CodingKeys()
{
  if (*v0)
  {
    return 0x746C6544657A6973;
  }

  else
  {
    return 0x6E6F697461727564;
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance InkDescriptorParticles.CodingKeys()
{
  v1 = *v0;
  v2 = 0x4E65727574786574;
  v3 = 0xD000000000000015;
  if (v1 != 6)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x656C636974726170;
  if (v1 != 4)
  {
    v4 = 0x6E6F697461746F72;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1702521203;
  if (v1 != 2)
  {
    v5 = 1802723693;
  }

  if (*v0)
  {
    v2 = 0x676E6963617073;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type CGFloat and conformance CGFloat()
{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InkDescriptorParticles.ParticleRotation and conformance InkDescriptorParticles.ParticleRotation()
{
  result = lazy protocol witness table cache variable for type InkDescriptorParticles.ParticleRotation and conformance InkDescriptorParticles.ParticleRotation;
  if (!lazy protocol witness table cache variable for type InkDescriptorParticles.ParticleRotation and conformance InkDescriptorParticles.ParticleRotation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkDescriptorParticles.ParticleRotation and conformance InkDescriptorParticles.ParticleRotation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkDescriptorParticles.ParticleRotation and conformance InkDescriptorParticles.ParticleRotation;
  if (!lazy protocol witness table cache variable for type InkDescriptorParticles.ParticleRotation and conformance InkDescriptorParticles.ParticleRotation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkDescriptorParticles.ParticleRotation and conformance InkDescriptorParticles.ParticleRotation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkDescriptorParticles.ParticleRotation and conformance InkDescriptorParticles.ParticleRotation;
  if (!lazy protocol witness table cache variable for type InkDescriptorParticles.ParticleRotation and conformance InkDescriptorParticles.ParticleRotation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkDescriptorParticles.ParticleRotation and conformance InkDescriptorParticles.ParticleRotation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkDescriptorParticles.ParticleRotation and conformance InkDescriptorParticles.ParticleRotation;
  if (!lazy protocol witness table cache variable for type InkDescriptorParticles.ParticleRotation and conformance InkDescriptorParticles.ParticleRotation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkDescriptorParticles.ParticleRotation and conformance InkDescriptorParticles.ParticleRotation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkDescriptorParticles.ParticleRotation and conformance InkDescriptorParticles.ParticleRotation;
  if (!lazy protocol witness table cache variable for type InkDescriptorParticles.ParticleRotation and conformance InkDescriptorParticles.ParticleRotation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkDescriptorParticles.ParticleRotation and conformance InkDescriptorParticles.ParticleRotation);
  }

  return result;
}

uint64_t closure #5 in InkFunction.objc(property:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a1 / 3;
  if (*a1 == 3 * v5)
  {
    result = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  result = type metadata accessor for InkFunction();
  if (v4 < -2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = *(a2 + *(result + 36));
  v11 = *(v10 + 16);
  if (3 * v5 >= v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = 3 * (v5 + 1);
  if (((v5 + 1) * 3) >> 64 != v12 >> 63)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v12 < v11)
  {
    v13 = v10 + 32;
    v14 = (v13 + 48 * v5);
    v15 = *v14;
    v16 = v14[1];
    v17 = (v13 + 48 * (v5 + 1));
    v18 = *v17;
    v19 = v17[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMd);
    result = swift_allocObject();
    *(result + 16) = xmmword_1C80196F0;
    *(result + 32) = (v8 - v15) / (v18 - v15);
    *(result + 40) = (v7 - v16) / (v19 - v16);
LABEL_8:
    *a3 = result;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t protocol witness for CodingKeyRepresentable.init<A>(codingKey:) in conformance InkBehavior.InkProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type InkBehavior.InkProperty and conformance InkBehavior.InkProperty();

  return MEMORY[0x1EEE693D0](a1, a4, a2, a5, v10, a3);
}

unint64_t lazy protocol witness table accessor for type InkRendering.BlendMode and conformance InkRendering.BlendMode()
{
  result = lazy protocol witness table cache variable for type InkRendering.BlendMode and conformance InkRendering.BlendMode;
  if (!lazy protocol witness table cache variable for type InkRendering.BlendMode and conformance InkRendering.BlendMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkRendering.BlendMode and conformance InkRendering.BlendMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkRendering.BlendMode and conformance InkRendering.BlendMode;
  if (!lazy protocol witness table cache variable for type InkRendering.BlendMode and conformance InkRendering.BlendMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkRendering.BlendMode and conformance InkRendering.BlendMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkRendering.BlendMode and conformance InkRendering.BlendMode;
  if (!lazy protocol witness table cache variable for type InkRendering.BlendMode and conformance InkRendering.BlendMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkRendering.BlendMode and conformance InkRendering.BlendMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkRendering.BlendMode and conformance InkRendering.BlendMode;
  if (!lazy protocol witness table cache variable for type InkRendering.BlendMode and conformance InkRendering.BlendMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkRendering.BlendMode and conformance InkRendering.BlendMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InkDescriptorParticles.CodingKeys and conformance InkDescriptorParticles.CodingKeys()
{
  result = lazy protocol witness table cache variable for type InkDescriptorParticles.CodingKeys and conformance InkDescriptorParticles.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkDescriptorParticles.CodingKeys and conformance InkDescriptorParticles.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkDescriptorParticles.CodingKeys and conformance InkDescriptorParticles.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkDescriptorParticles.CodingKeys and conformance InkDescriptorParticles.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkDescriptorParticles.CodingKeys and conformance InkDescriptorParticles.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkDescriptorParticles.CodingKeys and conformance InkDescriptorParticles.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkDescriptorParticles.CodingKeys and conformance InkDescriptorParticles.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkDescriptorParticles.CodingKeys and conformance InkDescriptorParticles.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkDescriptorParticles.CodingKeys and conformance InkDescriptorParticles.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkDescriptorParticles.CodingKeys and conformance InkDescriptorParticles.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkDescriptorParticles.CodingKeys and conformance InkDescriptorParticles.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkDescriptorParticles.CodingKeys and conformance InkDescriptorParticles.CodingKeys);
  }

  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type DecodableDefault<Bool> and conformance DecodableDefault<A>(&lazy protocol witness table cache variable for type [PKInkFunction] and conformance [A], &_sSaySo13PKInkFunctionCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13PKInkFunctionCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for PKInkFunction);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type [CGPoint] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo7CGPointVGMd);
    lazy protocol witness table accessor for type CGSize and conformance CGSize(a2, type metadata accessor for CGPoint);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *storeEnumTagSinglePayload for DecodableDefault(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

unint64_t lazy protocol witness table accessor for type InkMask and conformance InkMask()
{
  result = lazy protocol witness table cache variable for type InkMask and conformance InkMask;
  if (!lazy protocol witness table cache variable for type InkMask and conformance InkMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkMask and conformance InkMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkMask and conformance InkMask;
  if (!lazy protocol witness table cache variable for type InkMask and conformance InkMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkMask and conformance InkMask);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for InkFunction.Math(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InkSmoothing.CodingKeys and conformance InkSmoothing.CodingKeys()
{
  result = lazy protocol witness table cache variable for type InkSmoothing.CodingKeys and conformance InkSmoothing.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkSmoothing.CodingKeys and conformance InkSmoothing.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkSmoothing.CodingKeys and conformance InkSmoothing.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkSmoothing.CodingKeys and conformance InkSmoothing.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkSmoothing.CodingKeys and conformance InkSmoothing.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkSmoothing.CodingKeys and conformance InkSmoothing.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkSmoothing.CodingKeys and conformance InkSmoothing.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkSmoothing.CodingKeys and conformance InkSmoothing.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkSmoothing.CodingKeys and conformance InkSmoothing.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkSmoothing.CodingKeys and conformance InkSmoothing.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkSmoothing.CodingKeys and conformance InkSmoothing.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkSmoothing.CodingKeys and conformance InkSmoothing.CodingKeys);
  }

  return result;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      CGFloat._bridgeToObjectiveC()();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      swift_dynamicCast();
      v10 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v7 + 1;
      outlined init with take of Any(&v9, (v2 + 32 * v7 + 32));
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance InkDescriptor.CodingKeys()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x57746C7561666564;
  if (v1 != 5)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x726F697661686562;
  if (v1 != 3)
  {
    v4 = 0x7368746469576975;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1701667182;
  if (v1 != 1)
  {
    v5 = 0x6E697265646E6572;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance InkRendering.CodingKeys()
{
  v1 = 0x656C636974726170;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646F4D646E656C62;
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance InkBehavior.CodingKeys()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6E6968746F6F6D73;
    if (v1 != 1)
    {
      v5 = 0x736E6172546B6E69;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6E6F6974636E7566;
    }
  }

  else
  {
    v2 = 0xD000000000000018;
    if (v1 == 5)
    {
      v2 = 0xD000000000000013;
    }

    v3 = 0x6972656874616566;
    if (v1 != 3)
    {
      v3 = 0xD000000000000010;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance InkFunction.CodingKeys()
{
  v1 = *v0;
  v2 = 0x7475706E69;
  v3 = 1752457581;
  if (v1 != 6)
  {
    v3 = 0x64656C6261736964;
  }

  v4 = 0x736C6F72746E6F63;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x757074754F78616DLL;
  if (v1 != 2)
  {
    v5 = 0x7475706E4978616DLL;
  }

  if (*v0)
  {
    v2 = 0x74757074756FLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for NSObject(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t storeEnumTagSinglePayload for InkRendering.BlendMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance PKToolPickerCustomItemControlOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t storeEnumTagSinglePayload for InkAnimationDescriptor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for InkDescriptorParticles(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 106) = 0;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 107) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 107) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for InkMask(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PKInkingTool.InkType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t lazy protocol witness table accessor for type InkRendering.CodingKeys and conformance InkRendering.CodingKeys()
{
  result = lazy protocol witness table cache variable for type InkRendering.CodingKeys and conformance InkRendering.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkRendering.CodingKeys and conformance InkRendering.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkRendering.CodingKeys and conformance InkRendering.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkRendering.CodingKeys and conformance InkRendering.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkRendering.CodingKeys and conformance InkRendering.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkRendering.CodingKeys and conformance InkRendering.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkRendering.CodingKeys and conformance InkRendering.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkRendering.CodingKeys and conformance InkRendering.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkRendering.CodingKeys and conformance InkRendering.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkRendering.CodingKeys and conformance InkRendering.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkRendering.CodingKeys and conformance InkRendering.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkRendering.CodingKeys and conformance InkRendering.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InkAnimationDescriptor and conformance InkAnimationDescriptor()
{
  result = lazy protocol witness table cache variable for type InkAnimationDescriptor and conformance InkAnimationDescriptor;
  if (!lazy protocol witness table cache variable for type InkAnimationDescriptor and conformance InkAnimationDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkAnimationDescriptor and conformance InkAnimationDescriptor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkAnimationDescriptor and conformance InkAnimationDescriptor;
  if (!lazy protocol witness table cache variable for type InkAnimationDescriptor and conformance InkAnimationDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkAnimationDescriptor and conformance InkAnimationDescriptor);
  }

  return result;
}

PencilKit::InkFunction::Input_optional __swiftcall InkFunction.Input.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of InkFunction.Input.init(rawValue:), v3);

  v7 = 9;
  if (v5 < 9)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

id specialized InkDescriptorParticles.objc(textureLoader:)(double *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = *(a1 + 6);
  v8 = *(a1 + 12);
  v9 = *(a1 + 104);
  v10 = *(a1 + 105);
  v11 = *(a1 + 106);
  if (v7)
  {
    v13 = a1[9];
    v12 = a1[10];
    v15 = a1[7];
    v14 = a1[8];
    v16 = *(a1 + 5);
    v17 = *(a1 + 88);
    v18 = MEMORY[0x1CCA6CE70](*&v2, v3);
    v7 = MEMORY[0x1CCA6CE70](v16, v7);
  }

  else
  {
    v18 = MEMORY[0x1CCA6CE70](*&v2, v3);
    v17 = 0;
    v14 = 0.0;
    v15 = 1.0;
    v13 = 0.0;
    v12 = 1.0;
  }

  BYTE2(v21) = 0;
  BYTE1(v21) = v17 & 1;
  LOBYTE(v21) = v10;
  v19 = [objc_allocWithZone(PKInkParticleDescriptor) initWithTextureName:v18 textureImage:0 maskTextureName:v7 maskTextureImage:0 particleSpacing:v8 particleCount:v9 particleSize:v5 particleRotation:v4 maskScale:v6 maskScaleConstant:v15 maskMovement:v14 maskDepth:v13 initialRandomRotation:v12 maskInitialRandomOffset:v21 adjustEndCapParticleAlpha:v11 particleBlendMode:?];

  return v19;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  __CocoaSet.count.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type InkAnimationDescriptor.CodingKeys and conformance InkAnimationDescriptor.CodingKeys()
{
  result = lazy protocol witness table cache variable for type InkAnimationDescriptor.CodingKeys and conformance InkAnimationDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkAnimationDescriptor.CodingKeys and conformance InkAnimationDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkAnimationDescriptor.CodingKeys and conformance InkAnimationDescriptor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkAnimationDescriptor.CodingKeys and conformance InkAnimationDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkAnimationDescriptor.CodingKeys and conformance InkAnimationDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkAnimationDescriptor.CodingKeys and conformance InkAnimationDescriptor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkAnimationDescriptor.CodingKeys and conformance InkAnimationDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkAnimationDescriptor.CodingKeys and conformance InkAnimationDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkAnimationDescriptor.CodingKeys and conformance InkAnimationDescriptor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkAnimationDescriptor.CodingKeys and conformance InkAnimationDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkAnimationDescriptor.CodingKeys and conformance InkAnimationDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkAnimationDescriptor.CodingKeys and conformance InkAnimationDescriptor.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InkFunction.InputProperties and conformance InkFunction.InputProperties()
{
  result = lazy protocol witness table cache variable for type InkFunction.InputProperties and conformance InkFunction.InputProperties;
  if (!lazy protocol witness table cache variable for type InkFunction.InputProperties and conformance InkFunction.InputProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFunction.InputProperties and conformance InkFunction.InputProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkFunction.InputProperties and conformance InkFunction.InputProperties;
  if (!lazy protocol witness table cache variable for type InkFunction.InputProperties and conformance InkFunction.InputProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFunction.InputProperties and conformance InkFunction.InputProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkFunction.InputProperties and conformance InkFunction.InputProperties;
  if (!lazy protocol witness table cache variable for type InkFunction.InputProperties and conformance InkFunction.InputProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFunction.InputProperties and conformance InkFunction.InputProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkFunction.InputProperties and conformance InkFunction.InputProperties;
  if (!lazy protocol witness table cache variable for type InkFunction.InputProperties and conformance InkFunction.InputProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFunction.InputProperties and conformance InkFunction.InputProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkFunction.InputProperties and conformance InkFunction.InputProperties;
  if (!lazy protocol witness table cache variable for type InkFunction.InputProperties and conformance InkFunction.InputProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFunction.InputProperties and conformance InkFunction.InputProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkFunction.InputProperties and conformance InkFunction.InputProperties;
  if (!lazy protocol witness table cache variable for type InkFunction.InputProperties and conformance InkFunction.InputProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFunction.InputProperties and conformance InkFunction.InputProperties);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InkBehavior.CodingKeys and conformance InkBehavior.CodingKeys()
{
  result = lazy protocol witness table cache variable for type InkBehavior.CodingKeys and conformance InkBehavior.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkBehavior.CodingKeys and conformance InkBehavior.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkBehavior.CodingKeys and conformance InkBehavior.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkBehavior.CodingKeys and conformance InkBehavior.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkBehavior.CodingKeys and conformance InkBehavior.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkBehavior.CodingKeys and conformance InkBehavior.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkBehavior.CodingKeys and conformance InkBehavior.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkBehavior.CodingKeys and conformance InkBehavior.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkBehavior.CodingKeys and conformance InkBehavior.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkBehavior.CodingKeys and conformance InkBehavior.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkBehavior.CodingKeys and conformance InkBehavior.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkBehavior.CodingKeys and conformance InkBehavior.CodingKeys);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PKCustomTool.ParameterError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void type metadata accessor for PKToolPickerCustomItemControlOptions(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type InkDescriptor.CodingKeys and conformance InkDescriptor.CodingKeys()
{
  result = lazy protocol witness table cache variable for type InkDescriptor.CodingKeys and conformance InkDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkDescriptor.CodingKeys and conformance InkDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkDescriptor.CodingKeys and conformance InkDescriptor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkDescriptor.CodingKeys and conformance InkDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkDescriptor.CodingKeys and conformance InkDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkDescriptor.CodingKeys and conformance InkDescriptor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkDescriptor.CodingKeys and conformance InkDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkDescriptor.CodingKeys and conformance InkDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkDescriptor.CodingKeys and conformance InkDescriptor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkDescriptor.CodingKeys and conformance InkDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkDescriptor.CodingKeys and conformance InkDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkDescriptor.CodingKeys and conformance InkDescriptor.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InkDescriptor and conformance InkDescriptor()
{
  result = lazy protocol witness table cache variable for type InkDescriptor and conformance InkDescriptor;
  if (!lazy protocol witness table cache variable for type InkDescriptor and conformance InkDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkDescriptor and conformance InkDescriptor);
  }

  return result;
}

uint64_t type metadata completion function for DecodableDefault()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance InkRendering.BlendMode@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for InkBehavior.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t getEnumTagSinglePayload for InkFunction.Math(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t lazy protocol witness table accessor for type InkFunction.Input and conformance InkFunction.Input()
{
  result = lazy protocol witness table cache variable for type InkFunction.Input and conformance InkFunction.Input;
  if (!lazy protocol witness table cache variable for type InkFunction.Input and conformance InkFunction.Input)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFunction.Input and conformance InkFunction.Input);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkFunction.Input and conformance InkFunction.Input;
  if (!lazy protocol witness table cache variable for type InkFunction.Input and conformance InkFunction.Input)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFunction.Input and conformance InkFunction.Input);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkFunction.Input and conformance InkFunction.Input;
  if (!lazy protocol witness table cache variable for type InkFunction.Input and conformance InkFunction.Input)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFunction.Input and conformance InkFunction.Input);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkFunction.Input and conformance InkFunction.Input;
  if (!lazy protocol witness table cache variable for type InkFunction.Input and conformance InkFunction.Input)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFunction.Input and conformance InkFunction.Input);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkFunction.Input and conformance InkFunction.Input;
  if (!lazy protocol witness table cache variable for type InkFunction.Input and conformance InkFunction.Input)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFunction.Input and conformance InkFunction.Input);
  }

  return result;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

void std::vector<std::vector<ClipperLib::IntPoint>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<ClipperLib::IntPoint>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void PKFunctionPiecewiseBezier::~PKFunctionPiecewiseBezier(PKFunctionPiecewiseBezier *this)
{
  *this = &unk_1F4769138;
  v5 = (this + 152);
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 128);
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    *(this + 11) = v3;
    operator delete(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    *(this + 8) = v4;
    operator delete(v4);
  }

  PKFunction::~PKFunction(this);
  MEMORY[0x1CCA6ECB0]();
}

{
  *this = &unk_1F4769138;
  v5 = (this + 152);
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 128);
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    *(this + 11) = v3;
    operator delete(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    *(this + 8) = v4;
    operator delete(v4);
  }

  PKFunction::~PKFunction(this);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PKOutputFunction>,PKOutputFunction*>(uint64_t a1, PKOutputFunction *a2, PKOutputFunction *a3, PKOutputFunction *this)
{
  v11 = this;
  v12 = this;
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
    v6 = a2;
    do
    {
      PKOutputFunction::PKOutputFunction(this, v6);
      v6 = (v6 + 48);
      this = (v12 + 48);
      v12 = (v12 + 48);
    }

    while (v6 != a3);
    v10 = 1;
    do
    {
      v7 = *(v5 + 5);
      *(v5 + 5) = 0;
      if (v7)
      {
        (*(*v7 + 40))(v7);
      }

      v5 = (v5 + 48);
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PKOutputFunction>,PKOutputFunction*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void std::vector<PKOutputFunction>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PKOutputFunction>>(a1, a2);
  }

  std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
}

void std::vector<std::vector<ClipperLib::IntPoint>>::clear[abi:ne200100](uint64_t *a1)
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

void std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<ClipperLib::IntPoint>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

PKOutputFunction *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<PKOutputFunction>,PKOutputFunction*,PKOutputFunction*,PKOutputFunction*>(uint64_t a1, PKOutputFunction *a2, PKOutputFunction *a3, PKOutputFunction *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      PKOutputFunction::PKOutputFunction(v4, v6);
      v6 = (v6 + 48);
      v4 = (v11 + 48);
      v11 = (v11 + 48);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PKOutputFunction>,PKOutputFunction*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v4 + v7 + v13;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v13 + v5 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v6 + v8 + v19;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v31 + v29 + v40 + v30;
        v22 = __ROR8__(v31 + v29 + v40, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PKOutputFunction>,PKOutputFunction*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<PKOutputFunction>,PKOutputFunction*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void **std::__split_buffer<PKOutputFunction>::~__split_buffer(void **a1)
{
  std::__split_buffer<PKOutputFunction>::__destruct_at_end[abi:ne200100](a1, a1[1]);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<PKOutputFunction>::__destruct_at_end[abi:ne200100](void *result, uint64_t a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v4[2] = v2 - 48;
      result = *(v2 - 8);
      *(v2 - 8) = 0;
      if (result)
      {
        result = (*(*result + 40))(result);
        v2 = v4[2];
      }

      else
      {
        v2 -= 48;
      }
    }

    while (v2 != a2);
  }

  return result;
}

void *std::vector<PKOutputFunction>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  for (i = result[1]; i != v2; i -= 48)
  {
    result = *(i - 8);
    *(i - 8) = 0;
    if (result)
    {
      result = (*(*result + 40))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void PKFunction::~PKFunction(PKFunction *this)
{
  *this = &unk_1F47690F8;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

{
  PKFunction::~PKFunction(this);

  JUMPOUT(0x1CCA6ECB0);
}

void std::vector<PKOutputFunction>::__vdeallocate(void **a1)
{
  if (*a1)
  {
    std::vector<PKOutputFunction>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<double>>,std::vector<double>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<ClipperLib::IntPoint>>,std::vector<ClipperLib::IntPoint>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

double DKUHeadroomFromColor(CGColor *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1.0;
  }

  CGColorGetContentHeadroom();
  v3 = v2;
  if (v2 < 1.0)
  {
    if (qword_1ED6A52D0 != -1)
    {
      dispatch_once(&qword_1ED6A52D0, &__block_literal_global_4_0);
    }

    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(qword_1ED6A52C8, kCGRenderingIntentDefault, a1, 0);
    if (CopyByMatchingToColorSpace)
    {
      v5 = CopyByMatchingToColorSpace;
      DKUColorGetRGBAComponents(CopyByMatchingToColorSpace, &v9);
      CGColorRelease(v5);
      v6 = *&v9;
      if (*&v9 < *(&v9 + 1))
      {
        v6 = *(&v9 + 1);
      }

      if (v6 < v10)
      {
        v6 = v10;
      }

      v7 = floor(v6);
      if (vabdd_f64(v6, v7) < 0.001)
      {
        v6 = v7;
      }

      return fmax(v6, 1.0);
    }
  }

  return v3;
}

CGColor *DKUCGColorCreateConvertedToSRGB(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  [objc_msgSend(MEMORY[0x1E69DC888] colorWithCGColor:{a1), "getRed:green:blue:alpha:", &v3, &v4, &v5, v6}];
  v1 = [objc_msgSend(MEMORY[0x1E69DC888] colorWithRed:v3 green:v4 blue:v5 alpha:{v6[0]), "CGColor"}];
  CGColorRetain(v1);
  return v1;
}

_OWORD *DKUColorGetRGBAComponents(CGColor *a1, _OWORD *a2)
{
  if (!a1)
  {
    return 0;
  }

  ConvertedToSRGB = a1;
  ColorSpace = CGColorGetColorSpace(a1);
  if (!ColorSpace)
  {
    return 0;
  }

  if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelRGB)
  {
    v5 = 0;
  }

  else
  {
    ConvertedToSRGB = DKUCGColorCreateConvertedToSRGB(ConvertedToSRGB);
    v5 = ConvertedToSRGB;
  }

  if (CGColorGetNumberOfComponents(ConvertedToSRGB) == 4)
  {
    Components = CGColorGetComponents(ConvertedToSRGB);
    v7 = *(Components + 1);
    *a2 = *Components;
    a2[1] = v7;
    if (!v5)
    {
      return a2;
    }

    goto LABEL_11;
  }

  a2 = 0;
  if (v5)
  {
LABEL_11:
    CGColorRelease(v5);
  }

  return a2;
}

double PKFunctionPiecewiseBezier::solveForMinValue(double **this, double a2)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    if (PKFunctionPiecewiseBezier::solveForMinValue(double)::onceToken != -1)
    {
      dispatch_once(&PKFunctionPiecewiseBezier::solveForMinValue(double)::onceToken, &__block_literal_global_414);
    }

    return *this[1];
  }

  v3 = this[7];
  if (*v3 >= a2)
  {
    return *this[1];
  }

  if (*(this[8] - 1) <= a2)
  {
    return *(this[2] - 1);
  }

  v4 = 0x1FFFFFFFFFFFFFFALL;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v4 += 3;
  }

  while (v5 < a2);
  v7 = (a2 - *(v3 - 2)) / (v6 - *(v3 - 2));
  v8 = this[16][v4];
  v9 = *(*&v8 + 8 * vcvtmd_u64_f64(v7 * 10.0));
  return v9 + (*(*&v8 + 8 * vcvtpd_u64_f64(v7 * 10.0)) - v9) * -(floor(v7 * 10.0) - v7 * 10.0);
}

double PKFunctionPiecewiseBezier::solveForMaxValue(double **this, double a2)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    if (PKFunctionPiecewiseBezier::solveForMaxValue(double)::onceToken != -1)
    {
      dispatch_once(&PKFunctionPiecewiseBezier::solveForMaxValue(double)::onceToken, &__block_literal_global_418);
    }

    return *this[4];
  }

  v3 = this[10];
  if (*v3 >= a2)
  {
    return *this[4];
  }

  if (*(this[11] - 1) <= a2)
  {
    return *(this[5] - 1);
  }

  v4 = 0x1FFFFFFFFFFFFFFALL;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v4 += 3;
  }

  while (v5 < a2);
  v7 = (a2 - *(v3 - 2)) / (v6 - *(v3 - 2));
  v8 = this[19][v4];
  v9 = *(*&v8 + 8 * vcvtmd_u64_f64(v7 * 10.0));
  return v9 + (*(*&v8 + 8 * vcvtpd_u64_f64(v7 * 10.0)) - v9) * -(floor(v7 * 10.0) - v7 * 10.0);
}

id PKDynamicCast(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

CGColorSpaceRef __DKULinearExtendedDynamicRangeRGBColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F108]);
  qword_1ED6A52B8 = result;
  return result;
}

void sub_1C7CD8918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<PKStrokePathPointsShared>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::default_delete<PKStrokePathPointsShared>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      *(a2 + 16) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x1CCA6ECB0);
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

double PKFunctionPiecewiseSimpleLinear::_solveLinearPiecewise(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  if (*a1 >= a5)
  {
    return *a3;
  }

  if (*(a2 - 8) <= a5)
  {
    return *(a4 - 8);
  }

  v5 = (a3 - 8);
  do
  {
    v6 = *a1++;
    v7 = v6;
    ++v5;
  }

  while (v6 < a5);
  return *(v5 - 1) + (a5 - *(a1 - 2)) / (v7 - *(a1 - 2)) * (*v5 - *(v5 - 1));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * ((v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)) ^ v5);
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

uint64_t get_enum_tag_for_layout_string_9PencilKit22InkDescriptorParticlesVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InkBehavior.InkProperty()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for InkRendering.BlendMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InkFeathering(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9PencilKit11InkBehaviorV0E8PropertyO_SayAC0E8FunctionVGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9PencilKit11InkBehaviorV0E8PropertyOSayAC0E8FunctionVGGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for PKCustomTool.ParameterError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InkBehavior.InkProperty and conformance InkBehavior.InkProperty()
{
  result = lazy protocol witness table cache variable for type InkBehavior.InkProperty and conformance InkBehavior.InkProperty;
  if (!lazy protocol witness table cache variable for type InkBehavior.InkProperty and conformance InkBehavior.InkProperty)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkBehavior.InkProperty and conformance InkBehavior.InkProperty);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkBehavior.InkProperty and conformance InkBehavior.InkProperty;
  if (!lazy protocol witness table cache variable for type InkBehavior.InkProperty and conformance InkBehavior.InkProperty)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkBehavior.InkProperty and conformance InkBehavior.InkProperty);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkBehavior.InkProperty and conformance InkBehavior.InkProperty;
  if (!lazy protocol witness table cache variable for type InkBehavior.InkProperty and conformance InkBehavior.InkProperty)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkBehavior.InkProperty and conformance InkBehavior.InkProperty);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkBehavior.InkProperty and conformance InkBehavior.InkProperty;
  if (!lazy protocol witness table cache variable for type InkBehavior.InkProperty and conformance InkBehavior.InkProperty)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkBehavior.InkProperty and conformance InkBehavior.InkProperty);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for PKInkingTool.InkType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t lazy protocol witness table accessor for type InkBehavior and conformance InkBehavior()
{
  result = lazy protocol witness table cache variable for type InkBehavior and conformance InkBehavior;
  if (!lazy protocol witness table cache variable for type InkBehavior and conformance InkBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkBehavior and conformance InkBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkBehavior and conformance InkBehavior;
  if (!lazy protocol witness table cache variable for type InkBehavior and conformance InkBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkBehavior and conformance InkBehavior);
  }

  return result;
}

void PKFunctionConstant::~PKFunctionConstant(PKFunction *this)
{
  PKFunction::~PKFunction(this);

  JUMPOUT(0x1CCA6ECB0);
}

unint64_t lazy protocol witness table accessor for type InkRendering and conformance InkRendering()
{
  result = lazy protocol witness table cache variable for type InkRendering and conformance InkRendering;
  if (!lazy protocol witness table cache variable for type InkRendering and conformance InkRendering)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkRendering and conformance InkRendering);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkRendering and conformance InkRendering;
  if (!lazy protocol witness table cache variable for type InkRendering and conformance InkRendering)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkRendering and conformance InkRendering);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InkFeathering and conformance InkFeathering()
{
  result = lazy protocol witness table cache variable for type InkFeathering and conformance InkFeathering;
  if (!lazy protocol witness table cache variable for type InkFeathering and conformance InkFeathering)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFeathering and conformance InkFeathering);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkFeathering and conformance InkFeathering;
  if (!lazy protocol witness table cache variable for type InkFeathering and conformance InkFeathering)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFeathering and conformance InkFeathering);
  }

  return result;
}

PencilKit::InkBehavior::InkProperty_optional __swiftcall InkBehavior.InkProperty.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of InkBehavior.InkProperty.init(rawValue:), v3);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t storeEnumTagSinglePayload for InkBehavior.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InkDescriptorParticles(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 107))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

unint64_t lazy protocol witness table accessor for type InkDescriptorParticles and conformance InkDescriptorParticles()
{
  result = lazy protocol witness table cache variable for type InkDescriptorParticles and conformance InkDescriptorParticles;
  if (!lazy protocol witness table cache variable for type InkDescriptorParticles and conformance InkDescriptorParticles)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkDescriptorParticles and conformance InkDescriptorParticles);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkDescriptorParticles and conformance InkDescriptorParticles;
  if (!lazy protocol witness table cache variable for type InkDescriptorParticles and conformance InkDescriptorParticles)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkDescriptorParticles and conformance InkDescriptorParticles);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CGFloat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

PencilKit::InkDescriptorParticles::ParticleRotation_optional __swiftcall InkDescriptorParticles.ParticleRotation.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of InkDescriptorParticles.ParticleRotation.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t lazy protocol witness table accessor for type InkDescriptorParticles.ParticleBlendMode and conformance InkDescriptorParticles.ParticleBlendMode()
{
  result = lazy protocol witness table cache variable for type InkDescriptorParticles.ParticleBlendMode and conformance InkDescriptorParticles.ParticleBlendMode;
  if (!lazy protocol witness table cache variable for type InkDescriptorParticles.ParticleBlendMode and conformance InkDescriptorParticles.ParticleBlendMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkDescriptorParticles.ParticleBlendMode and conformance InkDescriptorParticles.ParticleBlendMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkDescriptorParticles.ParticleBlendMode and conformance InkDescriptorParticles.ParticleBlendMode;
  if (!lazy protocol witness table cache variable for type InkDescriptorParticles.ParticleBlendMode and conformance InkDescriptorParticles.ParticleBlendMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkDescriptorParticles.ParticleBlendMode and conformance InkDescriptorParticles.ParticleBlendMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkDescriptorParticles.ParticleBlendMode and conformance InkDescriptorParticles.ParticleBlendMode;
  if (!lazy protocol witness table cache variable for type InkDescriptorParticles.ParticleBlendMode and conformance InkDescriptorParticles.ParticleBlendMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkDescriptorParticles.ParticleBlendMode and conformance InkDescriptorParticles.ParticleBlendMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkDescriptorParticles.ParticleBlendMode and conformance InkDescriptorParticles.ParticleBlendMode;
  if (!lazy protocol witness table cache variable for type InkDescriptorParticles.ParticleBlendMode and conformance InkDescriptorParticles.ParticleBlendMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkDescriptorParticles.ParticleBlendMode and conformance InkDescriptorParticles.ParticleBlendMode);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InkFunction.Input(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void type metadata accessor for ClosedRange<CGFloat>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void type metadata accessor for [CGPoint]()
{
  if (!lazy cache variable for type metadata for [CGPoint])
  {
    type metadata accessor for CGPoint(255);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [CGPoint]);
    }
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance InkMask.CodingKeys()
{
  v1 = *v0;
  v2 = 0x4E65727574786574;
  v3 = 0x746E656D65766F6DLL;
  v4 = 0x6874706564;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C616373;
  if (v1 != 1)
  {
    v5 = 0x6E6F43656C616373;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

PencilKit::InkFunction::Math_optional __swiftcall InkFunction.Math.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of InkFunction.Math.init(rawValue:), v3);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t lazy protocol witness table accessor for type InkMask.CodingKeys and conformance InkMask.CodingKeys()
{
  result = lazy protocol witness table cache variable for type InkMask.CodingKeys and conformance InkMask.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkMask.CodingKeys and conformance InkMask.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkMask.CodingKeys and conformance InkMask.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkMask.CodingKeys and conformance InkMask.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkMask.CodingKeys and conformance InkMask.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkMask.CodingKeys and conformance InkMask.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkMask.CodingKeys and conformance InkMask.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkMask.CodingKeys and conformance InkMask.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkMask.CodingKeys and conformance InkMask.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkMask.CodingKeys and conformance InkMask.CodingKeys;
  if (!lazy protocol witness table cache variable for type InkMask.CodingKeys and conformance InkMask.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkMask.CodingKeys and conformance InkMask.CodingKeys);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<std::string,WeightInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,WeightInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,WeightInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,WeightInfo>>>::find<std::string>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void type metadata completion function for InkFunction()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ClosedRange<CGFloat>(319, &lazy cache variable for type metadata for ClosedRange<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E5F90]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ClosedRange<CGFloat>?();
      if (v2 <= 0x3F)
      {
        type metadata accessor for [CGPoint]();
        if (v3 <= 0x3F)
        {
          type metadata accessor for ClosedRange<CGFloat>(319, &lazy cache variable for type metadata for DecodableDefault<InkFunction.Math>, lazy protocol witness table accessor for type InkFunction.Math and conformance InkFunction.Math, &type metadata for InkFunction.Math, type metadata accessor for DecodableDefault);
          if (v4 <= 0x3F)
          {
            type metadata accessor for DecodableDefault<Bool>();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for ClosedRange<CGFloat>?()
{
  if (!lazy cache variable for type metadata for ClosedRange<CGFloat>?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSNy12CoreGraphics7CGFloatVGMd);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ClosedRange<CGFloat>?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type InkFunction.Math and conformance InkFunction.Math()
{
  result = lazy protocol witness table cache variable for type InkFunction.Math and conformance InkFunction.Math;
  if (!lazy protocol witness table cache variable for type InkFunction.Math and conformance InkFunction.Math)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFunction.Math and conformance InkFunction.Math);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkFunction.Math and conformance InkFunction.Math;
  if (!lazy protocol witness table cache variable for type InkFunction.Math and conformance InkFunction.Math)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFunction.Math and conformance InkFunction.Math);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkFunction.Math and conformance InkFunction.Math;
  if (!lazy protocol witness table cache variable for type InkFunction.Math and conformance InkFunction.Math)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFunction.Math and conformance InkFunction.Math);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkFunction.Math and conformance InkFunction.Math;
  if (!lazy protocol witness table cache variable for type InkFunction.Math and conformance InkFunction.Math)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFunction.Math and conformance InkFunction.Math);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkFunction.Math and conformance InkFunction.Math;
  if (!lazy protocol witness table cache variable for type InkFunction.Math and conformance InkFunction.Math)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFunction.Math and conformance InkFunction.Math);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InkFunction.Math and conformance InkFunction.Math;
  if (!lazy protocol witness table cache variable for type InkFunction.Math and conformance InkFunction.Math)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InkFunction.Math and conformance InkFunction.Math);
  }

  return result;
}

void type metadata accessor for DecodableDefault<Bool>()
{
  if (!lazy cache variable for type metadata for DecodableDefault<Bool>)
  {
    v0 = type metadata accessor for DecodableDefault();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DecodableDefault<Bool>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type [InkFunction] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9PencilKit11InkFunctionVGMd);
    lazy protocol witness table accessor for type CGSize and conformance CGSize(a2, type metadata accessor for InkFunction);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t DecodableDefault.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = a4;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v18[-v11 - 8];
  v13 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  outlined init with copy of Decoder(a1, v18);
  dispatch thunk of Decodable.init(from:)();
  if (v4)
  {

    (*(v13 + 56))(v12, 1, 1, a2);
    (*(a3 + 24))(a2, a3);
    __swift_destroy_boxed_opaque_existential_0(a1);
    if ((*(v13 + 48))(v12, 1, a2) != 1)
    {
      (*(v9 + 8))(v12, v8);
    }
  }

  else
  {
    (*(v13 + 56))(v12, 0, 1, a2);
    __swift_destroy_boxed_opaque_existential_0(a1);
    (*(v13 + 32))(v15, v12, a2);
  }

  return (*(v13 + 32))(v19, v15, a2);
}

uint64_t outlined init with copy of Decoder(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t InkMask.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9PencilKit7InkMaskV10CodingKeys33_1629EF4F71A70372363BC5E8C6DB6C1CLLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type InkMask.CodingKeys and conformance InkMask.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v20) = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v11;
    v19 = v9;
    v22 = 1;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13 = v20;
    v22 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit16DecodableDefaultVy12CoreGraphics7CGFloatVGMd);
    lazy protocol witness table accessor for type DecodableDefault<Bool> and conformance DecodableDefault<A>(&lazy protocol witness table cache variable for type DecodableDefault<CGFloat> and conformance DecodableDefault<A>, &_s9PencilKit16DecodableDefaultVy12CoreGraphics7CGFloatVGMd);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if (v21)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = v20;
    }

    v22 = 3;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = v20;
    v22 = 4;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v16 = v20;
    LOBYTE(v20) = 5;
    v17 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v19;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
    *(a2 + 24) = v14;
    *(a2 + 32) = v15;
    *(a2 + 40) = v16;
    *(a2 + 48) = v17 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t storeEnumTagSinglePayload for InkMask.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6874756D697A61;
    }

    else
    {
      v4 = 0x737569646172;
    }

    if (v2)
    {
      v3 = 0xE700000000000000;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x7974696361706FLL;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x32737569646172;
  }

  else
  {
    v4 = 0x6C6F687365726874;
    v3 = 0xE900000000000064;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6874756D697A61;
    }

    else
    {
      v9 = 0x737569646172;
    }

    if (a2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x32737569646172;
    if (a2 != 3)
    {
      v6 = 0x6C6F687365726874;
      v5 = 0xE900000000000064;
    }

    if (a2 == 2)
    {
      v7 = 0x7974696361706FLL;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

{
  v2 = 0xD000000000000014;
  v3 = "eyBag.framework/MobileKeyBag";
  if (a1 > 3u)
  {
    v4 = "com.apple.ink.watercolor";
    v5 = 0xD00000000000001DLL;
    if (a1 == 6)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v4 = "com.apple.ink.crayon";
    }

    v6 = "com.apple.ink.monoline";
    v7 = 0xD000000000000019;
    if (a1 != 4)
    {
      v7 = 0xD000000000000018;
      v6 = "com.apple.ink.fountainpen";
    }

    v8 = a1 <= 5u;
  }

  else
  {
    v4 = "com.apple.ink.pencil";
    v5 = 0xD000000000000016;
    if (a1 == 2)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v4 = "com.apple.ink.marker";
    }

    v6 = "com.apple.ink.pen";
    if (a1)
    {
      v7 = 0xD000000000000014;
    }

    else
    {
      v7 = 0xD000000000000011;
    }

    if (!a1)
    {
      v6 = "eyBag.framework/MobileKeyBag";
    }

    v8 = a1 <= 1u;
  }

  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v8)
  {
    v10 = v6;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = "com.apple.ink.watercolor";
      }

      else
      {
        v3 = "com.apple.ink.crayon";
        v2 = 0xD00000000000001DLL;
      }
    }

    else if (a2 == 4)
    {
      v3 = "com.apple.ink.monoline";
      v2 = 0xD000000000000019;
    }

    else
    {
      v3 = "com.apple.ink.fountainpen";
      v2 = 0xD000000000000018;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v3 = "com.apple.ink.pencil";
    }

    else
    {
      v3 = "com.apple.ink.marker";
      v2 = 0xD000000000000016;
    }
  }

  else if (a2)
  {
    v3 = "com.apple.ink.pen";
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (v9 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

{
  v2 = 0x797469636F6C6576;
  v3 = a1;
  if (a1 <= 3u)
  {
    v12 = 0xE700000000000000;
    v13 = 0x6874756D697A61;
    if (a1 != 2)
    {
      v13 = 0x6563726F66;
      v12 = 0xE500000000000000;
    }

    v14 = 0x6564757469746C61;
    if (!a1)
    {
      v14 = 0x797469636F6C6576;
    }

    if (a1 <= 1u)
    {
      v10 = v14;
    }

    else
    {
      v10 = v13;
    }

    if (v3 <= 1)
    {
      v11 = 0xE800000000000000;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v4 = 0x6E6F697461727564;
    v5 = 0xED0000646E456F54;
    v6 = 0x65636E6174736964;
    v7 = 0xED0000646E456F54;
    if (a1 != 7)
    {
      v6 = 0x756D697A416B6E69;
      v7 = 0xEA00000000006874;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0x6F69746365726964;
    v9 = 0xE90000000000006ELL;
    if (a1 != 4)
    {
      v8 = 0x6E6F697461727564;
      v9 = 0xEF74726174536F54;
    }

    if (a1 <= 5u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }

    if (v3 <= 5)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v16 = 0xE700000000000000;
        if (v10 != 0x6874756D697A61)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v16 = 0xE500000000000000;
        if (v10 != 0x6563726F66)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    v16 = 0xE800000000000000;
    if (a2)
    {
      if (v10 != 0x6564757469746C61)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v16 = 0xE90000000000006ELL;
        if (v10 != 0x6F69746365726964)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v16 = 0xEF74726174536F54;
        if (v10 != 0x6E6F697461727564)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v15 = 0x6E6F697461727564;
LABEL_40:
      v16 = 0xED0000646E456F54;
      if (v10 != v15)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 7)
    {
      v15 = 0x65636E6174736964;
      goto LABEL_40;
    }

    v2 = 0x756D697A416B6E69;
    v16 = 0xEA00000000006874;
  }

  if (v10 != v2)
  {
LABEL_49:
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_50;
  }

LABEL_46:
  if (v11 != v16)
  {
    goto LABEL_49;
  }

  v17 = 1;
LABEL_50:

  return v17 & 1;
}

{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 6579297;
    }

    else
    {
      v5 = 0x796C7069746C756DLL;
    }

    if (v2)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 7889261;
    if (a1 != 3)
    {
      v4 = 0xD000000000000012;
      v3 = 0x80000001C801FF50;
    }

    if (a1 == 2)
    {
      v5 = 7235949;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 2)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = v3;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 6579297;
    }

    else
    {
      v11 = 0x796C7069746C756DLL;
    }

    if (a2)
    {
      v10 = 0xE300000000000000;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 7889261;
    v8 = 0x80000001C801FF50;
    if (a2 == 3)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v7 = 0xD000000000000012;
    }

    if (a2 == 2)
    {
      v9 = 7235949;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE300000000000000;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0xE400000000000000;
    v10 = 1752457581;
    v11 = 0xE800000000000000;
    if (a1 != 6)
    {
      v10 = 0x64656C6261736964;
      v9 = 0xE800000000000000;
    }

    v12 = 0x736C6F72746E6F63;
    if (a1 != 4)
    {
      v12 = 0xD000000000000010;
      v11 = 0x80000001C801FF90;
    }

    if (a1 <= 5u)
    {
      v7 = v12;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 5)
    {
      v8 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x757074754F78616DLL;
    v5 = 0xE900000000000074;
    if (a1 != 2)
    {
      v4 = 0x7475706E4978616DLL;
      v5 = 0xE800000000000000;
    }

    v6 = 0x74757074756FLL;
    if (a1)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v6 = 0x7475706E69;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE400000000000000;
        if (v7 != 1752457581)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE800000000000000;
        if (v7 != 0x64656C6261736964)
        {
LABEL_47:
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE800000000000000;
      if (v7 != 0x736C6F72746E6F63)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0x80000001C801FF90;
      if (v7 != 0xD000000000000010)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE900000000000074;
      if (v7 != 0x757074754F78616DLL)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v7 != 0x7475706E4978616DLL)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE600000000000000;
    if (v7 != 0x74757074756FLL)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE500000000000000;
    if (v7 != 0x7475706E69)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t getEnumTagSinglePayload for InkMask.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](void *a1, void *a2)
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

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void sub_1C7CDB228(_Unwind_Exception *a1)
{
  if (v3)
  {
  }

  _Unwind_Resume(a1);
}

double std::normal_distribution<double>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(uint64_t a1, unsigned int *a2, double *a3)
{
  if (*(a1 + 24))
  {
    *(a1 + 24) = 0;
    v5 = *(a1 + 16);
  }

  else
  {
    do
    {
      do
      {
        v7 = std::generate_canonical[abi:ne200100]<double,53ul,std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(a2) * 2.0 + -1.0;
        v8 = std::generate_canonical[abi:ne200100]<double,53ul,std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(a2) * 2.0 + -1.0;
        v9 = v8 * v8 + v7 * v7;
      }

      while (v9 > 1.0);
    }

    while (v9 == 0.0);
    v10 = sqrt(log(v8 * v8 + v7 * v7) * -2.0 / v9);
    *(a1 + 16) = v8 * v10;
    *(a1 + 24) = 1;
    v5 = v7 * v10;
  }

  return *a3 + v5 * a3[1];
}

BOOL PKIsVisionDevice()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom] == 6;

  return v1;
}

BOOL PKIsPadDevice()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom] == 1;

  return v1;
}

PKInk *PKEraserInkForTypeAndWeight(uint64_t a1, double a2)
{
  v2 = a2;
  v3 = &PKInkIdentifierObjectEraser;
  if (a1)
  {
    v3 = &PKInkIdentifierEraser;
  }

  v5 = *v3;
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v6 = [PKInk currentInkVersionForInkIdentifier:v5];
  }

  else
  {
    v2 = 0.0;
    v6 = 3;
  }

  v7 = [PKInk alloc];
  v8 = [MEMORY[0x1E69DC888] clearColor];
  v9 = [(PKInk *)v7 initWithIdentifier:v5 color:v8 version:v6 variant:0 weight:v2];

  return v9;
}

uint64_t PKIsInternalTestApp()
{
  if (qword_1ED6A54E8 != -1)
  {
    dispatch_once(&qword_1ED6A54E8, &__block_literal_global_35);
  }

  return byte_1ED6A54A9;
}

void sub_1C7CDE504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = PKDrawingConcrete;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C7CDE588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = PKDrawing;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void PKPerformOnMainThread(void *a1)
{
  v1 = a1;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v1[2](v1);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __PKPerformOnMainThread_block_invoke;
    block[3] = &unk_1E82D6F70;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void sub_1C7CDEAB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ___ZL41PKAlwaysKeepPredictedTouchesAtEndOfStrokev_block_invoke()
{
  byte_1ED6A5561 = 0;
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"internalSettings.drawing.keepPredictedTouchesAtEndOfStroke"];

  if (v1)
  {
    byte_1ED6A5561 = 1;
  }
}

void std::vector<double>::resize(void *a1, unint64_t a2)
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
    std::vector<double>::__append(a1, a2 - v2);
  }
}

double std::generate_canonical[abi:ne200100]<double,53ul,std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(unsigned int *a1)
{
  v1 = 48271 * (*a1 % 0xADC8);
  v2 = 3399 * (*a1 / 0xADC8);
  v3 = v1 >= v2;
  v4 = v1 - v2;
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0x7FFFFFFF;
  }

  v6 = v5 + v4;
  v7 = v6 - 1;
  v8 = v6 / 0xADC8;
  v9 = 48271 * (v6 % 0xADC8);
  v8 *= 3399;
  v3 = v9 >= v8;
  v10 = v9 - v8;
  if (v3)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0x7FFFFFFF;
  }

  v12 = v11 + v10;
  *a1 = v12;
  return (v7 + (v12 - 1) * 2147483650.0) / 4.61168601e18;
}

Class ___ZL18PDFScrollViewClassv_block_invoke()
{
  result = NSClassFromString(&cfstr_Pdfscrollview.isa);
  qword_1EC291550 = result;
  return result;
}

id PKLongPressGestureRecognizer.init(target:action:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___PKLongPressGestureRecognizer_allowableMovement] = 0x4010000000000000;
  *&v2[OBJC_IVAR___PKLongPressGestureRecognizer_allowableTotalMovement] = 0x4024000000000000;
  *&v2[OBJC_IVAR___PKLongPressGestureRecognizer_minimumPressDuration] = 0x3FE0000000000000;
  v5 = &v2[OBJC_IVAR___PKLongPressGestureRecognizer_startLocation];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v2[OBJC_IVAR___PKLongPressGestureRecognizer_pressStartLocations] = MEMORY[0x1E69E7CC0];
  outlined init with copy of (CIContextOption, Any)(a1, v20, &_sypSgMd);
  v6 = v21;
  if (v21)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v20, v21);
    v8 = *(v6 - 8);
    MEMORY[0x1EEE9AC00](v7);
    v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for PKLongPressGestureRecognizer();
  v19.receiver = v2;
  v19.super_class = v12;
  v13 = objc_msgSendSuper2(&v19, sel_initWithTarget_action_, v11, a2);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C80198D0;
  v15 = v13;
  *(v14 + 32) = Int._bridgeToObjectiveC()();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 setAllowedTouchTypes_];

  v17 = MEMORY[0x1CCA6CE70](0xD000000000000023, 0x80000001C8020CC0);
  [v15 setName_];

  outlined destroy of (CIImageOption, Any)(a1, &_sypSgMd);
  return v15;
}

uint64_t outlined destroy of (CIImageOption, Any)(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C7CDF718(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

double PKMaxHoverHeight()
{
  v18[2] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&hover_height_lock);
  v0 = PKMaxHoverHeight_sMaxHoverHeight;
  if (*&PKMaxHoverHeight_sMaxHoverHeight < 0.0)
  {
    v1 = IOHIDEventSystemClientCreateWithType();
    if (v1)
    {
      v2 = v1;
      v17[0] = @"PrimaryUsagePage";
      v17[1] = @"PrimaryUsage";
      v18[0] = &unk_1F47C1718;
      v18[1] = &unk_1F47C1730;
      v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
      IOHIDEventSystemClientSetMatching();
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v4 = IOHIDEventSystemClientCopyServices(v2);
      v5 = [(__CFArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v0 = 0;
      if (v5)
      {
        v6 = v5;
        v7 = *v13;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = IOHIDServiceClientCopyProperty(*(*(&v12 + 1) + 8 * i), @"MaxHoverHeight");
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v9 doubleValue];
              v0 = v10;

              goto LABEL_13;
            }
          }

          v6 = [(__CFArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:

      CFRelease(v2);
    }

    else
    {
      v0 = 0;
    }

    PKMaxHoverHeight_sMaxHoverHeight = v0;
  }

  os_unfair_lock_unlock(&hover_height_lock);
  return *&v0;
}

void sub_1C7CE0058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PKIsAutoRefineEnabled()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    v1 = [MEMORY[0x1E69ADFB8] sharedConnection];
    v2 = [v1 isPersonalizedHandwritingResultsAllowed];

    return v2;
  }

  return result;
}

id specialized PKTiledViewAnimationController.init(tiledView:)()
{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___PKTiledViewAnimationController_drawingContinuations] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR___PKTiledViewAnimationController_mtkView] = 0;
  *&v0[OBJC_IVAR___PKTiledViewAnimationController_renderer] = 0;
  *&v0[OBJC_IVAR___PKTiledViewAnimationController_newBehavior] = 0;
  swift_unknownObjectWeakAssign();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PKTiledViewAnimationController();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PKCheckedDynamicCast(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKDynamicCast(a1, v3);
  v5 = v4;
  if (v3 && !v4)
  {
    v6 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412546;
      v10 = objc_opt_class();
      v11 = 2112;
      v12 = a1;
      v8 = v10;
      _os_log_error_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_ERROR, "Unexpected object type in checked dynamic cast %@ expects %@", &v9, 0x16u);
    }
  }

  return v5;
}

CGColorRef DKUCGColorCreateDeviceRGB(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  components[4] = *MEMORY[0x1E69E9840];
  components[0] = a1;
  components[1] = a2;
  components[2] = a3;
  components[3] = a4;
  if (qword_1ED6A52B0 != -1)
  {
    dispatch_once(&qword_1ED6A52B0, &__block_literal_global_67);
  }

  return CGColorCreate(_MergedGlobals_157, components);
}

CGColorSpaceRef __DKUDeviceRGBColorSpace_block_invoke()
{
  result = CGColorSpaceCreateDeviceRGB();
  _MergedGlobals_157 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PKInkingTool.InkType and conformance PKInkingTool.InkType()
{
  result = lazy protocol witness table cache variable for type PKInkingTool.InkType and conformance PKInkingTool.InkType;
  if (!lazy protocol witness table cache variable for type PKInkingTool.InkType and conformance PKInkingTool.InkType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKInkingTool.InkType and conformance PKInkingTool.InkType);
  }

  return result;
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void __PKIsInternalTestApp_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v2 = [v0 bundleIdentifier];

  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (has_internal_diagnostics)
  {
    if ([v2 isEqualToString:@"com.apple.TestApp"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"com.apple.ZoomTestApp") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"com.apple.PaperKitTestApp") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"com.apple.pencilkit.MultiDrawingCanvasTestApp"))
    {
      LOBYTE(has_internal_diagnostics) = 1;
    }

    else
    {
      LOBYTE(has_internal_diagnostics) = [v2 isEqualToString:@"com.apple.pencilkit.RecognitionTestApp"];
    }
  }

  byte_1ED6A54A9 = has_internal_diagnostics;
}

void sub_1C7CE1810(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

Swift::Void __swiftcall PKTiledViewAnimationController.didEndDrawing()()
{
  v1 = OBJC_IVAR___PKTiledViewAnimationController_drawingContinuations;
  v2 = *(*(v0 + OBJC_IVAR___PKTiledViewAnimationController_drawingContinuations) + 16);
  if (v2)
  {

    v3 = 32;
    do
    {
      swift_continuation_throwingResume();
      v3 += 8;
      --v2;
    }

    while (v2);
  }

  *(v0 + v1) = MEMORY[0x1E69E7CC0];
}

void std::vector<AttachmentTileInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 4);
        v4 -= 32;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t DKDIntersectionOfLines(double *a1, double *a2, double *a3, double *a4, double *a5, char a6, char a7)
{
  v7 = a1[1];
  v8 = a1[2] - *a1;
  v9 = a1[3] - v7;
  v10 = a2[1];
  v11 = a2[2] - *a2;
  v12 = a2[3] - v10;
  v13 = (v9 * (*a2 - *a1) + (v7 - v10) * v8) / (v12 * v8 - v11 * v9);
  *a4 = v13;
  if ((a6 & 1) == 0 && (v13 < 0.0 || v13 > 1.0))
  {
    return 0;
  }

  v15 = (v12 * (*a1 - *a2) + (a2[1] - a1[1]) * v11) / (v9 * v11 - v8 * v12);
  *a3 = v15;
  if ((a7 & 1) == 0 && (v15 < 0.0 || v15 > 1.0))
  {
    return 0;
  }

  v18 = a1[1];
  *a5 = *a1 + v15 * v8;
  a5[1] = v18 + *a3 * v9;
  return 1;
}

uint64_t getEnumTagSinglePayload for InkAnimationDescriptor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance RecognitionController.EducationPanelFeatures(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t _sSo15CIContextOptionaSYSCSY8rawValue03RawD0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_1C7CE3D08@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 color];
  *a2 = result;
  return result;
}

id sub_1C7CE3D70@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 weight];
  *a2 = v4;
  return result;
}

void sub_1C7CE3DE8(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  *(v4 + 40) = v3;
  v5 = *(v4 + 24);
  if (v5)
  {
    [(PKDataDetectorInteractionHelper *)v5 setWantsDataDetection:v3];
  }
}

uint64_t sub_1C7CE3E08@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = (*(v3 + 41) & 1) == 0;
  return result;
}

uint64_t sub_1C7CE3E80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 41);
  return result;
}

uint64_t sub_1C7CE3EF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 56);
  return result;
}

__n128 sub_1C7CE3F3C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  *a2 = *(v3 + 64);
  *(a2 + 16) = v4;
  result = *(v3 + 96);
  *(a2 + 32) = result;
  return result;
}

uint64_t sub_1C7CE3F98()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C7CE3FD0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C7CE4018()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C7CE4050()
{
  MEMORY[0x1CCA6FCF0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1C7CE40BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4[1] = *a1;
  result = PKStroke.ink.getter(v4);
  *a2 = v4[0];
  return result;
}

void sub_1C7CE4100(void **a1)
{
  v2 = *a1;
  v1 = v2;
  PKStroke.ink.setter(&v2);
}

double sub_1C7CE413C@<D0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  [*a1 transform];
  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

void sub_1C7CE41B0(void **a1)
{
  v2 = *a1;
  v1 = v2;
  PKStroke.path.setter(&v2);
}

id sub_1C7CE41EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mask];
  *a2 = result;
  return result;
}

void sub_1C7CE4228(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  PKStroke.mask.setter(v1);
}

id sub_1C7CE4258@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 randomSeed];
  *a2 = result;
  return result;
}

id sub_1C7CE42BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 width];
  *a2 = v4;
  return result;
}

uint64_t sub_1C7CE4320()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy9PencilKit27RecognitionSearchControllerC0E6ResultV_GMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C7CE4400()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy9PencilKit27RecognitionSearchControllerC0E6ResultV_GMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}
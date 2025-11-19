int main(int argc, const char **argv, const char **envp)
{
  _CFPrefsSetDirectModeEnabled();
  _CFPrefsSetReadOnly();
  v3 = [[CGPDFServiceListener alloc] initForXPCService];
  [v3 run];

  return 0;
}

void sub_100000E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = CGPDFPageImpl;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100001610(_Unwind_Exception *a1)
{
  __cxa_end_catch();

  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<CGColorSpace *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<CGContext *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void _PDFLog(os_log_type_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (_PDFLog_onceToken != -1)
  {
    _PDFLog_cold_1();
  }

  v12 = [NSString alloc];
  v13 = [[NSString alloc] initWithUTF8String:a3];
  v14 = [v12 initWithFormat:v13 arguments:&a9];

  if (a2 && v14)
  {
    v15 = sLog;
    if (os_log_type_enabled(sLog, a1))
    {
      *buf = 136446466;
      v22 = a2;
      v23 = 2114;
      v24 = v14;
      v16 = "%{public}20s | %{public}@";
      v17 = v15;
      v18 = a1;
      v19 = 22;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v17, v18, v16, buf, v19);
    }
  }

  else if (v14)
  {
    v20 = sLog;
    if (os_log_type_enabled(sLog, a1))
    {
      *buf = 138543362;
      v22 = v14;
      v16 = "%{public}@";
      v17 = v20;
      v18 = a1;
      v19 = 12;
      goto LABEL_10;
    }
  }
}

void sub_100001DEC(_Unwind_Exception *a1, void *a2, ...)
{
  va_start(va, a2);

  applesauce::CF::ObjectRef<CGDataProvider *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void std::vector<CGPDFPageImpl * {__strong}>::resize(void *a1, unint64_t a2, id *a3)
{
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v7 = *a1 + 8 * a2;
      while (v4 != v7)
      {
        v8 = *(v4 - 8);
        v4 -= 8;
      }

      a1[1] = v7;
    }
  }

  else
  {
    v6 = a2 - v5;

    std::vector<CGPDFPageImpl * {__strong}>::__append(a1, v6, a3);
  }
}

void *std::vector<CGPDFPageImpl * {__strong}>::__append(void *result, unint64_t a2, id *a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (a2 <= (v6 - v7) >> 3)
  {
    if (a2)
    {
      v12 = 8 * a2;
      v13 = &v7[a2];
      do
      {
        result = *a3;
        *v7++ = result;
        v12 -= 8;
      }

      while (v12);
      v7 = v13;
    }

    *(v5 + 8) = v7;
  }

  else
  {
    v8 = v7 - *result;
    v9 = a2 + (v8 >> 3);
    if (v9 >> 61)
    {
      std::vector<CGPDFPageImpl * {__strong}>::__throw_length_error[abi:ne200100]();
    }

    v10 = v6 - *result;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v17[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGPDFPageImpl * {__strong}>>(result, v11);
    }

    v14 = (8 * (v8 >> 3));
    v17[0] = 0;
    v17[1] = v14;
    v17[3] = 0;
    v15 = 8 * a2;
    v16 = &v14[a2];
    do
    {
      *v14++ = *a3;
      v15 -= 8;
    }

    while (v15);
    v17[2] = v16;
    std::vector<CGPDFPageImpl * {__strong}>::__swap_out_circular_buffer(v5, v17);
    return std::__split_buffer<CGPDFPageImpl * {__strong}>::~__split_buffer(v17);
  }

  return result;
}

void sub_100002B54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<CGPDFPageImpl * {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<CGPDFPageImpl * {__strong}>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5++;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CGPDFPageImpl * {__strong}>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

uint64_t std::__split_buffer<CGPDFPageImpl * {__strong}>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<CGPDFPageImpl * {__strong}>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

const void **applesauce::CF::ObjectRef<CGDataProvider *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}
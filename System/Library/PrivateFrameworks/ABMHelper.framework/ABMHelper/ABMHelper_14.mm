void diag::DIAGConfigurerPCI::stopping(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1174405120;
  v6[2] = ___ZN4diag17DIAGConfigurerPCI8stoppingEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_9_4;
  v6[4] = a1;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::SharedSynchronizable<diag::DIAGConfigurer>::execute_wrapped((a1 + 8), v6);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN4diag17DIAGConfigurerPCI8stoppingEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke(capabilities::radio *a1)
{
  v2 = *(a1 + 4);
  if ((*(v2 + 48) | 4) == 4)
  {
    v3 = *(v2 + 64);
    LODWORD(block) = 2;
    BYTE4(block) = 0;
    v17 = 10;
    v4 = capabilities::radio::dal(a1);
    if (v4)
    {
      v5 = 1024;
    }

    else
    {
      v5 = 0x4000;
    }

    shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v4);
    if ((shouldUseMinBasebandTransportIOReadSize & 1) == 0)
    {
      shouldUseMinBasebandTransportIOReadSize = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
      v5 = 0x8000;
    }

    LODWORD(v18) = v5;
    shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadCount(shouldUseMinBasebandTransportIOReadSize);
    if (shouldUseMinBasebandTransportIOReadCount)
    {
      v8 = 4;
    }

    else
    {
      capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
      v8 = 16;
    }

    HIDWORD(v18) = v8;
    v19 = 0;
    LOBYTE(v20) = 0;
    aBlock = 0;
    v9 = (**v3)(v3, &block, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }
  }

  else
  {
    v9 = 1;
  }

  v10 = *(a1 + 5);
  if (v10 && *(a1 + 6))
  {
    v11 = _Block_copy(v10);
    v12 = v11;
    v13 = *(a1 + 6);
    block = MEMORY[0x277D85DD0];
    v17 = 1174405120;
    v18 = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke_0;
    v19 = &__block_descriptor_tmp_14_3;
    if (v11)
    {
      v14 = _Block_copy(v11);
    }

    else
    {
      v14 = 0;
    }

    v20 = v14;
    v21 = v9;
    dispatch_async(v13, &block);
    if (v20)
    {
      _Block_release(v20);
    }

    if (v12)
    {
      _Block_release(v12);
    }
  }
}

void sub_23C26E894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void diag::DIAGConfigurerPCI::stopped(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1174405120;
  v6[2] = ___ZN4diag17DIAGConfigurerPCI7stoppedEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_12_5;
  v6[4] = a1;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::SharedSynchronizable<diag::DIAGConfigurer>::execute_wrapped((a1 + 8), v6);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN4diag17DIAGConfigurerPCI7stoppedEN8dispatch8callbackIU13block_pointerFvbEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  if ((*(v2 + 48) | 4) == 4)
  {
    v3 = BasebandTransport::close(*(v2 + 64));
    v4 = a1[5];
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v3 = 1;
    v4 = a1[5];
    if (!v4)
    {
      return;
    }
  }

  if (a1[6])
  {
    v5 = _Block_copy(v4);
    v6 = v5;
    v7 = a1[6];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1174405120;
    v9[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbEEclIJbEEEvDpT__block_invoke_0;
    v9[3] = &__block_descriptor_tmp_14_3;
    if (v5)
    {
      v8 = _Block_copy(v5);
    }

    else
    {
      v8 = 0;
    }

    aBlock = v8;
    v11 = v3;
    dispatch_async(v7, v9);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v6)
    {
      _Block_release(v6);
    }
  }
}

void diag::DIAGConfigurer::Parameters_t::~Parameters_t(diag::DIAGConfigurer::Parameters_t *this)
{
  v2 = *(this + 5);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 3);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = *(this + 1);
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *(this + 1);
    if (!v4)
    {
      return;
    }
  }

  CFRelease(v4);
}

uint64_t _GLOBAL__sub_I_DIAGConfigurerPCI_cpp()
{
  result = ETLDIAGLoggingGetDefaultView();
  dword_280C05DA4 = result;
  return result;
}

void **BasebandTransport::getSupportedProtocols@<X0>(BasebandTransport *this@<X0>, void **a2@<X8>)
{
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  result = capabilities::radio::vendor(this);
  if (result > 2)
  {
    if (result == 3)
    {
      v53 = &v53;
      v54 = &v53;
      v55 = 0;
      v20 = operator new(0x18uLL);
      v20[4] = 8;
      *v20 = &v53;
      *(v20 + 1) = &v53;
      v53 = v20;
      v54 = v20;
      v55 = 1;
      v42 = operator new(0x18uLL);
      v42[4] = 17;
      *v42 = v20;
      *(v42 + 1) = &v53;
      *(v20 + 1) = v42;
      v53 = v42;
      v55 = 2;
      v43 = operator new(0x18uLL);
      v43[4] = 10;
      *v43 = v42;
      *(v43 + 1) = &v53;
      *(v42 + 1) = v43;
      v53 = v43;
      v55 = 3;
      v44 = operator new(0x18uLL);
      v44[4] = 14;
      *v44 = v43;
      *(v44 + 1) = &v53;
      *(v43 + 1) = v44;
      v53 = v44;
      v55 = 4;
      v45 = operator new(0x18uLL);
      v45[4] = 16;
      *v45 = v44;
      *(v45 + 1) = &v53;
      *(v44 + 1) = v45;
      v53 = v45;
      v55 = 5;
      result = operator new(0x18uLL);
      *(result + 4) = 18;
      v46 = &v53;
      *result = v45;
      result[1] = &v53;
      *(v45 + 1) = result;
      v19 = 6;
      v53 = result;
      v55 = 6;
      if (a2[2])
      {
        result = a2[1];
        v47 = *(*a2 + 1);
        v48 = *result;
        v48[1] = v47;
        *v47 = v48;
        a2[2] = 0;
        if (result == a2)
        {
          v19 = 6;
        }

        else
        {
          do
          {
            v49 = result[1];
            operator delete(result);
            result = v49;
          }

          while (v49 != a2);
          if (!v55)
          {
            return result;
          }

          v19 = a2[2] + v55;
        }

        result = v53;
        v20 = v54;
        v51 = v53[1];
        v46 = *v54;
      }

      else
      {
        v51 = &v53;
      }

      v46[1] = v51;
      *v51 = v46;
LABEL_36:
      v52 = *a2;
      v52[1] = v20;
      *v20 = v52;
      *a2 = result;
      result[1] = a2;
      goto LABEL_37;
    }

    if (result != 4)
    {
      return result;
    }

    v53 = &v53;
    v54 = &v53;
    v55 = 0;
    v20 = operator new(0x18uLL);
    v20[4] = 10;
    *v20 = &v53;
    *(v20 + 1) = &v53;
    v53 = v20;
    v54 = v20;
    v55 = 1;
    v21 = operator new(0x18uLL);
    v21[4] = 19;
    *v21 = v20;
    *(v21 + 1) = &v53;
    *(v20 + 1) = v21;
    v53 = v21;
    v55 = 2;
    v22 = operator new(0x18uLL);
    v22[4] = 20;
    *v22 = v21;
    *(v22 + 1) = &v53;
    *(v21 + 1) = v22;
    v53 = v22;
    v55 = 3;
    v23 = operator new(0x18uLL);
    v23[4] = 21;
    *v23 = v22;
    *(v23 + 1) = &v53;
    *(v22 + 1) = v23;
    v53 = v23;
    v55 = 4;
    v24 = operator new(0x18uLL);
    v24[4] = 22;
    *v24 = v23;
    *(v24 + 1) = &v53;
    *(v23 + 1) = v24;
    v53 = v24;
    v55 = 5;
    v25 = operator new(0x18uLL);
    v25[4] = 23;
    v26 = &v53;
    *v25 = v24;
    *(v25 + 1) = &v53;
    *(v24 + 1) = v25;
    v53 = v25;
    v55 = 6;
    result = operator new(0x18uLL);
    *(result + 4) = 24;
    *result = v25;
    result[1] = &v53;
    *(v25 + 1) = result;
    v19 = 7;
    v53 = result;
    v55 = 7;
    if (a2[2])
    {
      result = a2[1];
      v27 = *(*a2 + 1);
      v28 = *result;
      v28[1] = v27;
      *v27 = v28;
      a2[2] = 0;
      if (result != a2)
      {
        do
        {
          v29 = result[1];
          operator delete(result);
          result = v29;
        }

        while (v29 != a2);
        goto LABEL_20;
      }

      v19 = 7;
LABEL_34:
      result = v53;
      v20 = v54;
      v50 = v53[1];
      v26 = *v54;
      goto LABEL_35;
    }

LABEL_27:
    v50 = &v53;
LABEL_35:
    v26[1] = v50;
    *v50 = v26;
    goto LABEL_36;
  }

  if (result == 1)
  {
    v53 = &v53;
    v54 = &v53;
    v55 = 0;
    v20 = operator new(0x18uLL);
    v20[4] = 0;
    *v20 = &v53;
    *(v20 + 1) = &v53;
    v53 = v20;
    v54 = v20;
    v55 = 1;
    v30 = operator new(0x18uLL);
    v30[4] = 1;
    *v30 = v20;
    *(v30 + 1) = &v53;
    *(v20 + 1) = v30;
    v53 = v30;
    v55 = 2;
    v31 = operator new(0x18uLL);
    v31[4] = 2;
    *v31 = v30;
    *(v31 + 1) = &v53;
    *(v30 + 1) = v31;
    v53 = v31;
    v55 = 3;
    v32 = operator new(0x18uLL);
    v32[4] = 3;
    *v32 = v31;
    *(v32 + 1) = &v53;
    *(v31 + 1) = v32;
    v53 = v32;
    v55 = 4;
    v33 = operator new(0x18uLL);
    v33[4] = 4;
    *v33 = v32;
    *(v33 + 1) = &v53;
    *(v32 + 1) = v33;
    v53 = v33;
    v55 = 5;
    v34 = operator new(0x18uLL);
    v34[4] = 5;
    *v34 = v33;
    *(v34 + 1) = &v53;
    *(v33 + 1) = v34;
    v53 = v34;
    v55 = 6;
    v35 = operator new(0x18uLL);
    v35[4] = 10;
    *v35 = v34;
    *(v35 + 1) = &v53;
    *(v34 + 1) = v35;
    v53 = v35;
    v55 = 7;
    v36 = operator new(0x18uLL);
    v36[4] = 12;
    *v36 = v35;
    *(v36 + 1) = &v53;
    *(v35 + 1) = v36;
    v53 = v36;
    v55 = 8;
    v37 = operator new(0x18uLL);
    v37[4] = 14;
    *v37 = v36;
    *(v37 + 1) = &v53;
    *(v36 + 1) = v37;
    v53 = v37;
    v55 = 9;
    v38 = operator new(0x18uLL);
    v38[4] = 11;
    v26 = &v53;
    *v38 = v37;
    *(v38 + 1) = &v53;
    *(v37 + 1) = v38;
    v53 = v38;
    v55 = 10;
    result = operator new(0x18uLL);
    *(result + 4) = 15;
    *result = v38;
    result[1] = &v53;
    *(v38 + 1) = result;
    v19 = 11;
    v53 = result;
    v55 = 11;
    if (a2[2])
    {
      result = a2[1];
      v39 = *(*a2 + 1);
      v40 = *result;
      v40[1] = v39;
      *v39 = v40;
      a2[2] = 0;
      if (result != a2)
      {
        do
        {
          v41 = result[1];
          operator delete(result);
          result = v41;
        }

        while (v41 != a2);
LABEL_20:
        if (!v55)
        {
          return result;
        }

        v19 = a2[2] + v55;
        goto LABEL_34;
      }

      v19 = 11;
      goto LABEL_34;
    }

    goto LABEL_27;
  }

  if (result == 2)
  {
    v53 = &v53;
    v54 = &v53;
    v55 = 0;
    v4 = operator new(0x18uLL);
    v4[4] = 6;
    *v4 = &v53;
    *(v4 + 1) = &v53;
    v53 = v4;
    v54 = v4;
    v55 = 1;
    v5 = operator new(0x18uLL);
    v5[4] = 7;
    *v5 = v4;
    *(v5 + 1) = &v53;
    *(v4 + 1) = v5;
    v53 = v5;
    v55 = 2;
    v6 = operator new(0x18uLL);
    v6[4] = 8;
    *v6 = v5;
    *(v6 + 1) = &v53;
    *(v5 + 1) = v6;
    v53 = v6;
    v55 = 3;
    v7 = operator new(0x18uLL);
    v7[4] = 9;
    *v7 = v6;
    *(v7 + 1) = &v53;
    *(v6 + 1) = v7;
    v53 = v7;
    v55 = 4;
    v8 = operator new(0x18uLL);
    v8[4] = 10;
    *v8 = v7;
    *(v8 + 1) = &v53;
    *(v7 + 1) = v8;
    v53 = v8;
    v55 = 5;
    result = capabilities::abs::supportsETSProtocol(v8);
    if (result)
    {
      result = operator new(0x18uLL);
      *(result + 4) = 13;
      v9 = v53;
      *result = v53;
      result[1] = &v53;
      v9[1] = result;
      v53 = result;
      ++v55;
    }

    if (a2[2])
    {
      result = a2[1];
      v10 = *(*a2 + 1);
      v11 = *result;
      v11[1] = v10;
      *v10 = v11;
      a2[2] = 0;
      if (result != a2)
      {
        do
        {
          v12 = result[1];
          operator delete(result);
          result = v12;
        }

        while (v12 != a2);
      }
    }

    v13 = v55;
    if (v55)
    {
      v15 = v53;
      v14 = v54;
      v16 = v53[1];
      v17 = *v54;
      v17[1] = v16;
      *v16 = v17;
      v18 = *a2;
      v18[1] = v14;
      *v14 = v18;
      *a2 = v15;
      v15[1] = a2;
      v19 = a2[2] + v13;
LABEL_37:
      a2[2] = v19;
    }
  }

  return result;
}

void sub_23C26F2B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::list<BasebandTransport::Protocol>::~list(va);
  std::list<BasebandTransport::Protocol>::~list(v2);
  _Unwind_Resume(a1);
}

void sub_23C26F2D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<BasebandTransport::Protocol>::clear(va);
  std::list<BasebandTransport::Protocol>::~list(v2);
  _Unwind_Resume(a1);
}

uint64_t *std::list<BasebandTransport::Protocol>::~list(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void BasebandTransport::getSupportedProtocolsAsStringLowerCase(BasebandTransport *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  memset(v15, 170, sizeof(v15));
  BasebandTransport::getSupportedProtocols(this, v15);
  for (i = v15[1]; i != v15; i = i[1])
  {
    v4 = *(i + 4);
    memset(__p, 170, sizeof(__p));
    BasebandTransport::asString(v4, __p);
    if (SHIBYTE(__p[2]) >= 0)
    {
      v5 = (__p + HIBYTE(__p[2]));
    }

    else
    {
      v5 = (__p[0] + __p[1]);
    }

    if (SHIBYTE(__p[2]) >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    for (; v6 != v5; v6 = (v6 + 1))
    {
      *v6 = __tolower(*v6);
    }

    v7 = operator new(0x28uLL);
    v8 = v7;
    *v7 = 0;
    *(v7 + 1) = 0;
    if (SHIBYTE(__p[2]) < 0)
    {
      std::string::__init_copy_ctor_external((v7 + 16), __p[0], __p[1]);
    }

    else
    {
      *(v7 + 1) = *__p;
      *(v7 + 4) = __p[2];
    }

    v9 = *a2;
    *v8 = *a2;
    v8[1] = a2;
    *(v9 + 8) = v8;
    *a2 = v8;
    ++a2[2];
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v15[2])
  {
    v10 = v15[1];
    v11 = *(v15[0] + 1);
    v12 = *v15[1];
    *(v12 + 8) = v11;
    *v11 = v12;
    v15[2] = 0;
    if (v10 != v15)
    {
      do
      {
        v13 = v10[1];
        operator delete(v10);
        v10 = v13;
      }

      while (v13 != v15);
    }
  }
}

void sub_23C26F500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  v17 = v16;
  operator delete(v17);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::list<BasebandTransport::Protocol>::~list(&a15);
  std::list<std::string>::~list(v15);
  _Unwind_Resume(a1);
}

uint64_t BasebandTransport::asStringLowerCase@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memset(a2, 170, 24);
  result = BasebandTransport::asString(a1, a2);
  v4 = *(a2 + 23);
  v5 = v4;
  v6 = a2 + v4;
  if (v5 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = (*a2 + a2[1]);
  }

  if (v5 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  for (; v8 != v7; ++v8)
  {
    result = __tolower(*v8);
    *v8 = result;
  }

  return result;
}

void sub_23C26F5BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *std::list<std::string>::~list(char *a1)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 1);
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 2) = 0;
    if (v2 != a1)
    {
      do
      {
        v6 = *(v2 + 1);
        if (v2[39] < 0)
        {
          operator delete(*(v2 + 2));
        }

        operator delete(v2);
        v2 = v6;
      }

      while (v6 != a1);
    }
  }

  return a1;
}

void BasebandTransport::getSupportedProtocolsAsString(BasebandTransport *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  memset(v14, 170, sizeof(v14));
  BasebandTransport::getSupportedProtocols(this, v14);
  for (i = v14[1]; i != v14; i = i[1])
  {
    BasebandTransport::asString(*(i + 4), __p);
    v4 = operator new(0x28uLL);
    v5 = v4;
    *v4 = 0;
    *(v4 + 1) = 0;
    v6 = SHIBYTE(v13);
    if (SHIBYTE(v13) < 0)
    {
      std::string::__init_copy_ctor_external((v4 + 16), __p[0], __p[1]);
    }

    else
    {
      *(v4 + 1) = *__p;
      *(v4 + 4) = v13;
    }

    v7 = *a2;
    *v5 = *a2;
    v5[1] = a2;
    *(v7 + 8) = v5;
    *a2 = v5;
    ++a2[2];
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v14[2])
  {
    v8 = v14[1];
    v9 = *(v14[0] + 1);
    v10 = *v14[1];
    *(v10 + 8) = v9;
    *v9 = v10;
    v14[2] = 0;
    if (v8 != v14)
    {
      do
      {
        v11 = v8[1];
        operator delete(v8);
        v8 = v11;
      }

      while (v11 != v14);
    }
  }
}

void sub_23C26F798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  v18 = v16;
  operator delete(v18);
  operator delete(v17);
  std::list<BasebandTransport::Protocol>::~list(&a15);
  std::list<std::string>::~list(v15);
  _Unwind_Resume(a1);
}

uint64_t BasebandTransport::asString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  switch(result)
  {
    case 0:
      a2[23] = 3;
      *a2 = 16976;
      a2[2] = 76;
      a2[3] = 0;
      break;
    case 1:
      a2[23] = 3;
      *a2 = 16979;
      a2[2] = 76;
      a2[3] = 0;
      break;
    case 2:
      a2[23] = 4;
      strcpy(a2, "DIAG");
      break;
    case 3:
      a2[23] = 4;
      strcpy(a2, "REFS");
      break;
    case 4:
      a2[23] = 5;
      *a2 = 1481985361;
      a2[4] = 49;
      a2[5] = 0;
      break;
    case 5:
      a2[23] = 5;
      *a2 = 1481985361;
      a2[4] = 50;
      a2[5] = 0;
      break;
    case 6:
      a2[23] = 3;
      *a2 = 20306;
      a2[2] = 77;
      a2[3] = 0;
      break;
    case 7:
      a2[23] = 4;
      strcpy(a2, "BOOT");
      break;
    case 8:
      a2[23] = 3;
      *a2 = 21057;
      a2[2] = 73;
      a2[3] = 0;
      break;
    case 9:
      a2[23] = 3;
      *a2 = 21587;
      a2[2] = 84;
      a2[3] = 0;
      break;
    case 10:
      a2[23] = 2;
      strcpy(a2, "AT");
      break;
    case 11:
      a2[23] = 4;
      strcpy(a2, "ADPL");
      break;
    case 12:
      a2[23] = 8;
      strcpy(a2, "MEDIACTL");
      break;
    case 13:
      a2[23] = 3;
      *a2 = 21573;
      a2[2] = 83;
      a2[3] = 0;
      break;
    case 14:
      a2[23] = 4;
      strcpy(a2, "GNSS");
      break;
    case 15:
      a2[23] = 4;
      strcpy(a2, "QDSS");
      break;
    case 16:
      a2[23] = 5;
      *a2 = 1414808402;
      a2[4] = 72;
      a2[5] = 0;
      break;
    case 17:
      a2[23] = 3;
      *a2 = 17217;
      a2[2] = 80;
      a2[3] = 0;
      break;
    case 18:
      a2[23] = 4;
      strcpy(a2, "VCOM");
      break;
    case 19:
      a2[23] = 4;
      strcpy(a2, "MIPC");
      break;
    case 20:
      a2[23] = 3;
      *a2 = 18500;
      a2[2] = 76;
      a2[3] = 0;
      break;
    case 21:
      a2[23] = 3;
      *a2 = 21837;
      a2[2] = 88;
      a2[3] = 0;
      break;
    case 22:
      a2[23] = 3;
      *a2 = 16710;
      a2[2] = 67;
      a2[3] = 0;
      break;
    case 23:
      a2[23] = 3;
      *a2 = 17734;
      a2[2] = 80;
      a2[3] = 0;
      break;
    case 24:
      a2[23] = 7;
      strcpy(a2, "IQTRACE");
      break;
    default:
      a2[23] = 7;
      strcpy(a2, "Unknown");
      break;
  }

  return result;
}

{
  if (result > 1)
  {
    if (result != 2)
    {
      if (result == 3)
      {
        a2[23] = 7;
        strcpy(a2, "Stalled");
        return result;
      }

      goto LABEL_8;
    }

    a2[23] = 5;
    *a2 = 1869771333;
    a2[4] = 114;
    a2[5] = 0;
  }

  else
  {
    if (result)
    {
      if (result == 1)
      {
        a2[23] = 5;
        *a2 = 1684104530;
        a2[4] = 121;
        a2[5] = 0;
        return result;
      }

LABEL_8:
      a2[23] = 7;
      strcpy(a2, "Unknown");
      return result;
    }

    a2[23] = 8;
    strcpy(a2, "NotReady");
  }

  return result;
}

uint64_t BasebandTransport::asProtocol(char *__s1)
{
  v1 = __s1;
  if ((__s1[23] & 0x80000000) == 0)
  {
    result = strcmp(__s1, "PBL");
    if (!result)
    {
      return result;
    }

    if (!strcmp(v1, "SBL"))
    {
      return 1;
    }

    if (strcasecmp(v1, "DIAG"))
    {
      if (strcasecmp(v1, "REFS"))
      {
        if (strcasecmp(v1, "QMUX1"))
        {
          if (strcasecmp(v1, "QMUX2"))
          {
            if (strcasecmp(v1, "ROM"))
            {
              if (strcasecmp(v1, "BOOT"))
              {
                if (strcasecmp(v1, "ARI"))
                {
                  if (strcasecmp(v1, "STT"))
                  {
                    if (strcasecmp(v1, "AT"))
                    {
                      if (strcasecmp(v1, "ADPL"))
                      {
                        if (strcasecmp(v1, "MEDIACTL"))
                        {
                          if (strcasecmp(v1, "ETS"))
                          {
                            if (strcasecmp(v1, "GNSS"))
                            {
                              if (strcasecmp(v1, "QDSS"))
                              {
                                if (strcasecmp(v1, "RCTTH"))
                                {
                                  if (strcasecmp(v1, "ACP"))
                                  {
                                    if (strcasecmp(v1, "VCOM"))
                                    {
                                      if (strcasecmp(v1, "MIPC"))
                                      {
                                        if (strcasecmp(v1, "DHL"))
                                        {
                                          if (strcasecmp(v1, "MUX"))
                                          {
                                            if (strcasecmp(v1, "FAC"))
                                            {
                                              if (strcasecmp(v1, "FEP"))
                                              {
                                                goto LABEL_26;
                                              }

                                              return 23;
                                            }

                                            return 22;
                                          }

                                          return 21;
                                        }

                                        return 20;
                                      }

                                      return 19;
                                    }

                                    return 18;
                                  }

                                  return 17;
                                }

                                return 16;
                              }

                              return 15;
                            }

                            return 14;
                          }

                          return 13;
                        }

                        return 12;
                      }

                      return 11;
                    }

                    return 10;
                  }

                  return 9;
                }

                return 8;
              }

              return 7;
            }

            return 6;
          }

          return 5;
        }

        return 4;
      }

      return 3;
    }

    return 2;
  }

  v1 = *__s1;
  result = strcmp(*__s1, "PBL");
  if (!result)
  {
    return result;
  }

  if (!strcmp(v1, "SBL"))
  {
    return 1;
  }

  if (!strcasecmp(v1, "DIAG"))
  {
    return 2;
  }

  if (!strcasecmp(v1, "REFS"))
  {
    return 3;
  }

  if (!strcasecmp(v1, "QMUX1"))
  {
    return 4;
  }

  if (!strcasecmp(v1, "QMUX2"))
  {
    return 5;
  }

  if (!strcasecmp(v1, "ROM"))
  {
    return 6;
  }

  if (!strcasecmp(v1, "BOOT"))
  {
    return 7;
  }

  if (!strcasecmp(v1, "ARI"))
  {
    return 8;
  }

  if (!strcasecmp(v1, "STT"))
  {
    return 9;
  }

  if (!strcasecmp(v1, "AT"))
  {
    return 10;
  }

  if (!strcasecmp(v1, "ADPL"))
  {
    return 11;
  }

  if (!strcasecmp(v1, "MEDIACTL"))
  {
    return 12;
  }

  if (!strcasecmp(v1, "ETS"))
  {
    return 13;
  }

  if (!strcasecmp(v1, "GNSS"))
  {
    return 14;
  }

  if (!strcasecmp(v1, "QDSS"))
  {
    return 15;
  }

  if (!strcasecmp(v1, "RCTTH"))
  {
    return 16;
  }

  if (!strcasecmp(v1, "ACP"))
  {
    return 17;
  }

  if (!strcasecmp(v1, "VCOM"))
  {
    return 18;
  }

  if (!strcasecmp(v1, "MIPC"))
  {
    return 19;
  }

  if (!strcasecmp(v1, "DHL"))
  {
    return 20;
  }

  if (!strcasecmp(v1, "MUX"))
  {
    return 21;
  }

  if (!strcasecmp(v1, "FAC"))
  {
    return 22;
  }

  if (!strcasecmp(v1, "FEP"))
  {
    return 23;
  }

LABEL_26:
  if (!strcasecmp(v1, "IQTRACE"))
  {
    return 24;
  }

  else
  {
    return 25;
  }
}

uint64_t BasebandTransport::getDefaultTransportIOReadSize(capabilities::radio *a1)
{
  v1 = a1;
  v2 = capabilities::radio::dal(a1);
  if (v2)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0x4000;
  }

  shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v2);
  if (shouldUseMinBasebandTransportIOReadSize)
  {
    return v3;
  }

  if (v1 == 17)
  {
    return 0x80000;
  }

  if (v1 == 21 || v1 == 20)
  {
    return 61440;
  }

  v6 = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
  if (v1 == 10 && (v6 & 1) != 0)
  {
    return 3584;
  }

  if ((v1 - 19) > 5)
  {
    return 0x8000;
  }

  return dword_23C32EF70[v1 - 19];
}

uint64_t BasebandTransport::getDefaultTransportIOReadCount(capabilities::abs *a1)
{
  v1 = a1;
  shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadCount(a1);
  if (shouldUseMinBasebandTransportIOReadCount)
  {
    return 4;
  }

  switch(v1)
  {
    case 17:
      return 16;
    case 21:
      return 15;
    case 20:
      return 63;
  }

  v4 = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
  if (v1 == 10 && (v4 & 1) != 0)
  {
    return 15;
  }

  if (v1 <= 18)
  {
    if (v1 != 2)
    {
      if (v1 == 15 || v1 == 16)
      {
        return 36;
      }

      return 4;
    }

    return 16;
  }

  result = 31;
  if (v1 > 22)
  {
    if (v1 != 23)
    {
      if (v1 == 24)
      {
        return 86;
      }

      return 4;
    }
  }

  else if (v1 != 19)
  {
    return 15;
  }

  return result;
}

double BasebandTransport::Status::Status(BasebandTransport::Status *this)
{
  *this = 0;
  *(this + 4) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = 0;
  *(this + 4) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double BasebandTransport::Status::init(BasebandTransport::Status *this)
{
  *this = 0;
  *(this + 4) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t BasebandTransport::Status::toString@<X0>(BasebandTransport::Status *this@<X0>, _BYTE *a2@<X8>)
{
  v46 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v45[7] = v4;
  v45[8] = v4;
  v45[5] = v4;
  v45[6] = v4;
  v45[3] = v4;
  v45[4] = v4;
  v45[1] = v4;
  v45[2] = v4;
  v44 = v4;
  v45[0] = v4;
  *v42 = v4;
  v43 = v4;
  v40 = v4;
  v41 = v4;
  v38 = v4;
  v39 = v4;
  v37 = v4;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v37);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "State: ", 7);
  v6 = *this;
  if (*this > 1)
  {
    if (v6 == 2)
    {
      v7 = 5;
      v36 = 5;
      LODWORD(__p[0]) = 1869771333;
      v8 = 114;
      goto LABEL_12;
    }

    if (v6 == 3)
    {
      v7 = 7;
      v36 = 7;
      LODWORD(__p[0]) = 1818326099;
      v9 = 1684368492;
LABEL_9:
      *(__p + 3) = v9;
      goto LABEL_13;
    }

LABEL_8:
    v7 = 7;
    v36 = 7;
    LODWORD(__p[0]) = 1852534357;
    v9 = 1853321070;
    goto LABEL_9;
  }

  if (!v6)
  {
    v7 = 8;
    v36 = 8;
    __p[0] = 0x7964616552746F4ELL;
    goto LABEL_13;
  }

  if (v6 != 1)
  {
    goto LABEL_8;
  }

  v7 = 5;
  v36 = 5;
  LODWORD(__p[0]) = 1684104530;
  v8 = 121;
LABEL_12:
  BYTE4(__p[0]) = v8;
LABEL_13:
  *(__p + v7) = 0;
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, __p, v7);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", ", 2);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Async: ", 7);
  *(v12 + *(*v12 - 24) + 8) |= 1u;
  v13 = *(this + 4);
  v14 = MEMORY[0x23EECDF10]();
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", ", 2);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Total Rx: ", 10);
  v17 = MEMORY[0x23EECDF80](v16, *(this + 1) >> 10);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " KB, ", 5);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Total Tx: ", 10);
  v20 = MEMORY[0x23EECDF80](v19, *(this + 2) >> 10);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " KB, ", 5);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Total RX: ", 10);
  v23 = MEMORY[0x23EECDF80](v22, *(this + 1));
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " B, ", 4);
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Total TX: ", 10);
  v26 = MEMORY[0x23EECDF80](v25, *(this + 2));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " B", 2);
  if ((v36 & 0x80000000) == 0)
  {
    v27 = BYTE8(v44);
    if ((BYTE8(v44) & 0x10) == 0)
    {
      goto LABEL_15;
    }

LABEL_18:
    v29 = v44;
    if (v44 < *(&v41 + 1))
    {
      *&v44 = *(&v41 + 1);
      v29 = *(&v41 + 1);
    }

    v30 = v41;
    v28 = v29 - v41;
    if ((v29 - v41) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_33;
    }

    goto LABEL_21;
  }

  operator delete(__p[0]);
  v27 = BYTE8(v44);
  if ((BYTE8(v44) & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  if ((v27 & 8) == 0)
  {
    v28 = 0;
    a2[23] = 0;
    goto LABEL_29;
  }

  v30 = *(&v39 + 1);
  v28 = *(&v40 + 1) - *(&v39 + 1);
  if (*(&v40 + 1) - *(&v39 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
  {
LABEL_33:
    std::string::__throw_length_error[abi:ne200100]();
  }

LABEL_21:
  if (v28 >= 0x17)
  {
    if ((v28 | 7) == 0x17)
    {
      v31 = 25;
    }

    else
    {
      v31 = (v28 | 7) + 1;
    }

    v32 = operator new(v31);
    *(a2 + 1) = v28;
    *(a2 + 2) = v31 | 0x8000000000000000;
    *a2 = v32;
    a2 = v32;
    goto LABEL_28;
  }

  a2[23] = v28;
  if (v28)
  {
LABEL_28:
    memmove(a2, v30, v28);
  }

LABEL_29:
  a2[v28] = 0;
  *&v37 = *MEMORY[0x277D82818];
  v33 = *(MEMORY[0x277D82818] + 72);
  *(&v37 + *(v37 - 24)) = *(MEMORY[0x277D82818] + 64);
  *&v38 = v33;
  *(&v38 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42[1]);
  }

  *(&v38 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v39);
  std::iostream::~basic_iostream();
  return MEMORY[0x23EECE150](v45);
}

void sub_23C270740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void sub_23C270754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a16);
  _Unwind_Resume(a1);
}

uint64_t BasebandTransport::Parameters::toString@<X0>(BasebandTransport::Parameters *this@<X0>, _BYTE *a2@<X8>)
{
  v49 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v48[7] = v4;
  v48[8] = v4;
  v48[5] = v4;
  v48[6] = v4;
  v48[3] = v4;
  v48[4] = v4;
  v48[1] = v4;
  v48[2] = v4;
  v47 = v4;
  v48[0] = v4;
  *v45 = v4;
  v46 = v4;
  v43 = v4;
  v44 = v4;
  v41 = v4;
  v42 = v4;
  v40 = v4;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v40);
  BasebandTransport::asString(*this, v35);
  v5 = v36;
  if ((v36 & 0x80u) == 0)
  {
    v6 = v36;
  }

  else
  {
    v6 = v35[1];
  }

  v7 = v6 + 10;
  if (v6 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v7 < 0x17)
  {
    v38 = 8250;
    v39 = 0;
    HIBYTE(v39) = v6 + 10;
    __p = *"Protocol: ";
    v10 = &v38 + 2;
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v7 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v7 | 7) + 1;
    }

    v9 = operator new(v8);
    v38 = v6 + 10;
    v39 = v8 | 0x8000000000000000;
    __p = v9;
    *(v9 + 4) = 8250;
    *v9 = *"Protocol: ";
    v10 = v9 + 10;
  }

  if (v5 >= 0)
  {
    v11 = v35;
  }

  else
  {
    v11 = v35[0];
  }

  memmove(v10, v11, v6);
LABEL_15:
  v10[v6] = 0;
  if (v39 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v39 >= 0)
  {
    v13 = HIBYTE(v39);
  }

  else
  {
    v13 = v38;
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v41, p_p, v13);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", ", 2);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Powersave: ", 11);
  *(v16 + *(*v16 - 24) + 8) |= 1u;
  v17 = *(this + 4);
  v18 = MEMORY[0x23EECDF10]();
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ", ", 2);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Create Timeout: ", 16);
  v21 = MEMORY[0x23EECDF70](v20, *(this + 1));
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " sec, ", 6);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "IO Size: ", 9);
  v24 = MEMORY[0x23EECDF40](v23, *(this + 4) >> 10);
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " KB, ", 5);
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Num Pending Reads: ", 19);
  MEMORY[0x23EECDF40](v26, *(this + 5));
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p);
    if ((v5 & 0x80000000) == 0)
    {
LABEL_23:
      v27 = BYTE8(v47);
      if ((BYTE8(v47) & 0x10) == 0)
      {
        goto LABEL_24;
      }

LABEL_28:
      v29 = v47;
      if (v47 < *(&v44 + 1))
      {
        *&v47 = *(&v44 + 1);
        v29 = *(&v44 + 1);
      }

      v30 = v44;
      v28 = v29 - v44;
      if ((v29 - v44) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_43;
      }

      goto LABEL_31;
    }
  }

  else if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_23;
  }

  operator delete(v35[0]);
  v27 = BYTE8(v47);
  if ((BYTE8(v47) & 0x10) != 0)
  {
    goto LABEL_28;
  }

LABEL_24:
  if ((v27 & 8) == 0)
  {
    v28 = 0;
    a2[23] = 0;
    goto LABEL_39;
  }

  v30 = *(&v42 + 1);
  v28 = *(&v43 + 1) - *(&v42 + 1);
  if (*(&v43 + 1) - *(&v42 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
  {
LABEL_43:
    std::string::__throw_length_error[abi:ne200100]();
  }

LABEL_31:
  if (v28 >= 0x17)
  {
    if ((v28 | 7) == 0x17)
    {
      v31 = 25;
    }

    else
    {
      v31 = (v28 | 7) + 1;
    }

    v32 = operator new(v31);
    *(a2 + 1) = v28;
    *(a2 + 2) = v31 | 0x8000000000000000;
    *a2 = v32;
    a2 = v32;
    goto LABEL_38;
  }

  a2[23] = v28;
  if (v28)
  {
LABEL_38:
    memmove(a2, v30, v28);
  }

LABEL_39:
  a2[v28] = 0;
  *&v40 = *MEMORY[0x277D82818];
  v33 = *(MEMORY[0x277D82818] + 72);
  *(&v40 + *(v40 - 24)) = *(MEMORY[0x277D82818] + 64);
  *&v41 = v33;
  *(&v41 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45[1]);
  }

  *(&v41 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v42);
  std::iostream::~basic_iostream();
  return MEMORY[0x23EECE150](v48);
}

void sub_23C270CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void sub_23C270CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if ((v18 & 0x80000000) == 0)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  _Unwind_Resume(a1);
}

uint64_t BasebandTransport::BasebandTransport(uint64_t a1, NSObject **a2, dispatch_qos_class_t a3)
{
  *a1 = &unk_284EFC318;
  ctu::OsLogContext::OsLogContext(v19, "com.apple.telephony.abm", "ipc.bb");
  v6 = dispatch_queue_attr_make_with_qos_class(0, a3, 0);
  v7 = dispatch_queue_create("ipc.bb", v6);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v7;
  if (v7)
  {
    v8 = v7;
    dispatch_retain(v7);
    *(a1 + 32) = 0;
    dispatch_release(v8);
  }

  else
  {
    *(a1 + 32) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x23EECD7F0](a1 + 40, v20);
  MEMORY[0x23EECD800](v20);
  ctu::OsLogContext::~OsLogContext(v19);
  *a1 = &unk_284EFC318;
  *(a1 + 48) = 25;
  *(a1 + 52) = 0;
  *(a1 + 56) = 10;
  v10 = capabilities::radio::dal(v9);
  v11 = v10;
  shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v10);
  if (v11)
  {
    v13 = 1024;
  }

  else
  {
    v13 = 0x4000;
  }

  if ((shouldUseMinBasebandTransportIOReadSize & 1) == 0)
  {
    shouldUseMinBasebandTransportIOReadSize = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
    v13 = 0x8000;
  }

  *(a1 + 64) = v13;
  shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadCount(shouldUseMinBasebandTransportIOReadSize);
  if ((shouldUseMinBasebandTransportIOReadCount & 1) == 0)
  {
    capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
  }

  *(a1 + 68) = 4;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v15 = *a2;
  *(a1 + 88) = 0;
  *(a1 + 96) = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v16 = *MEMORY[0x277CBECE8];
  Controller = TelephonyBasebandCreateController();
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 208) = Controller;
  *(a1 + 229) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0;
  *(a1 + 264) = dispatch_group_create();
  *(a1 + 272) = 0;
  *(a1 + 276) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 309) = 0;
  *(a1 + 352) = a3;
  *(a1 + 360) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  return a1;
}

void sub_23C270EE4(_Unwind_Exception *a1)
{
  v5 = v1[14];
  if (v5)
  {
    _Block_release(v5);
  }

  if (*v3)
  {
    _Block_release(*v3);
  }

  v6 = v1[12];
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = v1[11];
  if (v7)
  {
    _Block_release(v7);
  }

  MEMORY[0x23EECD800](v1 + 5);
  ctu::SharedSynchronizable<diag::DIAGConfigurer>::~SharedSynchronizable(v2);
  _Unwind_Resume(a1);
}

void BasebandTransport::~BasebandTransport(BasebandTransport *this)
{
  *this = &unk_284EFC318;
  v2 = *(this + 28);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 28));
    *(this + 28) = 0;
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_23C1C4000, v3, OS_LOG_TYPE_DEFAULT, "#I Status report disabled", v17, 2u);
    }
  }

  (*(*this + 48))(this);
  v4 = *(this + 26);
  if (v4)
  {
    CFRelease(v4);
    *(this + 26) = 0;
  }

  v5 = *(this + 30);
  if (v5)
  {
    operator delete[](v5);
    *(this + 30) = 0;
  }

  v6 = *(this + 45);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 33);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 32);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 27);
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = *(this + 14);
  if (v10)
  {
    _Block_release(v10);
  }

  v11 = *(this + 13);
  if (v11)
  {
    _Block_release(v11);
  }

  v12 = *(this + 12);
  if (v12)
  {
    dispatch_release(v12);
  }

  v13 = *(this + 11);
  if (v13)
  {
    _Block_release(v13);
  }

  MEMORY[0x23EECD800](this + 40);
  v14 = *(this + 4);
  if (v14)
  {
    dispatch_release(v14);
  }

  v15 = *(this + 3);
  if (v15)
  {
    dispatch_release(v15);
  }

  v16 = *(this + 2);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }
}

{
  BasebandTransport::~BasebandTransport(this);

  operator delete(v1);
}

void BasebandTransport::timerOff_sync(BasebandTransport *this)
{
  v2 = *(this + 28);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 28));
    *(this + 28) = 0;
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_23C1C4000, v3, OS_LOG_TYPE_DEFAULT, "#I Status report disabled", v4, 2u);
    }
  }
}

void BasebandTransport::create(capabilities::radio *a1@<X0>, dispatch_qos_class_t a2@<W1>, std::__shared_weak_count_vtbl **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  v6 = capabilities::radio::vendor(a1);
  if ((v6 - 3) < 2)
  {
    v7 = operator new(0x170uLL);
    v12 = *a1;
    v16 = v12;
    if (v12)
    {
      dispatch_retain(v12);
    }

    BasebandTransport::BasebandTransport(v7, &v16, a2);
    v13 = operator new(0x20uLL);
    v13->__shared_owners_ = 0;
    p_shared_owners = &v13->__shared_owners_;
    v13->__vftable = &unk_284EFC658;
    v13->__shared_weak_owners_ = 0;
    v13[1].__vftable = v7;
    on_zero_shared = v7->__on_zero_shared;
    if (!on_zero_shared)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v6 != 1)
    {
      if (v6 != 2)
      {
        return;
      }

      v7 = operator new(0x1E0uLL);
      v8 = *a1;
      v17 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      BasebandTransportICE::BasebandTransportICE(v7, &v17, a2);
      v9 = operator new(0x20uLL);
      v9->__shared_owners_ = 0;
      v10 = &v9->__shared_owners_;
      v9->__vftable = &unk_284EFC608;
      v9->__shared_weak_owners_ = 0;
      v9[1].__vftable = v7;
      v11 = v7->__on_zero_shared;
      if (v11)
      {
        if (v11->__shared_owners_ != -1 || (atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed), v7->~__shared_weak_count_0 = v7, v7->__on_zero_shared = v9, std::__shared_weak_count::__release_weak(v11), atomic_fetch_add(v10, 0xFFFFFFFFFFFFFFFFLL)))
        {
LABEL_29:
          *a3 = v7;
          a3[1] = v9;
          v12 = v17;
          if (!v17)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }
      }

      else
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v7->~__shared_weak_count_0 = v7;
        v7->__on_zero_shared = v9;
        if (atomic_fetch_add(v10, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_29;
        }
      }

      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      goto LABEL_29;
    }

    v7 = operator new(0x170uLL);
    v12 = *a1;
    if (v12)
    {
      dispatch_retain(v12);
      dispatch_retain(v12);
    }

    v18 = v12;
    BasebandTransport::BasebandTransport(v7, &v18, a2);
    if (v12)
    {
      dispatch_release(v12);
    }

    v7->~__shared_weak_count = &unk_284F002A0;
    v13 = operator new(0x20uLL);
    v13->__shared_owners_ = 0;
    p_shared_owners = &v13->__shared_owners_;
    v13->__vftable = &unk_284EFC5B8;
    v13->__shared_weak_owners_ = 0;
    v13[1].__vftable = v7;
    on_zero_shared = v7->__on_zero_shared;
    if (!on_zero_shared)
    {
LABEL_21:
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v7->~__shared_weak_count_0 = v7;
      v7->__on_zero_shared = v13;
      if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  if (on_zero_shared->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v7->~__shared_weak_count_0 = v7;
    v7->__on_zero_shared = v13;
    std::__shared_weak_count::__release_weak(on_zero_shared);
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_22:
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

LABEL_23:
  *a3 = v7;
  a3[1] = v13;
  if (v12)
  {
LABEL_24:
    dispatch_release(v12);
  }

LABEL_25:
  BasebandTransport::init(v7);
}

void sub_23C2714D8(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<BasebandTransportMAV> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransportMAV>(BasebandTransportMAV*)::{lambda(BasebandTransportMAV*)#1}::operator() const(BasebandTransportMAV*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void BasebandTransport::init(BasebandTransport *this)
{
  v5 = *(this + 1);
  v3 = *(this + 2);
  v4 = this + 8;
  if (!v3 || (v6 = std::__shared_weak_count::lock(v3)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1174405120;
  v11[2] = ___ZN17BasebandTransport4initEv_block_invoke;
  v11[3] = &__block_descriptor_tmp_56;
  v11[4] = this;
  v11[5] = v5;
  v12 = v7;
  v13 = v11;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_98;
  block[4] = v4;
  block[5] = &v13;
  v9 = *(this + 3);
  if (!*(this + 4))
  {
    dispatch_sync(v9, block);
    v10 = v12;
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_async_and_wait(v9, block);
  v10 = v12;
  if (v12)
  {
LABEL_7:
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_8:
  std::__shared_weak_count::__release_weak(v7);
}

void ___ZN17BasebandTransport4initEv_block_invoke(capabilities::ipc *a1)
{
  v2 = *(a1 + 4);
  if (capabilities::ipc::supportsPCI(a1))
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN17BasebandTransport4initEv_block_invoke_2;
    aBlock[3] = &__block_descriptor_tmp_27;
    v4 = *(a1 + 5);
    v3 = *(a1 + 6);
    aBlock[4] = v2;
    aBlock[5] = v4;
    v14 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = _Block_copy(aBlock);
    v6 = *(v2 + 104);
    *(v2 + 104) = v5;
    if (v6)
    {
      _Block_release(v6);
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1174405120;
    v11[2] = ___ZN17BasebandTransport4initEv_block_invoke_48;
    v11[3] = &__block_descriptor_tmp_52;
    v8 = *(a1 + 5);
    v7 = *(a1 + 6);
    v11[4] = v2;
    v11[5] = v8;
    v12 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = _Block_copy(v11);
    v10 = *(v2 + 112);
    *(v2 + 112) = v9;
    if (v10)
    {
      _Block_release(v10);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
    }
  }
}

void ___ZN17BasebandTransport4initEv_block_invoke_2(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a1[6];
  if (v5)
  {
    v9 = a1[4];
    v10 = std::__shared_weak_count::lock(v5);
    if (v10)
    {
      v11 = v10;
      if (a1[5])
      {
        v12 = *(v9 + 40);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109632;
          v24 = a2;
          v25 = 2048;
          v26 = a3;
          v27 = 2048;
          v28 = a4;
          _os_log_error_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_ERROR, "PCI Transport Status: 0x%x (0x%08lx, 0x%08lx)", buf, 0x1Cu);
        }

        *(v9 + 272) = 2 * (a2 != 0);
        *(v9 + 296) = vsubq_s64(*(v9 + 280), *(v9 + 320));
        v13 = *(v9 + 216);
        if (v13)
        {
          v14 = _Block_copy(v13);
          v15 = v14;
          v20 = *(v9 + 272);
          v21 = *(v9 + 288);
          v22 = *(v9 + 304);
          v16 = *(v9 + 96);
          v17 = v14 ? _Block_copy(v14) : 0;
          v18 = operator new(0x30uLL);
          *v18 = v17;
          *(v18 + 8) = v20;
          *(v18 + 24) = v21;
          *(v18 + 5) = v22;
          dispatch_async_f(v16, v18, _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb0_E3__0EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_);
          if (v15)
          {
            _Block_release(v15);
          }
        }
      }

      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_23C271AC8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

int64x2_t BasebandTransport::updateDeltas_sync(BasebandTransport *this)
{
  result = vsubq_s64(*(this + 280), *(this + 20));
  *(this + 296) = result;
  return result;
}

uint64_t __copy_helper_block_e8_40c42_ZTSNSt3__18weak_ptrI17BasebandTransportEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c42_ZTSNSt3__18weak_ptrI17BasebandTransportEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t BasebandTransport::open(BasebandTransport *a1, __int128 *a2, void **a3)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  BasebandTransport::stopReader(a1);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1174405120;
  v12[2] = ___ZN17BasebandTransport4openENS_10ParametersEN8dispatch5blockIU13block_pointerFvPhjEEE_block_invoke;
  v12[3] = &unk_284EFC3E8;
  v12[5] = a1;
  v6 = a2[1];
  v13 = *a2;
  v14 = v6;
  v15 = *(a2 + 4);
  v7 = *a3;
  if (*a3)
  {
    v7 = _Block_copy(v7);
  }

  aBlock = v7;
  v12[4] = &v17;
  v21 = v12;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_98;
  block[4] = a1 + 8;
  block[5] = &v21;
  v8 = *(a1 + 3);
  if (*(a1 + 4))
  {
    dispatch_async_and_wait(v8, block);
    v9 = *(v18 + 24);
    v10 = aBlock;
    if (!aBlock)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_sync(v8, block);
  v9 = *(v18 + 24);
  v10 = aBlock;
  if (aBlock)
  {
LABEL_7:
    _Block_release(v10);
  }

LABEL_8:
  _Block_object_dispose(&v17, 8);
  return v9;
}

void sub_23C271C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void BasebandTransport::stopReader(BasebandTransport *this)
{
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2000000000;
  v15 = 0;
  v2 = (this + 8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 0x40000000;
  v13[2] = ___ZN17BasebandTransport10stopReaderEv_block_invoke;
  v13[3] = &unk_278BB90B8;
  v13[4] = v14;
  v13[5] = this;
  v16 = v13;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_98;
  block[4] = this + 8;
  block[5] = &v16;
  v4 = this + 24;
  v3 = *(this + 3);
  if (*(v4 + 1))
  {
    dispatch_async_and_wait(v3, block);
  }

  else
  {
    dispatch_sync(v3, block);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = ___ZN17BasebandTransport10stopReaderEv_block_invoke_2;
  v12[3] = &unk_278BB90E0;
  v12[4] = v14;
  v12[5] = this;
  ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(v2, v12);
  v5 = *(this + 33);
  if (v5)
  {
    v6 = *(this + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(block[0]) = 0;
      _os_log_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEFAULT, "#I Waiting for reader to be stopped", block, 2u);
      v5 = *(this + 33);
    }

    v7 = dispatch_time(0, 3000000000);
    if (dispatch_group_wait(v5, v7))
    {
      (*(*this + 48))(this);
      v8 = *(this + 5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(block[0]) = 0;
        _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Timeout waiting for read to unblock, freed transport to force read unblock", block, 2u);
      }
    }

    else
    {
      v10 = *(this + 30);
      if (v10)
      {
        operator delete[](v10);
        *(this + 30) = 0;
        v11 = *(this + 32);
        *(this + 32) = 0;
        if (v11)
        {
          dispatch_release(v11);
        }
      }
    }

    v9 = *(this + 5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(block[0]) = 0;
      _os_log_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_DEFAULT, "#I Reader stopped", block, 2u);
    }
  }

  _Block_object_dispose(v14, 8);
}

void sub_23C271F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN17BasebandTransport4openENS_10ParametersEN8dispatch5blockIU13block_pointerFvPhjEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 224);
  if (v3)
  {
    dispatch_source_cancel(v3);
    dispatch_release(*(v2 + 224));
    *(v2 + 224) = 0;
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEFAULT, "#I Status report disabled", v9, 2u);
    }
  }

  (*(*v2 + 48))(v2);
  *(v2 + 272) = 0;
  *(v2 + 276) = 0;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0u;
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  *(v2 + 309) = 0;
  v5 = *(a1 + 80);
  v6 = *(a1 + 64);
  *(v2 + 48) = *(a1 + 48);
  *(v2 + 64) = v6;
  *(v2 + 80) = v5;
  v7 = *(a1 + 88);
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  v8 = *(v2 + 88);
  *(v2 + 88) = v7;
  if (v8)
  {
    _Block_release(v8);
  }

  if (*(v2 + 48) != 25)
  {
    if (capabilities::ipc::supportsPCI(v7))
    {
      *(*(*(a1 + 32) + 8) + 24) = BasebandTransport::openPCI_sync(v2);
    }

    if (*(*(*(a1 + 32) + 8) + 24) == 1)
    {
      BasebandTransport::timerOn_sync(v2);
    }

    else
    {
      (*(*v2 + 48))(v2);
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 0x40000000;
    v9[2] = ___ZN17BasebandTransport9dumpStateEb_block_invoke;
    v9[3] = &__block_descriptor_tmp_86;
    v9[4] = v2;
    v10 = 0;
    ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped((v2 + 8), v9);
  }
}

uint64_t BasebandTransport::openPCI_sync(BasebandTransport *this)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = *(this + 2);
  if (!v2 || (v3 = std::__shared_weak_count::lock(v2)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v4 = v3;
  atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v4);
  }

  inited = TelephonyBasebandPCITransportInitParameters();
  v6 = *(this + 14);
  shouldUseMinBasebandTransportIOReadCount = capabilities::abs::traceTransportTimeoutScalingFactor(inited);
  v8 = 1000 * v6;
  if ((((1000 * v6) * shouldUseMinBasebandTransportIOReadCount) & 0xFFFFFFFF00000000) != 0)
  {
    v9 = *(this + 5);
    shouldUseMinBasebandTransportIOReadCount = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (shouldUseMinBasebandTransportIOReadCount)
    {
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_error_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_ERROR, "Scaled create timeout overflowed, falling back to unscaled value: %u", buf, 8u);
    }
  }

  v36 = *(this + 3);
  v10 = *(this + 17);
  if (!v10)
  {
    v11 = *(this + 12);
    shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadCount(shouldUseMinBasebandTransportIOReadCount);
    if (shouldUseMinBasebandTransportIOReadCount)
    {
LABEL_10:
      v10 = 4;
      goto LABEL_29;
    }

    if (v11 != 17)
    {
      if (v11 == 21)
      {
        goto LABEL_19;
      }

      if (v11 == 20)
      {
        v10 = 63;
        goto LABEL_29;
      }

      shouldUseMinBasebandTransportIOReadCount = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
      v12 = v11 == 10 ? shouldUseMinBasebandTransportIOReadCount : 0;
      if (v12)
      {
        goto LABEL_19;
      }

      if (v11 > 18)
      {
        v10 = 31;
        if (v11 > 22)
        {
          if (v11 == 23)
          {
            goto LABEL_29;
          }

          if (v11 == 24)
          {
            v10 = 86;
            goto LABEL_29;
          }

          goto LABEL_10;
        }

        if (v11 == 19)
        {
          goto LABEL_29;
        }

LABEL_19:
        v10 = 15;
        goto LABEL_29;
      }

      if (v11 != 2)
      {
        if (v11 == 15 || v11 == 16)
        {
          v10 = 36;
          goto LABEL_29;
        }

        goto LABEL_10;
      }
    }

    v10 = 16;
  }

LABEL_29:
  v38 = v10;
  v13 = *(this + 16);
  if (!v13)
  {
    v14 = *(this + 12);
    v15 = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
    v16 = v15;
    shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v15);
    v13 = v16 ? 1024 : 0x4000;
    if ((shouldUseMinBasebandTransportIOReadCount & 1) == 0)
    {
      if (v14 == 17)
      {
        v13 = 0x80000;
      }

      else if (v14 == 21 || v14 == 20)
      {
        v13 = 61440;
      }

      else
      {
        shouldUseMinBasebandTransportIOReadCount = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
        if (v14 == 10)
        {
          v17 = shouldUseMinBasebandTransportIOReadCount;
        }

        else
        {
          v17 = 0;
        }

        if (v17)
        {
          v13 = 3584;
        }

        else if ((v14 - 19) > 5)
        {
          v13 = 0x8000;
        }

        else
        {
          v13 = dword_23C32EF70[v14 - 19];
        }
      }
    }
  }

  v39 = v13;
  v41 = *(this + 88);
  v18 = *(this + 12);
  if (v18 != 20 && v18 != 9)
  {
    goto LABEL_57;
  }

  v48[0] = &unk_284EFC6E0;
  v49 = v48;
  inactive = dispatch_workloop_create_inactive("com.apple.BasebandTransport.workloop");
  *buf = inactive;
  if (!v49)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v49 + 48))(v49, buf);
  dispatch_activate(inactive);
  v20 = *(this + 45);
  *(this + 45) = inactive;
  if (v20)
  {
    dispatch_release(v20);
  }

  shouldUseMinBasebandTransportIOReadCount = v49;
  if (v49 != v48)
  {
    if (v49)
    {
      shouldUseMinBasebandTransportIOReadCount = (*(*v49 + 40))(v49);
    }

    if (*(this + 45))
    {
      goto LABEL_56;
    }

LABEL_59:
    v21 = *(this + 5);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23C1C4000, v21, OS_LOG_TYPE_ERROR, "Failed to create workloop", buf, 2u);
    }

    goto LABEL_95;
  }

  shouldUseMinBasebandTransportIOReadCount = (*(*v49 + 32))(v49);
  if (!*(this + 45))
  {
    goto LABEL_59;
  }

LABEL_56:
  v18 = *(this + 12);
LABEL_57:
  switch(v18)
  {
    case 0:
    case 1:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
      goto LABEL_70;
    case 2:
      shouldUseMinBasebandTransportIOReadCount = capabilities::diag::supportsQDSS(shouldUseMinBasebandTransportIOReadCount);
      goto LABEL_70;
    case 10:
      shouldUseMinBasebandTransportIOReadCount = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
LABEL_70:
      v25 = v38;
      if (v38 < 0x41)
      {
        goto LABEL_71;
      }

      goto LABEL_63;
    case 24:
      v25 = v38;
      if (v38 >= 0x57)
      {
LABEL_63:
        v22 = *(this + 5);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_95;
        }

        BasebandTransport::asString(*(this + 12), buf);
        if (v43 >= 0)
        {
          v23 = buf;
        }

        else
        {
          v23 = *buf;
        }

        *v44 = 136315394;
        v45 = v23;
        v46 = 2048;
        v47 = v25;
        v24 = "%s: invalid transport io read count (%lu)";
        goto LABEL_92;
      }

LABEL_71:
      if (capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount))
      {
        v26 = 1024;
      }

      else
      {
        v26 = 0x4000;
      }

      if (v39 > 0x100000 || v26 > v39)
      {
        v22 = *(this + 5);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_95;
        }

        BasebandTransport::asString(*(this + 12), buf);
        if (v43 >= 0)
        {
          v31 = buf;
        }

        else
        {
          v31 = *buf;
        }

        *v44 = 136315394;
        v45 = v31;
        v46 = 2048;
        v47 = v39;
        v24 = "%s: invalid transport io read size (%lu)";
LABEL_92:
        _os_log_error_impl(&dword_23C1C4000, v22, OS_LOG_TYPE_ERROR, v24, v44, 0x16u);
        if ((v43 & 0x80000000) == 0)
        {
          goto LABEL_95;
        }

        goto LABEL_93;
      }

      v37 = *(this + 13);
      if (*(this + 11))
      {
        *(this + 276) = 1;
        v40 = *(this + 14);
      }

      v27 = *(this + 5);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23C1C4000, v27, OS_LOG_TYPE_DEFAULT, "#I opening transport", buf, 2u);
      }

      if (!TelephonyBasebandPCITransportCreate())
      {
        *(this + 68) = 2;
        v32 = *(this + 5);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          BasebandTransport::asString(*(this + 12), buf);
          v35 = v43 >= 0 ? buf : *buf;
          *v44 = 136315138;
          v45 = v35;
          _os_log_error_impl(&dword_23C1C4000, v32, OS_LOG_TYPE_ERROR, "%s: transport open failed", v44, 0xCu);
          if (v43 < 0)
          {
LABEL_93:
            operator delete(*buf);
          }
        }

LABEL_95:
        v28 = 0;
        goto LABEL_96;
      }

      v28 = 1;
      *(this + 68) = 1;
      v29 = *(this + 5);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        BasebandTransport::asString(*(this + 12), buf);
        if (v43 >= 0)
        {
          v30 = buf;
        }

        else
        {
          v30 = *buf;
        }

        *v44 = 136315394;
        v45 = v30;
        v46 = 1024;
        LODWORD(v47) = v39;
        _os_log_impl(&dword_23C1C4000, v29, OS_LOG_TYPE_DEFAULT, "#I %s: transport successfully opened with read io size as %u", v44, 0x12u);
        if (v43 < 0)
        {
          operator delete(*buf);
        }
      }

LABEL_96:
      std::__shared_weak_count::__release_weak(v4);
      v33 = *MEMORY[0x277D85DE8];
      return v28;
    default:
      goto LABEL_95;
  }
}

void sub_23C272948(_Unwind_Exception *a1)
{
  std::function<void ()(dispatch_workloop_s *)>::~function(v2 - 88);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void BasebandTransport::timerOn_sync(BasebandTransport *this)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(this + 28);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 28));
    *(this + 28) = 0;
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C1C4000, v3, OS_LOG_TYPE_DEFAULT, "#I Status report disabled", buf, 2u);
    }
  }

  if (*(this + 68) == 1)
  {
    v4 = *(this + 58);
    if (v4 && *(this + 27))
    {
      v5 = 1000000000 * v4;
      v6 = dispatch_source_create(MEMORY[0x277D85D38], 1uLL, 0, *(this + 3));
      *(this + 28) = v6;
      v7 = dispatch_time(0, v5);
      dispatch_source_set_timer(v6, v7, v5, 0xBEBC200uLL);
      v8 = *(this + 2);
      if (!v8 || (v9 = *(this + 1), (v10 = std::__shared_weak_count::lock(v8)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v11 = v10;
      p_shared_weak_owners = &v10->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v11);
      }

      v13 = *(this + 28);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 1174405120;
      handler[2] = ___ZN17BasebandTransport12timerOn_syncEv_block_invoke;
      handler[3] = &__block_descriptor_tmp_85_0;
      handler[4] = this;
      handler[5] = v9;
      v19 = v11;
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      dispatch_source_set_event_handler(v13, handler);
      dispatch_activate(*(this + 28));
      v14 = *(this + 5);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(this + 58);
        *buf = 67109120;
        v21 = v15;
        _os_log_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_DEFAULT, "#I Status report enabled(%d sec)", buf, 8u);
      }

      if (v19)
      {
        std::__shared_weak_count::__release_weak(v19);
      }

      std::__shared_weak_count::__release_weak(v11);
    }
  }

  else
  {
    v16 = *(this + 5);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C1C4000, v16, OS_LOG_TYPE_DEFAULT, "#I Invalid state for status report enable.  Ignoring enable request.", buf, 2u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void BasebandTransport::dumpState(BasebandTransport *this, char a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = ___ZN17BasebandTransport9dumpStateEb_block_invoke;
  v2[3] = &__block_descriptor_tmp_86;
  v2[4] = this;
  v3 = a2;
  ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(this + 1, v2);
}

void *__copy_helper_block_e8_88c45_ZTSN8dispatch5blockIU13block_pointerFvPhjEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 88);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 88) = result;
  return result;
}

void __destroy_helper_block_e8_88c45_ZTSN8dispatch5blockIU13block_pointerFvPhjEEE(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t BasebandTransport::write(BasebandTransport *this, const unsigned __int8 *a2, uint64_t a3, unsigned int *a4)
{
  v39 = 0;
  v40 = &v39;
  v41 = 0x2000000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2000000000;
  v38 = 0;
  v7 = this + 8;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 0x40000000;
  v34[2] = ___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke;
  v34[3] = &unk_278BB8F88;
  v34[5] = &v39;
  v34[6] = this;
  v34[4] = &v35;
  v44 = v34;
  block = MEMORY[0x277D85DD0];
  p_block = 0x40000000;
  v28 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v29 = &__block_descriptor_tmp_98;
  v30 = (this + 8);
  __p = &v44;
  v9 = this + 24;
  v8 = *(this + 3);
  if (*(v9 + 1))
  {
    dispatch_async_and_wait(v8, &block);
    if (*(v40 + 24) == 1)
    {
      goto LABEL_3;
    }

LABEL_10:
    v14 = 0;
    goto LABEL_19;
  }

  dispatch_sync(v8, &block);
  if (*(v40 + 24) != 1)
  {
    goto LABEL_10;
  }

LABEL_3:
  block = 0;
  p_block = &block;
  v28 = 0x4002000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  __p = 0;
  v32 = 0;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = a2;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = a3;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 0x40000000;
  v17[2] = ___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke_59;
  v17[3] = &unk_278BB8FB0;
  v17[8] = a2;
  v17[9] = a3;
  v17[4] = &block;
  v17[5] = &v22;
  v17[6] = &v18;
  v17[7] = this;
  v43 = v17;
  v44 = MEMORY[0x277D85DD0];
  v45 = 0x40000000;
  v46 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v47 = &__block_descriptor_tmp_98;
  v48 = v7;
  v49 = &v43;
  v10 = *(this + 3);
  if (*(this + 4))
  {
    dispatch_async_and_wait(v10, &v44);
    if (v19[3])
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_sync(v10, &v44);
    if (v19[3])
    {
LABEL_5:
      v11 = v36[3];
      if (*v11)
      {
        v12 = (*v11)(v11, v23[3]);
        *(v40 + 24) = v12;
        if (v12)
        {
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 0x40000000;
          v16[2] = ___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke_2;
          v16[3] = &unk_278BB8FD8;
          v16[4] = &v18;
          v16[5] = this;
          v43 = v16;
          v44 = MEMORY[0x277D85DD0];
          v45 = 0x40000000;
          v46 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
          v47 = &__block_descriptor_tmp_98;
          v48 = v7;
          v49 = &v43;
          v13 = *(this + 3);
          if (*(this + 4))
          {
            dispatch_async_and_wait(v13, &v44);
          }

          else
          {
            dispatch_sync(v13, &v44);
          }

          v14 = *(v40 + 24);
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
        *(v40 + 24) = 0;
      }

      goto LABEL_17;
    }
  }

  v14 = 1;
LABEL_17:
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&block, 8);
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

LABEL_19:
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  return v14 & 1;
}

void sub_23C273094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  if (__p)
  {
    a39 = __p;
    operator delete(__p);
  }

  _Block_object_dispose((v39 - 216), 8);
  _Block_object_dispose((v39 - 184), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke(void *a1)
{
  v2 = a1[6];
  *(*(a1[4] + 8) + 24) = v2 + 120;
  v3 = *(v2 + 176);
  if (v3)
  {
    result = v3();
    *(*(a1[5] + 8) + 24) = result;
  }

  else
  {
    result = 0;
    *(*(a1[5] + 8) + 24) = 0;
  }

  return result;
}

__n128 __Block_byref_object_copy_(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose_(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void *___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke_59(void *result)
{
  v1 = *(result[7] + 72);
  if (v1)
  {
    v2 = result;
    result = (**v1)(*(result[7] + 72), result[8], result[9], *(result[4] + 8) + 40);
    *(*(v2[5] + 8) + 24) = *(*(v2[4] + 8) + 40);
    *(*(v2[6] + 8) + 24) = *(*(v2[4] + 8) + 48) - *(*(v2[4] + 8) + 40);
  }

  return result;
}

void ___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(v2 + 288) + *(*(*(a1 + 32) + 8) + 24);
  *(v2 + 288) = v3;
  v4 = *(v2 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(*(*(a1 + 32) + 8) + 24);
    v7 = 134218240;
    v8 = v6;
    v9 = 2048;
    v10 = v3;
    _os_log_debug_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEBUG, "#D Written: %zu bytes, for a total of: %llu", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t BasebandTransport::read(BasebandTransport *this, unsigned __int8 *a2, unint64_t a3, unsigned int *a4)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v6 = (this + 8);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 0x40000000;
  v17[2] = ___ZN17BasebandTransport4readEPhmPjbj_block_invoke;
  v17[3] = &unk_278BB9000;
  v17[5] = &v22;
  v17[6] = this;
  v17[4] = &v18;
  v26 = v17;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_98;
  block[4] = this + 8;
  block[5] = &v26;
  v8 = this + 24;
  v7 = *(this + 3);
  if (*(v8 + 1))
  {
    dispatch_async_and_wait(v7, block);
    v9 = v23;
    if (*(v23 + 24) != 1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    dispatch_sync(v7, block);
    v9 = v23;
    if (*(v23 + 24) != 1)
    {
      goto LABEL_14;
    }
  }

  v10 = v19[3];
  if (v10 && (v11 = *(v10 + 8)) != 0)
  {
    v12 = v11();
    *(v23 + 24) = v12;
    if (v12)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 0x40000000;
      v16[2] = ___ZN17BasebandTransport4readEPhmPjbj_block_invoke_63;
      v16[3] = &__block_descriptor_tmp_64_0;
      v16[4] = this;
      v16[5] = a4;
      ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(v6, v16);
      goto LABEL_14;
    }

    v10 = v19[3];
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    *(v9 + 24) = 0;
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  v13 = *(v10 + 24);
  if (v13)
  {
    v13();
  }

LABEL_14:
  v14 = *(v23 + 24);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  return v14;
}

void sub_23C273538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void ___ZN17BasebandTransport4readEPhmPjbj_block_invoke(void *a1)
{
  v2 = a1[6];
  *(*(a1[4] + 8) + 24) = v2 + 120;
  v3 = *(v2 + 176);
  if (v3)
  {
    if (v3())
    {
      LOBYTE(v3) = *(v2 + 276) ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  *(*(a1[5] + 8) + 24) = v3 & 1;
  if (*(v2 + 276) == 1)
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_ERROR, "Explicit reads not allowed in async mode", v5, 2u);
    }
  }
}

uint64_t BasebandTransport::close(BasebandTransport *this)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 1;
  *(this + 58) = 0;
  v2 = this + 8;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = ___ZN17BasebandTransport5closeEv_block_invoke;
  v9[3] = &__block_descriptor_tmp_65_0;
  v9[4] = this;
  v14 = v9;
  block = MEMORY[0x277D85DD0];
  v16 = 0x40000000;
  v17 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v18 = &__block_descriptor_tmp_98;
  v19 = this + 8;
  v20 = &v14;
  v4 = this + 24;
  v3 = *(this + 3);
  if (*(v4 + 1))
  {
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    dispatch_sync(v3, &block);
  }

  BasebandTransport::stopReader(this);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = ___ZN17BasebandTransport5closeEv_block_invoke_2;
  v8[3] = &unk_278BB9068;
  v8[4] = &v10;
  v8[5] = this;
  v14 = v8;
  block = MEMORY[0x277D85DD0];
  v16 = 0x40000000;
  v17 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v18 = &__block_descriptor_tmp_98;
  v19 = v2;
  v20 = &v14;
  v5 = *(this + 3);
  if (*(this + 4))
  {
    dispatch_async_and_wait(v5, &block);
  }

  else
  {
    dispatch_sync(v5, &block);
  }

  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void sub_23C2737F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN17BasebandTransport5closeEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 224);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(v1 + 224));
    *(v1 + 224) = 0;
    v3 = *(v1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_23C1C4000, v3, OS_LOG_TYPE_DEFAULT, "#I Status report disabled", v4, 2u);
    }
  }
}

uint64_t ___ZN17BasebandTransport5closeEv_block_invoke_2(uint64_t a1)
{
  result = (*(**(a1 + 40) + 48))(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t BasebandTransport::operator*(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZN17BasebandTransportdeEv_block_invoke;
  v5[3] = &unk_278BB9090;
  v5[4] = &v6;
  v5[5] = a1;
  v10 = v5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_98;
  block[4] = a1 + 8;
  block[5] = &v10;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t BasebandTransport::close_sync(BasebandTransport *this)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(this + 22);
  if (v2 && v2(this + 120))
  {
    *(this + 68) = 0;
    v3 = TelephonyUtilTransportFree();
    *(this + 120) = 0u;
    *(this + 136) = 0u;
    *(this + 152) = 0u;
    *(this + 168) = 0u;
    *(this + 184) = 0u;
    *(this + 25) = 0;
    v4 = *(this + 5);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = 1;
    v4 = *(this + 5);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }
  }

  BasebandTransport::asString(*(this + 12), __p);
  v5 = __p[0];
  v6 = "error";
  if (v10 >= 0)
  {
    v5 = __p;
  }

  if (v3)
  {
    v6 = "success";
  }

  *buf = 136315394;
  v12 = v5;
  v13 = 2080;
  v14 = v6;
  _os_log_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEFAULT, "#I Transport close %s: %s", buf, 0x16u);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_12:
  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t BasebandTransport::startReader_sync(BasebandTransport *this)
{
  if (!*(this + 30))
  {
    v2 = *(this + 12);
    v3 = capabilities::radio::dal(this);
    if (v3)
    {
      v4 = 1024;
    }

    else
    {
      v4 = 0x4000;
    }

    shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v3);
    if ((shouldUseMinBasebandTransportIOReadSize & 1) == 0)
    {
      if (v2 == 17)
      {
        v4 = 0x80000;
      }

      else if (v2 == 21 || v2 == 20)
      {
        v4 = 61440;
      }

      else
      {
        v6 = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
        if (v2 == 10 && (v6 & 1) != 0)
        {
          v4 = 3584;
        }

        else if ((v2 - 19) > 5)
        {
          v4 = 0x8000;
        }

        else
        {
          v4 = qword_23C32EF40[v2 - 19];
        }
      }
    }

    *(this + 31) = v4;
    *(this + 30) = operator new[](v4);
    v7 = dispatch_queue_create("ipc.bb", 0);
    v8 = *(this + 32);
    *(this + 32) = v7;
    if (v8)
    {
      dispatch_release(v8);
    }
  }

  *(this + 236) = 1;
  *(this + 276) = 1;
  BasebandTransport::queueRead_sync(this);
  return *(this + 236);
}

void BasebandTransport::queueRead_sync(BasebandTransport *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = *(this + 33);
  if (v6)
  {
    dispatch_retain(*(this + 33));
    dispatch_group_enter(v6);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1174405120;
  v8[2] = ___ZN17BasebandTransport14queueRead_syncEv_block_invoke;
  v8[3] = &__block_descriptor_tmp_73_1;
  v8[4] = this;
  v8[5] = v3;
  v9 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  group = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(group);
  }

  dispatch_async(*(this + 32), v8);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  v7 = v9;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (v6)
  {
    dispatch_group_leave(v6);
    dispatch_release(v6);
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t ___ZN17BasebandTransport10stopReaderEv_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  *(*(*(result + 32) + 8) + 24) = *(v1 + 236);
  *(v1 + 236) = 0;
  *(v1 + 276) = 0;
  return result;
}

uint64_t ___ZN17BasebandTransport10stopReaderEv_block_invoke_2(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 176);
  if (v2)
  {
    v3 = result;
    result = v2(v1 + 120);
    if (result)
    {
      if (*(*(*(v3 + 32) + 8) + 24) == 1)
      {
        v4 = *(v1 + 136);
        if (v4)
        {

          return v4(v1 + 120);
        }
      }
    }
  }

  return result;
}

void ___ZN17BasebandTransport14queueRead_syncEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v3 = v2;
  if (v2)
  {
    dispatch_retain(v2);
    dispatch_group_enter(v2);
  }

  BasebandTransport::read_sync(v1, &v3);
  if (v2)
  {
    dispatch_group_leave(v2);

    dispatch_release(v2);
  }
}

void sub_23C273F10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void BasebandTransport::read_sync(uint64_t a1, NSObject **a2)
{
  v6 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = (a1 + 8);
  v34 = v6;
  if (!v4 || (v8 = std::__shared_weak_count::lock(v4), (v35 = v8) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v33 = 0;
  v9 = *(a1 + 128);
  if (v9)
  {
    v10 = v8;
    v11 = *(a1 + 240);
    v12 = *(a1 + 48);
    v13 = capabilities::radio::dal(v8);
    v14 = v13;
    shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v13);
    if (v14)
    {
      v16 = 1024;
    }

    else
    {
      v16 = 0x4000;
    }

    if ((shouldUseMinBasebandTransportIOReadSize & 1) == 0)
    {
      if (v12 == 17)
      {
        v16 = 0x80000;
      }

      else if (v12 == 21 || v12 == 20)
      {
        v16 = 61440;
      }

      else
      {
        v17 = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
        if (v12 == 10)
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        if (v18)
        {
          v16 = 3584;
        }

        else if ((v12 - 19) > 5)
        {
          v16 = 0x8000;
        }

        else
        {
          v16 = dword_23C32EF70[v12 - 19];
        }
      }
    }

    v19 = v9(a1 + 120, v11, v16, &v33, 0, 0xFFFFFFFFLL, 0);
    if (v33)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v20 == 1)
    {
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 0x40000000;
      v31[2] = ___ZN17BasebandTransport9read_syncEN8dispatch13group_sessionE_block_invoke;
      v31[3] = &__block_descriptor_tmp_74;
      v31[4] = a1;
      v32 = v33;
      ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(v5, v31);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 1174405120;
      block[2] = ___ZN17BasebandTransport9read_syncEN8dispatch13group_sessionE_block_invoke_2;
      block[3] = &__block_descriptor_tmp_77_0;
      block[4] = a1;
      block[5] = v6;
      v28 = v10;
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *a2;
      group = v21;
      if (v21)
      {
        dispatch_retain(v21);
        dispatch_group_enter(group);
      }

      v30 = v33;
      dispatch_sync(*(a1 + 96), block);
      if (group)
      {
        dispatch_group_leave(group);
        if (group)
        {
          dispatch_release(group);
        }
      }

      v22 = v28;
      if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v22->__on_zero_shared)(v22);
        std::__shared_weak_count::__release_weak(v22);
      }
    }
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 1174405120;
  v25[2] = ___ZN17BasebandTransport9read_syncEN8dispatch13group_sessionE_block_invoke_78;
  v25[3] = &__block_descriptor_tmp_79;
  v25[4] = a1;
  v25[5] = v34;
  v26 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(v5, v25);
  v23 = v26;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = v35;
  if (v35)
  {
    if (!atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }
  }
}

void __copy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrI17BasebandTransportEE56c30_ZTSN8dispatch13group_sessionE(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[7];
  a1[7] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[7];
    if (v5)
    {

      dispatch_group_enter(v5);
    }
  }
}

void __destroy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrI17BasebandTransportEE56c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 56);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 48);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ___ZN17BasebandTransport9read_syncEN8dispatch13group_sessionE_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[9];
  if (v3)
  {
    __p = 0;
    v8 = 0;
    v9 = 0;
    (*(*v3 + 8))(v3, v2[30], *(a1 + 64), &__p);
    (*(v2[11] + 16))();
    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = v2[30];
    v5 = *(a1 + 64);
    v6 = *(v2[11] + 16);

    v6();
  }
}

void sub_23C274498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BasebandTransport *___ZN17BasebandTransport9read_syncEN8dispatch13group_sessionE_block_invoke_78(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 236) == 1)
  {
    return BasebandTransport::queueRead_sync(result);
  }

  return result;
}

uint64_t __copy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrI17BasebandTransportEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrI17BasebandTransportEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN17BasebandTransport12timerOn_syncEv_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      v6 = a1[5];
      if (!v6)
      {
LABEL_15:
        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        return;
      }

      v7 = *(v3 + 280);
      v8 = *(v3 + 320);
      v9 = *(v3 + 288) - *(v3 + 328);
      v11 = *(v3 + 288) == *(v3 + 328);
      *(v3 + 296) = v7 - v8;
      *(v3 + 304) = v9;
      v10 = (v3 + 272);
      v11 = v11 && v7 == v8;
      if (v11)
      {
        v12 = 3;
      }

      else
      {
        if (*v10 != 3)
        {
LABEL_12:
          v13 = *(v3 + 288);
          *(v3 + 312) = *v10;
          *(v3 + 328) = v13;
          *(v3 + 344) = *(v3 + 304);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 1174405120;
          block[2] = ___ZN17BasebandTransport12timerOn_syncEv_block_invoke_2;
          block[3] = &__block_descriptor_tmp_82;
          block[4] = v3;
          block[5] = v6;
          v16 = v4;
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
          dispatch_async(*(v3 + 96), block);
          v14 = v16;
          if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
          }

          goto LABEL_15;
        }

        v12 = 1;
      }

      *v10 = v12;
      goto LABEL_12;
    }
  }
}

uint64_t ___ZN17BasebandTransport12timerOn_syncEv_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 216);
  v10 = *(v5 + 344);
  v7 = *(v5 + 328);
  v9[0] = *(v5 + 312);
  v9[1] = v7;
  return (*(v6 + 16))(v6, v9, a3, a4, a5);
}

void BasebandTransport::getStatus(BasebandTransport *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0xAAAAAA0000000000;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  v4[0] = a2;
  v4[1] = this;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIZNS1_9getStatusEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  block[3] = &__block_descriptor_tmp_108;
  block[4] = this + 8;
  block[5] = v4;
  v3 = this + 24;
  v2 = *(this + 3);
  if (*(v3 + 1))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }
}

void ___ZN17BasebandTransport9dumpStateEb_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  *(v2 + 296) = vsubq_s64(*(v2 + 280), *(v2 + 320));
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    BasebandTransport::Parameters::toString((v2 + 48), __p);
    if (v8 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315138;
    v10 = v4;
    _os_log_impl(&dword_23C1C4000, v3, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    v3 = *(v2 + 40);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    BasebandTransport::Status::toString((v2 + 272), __p);
    v5 = v8 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v10 = v5;
    _os_log_impl(&dword_23C1C4000, v3, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
      if (*(a1 + 40) != 1)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  if (*(a1 + 40) == 1)
  {
LABEL_14:
    *(v2 + 272) = 0;
    *(v2 + 276) = 0;
    *(v2 + 320) = 0u;
    *(v2 + 336) = 0u;
    *(v2 + 280) = 0u;
    *(v2 + 296) = 0u;
    *(v2 + 309) = 0;
    BasebandTransport::timerOn_sync(v2);
  }

LABEL_15:
  v6 = *MEMORY[0x277D85DE8];
}

void BasebandTransport::reportStatus(uint64_t a1, int a2, void **a3)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1174405120;
  v7[2] = ___ZN17BasebandTransport12reportStatusEjN8dispatch5blockIU13block_pointerFvNS_6StatusEEEE_block_invoke;
  v7[3] = &__block_descriptor_tmp_87;
  v7[4] = a1;
  v9 = a2;
  v4 = *a3;
  if (*a3)
  {
    v4 = _Block_copy(v4);
  }

  aBlock = v4;
  v10 = v7;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_98;
  block[4] = a1 + 8;
  block[5] = &v10;
  v5 = *(a1 + 24);
  if (!*(a1 + 32))
  {
    dispatch_sync(v5, block);
    v6 = aBlock;
    if (!aBlock)
    {
      return;
    }

    goto LABEL_7;
  }

  dispatch_async_and_wait(v5, block);
  v6 = aBlock;
  if (aBlock)
  {
LABEL_7:
    _Block_release(v6);
  }
}

void ___ZN17BasebandTransport12reportStatusEjN8dispatch5blockIU13block_pointerFvNS_6StatusEEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  *(v3 + 232) = v1;
  if (v2)
  {
    v2 = _Block_copy(v2);
  }

  v4 = *(v3 + 216);
  *(v3 + 216) = v2;
  if (v4)
  {
    _Block_release(v4);
  }

  BasebandTransport::timerOn_sync(v3);
}

void *__copy_helper_block_e8_40c70_ZTSN8dispatch5blockIU13block_pointerFvN17BasebandTransport6StatusEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c70_ZTSN8dispatch5blockIU13block_pointerFvN17BasebandTransport6StatusEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void *std::__list_imp<BasebandTransport::Protocol>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t std::function<void ()(dispatch_workloop_s *)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void std::__shared_ptr_pointer<BasebandTransportMAV *,std::shared_ptr<BasebandTransportMAV> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransportMAV>(BasebandTransportMAV*)::{lambda(BasebandTransportMAV *)#1},std::allocator<BasebandTransportMAV>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BasebandTransportMAV *,std::shared_ptr<BasebandTransportMAV> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransportMAV>(BasebandTransportMAV*)::{lambda(BasebandTransportMAV *)#1},std::allocator<BasebandTransportMAV>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrI20BasebandTransportMAVEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrI20BasebandTransportMAVEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrI20BasebandTransportMAVEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrI20BasebandTransportMAVEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<BasebandTransportMAV> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransportMAV>(BasebandTransportMAV*)::{lambda(BasebandTransportMAV*)#1}::operator() const(BasebandTransportMAV*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

void std::__shared_ptr_pointer<BasebandTransportICE *,std::shared_ptr<BasebandTransportICE> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransportICE>(BasebandTransportICE*)::{lambda(BasebandTransportICE *)#1},std::allocator<BasebandTransportICE>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BasebandTransportICE *,std::shared_ptr<BasebandTransportICE> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransportICE>(BasebandTransportICE*)::{lambda(BasebandTransportICE *)#1},std::allocator<BasebandTransportICE>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrI20BasebandTransportICEEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrI20BasebandTransportICEEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrI20BasebandTransportICEEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrI20BasebandTransportICEEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<BasebandTransportICE> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransportICE>(BasebandTransportICE*)::{lambda(BasebandTransportICE*)#1}::operator() const(BasebandTransportICE*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

void std::__shared_ptr_pointer<BasebandTransport *,std::shared_ptr<BasebandTransport> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransport>(BasebandTransport*)::{lambda(BasebandTransport *)#1},std::allocator<BasebandTransport>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BasebandTransport *,std::shared_ptr<BasebandTransport> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransport>(BasebandTransport*)::{lambda(BasebandTransport *)#1},std::allocator<BasebandTransport>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<BasebandTransport> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransport>(BasebandTransport*)::{lambda(BasebandTransport*)#1}::operator() const(BasebandTransport*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

const void ***_ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb0_E3__0NS_14default_deleteIS2_EEED1B8ne200100Ev(const void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb0_E3__0EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_(const void **a1)
{
  v4 = a1[5];
  v2 = *(a1 + 1);
  v3 = *(a1 + 3);
  (*(*a1 + 2))();
  if (*a1)
  {
    _Block_release(*a1);
  }

  operator delete(a1);
}

void sub_23C274F80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb0_E3__0NS_14default_deleteIS2_EEED1B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

void *_ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb1_E3__1NS_14default_deleteIS2_EEED1B8ne200100Ev(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 8);
    if (v3)
    {
      *(v1 + 16) = v3;
      operator delete(v3);
    }

    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb1_E3__1EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_(const void **a1)
{
  v2 = *(a1 + 4);
  v3 = a1[1];
  (*(*a1 + 2))();
  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  operator delete(a1);
}

void sub_23C275064(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb1_E3__1NS_14default_deleteIS2_EEED1B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

const void ***_ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb1_E3__2NS_14default_deleteIS2_EEED1B8ne200100Ev(const void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284EFC6A0;
  block[5] = v5;
  v12 = v7;
  p_shared_owners = &v7->__shared_owners_;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  v10 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

uint64_t __copy_helper_block_e8_40c46_ZTSNSt3__110shared_ptrIK17BasebandTransportEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c46_ZTSNSt3__110shared_ptrIK17BasebandTransportEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::__function::__func<BasebandTransport::openPCI_sync(void)::$_0,std::allocator<BasebandTransport::openPCI_sync(void)::$_0>,void ()(dispatch_workloop_s *)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_284EFC6E0;
  return result;
}

uint64_t std::__function::__func<BasebandTransport::openPCI_sync(void)::$_0,std::allocator<BasebandTransport::openPCI_sync(void)::$_0>,void ()(dispatch_workloop_s *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN17BasebandTransport12openPCI_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN17BasebandTransport12openPCI_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN17BasebandTransport12openPCI_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN17BasebandTransport12openPCI_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIZNS1_9getStatusEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = *v1;
  v2 = v1[1];
  result = *(v2 + 272);
  v5 = *(v2 + 288);
  *(v3 + 32) = *(v2 + 304);
  *v3 = result;
  *(v3 + 16) = v5;
  return result;
}

void Timestamp::Timestamp(Timestamp *this)
{
  v15 = *MEMORY[0x277D85DE8];
  *(this + 1) = 0;
  v2 = (this + 8);
  *(this + 2) = 0;
  *this = this + 8;
  v12 = 0uLL;
  if ((gettimeofday(&v12, 0) & 0x80000000) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = *v2;
    v4 = v2;
    if (*v2)
    {
      goto LABEL_4;
    }

LABEL_10:
    v7 = operator new(0x38uLL);
    *(v7 + 8) = 0;
    *(v7 + 5) = 0;
    *(v7 + 6) = 0;
    *v7 = 0;
    *(v7 + 1) = 0;
    *(v7 + 2) = v4;
    *v2 = v7;
    v8 = **this;
    if (v8)
    {
      *this = v8;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 1), v7);
    ++*(this + 2);
    goto LABEL_13;
  }

  v10 = __error();
  v11 = strerror(*v10);
  *buf = 136315138;
  v14 = v11;
  _os_log_error_impl(&dword_23C1C4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to get current time. Error: %s\n", buf, 0xCu);
  v3 = *v2;
  v4 = v2;
  if (!*v2)
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = v3;
  while (1)
  {
    while (1)
    {
      v4 = v5;
      v6 = *(v5 + 32);
      if (v6 < 1)
      {
        break;
      }

      v5 = *v4;
      v2 = v4;
      if (!*v4)
      {
        goto LABEL_10;
      }
    }

    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    v5 = v4[1];
    if (!v5)
    {
      v2 = v4 + 1;
      goto LABEL_10;
    }
  }

  v7 = v4;
LABEL_13:
  *(v7 + 40) = v12;
  v9 = *MEMORY[0x277D85DE8];
}

void Timestamp::Timestamp(Timestamp *this, const Timestamp **a2)
{
  *(this + 1) = 0;
  v3 = (this + 8);
  *(this + 2) = 0;
  *this = this + 8;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != (a2 + 1))
  {
    do
    {
      v14 = 0xAAAAAAAAAAAAAAAALL;
      v15 = 0xAAAAAAAAAAAAAAAALL;
      v6 = std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::__find_equal<Timestamp::TimeDomain>(this, v3, &v15, &v14, v5 + 8);
      if (*v6)
      {
        v7 = *(v5 + 1);
        if (v7)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v8 = operator new(0x38uLL);
        v9 = *(v5 + 2);
        v8[6] = *(v5 + 6);
        *(v8 + 2) = v9;
        v10 = v15;
        *v8 = 0;
        v8[1] = 0;
        v8[2] = v10;
        *v6 = v8;
        v11 = **this;
        if (v11)
        {
          *this = v11;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 1), v8);
        ++*(this + 2);
        v7 = *(v5 + 1);
        if (v7)
        {
          do
          {
LABEL_10:
            v12 = v7;
            v7 = *v7;
          }

          while (v7);
          goto LABEL_3;
        }
      }

      do
      {
        v12 = *(v5 + 2);
        v13 = *v12 == v5;
        v5 = v12;
      }

      while (!v13);
LABEL_3:
      v5 = v12;
    }

    while (v12 != v4);
  }
}

void *Timestamp::Timestamp(void *a1, _OWORD *a2, int a3)
{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  *(v7 + 8) = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  v7[24] = 1;
  a1[2] = 1;
  *(v7 + 40) = *a2;
  return a1;
}

{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  *(v7 + 8) = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  v7[24] = 1;
  a1[2] = 1;
  *(v7 + 40) = *a2;
  return a1;
}

__n128 Timestamp::set(uint64_t **a1, __n128 *a2, int a3)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    while (1)
    {
      while (1)
      {
        v8 = v6;
        v9 = *(v6 + 32);
        if (v9 <= a3)
        {
          break;
        }

        v6 = *v8;
        v7 = v8;
        if (!*v8)
        {
          goto LABEL_8;
        }
      }

      if (v9 >= a3)
      {
        break;
      }

      v6 = *(v8 + 1);
      if (!v6)
      {
        v7 = v8 + 8;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v8 = (a1 + 1);
LABEL_8:
    v10 = v8;
    v8 = operator new(0x38uLL);
    *(v8 + 8) = a3;
    *(v8 + 5) = 0;
    *(v8 + 6) = 0;
    *v8 = 0;
    *(v8 + 1) = 0;
    *(v8 + 2) = v10;
    *v7 = v8;
    v11 = **a1;
    if (v11)
    {
      *a1 = v11;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v8);
    a1[2] = (a1[2] + 1);
  }

  result = *a2;
  *(v8 + 40) = *a2;
  return result;
}

void *Timestamp::Timestamp(void *a1, uint64_t a2, int a3)
{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  v7[8] = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  *(v7 + 24) = 1;
  a1[2] = 1;
  *(v7 + 5) = a2;
  *(v7 + 6) = 0xAAAAAAAAAAAAAAAALL;
  return a1;
}

{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  v7[8] = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  *(v7 + 24) = 1;
  a1[2] = 1;
  *(v7 + 5) = a2;
  *(v7 + 6) = 0xAAAAAAAAAAAAAAAALL;
  return a1;
}

uint64_t **Timestamp::Timestamp(uint64_t **a1, char *a2, char a3, int a4)
{
  v5 = a2;
  v28 = *MEMORY[0x277D85DE8];
  a1[1] = 0;
  v7 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  __p[2] = 0x11AAAAAAAAAA0053;
  *__p = *"%Y-%m-%d-%H-%M-%S";
  if ((a3 & 0x10) != 0)
  {
    HIBYTE(__p[2]) = 19;
    strcpy(__p, "%Y.%m.%d_%H-%M-%S%z");
  }

  *(&v23 + 1) = 0xAAAAAAAA00000000;
  memset(&v24, 0, sizeof(v24));
  if (a2[23] < 0)
  {
    v5 = *a2;
  }

  if (strptime(v5, __p, &v24))
  {
    v24.tm_isdst = -1;
    *&v23 = mktime(&v24);
    if (v23 != -1)
    {
      goto LABEL_15;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v19 = __error();
      v20 = strerror(*v19);
      *buf = 136315138;
      v27 = v20;
      _os_log_error_impl(&dword_23C1C4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to convert to absolute time. Error: %s\n", buf, 0xCu);
      v23 = 0uLL;
      if ((gettimeofday(&v23, 0) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v23 = 0uLL;
      if ((gettimeofday(&v23, 0) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v8 = __error();
    v9 = strerror(*v8);
    *buf = 136315138;
    v27 = v9;
    v10 = MEMORY[0x277D86220];
    v11 = "Failed to get current time after absolute time conversion failed. Error: %s\n";
    goto LABEL_32;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to convert time from string format\n", buf, 2u);
  }

  v23 = 0uLL;
  if (gettimeofday(&v23, 0) < 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v21 = __error();
    v22 = strerror(*v21);
    *buf = 136315138;
    v27 = v22;
    v10 = MEMORY[0x277D86220];
    v11 = "Failed to get current time after conversion failure. Error: %s\n";
LABEL_32:
    _os_log_error_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);
  }

LABEL_15:
  v12 = *v7;
  v13 = v7;
  if (*v7)
  {
    while (1)
    {
      while (1)
      {
        v13 = v12;
        v14 = *(v12 + 32);
        if (v14 <= a4)
        {
          break;
        }

        v12 = *v13;
        v7 = v13;
        if (!*v13)
        {
          goto LABEL_22;
        }
      }

      if (v14 >= a4)
      {
        break;
      }

      v12 = v13[1];
      if (!v12)
      {
        v7 = v13 + 1;
        goto LABEL_22;
      }
    }

    *(v13 + 5) = v23;
    if (SHIBYTE(__p[2]) < 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_22:
    v15 = operator new(0x38uLL);
    *(v15 + 8) = a4;
    *(v15 + 5) = 0;
    *(v15 + 6) = 0;
    *v15 = 0;
    *(v15 + 1) = 0;
    *(v15 + 2) = v13;
    *v7 = v15;
    v16 = **a1;
    if (v16)
    {
      *a1 = v16;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v15);
    a1[2] = (a1[2] + 1);
    *(v15 + 40) = v23;
    if (SHIBYTE(__p[2]) < 0)
    {
LABEL_25:
      operator delete(__p[0]);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_23C275CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v24, *(v24 + 8));
  _Unwind_Resume(a1);
}

uint64_t Timestamp::get(uint64_t a1, void *a2, int a3)
{
  *a2 = 0;
  a2[1] = 0;
  v5 = *(a1 + 8);
  v3 = a1 + 8;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 32) >= a3)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a3));
  }

  while (v4);
  if (v6 == v3 || *(v6 + 32) > a3)
  {
    return 0;
  }

  *a2 = *(v6 + 40);
  return 1;
}

uint64_t Timestamp::asString@<X0>(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v47 = *MEMORY[0x277D85DE8];
  v41 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40[7] = v8;
  v40[8] = v8;
  v40[5] = v8;
  v40[6] = v8;
  v40[3] = v8;
  v40[4] = v8;
  v40[1] = v8;
  v40[2] = v8;
  v39 = v8;
  v40[0] = v8;
  *__p = v8;
  v38 = v8;
  v35 = v8;
  v36 = v8;
  v33 = v8;
  v34 = v8;
  v32 = v8;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v32);
  v11 = *(a1 + 8);
  v10 = a1 + 8;
  v9 = v11;
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = v10;
  do
  {
    if (*(v9 + 32) >= a2)
    {
      v12 = v9;
    }

    v9 = *(v9 + 8 * (*(v9 + 32) < a2));
  }

  while (v9);
  if (v12 != v10 && *(v12 + 32) <= a2)
  {
    v14 = *(v12 + 40);
    v13 = *(v12 + 48);
    if ((a3 & 0x11) != 0)
    {
LABEL_9:
      v30.tm_zone = 0xAAAAAAAAAAAAAAAALL;
      v31 = v14;
      *&v15 = 0xAAAAAAAAAAAAAAAALL;
      *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v30.tm_mon = v15;
      *&v30.tm_isdst = v15;
      *&v30.tm_sec = v15;
      localtime_r(&v31, &v30);
      v45 = 0u;
      v46 = 0u;
      *__s = 0u;
      v44 = 0u;
      if ((a3 & 0x10) != 0)
      {
        v16 = "%Y.%m.%d_%H-%M-%S%z";
      }

      else
      {
        v16 = "%Y-%m-%d-%H-%M-%S";
      }

      strftime(__s, 0x40uLL, v16, &v30);
      v17 = strlen(__s);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, __s, v17);
      if ((a3 & 8) != 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "-", 1);
        v18 = v33;
        v19 = &v33 + *(v33 - 24);
        if (*(v19 + 36) == -1)
        {
          std::ios_base::getloc((&v33 + *(v33 - 24)));
          v20 = std::locale::use_facet(&v42, MEMORY[0x277D82680]);
          (v20->__vftable[2].~facet_0)(v20, 32);
          std::locale::~locale(&v42);
          v18 = v33;
        }

        *(v19 + 36) = 48;
        *(&v34 + *(v18 - 24) + 8) = 3;
        MEMORY[0x23EECDF30](&v33, (v13 / 1000));
      }

      goto LABEL_22;
    }
  }

  else
  {
LABEL_8:
    v13 = 0;
    v14 = 0;
    if ((a3 & 0x11) != 0)
    {
      goto LABEL_9;
    }
  }

  MEMORY[0x23EECDF50](&v33, v14);
  if ((a3 & 4) != 0)
  {
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, ".", 1);
  }

  else
  {
    if ((a3 & 8) == 0)
    {
      goto LABEL_22;
    }

    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, ".", 1);
    v13 = (v13 / 1000);
  }

  MEMORY[0x23EECDF30](v21, v13);
LABEL_22:
  if ((BYTE8(v39) & 0x10) != 0)
  {
    v23 = v39;
    if (v39 < *(&v36 + 1))
    {
      *&v39 = *(&v36 + 1);
      v23 = *(&v36 + 1);
    }

    v24 = v36;
    v22 = v23 - v36;
    if ((v23 - v36) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_40;
    }
  }

  else
  {
    if ((BYTE8(v39) & 8) == 0)
    {
      v22 = 0;
      a4[23] = 0;
      goto LABEL_36;
    }

    v24 = *(&v34 + 1);
    v22 = *(&v35 + 1) - *(&v34 + 1);
    if (*(&v35 + 1) - *(&v34 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_40:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v25 = 25;
    }

    else
    {
      v25 = (v22 | 7) + 1;
    }

    v26 = operator new(v25);
    *(a4 + 1) = v22;
    *(a4 + 2) = v25 | 0x8000000000000000;
    *a4 = v26;
    a4 = v26;
    goto LABEL_35;
  }

  a4[23] = v22;
  if (v22)
  {
LABEL_35:
    memmove(a4, v24, v22);
  }

LABEL_36:
  a4[v22] = 0;
  *&v32 = *MEMORY[0x277D82818];
  v27 = *(MEMORY[0x277D82818] + 72);
  *(&v32 + *(v32 - 24)) = *(MEMORY[0x277D82818] + 64);
  *&v33 = v27;
  *(&v33 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v33 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v34);
  std::iostream::~basic_iostream();
  result = MEMORY[0x23EECE150](v40);
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C27621C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17, MEMORY[0x277D82818]);
  MEMORY[0x23EECE150](&a33);
  _Unwind_Resume(a1);
}

uint64_t *Timestamp::convert(uint64_t a1)
{
  memset(v8, 170, sizeof(v8));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  Timestamp::Timestamp(v8, &__p, 9, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v1 = v8[1];
    if (!v8[1])
    {
      goto LABEL_14;
    }
  }

  else
  {
    v1 = v8[1];
    if (!v8[1])
    {
      goto LABEL_14;
    }
  }

  v2 = &v8[1];
  v3 = v1;
  do
  {
    v4 = *(v3 + 8);
    if ((v4 & 0x80000000) == 0)
    {
      v2 = v3;
    }

    v3 = *(v3 + ((v4 >> 28) & 8));
  }

  while (v3);
  if (v2 != &v8[1] && *(v2 + 8) <= 0)
  {
    v5 = v2[5];
    goto LABEL_15;
  }

LABEL_14:
  v5 = 0;
LABEL_15:
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v8, v1);
  return v5;
}

void sub_23C27634C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Timestamp::timediffUSec(Timestamp *this, const Timestamp *a2, const Timestamp *a3)
{
  v5 = *(this + 1);
  v3 = this + 8;
  v4 = v5;
  if (v5)
  {
    v6 = v3;
    do
    {
      v7 = *(v4 + 8);
      if ((v7 & 0x80000000) == 0)
      {
        v6 = v4;
      }

      v4 = *&v4[(v7 >> 28) & 8];
    }

    while (v4);
    if (v6 == v3 || *(v6 + 8) > 0)
    {
      v8 = 0;
      v4 = 0;
      v11 = *(a2 + 1);
      v9 = a2 + 8;
      v10 = v11;
      if (!v11)
      {
LABEL_21:
        v18 = &v4[v8] - v10;
        if (v18 >= 0)
        {
          return v18;
        }

        else
        {
          return -v18;
        }
      }
    }

    else
    {
      v4 = *(v6 + 12);
      v8 = 1000000 * *(v6 + 5);
      v17 = *(a2 + 1);
      v9 = a2 + 8;
      v10 = v17;
      if (!v17)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v8 = 0;
    v12 = *(a2 + 1);
    v9 = a2 + 8;
    v10 = v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  v13 = v9;
  do
  {
    v14 = *(v10 + 8);
    if ((v14 & 0x80000000) == 0)
    {
      v13 = v10;
    }

    v10 = *&v10[(v14 >> 28) & 8];
  }

  while (v10);
  if (v13 == v9 || *(v13 + 8) > 0)
  {
    v15 = &v4[v8];
    if (v15 >= 0)
    {
      return v15;
    }

    else
    {
      return -v15;
    }
  }

  else
  {
    v19 = &v4[v8 - *(v13 + 12) + -1000000 * *(v13 + 5)];
    if (v19 >= 0)
    {
      return v19;
    }

    else
    {
      return -v19;
    }
  }
}

uint64_t *std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::__find_equal<Timestamp::TimeDomain>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    v16 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = *(v18 + 32);
          if (v16 >= v20)
          {
            break;
          }

          v18 = *v19;
          v5 = v19;
          if (!*v19)
          {
            goto LABEL_25;
          }
        }

        if (v20 >= v16)
        {
          break;
        }

        v5 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
LABEL_25:
      *a3 = v19;
      return v5;
    }

    else
    {
      *a3 = v5;
      return a1 + 1;
    }
  }

  else if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v21 = a2;
      do
      {
        v13 = v21[2];
        v15 = *v13 == v21;
        v21 = v13;
      }

      while (!v15);
    }

    if (v13 == v5 || v6 < *(v13 + 8))
    {
      if (v11)
      {
        *a3 = v13;
        return v13;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }
    }

    else
    {
      v22 = *v5;
      if (*v5)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = *(v22 + 32);
            if (v6 >= v24)
            {
              break;
            }

            v22 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_41;
            }
          }

          if (v24 >= v6)
          {
            break;
          }

          v5 = v23 + 1;
          v22 = v23[1];
        }

        while (v22);
LABEL_41:
        *a3 = v23;
        return v5;
      }

      else
      {
        *a3 = v5;
        return a1 + 1;
      }
    }
  }
}

void SoftwareBypassShim::create(std::__shared_weak_count **a1@<X8>)
{
  v3 = operator new(0x48uLL);
  v3->__shared_owners_ = 0;
  p_shared_owners = &v3->__shared_owners_;
  v3->__shared_weak_owners_ = 0;
  v3->__vftable = &unk_284EFC798;
  v5 = v3 + 1;
  SoftwareBypassShim::SoftwareBypassShim(&v3[1]);
  shared_owners = v3[1].__shared_owners_;
  if (shared_owners)
  {
    if (shared_owners->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v3[1].__vftable = &v3[1];
      v3[1].__shared_owners_ = v3;
      std::__shared_weak_count::__release_weak(shared_owners);
      if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_7;
      }
    }

LABEL_3:
    *a1 = v5;
    a1[1] = v3;
    return;
  }

  atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v3[1].__vftable = &v3[1];
  v3[1].__shared_owners_ = v3;
  if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_3;
  }

LABEL_7:
  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  *a1 = v5;
  a1[1] = v3;
}

void sub_23C27673C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void SoftwareBypassShim::SoftwareBypassShim(SoftwareBypassShim *this)
{
  v12 = *MEMORY[0x277D85DE8];
  *this = 0;
  *(this + 1) = 0;
  ctu::OsLogContext::OsLogContext(buf, "com.apple.telephony.abm", "sw.bypass.shim");
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x23EECD7F0](this + 16, v9);
  MEMORY[0x23EECD800](v9);
  ctu::OsLogContext::~OsLogContext(buf);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  v2 = dlopen("/usr/local/lib/libSWBypassClient.dylib", 1);
  *(this + 3) = v2;
  if (v2)
  {
    *(this + 4) = dlsym(v2, "bypassCtl");
    *(this + 5) = dlsym(*(this + 3), "BypassInterfaceMaskAsString");
    v3 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v4 = dlerror();
    v5 = *(this + 2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = "unknown";
      if (v4)
      {
        v7 = v4;
      }

      *buf = 136315138;
      v11 = v7;
      _os_log_error_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_ERROR, "dlopen error: %s ", buf, 0xCu);
      v8 = *MEMORY[0x277D85DE8];
    }

    else
    {
      v6 = *MEMORY[0x277D85DE8];
    }
  }
}

void sub_23C2768D4(_Unwind_Exception *a1)
{
  MEMORY[0x23EECD800](v1 + 16);
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

void SoftwareBypassShim::~SoftwareBypassShim(SoftwareBypassShim *this)
{
  v3 = (this + 24);
  v2 = *(this + 3);
  if (v2)
  {
    dlclose(v2);
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  MEMORY[0x23EECD800](this + 16);
  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

{
  v3 = (this + 24);
  v2 = *(this + 3);
  if (v2)
  {
    dlclose(v2);
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  MEMORY[0x23EECD800](this + 16);
  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t SoftwareBypassShim::bypassCtl(SoftwareBypassShim *this, uint64_t a2)
{
  v4 = *(this + 4);
  if (v4)
  {

    return v4(a2);
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v6 = *(this + 2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_ERROR, "bypassCtl is not found", v7, 2u);
    }

    return 0;
  }
}

const char *SoftwareBypassShim::bypassInterfaceMaskAsString(SoftwareBypassShim *this, uint64_t a2)
{
  v4 = *(this + 5);
  if (v4)
  {

    return v4(a2);
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v6 = *(this + 2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_ERROR, "BypassInterfaceMaskAsString is not found", v7, 2u);
    }

    return "unknown";
  }
}

void std::__shared_ptr_emplace<SoftwareBypassShim::create(void)::SoftwareBypassShimNoPrivate,std::allocator<SoftwareBypassShim::create(void)::SoftwareBypassShimNoPrivate>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284EFC798;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<SoftwareBypassShim::create(void)::SoftwareBypassShimNoPrivate,std::allocator<SoftwareBypassShim::create(void)::SoftwareBypassShimNoPrivate>>::__on_zero_shared(uint64_t a1)
{
  v3 = (a1 + 48);
  v2 = *(a1 + 48);
  if (v2)
  {
    dlclose(v2);
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  MEMORY[0x23EECD800](a1 + 40);
  v4 = *(a1 + 32);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void KernelPCIABPTrace::PipeContext::stop(KernelPCIABPTrace::PipeContext *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 16))(v2);
    (*(**(this + 4) + 64))(*(this + 4));
    v3 = *(this + 5);
    *(this + 4) = 0;
    *(this + 5) = 0;
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);

        std::__shared_weak_count::__release_weak(v3);
      }
    }
  }
}

void KernelPCIABPTrace::PipeContext::start(KernelPCIABPTrace::PipeContext *this, CircularFileLogWriter::Params *a2)
{
  v4 = *(this + 5);
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = operator new(0xB8uLL);
  CircularFileLogWriter::CircularFileLogWriter(v5, a2);
  std::shared_ptr<CircularFileLogWriter>::shared_ptr[abi:ne200100]<CircularFileLogWriter,std::shared_ptr<CircularFileLogWriter> ctu::SharedSynchronizable<CircularFileLogWriter>::make_shared_ptr<CircularFileLogWriter>(CircularFileLogWriter*)::{lambda(CircularFileLogWriter*)#1},0>(&block, v5);
  v6 = block;
  block = 0uLL;
  v7 = *(this + 5);
  *(this + 2) = v6;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(&block + 1);
  if (*(&block + 1) && !atomic_fetch_add((*(&block + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(this + 4);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 0x40000000;
  v11[2] = ___ZN21CircularFileLogWriter4openEv_block_invoke;
  v11[3] = &__block_descriptor_tmp;
  v11[4] = v9;
  v12 = v11;
  *&block = MEMORY[0x277D85DD0];
  *(&block + 1) = 0x40000000;
  v14 = ___ZNK3ctu20SharedSynchronizableI21CircularFileLogWriterE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v15 = &__block_descriptor_tmp_21;
  v16 = v9 + 8;
  v17 = &v12;
  v10 = *(v9 + 24);
  if (*(v9 + 32))
  {
    dispatch_async_and_wait(v10, &block);
  }

  else
  {
    dispatch_sync(v10, &block);
  }
}

uint64_t KernelPCIABPTrace::PipeContext::write(KernelPCIABPTrace::PipeContext *this, const char *a2)
{
  result = *(this + 4);
  if (result)
  {
    return (*(*result + 72))(result, a2);
  }

  return result;
}

uint64_t KernelPCIABPTrace::PipeContext::pause(KernelPCIABPTrace::PipeContext *this)
{
  result = *(this + 4);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void KernelPCIABPTrace::PipeContext::resume(KernelPCIABPTrace::PipeContext *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 0x40000000;
    v3[2] = ___ZN21CircularFileLogWriter4openEv_block_invoke;
    v3[3] = &__block_descriptor_tmp;
    v3[4] = v1;
    v4 = v3;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableI21CircularFileLogWriterE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    block[3] = &__block_descriptor_tmp_21;
    block[4] = v1 + 8;
    block[5] = &v4;
    v2 = *(v1 + 24);
    if (*(v1 + 32))
    {
      dispatch_async_and_wait(v2, block);
    }

    else
    {
      dispatch_sync(v2, block);
    }
  }
}

void KernelPCIABPTrace::PipeContext::setFileCapacity(KernelPCIABPTrace::PipeContext *this, uint64_t a2)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 0x40000000;
    v3[2] = ___ZN21CircularFileLogWriter11setCapacityEm_block_invoke;
    v3[3] = &__block_descriptor_tmp_8;
    v3[4] = v2;
    v3[5] = a2;
    ctu::SharedSynchronizable<CircularFileLogWriter>::execute_wrapped((v2 + 8), v3);
  }
}

void KernelPCIABPTrace::KernelPCIABPTrace(KernelPCIABPTrace *this)
{
  v5 = 13;
  strcpy(__p, "trace.pci.bin");
  ctu::OsLogContext::OsLogContext(v6, "com.apple.telephony.abm", __p);
  ctu::SharedLoggable<Trace,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(this + 1, __p, QOS_CLASS_USER_INITIATED);
  ctu::OsLogContext::~OsLogContext(v6);
  *this = &unk_284EF95A8;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_284EFC7E8;
  *(this + 48) = 0;
  v3 = capabilities::ipc::defaultPCIBinaryTraceHistorySizeMB(v2);
  *(this + 25) = v3;
  *(this + 26) = capabilities::ipc::defaultPCIBinaryTraceBufferCount(v3);
  *(this + 27) = 0x4000;
  *(this + 15) = 0;
  *(this + 14) = this + 120;
  *(this + 19) = 0;
  *(this + 18) = 0;
  *(this + 16) = 0;
  *(this + 17) = this + 144;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 24) = 0;
}

void sub_23C277180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  ctu::OsLogContext::~OsLogContext(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void KernelPCIABPTrace::~KernelPCIABPTrace(void **this)
{
  *this = &unk_284EFC7E8;
  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  v2 = this[21];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__tree<std::shared_ptr<PipeContext>>::destroy(this[18]);
  std::__tree<KernelPCITrace::BuffContext *>::destroy(this[15]);

  Trace::~Trace(this);
}

{
  KernelPCIABPTrace::~KernelPCIABPTrace(this);

  operator delete(v1);
}

void KernelPCIABPTrace::createInternal(KernelPCIABPTrace **a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v3 = operator new(0xD0uLL);
  KernelPCIABPTrace::KernelPCIABPTrace(v3);
  v4 = operator new(0x20uLL);
  v4->__shared_owners_ = 0;
  p_shared_owners = &v4->__shared_owners_;
  v4->__vftable = &unk_284EFC8C8;
  v4->__shared_weak_owners_ = 0;
  v4[1].__vftable = v3;
  v6 = *(v3 + 2);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      *(v3 + 1) = v3;
      *(v3 + 2) = v4;
      std::__shared_weak_count::__release_weak(v6);
      if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_7;
      }
    }

LABEL_3:
    *a1 = v3;
    a1[1] = v4;
    return;
  }

  atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *(v3 + 1) = v3;
  *(v3 + 2) = v4;
  if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_3;
  }

LABEL_7:
  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  *a1 = v3;
  a1[1] = v4;
}

void sub_23C2773C8(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<KernelPCIABPTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<KernelPCIABPTrace>(KernelPCIABPTrace*)::{lambda(KernelPCIABPTrace*)#1}::operator() const(KernelPCIABPTrace*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

uint64_t KernelPCIABPTrace::init(uint64_t a1, uint64_t a2, uint64_t *a3, NSObject **a4)
{
  *(a1 + 200) = 0;
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v16 = *a2;
    v7 = a3[1];
    v14 = *a3;
    v15 = v7;
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  std::string::__init_copy_ctor_external(&v16, *a2, *(a2 + 8));
  v7 = a3[1];
  v14 = *a3;
  v15 = v7;
  if (v7)
  {
LABEL_3:
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_4:
  v8 = *a4;
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v9 = Trace::init(a1, &v16.__r_.__value_.__l.__data_, &v14, &object);
  if (object)
  {
    dispatch_release(object);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
    if (!v9)
    {
      return v9;
    }
  }

  else if (!v9)
  {
    return v9;
  }

  v12 = a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIZN17KernelPCIABPTrace4initENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEENS5_8weak_ptrIN3abm19BasebandTracingTaskEEEN8dispatch5groupEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSJ__block_invoke;
  block[3] = &__block_descriptor_tmp_65_1;
  block[4] = a1 + 8;
  block[5] = &v12;
  v11 = *(a1 + 24);
  if (*(a1 + 32))
  {
    dispatch_async_and_wait(v11, block);
  }

  else
  {
    dispatch_sync(v11, block);
  }

  return v9;
}

void sub_23C277598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (object)
  {
    dispatch_release(object);
    v19 = a12;
    if (!a12)
    {
LABEL_3:
      if ((a18 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v19 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v19);
  if ((a18 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void KernelPCIABPTrace::initProperty_sync(KernelPCIABPTrace *this)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
    *(__p.__r_.__value_.__r.__words + 4) = "initProperty_sync";
    _os_log_debug_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEBUG, "#D %s", &__p, 0xCu);
  }

  v6 = 7;
  strcpy(v5, "Enabled");
  memset(&__p, 0, sizeof(__p));
  if (prop::ipc::get(v5, &__p))
  {
    util::convert<BOOL>(&__p, this + 96, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(v5[0]);
LABEL_7:
  v6 = 7;
  strcpy(v5, "History");
  memset(&__p, 0, sizeof(__p));
  if (prop::ipc::get(v5, &__p))
  {
    util::convert<int>(&__p, this + 25, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  operator delete(v5[0]);
LABEL_11:
  v6 = 11;
  strcpy(v5, "BufferCount");
  memset(&__p, 0, sizeof(__p));
  if (prop::ipc::get(v5, &__p))
  {
    util::convert<unsigned int>(&__p, this + 26, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
LABEL_15:
    v3 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v5[0]);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_23C27780C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

void KernelPCIABPTrace::dumpCodeRegistry_sync(KernelPCIABPTrace *this)
{
  v96 = *MEMORY[0x277D85DE8];
  v87 = 0xAAAAAAAAAAAAAAAALL;
  v88 = 0xAAAAAAAAAAAAAAAALL;
  v2 = pthread_mutex_lock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
  v3 = xmmword_280C05A58;
  if (!xmmword_280C05A58)
  {
    ctu::XpcJetsamAssertion::create_default_global(buf, v2);
    v4 = *buf;
    memset(buf, 0, sizeof(buf));
    v5 = *(&xmmword_280C05A58 + 1);
    xmmword_280C05A58 = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v6 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v3 = xmmword_280C05A58;
  }

  v7 = *(&xmmword_280C05A58 + 1);
  *v82 = v3;
  *&v82[8] = *(&xmmword_280C05A58 + 1);
  if (*(&xmmword_280C05A58 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_280C05A58 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
  *&value[1] = operator new(0x20uLL);
  v86 = xmmword_23C32F000;
  strcpy(*&value[1], "Kernel PCI Dump Code Registry");
  ctu::XpcJetsamAssertion::createActivity();
  operator delete(*&value[1]);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(this + 5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    *&buf[4] = "dumpCodeRegistry_sync";
    _os_log_debug_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_DEBUG, "#D %s", buf, 0xCu);
    if (!*(this + 20))
    {
      goto LABEL_157;
    }

LABEL_16:
    v9 = xpc_dictionary_create(0, 0, 0);
    v10 = MEMORY[0x277D86468];
    if (v9 || (v9 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x23EECEE80](v9) == v10)
      {
        xpc_retain(v9);
        v11 = v9;
      }

      else
      {
        v11 = xpc_null_create();
      }
    }

    else
    {
      v11 = xpc_null_create();
      v9 = 0;
    }

    xpc_release(v9);
    if (MEMORY[0x23EECEE80](v11) != v10)
    {
      goto LABEL_156;
    }

    value[0] = -1431655766;
    if ((*(**(this + 20) + 104))(*(this + 20), value))
    {
      v12 = xpc_int64_create(value[0]);
      if (!v12)
      {
        v12 = xpc_null_create();
      }

      xpc_dictionary_set_value(v11, "TraceCodeSize", v12);
      v13 = xpc_null_create();
      xpc_release(v12);
      xpc_release(v13);
    }

    if ((*(**(this + 20) + 112))(*(this + 20), value))
    {
      v14 = xpc_int64_create(value[0]);
      if (!v14)
      {
        v14 = xpc_null_create();
      }

      xpc_dictionary_set_value(v11, "MinTraceBufferSize", v14);
      v15 = xpc_null_create();
      xpc_release(v14);
      xpc_release(v15);
    }

    if ((*(**(this + 20) + 120))(*(this + 20), value))
    {
      v16 = xpc_int64_create(value[0]);
      if (!v16)
      {
        v16 = xpc_null_create();
      }

      xpc_dictionary_set_value(v11, "MaxTraceBufferSize", v16);
      v17 = xpc_null_create();
      xpc_release(v16);
      xpc_release(v17);
    }

    if ((*(**(this + 20) + 136))(*(this + 20), value))
    {
      v18 = xpc_int64_create(value[0]);
      if (!v18)
      {
        v18 = xpc_null_create();
      }

      xpc_dictionary_set_value(v11, "MaxTraceBuffersInFlight", v18);
      v19 = xpc_null_create();
      xpc_release(v18);
      xpc_release(v19);
    }

    if ((*(**(this + 20) + 128))(*(this + 20), value))
    {
      v20 = xpc_int64_create(value[0]);
      if (!v20)
      {
        v20 = xpc_null_create();
      }

      xpc_dictionary_set_value(v11, "SnapshotBufferSize", v20);
      v21 = xpc_null_create();
      xpc_release(v20);
      xpc_release(v21);
    }

    v84.tv_sec = 0;
    *&v84.tv_usec = 0;
    v83 = 0;
    if (!gettimeofday(&v84, &v83))
    {
      v22 = xpc_int64_create(v83);
      if (!v22)
      {
        v22 = xpc_null_create();
      }

      xpc_dictionary_set_value(v11, "TimeZoneMinutesWest", v22);
      v23 = xpc_null_create();
      xpc_release(v22);
      xpc_release(v23);
      v24 = xpc_int64_create(SHIDWORD(v83));
      if (!v24)
      {
        v24 = xpc_null_create();
      }

      xpc_dictionary_set_value(v11, "TimeZoneAdjust", v24);
      v25 = xpc_null_create();
      xpc_release(v24);
      xpc_release(v25);
    }

    v26 = xpc_array_create(0, 0);
    v27 = MEMORY[0x277D86440];
    if (v26 || (v26 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x23EECEE80](v26) == v27)
      {
        xpc_retain(v26);
        xarray = v26;
      }

      else
      {
        xarray = xpc_null_create();
      }
    }

    else
    {
      xarray = xpc_null_create();
      v26 = 0;
    }

    xpc_release(v26);
    if (!(*(**(this + 20) + 96))(*(this + 20), value) || MEMORY[0x23EECEE80](xarray) != v27)
    {
      goto LABEL_148;
    }

    v92 = 0xAAAAAAAAAAAAAAAALL;
    __p = 0;
    v94 = 0;
    v95 = 0;
    *buf = 0u;
    *string = 0u;
    v91 = 0u;
    if (value[0])
    {
      v28 = 0;
      v80 = v11;
      do
      {
        v29 = __p;
        v30 = v94;
        while (v30 != v29)
        {
          v31 = *(v30 - 9);
          v30 -= 4;
          if (v31 < 0)
          {
            operator delete(*v30);
          }
        }

        v94 = v29;
        if (((*(**(this + 20) + 144))(*(this + 20), v28, buf) & 1) == 0)
        {
          goto LABEL_61;
        }

        v32 = xpc_dictionary_create(0, 0, 0);
        if (v32 || (v32 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x23EECEE80](v32) == v10)
          {
            xpc_retain(v32);
            v33 = v32;
          }

          else
          {
            v33 = xpc_null_create();
          }
        }

        else
        {
          v33 = xpc_null_create();
          v32 = 0;
        }

        xpc_release(v32);
        if (MEMORY[0x23EECEE80](v33) != v10)
        {
          v34 = 6;
          goto LABEL_130;
        }

        v35 = xpc_array_create(0, 0);
        v36 = MEMORY[0x277D86440];
        if (v35 || (v35 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x23EECEE80](v35) == v36)
          {
            xpc_retain(v35);
            v37 = v35;
          }

          else
          {
            v37 = xpc_null_create();
          }
        }

        else
        {
          v37 = xpc_null_create();
          v35 = 0;
        }

        xpc_release(v35);
        if (MEMORY[0x23EECEE80](v37) == v36)
        {
          v39 = __p;
          v38 = v94;
          while (v39 != v38)
          {
            *&v40 = 0xAAAAAAAAAAAAAAAALL;
            *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *v82 = v40;
            *&v82[16] = v40;
            if (*(v39 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(v82, *v39, v39[1]);
            }

            else
            {
              v41 = *v39;
              *&v82[16] = v39[2];
              *v82 = v41;
            }

            *&v82[24] = *(v39 + 6);
            v42 = xpc_dictionary_create(0, 0, 0);
            if (v42 || (v42 = xpc_null_create()) != 0)
            {
              if (MEMORY[0x23EECEE80](v42) == v10)
              {
                xpc_retain(v42);
                v43 = v42;
              }

              else
              {
                v43 = xpc_null_create();
              }
            }

            else
            {
              v43 = xpc_null_create();
              v42 = 0;
            }

            xpc_release(v42);
            if (MEMORY[0x23EECEE80](v43) != v10)
            {
              xpc_release(v43);
              v11 = v80;
              if ((v82[23] & 0x80000000) != 0)
              {
                operator delete(*v82);
              }

              v34 = 1;
              goto LABEL_129;
            }

            if (v82[23] >= 0)
            {
              v44 = v82;
            }

            else
            {
              v44 = *v82;
            }

            v45 = xpc_string_create(v44);
            if (!v45)
            {
              v45 = xpc_null_create();
            }

            xpc_dictionary_set_value(v43, "TypeName", v45);
            v46 = xpc_null_create();
            xpc_release(v45);
            xpc_release(v46);
            v47 = xpc_int64_create(*&v82[24]);
            if (!v47)
            {
              v47 = xpc_null_create();
            }

            xpc_dictionary_set_value(v43, "Size", v47);
            v48 = xpc_null_create();
            xpc_release(v47);
            xpc_release(v48);
            xpc_array_append_value(v37, v43);
            xpc_release(v43);
            if ((v82[23] & 0x80000000) != 0)
            {
              operator delete(*v82);
            }

            v39 += 4;
          }

          v11 = v80;
          if (MEMORY[0x23EECEE80](v37) == MEMORY[0x277D86440] && xpc_array_get_count(v37))
          {
            if (v37)
            {
              xpc_retain(v37);
              v49 = v37;
            }

            else
            {
              v49 = xpc_null_create();
            }

            xpc_dictionary_set_value(v33, "Attachments", v49);
            v50 = xpc_null_create();
            xpc_release(v49);
            xpc_release(v50);
          }
        }

        v51 = xpc_int64_create(v92);
        if (!v51)
        {
          v51 = xpc_null_create();
        }

        xpc_dictionary_set_value(v33, "Code", v51);
        v52 = xpc_null_create();
        xpc_release(v51);
        xpc_release(v52);
        if (SHIBYTE(string[0]) >= 0)
        {
          v53 = buf;
        }

        else
        {
          v53 = *buf;
        }

        v54 = xpc_string_create(v53);
        if (!v54)
        {
          v54 = xpc_null_create();
        }

        xpc_dictionary_set_value(v33, "Text", v54);
        v55 = xpc_null_create();
        xpc_release(v54);
        xpc_release(v55);
        if (SHIBYTE(v91) < 0)
        {
          if (!v91)
          {
            goto LABEL_128;
          }

          v56 = string[1];
        }

        else
        {
          v56 = &string[1];
          if (!HIBYTE(v91))
          {
            goto LABEL_128;
          }
        }

        v57 = xpc_string_create(v56);
        if (!v57)
        {
          v57 = xpc_null_create();
        }

        xpc_dictionary_set_value(v33, "Location", v57);
        v58 = xpc_null_create();
        xpc_release(v57);
        xpc_release(v58);
LABEL_128:
        xpc_array_append_value(xarray, v33);
        v34 = 0;
LABEL_129:
        xpc_release(v37);
LABEL_130:
        xpc_release(v33);
        if (v34 != 6 && v34)
        {
          v59 = 0;
          goto LABEL_137;
        }

LABEL_61:
        v28 = (v28 + 1);
      }

      while (v28 < value[0]);
    }

    v60 = xarray;
    if (xarray)
    {
      xpc_retain(xarray);
    }

    else
    {
      v60 = xpc_null_create();
    }

    xpc_dictionary_set_value(v11, "TraceCodes", v60);
    v61 = xpc_null_create();
    xpc_release(v60);
    xpc_release(v61);
    v59 = 1;
LABEL_137:
    v62 = __p;
    if (__p)
    {
      v63 = v94;
      v64 = __p;
      if (v94 != __p)
      {
        do
        {
          v65 = *(v63 - 9);
          v63 -= 4;
          if (v65 < 0)
          {
            operator delete(*v63);
          }
        }

        while (v63 != v62);
        v64 = __p;
      }

      v94 = v62;
      operator delete(v64);
    }

    if (SHIBYTE(v91) < 0)
    {
      operator delete(string[1]);
      if ((SHIBYTE(string[0]) & 0x80000000) == 0)
      {
LABEL_147:
        if (v59)
        {
LABEL_148:
          v66 = xpc_null_create();
          v67 = v87;
          v68 = v88;
          if (v88)
          {
            atomic_fetch_add_explicit((v88 + 8), 1uLL, memory_order_relaxed);
          }

          v69 = *(this + 2);
          if (!v69 || (v70 = *(this + 1), (v71 = std::__shared_weak_count::lock(v69)) == 0))
          {
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }

          v72 = v71;
          v73 = operator new(0x20uLL);
          *v73 = this;
          v73[1] = v11;
          v74 = xpc_null_create();
          v73[2] = v67;
          v73[3] = v68;
          v75 = *(this + 3);
          atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
          v76 = operator new(0x18uLL);
          *v76 = v73;
          v76[1] = v70;
          v76[2] = v72;
          dispatch_async_f(v75, v76, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCIABPTrace::dumpCodeRegistry_sync(void)::$_0>(KernelPCIABPTrace::dumpCodeRegistry_sync(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCIABPTrace::dumpCodeRegistry_sync(void)::$_0,dispatch_queue_s *::default_delete<KernelPCIABPTrace::dumpCodeRegistry_sync(void)::$_0>>)::{lambda(void *)#1}::__invoke);
          if (!atomic_fetch_add(&v72->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v72->__on_zero_shared)(v72);
            std::__shared_weak_count::__release_weak(v72);
          }

          xpc_release(v74);
          v11 = v66;
          v77 = xarray;
          goto LABEL_155;
        }

LABEL_163:
        v77 = xarray;
LABEL_155:
        xpc_release(v77);
LABEL_156:
        xpc_release(v11);
        goto LABEL_157;
      }
    }

    else if ((SHIBYTE(string[0]) & 0x80000000) == 0)
    {
      goto LABEL_147;
    }

    operator delete(*buf);
    if (v59)
    {
      goto LABEL_148;
    }

    goto LABEL_163;
  }

  if (*(this + 20))
  {
    goto LABEL_16;
  }

LABEL_157:
  v78 = v88;
  if (v88 && !atomic_fetch_add((v88 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v78->__on_zero_shared)(v78);
    std::__shared_weak_count::__release_weak(v78);
  }

  v79 = *MEMORY[0x277D85DE8];
}

void sub_23C278590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, uint64_t a11, xpc_object_t object, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, char a33)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *KernelPCIABPTrace::createBuffContext_sync(uint64_t a1, uint64_t a2, uint64_t *a3, NSObject **a4)
{
  v8 = operator new(0x38uLL);
  v9 = *(a1 + 16);
  if (!v9 || (v10 = *(a1 + 8), (v11 = std::__shared_weak_count::lock(v9)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v11;
  atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v12);
  }

  v14 = *a3;
  v13 = a3[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *a4;
  if (v15)
  {
    dispatch_retain(v15);
    dispatch_group_enter(v15);
  }

  *v8 = 0;
  v8[1] = a2;
  v8[2] = v10;
  v8[3] = v12;
  atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v8[4] = v14;
  if (!v13)
  {
    v8[5] = 0;
LABEL_31:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v16 = std::__shared_weak_count::lock(v13);
  v8[5] = v16;
  if (!v16)
  {
    goto LABEL_31;
  }

  v8[6] = v15;
  if (v15)
  {
    dispatch_retain(v15);
    v17 = v8[6];
    if (v17)
    {
      dispatch_group_enter(v17);
    }
  }

  v18 = v8[1];
  if (v18)
  {
    *v8 = malloc_type_malloc(v18, 0x100004077774924uLL);
  }

  if (v15)
  {
    dispatch_group_leave(v15);
    dispatch_release(v15);
  }

  std::__shared_weak_count::__release_weak(v13);
  std::__shared_weak_count::__release_weak(v12);
  v20 = (a1 + 120);
  v19 = *(a1 + 120);
  if (v19)
  {
    while (1)
    {
      while (1)
      {
        v21 = v19;
        v22 = v19[4];
        if (v8 >= v22)
        {
          break;
        }

        v19 = *v21;
        v20 = v21;
        if (!*v21)
        {
          goto LABEL_25;
        }
      }

      if (v22 >= v8)
      {
        break;
      }

      v19 = v21[1];
      if (!v19)
      {
        v20 = v21 + 1;
        goto LABEL_25;
      }
    }
  }

  else
  {
    v21 = (a1 + 120);
LABEL_25:
    v23 = operator new(0x28uLL);
    v23[4] = v8;
    *v23 = 0;
    v23[1] = 0;
    v23[2] = v21;
    *v20 = v23;
    v24 = **(a1 + 112);
    if (v24)
    {
      *(a1 + 112) = v24;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 120), v23);
    ++*(a1 + 128);
  }

  return v8;
}

void sub_23C278A68(_Unwind_Exception *a1)
{
  v7 = v1[6];
  if (v7)
  {
    dispatch_group_leave(v7);
    v8 = v1[6];
    if (v8)
    {
      dispatch_release(v8);
    }
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v5);
  v9 = v1[3];
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
    if (!v4)
    {
LABEL_6:
      if (!v3)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if (!v4)
  {
    goto LABEL_6;
  }

  dispatch_group_leave(v4);
  dispatch_release(v4);
  if (!v3)
  {
LABEL_8:
    std::__shared_weak_count::__release_weak(v2);
    operator delete(v1);
    _Unwind_Resume(a1);
  }

LABEL_7:
  std::__shared_weak_count::__release_weak(v3);
  goto LABEL_8;
}

void KernelPCIABPTrace::deleteBuffContext_sync(KernelPCIABPTrace *this, KernelPCIABPTrace::BuffContext *a2)
{
  if (a2)
  {
    v2 = *(this + 15);
    if (v2)
    {
      v3 = (this + 120);
      v4 = *(this + 15);
      do
      {
        v5 = *(v4 + 32);
        v6 = v5 >= a2;
        v7 = v5 < a2;
        if (v6)
        {
          v3 = v4;
        }

        v4 = *(v4 + 8 * v7);
      }

      while (v4);
      if (v3 != (this + 120) && v3[4] <= a2)
      {
        v8 = v3[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          v10 = v3;
          do
          {
            v9 = v10[2];
            v11 = *v9 == v10;
            v10 = v9;
          }

          while (!v11);
        }

        if (*(this + 14) == v3)
        {
          *(this + 14) = v9;
        }

        --*(this + 16);
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v2, v3);
        operator delete(v3);
        KernelPCIABPTrace::BuffContext::~BuffContext(a2);

        operator delete(v13);
      }
    }
  }
}

void KernelPCIABPTrace::deleteAllBuffContext_sync(KernelPCIABPTrace *this)
{
  v2 = *(this + 14);
  v3 = this + 120;
  if (v2 != this + 120)
  {
    do
    {
      v4 = *(v2 + 4);
      if (v4)
      {
        KernelPCIABPTrace::BuffContext::~BuffContext(v4);
        operator delete(v5);
      }

      v6 = *(v2 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v2 + 2);
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }

  std::__tree<KernelPCITrace::BuffContext *>::destroy(*(this + 15));
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 14) = v3;
}

void KernelPCIABPTrace::updateTraceState_sync(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (*(a1 + 96) == 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    KernelPCIABPTrace::stopTrace(a1, a2);
    goto LABEL_7;
  }

  v6 = 136315138;
  v7 = "updateTraceState_sync";
  _os_log_debug_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEBUG, "#D %s", &v6, 0xCu);
  if (*(a1 + 96) != 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((*(a1 + 97) & 1) == 0)
  {
    KernelPCIABPTrace::startTrace_sync(a1);
  }

LABEL_7:
  v5 = *MEMORY[0x277D85DE8];
}

void KernelPCIABPTrace::startTrace_sync(KernelPCIABPTrace *this)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v24 = 136315138;
    *&v24[4] = "startTrace_sync";
    _os_log_debug_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEBUG, "#D %s", v24, 0xCu);
  }

  *(this + 97) = 1;
  if (KernelPCIABPTrace::registerWithKernel_sync(this))
  {
    v3 = *(this + 17);
    if (v3 != (this + 144))
    {
      do
      {
        v5 = *(v3 + 4);
        v4 = *(v3 + 5);
        v22 = v5;
        v23 = v4;
        if (v4)
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *&v6 = 0xAAAAAAAAAAAAAAAALL;
        *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v28 = v6;
        v29 = v6;
        v26 = v6;
        *v27 = v6;
        *v24 = v6;
        *v25 = v6;
        if (*(v5 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v21, *v5, *(v5 + 1));
        }

        else
        {
          v7 = *v5;
          v21.__r_.__value_.__r.__words[2] = *(v5 + 2);
          *&v21.__r_.__value_.__l.__data_ = v7;
        }

        v8 = operator new(0x48uLL);
        __p = v8;
        v20 = xmmword_23C32CA50;
        strcpy(v8, "/var/wireless/Library/Logs/AppleBasebandManager/pci-bin.scratch/");
        v9 = *(this + 25);
        capabilities::ipc::ABPLogExtension(buf, v8);
        if (v18 >= 0)
        {
          v10 = buf;
        }

        else
        {
          v10 = *buf;
        }

        CircularFileLogWriter::Params::Params(v24, &v21, &__p, v9 << 20, 0x100000uLL, v10, 0);
        if (v18 < 0)
        {
          operator delete(*buf);
          if ((SHIBYTE(v20) & 0x80000000) == 0)
          {
LABEL_17:
            if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_18;
            }

            goto LABEL_27;
          }
        }

        else if ((SHIBYTE(v20) & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        operator delete(__p);
        if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_18:
          v11 = *(this + 5);
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_20;
          }

LABEL_19:
          *buf = 0;
          _os_log_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_DEFAULT, "#I Create and open log writer", buf, 2u);
          goto LABEL_20;
        }

LABEL_27:
        operator delete(v21.__r_.__value_.__l.__data_);
        v11 = *(this + 5);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

LABEL_20:
        KernelPCIABPTrace::PipeContext::start(v5, v24);
        if (SBYTE7(v28) < 0)
        {
          operator delete(v27[0]);
          if ((SHIBYTE(v26) & 0x80000000) == 0)
          {
LABEL_22:
            if ((SHIBYTE(v25[0]) & 0x80000000) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_31;
          }
        }

        else if ((SHIBYTE(v26) & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

        operator delete(v25[1]);
        if ((SHIBYTE(v25[0]) & 0x80000000) == 0)
        {
LABEL_23:
          if (!v4)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }

LABEL_31:
        operator delete(*v24);
        if (!v4)
        {
          goto LABEL_33;
        }

LABEL_32:
        if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_33:
          v12 = *(v3 + 1);
          if (!v12)
          {
            goto LABEL_37;
          }

          goto LABEL_34;
        }

        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        v12 = *(v3 + 1);
        if (!v12)
        {
          do
          {
LABEL_37:
            v13 = *(v3 + 2);
            v14 = *v13 == v3;
            v3 = v13;
          }

          while (!v14);
          goto LABEL_6;
        }

        do
        {
LABEL_34:
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
LABEL_6:
        v3 = v13;
      }

      while (v13 != (this + 144));
    }

    KernelPCIABPTrace::dumpCodeRegistry_sync(this);
  }

  else
  {
    v15 = *(this + 5);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_DEFAULT, "#E Registering with Kernel driver failed. De-register to cleanup", v24, 2u);
    }

    KernelPCIABPTrace::deregisterWithKernel_sync(this);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_23C2790D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23C2790EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if ((a28 & 0x80000000) == 0)
  {
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a30);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a30);
  _Unwind_Resume(a1);
}

void sub_23C279170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  CircularFileLogWriter::Params::~Params(va1);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void KernelPCIABPTrace::stopTrace(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *(a1 + 97) = 0;
    v5 = dispatch_group_create();
    v10 = v5;
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  *buf = 136315138;
  v12 = "stopTrace";
  _os_log_debug_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEBUG, "#D %s", buf, 0xCu);
  *(a1 + 97) = 0;
  v5 = dispatch_group_create();
  v10 = v5;
  if (v5)
  {
LABEL_3:
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

LABEL_4:
  v9 = 0;
  KernelPCIABPTrace::snapshot_sync(a1, &v10, &v9);
  if (v5)
  {
    dispatch_group_leave(v5);
    dispatch_release(v5);
  }

  v6 = *(a1 + 24);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = ___ZN17KernelPCIABPTrace9stopTraceERKN8dispatch13group_sessionE_block_invoke;
  v8[3] = &__block_descriptor_tmp_9;
  v8[4] = a1;
  v8[5] = a2;
  dispatch_group_notify(v5, v6, v8);
  if (v5)
  {
    dispatch_release(v5);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_23C279304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  if (v7)
  {
    dispatch_group_leave(v7);
    dispatch_release(v7);
    dispatch_release(v7);
  }

  _Unwind_Resume(a1);
}

void KernelPCIABPTrace::snapshot_sync(uint64_t a1, NSObject **a2, const __CFDictionary **a3)
{
  v110 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    *&buf[4] = "snapshot_sync";
    _os_log_debug_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEBUG, "#D %s", buf, 0xCu);
    if (!*(a1 + 160))
    {
      goto LABEL_168;
    }

LABEL_3:
    v107[0] = 0xAAAAAAAAAAAAAAAALL;
    v107[1] = 0xAAAAAAAAAAAAAAAALL;
    ctu::cf::dict_adapter::dict_adapter(v107, *a3);
    memset(buf, 170, sizeof(buf));
    v106[0] = operator new(0x28uLL);
    *&v106[1] = xmmword_23C32C700;
    strcpy(v106[0], "kCollectTelephonyLogsWithCoredump");
    ctu::cf::MakeCFString::MakeCFString(v105, "kKeyTraceAction");
    ctu::cf::map_adapter::getString();
    MEMORY[0x23EECD8F0](v105);
    if (SHIBYTE(v106[2]) < 0)
    {
      operator delete(v106[0]);
    }

    memset(v106, 170, sizeof(v106));
    v7 = *MEMORY[0x277CECBB8];
    memset(v105, 0, sizeof(v105));
    ctu::cf::MakeCFString::MakeCFString(__dst, v7);
    ctu::cf::map_adapter::getString();
    MEMORY[0x23EECD8F0](__dst);
    if (SHIBYTE(v105[2]) < 0)
    {
      operator delete(v105[0]);
    }

    v8 = 0x7FFFFFFFFFFFFFF7;
    memset(v105, 170, sizeof(v105));
    v9 = HIBYTE(v106[2]);
    if (SHIBYTE(v106[2]) < 0)
    {
      v9 = v106[1];
    }

    if (v9)
    {
      v10 = abm::trace::kSnapshotFolder;
    }

    else
    {
      v10 = abm::trace::kTrashFolder;
    }

    v11 = *v10;
    v12 = strlen(*v10);
    if (v12 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v13 = v12;
    if (v12 >= 0x17)
    {
      if ((v12 | 7) == 0x17)
      {
        v15 = 25;
      }

      else
      {
        v15 = (v12 | 7) + 1;
      }

      v14 = operator new(v15);
      *(&__dst[0] + 1) = v13;
      *&__dst[1] = v15 | 0x8000000000000000;
      *&__dst[0] = v14;
    }

    else
    {
      BYTE7(__dst[1]) = v12;
      v14 = __dst;
      if (!v12)
      {
LABEL_21:
        *(v14 + v13) = 0;
        ctu::cf::MakeCFString::MakeCFString(__p, "kKeyTraceDumpStatePath");
        ctu::cf::map_adapter::getString();
        MEMORY[0x23EECD8F0](__p);
        if (SBYTE7(__dst[1]) < 0)
        {
          operator delete(*&__dst[0]);
        }

        v16 = abm::trace::kLogDirPrefix[0];
        v17 = strlen(abm::trace::kLogDirPrefix[0]);
        if (v17 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v18 = v17;
        if (v17 >= 0x17)
        {
          if ((v17 | 7) == 0x17)
          {
            v20 = 25;
          }

          else
          {
            v20 = (v17 | 7) + 1;
          }

          v19 = operator new(v20);
          v100.__r_.__value_.__l.__size_ = v18;
          v100.__r_.__value_.__r.__words[2] = v20 | 0x8000000000000000;
          v100.__r_.__value_.__r.__words[0] = v19;
        }

        else
        {
          *(&v100.__r_.__value_.__s + 23) = v17;
          v19 = &v100;
          if (!v17)
          {
LABEL_32:
            v19[v18] = 0;
            if (SHIBYTE(v105[2]) >= 0)
            {
              v21 = v105;
            }

            else
            {
              v21 = v105[0];
            }

            if (SHIBYTE(v105[2]) >= 0)
            {
              v22 = HIBYTE(v105[2]);
            }

            else
            {
              v22 = v105[1];
            }

            v23 = std::string::insert(&v100, 0, v21, v22);
            v24 = *&v23->__r_.__value_.__l.__data_;
            v101.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
            *&v101.__r_.__value_.__l.__data_ = v24;
            v23->__r_.__value_.__l.__size_ = 0;
            v23->__r_.__value_.__r.__words[2] = 0;
            v23->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v106[2]) >= 0)
            {
              v25 = v106;
            }

            else
            {
              v25 = v106[0];
            }

            if (SHIBYTE(v106[2]) >= 0)
            {
              v26 = HIBYTE(v106[2]);
            }

            else
            {
              v26 = v106[1];
            }

            v27 = std::string::append(&v101, v25, v26);
            v28 = *&v27->__r_.__value_.__l.__data_;
            v103 = v27->__r_.__value_.__r.__words[2];
            *__p = v28;
            v27->__r_.__value_.__l.__size_ = 0;
            v27->__r_.__value_.__r.__words[2] = 0;
            v27->__r_.__value_.__r.__words[0] = 0;
            v29 = SHIBYTE(v103);
            if ((SHIBYTE(v103) & 0x8000000000000000) != 0)
            {
              v29 = __p[1];
              v32 = v103 & 0x7FFFFFFFFFFFFFFFLL;
              v31 = (v103 & 0x7FFFFFFFFFFFFFFFLL) - 1;
              if (v31 == __p[1])
              {
                if (v32 == 0x7FFFFFFFFFFFFFF7)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                v30 = __p[0];
                if (v31 >= 0x3FFFFFFFFFFFFFF3)
                {
                  v36 = 0;
                  v35 = 0x7FFFFFFFFFFFFFF7;
LABEL_59:
                  v37 = operator new(v35);
                  v38 = v37;
                  if (v31)
                  {
                    memmove(v37, v30, v31);
                  }

                  v38[v31] = 45;
                  if (!v36)
                  {
                    operator delete(v30);
                  }

                  __p[1] = v32;
                  v103 = v35 | 0x8000000000000000;
                  __p[0] = v38;
                  v39 = &v38[v32];
LABEL_69:
                  *v39 = 0;
                  *&__dst[1] = v103;
                  __dst[0] = *__p;
                  __p[1] = 0;
                  v103 = 0;
                  __p[0] = 0;
                  v41 = SBYTE7(__dst[1]);
                  if ((SBYTE7(__dst[1]) & 0x8000000000000000) != 0)
                  {
                    v41 = *(&__dst[0] + 1);
                    v44 = (*&__dst[1] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                    if (v44 - *(&__dst[0] + 1) < 7)
                    {
                      v42 = *(&__dst[0] + 1) + 7;
                      if (0x7FFFFFFFFFFFFFF7 - (*&__dst[1] & 0x7FFFFFFFFFFFFFFFuLL) < *(&__dst[0] + 1) + 7 - v44)
                      {
                        std::string::__throw_length_error[abi:ne200100]();
                      }

                      v43 = *&__dst[0];
                      if (v44 >= 0x3FFFFFFFFFFFFFF3)
                      {
                        v47 = 0;
LABEL_84:
                        v48 = operator new(v8);
                        v49 = v48;
                        if (v41)
                        {
                          memmove(v48, v43, v41);
                        }

                        v50 = &v49[v41];
                        *v50 = 761881456;
                        v50[6] = 110;
                        *(v50 + 2) = 26978;
                        if (!v47)
                        {
                          operator delete(v43);
                        }

                        *(&__dst[0] + 1) = v42;
                        *&__dst[1] = v8 | 0x8000000000000000;
                        *&__dst[0] = v49;
                        v51 = &v49[v42];
LABEL_95:
                        *v51 = 0;
                        v108[0] = *(&__dst[0] + 1);
                        v55 = *&__dst[0];
                        *(v108 + 7) = *(__dst + 15);
                        v56 = BYTE7(__dst[1]);
                        memset(__dst, 0, 24);
                        if ((*(a1 + 199) & 0x80000000) == 0)
                        {
                          v57 = v108[0];
                          *(a1 + 176) = v55;
                          *(a1 + 184) = v57;
                          *(a1 + 191) = *(v108 + 7);
                          *(a1 + 199) = v56;
                          if (SHIBYTE(v103) < 0)
                          {
                            goto LABEL_97;
                          }

LABEL_104:
                          if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
                          {
LABEL_98:
                            operator delete(v101.__r_.__value_.__l.__data_);
                            if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
                            {
                              goto LABEL_99;
                            }

                            goto LABEL_106;
                          }

LABEL_105:
                          if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
                          {
LABEL_99:
                            operator delete(v100.__r_.__value_.__l.__data_);
                            v58 = buf[23];
                            if (buf[23] < 0)
                            {
                              goto LABEL_100;
                            }

                            goto LABEL_107;
                          }

LABEL_106:
                          v58 = buf[23];
                          if (buf[23] < 0)
                          {
LABEL_100:
                            if (*&buf[8] == 17)
                            {
                              v59 = *buf;
                              goto LABEL_109;
                            }

                            goto LABEL_120;
                          }

LABEL_107:
                          if (v58 == 17)
                          {
                            v59 = buf;
LABEL_109:
                            v62 = *v59;
                            v63 = *(v59 + 1);
                            v64 = v59[16];
                            v65 = v62 == *"kShutdownAllTrace" && v63 == *"nAllTrace";
                            if (v65 && v64 == str_76[16])
                            {
                              v67 = *(a1 + 40);
                              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                              {
                                LOWORD(__dst[0]) = 0;
                                _os_log_impl(&dword_23C1C4000, v67, OS_LOG_TYPE_DEFAULT, "#I Snapshot requested as part of shutdown", __dst, 2u);
                              }

                              *(a1 + 97) = 0;
                            }
                          }

LABEL_120:
                          v68 = dispatch_group_create();
                          v69 = operator new(0x38uLL);
                          v70 = v69;
                          v69[1] = 0;
                          v69[2] = 0;
                          *v69 = &unk_284EFB8B8;
                          v69[3] = v68;
                          v71 = v69 + 3;
                          v93 = a2;
                          if (v68)
                          {
                            dispatch_retain(v68);
                            v70[4] = 0;
                            v70[5] = 0;
                            v70[6] = 0;
                            dispatch_release(v68);
                            *&__dst[0] = v71;
                            *(&__dst[0] + 1) = v70;
                            v72 = *(a1 + 136);
                            v73 = (a1 + 144);
                            if (v72 != (a1 + 144))
                            {
                              goto LABEL_126;
                            }

LABEL_151:
                            v84 = *(a1 + 16);
                            if (!v84 || (v85 = *(a1 + 8), (v86 = std::__shared_weak_count::lock(v84)) == 0))
                            {
                              std::__throw_bad_weak_ptr[abi:ne200100]();
                            }

                            v87 = v86;
                            atomic_fetch_add_explicit(&v86->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                            if (!atomic_fetch_add(&v86->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                            {
                              (v86->__on_zero_shared)(v86);
                              std::__shared_weak_count::__release_weak(v87);
                            }

                            v88 = **&__dst[0];
                            v89 = *(a1 + 24);
                            block[0] = MEMORY[0x277D85DD0];
                            block[1] = 1174405120;
                            block[2] = ___ZN17KernelPCIABPTrace13snapshot_syncEN8dispatch13group_sessionEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke;
                            block[3] = &__block_descriptor_tmp_27_0;
                            v90 = *v93;
                            block[4] = a1;
                            object = v90;
                            if (v90)
                            {
                              dispatch_retain(v90);
                              dispatch_group_enter(object);
                            }

                            v96 = v85;
                            v97 = v87;
                            atomic_fetch_add_explicit(&v87->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                            dispatch_group_notify(v88, v89, block);
                            if (v97)
                            {
                              std::__shared_weak_count::__release_weak(v97);
                            }

                            if (object)
                            {
                              dispatch_group_leave(object);
                              if (object)
                              {
                                dispatch_release(object);
                              }
                            }

                            std::__shared_weak_count::__release_weak(v87);
                            v91 = *(&__dst[0] + 1);
                            if (*(&__dst[0] + 1) && !atomic_fetch_add((*(&__dst[0] + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
                            {
                              (v91->__on_zero_shared)(v91);
                              std::__shared_weak_count::__release_weak(v91);
                              if ((SHIBYTE(v105[2]) & 0x80000000) == 0)
                              {
LABEL_165:
                                if ((SHIBYTE(v106[2]) & 0x80000000) == 0)
                                {
                                  goto LABEL_166;
                                }

                                goto LABEL_171;
                              }
                            }

                            else if ((SHIBYTE(v105[2]) & 0x80000000) == 0)
                            {
                              goto LABEL_165;
                            }

                            operator delete(v105[0]);
                            if ((SHIBYTE(v106[2]) & 0x80000000) == 0)
                            {
LABEL_166:
                              if ((buf[23] & 0x80000000) == 0)
                              {
LABEL_167:
                                MEMORY[0x23EECD940](v107);
                                goto LABEL_168;
                              }

LABEL_172:
                              operator delete(*buf);
                              goto LABEL_167;
                            }

LABEL_171:
                            operator delete(v106[0]);
                            if ((buf[23] & 0x80000000) == 0)
                            {
                              goto LABEL_167;
                            }

                            goto LABEL_172;
                          }

                          v69[4] = 0;
                          v69[5] = 0;
                          v69[6] = 0;
                          *&__dst[0] = v69 + 3;
                          *(&__dst[0] + 1) = v69;
                          v72 = *(a1 + 136);
                          v73 = (a1 + 144);
                          if (v72 == (a1 + 144))
                          {
                            goto LABEL_151;
                          }

                          while (1)
                          {
LABEL_126:
                            v75 = v72[4];
                            v74 = v72[5];
                            __p[0] = v75;
                            __p[1] = v74;
                            if (v74)
                            {
                              atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
                            }

                            v76 = *&__dst[0];
                            if (*(v75 + 23) < 0)
                            {
                              std::string::__init_copy_ctor_external(&v98, *v75, v75[1]);
                            }

                            else
                            {
                              v77 = *v75;
                              v98.__r_.__value_.__r.__words[2] = v75[2];
                              *&v98.__r_.__value_.__l.__data_ = v77;
                            }

                            ctu::TrackedGroup::fork(v76, &v98, &group);
                            v78 = KernelPCIABPTrace::createBuffContext_sync(a1, 0, __p, &group);
                            if (group)
                            {
                              dispatch_group_leave(group);
                              if (group)
                              {
                                dispatch_release(group);
                              }
                            }

                            if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v98.__r_.__value_.__l.__data_);
                            }

                            v79 = (*(**(a1 + 160) + 80))(*(a1 + 160), *(v75 + 6), 1, flushLogsCompletionCB, v78);
                            v80 = *(a1 + 40);
                            v81 = os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT);
                            if (v79)
                            {
                              if (v81)
                              {
                                LOWORD(v101.__r_.__value_.__l.__data_) = 0;
                                _os_log_impl(&dword_23C1C4000, v80, OS_LOG_TYPE_DEFAULT, "#E Failed assigning null-buffer to trigger snapshot", &v101, 2u);
                              }

                              KernelPCIABPTrace::deleteBuffContext_sync(a1, v78);
                            }

                            else if (v81)
                            {
                              LOWORD(v101.__r_.__value_.__l.__data_) = 0;
                              _os_log_impl(&dword_23C1C4000, v80, OS_LOG_TYPE_DEFAULT, "#I Assign null-buffer to trigger snapshot", &v101, 2u);
                            }

                            if (v74 && !atomic_fetch_add(&v74->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                            {
                              (v74->__on_zero_shared)(v74);
                              std::__shared_weak_count::__release_weak(v74);
                              v82 = v72[1];
                              if (!v82)
                              {
                                do
                                {
LABEL_148:
                                  v83 = v72[2];
                                  v65 = *v83 == v72;
                                  v72 = v83;
                                }

                                while (!v65);
                                goto LABEL_125;
                              }
                            }

                            else
                            {
                              v82 = v72[1];
                              if (!v82)
                              {
                                goto LABEL_148;
                              }
                            }

                            do
                            {
                              v83 = v82;
                              v82 = *v82;
                            }

                            while (v82);
LABEL_125:
                            v72 = v83;
                            if (v83 == v73)
                            {
                              goto LABEL_151;
                            }
                          }
                        }

                        operator delete(*(a1 + 176));
                        v60 = SBYTE7(__dst[1]);
                        v61 = v108[0];
                        *(a1 + 176) = v55;
                        *(a1 + 184) = v61;
                        *(a1 + 191) = *(v108 + 7);
                        *(a1 + 199) = v56;
                        if (v60 < 0)
                        {
                          operator delete(*&__dst[0]);
                          if ((SHIBYTE(v103) & 0x80000000) == 0)
                          {
                            goto LABEL_104;
                          }
                        }

                        else if ((SHIBYTE(v103) & 0x80000000) == 0)
                        {
                          goto LABEL_104;
                        }

LABEL_97:
                        operator delete(__p[0]);
                        if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
                        {
                          goto LABEL_98;
                        }

                        goto LABEL_105;
                      }

LABEL_75:
                      v45 = 2 * v44;
                      if (v42 > 2 * v44)
                      {
                        v45 = v42;
                      }

                      if ((v45 | 7) == 0x17)
                      {
                        v46 = 25;
                      }

                      else
                      {
                        v46 = (v45 | 7) + 1;
                      }

                      if (v45 >= 0x17)
                      {
                        v8 = v46;
                      }

                      else
                      {
                        v8 = 23;
                      }

                      v47 = v44 == 22;
                      goto LABEL_84;
                    }

                    v52 = *&__dst[0];
                  }

                  else
                  {
                    if ((SBYTE7(__dst[1]) - 16) < 7)
                    {
                      v42 = SBYTE7(__dst[1]) + 7;
                      v43 = __dst;
                      v44 = 22;
                      goto LABEL_75;
                    }

                    v52 = __dst;
                  }

                  v53 = v52 + v41;
                  *v53 = 761881456;
                  v53[6] = 110;
                  *(v53 + 2) = 26978;
                  v54 = v41 + 7;
                  if (SBYTE7(__dst[1]) < 0)
                  {
                    *(&__dst[0] + 1) = v41 + 7;
                  }

                  else
                  {
                    BYTE7(__dst[1]) = v54 & 0x7F;
                  }

                  v51 = v52 + v54;
                  goto LABEL_95;
                }

LABEL_50:
                v33 = 2 * v31;
                if (v32 > 2 * v31)
                {
                  v33 = v32;
                }

                if ((v33 | 7) == 0x17)
                {
                  v34 = 25;
                }

                else
                {
                  v34 = (v33 | 7) + 1;
                }

                if (v33 >= 0x17)
                {
                  v35 = v34;
                }

                else
                {
                  v35 = 23;
                }

                v36 = v31 == 22;
                goto LABEL_59;
              }

              v30 = __p[0];
            }

            else
            {
              v30 = __p;
              if (SHIBYTE(v103) == 22)
              {
                v31 = 22;
                v32 = 23;
                goto LABEL_50;
              }
            }

            *(v29 + v30) = 45;
            v40 = v29 + 1;
            if (SHIBYTE(v103) < 0)
            {
              __p[1] = v40;
            }

            else
            {
              HIBYTE(v103) = v40 & 0x7F;
            }

            v39 = &v40[v30];
            goto LABEL_69;
          }
        }

        memmove(v19, v16, v18);
        goto LABEL_32;
      }
    }

    memmove(v14, v11, v13);
    goto LABEL_21;
  }

  if (*(a1 + 160))
  {
    goto LABEL_3;
  }

LABEL_168:
  v92 = *MEMORY[0x277D85DE8];
}

void sub_23C279EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, dispatch_group_t group, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a52 < 0)
  {
    operator delete(__p);
    if (a45 < 0)
    {
LABEL_5:
      operator delete(a40);
      if (a38 < 0)
      {
LABEL_8:
        operator delete(a33);
        if ((a32 & 0x80000000) == 0)
        {
LABEL_12:
          if (*(v52 - 185) < 0)
          {
            operator delete(*(v52 - 208));
          }

          if (*(v52 - 161) < 0)
          {
            operator delete(*(v52 - 184));
          }

          if (*(v52 - 105) < 0)
          {
            operator delete(*(v52 - 128));
          }

          MEMORY[0x23EECD940](v52 - 160);
          _Unwind_Resume(a1);
        }

LABEL_11:
        operator delete(a27);
        goto LABEL_12;
      }

LABEL_10:
      if ((a32 & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if (a45 < 0)
  {
    goto LABEL_5;
  }

  if (a38 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_10;
}

void ___ZN17KernelPCIABPTrace9stopTraceERKN8dispatch13group_sessionE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  KernelPCIABPTrace::deregisterWithKernel_sync(v1);
  v2 = v1[17];
  v3 = v1 + 18;
  if (v2 != v1 + 18)
  {
    do
    {
      v5 = v2[4];
      v4 = v2[5];
      v12 = v4;
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v6 = *(v5 + 32);
      if (v6 && ((*(*v6 + 16))(v6), (*(**(v5 + 32) + 64))(*(v5 + 32)), v7 = *(v5 + 40), *(v5 + 32) = 0, *(v5 + 40) = 0, v7) && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        v8 = v12;
        if (v12)
        {
LABEL_10:
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }
        }
      }

      else
      {
        v8 = v12;
        if (v12)
        {
          goto LABEL_10;
        }
      }

      v9 = v2[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v2[2];
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
    }

    while (v10 != v3);
  }

  std::__tree<std::shared_ptr<PipeContext>>::destroy(v1[18]);
  v1[18] = 0;
  v1[19] = 0;
  v1[17] = v3;
}

void KernelPCIABPTrace::deregisterWithKernel_sync(KernelPCIABPTrace *this)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315138;
    v9 = "deregisterWithKernel_sync";
    _os_log_debug_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEBUG, "#D %s", &v8, 0xCu);
    v3 = *(this + 20);
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = *(this + 20);
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEFAULT, "#I Stop Kernel Trace interface", &v8, 2u);
    v3 = *(this + 20);
  }

  (*(*v3 + 32))(v3);
  v5 = *(this + 5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_DEFAULT, "#I Destroy Kernel Trace object", &v8, 2u);
  }

  v6 = *(this + 21);
  *(this + 20) = 0;
  *(this + 21) = 0;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (*(this + 200) != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (*(this + 200) == 1)
  {
LABEL_10:
    dispatch_group_leave(*(this + 11));
    *(this + 200) = 0;
  }

LABEL_11:
  v7 = *MEMORY[0x277D85DE8];
}

void KernelPCIABPTrace::start(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCIABPTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(KernelPCIABPTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCIABPTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<KernelPCIABPTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

uint64_t KernelPCIABPTrace::registerWithKernel_sync(KernelPCIABPTrace *this)
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "registerWithKernel_sync";
    _os_log_debug_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEBUG, "#D %s", &buf, 0xCu);
    if (*(this + 200))
    {
      goto LABEL_5;
    }
  }

  else if (*(this + 200))
  {
    goto LABEL_5;
  }

  v3 = *(this + 11);
  if (v3)
  {
    dispatch_group_enter(v3);
    *(this + 200) = 1;
  }

LABEL_5:
  v4 = *(this + 21);
  *(this + 20) = 0;
  *(this + 21) = 0;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = (this + 144);
  std::__tree<std::shared_ptr<PipeContext>>::destroy(*(this + 18));
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 17) = this + 144;
  pci::transport::kernelTrace::create(&buf, v6);
  v7 = buf;
  if (buf)
  {
    v8 = operator new(0x20uLL);
    *v8 = &unk_284EFB818;
    v8[1] = 0;
    v8[2] = 0;
    v8[3] = v7;
    *&buf = 0;
    v9 = *(this + 21);
    *(this + 20) = v7;
    *(this + 21) = v8;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *&buf = 0;
    v9 = *(this + 21);
    *(this + 20) = 0;
    *(this + 21) = 0;
    if (v9)
    {
LABEL_10:
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }

      v10 = buf;
      *&buf = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      if (!*(this + 20))
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }
  }

  if (!v7)
  {
LABEL_15:
    v11 = *(this + 5);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v12)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_DEFAULT, "#E ABP Trace object creation failed", &buf, 2u);
      result = 0;
    }

    goto LABEL_86;
  }

LABEL_19:
  result = *(this + 10);
  if (!result)
  {
    goto LABEL_86;
  }

  result = std::__shared_weak_count::lock(result);
  *(&buf + 1) = result;
  if (!result)
  {
    goto LABEL_86;
  }

  v14 = result;
  v15 = *(this + 9);
  *&buf = v15;
  if (!v15)
  {
    result = 0;
    goto LABEL_84;
  }

  v16 = result;
  v17 = *(this + 20);
  v18 = *(v15 + 96);
  if (v18 && (v19 = std::__shared_weak_count::lock(v18)) != 0)
  {
    v20 = *(v15 + 88);
    if (v20)
    {
      v21 = *(v20 + 88);
      if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_51;
      }
    }

    else
    {
      v21 = 0;
      if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_51:
        v31 = v19;
        v32 = v21;
        (v19->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v31);
        v21 = v32;
      }
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = (*(*v17 + 16))(v17, v21);
  v23 = *(this + 5);
  result = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if ((v22 & 1) == 0)
  {
    if (result)
    {
      *v56 = 0;
      _os_log_impl(&dword_23C1C4000, v23, OS_LOG_TYPE_DEFAULT, "#E Kernel Trace start failed", v56, 2u);
      result = 0;
    }

    v14 = v16;
    goto LABEL_84;
  }

  if (result)
  {
    *v56 = 0;
    _os_log_impl(&dword_23C1C4000, v23, OS_LOG_TYPE_DEFAULT, "#I Started Kernel Trace interface", v56, 2u);
  }

  v55 = 0;
  v24 = (*(**(this + 20) + 112))(*(this + 20), &v55);
  v25 = v55;
  if (v55)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

  if ((v26 & 1) == 0)
  {
    v30 = *(this + 5);
    result = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      goto LABEL_83;
    }

    *v56 = 0;
    _os_log_impl(&dword_23C1C4000, v30, OS_LOG_TYPE_DEFAULT, "#E Failed to get buffer constraints from kernel", v56, 2u);
    goto LABEL_49;
  }

  *(this + 27) = v55;
  v27 = *(this + 5);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *v56 = 67109120;
    *&v56[4] = v25 >> 10;
    _os_log_impl(&dword_23C1C4000, v27, OS_LOG_TYPE_DEFAULT, "#I Set buffer size to '%d KB'", v56, 8u);
  }

  if (!(*(**(this + 20) + 136))(*(this + 20), &v55) || (v28 = v55, v28 < *(this + 26) * (*(**(this + 20) + 40))(*(this + 20))))
  {
    v29 = *(this + 5);
    result = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_83;
    }

    *v56 = 0;
    _os_log_error_impl(&dword_23C1C4000, v29, OS_LOG_TYPE_ERROR, "Buffer count exceeded kernel limits", v56, 2u);
LABEL_49:
    result = 0;
    goto LABEL_83;
  }

  for (i = 0; i < (*(**(this + 20) + 40))(*(this + 20)); i = (i + 1))
  {
    v54 = -1431655766;
    if (((*(**(this + 20) + 48))(*(this + 20), i, &v54, &KernelPCIABPTrace::registerWithKernel_sync(void)::name, 256) & 1) == 0)
    {
      continue;
    }

    byte_280C05C9F = 0;
    if (KernelPCIABPTrace::registerWithKernel_sync(void)::name == 0x76655F7374617473 && dword_280C05BA8 == 7630437)
    {
      continue;
    }

    v35 = v54;
    v36 = operator new(0x48uLL);
    v36->__shared_owners_ = 0;
    v36->__shared_weak_owners_ = 0;
    v36->__vftable = &unk_284EFC918;
    v37 = strlen(&KernelPCIABPTrace::registerWithKernel_sync(void)::name);
    if (v37 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v38 = v37;
    v39 = v36 + 1;
    if (v37 >= 0x17)
    {
      if ((v37 | 7) == 0x17)
      {
        v41 = 25;
      }

      else
      {
        v41 = (v37 | 7) + 1;
      }

      v40 = operator new(v41);
      v36[1].__shared_owners_ = v38;
      v36[1].__shared_weak_owners_ = v41 | 0x8000000000000000;
      v36[1].__vftable = v40;
LABEL_69:
      memcpy(v40, &KernelPCIABPTrace::registerWithKernel_sync(void)::name, v38);
      goto LABEL_70;
    }

    HIBYTE(v36[1].__shared_weak_owners_) = v37;
    v40 = &v36[1];
    if (v37)
    {
      goto LABEL_69;
    }

LABEL_70:
    *(&v40->~__shared_weak_count + v38) = 0;
    LODWORD(v36[2].__vftable) = v35;
    v36[2].__shared_owners_ = 0;
    v36[2].__shared_weak_owners_ = 0;
    *v56 = v36 + 1;
    v57 = v36;
    v42 = (this + 144);
    v43 = (this + 144);
    v44 = *v5;
    if (*v5)
    {
      while (1)
      {
        while (1)
        {
          v43 = v44;
          v45 = v44[4];
          if (v39 >= v45)
          {
            break;
          }

          v44 = *v43;
          v42 = v43;
          if (!*v43)
          {
            goto LABEL_77;
          }
        }

        if (v45 >= v39)
        {
          break;
        }

        v44 = v43[1];
        if (!v44)
        {
          v42 = v43 + 1;
          goto LABEL_77;
        }
      }
    }

    else
    {
LABEL_77:
      v46 = operator new(0x30uLL);
      v46[4] = v39;
      v46[5] = v36;
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      *v46 = 0;
      v46[1] = 0;
      v46[2] = v43;
      *v42 = v46;
      v47 = **(this + 17);
      if (v47)
      {
        *(this + 17) = v47;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 18), v46);
      ++*(this + 19);
    }

    BufferQueue_sync = KernelPCIABPTrace::allocateBufferQueue_sync(this, v56);
    if (!atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v49 = BufferQueue_sync;
      (v36->__on_zero_shared)(v36);
      std::__shared_weak_count::__release_weak(v36);
      BufferQueue_sync = v49;
    }

    if ((BufferQueue_sync & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  RunLoop = abm::BasebandTracingTask::getRunLoop(buf);
  CFRunLoopWakeUp(RunLoop);
  result = 1;
LABEL_83:
  v14 = *(&buf + 1);
  if (*(&buf + 1))
  {
LABEL_84:
    if (!atomic_fetch_add(v14 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      v51 = v14;
      v52 = result;
      (*(*v14 + 16))(v14);
      std::__shared_weak_count::__release_weak(v51);
      result = v52;
    }
  }

LABEL_86:
  v53 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C27AD9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  std::__shared_weak_count::~__shared_weak_count(v13);
  operator delete(v15);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void sub_23C27ADC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23C27ADD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_23C27ADF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23C27AE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23C27AE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23C27AE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void KernelPCIABPTrace::flushLogsCompletion(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a1[2];
  if (!v5 || (v9 = a1[1], (v10 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  v12 = operator new(0x20uLL);
  *v12 = a1;
  v12[1] = a2;
  v12[2] = a3;
  *(v12 + 6) = a4;
  v13 = a1[3];
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = operator new(0x18uLL);
  *v14 = v12;
  v14[1] = v9;
  v14[2] = v11;
  dispatch_async_f(v13, v14, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCIABPTrace::flushLogsCompletion(KernelPCIABPTrace::BuffContext *,unsigned long,int)::$_0>(KernelPCIABPTrace::flushLogsCompletion(KernelPCIABPTrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCIABPTrace::flushLogsCompletion(KernelPCIABPTrace::BuffContext *,unsigned long,int)::$_0,dispatch_queue_s *::default_delete<KernelPCIABPTrace::flushLogsCompletion(KernelPCIABPTrace::BuffContext *,unsigned long,int)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);

    std::__shared_weak_count::__release_weak(v11);
  }
}

void KernelPCIABPTrace::fileSnapshot_sync(KernelPCIABPTrace *this)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(this + 97) != 1)
  {
    v4 = *(this + 5);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    LOWORD(v29.st_dev) = 0;
    v5 = "#I Snapshotting for shutdown, the logs from scratch will not be moved";
    v6 = v4;
    v7 = 2;
LABEL_19:
    _os_log_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEFAULT, v5, &v29, v7);
    goto LABEL_39;
  }

  *__p = operator new(0x48uLL);
  *&__p[8] = xmmword_23C32CA50;
  strcpy(*__p, "/var/wireless/Library/Logs/AppleBasebandManager/pci-bin.scratch/");
  qmemcpy(v26, "pci-bin.scratch/BasebandManager/brary/Logs/Apple/var/wireless/Li", sizeof(v26));
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v29.st_blksize = v2;
  *v29.st_qspare = v2;
  v29.st_birthtimespec = v2;
  *&v29.st_size = v2;
  v29.st_mtimespec = v2;
  v29.st_ctimespec = v2;
  *&v29.st_uid = v2;
  v29.st_atimespec = v2;
  *&v29.st_dev = v2;
  if (stat(*__p, &v29))
  {
    LODWORD(v3) = 0;
  }

  else
  {
    if (__p[23] >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = *__p;
    }

    v9 = opendir(v8);
    v3 = v9;
    if (v9)
    {
      v10 = readdir(v9);
      closedir(v3);
      LODWORD(v3) = v10 != 0;
    }
  }

  if ((__p[23] & 0x80000000) == 0)
  {
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  operator delete(*__p);
  if (!v3)
  {
LABEL_17:
    v11 = *(this + 5);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    v29.st_dev = 136315138;
    *&v29.st_mode = "/var/wireless/Library/Logs/AppleBasebandManager/pci-bin.scratch/";
    v5 = "#E Couldn't find scratch path [%s]";
    v6 = v11;
    v7 = 12;
    goto LABEL_19;
  }

LABEL_13:
  support::fs::getBasePath(this + 176, &v29);
  support::fs::createDir(&v29, 0x1EDu, 1);
  if (SHIBYTE(v29.st_gid) < 0)
  {
    operator delete(*&v29.st_dev);
    memset(&v29, 170, 24);
    if ((*(this + 199) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    memset(&v29, 170, 24);
    if ((*(this + 199) & 0x80000000) == 0)
    {
LABEL_15:
      v27 = *(this + 176);
      goto LABEL_22;
    }
  }

  std::string::__init_copy_ctor_external(&v27, *(this + 22), *(this + 23));
LABEL_22:
  support::fs::createUniquePath(&v27, &v29);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  v12 = operator new(0x48uLL);
  *&v12->__pn_.__r_.__value_.__l.__data_ = v26[3];
  *&v12->__pn_.__r_.__value_.__r.__words[2] = v26[2];
  *&v12[1].__pn_.__r_.__value_.__r.__words[1] = v26[1];
  *&v12[2].__pn_.__r_.__value_.__l.__data_ = v26[0];
  v12[2].__pn_.__r_.__value_.__s.__data_[16] = 0;
  if ((v29.st_gid & 0x80000000) == 0)
  {
    v14 = &v29;
  }

  else
  {
    v14 = *&v29.st_dev;
  }

  v15 = v12;
  rename(v12, v14, v13);
  v17 = v16;
  operator delete(v15);
  v18 = *(this + 5);
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_37;
    }

    v20 = &v29;
    if ((v29.st_gid & 0x80000000) != 0)
    {
      v20 = *&v29.st_dev;
    }

    *__p = 136315138;
    *&__p[4] = v20;
    v21 = "#E Failed to move scratch logs to snapshot path [%s]";
  }

  else
  {
    if (!v19)
    {
      goto LABEL_37;
    }

    v22 = &v29;
    if ((v29.st_gid & 0x80000000) != 0)
    {
      v22 = *&v29.st_dev;
    }

    *__p = 136315138;
    *&__p[4] = v22;
    v21 = "#I Snapshot files are in path [%s]";
  }

  _os_log_impl(&dword_23C1C4000, v18, OS_LOG_TYPE_DEFAULT, v21, __p, 0xCu);
LABEL_37:
  if (SHIBYTE(v29.st_gid) < 0)
  {
    operator delete(*&v29.st_dev);
  }

LABEL_39:
  v23.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v23.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v29.st_blksize = v23;
  *v29.st_qspare = v23;
  v29.st_birthtimespec = v23;
  *&v29.st_size = v23;
  v29.st_mtimespec = v23;
  v29.st_ctimespec = v23;
  *&v29.st_uid = v23;
  v29.st_atimespec = v23;
  *&v29.st_dev = v23;
  if (byte_280C05DB0[23] >= 0)
  {
    v24 = byte_280C05DB0;
  }

  else
  {
    v24 = *byte_280C05DB0;
  }

  if (stat(v24, &v29))
  {
    KernelPCIABPTrace::dumpCodeRegistry_sync(this);
  }

  v25 = *MEMORY[0x277D85DE8];
}
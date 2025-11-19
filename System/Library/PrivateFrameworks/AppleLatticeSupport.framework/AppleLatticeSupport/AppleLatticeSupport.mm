uint64_t *std::unique_ptr<anonymous namespace::LatticeClient>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*v2)
    {
      IOObjectRelease(*v2);
      *v2 = 0;
    }

    JUMPOUT(0x29EDA8670);
  }

  return result;
}

void anonymous namespace::logError(_anonymous_namespace_ *this, const char *a2, ...)
{
  va_start(va, a2);
  v4 = *MEMORY[0x29EDCA608];
  vsnprintf(__str, 0x400uLL, this, va);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
  }

  v2 = *MEMORY[0x29EDCA608];
}

void anonymous namespace::LatticeClient::notificationCallback(_anonymous_namespace_::LatticeClient *this, void *a2, int a3, void *a4)
{
  if (!a2)
  {
  }
}

void anonymous namespace::LatticeClient::onNotification(_anonymous_namespace_::LatticeClient *this)
{
  v32 = *MEMORY[0x29EDCA608];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  v31 = 0;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  inputStruct = *(this + 40);
  outputStructCnt = 448;
  v2 = IOConnectCallStructMethod(*this, 2u, &inputStruct, 0x10uLL, outputStruct, &outputStructCnt);
  if (v2)
  {
LABEL_8:
    v5 = *(this + 4);
    std::string::basic_string[abi:ne200100]<0>(&inputStruct, "Error returned by kernel");
    (*(v5 + 16))(v5, &inputStruct);
    goto LABEL_9;
  }

  while (1)
  {
    if (!outputStruct[0])
    {
      (*(*(this + 3) + 16))();
      v4 = v12;
      *(this + 40) = v12;
      goto LABEL_7;
    }

    if (outputStruct[0] == 1)
    {
      goto LABEL_11;
    }

    if (outputStruct[0] == 2)
    {
      break;
    }

    v4 = *(this + 40);
LABEL_7:
    inputStruct = v4;
    outputStructCnt = 448;
    v2 = IOConnectCallStructMethod(*this, 2u, &inputStruct, 0x10uLL, outputStruct, &outputStructCnt);
    if (v2)
    {
      goto LABEL_8;
    }
  }

  v7 = *(this + 4);
  std::string::basic_string[abi:ne200100]<0>(&inputStruct, "Fell behind the delete compaction bound. Need to restart");
  (*(v7 + 16))(v7, &inputStruct);
LABEL_9:
  if (v9 < 0)
  {
    operator delete(inputStruct);
  }

LABEL_11:
  v6 = *MEMORY[0x29EDCA608];
}

void sub_29EB358E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

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

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29F380090, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void anonymous namespace::logError(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = 136446210;
  v3 = a1;
  _os_log_error_impl(&dword_29EB34000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "%{public}s", &v2, 0xCu);
  v1 = *MEMORY[0x29EDCA608];
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
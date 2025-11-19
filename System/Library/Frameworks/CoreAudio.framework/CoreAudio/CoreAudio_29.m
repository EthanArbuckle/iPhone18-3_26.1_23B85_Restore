void HALS_IOA2Device::_ReleaseIOBuffers(HALS_IOA2Device *this)
{
  v1 = 0;
  v2 = this + 1456;
  v3 = 1;
  v4 = MEMORY[0x1E69E9A60];
  do
  {
    v5 = v3;
    v6 = &v2[24 * v1];
    v7 = *v6;
    if (*(v6 + 1) != *v6)
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = *(v7 + 8 * v8);
        v11 = HALS_ObjectMap::CopyObjectByObjectID(*(v10 + 48));
        v13 = v11;
        if (v11)
        {
          v14 = *(v11 + 1988);
          if (*(v10 + 136))
          {
            v15 = v14 == 0;
          }

          else
          {
            v15 = 1;
          }

          if (!v15)
          {
            v16 = *(v10 + 72);
            v17 = *v4;
            MEMORY[0x1E12C0830]();
          }
        }

        *(v10 + 136) = 0;
        *(v10 + 144) = 0;
        HALS_ObjectMap::ReleaseObject(v13, v12);
        v8 = v9;
        v7 = *v6;
        ++v9;
      }

      while (v8 < (*(v6 + 1) - *v6) >> 3);
    }

    v3 = 0;
    v1 = 1;
  }

  while ((v5 & 1) != 0);
}

void HALS_IOA2Device::_UpdateStreams(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v49 = *MEMORY[0x1E69E9840];
  for (i = 1; ; i = 0)
  {
    v5 = i;
    *(a2 + v3) = 0;
    v7 = a1 + 1456 + 24 * v3;
    v6 = *v7;
    v8 = *(v7 + 8) - *v7;
    v9 = v8 >> 3;
    if ((v8 >> 3) >= 1)
    {
      v10 = (v8 >> 3) & 0x7FFFFFFF;
      do
      {
        if (!v9)
        {
          std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
        }

        v11 = *v6++;
        v2 = v11;
        *(v11 + 13) = 0;
        --v9;
        --v10;
      }

      while (v10);
    }

    v3 = 1;
    if ((v5 & 1) == 0)
    {
      v34 = v2;
      v12 = &v31;
      v13 = @"output streams";
      memset(v38, 0, sizeof(v38));
      v32 = 0u;
      v33 = 0u;
      v14 = 1;
      v31 = 0u;
      v29 = a1;
      while (1)
      {
        v15 = v14;
        theArray = 0;
        HALB_UCObject::CopyProperty_CFArray((a1 + 1976), v13, &theArray);
        *buf = theArray;
        LOWORD(v40) = 1;
        if (theArray)
        {
          Count = CFArrayGetCount(theArray);
          if (Count >= 1)
          {
            for (j = 0; j != Count; ++j)
            {
              theArray = 0;
              v37 = 1;
              CACFArray::GetCACFDictionary(buf, j, &theArray);
              if (theArray)
              {
                v35 = 0;
                if (CACFDictionary::GetUInt32(theArray, @"stream ID", &v35))
                {
                  v19 = *(v12 + 1);
                  v18 = *(v12 + 2);
                  if (v19 >= v18)
                  {
                    v21 = *v12;
                    v22 = v19 - *v12;
                    v23 = (v22 >> 2) + 1;
                    if (v23 >> 62)
                    {
                      std::vector<void *>::__throw_length_error[abi:ne200100]();
                    }

                    v24 = v18 - v21;
                    if (v24 >> 1 > v23)
                    {
                      v23 = v24 >> 1;
                    }

                    if (v24 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v25 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v25 = v23;
                    }

                    if (v25)
                    {
                      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v25);
                    }

                    v26 = (4 * (v22 >> 2));
                    *v26 = v35;
                    v20 = v26 + 1;
                    memcpy(0, v21, v22);
                    v27 = *v12;
                    *v12 = 0;
                    *(v12 + 1) = v20;
                    *(v12 + 2) = 0;
                    if (v27)
                    {
                      operator delete(v27);
                    }
                  }

                  else
                  {
                    *v19 = v35;
                    v20 = v19 + 1;
                  }

                  *(v12 + 1) = v20;
                }
              }

              CACFDictionary::~CACFDictionary(&theArray);
            }
          }
        }

        CACFArray::~CACFArray(buf);
        v14 = 0;
        v13 = @"input streams";
        v12 = &v32 + 8;
        a1 = v29;
        if ((v15 & 1) == 0)
        {
          v28 = *(v29 + 464);
          HALS_ReferenceStreamStateManager::ReferenceStreamIsEnabledForAnyClientOrContext(*(v29 + 448));
          *buf = 0;
          *&buf[4] = (*(&v31 + 1) - v31) >> 2;
          v40 = v31;
          v41 = v38;
          v42 = a2;
          v43 = 1;
          v44 = (v33 - *(&v32 + 1)) >> 2;
          v45 = *(&v32 + 1);
          v46 = 1;
          v47 = &v38[1] + 8;
          v48 = a2 + 1;
          operator new();
        }
      }
    }
  }
}

void sub_1DE41CD68(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, char a31)
{
  operator delete(__p);
  v31 = 0;
  while (1)
  {
    v32 = *(&a24 + v31);
    if (v32)
    {
      *(&a25 + v31) = v32;
      operator delete(v32);
    }

    v31 -= 24;
    if (v31 == -48)
    {
      v33 = 0;
      while (1)
      {
        v34 = *(&a31 + v33 + 24);
        if (v34)
        {
          *(&a31 + v33 + 32) = v34;
          operator delete(v34);
        }

        v33 -= 24;
        if (v33 == -48)
        {
          JUMPOUT(0x1DE41CE18);
        }
      }
    }
  }
}

void HALS_IOA2Device::_UpdateControls(HALS_IOA2Device *this, BOOL *a2)
{
  v77 = *MEMORY[0x1E69E9840];
  v71 = 0;
  *a2 = 0;
  v4 = *(this + 188);
  v5 = *(this + 189) - v4;
  v6 = v5 >> 3;
  if ((v5 >> 3) >= 1)
  {
    v7 = (v5 >> 3) & 0x7FFFFFFF;
    do
    {
      if (!v6)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v8 = *v4;
      v9 = *(*v4 + 15);
      if (v9 <= 1)
      {
        *(v8 + 13) = v9;
      }

      ++v4;
      --v6;
      --v7;
    }

    while (v7);
    v71 = v8;
  }

  v68 = 0;
  v69 = 0;
  v70 = 0;
  *buf = 0;
  HALB_UCObject::CopyProperty_CFArray(this + 247, @"controls", buf);
  v66 = *buf;
  v67 = 1;
  if (*buf)
  {
    Count = CFArrayGetCount(*buf);
    if (Count >= 1)
    {
      v12 = 0;
      *&v11 = 136315394;
      v62 = v11;
      do
      {
        v64 = 0;
        v65 = 1;
        CACFArray::GetCACFDictionary(&v66, v12, &v64);
        if (v64)
        {
          v63 = 0;
          if (CACFDictionary::GetUInt32(v64, @"control ID", &v63))
          {
            v13 = 0;
            v14 = *(this + 188);
            do
            {
              if ((*(this + 189) - v14) >> 3 <= v13)
              {
                v74 = 0;
                v71 = 0;
                v72 = v64;
                v73 = 0;
                if (!v64 || CACFDictionary::GetUInt32(v64, @"class", &v74))
                {
                  CACFDictionary::~CACFDictionary(&v72);
                  v74 = 0;
                  v72 = v64;
                  v73 = 0;
                  if (!v64 || CACFDictionary::GetUInt32(v64, @"base class", &v74))
                  {
                    CACFDictionary::~CACFDictionary(&v72);
                    v74 = 0;
                    v72 = v64;
                    v73 = 0;
                    if (!v64 || CACFDictionary::GetUInt32(v64, @"scope", &v74))
                    {
                      CACFDictionary::~CACFDictionary(&v72);
                      v74 = 0;
                      v72 = v64;
                      v73 = 0;
                      if (!v64 || CACFDictionary::GetUInt32(v64, @"element", &v74))
                      {
                        CACFDictionary::~CACFDictionary(&v72);
                        operator new();
                      }

                      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                      {
                        *buf = v62;
                        *&buf[4] = "HALS_IOA2UCDevice.cpp";
                        LOWORD(v76[0]) = 1024;
                        *(v76 + 2) = 873;
                        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::GetControlInfoByIndex_Element: there is no control scope", buf, 0x12u);
                      }

                      exception = __cxa_allocate_exception(0x10uLL);
                      *exception = off_1F5991DD8;
                      exception[2] = 1852797029;
                    }

                    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                    {
                      *buf = v62;
                      *&buf[4] = "HALS_IOA2UCDevice.cpp";
                      LOWORD(v76[0]) = 1024;
                      *(v76 + 2) = 861;
                      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::GetControlInfoByIndex_Class: there is no control scope", buf, 0x12u);
                    }

                    v19 = __cxa_allocate_exception(0x10uLL);
                    *v19 = off_1F5991DD8;
                    v19[2] = 1852797029;
                  }

                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    *buf = v62;
                    *&buf[4] = "HALS_IOA2UCDevice.cpp";
                    LOWORD(v76[0]) = 1024;
                    *(v76 + 2) = 837;
                    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::GetControlInfoByIndex_BaseClass: there is no control base class", buf, 0x12u);
                  }

                  v18 = __cxa_allocate_exception(0x10uLL);
                  *v18 = off_1F5991DD8;
                  v18[2] = 1852797029;
                }

                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *buf = v62;
                  *&buf[4] = "HALS_IOA2UCDevice.cpp";
                  LOWORD(v76[0]) = 1024;
                  *(v76 + 2) = 849;
                  _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::GetControlInfoByIndex_Class: there is no control class", buf, 0x12u);
                }

                v17 = __cxa_allocate_exception(0x10uLL);
                *v17 = off_1F5991DD8;
                v17[2] = 1852797029;
              }

              v15 = *(v14 + 8 * v13++);
              if (v15)
              {
                v16 = *(v15 + 72) == v63;
              }

              else
              {
                v16 = 0;
              }
            }

            while (!v16);
            v71 = v15;
            *(v15 + 13) = 1;
          }
        }

        CACFDictionary::~CACFDictionary(&v64);
        ++v12;
      }

      while (v12 != Count);
    }
  }

  if ((*(this + 58) & 0x1FFFFFFFFLL) != 0x100000001 && *(this + 183) != *(this + 182))
  {
    *buf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
    *&buf[8] = 257;
    operator new();
  }

  v21 = *(this + 189) - *(this + 188);
  if ((v21 >> 3) >= 1)
  {
    v22 = (v21 >> 3) & 0x7FFFFFFF;
    v23 = v22 + 1;
    v24 = 8 * v22 - 8;
    v25 = -8 * v22;
    do
    {
      v26 = *(this + 188);
      if (v23 - 2 >= (*(this + 189) - v26) >> 3)
      {
        goto LABEL_98;
      }

      v27 = *(v26 + v24);
      if (*(v27 + 13))
      {
        HALS_IOA2Control::SynchronizeWithRegistry(v27);
      }

      else
      {
        *a2 = 1;
        (*(*v27 + 8))(v27);
        HALS_ObjectMap::ObjectIsDead(v27, v28);
        v29 = *(this + 188);
        v30 = (v29 + v24);
        v31 = (v29 + v24 + 8);
        v32 = *(this + 189);
        v33 = &v32[-v29];
        v34 = &v33[v25];
        if (v31 != v32)
        {
          memmove(v30, v31, &v33[v25]);
        }

        *(this + 189) = &v34[v30];
      }

      --v23;
      v24 -= 8;
      v25 += 8;
    }

    while (v23 > 1);
    v71 = v27;
  }

  v35 = v68;
  v36 = v69 - v68;
  if (v69 != v68)
  {
    v37 = v36 >> 3;
    if ((v36 >> 3) >= 1)
    {
      v38 = (v36 >> 3);
      if (v38 <= 1)
      {
        v39 = 1;
      }

      else
      {
        v39 = v38;
      }

      while (1)
      {
        *a2 = 1;
        if (!v37)
        {
          break;
        }

        v71 = *v35;
        (**v71)(v71);
        std::vector<HALS_IOA2Stream *>::push_back[abi:ne200100](this + 1504, &v71);
        --v37;
        ++v35;
        if (!--v39)
        {
          goto LABEL_64;
        }
      }

LABEL_98:
      std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
    }
  }

LABEL_64:
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 192));
  *(this + 191) = this + 1536;
  *(this + 96) = 0u;
  v40 = (this + 1560);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 195));
  *(this + 194) = this + 1560;
  *(this + 1560) = 0u;
  v41 = *(this + 188);
  v42 = *(this + 189);
  if (v41 == v42)
  {
    goto LABEL_89;
  }

  v61 = *(this + 189);
  do
  {
    v43 = *(*v41 + 48);
    v44 = *(*v41 + 52);
    v45 = *(*v41 + 16);
    *buf = *(*v41 + 20);
    *&buf[4] = v43;
    *&buf[8] = v44;
    v76[0] = v45;
    v46 = std::__tree<std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>,std::__map_value_compare<std::tuple<unsigned int,unsigned int,unsigned int>,std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>,std::less<std::tuple<unsigned int,unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>>>::__emplace_unique_key_args<std::tuple<unsigned int,unsigned int,unsigned int>,std::pair<std::tuple<unsigned int,unsigned int,unsigned int> const,unsigned int>>(this + 1528, buf);
    if (!*(*v41 + 168))
    {
      goto LABEL_87;
    }

    *&v62 = &v60;
    MEMORY[0x1EEE9AC00](v46);
    v49 = &v60 - ((v48 + 15) & 0x7FFFFFFF0);
    v50 = *(*v41 + 168);
    if (!v50)
    {
      goto LABEL_86;
    }

    if (v47 >= v50)
    {
      v51 = v50;
    }

    else
    {
      v51 = v47;
    }

    memcpy(v49, (*v41 + 172), 4 * v51);
    v52 = 0;
    do
    {
      v53 = *(*v41 + 16);
      *buf = *&v49[4 * v52];
      *&buf[4] = v43;
      *&buf[8] = v44;
      v76[0] = v53;
      if (!*v40)
      {
        goto LABEL_84;
      }

      v54 = *(this + 200);
      if (!v54)
      {
LABEL_97:
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v55 = (this + 1560);
      v56 = *v40;
      while ((*(*v54 + 48))(v54, buf, v56 + 28))
      {
        v57 = *v56;
        v55 = v56;
        if (!*v56)
        {
          goto LABEL_84;
        }

LABEL_81:
        v54 = *(this + 200);
        v56 = v57;
        if (!v54)
        {
          goto LABEL_97;
        }
      }

      v58 = *(this + 200);
      if (!v58)
      {
        goto LABEL_97;
      }

      if ((*(*v58 + 48))(v58, v56 + 28, buf))
      {
        v55 = v56 + 1;
        v57 = v56[1];
        if (!v57)
        {
          goto LABEL_84;
        }

        goto LABEL_81;
      }

      if (!*v55)
      {
LABEL_84:
        operator new();
      }

      ++v52;
    }

    while (v52 != v51);
LABEL_86:
    v42 = v61;
LABEL_87:
    v41 += 8;
  }

  while (v41 != v42);
  v41 = *(this + 188);
  v42 = *(this + 189);
LABEL_89:
  if (v41 != v42)
  {
    while (*(*v41 + 20) != 1702259059)
    {
      v41 += 8;
      if (v41 == v42)
      {
        goto LABEL_94;
      }
    }

    *(this + 116) = *(*v41 + 60);
    *(this + 468) = 1;
  }

LABEL_94:
  CACFArray::~CACFArray(&v66);
  if (v68)
  {
    operator delete(v68);
  }

  v59 = *MEMORY[0x1E69E9840];
}

void sub_1DE41D940(_Unwind_Exception *a1)
{
  MEMORY[0x1E12C1730](v1, 0x10F1C404AE012DFLL);
  CACFDictionary::~CACFDictionary((v2 - 128));
  CACFArray::~CACFArray((v2 - 200));
  v4 = *(v2 - 184);
  if (v4)
  {
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void HALS_IOA2Device::_MapIOBuffers(HALS_IOA2Device *this)
{
  v1 = 0;
  v23 = *MEMORY[0x1E69E9840];
  v2 = this + 1456;
  v3 = 1;
  do
  {
    v4 = v3;
    v5 = &v2[24 * v1];
    v6 = *v5;
    if (*(v5 + 1) != *v5)
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = *(v6 + 8 * v7);
        v10 = HALS_ObjectMap::CopyObjectByObjectID(*(v9 + 48));
        v12 = v10;
        if (v10)
        {
          v13 = *(v9 + 72);
          v14 = HALS_IOA2UCDevice::CopyStreamDictionaryByID((v10 + 1976), v13);
          v17 = v14;
          v18 = 1;
          if (!v14)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v20 = "HALS_IOA2UCDevice.cpp";
              v21 = 1024;
              v22 = 709;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::MapIOBufferForStream: no stream for the given ID", buf, 0x12u);
            }

            exception = __cxa_allocate_exception(0x10uLL);
            *exception = off_1F5991DD8;
            exception[2] = 1852797029;
          }

          *buf = 1;
          CACFDictionary::GetUInt32(v14, @"buffer mapping options", buf);
          *(v9 + 136) = HALB_UCObject::MapMemory((v12 + 1976), v13 + 0x10000000, *buf, (v9 + 144));
          CACFDictionary::~CACFDictionary(&v17);
        }

        HALS_ObjectMap::ReleaseObject(v12, v11);
        v7 = v8;
        v6 = *v5;
        ++v8;
      }

      while (v7 < (*(v5 + 1) - *v5) >> 3);
    }

    v3 = 0;
    v1 = 1;
  }

  while ((v4 & 1) != 0);
  v15 = *MEMORY[0x1E69E9840];
}

void sub_1DE41DBB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CACFDictionary::~CACFDictionary(&a9);
  HALS_ObjectMap::ReleaseObject(v9, v11);
  _Unwind_Resume(a1);
}

void HALS_IOA2Device::_MapBlockControlBuffers(HALS_IOA2Device *this, HALS_IOA2Device *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (this != a2)
  {
    for (i = this; i != a2; i = (i + 8))
    {
      v4 = *i;
      v5 = *(*i + 20);
      v6 = *(*i + 24);
      if (v5 == v6)
      {
        if (v5 != 1936028002 && v5 != 1651273579)
        {
          continue;
        }
      }

      else if (v5 != 1651273579 && v5 != 1936028002 && v6 != 1651273579 && v6 != 1936028002)
      {
        continue;
      }

      v11 = HALS_ObjectMap::CopyObjectByObjectID(*(v4 + 56));
      v13 = v11;
      v14 = *(v4 + 20);
      v15 = *(v4 + 24);
      if (v14 == v15)
      {
        if (v14 == 1936028002 || v14 == 1651273579)
        {
          goto LABEL_37;
        }
      }

      else if (v14 == 1651273579 || v14 == 1936028002 || v15 == 1651273579 || v15 == 1936028002)
      {
LABEL_37:
        if (*(v4 + 104))
        {
          v20 = 1;
        }

        else
        {
          v20 = v11 == 0;
        }

        if (!v20)
        {
          v21 = *(v4 + 80);
          v22 = *(v4 + 72);
          v25 = v21;
          v26 = 0;
          if (!v21)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v28 = "HALS_IOA2UCDevice.cpp";
              v29 = 1024;
              v30 = 1131;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::MapBlockControlBuffer: no control for the given ID", buf, 0x12u);
            }

            exception = __cxa_allocate_exception(0x10uLL);
            *exception = off_1F5991DD8;
            exception[2] = 1852797029;
          }

          *buf = 1;
          CACFDictionary::GetUInt32(v21, @"mapping options", buf);
          *(v4 + 104) = HALB_UCObject::MapMemory((v13 + 1976), v22 & 0xFFFFFFF | 0x30000000u, *buf, (v4 + 112));
          CACFDictionary::~CACFDictionary(&v25);
        }
      }

      HALS_ObjectMap::ReleaseObject(v13, v12);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

void sub_1DE41DE70(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE41DE7CLL);
  }

  __clang_call_terminate(a1);
}

const __CFArray *HALS_IOA2Device::_MapDataExchangeBlocks(HALS_IOA2Device *this)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(this + 260))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOA2Device.cpp";
      v30 = 1024;
      v31 = 2441;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::_MapDataExchangeBlocks: the size mDataExchangeBlockInfoMap is non-zero", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v2 = 0;
  v3 = (this + 2048);
  v4 = (this + 2072);
  while (1)
  {
    result = *v3;
    if (*v3)
    {
      result = CFArrayGetCount(result);
    }

    if (v2 >= result)
    {
      break;
    }

    v23 = 0;
    if (CACFArray::GetDictionary(v3, v2, &v23))
    {
      v21 = v23;
      v22 = 0;
      v20 = 0;
      if (CACFDictionary::GetUInt32(v23, @"block ID", &v20))
      {
        v6 = v20;
        if (v20 >> 28)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOA2Device.cpp";
            v30 = 1024;
            v31 = 2454;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::_MapDataExchangeBlocks: driver returned data exchange block ID that is larger than can fit in the lower 28 bits of a 32 bit integer", buf, 0x12u);
          }

          v16 = __cxa_allocate_exception(0x10uLL);
          *v16 = off_1F5991DD8;
          v16[2] = 1852797029;
        }

        v19 = 0;
        theArray = 0;
        HALB_UCObject::CopyProperty_CFArray(this + 247, @"data exchange blocks", &theArray);
        *buf = theArray;
        *&buf[8] = 1;
        if (theArray && (Count = CFArrayGetCount(theArray)) != 0)
        {
          for (i = 0; i < Count; ++i)
          {
            theArray = 0;
            v28 = 0;
            CACFArray::GetCACFDictionary(buf, i, &theArray);
            if (theArray && ((v26 = 0, UInt32 = CACFDictionary::GetUInt32(theArray, @"block ID", &v26), v26 == v6) ? (v10 = UInt32) : (v10 = 0), v10 == 1 && theArray))
            {
              CFRetain(theArray);
              v11 = theArray;
            }

            else
            {
              v11 = 0;
            }

            CACFDictionary::~CACFDictionary(&theArray);
            if (v11)
            {
              break;
            }
          }
        }

        else
        {
          v11 = 0;
        }

        CACFArray::~CACFArray(buf);
        v24 = v11;
        v25 = 1;
        if (!v11)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOA2UCDevice.cpp";
            v30 = 1024;
            v31 = 1225;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::MapDataExchangeBlockBuffer: no data exchange block for the given ID", buf, 0x12u);
          }

          v17 = __cxa_allocate_exception(0x10uLL);
          *v17 = off_1F5991DD8;
          v17[2] = 1852797029;
        }

        *buf = 1;
        CACFDictionary::GetUInt32(v11, @"buffer mapping options", buf);
        HALB_UCObject::MapMemory((this + 1976), v6 | 0x20000000, *buf, &v19);
        CACFDictionary::~CACFDictionary(&v24);
        v12 = *v4;
        if (!*v4)
        {
LABEL_31:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v13 = v12;
            v14 = *(v12 + 32);
            if (v20 >= v14)
            {
              break;
            }

            v12 = *v13;
            if (!*v13)
            {
              goto LABEL_31;
            }
          }

          if (v14 >= v20)
          {
            break;
          }

          v12 = v13[1];
          if (!v12)
          {
            goto LABEL_31;
          }
        }
      }

      CACFDictionary::~CACFDictionary(&v21);
    }

    ++v2;
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE41E360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  CACFArray::~CACFArray(va1);
  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

void std::vector<HALS_IOA2Stream *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t _ZNKSt3__110__function6__funcIZZN15HALS_IOA2Device18HandleConfigChangeERK20IOAudio2NotificationjEUb_E4__11NS_9allocatorIS6_EEFP11HALS_ClientRK26AudioObjectPropertyAddressEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZN15HALS_IOA2Device18HandleConfigChangeERK20IOAudio2NotificationjEUb_E4$_11"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZZN15HALS_IOA2Device18HandleConfigChangeERK20IOAudio2NotificationjEUb_E4__11NS_9allocatorIS6_EEFP11HALS_ClientRK26AudioObjectPropertyAddressEEclESD_(uint64_t a1, _DWORD *a2)
{
  if (*a2 != 1752122448 || *(a1 + 8) == 0)
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

void _ZNSt3__110__function6__funcIZZN15HALS_IOA2Device18HandleConfigChangeERK20IOAudio2NotificationjEUb_E4__11NS_9allocatorIS6_EEFP11HALS_ClientRK26AudioObjectPropertyAddressEE18destroy_deallocateEv(HALS_ObjectMap **a1, HALS_Object *a2)
{
  HALS_ObjectMap::ReleaseObject(a1[1], a2);

  operator delete(a1);
}

void _ZNKSt3__110__function6__funcIZZN15HALS_IOA2Device18HandleConfigChangeERK20IOAudio2NotificationjEUb_E4__11NS_9allocatorIS6_EEFP11HALS_ClientRK26AudioObjectPropertyAddressEE7__cloneEPNS0_6__baseISE_EE(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F596E628;
  *(a2 + 1) = v2;
  HALS_ObjectMap::RetainObject(v2, a2);
}

void _ZNSt3__110__function6__funcIZZN15HALS_IOA2Device18HandleConfigChangeERK20IOAudio2NotificationjEUb_E4__11NS_9allocatorIS6_EEFP11HALS_ClientRK26AudioObjectPropertyAddressEED0Ev(uint64_t a1, HALS_Object *a2)
{
  *a1 = &unk_1F596E628;
  HALS_ObjectMap::ReleaseObject(*(a1 + 8), a2);

  JUMPOUT(0x1E12C1730);
}

uint64_t _ZNSt3__110__function6__funcIZZN15HALS_IOA2Device18HandleConfigChangeERK20IOAudio2NotificationjEUb_E4__11NS_9allocatorIS6_EEFP11HALS_ClientRK26AudioObjectPropertyAddressEED1Ev(uint64_t a1, HALS_Object *a2)
{
  *a1 = &unk_1F596E628;
  HALS_ObjectMap::ReleaseObject(*(a1 + 8), a2);
  return a1;
}

void std::vector<CAPropertyAddressList>::__init_with_size[abi:ne200100]<CAPropertyAddressList*,CAPropertyAddressList*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 59))
    {
      std::allocator<CAPropertyAddressList>::allocate_at_least[abi:ne200100](a4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }
}

void HALS_IOA2Device::GetDefaultChannelLayoutPropertyData(HALS_IOA2Device *this, uint64_t a2, const AudioObjectPropertyAddress *a3, AudioChannelLayout *a4, unsigned int *a5, _DWORD *a6, unsigned int a7, const void *a8, HALS_Client *a9, unsigned int a10, unsigned int *a11, unsigned int a12, BOOL a13)
{
  *a6 = 0;
  a6[2] = a12;
  if (a12)
  {
    v15 = a6 + 4;
    v16 = a12;
    do
    {
      *(v15 - 1) = -1;
      *v15 = 0;
      v15[1] = 0;
      v15 = (v15 + 20);
      --v16;
    }

    while (v16);
  }

  *a5 = a10;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3802000000;
  v27 = __Block_byref_object_copy__129;
  v28 = __Block_byref_object_dispose__130;
  v29[0] = &unk_1F59910D0;
  v29[1] = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 0x40000000;
  v22[2] = ___ZNK15HALS_IOA2Device35GetDefaultChannelLayoutPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_ClientjS3_jb_block_invoke;
  v22[3] = &unk_1E86749E0;
  v22[4] = &v24;
  v22[5] = this;
  v23 = a13;
  v17 = (*(*this + 64))(this, a2, a3);
  HALB_CommandGate::ExecuteCommand(v17, v22);
  v18 = v25[6];
  if (v18)
  {
    v19 = 0;
    v20 = a6 + 3;
    while (OS::CF::ArrayBase<__CFArray const*>::GetSize(v18) > v19 && v19 < a6[2])
    {
      OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Number>(v21, (v25 + 5), v19);
      *v20 = OS::CF::Number::GetValue<unsigned int>(v21[1], 0);
      v20 += 5;
      OS::CF::UntypedObject::~UntypedObject(v21);
      ++v19;
      v18 = v25[6];
    }
  }

  HALS_Device::ThrowIfInvalidACL(a6, a4, a12);
  _Block_object_dispose(&v24, 8);
  OS::CF::UntypedObject::~UntypedObject(v29);
}

void sub_1DE41E9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  OS::CF::UntypedObject::~UntypedObject(v10);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__129(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 40) = &unk_1F59910D0;
  return result;
}

uint64_t ___ZNK15HALS_IOA2Device35GetDefaultChannelLayoutPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_ClientjS3_jb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 48))
  {
    v3 = @"input channel layout";
  }

  else
  {
    v3 = @"output channel layout";
  }

  v7 = 0;
  HALB_UCObject::CopyProperty_CFArray((v2 + 1976), v3, &v7);
  v4 = v7;
  v5 = *(*(a1 + 32) + 8) + 40;

  return OS::CF::UntypedObject::operator=(v5, v4);
}

void sub_1DE41EAAC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_IOA2Device::_ClientDescriptionChanged(uint64_t a1)
{
  input[2] = *MEMORY[0x1E69E9840];
  buf[0] = 0;
  HALB_UCObject::CopyProperty_BOOL((a1 + 1976), @"supports client description", buf);
  if (buf[0] != 1)
  {
    goto LABEL_18;
  }

  v2 = (*(*a1 + 736))(a1);
  valuePtr = 0.0;
  v15 = 0;
  if (*(a1 + 552) != v2)
  {
    v3 = v2;
    CACFDictionary::GetUInt64(*(v2 + 8), @"kind", &v15);
    v4 = *(v3 + 8);
    if (v4)
    {
      Value = CFDictionaryGetValue(v4, @"UsageCaseSampleRate");
      if (Value)
      {
        v6 = Value;
        v7 = CFGetTypeID(Value);
        if (v7 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v6, kCFNumberFloat64Type, &valuePtr);
        }
      }
    }

    if (v15 != 5)
    {
      if (v15 == 4)
      {
        v8 = 2;
        goto LABEL_14;
      }

      if (v15 != 2)
      {
        v8 = 1;
        goto LABEL_14;
      }
    }

    v8 = 3;
LABEL_14:
    v15 = v8;
    goto LABEL_15;
  }

  v8 = 0;
LABEL_15:
  v9 = 1937010544;
  input[0] = v8;
  input[1] = vcvtd_n_u64_f64(valuePtr - floor(valuePtr), 0x20uLL) + (vcvtmd_u64_f64(valuePtr) << 32);
  v10 = *(a1 + 1988);
  if (!v10 || *(a1 + 2010) != 1 || (v9 = IOConnectCallMethod(v10, 0xCu, input, 2u, 0, 0, 0, 0, 0, 0)) != 0)
  {
    v12 = v9;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v17 = "HALS_IOA2UCDevice.cpp";
      v18 = 1024;
      v19 = 312;
      v20 = 1024;
      v21 = v12;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::SetClientDescription: got an error when telling the hardware to change client description, Error: 0x%X", buf, 0x18u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v12;
  }

LABEL_18:
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t HALS_IOA2Device::_CopyControlByDescription(HALS_IOA2Device *this, int a2, int a3, int a4)
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v5 = std::__tree<std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>,std::__map_value_compare<std::tuple<unsigned int,unsigned int,unsigned int>,std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>,std::less<std::tuple<unsigned int,unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::tuple<unsigned int,unsigned int,unsigned int>,unsigned int>>>::find<std::tuple<unsigned int,unsigned int,unsigned int>>(this + 1528, v8);
  if ((this + 1536) == v5)
  {
    return 0;
  }

  v6 = v5[10];
  if (!v6)
  {
    return 0;
  }

  return HALS_ObjectMap::CopyObjectByObjectID(v6);
}

HALS_ObjectMap *HALS_IOA2Device::_CopyControlByIndex(HALS_IOA2Device *this, HALS_Object *a2)
{
  v2 = *(this + 188);
  if (a2 >= ((*(this + 189) - v2) >> 3))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 8 * a2);
  }

  HALS_ObjectMap::RetainObject(v3, a2);
  return v3;
}

void HALS_IOA2Device::_CopyControls(HALS_IOA2Device *this, HALS_Device::BasicControlList *a2)
{
  v2 = *(this + 188);
  for (i = *(this + 189); v2 != i; ++v2)
  {
    HALS_ObjectMap::RetainObject(*v2, a2);
    v5 = *v2;
    v7 = *(a2 + 1);
    v6 = *(a2 + 2);
    if (v7 >= v6)
    {
      v9 = (v7 - *a2) >> 3;
      if ((v9 + 1) >> 61)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v10 = v6 - *a2;
      v11 = v10 >> 2;
      if (v10 >> 2 <= (v9 + 1))
      {
        v11 = v9 + 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v12);
      }

      v13 = (8 * v9);
      *v13 = v5;
      v8 = 8 * v9 + 8;
      v14 = *(a2 + 1) - *a2;
      v15 = v13 - v14;
      memcpy(v13 - v14, *a2, v14);
      v16 = *a2;
      *a2 = v15;
      *(a2 + 1) = v8;
      *(a2 + 2) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v7 = v5;
      v8 = (v7 + 1);
    }

    *(a2 + 1) = v8;
  }
}

void HALS_IOA2Device::_CopyStreamList(uint64_t a1, unsigned int a2, void *a3)
{
  a3[1] = *a3;
  v4 = a1 + 24 * a2;
  std::vector<HALS_Stream *>::reserve(a3, (*(v4 + 1464) - *(v4 + 1456)) >> 3);
  v6 = *(v4 + 1456);
  for (i = *(v4 + 1464); v6 != i; ++v6)
  {
    HALS_ObjectMap::RetainObject(*v6, v5);
    v8 = *v6;
    v10 = a3[1];
    v9 = a3[2];
    if (v10 >= v9)
    {
      v12 = (v10 - *a3) >> 3;
      if ((v12 + 1) >> 61)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v13 = v9 - *a3;
      v14 = v13 >> 2;
      if (v13 >> 2 <= (v12 + 1))
      {
        v14 = v12 + 1;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v14;
      }

      if (v15)
      {
        std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v15);
      }

      v16 = (8 * v12);
      *v16 = v8;
      v11 = 8 * v12 + 8;
      v17 = a3[1] - *a3;
      v18 = v16 - v17;
      memcpy(v16 - v17, *a3, v17);
      v19 = *a3;
      *a3 = v18;
      a3[1] = v11;
      a3[2] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v10 = v8;
      v11 = (v10 + 1);
    }

    a3[1] = v11;
  }
}

uint64_t HALS_IOA2Device::_GetTotalNumberChannels(HALS_IOA2Device *this, unsigned int a2)
{
  v2 = this + 24 * a2;
  v3 = *(v2 + 182);
  if (v3 == *(v2 + 183))
  {
    return 0;
  }

  LODWORD(v4) = 0;
  v5 = v2 + 1456;
  do
  {
    v6 = *v3++;
    v7 = v6[4];
    v11 = 0x676C6F6270667420;
    v12 = 0;
    v13 = 0;
    (*(*v6 + 120))(v6, v7, &v11, 40, &v13, v9, 0, 0, 0);
    v4 = (v10 + v4);
  }

  while (v3 != *(v5 + 1));
  return v4;
}

uint64_t HALS_IOA2Device::_ReadHogModeOwnerStore(HALS_IOA2Device *this)
{
  *(this + 2008) = 1;
  cf = 0;
  if (!HALB_UCObject::CopyProperty_CFType(this + 247, @"exclusive access owner", &cf))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = cf;
  v3 = CFGetTypeID(cf);
  if (v3 != CFNumberGetTypeID())
  {
    CFRelease(v2);
    return 0xFFFFFFFFLL;
  }

  v7 = v2;
  v8 = 0;
  valuePtr = 0;
  if (v2)
  {
    CFNumberGetValue(v2, kCFNumberSInt32Type, &valuePtr);
    v4 = valuePtr;
  }

  else
  {
    v4 = 0;
  }

  CACFNumber::~CACFNumber(&v7);
  CFRelease(v2);
  if (v4 != -1)
  {
    v6 = CAProcess::sPID;
    if (CAProcess::sPID == -1)
    {
      v6 = getpid();
      CAProcess::sPID = v6;
    }

    if (v4 != v6 && (v4 < 1 || kill(v4, 0) && *__error() == 3))
    {
      v4 = 0xFFFFFFFFLL;
      HALB_UCObject::SetProperty_SInt32((this + 1976), 0xFFFFFFFFLL);
    }
  }

  return v4;
}

void HALS_IOA2Device::_HogModeOwnerChanged(HALS_IOA2Device **this, int a2)
{
  if ((this[246] & 1) == 0)
  {
    if (a2 == -1)
    {

      HALS_IOA2Device::_CloseConnection(this);
    }

    else if (getpid() == a2)
    {

      HALS_IOA2Device::_OpenConnection(this);
    }
  }
}

void HALS_IOA2Device::_CloseConnection(HALS_IOA2Device **this)
{
  v2 = *(this + 497);
  if (v2)
  {
    MEMORY[0x1E12C07F0](v2, 0, 0, 0);
  }

  HALS_IOA2Device::_UnmapDataExchangeBlocks(this);
  HALS_IOA2Device::_UnmapBlockControlBuffers(this[188], this[189]);
  HALS_IOA2Device::_ReleaseIOBuffers(this);
  v3 = *(this + 497);
  if (this[253] && v3)
  {
    MEMORY[0x1E12C0830](v3, 0, *MEMORY[0x1E69E9A60]);
    LODWORD(v3) = *(this + 497);
  }

  this[253] = 0;
  if (v3)
  {
    IOServiceClose(v3);
    *(this + 497) = 0;
  }

  v5[0] = 0;
  v5[1] = 0;
  HALS_System::GetInstance(&v6, 0, v5);
  HALS_IOContext_Manager::destroy_engine_for_device(*(v6 + 1744), this);
  v4 = v7;
  if (v7)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void HALS_IOA2Device::_OpenConnection(HALS_IOA2Device *this)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(this + 496);
  if (v2)
  {
    if (!*(this + 497))
    {
      v3 = IOServiceOpen(v2, *MEMORY[0x1E69E9A60], 0, this + 497);
      if (v3)
      {
        v24 = v3;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "HALB_UCObject.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 710;
          v28 = 1024;
          v29 = v24;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALB_UCObject::OpenConnection: failed to open a connection, Error: 0x%X", buf, 0x18u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = v24;
      }
    }
  }

  HALS_IOA2UCDevice::MapEngineStatus((this + 1976), this + 253);
  v4 = *(this + 497);
  if (v4)
  {
    v5 = *(this + 504);
    v6 = MEMORY[0x1E12C07F0](v4, 0, v5, *(this + 4));
    if (v5)
    {
      if (v6)
      {
        v22 = v6;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "HALB_UCObject.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 730;
          v28 = 1024;
          v29 = v22;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALB_UCObject::SetConnectionNotificationPort: Cannot set the connection's's notification port., Error: 0x%X", buf, 0x18u);
        }

        v23 = __cxa_allocate_exception(0x10uLL);
        *v23 = off_1F5991DD8;
        v23[2] = v22;
      }
    }
  }

  HALS_IOA2Device::_MapIOBuffers(this);
  HALS_IOA2Device::_MapBlockControlBuffers(*(this + 188), *(this + 189));
  HALS_IOA2Device::_MapDataExchangeBlocks(this);
  v7 = 0;
  v8 = 1;
  do
  {
    v9 = v8;
    v10 = (this + 24 * v7 + 1456);
    v11 = *v10;
    if (v10[1] != *v10)
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = *(v11 + 8 * v12);
        v15 = HALS_ObjectMap::CopyObjectByObjectID(*(v14 + 48));
        v17 = v15;
        if (v15 && !*(v14 + 56))
        {
          HALS_IOA2UCDevice::SetStreamActive((v15 + 1976), *(v14 + 72), *(v14 + 76));
        }

        HALS_ObjectMap::ReleaseObject(v17, v16);
        v12 = v13;
        v11 = *v10;
        ++v13;
      }

      while (v12 < (v10[1] - *v10) >> 3);
    }

    v8 = 0;
    v7 = 1;
  }

  while ((v9 & 1) != 0);
  v18 = *(this + 243);
  if (v18)
  {
    (*(*v18 + 960))(v18);
  }

  v26[0] = 0;
  v26[1] = 0;
  HALS_System::GetInstance(buf, 0, v26);
  HALS_IOContext_Manager::rebuild_engine_for_device(*(*buf + 1744), this);
  v19 = *&buf[8];
  if (*&buf[8])
  {
    v20 = *MEMORY[0x1E69E9840];

    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  else
  {
    v21 = *MEMORY[0x1E69E9840];
  }
}

HALS_ObjectMap *HALS_IOA2Device::_CopyStreamByIndex(HALS_IOA2Device *this, HALS_Object *a2, unsigned int a3)
{
  v3 = this + 24 * a2;
  v4 = *(v3 + 183);
  v5 = *(v3 + 182);
  if (a3 >= ((v4 - v5) >> 3))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v5 + 8 * a3);
  }

  HALS_ObjectMap::RetainObject(v6, a2);
  return v6;
}

void HALS_IOA2Device::create_mcp_engine(HALS_IOA2Device *this)
{
  v11 = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  HALB_UCObject::CopyProperty_CFString(this + 247, @"device UID", cf);
  v9[3] = cf[0];
  if (!cf[0] || (v2 = CFGetTypeID(cf[0]), v2 == CFStringGetTypeID()))
  {
    HALS_IOA2UCDevice::GetNominalSampleRate(this + 247);
    LODWORD(cf[0]) = 0;
    HALB_UCObject::CopyProperty_UInt32(this + 247, @"clock domain", cf);
    LODWORD(cf[0]) = 0;
    HALB_UCObject::CopyProperty_UInt32(this + 247, @"input safety offset", cf);
    LODWORD(cf[0]) = 0;
    HALB_UCObject::CopyProperty_UInt32(this + 247, @"output safety offset", cf);
    LODWORD(cf[0]) = 0;
    HALB_UCObject::CopyProperty_UInt32(this + 247, @"input latency", cf);
    LODWORD(cf[0]) = 0;
    HALB_UCObject::CopyProperty_UInt32(this + 247, @"output latency", cf);
    v3 = *(this + 2011);
    LOBYTE(cf[0]) = 0;
    HALB_UCObject::CopyProperty_BOOL(this + 247, @"wants input trap", cf);
    LOBYTE(cf[0]) = 0;
    HALB_UCObject::CopyProperty_BOOL(this + 247, @"wants output trap", cf);
    LODWORD(cf[0]) = 0;
    HALB_UCObject::CopyProperty_UInt32(this + 247, @"io buffer frame size", cf);
    make_stream_list(v9, this + 185);
    make_stream_list(&__p, this + 182);
    AMCP::Utility::Dispatch_Queue::create_serial_with_workloop(cf, "IOAudio2::Engine Queue");
    AMCP::Utility::Dispatch_Queue::operator=(this + 201, cf[0]);
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(cf);
    v4 = IOConnectAddRef(*(this + 497));
    if (!v4)
    {
      operator new();
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v6 = std::system_category();
    MEMORY[0x1E12C10C0](exception, v4, v6, "Error on IOConnectAddRef");
    __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
  }

  v7 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v7, "Could not construct");
  __cxa_throw(v7, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1DE41FC14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, const void *a24, __int16 a25, char a26, char a27, int a28, int a29, io_connect_t connect)
{
  __cxa_free_exception(v30);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a24);
  _Unwind_Resume(a1);
}

void make_stream_list(void **a1, uint64_t **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::reserve(a1, a2[1] - *a2);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v6 = 0x492492492492492;
    v7 = 0x6DB6DB6DB6DB6DB7;
    do
    {
      v8 = (*(**v4 + 208))();
      v9 = *v4;
      v10 = *(*v4 + 72);
      v11 = *(*v4 + 16);
      v34 = 0x676C6F6270667420;
      v35 = 0;
      (*(*v9 + 120))(v9, v11, &v34, 40, &v35 + 4, &v31, 0, 0, 0);
      v12 = a1[1];
      v13 = a1[2];
      if (v12 >= v13)
      {
        v18 = v6;
        v19 = *a1;
        v20 = v12 - *a1;
        v21 = (v20 >> 3) * v7;
        v22 = v21 + 1;
        if (v21 + 1 > v18)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v23 = v7;
        v24 = ((v13 - v19) >> 3) * v7;
        if (2 * v24 > v22)
        {
          v22 = 2 * v24;
        }

        v25 = v18;
        if (v24 >= 0x249249249249249)
        {
          v26 = v18;
        }

        else
        {
          v26 = v22;
        }

        if (v26)
        {
          std::allocator<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::allocate_at_least[abi:ne200100](v26);
        }

        v27 = 56 * v21;
        v28 = v33;
        v29 = v32;
        v30 = v31;
        *v27 = v8;
        *(v27 + 4) = v10;
        *(v27 + 8) = 1;
        *(v27 + 16) = v30;
        *(v27 + 32) = v29;
        *(v27 + 48) = v28;
        v17 = 56 * v21 + 56;
        memcpy((56 * v21 - v20), v19, v20);
        *a1 = (56 * v21 - v20);
        a1[1] = v17;
        a1[2] = 0;
        if (v19)
        {
          operator delete(v19);
        }

        v6 = v25;
        v7 = v23;
      }

      else
      {
        v14 = v33;
        v15 = v32;
        v16 = v31;
        *v12 = v8;
        *(v12 + 1) = v10;
        *(v12 + 2) = 1;
        *(v12 + 1) = v16;
        *(v12 + 2) = v15;
        *(v12 + 6) = v14;
        v17 = (v12 + 56);
      }

      a1[1] = v17;
      ++v4;
    }

    while (v4 != v5);
  }
}

void sub_1DE41FF58(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOA2Device::HandleOwnedObjectPropertiesChanged(HALS_IOA2Device *this, const HALS_Object *a2, unsigned int a3, unsigned int a4, const AudioObjectPropertyAddress *a5, int a6)
{
  memset(v27, 0, sizeof(v27));
  v12 = *(a2 + 5);
  IsSubClass = HALB_Info::IsSubClass(v12, 1633907820);
  v15 = *(a2 + 6);
  if (v12 == v15 || IsSubClass)
  {
    if (v12 != v15)
    {
      IsSubClass = 1;
    }

    if (!IsSubClass)
    {
      goto LABEL_48;
    }
  }

  else if (!HALB_Info::IsSubClass(v15, 1633907820))
  {
LABEL_48:
    v22 = 0;
    goto LABEL_49;
  }

  if (!*(a2 + 42) || !a4)
  {
    goto LABEL_48;
  }

  v25 = a3;
  v16 = a5;
  v17 = a4;
  do
  {
    v18 = *(a2 + 6);
    if (v18 <= 1936483441)
    {
      switch(v18)
      {
        case 1651273579:
          mSelector = v16->mSelector;
          if (v16->mSelector != 1651272546)
          {
            v20 = 1651272548;
            goto LABEL_33;
          }

          break;
        case 1818588780:
          mSelector = v16->mSelector;
          if (v16->mSelector <= 1818456931)
          {
            if (mSelector != 1818453106)
            {
              if (mSelector != 1818453107)
              {
                v20 = 1818453110;
                goto LABEL_33;
              }

              v21 = 188;
LABEL_43:
              v26.mSelector = *(a2 + v21);
              *&v26.mScope = *(a2 + 6);
              CAPropertyAddressList::AppendUniqueItem(v27, &v26, v13);
              goto LABEL_44;
            }

LABEL_37:
            v21 = 180;
            goto LABEL_43;
          }

          if (mSelector == 1818456932)
          {
LABEL_46:
            v21 = 184;
            goto LABEL_43;
          }

          if (mSelector != 1818456950)
          {
            if (mSelector != 1818457190)
            {
              goto LABEL_44;
            }

            v21 = 192;
            goto LABEL_43;
          }

          break;
        case 1936483188:
          mSelector = v16->mSelector;
          if (v16->mSelector <= 1935893352)
          {
            if (mSelector != 1668049771)
            {
              v20 = 1935892841;
LABEL_33:
              if (mSelector != v20)
              {
                goto LABEL_44;
              }

              v21 = 176;
              goto LABEL_43;
            }

            goto LABEL_46;
          }

          if (mSelector != 1935893353)
          {
            if (mSelector != 1935894894)
            {
              goto LABEL_44;
            }

            goto LABEL_37;
          }

          break;
        default:
          goto LABEL_44;
      }

LABEL_42:
      v21 = 172;
      goto LABEL_43;
    }

    if (v18 != 1953458028)
    {
      if (v18 == 1936744814)
      {
        mSelector = v16->mSelector;
        if (v16->mSelector != 1936745334)
        {
          v20 = 1936745315;
          goto LABEL_33;
        }
      }

      else
      {
        if (v18 != 1936483442)
        {
          goto LABEL_44;
        }

        mSelector = v16->mSelector;
        if (v16->mSelector != 1935962742)
        {
          v20 = 1935962738;
          goto LABEL_33;
        }
      }

      goto LABEL_42;
    }

    if (v16->mSelector == 1650685548)
    {
      goto LABEL_42;
    }

LABEL_44:
    ++v16;
    --v17;
  }

  while (v17);
  v22 = *&v27[0];
  a3 = v25;
  if (*&v27[0] != *(&v27[0] + 1))
  {
    v23 = *(this + 4);
    v24 = -1431655765 * ((*(&v27[0] + 1) - *&v27[0]) >> 2);
    if (a6)
    {
      HALS_Object::PropertiesChanged_Sync(this, v23, v25, v24, *&v27[0]);
    }

    else
    {
      HALS_Object::PropertiesChanged(this, v23, v25, v24, *&v27[0]);
    }
  }

LABEL_49:
  HALS_Device::HandleOwnedObjectPropertiesChanged(this, a2, a3, a4, a5, a6);
  if (v22)
  {
    *(&v27[0] + 1) = v22;

    operator delete(v22);
  }
}

void sub_1DE420314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (v13)
  {
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOA2Device::SetPropertyData(HALS_IOA2Device *this, const AudioObjectPropertyAddress *a2, AudioObjectPropertyAddress *a3, uint64_t a4, float *a5, uint64_t a6, int *a7, AudioObjectPropertyAddress *a8)
{
  v52 = *MEMORY[0x1E69E9840];
  if (((*(*this + 104))(this, a2, a3, a8) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v32 = 1852797029;
LABEL_27:
    exception[2] = v32;
  }

  mSelector = a3->mSelector;
  if (HALB_Info::PropertyRequiresHogMode(a3->mSelector, v16))
  {
    v18 = atomic_load(this + 40);
    if (a8)
    {
      v19 = a8[20].mSelector;
    }

    else
    {
      v19 = getpid();
    }

    if (v18 != -1 && v18 != v19)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      v32 = 560492391;
      goto LABEL_27;
    }

    mSelector = a3->mSelector;
  }

  if (mSelector == 1667329635)
  {
    if (a6 != 4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOA2Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1694;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::_SetPropertyData: bad qualifier data size for property 'canc'", buf, 0x12u);
      }

      v34 = __cxa_allocate_exception(0x10uLL);
      *v34 = off_1F5991DD8;
      v34[2] = 561211770;
    }

    if (!a7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOA2Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1695;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::_SetPropertyData: inQualifierData was NULL for property 'canc'", buf, 0x12u);
      }

      v35 = __cxa_allocate_exception(0x10uLL);
      *v35 = off_1F5991DD8;
      v35[2] = 2003329396;
    }

    v24 = *a7;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    LODWORD(v48) = 0;
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 0x40000000;
    v43[2] = ___ZN15HALS_IOA2Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_99;
    v43[3] = &unk_1E8674900;
    v44 = v24;
    v45 = a4;
    v43[5] = this;
    v43[6] = a5;
    v43[4] = buf;
    v25 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v25, v43);
    if (*(*&buf[8] + 24))
    {
      v36 = __cxa_allocate_exception(0x10uLL);
      v37 = *(*&buf[8] + 24);
      *v36 = off_1F5991DD8;
      v36[2] = v37;
    }

    goto LABEL_20;
  }

  if (mSelector == 1853059700)
  {
    if (a4 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOA2Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1678;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::_SetPropertyData: bad property data size for kAudioDevicePropertyNominalSampleRate", buf, 0x12u);
      }

      v33 = __cxa_allocate_exception(0x10uLL);
      *v33 = off_1F5991DD8;
      v33[2] = 561211770;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    LODWORD(v48) = 0;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 0x40000000;
    v46[2] = ___ZN15HALS_IOA2Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke;
    v46[3] = &unk_1E86748D8;
    v46[5] = this;
    v46[6] = a5;
    v46[4] = buf;
    v21 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v21, v46);
    if (*(*&buf[8] + 24))
    {
      v22 = __cxa_allocate_exception(0x10uLL);
      v23 = *(*&buf[8] + 24);
      *v22 = off_1F5991DD8;
      v22[2] = v23;
    }

LABEL_20:
    v26 = buf;
    goto LABEL_25;
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x2000000000;
  v42 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3802000000;
  v48 = __Block_byref_object_copy__25;
  v49 = __Block_byref_object_dispose__26;
  v50 = 0;
  v51 = 0;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 0x40000000;
  v38[2] = ___ZN15HALS_IOA2Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_101;
  v38[3] = &unk_1E8674928;
  v38[6] = this;
  v38[7] = a3;
  v38[4] = &v39;
  v38[5] = buf;
  v27 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v27, v38);
  v28 = v40[3];
  if (v28)
  {
    (*(*v28 + 128))(v28, v28[4], *&buf[8] + 40, a4, a5, a6, a7, a8);
    HALS_ObjectMap::ReleaseObject(v40[3], v29);
  }

  else
  {
    HALS_Device::SetPropertyData(this, a2, a3, a4, a5, a6, a7, a8);
  }

  _Block_object_dispose(buf, 8);
  v26 = &v39;
LABEL_25:
  _Block_object_dispose(v26, 8);
  v30 = *MEMORY[0x1E69E9840];
}

uint64_t ___ZN15HALS_IOA2Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke(uint64_t result)
{
  v1 = result;
  v14 = *MEMORY[0x1E69E9840];
  LODWORD(result) = 1937010544;
  v2 = *(v1 + 40);
  inputStruct = vcvtd_n_s64_f64(**(v1 + 48) - floor(**(v1 + 48)), 0x20uLL) + (vcvtmd_s64_f64(**(v1 + 48)) << 32);
  v3 = *(v2 + 1988);
  if (!v3 || *(v2 + 2010) != 1 || (result = IOConnectCallMethod(v3, 4u, 0, 0, &inputStruct, 8uLL, 0, 0, 0, 0), result))
  {
    v5 = result;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v9 = "HALS_IOA2UCDevice.cpp";
      v10 = 1024;
      v11 = 224;
      v12 = 1024;
      v13 = v5;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::SetNominalSampleRate: got an error when telling the hardware to change a control value, Error: 0x%X", buf, 0x18u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v5;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___ZN15HALS_IOA2Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_99(uint64_t result)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(result + 40);
  v2 = *(v1 + 2072);
  if (v2)
  {
    v3 = result;
    v4 = *(result + 56);
    v5 = v1 + 2072;
    do
    {
      v6 = *(v2 + 32);
      v7 = v6 >= v4;
      v8 = v6 < v4;
      if (v7)
      {
        v5 = v2;
      }

      v2 = *(v2 + 8 * v8);
    }

    while (v2);
    if (v5 != v1 + 2072 && v4 >= *(v5 + 32))
    {
      v9 = *(v5 + 40);
      if (v9)
      {
        v10 = *(v3 + 60);
        if (v10 <= *(v5 + 48))
        {
          if (*(v3 + 48))
          {
            memcpy(v9, *(v3 + 48), *(v3 + 60));
            v4 = *(v3 + 56);
            v10 = *(v3 + 60);
          }

          result = HALS_IOA2UCDevice::MoveDataExchangeBlockData((v1 + 1976), v4, 1u, v10);
          goto LABEL_14;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v14 = 136315394;
          v15 = "HALS_IOA2Device.cpp";
          v16 = 1024;
          v17 = 1704;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::_SetPropertyData: wrong data size for property 'canc'", &v14, 0x12u);
        }

        v12 = 561211770;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v14 = 136315394;
          v15 = "HALS_IOA2Device.cpp";
          v16 = 1024;
          v17 = 1703;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::_SetPropertyData: bad block ID for property 'canc'", &v14, 0x12u);
        }

        v12 = 2003329396;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = v12;
    }
  }

LABEL_14:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE420E88(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v4 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v5 = v4[2];
    }

    else
    {
      v5 = 2003329396;
    }

    *(*(*(v2 + 32) + 8) + 24) = v5;
    __cxa_end_catch();
    JUMPOUT(0x1DE420D38);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 48) = *(a2 + 48);
  *(result + 40) = v2;
  return result;
}

_DWORD *___ZN15HALS_IOA2Device15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_101(uint64_t a1)
{
  result = HALS_IOA2Device::_FindCustomControlForDeviceAddress(*(a1 + 48), *(a1 + 56), (*(*(a1 + 40) + 8) + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE420F28(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_IOA2Device::GetPropertyData(HALS_IOA2Device *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, unsigned int *a5, uint64_t *a6, uint64_t a7, int *a8, AudioObjectPropertyAddress *a9)
{
  v141 = *MEMORY[0x1E69E9840];
  if (((*(*this + 96))(this, a2, a3, a9) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  v135 = 0;
  v15 = (*(*this + 704))(this, a9);
  mSelector = a3->mSelector;
  mScope = a3->mScope;
  if (a3->mSelector <= 1819173228)
  {
    if (mSelector > 1735354733)
    {
      if (mSelector > 1751737453)
      {
        if (mSelector > 1818455661)
        {
          if (mSelector == 1818455662)
          {
            if (a4 <= 7)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_IOA2Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 1271;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioObjectPropertyElementNumberName", buf, 0x12u);
              }

              v83 = __cxa_allocate_exception(0x10uLL);
              *v83 = off_1F5991DD8;
              v83[2] = 561211770;
            }

            v130[0] = MEMORY[0x1E69E9820];
            v130[1] = 0x40000000;
            v130[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_49;
            v130[3] = &__block_descriptor_tmp_50;
            v130[4] = this;
            v130[5] = a6;
            v130[6] = a3;
            v47 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v47, v130);
            goto LABEL_114;
          }

          if (mSelector == 1819107691)
          {
            if (a4 <= 7)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_IOA2Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 1253;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioObjectPropertyManufacturer", buf, 0x12u);
              }

              v77 = __cxa_allocate_exception(0x10uLL);
              *v77 = off_1F5991DD8;
              v77[2] = 561211770;
            }

            v132[0] = MEMORY[0x1E69E9820];
            v132[1] = 0x40000000;
            v132[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_45;
            v132[3] = &__block_descriptor_tmp_46;
            v132[4] = this;
            v132[5] = a6;
            v32 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v32, v132);
            goto LABEL_114;
          }

          goto LABEL_110;
        }

        if (mSelector != 1751737454)
        {
          if (mSelector == 1818452846)
          {
            if (a4 <= 7)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_IOA2Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 1262;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioObjectPropertyElementCategoryName", buf, 0x12u);
              }

              v69 = __cxa_allocate_exception(0x10uLL);
              *v69 = off_1F5991DD8;
              v69[2] = 561211770;
            }

            v131[0] = MEMORY[0x1E69E9820];
            v131[1] = 0x40000000;
            v131[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_47;
            v131[3] = &__block_descriptor_tmp_48;
            v131[4] = this;
            v131[5] = a6;
            v131[6] = a3;
            v24 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v24, v131);
            goto LABEL_114;
          }

          goto LABEL_110;
        }
      }

      else
      {
        if (mSelector <= 1751412336)
        {
          if (mSelector == 1735354734 || mSelector == 1735356005)
          {
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_IOA2Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 1330;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyDeviceIsRunning", buf, 0x12u);
              }

              v65 = __cxa_allocate_exception(0x10uLL);
              *v65 = off_1F5991DD8;
              v65[2] = 561211770;
            }

            *a6 = (*(**(this + 243) + 688))(*(this + 243));
            goto LABEL_107;
          }

          goto LABEL_110;
        }

        if (mSelector != 1751412337)
        {
          if (mSelector == 1751474532)
          {
            if (a4 <= 7)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_IOA2Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 1593;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyHeadsetInfo", buf, 0x12u);
              }

              v75 = __cxa_allocate_exception(0x10uLL);
              *v75 = off_1F5991DD8;
              v75[2] = 561211770;
            }

            v100[0] = MEMORY[0x1E69E9820];
            v100[1] = 0x40000000;
            v100[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_85;
            v100[3] = &__block_descriptor_tmp_86;
            v100[4] = this;
            v100[5] = a6;
            v30 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v30, v100);
            goto LABEL_114;
          }

          goto LABEL_110;
        }
      }

      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_IOA2Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1522;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyIsHidden", buf, 0x12u);
        }

        v64 = __cxa_allocate_exception(0x10uLL);
        *v64 = off_1F5991DD8;
        v64[2] = 561211770;
      }

      v110[0] = MEMORY[0x1E69E9820];
      v110[1] = 0x40000000;
      v110[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_75;
      v110[3] = &__block_descriptor_tmp_76;
      v110[4] = this;
      v110[5] = a6;
      v34 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v34, v110);
      goto LABEL_107;
    }

    if (mSelector > 1667330159)
    {
      if (mSelector > 1668641651)
      {
        if (mSelector == 1668641652)
        {
          Size = OS::CF::ArrayBase<__CFArray const*>::GetSize(*(this + 245));
          if (Size >= a4 / 0xCuLL)
          {
            v38 = a4 / 0xCuLL;
          }

          else
          {
            v38 = Size;
          }

          if (v38)
          {
            v39 = 0;
            v40 = (a6 + 4);
            do
            {
              OS::CF::ArrayBase<__CFArray const*>::operator[](v101, this + 1952, v39);
              OS::CF::UntypedObject::As<OS::CF::Dictionary>(&__p, v101);
              OS::CF::DictionaryBase<__CFDictionary const*>::operator[](&v105, theDict, @"property selector");
              OS::CF::UntypedObject::As<OS::CF::Number>(buf, &v105);
              *(v40 - 1) = OS::CF::Number::GetValue<unsigned int>(*&buf[8], 0);
              OS::CF::UntypedObject::~UntypedObject(buf);
              OS::CF::UntypedObject::~UntypedObject(&v105);
              OS::CF::UntypedObject::~UntypedObject(&__p);
              OS::CF::UntypedObject::~UntypedObject(v101);
              *v40 = 1886155636;
              v40 = (v40 + 12);
              ++v39;
            }

            while (v38 != v39);
          }

          v41 = 12 * v38;
          goto LABEL_115;
        }

        if (mSelector == 1684434036)
        {
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_IOA2Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1339;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyDeviceCanBeDefaultDevice", buf, 0x12u);
            }

            v73 = __cxa_allocate_exception(0x10uLL);
            *v73 = off_1F5991DD8;
            v73[2] = 561211770;
          }

          v125[0] = MEMORY[0x1E69E9820];
          v125[1] = 0x40000000;
          v125[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_62;
          v125[3] = &__block_descriptor_tmp_63;
          v125[4] = this;
          v125[5] = a6;
          v125[6] = a3;
          v125[7] = a9;
          v29 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v29, v125);
          goto LABEL_107;
        }
      }

      else
      {
        if (mSelector == 1667330160)
        {
          if (a4 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_IOA2Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1280;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyConfigurationApplication", buf, 0x12u);
            }

            v79 = __cxa_allocate_exception(0x10uLL);
            *v79 = off_1F5991DD8;
            v79[2] = 561211770;
          }

          v129[0] = MEMORY[0x1E69E9820];
          v129[1] = 0x40000000;
          v129[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_51;
          v129[3] = &__block_descriptor_tmp_52;
          v129[4] = this;
          v129[5] = a6;
          v35 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v35, v129);
          if (!*a6)
          {
            *a6 = CFRetain(@"com.apple.audio.AudioMIDISetup");
          }

          goto LABEL_114;
        }

        if (mSelector == 1668049764)
        {
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_IOA2Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1320;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyClockDomain", buf, 0x12u);
            }

            v67 = __cxa_allocate_exception(0x10uLL);
            *v67 = off_1F5991DD8;
            v67[2] = 561211770;
          }

          v126[0] = MEMORY[0x1E69E9820];
          v126[1] = 0x40000000;
          v126[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_60;
          v126[3] = &__block_descriptor_tmp_61_5874;
          v126[4] = this;
          v126[5] = a6;
          v22 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v22, v126);
          goto LABEL_107;
        }
      }

      goto LABEL_110;
    }

    if (mSelector != 1634429294)
    {
      if (mSelector == 1635087471)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2000000000;
        LODWORD(v137) = 1;
        v98[0] = MEMORY[0x1E69E9820];
        v98[1] = 0x40000000;
        v98[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2_89;
        v98[3] = &unk_1E8674888;
        v98[4] = buf;
        v98[5] = this;
        v51 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v51, v98);
        *a6 = *(*&buf[8] + 24);
        *a5 = 4;
      }

      else
      {
        if (mSelector != 1667329635)
        {
          goto LABEL_110;
        }

        if (a7 != 4)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOA2Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1539;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyDataSize: bad qualifier data size for property 'canc'", buf, 0x12u);
          }

          v71 = __cxa_allocate_exception(0x10uLL);
          *v71 = off_1F5991DD8;
          v71[2] = 561211770;
        }

        if (!a8)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOA2Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1540;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyDataSize: inQualifierData was NULL for property 'canc'", buf, 0x12u);
          }

          v88 = __cxa_allocate_exception(0x10uLL);
          *v88 = off_1F5991DD8;
          v88[2] = 2003329396;
        }

        v26 = *a8;
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3802000000;
        v137 = __Block_byref_object_copy__33;
        v138 = __Block_byref_object_dispose__34;
        v139 = 0;
        v140 = 0;
        v105 = 0;
        v106 = &v105;
        v107 = 0x2000000000;
        LODWORD(v108) = 0;
        v102[0] = MEMORY[0x1E69E9820];
        v102[1] = 0x40000000;
        v102[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_79;
        v102[3] = &unk_1E8674820;
        v103 = v26;
        v104 = a4;
        v102[6] = this;
        v102[7] = a5;
        v102[4] = buf;
        v102[5] = &v105;
        v102[8] = a6;
        v27 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v27, v102);
        if (*(v106 + 6))
        {
          v89 = __cxa_allocate_exception(0x10uLL);
          v90 = *(v106 + 6);
          *v89 = off_1F5991DD8;
          v89[2] = v90;
        }

        _Block_object_dispose(&v105, 8);
      }

      _Block_object_dispose(buf, 8);
      goto LABEL_116;
    }

    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOA2Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1311;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyRelatedDevices", buf, 0x12u);
      }

      v86 = __cxa_allocate_exception(0x10uLL);
      *v86 = off_1F5991DD8;
      v86[2] = 561211770;
    }

    v21 = *(this + 4);
LABEL_106:
    *a6 = v21;
LABEL_107:
    v41 = 4;
LABEL_115:
    *a5 = v41;
    goto LABEL_116;
  }

  v19 = *&v15;
  v20 = v16;
  if (mSelector <= 1919251298)
  {
    if (mSelector <= 1836411235)
    {
      switch(mSelector)
      {
        case 1819173229:
          if (a4 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_IOA2Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1226;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioObjectPropertyName", buf, 0x12u);
            }

            v87 = __cxa_allocate_exception(0x10uLL);
            *v87 = off_1F5991DD8;
            v87[2] = 561211770;
          }

          v134[0] = MEMORY[0x1E69E9820];
          v134[1] = 0x40000000;
          v134[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
          v134[3] = &__block_descriptor_tmp_39;
          v134[4] = this;
          v134[5] = a6;
          v53 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v53, v134);
          goto LABEL_114;
        case 1819569763:
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_IOA2Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1357;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyLatency", buf, 0x12u);
            }

            v85 = __cxa_allocate_exception(0x10uLL);
            *v85 = off_1F5991DD8;
            v85[2] = 561211770;
          }

          v119[0] = MEMORY[0x1E69E9820];
          v119[1] = 0x40000000;
          v119[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_66;
          v119[3] = &__block_descriptor_tmp_67;
          v119[4] = this;
          v119[5] = a3;
          v123 = mScope == 1768845428;
          v119[6] = v15;
          v120 = v16;
          v121 = a9;
          v122 = a6;
          v52 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v52, v119);
          goto LABEL_107;
        case 1819634020:
          if (a4 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_IOA2Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1602;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyLegacyUIDList", buf, 0x12u);
            }

            v72 = __cxa_allocate_exception(0x10uLL);
            *v72 = off_1F5991DD8;
            v72[2] = 561211770;
          }

          v99[0] = MEMORY[0x1E69E9820];
          v99[1] = 0x40000000;
          v99[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_87;
          v99[3] = &__block_descriptor_tmp_88_5891;
          v99[4] = this;
          v99[5] = a6;
          v28 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v28, v99);
          goto LABEL_114;
      }

      goto LABEL_110;
    }

    if (mSelector <= 1853059618)
    {
      if (mSelector == 1836411236)
      {
        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOA2Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1293;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyModelUID", buf, 0x12u);
          }

          v80 = __cxa_allocate_exception(0x10uLL);
          *v80 = off_1F5991DD8;
          v80[2] = 561211770;
        }

        v128[0] = MEMORY[0x1E69E9820];
        v128[1] = 0x40000000;
        v128[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_56;
        v128[3] = &__block_descriptor_tmp_57;
        v128[4] = this;
        v128[5] = a6;
        v36 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v36, v128);
        goto LABEL_114;
      }

      if (mSelector == 1851878764)
      {
        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOA2Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1235;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA1Device::GetPropertyData: bad property data size for kAudioObjectPropertyName", buf, 0x12u);
          }

          v68 = __cxa_allocate_exception(0x10uLL);
          *v68 = off_1F5991DD8;
          v68[2] = 561211770;
        }

        v133[0] = MEMORY[0x1E69E9820];
        v133[1] = 0x40000000;
        v133[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_40;
        v133[3] = &__block_descriptor_tmp_44;
        v133[4] = this;
        v133[5] = a6;
        v23 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v23, v133);
        goto LABEL_114;
      }

      goto LABEL_110;
    }

    if (mSelector != 1853059619)
    {
      if (mSelector == 1853059700)
      {
        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOA2Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1434;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyNominalSampleRate", buf, 0x12u);
          }

          v74 = __cxa_allocate_exception(0x10uLL);
          *v74 = off_1F5991DD8;
          v74[2] = 561211770;
        }

        if (v16)
        {
          *a6 = v15;
          goto LABEL_116;
        }

        v114[0] = MEMORY[0x1E69E9820];
        v114[1] = 0x40000000;
        v114[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_72;
        v114[3] = &__block_descriptor_tmp_73;
        v114[4] = this;
        v114[5] = a6;
        v55 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v55, v114);
LABEL_114:
        v41 = 8;
        goto LABEL_115;
      }

LABEL_110:
      HALS_IOA2Device::GetCustomPropertyInfoByAddress(&__p, this, a3);
      if (theDict)
      {
        if (a4 <= 7)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOA2Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1636;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for a custom property", buf, 0x12u);
          }

          v91 = __cxa_allocate_exception(0x10uLL);
          *v91 = off_1F5991DD8;
          v91[2] = 561211770;
        }

        v96[0] = MEMORY[0x1E69E9820];
        v96[1] = 1174405120;
        v96[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_91;
        v96[3] = &__block_descriptor_tmp_95;
        v96[4] = this;
        OS::CF::UntypedObject::UntypedObject(v97, theDict);
        v97[0] = &unk_1F5991008;
        v97[2] = a6;
        v54 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v54, v96);
        *a5 = 8;
        OS::CF::UntypedObject::~UntypedObject(v97);
      }

      else
      {
        v105 = 0;
        v106 = &v105;
        v107 = 0x2000000000;
        v108 = 0;
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3802000000;
        v137 = __Block_byref_object_copy__25;
        v138 = __Block_byref_object_dispose__26;
        v139 = 0;
        v140 = 0;
        v95[0] = MEMORY[0x1E69E9820];
        v95[1] = 0x40000000;
        v95[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_96;
        v95[3] = &unk_1E86748B0;
        v95[6] = this;
        v95[7] = a3;
        v95[4] = &v105;
        v95[5] = buf;
        v57 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v57, v95);
        v58 = v106[3];
        if (v58)
        {
          (*(*v58 + 120))(v58, v58[4], *&buf[8] + 40, a4, a5, a6, a7, a8, a9);
          HALS_ObjectMap::ReleaseObject(v106[3], v59);
        }

        else
        {
          HALS_Device::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
        }

        _Block_object_dispose(buf, 8);
        _Block_object_dispose(&v105, 8);
      }

      OS::CF::UntypedObject::~UntypedObject(&__p);
      goto LABEL_116;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3002000000;
    v137 = __Block_byref_object_copy__30;
    v138 = __Block_byref_object_dispose__31;
    v139 = 0;
    v113[0] = MEMORY[0x1E69E9820];
    v113[1] = 0x40000000;
    v113[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2;
    v113[3] = &unk_1E86747B8;
    v113[5] = this;
    v113[4] = buf;
    v42 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v42, v113);
    v43 = *(*&buf[8] + 40);
    if (v43)
    {
      v44 = v43[4];
      v105 = 0x676C6F6270667461;
      LODWORD(v106) = 0;
      (*(*v43 + 112))(v43, v44, &v105, 0, 0, 0);
      operator new[]();
    }

    if (v20)
    {
      NominalSampleRate = v19;
    }

    else
    {
      NominalSampleRate = HALS_IOA2UCDevice::GetNominalSampleRate(this + 247);
    }

    if (a4 < 0x10)
    {
      v61 = 0;
    }

    else
    {
      *a6 = NominalSampleRate;
      *(a6 + 1) = NominalSampleRate;
      v61 = 16;
    }

    *a5 = v61;
    _Block_object_dispose(buf, 8);
    HALS_ObjectMap::ReleaseObject(v139, v62);
  }

  else
  {
    if (mSelector <= 1935763059)
    {
      if (mSelector > 1919512166)
      {
        if (mSelector == 1919512167)
        {
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_IOA2Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1396;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyZeroTimeStampPeriod", buf, 0x12u);
            }

            v82 = __cxa_allocate_exception(0x10uLL);
            *v82 = off_1F5991DD8;
            v82[2] = 561211770;
          }

          v118[0] = MEMORY[0x1E69E9820];
          v118[1] = 0x40000000;
          v118[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_68;
          v118[3] = &__block_descriptor_tmp_69;
          v118[4] = this;
          v118[5] = a6;
          v46 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v46, v118);
          goto LABEL_107;
        }

        if (mSelector == 1920168547)
        {
          if (a4 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_IOA2Device.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1531;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyResourceBundle", buf, 0x12u);
            }

            v76 = __cxa_allocate_exception(0x10uLL);
            *v76 = off_1F5991DD8;
            v76[2] = 561211770;
          }

          v109[0] = MEMORY[0x1E69E9820];
          v109[1] = 0x40000000;
          v109[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_77;
          v109[3] = &__block_descriptor_tmp_78;
          v109[4] = this;
          v109[5] = a6;
          v31 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v31, v109);
          goto LABEL_114;
        }

        goto LABEL_110;
      }

      if (mSelector != 1919251299 && mSelector != 1919251302)
      {
        goto LABEL_110;
      }

      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_IOA2Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1622;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyWantsControlsRestored or kAudioDevicePropertyWantsStreamFormatsRestored", buf, 0x12u);
        }

        v66 = __cxa_allocate_exception(0x10uLL);
        *v66 = off_1F5991DD8;
        v66[2] = 561211770;
      }

      v21 = 1;
      goto LABEL_106;
    }

    if (mSelector <= 1936876643)
    {
      if (mSelector == 1935763060)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOA2Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1405;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertySafetyOffset", buf, 0x12u);
          }

          v81 = __cxa_allocate_exception(0x10uLL);
          *v81 = off_1F5991DD8;
          v81[2] = 561211770;
        }

        v115[0] = MEMORY[0x1E69E9820];
        v115[1] = 0x40000000;
        v115[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_70;
        v115[3] = &__block_descriptor_tmp_71;
        v115[4] = this;
        v115[5] = a3;
        v115[6] = v15;
        v116 = v16;
        v117 = a6;
        v45 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v45, v115);
        goto LABEL_107;
      }

      if (mSelector == 1936092276)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOA2Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1348;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyDeviceCanBeDefaultSystemDevice", buf, 0x12u);
          }

          v70 = __cxa_allocate_exception(0x10uLL);
          *v70 = off_1F5991DD8;
          v70[2] = 561211770;
        }

        v124[0] = MEMORY[0x1E69E9820];
        v124[1] = 0x40000000;
        v124[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_64;
        v124[3] = &__block_descriptor_tmp_65;
        v124[4] = this;
        v124[5] = a6;
        v124[6] = a3;
        v124[7] = a9;
        v25 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v25, v124);
        goto LABEL_107;
      }

      goto LABEL_110;
    }

    if (mSelector != 1936876644)
    {
      if (mSelector == 1953653102)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_IOA2Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1302;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyTransportType", buf, 0x12u);
          }

          v78 = __cxa_allocate_exception(0x10uLL);
          *v78 = off_1F5991DD8;
          v78[2] = 561211770;
        }

        v127[0] = MEMORY[0x1E69E9820];
        v127[1] = 0x40000000;
        v127[2] = ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_58;
        v127[3] = &__block_descriptor_tmp_59;
        v127[4] = this;
        v127[5] = a6;
        v33 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v33, v127);
        goto LABEL_107;
      }

      goto LABEL_110;
    }

    TotalNumberChannelsForClient = HALS_Device::GetTotalNumberChannelsForClient(this, mScope == 1768845428, a9);
    v49 = caulk::numeric::exceptional_mul<unsigned int>(TotalNumberChannelsForClient);
    v50 = caulk::numeric::exceptional_add<unsigned int>(v49);
    v135 = v50;
    if (v50 > a4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOA2Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1425;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: bad property data size for kAudioDevicePropertyDefaultChannelLayout", buf, 0x12u);
      }

      v84 = __cxa_allocate_exception(0x10uLL);
      *v84 = off_1F5991DD8;
      v84[2] = 561211770;
    }

    BYTE4(v92) = mScope == 1768845428;
    LODWORD(v92) = TotalNumberChannelsForClient;
    (*(*this + 936))(this, a2, a3, a4, a5, a6, a7, a8, a9, v50, &v135, v92);
  }

LABEL_116:
  v56 = *MEMORY[0x1E69E9840];
}

void sub_1DE423A50(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  HALS_ObjectMap::ReleaseObject(*(v1 - 136), v3);
  _Unwind_Resume(a1);
}

BOOL ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = 0;
  result = HALB_UCObject::CopyProperty_CFString((v2 + 1976), @"device name", &v4);
  **(a1 + 40) = v4;
  return result;
}

void sub_1DE423B94(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_40(uint64_t a1)
{
  v2 = *(a1 + 32);
  cf = 0;
  HALB_UCObject::CopyProperty_CFString((v2 + 1976), @"device name", &cf);
  v4 = cf;
  if ((*(v2 + 2032) & 1) == 0)
  {
    *(v2 + 2032) = 1;
    cf = 0;
    v7 = 1;
    CACFString::~CACFString(&cf);
  }

  v5 = *(v2 + 2040);
  if (!v5 || !*(v5 + 1))
  {
    if (!v4)
    {
      **(a1 + 40) = 0;
      return;
    }

    CFRetain(v4);
    **(a1 + 40) = v4;
LABEL_9:
    CFRelease(v4);
    return;
  }

  **(a1 + 40) = HALB_CFBundle::CopyLocalizedString(v5, v4, @"IOAudioEngineDescription", v4, v3);
  if (v4)
  {
    goto LABEL_9;
  }
}

void sub_1DE423C84(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

BOOL ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_45(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = 0;
  result = HALB_UCObject::CopyProperty_CFString((v2 + 1976), @"device manufacturer", &v4);
  **(a1 + 40) = v4;
  return result;
}

void sub_1DE423CFC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

BOOL ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_56(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = 0;
  result = HALB_UCObject::CopyProperty_CFString((v2 + 1976), @"model UID", &v4);
  **(a1 + 40) = v4;
  return result;
}

void sub_1DE423D94(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_58(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 0;
  HALB_UCObject::CopyProperty_UInt32((v2 + 1976), @"transport type", &v3);
  **(a1 + 40) = v3;
}

void sub_1DE423E08(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_60(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 0;
  HALB_UCObject::CopyProperty_UInt32((v2 + 1976), @"clock domain", &v3);
  **(a1 + 40) = v3;
}

void sub_1DE423E7C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_62(uint64_t a1)
{
  result = (*(**(a1 + 32) + 576))(*(a1 + 32), *(*(a1 + 48) + 4) == 1768845428, *(a1 + 56));
  **(a1 + 40) = result != 0;
  return result;
}

void sub_1DE423F18(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_64(uint64_t a1)
{
  result = (*(**(a1 + 32) + 576))(*(a1 + 32), *(*(a1 + 48) + 4) == 1768845428, *(a1 + 56));
  **(a1 + 40) = result != 0;
  return result;
}

void sub_1DE423FB0(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_66(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 4);
  v9 = 0;
  if (v3 == 1768845428)
  {
    v4 = @"input latency";
  }

  else
  {
    v4 = @"output latency";
  }

  HALB_UCObject::CopyProperty_UInt32(v2 + 247, v4, &v9);
  v5 = v9;
  if ((*(*v2 + 56))(v2))
  {
    v5 += HALS_Device::GetStreamDSPLatency(v2, *(a1 + 80));
  }

  if (*(a1 + 56) == 1)
  {
    v6 = *(a1 + 48);
    v5 = (v6 / (*(*v2 + 34))(v2) * v5);
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    DSPLatencyForClient = HALS_Device::GetDSPLatencyForClient(v2, *(a1 + 80), v7);
    if ((DSPLatencyForClient & 0x100000000) != 0)
    {
      v5 += DSPLatencyForClient;
    }
  }

  **(a1 + 72) = v5;
}

void sub_1DE424100(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_68(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 0;
  HALB_UCObject::CopyProperty_UInt32((v2 + 1976), @"io buffer frame size", &v3);
  **(a1 + 40) = v3;
}

void sub_1DE424180(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_70(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 4);
  v7 = 0;
  if (v3 == 1768845428)
  {
    v4 = @"input safety offset";
  }

  else
  {
    v4 = @"output safety offset";
  }

  HALB_UCObject::CopyProperty_UInt32(v2 + 247, v4, &v7);
  v5 = v7;
  if (*(a1 + 56) == 1)
  {
    v6 = *(a1 + 48);
    v5 = (v6 / (*(*v2 + 34))(v2) * v5);
  }

  **(a1 + 64) = v5;
}

void sub_1DE424270(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_1DE4242D0(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t __Block_byref_object_copy__30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2(uint64_t a1, HALS_Object *a2)
{
  v3 = *(a1 + 40);
  v4 = v3[182];
  if (v3[183] != v4 || (v4 = v3[185], v3[186] != v4))
  {
    v5 = *v4;
    HALS_ObjectMap::RetainObject(*v4, a2);
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v5;

    HALS_ObjectMap::ReleaseObject(v8, v6);
  }
}

uint64_t __Block_byref_object_copy__33(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 48) = *(a2 + 48);
  *(result + 40) = v2;
  return result;
}

void *___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_79(void *result)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = result[6];
  v2 = *(v1 + 2072);
  if (v2)
  {
    v3 = result;
    v4 = *(result + 18);
    v5 = v1 + 2072;
    do
    {
      v6 = *(v2 + 32);
      v7 = v6 >= v4;
      v8 = v6 < v4;
      if (v7)
      {
        v5 = v2;
      }

      v2 = *(v2 + 8 * v8);
    }

    while (v2);
    if (v5 != v1 + 2072 && v4 >= *(v5 + 32))
    {
      v9 = *(result[4] + 8);
      v10 = *(v5 + 40);
      *(v9 + 48) = *(v5 + 48);
      *(v9 + 40) = v10;
      v11 = *(result[4] + 8);
      v12 = *(v11 + 40);
      if (v12)
      {
        v13 = *(v11 + 48);
        if (*(result + 19) <= v13)
        {
          if (*result[7] > v13)
          {
            v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v14 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(result);
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
              v21 = 136315394;
              v22 = "HALS_IOA2Device.cpp";
              v23 = 1024;
              v24 = 1555;
              _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOA2Device::GetPropertyData: size specified for data exchange block is too large: this should have been caught in the _GetDevicePropertyDataSize check", &v21, 0x12u);
            }
          }

          *(*(v3[5] + 8) + 24) = HALS_IOA2UCDevice::MoveDataExchangeBlockData((v1 + 1976), *(v3 + 18), 0, *v3[7]);
          result = v3[8];
          if (result)
          {
            result = memcpy(result, v12, *v3[7]);
          }

          goto LABEL_21;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v21 = 136315394;
          v22 = "HALS_IOA2Device.cpp";
          v23 = 1024;
          v24 = 1551;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyData: wrong data size for property 'canc'", &v21, 0x12u);
        }

        v19 = 561211770;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v21 = 136315394;
          v22 = "HALS_IOA2Device.cpp";
          v23 = 1024;
          v24 = 1550;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::GetPropertyDataSize: bad block ID for property 'canc'", &v21, 0x12u);
        }

        v19 = 2003329396;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = v19;
    }
  }

LABEL_21:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE4246B8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v4 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(*(*(v2 + 40) + 8) + 24) = v4[2];
    }

    else
    {
      *(*(*(v2 + 40) + 8) + 24) = 2003329396;
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE424514);
  }

  _Unwind_Resume(a1);
}

CFTypeID ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_85(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  *cf = 0;
  if (HALB_UCObject::CopyProperty_CFType((v2 + 1976), @"headset info", cf))
  {
    v3 = *cf;
    v4 = CFGetTypeID(*cf);
    result = CFDictionaryGetTypeID();
    if (v4 == result)
    {
      if (v3)
      {
        goto LABEL_7;
      }
    }

    else
    {
      CFRelease(v3);
    }
  }

  result = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  v3 = result;
  if (!result)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *cf = 136315394;
      *&cf[4] = "HALS_IOA2UCDevice.cpp";
      v9 = 1024;
      v10 = 286;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::CopyHeadsetInfo: could not allocate an empty dictionary", cf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003329396;
  }

LABEL_7:
  **(a1 + 40) = v3;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_87(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10 = 0;
  if (!HALB_UCObject::CopyProperty_CFArray((v2 + 1976), @"legacy UID list", &v10))
  {
    value = 0;
    v9 = 1;
    cf = 0;
    if (HALB_UCObject::CopyProperty_CFString((v2 + 1976), @"legacy UID list", &cf))
    {
      v3 = cf;
      CACFString::operator=(&value, cf);
      if (v3)
      {
        CFRelease(v3);
      }
    }

    if (value)
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
      cf = Mutable;
      v7 = 257;
      if (Mutable && (CFArrayAppendValue(Mutable, value), cf))
      {
        CFRetain(cf);
        v5 = cf;
      }

      else
      {
        v5 = 0;
      }

      v10 = v5;
      CACFArray::~CACFArray(&cf);
    }

    CACFString::~CACFString(&value);
  }

  **(a1 + 40) = v10;
}

void sub_1DE4249E8(void *a1)
{
  CACFString::~CACFString(&v2);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2_89(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = 1;
  HALB_UCObject::CopyProperty_UInt32((v2 + 1976), @"allows auto route", &v3);
  *(*(*(a1 + 32) + 8) + 24) = v3;
}

void sub_1DE424A90(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_91(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9 = 0;
  OS::CF::DictionaryBase<__CFDictionary const*>::operator[](v5, *(a1 + 48), @"registry key");
  TypeID = OS::CF::UntypedObject::GetTypeID(cf);
  if (TypeID == CFStringGetTypeID())
  {
    v4 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v8 = v4;
  }

  else
  {
    v4 = 0;
    v8 = 0;
  }

  v7 = &unk_1F5991188;
  HALB_UCObject::CopyProperty_CFType((v2 + 1976), v4, &v9);
  OS::CF::UntypedObject::~UntypedObject(&v7);
  OS::CF::UntypedObject::~UntypedObject(v5);
  **(a1 + 56) = v9;
}

void sub_1DE424BA4(void *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  OS::CF::UntypedObject::~UntypedObject(va1);
  OS::CF::UntypedObject::~UntypedObject(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE424B8CLL);
}

_DWORD *___ZNK15HALS_IOA2Device15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_96(uint64_t a1)
{
  result = HALS_IOA2Device::_FindCustomControlForDeviceAddress(*(a1 + 48), *(a1 + 56), (*(*(a1 + 40) + 8) + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE424C0C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

OS::CF::UntypedObject *__copy_helper_block_e8_40c24_ZTSN2OS2CF10DictionaryE(uint64_t a1, uint64_t a2)
{
  result = OS::CF::UntypedObject::UntypedObject((a1 + 40), *(a2 + 48));
  *(a1 + 40) = &unk_1F5991008;
  return result;
}

uint64_t HALS_IOA2Device::GetPropertyDataSize(HALS_IOA2Device *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, int *a5, AudioObjectPropertyAddress *a6)
{
  v43 = *MEMORY[0x1E69E9840];
  if (((*(*this + 96))(this, a2, a3, a6) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  PropertyDataSize = 4;
  if (a3->mSelector > 1751474531)
  {
    if (mSelector > 1919251298)
    {
      if (mSelector == 1919251299 || mSelector == 1919251302)
      {
        goto LABEL_36;
      }

      if (mSelector != 1920168547)
      {
        goto LABEL_28;
      }

LABEL_23:
      PropertyDataSize = 8;
      goto LABEL_36;
    }

    if (mSelector == 1751474532)
    {
      goto LABEL_23;
    }

    if (mSelector == 1853059619)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3002000000;
      v39 = __Block_byref_object_copy__30;
      v40 = __Block_byref_object_dispose__31;
      v41 = 0;
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 0x40000000;
      v35[2] = ___ZNK15HALS_IOA2Device19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke;
      v35[3] = &unk_1E8674560;
      v35[4] = buf;
      v35[5] = this;
      v15 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v15, v35);
      v16 = *(*&buf[8] + 40);
      if (v16)
      {
        v17 = v16[4];
        strcpy(v36, "atfpbolg");
        v36[9] = 0;
        *&v36[10] = 0;
        (*(*v16 + 112))(v16, v17, v36, 0, 0, 0);
        operator new[]();
      }

      PropertyDataSize = 16;
      _Block_object_dispose(buf, 8);
      HALS_ObjectMap::ReleaseObject(v41, v24);
      goto LABEL_36;
    }

LABEL_28:
    HALS_IOA2Device::GetCustomPropertyInfoByAddress(__p, this, a3);
    if (__p[1])
    {
      PropertyDataSize = 8;
    }

    else
    {
      *v36 = 0;
      *&v36[8] = v36;
      *&v36[16] = 0x2000000000;
      v37 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3802000000;
      v39 = __Block_byref_object_copy__25;
      v40 = __Block_byref_object_dispose__26;
      v41 = 0;
      v42 = 0;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 0x40000000;
      v31[2] = ___ZNK15HALS_IOA2Device19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_37;
      v31[3] = &unk_1E86745B0;
      v31[6] = this;
      v31[7] = a3;
      v31[4] = v36;
      v31[5] = buf;
      v20 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v20, v31);
      v22 = *(*&v36[8] + 24);
      if (v22)
      {
        PropertyDataSize = (*(*v22 + 112))(v22, v22[4], *&buf[8] + 40, a4, a5, a6);
        HALS_ObjectMap::ReleaseObject(*(*&v36[8] + 24), v23);
      }

      else
      {
        PropertyDataSize = HALS_Device::GetPropertyDataSize(this, v21, a3, a4, a5, a6);
      }

      _Block_object_dispose(buf, 8);
      _Block_object_dispose(v36, 8);
    }

    OS::CF::UntypedObject::~UntypedObject(__p);
    goto LABEL_36;
  }

  if (mSelector <= 1667329634)
  {
    if (mSelector == 1634429294 || mSelector == 1635087471)
    {
      goto LABEL_36;
    }

    goto LABEL_28;
  }

  if (mSelector != 1667329635)
  {
    if (mSelector == 1668641652)
    {
      PropertyDataSize = 12 * OS::CF::ArrayBase<__CFArray const*>::GetSize(*(this + 245));
      goto LABEL_36;
    }

    goto LABEL_28;
  }

  if (a4 != 4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOA2Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1144;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::_GetPropertyDataSize: bad qualifier data size for property 'canc'", buf, 0x12u);
    }

    v28 = __cxa_allocate_exception(0x10uLL);
    *v28 = off_1F5991DD8;
    v28[2] = 561211770;
  }

  if (!a5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOA2Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1145;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::_GetPropertyDataSize: inQualifierData was NULL for property 'canc'", buf, 0x12u);
    }

    v29 = __cxa_allocate_exception(0x10uLL);
    *v29 = off_1F5991DD8;
    v29[2] = 2003329396;
  }

  v18 = *a5;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3802000000;
  v39 = __Block_byref_object_copy__33;
  v40 = __Block_byref_object_dispose__34;
  v41 = 0;
  v42 = 0;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 0x40000000;
  v32[2] = ___ZNK15HALS_IOA2Device19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_35;
  v32[3] = &unk_1E8674588;
  v33 = v18;
  v32[4] = buf;
  v32[5] = this;
  v19 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v19, v32);
  if (!*(*&buf[8] + 40))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v36 = 136315394;
      *&v36[4] = "HALS_IOA2Device.cpp";
      *&v36[12] = 1024;
      *&v36[14] = 1157;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::_GetPropertyDataSize: bad block ID for property 'canc'", v36, 0x12u);
    }

    v30 = __cxa_allocate_exception(0x10uLL);
    *v30 = off_1F5991DD8;
    v30[2] = 2003329396;
  }

  PropertyDataSize = *(*&buf[8] + 48);
  _Block_object_dispose(buf, 8);
LABEL_36:
  v25 = *MEMORY[0x1E69E9840];
  return PropertyDataSize;
}

void sub_1DE425580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p)
{
  MEMORY[0x1E12C1700](v26, v27);
  _Block_object_dispose((v28 - 144), 8);
  HALS_ObjectMap::ReleaseObject(*(v28 - 104), v30);
  _Unwind_Resume(a1);
}

void ___ZNK15HALS_IOA2Device19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke(uint64_t a1, HALS_Object *a2)
{
  v3 = *(a1 + 40);
  v4 = v3[182];
  if (v3[183] != v4 || (v4 = v3[185], v3[186] != v4))
  {
    v5 = *v4;
    HALS_ObjectMap::RetainObject(*v4, a2);
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v5;

    HALS_ObjectMap::ReleaseObject(v8, v6);
  }
}

uint64_t ___ZNK15HALS_IOA2Device19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_35(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 2072);
  if (v2)
  {
    v3 = v1 + 2072;
    v4 = *(result + 48);
    v5 = v1 + 2072;
    do
    {
      v6 = *(v2 + 32);
      v7 = v6 >= v4;
      v8 = v6 < v4;
      if (v7)
      {
        v5 = v2;
      }

      v2 = *(v2 + 8 * v8);
    }

    while (v2);
    if (v5 != v3 && v4 >= *(v5 + 32))
    {
      v9 = *(*(result + 32) + 8);
      v10 = *(v5 + 40);
      *(v9 + 48) = *(v5 + 48);
      *(v9 + 40) = v10;
    }
  }

  return result;
}

_DWORD *___ZNK15HALS_IOA2Device19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_37(uint64_t a1)
{
  result = HALS_IOA2Device::_FindCustomControlForDeviceAddress(*(a1 + 48), *(a1 + 56), (*(*(a1 + 40) + 8) + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE425758(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_IOA2Device::IsPropertySettable(AudioObjectPropertyAddress *this, unsigned int a2, AudioObjectPropertyAddress *a3, const AudioObjectPropertyAddress *a4)
{
  if (((*(*&this->mSelector + 96))(this) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector <= 1751474531)
  {
    if (mSelector != 1635087471)
    {
      if (mSelector == 1667329635)
      {
        return 1;
      }

      if (mSelector != 1668641652)
      {
        goto LABEL_15;
      }
    }

    return 0;
  }

  if (mSelector == 1751474532)
  {
    return 0;
  }

  if (mSelector == 1919251299 || mSelector == 1919251302)
  {
    return 0;
  }

LABEL_15:
  HALS_IOA2Device::GetCustomPropertyInfoByAddress(v28, this, a3);
  if (v29)
  {
    IsPropertySettable = 0;
  }

  else
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2000000000;
    v27 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3802000000;
    v20 = __Block_byref_object_copy__25;
    v21 = __Block_byref_object_dispose__26;
    v22 = 0;
    v23 = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v16[2] = ___ZNK15HALS_IOA2Device18IsPropertySettableEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke;
    v16[3] = &unk_1E8674538;
    v16[6] = this;
    v16[7] = a3;
    v16[4] = &v24;
    v16[5] = &v17;
    v11 = (*(*&this->mSelector + 64))(this);
    HALB_CommandGate::ExecuteCommand(v11, v16);
    v13 = v25[3];
    if (v13)
    {
      IsPropertySettable = (*(*v13 + 104))(v13, v13[4], v18 + 5, a4);
      HALS_ObjectMap::ReleaseObject(v25[3], v14);
    }

    else
    {
      IsPropertySettable = HALS_Device::IsPropertySettable(this, v12, a3, a4);
    }

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v24, 8);
  }

  OS::CF::UntypedObject::~UntypedObject(v28);
  return IsPropertySettable;
}

void sub_1DE425A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 80), 8);
  OS::CF::UntypedObject::~UntypedObject((v10 - 48));
  _Unwind_Resume(a1);
}

_DWORD *___ZNK15HALS_IOA2Device18IsPropertySettableEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke(uint64_t a1)
{
  result = HALS_IOA2Device::_FindCustomControlForDeviceAddress(*(a1 + 48), *(a1 + 56), (*(*(a1 + 40) + 8) + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE425A94(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t __Block_byref_object_copy__5915(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 40) = &unk_1F5991188;
  return result;
}

uint64_t ___ZNK15HALS_IOA2Device11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = 0;
  HALB_UCObject::CopyProperty_CFString((v2 + 1976), @"device manufacturer", &v6);
  v3 = v6;
  v4 = *(*(a1 + 32) + 8) + 40;

  return OS::CF::UntypedObject::operator=(v4, v3);
}

void sub_1DE425B50(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZNK15HALS_IOA2Device11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = 0;
  HALB_UCObject::CopyProperty_CFString((v2 + 1976), @"model UID", &v6);
  v3 = v6;
  v4 = *(*(a1 + 32) + 8) + 40;

  return OS::CF::UntypedObject::operator=(v4, v3);
}

void sub_1DE425C00(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK15HALS_IOA2Device11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = CFStringCreateWithCString(0, "Codec", 0x600u);
  v5 = 1;
  if (CFStringCompare(*(v2 + 104), v4, 0))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 2080) != 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  CACFString::~CACFString(&v4);
}

void sub_1DE425CC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CACFString::~CACFString(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE425CB0);
}

BOOL ___ZNK15HALS_IOA2Device11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke_8(uint64_t a1)
{
  result = HALB_UCObject::HasProperty((*(a1 + 40) + 1976), @"headset info");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE425D24(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

BOOL ___ZNK15HALS_IOA2Device11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke_9(uint64_t a1)
{
  result = HALB_UCObject::HasProperty((*(a1 + 40) + 1976), @"legacy UID list");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE425D84(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

BOOL ___ZNK15HALS_IOA2Device11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke_10(uint64_t a1)
{
  result = HALB_UCObject::HasProperty((*(a1 + 40) + 1976), @"allows auto route");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE425DE4(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

_DWORD *___ZNK15HALS_IOA2Device11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke_27(uint64_t a1)
{
  result = HALS_IOA2Device::_FindCustomControlForDeviceAddress(*(a1 + 48), *(a1 + 56), (*(*(a1 + 40) + 8) + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE425E44(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_IOA2Device::CopyResourceBundle(HALS_IOA2Device *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK15HALS_IOA2Device18CopyResourceBundleEv_block_invoke;
  v4[3] = &unk_1E86749B8;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE425F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZNK15HALS_IOA2Device18CopyResourceBundleEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ((*(v2 + 2032) & 1) == 0)
  {
    *(v2 + 2032) = 1;
    v5 = 0;
    v6 = 1;
    CACFString::~CACFString(&v5);
  }

  v3 = *(v2 + 2040);
  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(v3 + 8);
    v4 = *(*(*(a1 + 32) + 8) + 24);

    CFRetain(v4);
  }
}

uint64_t HALS_IOA2Device::_Deactivate(HALS_IOA2Device **this)
{
  HALS_IOA2Device::_CloseConnection(this);
  HALS_IOA2Device::_TeardownStreams(this);
  v2.n128_f64[0] = HALS_IOA2Device::_TeardownControls(this);
  if (*(this + 2032) == 1)
  {
    v3 = this[255];
    if (v3)
    {
      (*(*v3 + 8))(v3, v2.n128_f64[0]);
    }

    *(this + 2032) = 0;
    this[255] = 0;
  }

  v4 = *(this + 504);
  *(this + 504) = 0;
  v5 = (*(*this + 9))(this, v2);
  AMCP::Utility::Dispatch_Queue::remove_mach_port_receiver(v5, v4);

  return HALS_Device::_Deactivate(this);
}

void HALS_IOA2Device::_TeardownStreams(HALS_IOA2Device *this)
{
  v1 = 0;
  v2 = this + 1456;
  v3 = 1;
  do
  {
    v4 = v3;
    v5 = &v2[24 * v1];
    v6 = *v5;
    if (*(v5 + 1) != *v5)
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = *(v6 + 8 * v7);
        (*(*v9 + 8))(v9);
        HALS_ObjectMap::ObjectIsDead(v9, v10);
        v7 = v8;
        v6 = *v5;
        ++v8;
      }

      while (v7 < (*(v5 + 1) - *v5) >> 3);
    }

    v3 = 0;
    *(v5 + 1) = v6;
    v1 = 1;
  }

  while ((v4 & 1) != 0);
}

double HALS_IOA2Device::_TeardownControls(HALS_IOA2Device *this)
{
  v2 = *(this + 188);
  if (*(this + 189) != v2)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = *(v2 + 8 * v3);
      (*(*v5 + 8))(v5);
      HALS_ObjectMap::ObjectIsDead(v5, v6);
      v3 = v4;
      v2 = *(this + 188);
      ++v4;
    }

    while (v3 < (*(this + 189) - v2) >> 3);
  }

  *(this + 189) = v2;
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 192));
  *(this + 191) = this + 1536;
  *(this + 96) = 0u;
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 195));
  *(this + 194) = this + 1560;
  result = 0.0;
  *(this + 1560) = 0u;
  return result;
}

void HALS_IOA2Device::~HALS_IOA2Device(HALS_IOA2Device *this)
{
  HALS_IOA2Device::~HALS_IOA2Device(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F596E0C8;
  v2 = *(this + 243);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    HALS_ObjectMap::ObjectIsDead(*(this + 243), v3);
    *(this + 243) = 0;
  }

  v7[0] = 0;
  v7[1] = 0;
  HALS_System::GetInstance(&v8, 0, v7);
  HALS_IOContext_Manager::destroy_engine_for_device(*(v8 + 1744), this);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 259));
  CACFArray::~CACFArray((this + 2048));
  HALB_MachPort::~HALB_MachPort((this + 2016));
  HALB_UCObject::~HALB_UCObject((this + 1976));
  OS::CF::UntypedObject::~UntypedObject((this + 1952));
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 1608));
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 195));
  std::__function::__value_func<BOOL ()(AudioObjectPropertyAddress const&,AudioObjectPropertyAddress const&)>::~__value_func[abi:ne200100](this + 1576);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 192));
  v4 = *(this + 188);
  if (v4)
  {
    *(this + 189) = v4;
    operator delete(v4);
  }

  for (i = 0; i != -48; i -= 24)
  {
    v6 = *(this + i + 1480);
    if (v6)
    {
      *(this + i + 1488) = v6;
      operator delete(v6);
    }
  }

  HALS_Device::~HALS_Device(this);
}

uint64_t std::__function::__value_func<BOOL ()(AudioObjectPropertyAddress const&,AudioObjectPropertyAddress const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void HALS_IOA2Device::Activate(HALS_IOA2Device *this)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *(this + 4);
  HALS_IOA2Device::_UpdateStreams(this, v2);
}

void sub_1DE4269FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, char a28)
{
  MEMORY[0x1E12C1730](v28, 0x10E3C405A900D00);
  applesauce::raii::v1::detail::ScopeGuard<HALS_IOA2Device::Activate(void)::$_1,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(&a26);
  applesauce::raii::v1::detail::ScopeGuard<HALS_IOA2Device::Activate(void)::$_0,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(&a28);
  _Unwind_Resume(a1);
}

void ___ZN15HALS_IOA2Device8ActivateEv_block_invoke(uint64_t a1)
{
  v73 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = HALS_ObjectMap::CopyObjectByObjectID(v1);
  v3 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v3)
    {
      *buf = 136315906;
      *&buf[4] = "HALS_IOA2Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2272;
      *&buf[18] = 2080;
      *&buf[20] = v2 + 164;
      LOWORD(v69[0]) = 1024;
      *(v69 + 2) = v1;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOA2Device::IOAudio2DeviceNotificationPortMessageHandler: %s|%d +++++++++------>", buf, 0x22u);
    }

    v5 = *(v2 + 2016);
    if (v5)
    {
      memset(buf, 0, 24);
      v7 = mach_msg(buf, 2, 0, 0x448u, v5, 0, 0);
      if (!v7)
      {
        if (v69[0])
        {
          v8 = 0;
          v9.i32[1] = 0;
          while (1)
          {
            v10 = &v69[8 * v8 + 1];
            v11 = v10[1];
            if (v11 > 1735354733)
            {
              if (v11 == 1735354734 || v11 == 1751215220)
              {
                v9.i32[1] = 0;
                memset(v63, 0, 32);
                if (v11 == 1751215220 || v11 == 1735354734)
                {
                  *&v62.mSelector = 0x676C6F62676F6E65;
                  v62.mElement = 0;
                  CAPropertyAddressList::AppendUniqueItem(v63, &v62, v6);
                  v23 = *v63;
                  if (*v63 != *&v63[8])
                  {
                    HALS_Object::PropertiesChanged(v2, *(v2 + 16), 0, -1431655765 * ((*&v63[8] - *v63) >> 2), *v63);
                  }

                  if (v23)
                  {
                    operator delete(v23);
                  }
                }
              }

              else if (v11 == 1886547824)
              {
                *(v2 + 2008) = 1;
                v24 = *v10;
                v25 = (v2 + 16);
                if (*v10)
                {
                  v26 = 0;
                  v27 = *(v2 + 1504);
                  while ((*(v2 + 1512) - v27) >> 3 > v26)
                  {
                    v28 = *(v27 + 8 * v26++);
                    if (v28)
                    {
                      v29 = v28[18] == v24;
                    }

                    else
                    {
                      v29 = 0;
                    }

                    if (v29)
                    {
                      goto LABEL_53;
                    }
                  }

                  v28 = 0;
LABEL_53:
                  v33 = 0;
                  v34 = 1;
                  do
                  {
                    v35 = v34;
                    v37 = (v2 + 1456 + 24 * v33);
                    v36 = *v37;
                    v38 = v37[1] - *v37;
                    if (v38)
                    {
                      v39 = 0;
                      v40 = v38 >> 3;
                      v41 = 1;
                      while (1)
                      {
                        v42 = *(v36 + 8 * v39);
                        if (v42[18] == v24 && !v42[14])
                        {
                          break;
                        }

                        v39 = v41;
                        if (v40 <= v41++)
                        {
                          goto LABEL_59;
                        }
                      }

                      v25 = v42 + 4;
                      goto LABEL_63;
                    }

LABEL_59:
                    v34 = 0;
                    v33 = 1;
                  }

                  while ((v35 & 1) != 0);
                  if (!v28)
                  {
                    goto LABEL_64;
                  }

                  HALS_IOA2Control::SynchronizeWithRegistry(v28);
                  v25 = v28 + 4;
                }

LABEL_63:
                v28 = *v25;
LABEL_64:
                v9.i32[0] = v10[2];
                v44 = vrev64_s16(*&vmovl_u8(v9));
                v45 = vuzp1_s8(v44, v44);
                v62.mSelector = v45.i32[0];
                LOBYTE(v62.mScope) = 0;
                v45.i32[0] = v10[3];
                v46 = vrev64_s16(*&vmovl_u8(v45));
                v57 = vuzp1_s8(v46, v46).u32[0];
                v58 = 0;
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                {
                  v48 = *(v10 + 2);
                  *v63 = 136316418;
                  *&v63[4] = "HALS_IOA2Device.cpp";
                  *&v63[12] = 1024;
                  *&v63[14] = 2333;
                  *&v63[18] = 1024;
                  *&v63[20] = v28;
                  *&v63[24] = 2080;
                  *&v63[26] = &v62;
                  v64 = 2080;
                  v65 = &v57;
                  v66 = 1024;
                  v67 = v48;
                  _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOA2Device::IOAudio2DeviceNotificationPortMessageHandler: property changed: ID: %d Address: '%s', '%s', %d", v63, 0x32u);
                }

                if (v28)
                {
                  v49 = *(v10 + 2);
                  *&v59.mSelector = *(v10 + 1);
                  v59.mElement = v49;
                  HALS_NotificationManager::PropertiesChanged(v28, 0, 1, &v59, v47);
                }
              }

              goto LABEL_68;
            }

            if (v11 != 1668247142)
            {
              break;
            }

            HALS_IOA2Device::HandleConfigChange(v2, &v69[8 * v8 + 1], 0);
LABEL_68:
            if (++v8 >= v69[0])
            {
              goto LABEL_69;
            }
          }

          if (v11 != 1668443751 && v11 != 1668702572)
          {
            goto LABEL_68;
          }

          v13 = *v10;
          *v63 = 0;
          *&v63[8] = v63;
          *&v63[16] = 0x2000000000uLL;
          *v70 = MEMORY[0x1E69E9820];
          *&v70[8] = 0x40000000;
          *&v70[16] = ___ZNK15HALS_IOA2Device17CopyControlByUCIDEj_block_invoke;
          *&v70[24] = &unk_1E8674358;
          *&v70[32] = v63;
          v71 = v2;
          v72 = v13;
          v14 = (*(*v2 + 64))(v2);
          HALB_CommandGate::ExecuteCommand(v14, v70);
          v15 = *(*&v63[8] + 24);
          _Block_object_dispose(v63, 8);
          if (!v15)
          {
LABEL_51:
            HALS_ObjectMap::ReleaseObject(v15, v16);
            goto LABEL_68;
          }

          memset(v70, 0, 32);
          v17 = v10[1];
          if (v17 == 1668443751)
          {
            *(v2 + 2008) = 1;
            HALS_IOA2Control::SynchronizeWithRegistry(v15);
            v20 = (*v15 + 216);
          }

          else
          {
            if (v17 != 1668702572)
            {
              v30 = 0;
              v31 = 0;
              goto LABEL_47;
            }

            v18 = v10[2];
            v60[0] = MEMORY[0x1E69E9820];
            v60[1] = 0x40000000;
            v60[2] = ___ZN16HALS_IOA2Control12PushNewValueEi_block_invoke;
            v60[3] = &__block_descriptor_tmp_80_12605;
            v60[4] = v15;
            v61 = v18;
            v19 = (*(*v15 + 64))(v15);
            HALB_CommandGate::ExecuteCommand(v19, v60);
            v20 = (*v15 + 208);
          }

          (*v20)(v15, v70);
          v30 = *v70;
          v31 = *&v70[8];
LABEL_47:
          v32 = -1431655765 * ((v31 - v30) >> 2);
          if (v32)
          {
            HALS_Object::PropertiesChanged(v2, v15[4], 0, v32, v30);
            v30 = *v70;
          }

          if (v30)
          {
            *&v70[8] = v30;
            operator delete(v30);
          }

          goto LABEL_51;
        }

LABEL_69:
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *v63 = 136315906;
          *&v63[4] = "HALS_IOA2Device.cpp";
          *&v63[12] = 1024;
          *&v63[14] = 2349;
          *&v63[18] = 2080;
          *&v63[20] = v2 + 164;
          *&v63[28] = 1024;
          *&v63[30] = v1;
          v50 = MEMORY[0x1E69E9C10];
          v51 = "%25s:%-5d  HALS_IOA2Device::IOAudio2DeviceNotificationPortMessageHandler: %s|%d <------+++++++++";
          v52 = v63;
          v53 = 34;
LABEL_73:
          _os_log_impl(&dword_1DE1F9000, v50, OS_LOG_TYPE_DEFAULT, v51, v52, v53);
          goto LABEL_74;
        }

        goto LABEL_74;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v55 = mach_error_string(v7);
        *v70 = 136315906;
        *&v70[4] = "HALB_MachPort.cpp";
        *&v70[12] = 1024;
        *&v70[14] = 240;
        *&v70[18] = 1024;
        *&v70[20] = v7;
        *&v70[24] = 2080;
        *&v70[26] = v55;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALB_MachPort::ReceiveMessage: mach_msg() returned error 0x%X: '%s'", v70, 0x22u);
      }
    }

    else
    {
      v7 = 268451842;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v70 = 136315650;
      *&v70[4] = "HALS_IOA2Device.cpp";
      *&v70[12] = 1024;
      *&v70[14] = 2282;
      *&v70[18] = 1024;
      *&v70[20] = v7;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Device::_IOAudio2DeviceNotificationPortMessageHandler: failed to receive the message, Error: 0x%X", v70, 0x18u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v7;
  }

  if (v3)
  {
    *buf = 136315650;
    *&buf[4] = "HALS_IOA2Device.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 2355;
    *&buf[18] = 1024;
    *&buf[20] = v1;
    v50 = MEMORY[0x1E69E9C10];
    v51 = "%25s:%-5d  HALS_IOA2Device::IOAudio2DeviceNotificationPortMessageHandler: got a message for a non-existent device (%d)";
    v52 = buf;
    v53 = 24;
    goto LABEL_73;
  }

LABEL_74:
  HALS_ObjectMap::ReleaseObject(v2, v4);
  v54 = *MEMORY[0x1E69E9840];
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<HALS_IOA2Device::Activate(void)::$_4,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(uint64_t a1)
{
  if (MEMORY[0x1E12C16E0]() > *a1)
  {
    v2 = *(a1 + 8);
    if (*(v2 + 1968) == 1)
    {
      HALS_IOA2Device::_CloseConnection(v2);
    }
  }

  return a1;
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<HALS_IOA2Device::Activate(void)::$_3,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(uint64_t a1)
{
  if (MEMORY[0x1E12C16E0]() > *a1)
  {
    v2 = *(a1 + 8);
    v3 = v2[504];
    v2[504] = 0;
    v4 = (*(*v2 + 72))(v2);
    AMCP::Utility::Dispatch_Queue::remove_mach_port_receiver(v4, v3);
  }

  return a1;
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<HALS_IOA2Device::Activate(void)::$_2,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(uint64_t a1)
{
  if (MEMORY[0x1E12C16E0]() > *a1)
  {
    v2 = *(a1 + 8);
    (*(**(v2 + 1944) + 8))(*(v2 + 1944));
    HALS_ObjectMap::ObjectIsDead(*(v2 + 1944), v3);
    *(v2 + 1944) = 0;
  }

  return a1;
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<HALS_IOA2Device::Activate(void)::$_1,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(uint64_t a1)
{
  if (MEMORY[0x1E12C16E0]() > *a1)
  {
    HALS_IOA2Device::_TeardownControls(*(a1 + 8));
  }

  return a1;
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<HALS_IOA2Device::Activate(void)::$_0,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(uint64_t a1)
{
  if (MEMORY[0x1E12C16E0]() > *a1)
  {
    HALS_IOA2Device::_TeardownStreams(*(a1 + 8));
  }

  return a1;
}

void ___ZNK15HALS_IOA2Device17CopyControlByUCIDEj_block_invoke(uint64_t a1, HALS_Object *a2)
{
  v2 = 0;
  v3 = *(a1 + 40);
  v4 = *(v3 + 1512);
  v5 = *(v3 + 1504);
  v6 = (v4 - v5) >> 3;
  while (v6 > v2)
  {
    v7 = *(v5 + 8 * v2++);
    if (v7)
    {
      v8 = *(v7 + 72) == *(a1 + 48);
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      goto LABEL_10;
    }
  }

  v7 = 0;
LABEL_10:
  *(*(*(a1 + 32) + 8) + 24) = v7;
  HALS_ObjectMap::RetainObject(*(*(*(a1 + 32) + 8) + 24), a2);
}

uint64_t std::__function::__value_func<BOOL ()(AudioObjectPropertyAddress const&,AudioObjectPropertyAddress const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t _ZNKSt3__110__function6__funcIZN17CAPropertyAddress8LessThanC1EvEUlRKT_RKT0_E_NS_9allocatorISA_EEFbRK26AudioObjectPropertyAddressSF_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN17CAPropertyAddress8LessThanC1EvEUlRKT_RKT0_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL _ZNSt3__110__function6__funcIZN17CAPropertyAddress8LessThanC1EvEUlRKT_RKT0_E_NS_9allocatorISA_EEFbRK26AudioObjectPropertyAddressSF_EEclESF_SF_(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = a2[1];
  v4 = a3[1];
  v5 = v3 >= v4;
  if (v3 == v4)
  {
    v5 = *a2 >= *a3;
    if (*a2 == *a3)
    {
      v5 = a2[2] >= a3[2];
    }
  }

  return !v5;
}

uint64_t std::unordered_set<unsigned int>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a1, *(i + 4));
  }

  return a1;
}

uint64_t std::function<void ()(HALS_Client *,BOOL)>::operator()(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a2;
  v4 = a3;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v5, &v4);
}

BOOL HALS_ReferenceStreamStateManager::GetReferenceStreamStateForClient(std::__shared_mutex_base *this, int a2)
{
  std::__shared_mutex_base::lock_shared(this);
  v4 = *&this[1].__mut_.__m_.__opaque[8];
  if (v4)
  {
    while (1)
    {
      v5 = *(v4 + 4);
      v6 = v5 == a2;
      if (v5 == a2)
      {
        break;
      }

      v4 = *v4;
      if (!v4)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v6 = 0;
  }

  std::__shared_mutex_base::unlock_shared(this);
  return v6;
}

BOOL HALS_ReferenceStreamStateManager::ReferenceStreamIsEnabledForAnyClientOrContext(std::__shared_mutex_base *this)
{
  std::__shared_mutex_base::lock_shared(this);
  v2 = *&this[1].__mut_.__m_.__opaque[16];
  sig = this[1].__gate1_.__cv_.__sig;
  std::__shared_mutex_base::unlock_shared(this);
  return (v2 | sig) != 0;
}

uint64_t AMCP::get_object_property_traits_list(AMCP *this)
{
  {
    AMCP::get_object_property_traits_list(void)::s_indesctructible_property_traits_list_ptr = 0;
  }

  if (atomic_load_explicit(&AMCP::get_object_property_traits_list(void)::once, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&AMCP::get_object_property_traits_list(void)::once, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_object_property_traits_list(void)::$_0 &&>>);
  }

  return AMCP::get_object_property_traits_list(void)::s_indesctructible_property_traits_list_ptr;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_object_property_traits_list(void)::$_0 &&>>()
{
  v17[6] = *MEMORY[0x1E69E9840];
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v0, 1768189556, 1, 1, 0, &AMCP::Property_Traits<1768189556u>::k_valid_scopes, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v1, 1650682995, 1, 1, 0, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v2, 1668047219, 1, 1, 0, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v3, 1870098034, 1, 1, 0, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v4, 1869638759, 1, 1, 0, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, 0, 1869638759, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v5, 1870097955, 1, 0, 0, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, 0, 1870098020, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v6, 1819173229, 0, 0, 1, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, 0, 1819173229, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v7, 1819111268, 0, 0, 0, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, 0, 1819111268, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v8, 1819107691, 0, 0, 0, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, 0, 1819107691, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v9, 1768124270, 0, 0, 0, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, 0, 1768124270, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v10, 1667330160, 0, 0, 0, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, 0, 1667330160, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v11, 1936618861, 0, 0, 0, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, 0, 1936618861, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v12, 1719105134, 0, 0, 0, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, AMCP::Property_Traits<1818454126u>::k_valid_scopes, 0, 1719105134, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v13, 1818454126, 0, 0, 0, AMCP::Property_Traits<1818454126u>::k_valid_scopes, &AMCP::Property_Traits<1818452846u>::k_valid_scopes, -1, 1818454126, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v14, 1818452846, 0, 0, 0, &AMCP::Property_Traits<1818452846u>::k_valid_scopes, &AMCP::Property_Traits<1818455662u>::k_valid_scopes, -1, 1818452846, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v15, 1818455662, 0, 0, 0, &AMCP::Property_Traits<1818455662u>::k_valid_scopes, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, -1, 1818455662, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v16, 1920168547, 0, 0, 0, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, &AMCP::Property_Traits<1668575852u>::k_valid_scopes, 0, 0, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v17, 1668575852, 0, 0, 0, &AMCP::Property_Traits<1668575852u>::k_valid_scopes, &AMCP::Property_Traits<1885956452u>::k_valid_scopes, 0, 1668575852, 14);
  operator new();
}

void sub_1DE427F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v13 = v12;
  MEMORY[0x1E12C1730](v13, 0x20C40960023A9);
  v15 = 864;
  while (1)
  {
    v16 = *(&a12 + v15 - 40);
    if (v16)
    {
      *(&a12 + v15 - 32) = v16;
      operator delete(v16);
    }

    v15 -= 48;
    if (!v15)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t AMCP::get_device_property_traits_list(AMCP *this)
{
  {
    AMCP::get_device_property_traits_list(void)::s_indesctructible_property_traits_list_ptr = 0;
  }

  if (atomic_load_explicit(&AMCP::get_device_property_traits_list(void)::once, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&AMCP::get_device_property_traits_list(void)::once, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_device_property_traits_list(void)::$_0 &&>>);
  }

  return AMCP::get_device_property_traits_list(void)::s_indesctructible_property_traits_list_ptr;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::get_device_property_traits_list(void)::$_0 &&>>()
{
  v32[6] = *MEMORY[0x1E69E9840];
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v0, 1768189556, 1, 1, 0, &AMCP::Property_Traits<1768189556u>::k_valid_scopes, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v1, 1650682995, 1, 1, 0, &AMCP::Property_Traits<1650682995u>::k_valid_scopes, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v2, 1668047219, 1, 1, 0, &AMCP::Property_Traits<1668047219u>::k_valid_scopes, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, 0, 0, 6);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v3, 1870098034, 1, 1, 0, &AMCP::Property_Traits<1870098034u>::k_valid_scopes, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, 0, 0, 15);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v4, 1869638759, 1, 1, 0, &AMCP::Property_Traits<1869638759u>::k_valid_scopes, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, 0, 1869638759, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v5, 1870097955, 1, 0, 0, &AMCP::Property_Traits<1870097955u>::k_valid_scopes, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, 0, 1870098020, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v6, 1819173229, 0, 0, 1, &AMCP::Property_Traits<1819173229u>::k_valid_scopes, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, 0, 1819173229, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v7, 1819111268, 0, 0, 0, &AMCP::Property_Traits<1819111268u>::k_valid_scopes, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, 0, 1819111268, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v8, 1819107691, 0, 0, 0, &AMCP::Property_Traits<1819107691u>::k_valid_scopes, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, 0, 1819107691, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v9, 1768124270, 0, 0, 0, &AMCP::Property_Traits<1768124270u>::k_valid_scopes, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, 0, 1768124270, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v10, 1667330160, 0, 0, 0, &AMCP::Property_Traits<1667330160u>::k_valid_scopes, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, 0, 1667330160, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v11, 1936618861, 0, 0, 0, &AMCP::Property_Traits<1936618861u>::k_valid_scopes, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, 0, 1936618861, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v12, 1719105134, 0, 0, 0, &AMCP::Property_Traits<1719105134u>::k_valid_scopes, AMCP::Property_Traits<1818454126u>::k_valid_scopes, 0, 1719105134, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v13, 1818454126, 0, 0, 0, AMCP::Property_Traits<1818454126u>::k_valid_scopes, &AMCP::Property_Traits<1818452846u>::k_valid_scopes, -1, 1818454126, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v14, 1818452846, 0, 0, 0, &AMCP::Property_Traits<1818452846u>::k_valid_scopes, &AMCP::Property_Traits<1818455662u>::k_valid_scopes, -1, 1818452846, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v15, 1818455662, 0, 0, 0, &AMCP::Property_Traits<1818455662u>::k_valid_scopes, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, -1, 1818455662, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v16, 1920168547, 0, 0, 0, &AMCP::Property_Traits<1920168547u>::k_valid_scopes, &AMCP::Property_Traits<1668575852u>::k_valid_scopes, 0, 0, 5);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v17, 1668575852, 0, 0, 0, &AMCP::Property_Traits<1668575852u>::k_valid_scopes, &AMCP::Property_Traits<1885956452u>::k_valid_scopes, 0, 1668575852, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v18, 1969841184, 1, 1, 0, &AMCP::Property_Traits<1969841184u>::k_valid_scopes, &AMCP::Property_Traits<1836411236u>::k_valid_scopes, 0, 1668639076, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v19, 1953653102, 1, 0, 0, &AMCP::Property_Traits<1953653102u>::k_valid_scopes, &AMCP::Property_Traits<1651007861u>::k_valid_scopes, 0, 1953653102, 23);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v20, 1668049764, 1, 0, 0, &AMCP::Property_Traits<1668049764u>::k_valid_scopes, &AMCP::Property_Traits<1819569763u>::k_valid_scopes, 0, 1668049764, 7);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v21, 1819569763, 1, 0, 0, &AMCP::Property_Traits<1819569763u>::k_valid_scopes, &AMCP::Property_Traits<1853059700u>::k_valid_scopes, 0, 1819569763, 24);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v22, 1853059700, 1, 0, 1, &AMCP::Property_Traits<1853059700u>::k_valid_scopes, &AMCP::Property_Traits<1853059619u>::k_valid_scopes, 0, 1853059700, 17);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v23, 1853059619, 1, 0, 0, &AMCP::Property_Traits<1853059619u>::k_valid_scopes, &AMCP::Property_Traits<1935763060u>::k_valid_scopes, 0, 1853059619, 25);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v24, 1836411236, 0, 0, 0, &AMCP::Property_Traits<1836411236u>::k_valid_scopes, &AMCP::Property_Traits<1751737454u>::k_valid_scopes, 0, 1836411236, 4);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v25, 1935763060, 1, 0, 0, &AMCP::Property_Traits<1935763060u>::k_valid_scopes, &AMCP::Property_Traits<1937009955u>::k_valid_scopes, 0, 1935763060, 24);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v26, 1937009955, 1, 0, 0, &AMCP::Property_Traits<1937009955u>::k_valid_scopes, &AMCP::Property_Traits<1685222501u>::k_valid_scopes, 0, 1937009955, 14);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v27, 1685222501, 0, 0, 0, &AMCP::Property_Traits<1685222501u>::k_valid_scopes, &AMCP::Property_Traits<1936879204u>::k_valid_scopes, 0, 1685222501, 2);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v28, 1936879204, 0, 0, 0, &AMCP::Property_Traits<1936879204u>::k_valid_scopes, &AMCP::Property_Traits<1684434036u>::k_valid_scopes, 0, 1936876644, 27);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v29, 1684434036, 1, 0, 0, &AMCP::Property_Traits<1684434036u>::k_valid_scopes, &AMCP::Property_Traits<1936092276u>::k_valid_scopes, 0, 1684434036, 2);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v30, 1936092276, 1, 0, 0, &AMCP::Property_Traits<1936092276u>::k_valid_scopes, &AMCP::Property_Traits<1684301171u>::k_valid_scopes, 0, 1936092276, 2);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(&v31, 1684301171, 0, 0, 0, &AMCP::Property_Traits<1684301171u>::k_valid_scopes, &AMCP::Property_Traits<1667523955u>::k_valid_scopes, 0, 1684301171, 3);
  AMCP::Live_Property_Traits::Live_Property_Traits<unsigned int const*>(v32, 1667523955, 0, 0, 1, &AMCP::Property_Traits<1667523955u>::k_valid_scopes, &AMCP::Property_Traits<1935960434u>::k_valid_scopes, 0, 1667523955, 3);
  operator new();
}

void sub_1DE4288F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v13 = v12;
  MEMORY[0x1E12C1730](v13, 0x20C40960023A9);
  v15 = 1584;
  while (1)
  {
    v16 = *(&a12 + v15 - 40);
    if (v16)
    {
      *(&a12 + v15 - 32) = v16;
      operator delete(v16);
    }

    v15 -= 48;
    if (!v15)
    {
      _Unwind_Resume(a1);
    }
  }
}

void *HALS_MultiChannelMixer::InitializeGainTables(void *this)
{
  v56 = *MEMORY[0x1E69E9840];
  v1 = this[1];
  if (this[2] != v1)
  {
    v2 = this;
    for (i = 0; i < 0xCCCCCCCCCCCCCCCDLL * ((*(v2 + 16) - v1) >> 4); ++i)
    {
      std::vector<std::vector<std::byte>>::clear[abi:ne200100]((v1 + 80 * i + 56));
      v4 = *(v2 + 8);
      if (0xCCCCCCCCCCCCCCCDLL * ((*(v2 + 16) - v4) >> 4) <= i)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      if ((*(v2 + 44) & 0x20) != 0)
      {
        v5 = 1;
      }

      else
      {
        v5 = *(v2 + 60);
      }

      v6 = v4 + 80 * i;
      v7 = *(v6 + 36);
      LODWORD(v55) = 0;
      std::vector<float>::vector[abi:ne200100](&__p, v5);
      v8 = *(v6 + 64);
      v9 = *(v6 + 56);
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3);
      v11 = v7 - v10;
      if (v7 <= v10)
      {
        if (v7 >= v10)
        {
          goto LABEL_25;
        }

        v15 = (v9 + 24 * v7);
        if (v8 != v15)
        {
          v16 = *(v6 + 64);
          do
          {
            v18 = *(v16 - 3);
            v16 -= 3;
            v17 = v18;
            if (v18)
            {
              *(v8 - 2) = v17;
              operator delete(v17);
            }

            v8 = v16;
          }

          while (v16 != v15);
        }
      }

      else
      {
        v12 = *(v6 + 72);
        if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) < v11)
        {
          v48 = v6 + 56;
          v13 = 0x5555555555555556 * ((v12 - v9) >> 3);
          if (v13 <= v7)
          {
            v13 = v7;
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v12 - v9) >> 3) >= 0x555555555555555)
          {
            v14 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v14 = v13;
          }

          std::allocator<std::vector<float>>::allocate_at_least[abi:ne200100](v14);
        }

        v15 = &v8[3 * v11];
        v19 = 24 * v7 - 8 * ((v8 - v9) >> 3);
        do
        {
          *v8 = 0;
          v8[1] = 0;
          v8[2] = 0;
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v8, __p.__begin_, __p.__end_, (__p.__end_ - __p.__begin_) >> 2);
          v8 += 3;
          v19 -= 24;
        }

        while (v19);
      }

      *(v6 + 64) = v15;
LABEL_25:
      if (__p.__begin_)
      {
        __p.__end_ = __p.__begin_;
        operator delete(__p.__begin_);
      }

      v20 = *(v2 + 8);
      if (0xCCCCCCCCCCCCCCCDLL * ((*(v2 + 16) - v20) >> 4) <= i)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v21 = *(v6 + 36);
      v22 = *(v20 + 80 * i);
      v52 = 0x6F75747073726E64;
      v53 = 0;
      v51[0] = 0;
      v51[1] = 0;
      HALS_System::GetInstance(__x, 0, v51);
      v23 = HALS_System::sIsInitialized;
      if (v46)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v46);
      }

      if ((v23 & 1) == 0)
      {
        goto LABEL_69;
      }

      v50[0] = 0;
      v50[1] = 0;
      HALS_System::GetInstance(__x, 0, v50);
      v25 = HALS_System::CopyDeviceByObjectID(*__x, v22, 0);
      if (v46)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v46);
      }

      if (!v25 || !(*(*v25 + 96))(v25, v22, &v52, 0))
      {
        v31 = 0;
        goto LABEL_60;
      }

      TotalNumberChannels = HALS_Device::GetTotalNumberChannels(v25, 0);
      __x[0] = 0;
      std::vector<char>::vector[abi:ne200100](&__p, 32);
      begin = __p.__begin_;
      *__p.__begin_ = 0;
      *(begin + 2) = 0;
      if (TotalNumberChannels <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = TotalNumberChannels;
      }

      v29 = (20 * v28 + 12);
      __x[0] = 0;
      end = __p.__end_;
      if (v29 <= (__p.__end_ - begin))
      {
        if (v29 < (__p.__end_ - begin))
        {
          end = begin + v29;
          __p.__end_ = &v29[begin];
        }
      }

      else
      {
        std::vector<char>::__append(&__p, &v29[-(__p.__end_ - begin)], __x);
        begin = __p.__begin_;
        end = __p.__end_;
      }

      *(begin + 2) = TotalNumberChannels;
      v49 = 0;
      (*(*v25 + 120))(v25, v22, &v52, (end - begin), &v49, begin, 0, 0, 0);
      v32 = __p.__begin_;
      v33 = *__p.__begin_;
      if (*__p.__begin_ > 8519687)
      {
        if (v33 <= 12713991)
        {
          if (v33 != 8519688 && v33 != 12582924)
          {
            v34 = 12648464;
            goto LABEL_57;
          }

LABEL_58:
          v31 = 1;
LABEL_59:
          __p.__end_ = v32;
          operator delete(v32);
          goto LABEL_60;
        }

        if (v33 == 12713992 || v33 == 12779530)
        {
          goto LABEL_58;
        }

        v34 = 12845066;
LABEL_57:
        if (v33 == v34)
        {
          goto LABEL_58;
        }

        v31 = 0;
        goto LABEL_59;
      }

      if (v33 > 7929861)
      {
        if (v33 == 7929862 || v33 == 8257544)
        {
          goto LABEL_58;
        }

        v34 = 8388616;
        goto LABEL_57;
      }

      if (v33)
      {
        v34 = 7405571;
        goto LABEL_57;
      }

      v55 = xmmword_1DE7580B0;
      v46 = 0;
      *&v47 = 0;
      *__x = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(__x, &v55, &v56, 4uLL);
      v39 = (v46 - *__x) >> 2;
      if (v39 >= *(v32 + 2))
      {
        v39 = *(v32 + 2);
      }

      if (v39)
      {
        if (*(v32 + 3) == **__x)
        {
          v40 = 0;
          v41 = (v32 + 32);
          while (v39 - 1 != v40)
          {
            v42 = *v41;
            v41 += 5;
            v43 = *(*__x + 4 + 4 * v40++);
            if (v42 != v43)
            {
              v31 = v40 >= v39;
              goto LABEL_88;
            }
          }

          v31 = 1;
        }

        else
        {
          v31 = 0;
        }

LABEL_88:
        operator delete(*__x);
        goto LABEL_89;
      }

      v31 = 1;
      if (*__x)
      {
        goto LABEL_88;
      }

LABEL_89:
      v32 = __p.__begin_;
      if (__p.__begin_)
      {
        goto LABEL_59;
      }

LABEL_60:
      HALS_ObjectMap::ReleaseObject(v25, v24);
      if (v31)
      {
        v36 = v21 > 2 && *v2 == 1;
        this = HALS_MultiChannelMixer::GenerateDefaultGainTable(*(v6 + 56), *(v6 + 64));
        if (v36)
        {
          v37 = *(v6 + 56);
          __p.__begin_ = 0x3F0000003F000000;
          v46 = 0;
          *&v47 = 0;
          *__x = 0;
          std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>();
        }

        goto LABEL_70;
      }

LABEL_69:
      this = HALS_MultiChannelMixer::GenerateDefaultGainTable(*(v6 + 56), *(v6 + 64));
LABEL_70:
      v1 = *(v2 + 8);
      if (*v2 == 2 && *(v1 + 80 * i + 48) == 1)
      {
        v38 = *(v2 + 80) + 1;
        *(v2 + 72) = i;
        *(v2 + 80) = v38;
      }
    }
  }

  v44 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1DE429098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<HALS_MultiChannelMixer::StreamInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 80;
        v7 = (v4 - 24);
        std::vector<std::vector<std::byte>>::__destroy_vector::operator()[abi:ne200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *HALS_MultiChannelMixer::GenerateDefaultGainTable(void *result, void *a2)
{
  if (a2 == result)
  {
    goto LABEL_18;
  }

  v2 = 0xAAAAAAAAAAAAAAABLL * (a2 - result);
  v3 = result[1];
  v4 = (v3 - *result) >> 2;
  if (v2 > v4)
  {
    v5 = 0;
    v6 = v4 / v2;
    for (i = result + 1; ; i += 3)
    {
      v8 = *(i - 1);
      v9 = (*i - v8) >> 2;
      if (v9 <= v5)
      {
        break;
      }

      *(v8 + 4 * v5) = v6;
      if (v5 + 1 == v9)
      {
        v5 = 0;
      }

      else
      {
        ++v5;
      }

      if (!--v2)
      {
        return result;
      }
    }

LABEL_17:
    std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
  }

  if (v3 != *result)
  {
    v10 = 0;
    v11 = 0;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    while (v2 > v11)
    {
      v12 = result[3 * v11];
      if (v10 >= (result[3 * v11 + 1] - v12) >> 2)
      {
        goto LABEL_17;
      }

      *(v12 + 4 * v10) = 1065353216;
      v11 = (v11 + 1) % v2;
      if (v4 == ++v10)
      {
        return result;
      }
    }

LABEL_18:
    std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
  }

  return result;
}

void sub_1DE429344(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<float>>::insert(void *a1, void **a2, uint64_t a3)
{
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v17 = *a1;
    v18 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) + 1;
    if (v18 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v19 = a2 - v17;
    v20 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v17) >> 3);
    if (2 * v20 > v18)
    {
      v18 = 2 * v20;
    }

    if (v20 >= 0x555555555555555)
    {
      v21 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v21 = v18;
    }

    v32 = a1;
    if (v21)
    {
      std::allocator<std::vector<float>>::allocate_at_least[abi:ne200100](v21);
    }

    v22 = (8 * (v19 >> 3));
    v29 = 0;
    v30 = v22;
    v31 = v22;
    if (!(0xAAAAAAAAAAAAAAABLL * (v19 >> 3)))
    {
      if (v19 < 1)
      {
        if (v17 == a2)
        {
          v23 = 1;
        }

        else
        {
          v23 = 0x5555555555555556 * (v19 >> 3);
        }

        v33 = a1;
        std::allocator<std::vector<float>>::allocate_at_least[abi:ne200100](v23);
      }

      v22 -= 3 * ((1 - 0x5555555555555555 * (v19 >> 3)) >> 1);
      v30 = v22;
      *&v31 = v22;
    }

    *v22 = 0;
    v22[1] = 0;
    v22[2] = 0;
    *v22 = *a3;
    v22[2] = *(a3 + 16);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    memcpy((v31 + 24), a2, a1[1] - a2);
    v24 = *a1;
    *&v31 = v31 + 24 + a1[1] - a2;
    a1[1] = a2;
    v25 = a2 - v24;
    v26 = v30 - (a2 - v24);
    memcpy(v26, v24, v25);
    v27 = *a1;
    *a1 = v26;
    v28 = a1[2];
    *(a1 + 1) = v31;
    *&v31 = v27;
    *(&v31 + 1) = v28;
    v29 = v27;
    v30 = v27;
    std::__split_buffer<std::vector<float>>::~__split_buffer(&v29);
  }

  else if (a2 == v7)
  {
    *v7 = 0;
    v7[1] = 0;
    v7[2] = 0;
    *v7 = *a3;
    v7[2] = *(a3 + 16);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    a1[1] = v7 + 3;
  }

  else
  {
    v8 = v7 - 3;
    v9 = a1[1];
    if (v7 >= 0x18)
    {
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
      *v7 = *v8;
      v7[2] = *(v7 - 1);
      *v8 = 0;
      *(v7 - 2) = 0;
      *(v7 - 1) = 0;
      v9 = v7 + 3;
    }

    a1[1] = v9;
    if (v7 != a2 + 3)
    {
      v10 = 0;
      v11 = a2 - v7 + 24;
      do
      {
        v12 = &v7[v10 / 8];
        v14 = &v7[v10 / 8 - 3];
        v13 = *v14;
        if (*v14)
        {
          *(v12 - 2) = v13;
          operator delete(v13);
          *v14 = 0;
          v7[v10 / 8 - 2] = 0;
          v7[v10 / 8 - 1] = 0;
        }

        v15 = v12 - 6;
        *v14 = *(v12 - 3);
        *(v12 - 1) = *(v12 - 4);
        *v15 = 0;
        v15[1] = 0;
        v15[2] = 0;
        v10 -= 24;
      }

      while (v11 != v10);
    }

    v16 = *a2;
    if (*a2)
    {
      a2[1] = v16;
      operator delete(v16);
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    *a2 = *a3;
    a2[2] = *(a3 + 16);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}

void std::allocator<std::vector<float>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<float>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

caulk::rt_safe_memory_resource *std::vector<float,caulk::rt_allocator<float>>::__destroy_vector::operator()[abi:ne200100](caulk::rt_safe_memory_resource *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    if ((*(result + 2) - v1) >= 0 && (result = *MEMORY[0x1E69E3C08]) != 0)
    {
      return caulk::rt_safe_memory_resource::rt_deallocate(result, v1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

caulk::rt_safe_memory_resource *std::vector<caulk::rt::vector<float>,caulk::rt_allocator<caulk::rt::vector<float>>>::__destroy_vector::operator()[abi:ne200100](caulk::rt_safe_memory_resource *result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1[1];
    v4 = **result;
    v5 = *result;
    if (v3 != v2)
    {
      v6 = result;
      do
      {
        v3 = (v3 - 24);
        result = std::vector<float,caulk::rt_allocator<float>>::__destroy_vector::operator()[abi:ne200100](v3);
      }

      while (v3 != v2);
      v5 = *v6;
      v4 = **v6;
    }

    v1[1] = v2;
    if (0xAAAAAAAAAAAAAAABLL * ((v5[2] - v4) >> 3) < 0xAAAAAAAAAAAAAABLL && (result = *MEMORY[0x1E69E3C08]) != 0)
    {

      return caulk::rt_safe_memory_resource::rt_deallocate(result, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t std::vector<char,caulk::rt_allocator<char>>::__destroy_vector::operator()[abi:ne200100](uint64_t result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 8) = v1;
    if (*MEMORY[0x1E69E3C08])
    {
      v2 = *(result + 16);
      return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], v1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

caulk::rt_safe_memory_resource *std::__uninitialized_allocator_relocate[abi:ne200100]<caulk::rt_allocator<caulk::rt::vector<float>>,caulk::rt::vector<float>*>(uint64_t a1, caulk::rt_safe_memory_resource *a2, caulk::rt_safe_memory_resource *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = *(v6 + 2);
      *v6 = 0;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      v6 = (v6 + 24);
      a4 += 3;
    }

    while (v6 != a3);
    do
    {
      result = std::vector<float,caulk::rt_allocator<float>>::__destroy_vector::operator()[abi:ne200100](v5);
      v5 = (v5 + 24);
    }

    while (v5 != a3);
  }

  return result;
}

caulk::rt_safe_memory_resource *std::__split_buffer<caulk::rt::vector<float>,caulk::rt_allocator<caulk::rt::vector<float>> &>::~__split_buffer(caulk::rt_safe_memory_resource *result)
{
  v1 = result;
  v3 = *(result + 1);
  for (i = *(result + 2); i != v3; i = *(v1 + 2))
  {
    *(v1 + 2) = i - 24;
    result = std::vector<float,caulk::rt_allocator<float>>::__destroy_vector::operator()[abi:ne200100]((i - 24));
  }

  v4 = *v1;
  if (!*v1)
  {
    return v1;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(v1 + 3) - v4) >> 3) < 0xAAAAAAAAAAAAAABLL)
  {
    result = *MEMORY[0x1E69E3C08];
    if (*MEMORY[0x1E69E3C08])
    {
      caulk::rt_safe_memory_resource::rt_deallocate(result, v4);
      return v1;
    }
  }

  __break(1u);
  return result;
}

void HALS_IOStackDescription::GetFormat(HALS_IOStackDescription *this, AudioStreamBasicDescription *a2)
{
  v3 = *(this + 1);
  v4 = *(this + 2) - v3;
  if (v4)
  {
    if (-1431655765 * (v4 >> 3))
    {
      v6 = *v3;
      if (*(v6 + 108))
      {
        HALS_IODSPInfo::GetClientFormat(&v11, (v6 + 112));
      }

      else
      {
        v7 = *(v6 + 432);
        v11 = *(v6 + 416);
        v12 = v7;
        v13 = *(v6 + 448);
      }

      v8 = v12;
      *&a2->mSampleRate = v11;
      *&a2->mBytesPerPacket = v8;
      *&a2->mBitsPerChannel = v13;
      if (a2->mFormatID == 1819304813)
      {
        v9 = *this;
        v10 = ((8 * a2->mBytesPerFrame / a2->mChannelsPerFrame) >> 3) * *this;
        a2->mBytesPerFrame = v10;
        a2->mChannelsPerFrame = v9;
        a2->mBytesPerPacket = v10;
      }
    }
  }

  else
  {
    *&a2->mBitsPerChannel = 0;
    *&a2->mSampleRate = 0u;
    *&a2->mBytesPerPacket = 0u;
  }
}

uint64_t std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AMCP::IOAudio2::Device_Sub_Object::~Device_Sub_Object(AMCP::IOAudio2::Device_Sub_Object *this)
{
  AMCP::IOAudio2::Device_Sub_Object::~Device_Sub_Object(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5989748;
  v2 = *(this + 5);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t HALS_BufferFactory::acquire_output_buffers(HALS_BufferFactory *this, uint64_t a2, uint64_t a3)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v8[0] = &unk_1F596E7C8;
  v8[1] = a3;
  v8[3] = v8;
  v7 = v8;
  *&v6 = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<HALS_IOStreamGrid::apply_to_streams(std::function<int ()(unsigned long,HALS_IOStreamInfo &)>)::$_0>;
  *(&v6 + 1) = &v7;
  v3 = VisitableVector<HALS_IOStackDescription>::apply<>(this, a2, &v6);
  std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::~__value_func[abi:ne200100](v8);
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1DE429DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<HALS_BufferFactory::acquire_output_buffers(void)::$_0,std::allocator<HALS_BufferFactory::acquire_output_buffers(void)::$_0>,int ()(unsigned long,HALS_IOStreamInfo &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN18HALS_BufferFactory22acquire_output_buffersEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_BufferFactory::acquire_output_buffers(void)::$_0,std::allocator<HALS_BufferFactory::acquire_output_buffers(void)::$_0>,int ()(unsigned long,HALS_IOStreamInfo &)>::operator()(uint64_t a1, unsigned int *a2, uint64_t a3, HALS_IOStreamInfo *a4)
{
  v5 = HALS_BufferFactory::acquire_buffers_non_dsp(*(a1 + 8), *a2, a3, a4);
  if (!v5)
  {
    HALS_BufferFactory::acquire_buffers_for_dsp(*(a3 + 112), *(a3 + 120));
  }

  return v5;
}

uint64_t HALS_BufferFactory::acquire_buffers_non_dsp(HALS_BufferFactory *this, HALB_IOBufferManager_Server *a2, uint64_t a3, HALS_IOStreamInfo *a4)
{
  IOBuffer = HALB_IOBufferManager_Server::GetIOBuffer(this, *(a3 + 8), a2, (a3 + 64));
  *(a3 + 56) = IOBuffer;
  if (!IOBuffer)
  {
    return 2003329396;
  }

  v6 = IOBuffer;
  result = *(a3 + 96);
  if (result)
  {
    if (HALS_IOProcessor::NeedsIntermediate1Buffer(result))
    {
      Buffer = HALB_IOBufferManager_Server::AllocateBuffer(*(a3 + 48));
    }

    else
    {
      Buffer = 0;
    }

    *(a3 + 32) = Buffer;
    if (HALS_IOProcessor::NeedsIntermediate2Buffer(*(a3 + 96)))
    {
      v9 = HALB_IOBufferManager_Server::AllocateBuffer(*(a3 + 48));
    }

    else
    {
      v9 = 0;
    }

    *(a3 + 40) = v9;
    result = HALS_IOProcessor::NeedsLocalBuffer(*(a3 + 96));
    if (result)
    {
      v10 = HALB_IOBufferManager_Server::AllocateBuffer(*(a3 + 24));
      result = 0;
    }

    else
    {
      v10 = *(a3 + 56);
    }

    *(a3 + 16) = v10;
  }

  else
  {
    *(a3 + 16) = v6;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
  }

  return result;
}

HALS_IOStreamInfo *HALS_BufferFactory::acquire_buffers_for_dsp(HALS_IOStreamInfo *this, HALS_IOStreamInfo *a2)
{
  if (this != a2)
  {
    v3 = this;
    do
    {
      *(v3 + 2) = HALB_IOBufferManager_Server::AllocateBuffer(*(v3 + 6));
      this = HALB_IOBufferManager_Server::AllocateBuffer(*(v3 + 10));
      *(v3 + 4) = this;
      v3 = (v3 + 128);
    }

    while (v3 != a2);
  }

  return this;
}

uint64_t std::__function::__func<HALS_BufferFactory::acquire_output_buffers(void)::$_0,std::allocator<HALS_BufferFactory::acquire_output_buffers(void)::$_0>,int ()(unsigned long,HALS_IOStreamInfo &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F596E7C8;
  a2[1] = v2;
  return result;
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_BufferFactory::acquire_input_buffers(void)::$_0>(HALS_BufferFactory ***a1, uint64_t a2, uint64_t a3, HALS_IOStreamInfo *a4)
{
  v5 = HALS_BufferFactory::acquire_buffers_non_dsp(**a1, *(a2 + 8), *a2, a4);
  if (!v5)
  {
    HALS_BufferFactory::acquire_buffers_for_dsp(*(*a2 + 112), *(*a2 + 120));
  }

  return v5;
}

uint64_t std::__function::__func<HALS_BufferFactory::calculate_shared_output_buffer_size(void)::$_0,std::allocator<HALS_BufferFactory::calculate_shared_output_buffer_size(void)::$_0>,int ()(unsigned long,HALS_IOStreamInfo &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN18HALS_BufferFactory35calculate_shared_output_buffer_sizeEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_BufferFactory::calculate_shared_output_buffer_size(void)::$_0,std::allocator<HALS_BufferFactory::calculate_shared_output_buffer_size(void)::$_0>,int ()(unsigned long,HALS_IOStreamInfo &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F596E748;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<HALS_BufferFactory::calculate_output_buffer_size(unsigned int,HALS_IOEngineInfo *)::$_0,std::allocator<HALS_BufferFactory::calculate_output_buffer_size(unsigned int,HALS_IOEngineInfo *)::$_0>,int ()(unsigned long,HALS_IOStreamInfo &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN18HALS_BufferFactory28calculate_output_buffer_sizeEjP17HALS_IOEngineInfoE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_BufferFactory::calculate_output_buffer_size(unsigned int,HALS_IOEngineInfo *)::$_0,std::allocator<HALS_BufferFactory::calculate_output_buffer_size(unsigned int,HALS_IOEngineInfo *)::$_0>,int ()(unsigned long,HALS_IOStreamInfo &)>::operator()(uint64_t a1, int a2, HALS_BufferFactory **this, HALS_IOEngineInfo *a4)
{
  HALS_BufferFactory::calculate_buffer_size_for_non_dsp(this, *(a1 + 8), *(a1 + 16), a4);
  HALS_BufferFactory::calculate_buffer_size_for_dsp(this[14], this[15], *(a1 + 8), *(a1 + 16));
  return 0;
}

uint64_t HALS_BufferFactory::calculate_buffer_size_for_non_dsp(HALS_BufferFactory *this, HALS_IOStreamInfo *a2, uint64_t a3, HALS_IOEngineInfo *a4)
{
  v5 = a2;
  if (*(this + 27))
  {
    v7 = *(this + 14);
    if (*(this + 15) == v7 || v7 == 0)
    {
      v10 = *(this + 57);
    }

    else
    {
      v10 = *v7;
    }

    if (*(v10 + 88))
    {
      HALS_IODSPInfo::GetClientFormat(v12, this + 14);
      goto LABEL_12;
    }

LABEL_13:
    result = 4096;
    goto LABEL_14;
  }

  v10 = *(this + 57);
  if (!*(v10 + 88))
  {
    goto LABEL_13;
  }

  v9 = *(this + 27);
  v12[0] = *(this + 26);
  v12[1] = v9;
  v13 = *(this + 56);
LABEL_12:
  result = HALS_BufferFactory::get_io_buffer_byte_size(v10, v5, a3, v12);
LABEL_14:
  *(this + 6) = result;
  *(this + 12) = result;
  return result;
}

void HALS_BufferFactory::calculate_buffer_size_for_dsp(HALS_BufferFactory *this, HALS_IOStreamInfo *a2, int a3, HALS_IOEngineInfo *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (this != a2)
  {
    v7 = this;
    v8 = MEMORY[0x1E69E9C10];
    do
    {
      v9 = *v7;
      if (*(*v7 + 88))
      {
        if (*(v7 + 25) == 4)
        {
          v10 = 0;
          *(v7 + 6) = 0;
          *(v7 + 10) = 0;
        }

        else
        {
          v12 = *(v7 + 72);
          *buf = *(v7 + 56);
          *&buf[16] = v12;
          v16 = *(v7 + 11);
          io_buffer_byte_size = HALS_BufferFactory::get_io_buffer_byte_size(v9, a3, a4, buf);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_BufferFactory.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 372;
            *&buf[18] = 1024;
            *&buf[20] = io_buffer_byte_size;
            _os_log_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_BufferFactory::calculate_buffer_size_for_dsp(): theIOBufferByteSize = %u", buf, 0x18u);
          }

          *(v7 + 6) = io_buffer_byte_size;
          *(v7 + 10) = io_buffer_byte_size;
          v10 = *(*v7 + 388);
        }

        v11 = 48;
      }

      else
      {
        v10 = 4096;
        *(v7 + 6) = 4096;
        v11 = 40;
      }

      *(v7 + v11) = v10;
      v7 = (v7 + 128);
    }

    while (v7 != a2);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t HALS_BufferFactory::get_io_buffer_byte_size(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    (*(**(a3 + 88) + 344))(*(a3 + 88));
  }

  else
  {
    v7 = *a4;
  }

  if (*(a4 + 8) == 1819304813)
  {
    if ((*(a1 + 377) & 1) != 0 || v7 != *a4)
    {
      a2 *= 24;
    }

    v8 = *(a4 + 24) * a2;
  }

  else
  {
    v8 = *(a4 + 16);
  }

  return (v8 + *(a1 + 388));
}

__n128 std::__function::__func<HALS_BufferFactory::calculate_output_buffer_size(unsigned int,HALS_IOEngineInfo *)::$_0,std::allocator<HALS_BufferFactory::calculate_output_buffer_size(unsigned int,HALS_IOEngineInfo *)::$_0>,int ()(unsigned long,HALS_IOStreamInfo &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F596E6B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_BufferFactory::calculate_input_buffer_size(unsigned int,HALS_IOEngineInfo *)::$_0>(unsigned int **a1, HALS_BufferFactory **a2, uint64_t a3, HALS_IOEngineInfo *a4)
{
  v5 = *a1;
  HALS_BufferFactory::calculate_buffer_size_for_non_dsp(*a2, *v5, *(v5 + 1), a4);
  HALS_BufferFactory::calculate_buffer_size_for_dsp(*(*a2 + 14), *(*a2 + 15), *v5, *(v5 + 1));
  return 0;
}

uint64_t std::__function::__func<HALS_BufferFactory::register_buffers(HALS_IOStreamActiveState const&,unsigned int)::$_1,std::allocator<HALS_BufferFactory::register_buffers(HALS_IOStreamActiveState const&,unsigned int)::$_1>,int ()(unsigned long,HALS_IOStreamInfo &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN18HALS_BufferFactory16register_buffersERK24HALS_IOStreamActiveStatejE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_BufferFactory::register_buffers(HALS_IOStreamActiveState const&,unsigned int)::$_1,std::allocator<HALS_BufferFactory::register_buffers(HALS_IOStreamActiveState const&,unsigned int)::$_1>,int ()(unsigned long,HALS_IOStreamInfo &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = **(a1 + 16);
  if (*(a3 + 108))
  {
    HALS_BufferFactory::register_buffers_for_dsp(a3, v3);
  }

  else
  {
    HALS_BufferFactory::register_buffers_non_dsp(a3, v3);
  }

  return 0;
}

void *HALS_BufferFactory::register_buffers_for_dsp(void *result, uint64_t a2)
{
  v2 = result[14];
  v3 = result[15];
  if (v2 != v3)
  {
    v5 = result;
    do
    {
      result = *(*v2 + 88);
      if (result)
      {
        if (*(v2 + 16))
        {
          result = (*(*result + 672))(result, *(v5 + 8), *(v2 + 96), a2, *(v2 + 24));
        }
      }

      v2 += 128;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_1DE42A720(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_BufferFactory::register_buffers_non_dsp(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 108) || ((v4 = *(a1 + 112), *(a1 + 120) != v4) ? (v5 = v4 == 0) : (v5 = 1), v5))
  {
    v4 = (a1 + 456);
  }

  v6 = *v4;
  result = *(*v4 + 88);
  if (result && *(a1 + 16))
  {
    result = (*(*result + 504))(result, *(a1 + 8), *(a1 + 12));
    if ((result & 1) == 0)
    {
      return (*(**(v6 + 88) + 672))(*(v6 + 88), *(a1 + 8), *(a1 + 12), a2, *(a1 + 24), *(a1 + 16));
    }
  }

  return result;
}

void sub_1DE42A81C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

__n128 std::__function::__func<HALS_BufferFactory::register_buffers(HALS_IOStreamActiveState const&,unsigned int)::$_1,std::allocator<HALS_BufferFactory::register_buffers(HALS_IOStreamActiveState const&,unsigned int)::$_1>,int ()(unsigned long,HALS_IOStreamInfo &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F596E848;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_BufferFactory::register_buffers(HALS_IOStreamActiveState const&,unsigned int)::$_0>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + 108);
  v5 = **(v2 + 8);
  if (v4)
  {
    HALS_BufferFactory::register_buffers_for_dsp(v3, v5);
  }

  else
  {
    HALS_BufferFactory::register_buffers_non_dsp(v3, v5);
  }

  return 0;
}

uint64_t std::__function::__func<HALS_BufferFactory::unregister_buffers(HALS_IOStreamActiveState const&,unsigned int)::$_1,std::allocator<HALS_BufferFactory::unregister_buffers(HALS_IOStreamActiveState const&,unsigned int)::$_1>,int ()(unsigned long,HALS_IOStreamInfo &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN18HALS_BufferFactory18unregister_buffersERK24HALS_IOStreamActiveStatejE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_BufferFactory::unregister_buffers(HALS_IOStreamActiveState const&,unsigned int)::$_1,std::allocator<HALS_BufferFactory::unregister_buffers(HALS_IOStreamActiveState const&,unsigned int)::$_1>,int ()(unsigned long,HALS_IOStreamInfo &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (*(a3 + 108))
  {
    HALS_BufferFactory::unregister_buffers_for_dsp(a3, v3);
  }

  else
  {
    HALS_BufferFactory::unregister_buffers_non_dsp(a3, v3);
  }

  return 0;
}

void *HALS_BufferFactory::unregister_buffers_for_dsp(void *result, uint64_t a2)
{
  v2 = result[14];
  v3 = result[15];
  if (v2 != v3)
  {
    v5 = result;
    do
    {
      result = *(*v2 + 88);
      if (result)
      {
        if (*(v2 + 16))
        {
          result = (*(*result + 680))(result, *(v5 + 8), *(v2 + 96), a2, *(v2 + 24));
        }
      }

      v2 += 128;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_1DE42AA30(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_BufferFactory::unregister_buffers_non_dsp(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 108) || ((v4 = *(a1 + 112), *(a1 + 120) != v4) ? (v5 = v4 == 0) : (v5 = 1), v5))
  {
    v4 = (a1 + 456);
  }

  v6 = *v4;
  result = *(*v4 + 88);
  if (result && *(a1 + 16))
  {
    result = (*(*result + 504))(result, *(a1 + 8), *(a1 + 12));
    if ((result & 1) == 0)
    {
      return (*(**(v6 + 88) + 680))(*(v6 + 88), *(a1 + 8), *(a1 + 12), a2, *(a1 + 24), *(a1 + 16));
    }
  }

  return result;
}

void sub_1DE42AB2C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

__n128 std::__function::__func<HALS_BufferFactory::unregister_buffers(HALS_IOStreamActiveState const&,unsigned int)::$_1,std::allocator<HALS_BufferFactory::unregister_buffers(HALS_IOStreamActiveState const&,unsigned int)::$_1>,int ()(unsigned long,HALS_IOStreamInfo &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F596E8C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_BufferFactory::unregister_buffers(HALS_IOStreamActiveState const&,unsigned int)::$_0>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + 108);
  v5 = *(v2 + 8);
  if (v4)
  {
    HALS_BufferFactory::unregister_buffers_for_dsp(v3, v5);
  }

  else
  {
    HALS_BufferFactory::unregister_buffers_non_dsp(v3, v5);
  }

  return 0;
}

uint64_t std::__function::__func<HALS_BufferFactory::free_buffers(void)::$_1,std::allocator<HALS_BufferFactory::free_buffers(void)::$_1>,int ()(unsigned long,HALS_IOStreamInfo &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN18HALS_BufferFactory12free_buffersEvE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void HALS_BufferFactory::free_buffers_non_dsp(HALS_BufferFactory *this, HALS_IOStreamInfo *a2)
{
  v3 = *(this + 2);
  if (v3 != *(this + 7))
  {
    HALB_IOBufferManager_Server::FreeBuffer(v3, *(this + 6));
  }

  HALB_IOBufferManager_Server::FreeBuffer(*(this + 4), *(this + 12));
  HALB_IOBufferManager_Server::FreeBuffer(*(this + 5), *(this + 12));
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
}

void sub_1DE42AD08(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_BufferFactory::free_buffers(void)::$_0>(uint64_t a1, HALS_IOStreamInfo *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 112);
  v4 = *(*a2 + 120);
  if (v3 != v4)
  {
    do
    {
      HALB_IOBufferManager_Server::FreeBuffer(*(v3 + 16), *(v3 + 24));
      *(v3 + 16) = 0;
      *(v3 + 24) = 0;
      HALB_IOBufferManager_Server::FreeBuffer(*(v3 + 32), *(v3 + 40));
      *(v3 + 32) = 0;
      *(v3 + 40) = 0;
      v3 += 128;
    }

    while (v3 != v4);
    v2 = *a2;
  }

  HALS_BufferFactory::free_buffers_non_dsp(v2, a2);
  return 0;
}

uint64_t HALS_MetaDevice::_HandleGroupObjectPropertiesChanged(CFDictionaryRef *a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, CAPropertyAddressList *a9, CAPropertyAddressList **a10)
{
  v93 = *MEMORY[0x1E69E9840];
  if (!(*(*a1 + 5))())
  {
    v25 = 0;
    goto LABEL_94;
  }

  *v88 = 0;
  if (!a7)
  {
    v20 = 0;
    v80 = 0;
    v84 = 0;
    v85 = v18;
    goto LABEL_21;
  }

  v19 = 0;
  v20 = 0;
  v21 = (a8 + 4);
  v85 = v18;
  v22 = a7;
  while (1)
  {
    v23 = *(v21 - 1);
    if (v23 > 1983996970)
    {
      if (v23 == 1986622324 || v23 == 1983996971)
      {
LABEL_11:
        v85 = *v21;
        v17 = v23 >> 8;
        if ((v20 & 1) == 0)
        {
          v20 = 1;
        }

        v19 = *(v21 - 1);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    if (v23 == 1934647636)
    {
      goto LABEL_11;
    }

    if (v23 == 1684629094)
    {
      break;
    }

LABEL_14:
    v21 = (v21 + 12);
    if (!--v22)
    {
      v84 = 0;
      goto LABEL_19;
    }
  }

  v84 = 1;
LABEL_19:
  LODWORD(v80) = v19;
  HIDWORD(v80) = v17 << 8;
LABEL_21:
  v86 = a5;
  v26 = a1[197];
  if (!v26)
  {
    v26 = a1[196];
  }

  v81 = v20;
  v27 = 0;
  v82 = a3;
  v83 = a4;
  v28 = 0;
  if (v26 && a4)
  {
    v29 = 0;
    v30 = a8;
    while (1)
    {
      v31 = *(v86 + 4 * v29);
      if (v31 == *(v26 + 4) || v31 == HALS_MetaSubDevice::GetRealDeviceObjectID(v26))
      {
        break;
      }

      v30 += *(a6 + 4 * v29++);
      if (a4 == v29)
      {
        goto LABEL_37;
      }
    }

    v32 = *(a6 + 4 * v29);
    if (!v32)
    {
LABEL_37:
      v27 = 0;
      v28 = 0;
      goto LABEL_38;
    }

    v28 = 0;
    v27 = 0;
    do
    {
      mSelector = v30->mSelector;
      if (HALS_MetaDevice::PassRealNotificationToClient(v30->mSelector, 1))
      {
        CAPropertyAddressList::AppendUniqueItem(a9, v30, v34);
        mSelector = v30->mSelector;
      }

      v27 |= mSelector == 1853059700;
      v28 |= mSelector == 1853059619;
      ++v30;
      --v32;
    }

    while (v32);
  }

  if (v27)
  {
LABEL_39:
    v35 = 0;
    v36 = 1;
    do
    {
      v37 = v36;
      v38 = &a1[3 * v35 + 201];
      for (i = *v38; i != *(v38 + 8); ++i)
      {
        v40 = *i;
        if (!(*(**i + 288))(*i))
        {
          (*(*v40 + 280))(v40);
          v42 = v40[4];
          v43 = *a10;
          while (v43 != a10[1])
          {
            v44 = *(v43 + 3);
            v43 = (v43 + 32);
            if (v44 == v42)
            {
LABEL_51:
              v46 = (v43 - 32);
              if (v27)
              {
                *&v90 = 0x676C6F6270667420;
                DWORD2(v90) = 0;
                CAPropertyAddressList::AppendUniqueItem((v43 - 32), &v90, v41);
                *&v90 = 0x676C6F6273666D74;
                DWORD2(v90) = 0;
                CAPropertyAddressList::AppendUniqueItem(v46, &v90, v47);
              }

              if (v28)
              {
                *&v90 = 0x676C6F6270667461;
                DWORD2(v90) = 0;
                CAPropertyAddressList::AppendUniqueItem(v46, &v90, v41);
                *&v90 = 0x676C6F6273666D61;
                DWORD2(v90) = 0;
                CAPropertyAddressList::AppendUniqueItem(v46, &v90, v48);
              }

              goto LABEL_43;
            }
          }

          v90 = 0uLL;
          v91 = 0;
          v92 = v42;
          std::vector<CAPropertyAddressList>::push_back[abi:ne200100](a10, &v90);
          v43 = *a10;
          while (v43 != a10[1])
          {
            v45 = *(v43 + 3);
            v43 = (v43 + 32);
            if (v45 == v40[4])
            {
              goto LABEL_51;
            }
          }
        }

LABEL_43:
        ;
      }

      v36 = 0;
      v35 = 1;
    }

    while ((v37 & 1) != 0);
  }

  else
  {
LABEL_38:
    if (v28)
    {
      goto LABEL_39;
    }
  }

  if (v83)
  {
    for (j = 0; j != v83; ++j)
    {
      v50 = (*(*a1 + 126))(a1, *(v86 + 4 * j));
      if (v50 || (v50 = (*(*a1 + 127))(a1, *(v86 + 4 * j))) != 0)
      {
        v52 = v50;
        v53 = *(v50 + 16);
        v54 = *a10;
        while (v54 != a10[1])
        {
          v55 = *(v54 + 3);
          v54 = (v54 + 32);
          if (v55 == v53)
          {
LABEL_67:
            v57 = (v54 - 32);
            goto LABEL_69;
          }
        }

        v90 = 0uLL;
        v91 = 0;
        v92 = v53;
        std::vector<CAPropertyAddressList>::push_back[abi:ne200100](a10, &v90);
        v54 = *a10;
        while (v54 != a10[1])
        {
          v56 = *(v54 + 3);
          v54 = (v54 + 32);
          if (v56 == *(v52 + 16))
          {
            goto LABEL_67;
          }
        }

        v57 = 0;
LABEL_69:
        if (*(a6 + 4 * j))
        {
          v58 = 0;
          v59 = a8;
          do
          {
            CAPropertyAddressList::AppendUniqueItem(v57, v59, v51);
            ++v58;
            v60 = *(a6 + 4 * j);
            ++v59;
          }

          while (v58 < v60);
        }

        else
        {
          LODWORD(v60) = 0;
        }
      }

      else
      {
        LODWORD(v60) = *(a6 + 4 * j);
      }

      a8 += 12 * v60;
    }
  }

  v25 = v84;
  if (v84)
  {
    HALS_DeviceState::HALS_DeviceState(&v90);
    HALS_DeviceState::Capture(&v90, a1, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
    HALS_MetaDeviceDescription::UpdateSubDeviceList(a1 + 184, 0);
    HALS_MetaDevice::_UpdateStreams(a1, v88);
    HALS_DeviceState::HALS_DeviceState(v89);
    HALS_DeviceState::Capture(v89, a1, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
    HALS_DeviceState::Compare(&v90, v89, a9, a10);
    *&v87.mSelector = 0x676C6F62616D7374;
    v87.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(a9, &v87, v61);
    v25 = v84;
    *&v87.mSelector = 0x676C6F6261706364;
    v87.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(a9, &v87, v62);
    *&v87.mSelector = 0x676C6F6267727570;
    v87.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(a9, &v87, v63);
    *&v87.mSelector = 0x676C6F6261677270;
    v87.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(a9, &v87, v64);
    *&v87.mSelector = 0x676C6F6261746170;
    v87.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(a9, &v87, v65);
    *&v87.mSelector = 0x676C6F6274617023;
    v87.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(a9, &v87, v66);
    *&v87.mSelector = 0x676C6F6261636F6DLL;
    v87.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(a9, &v87, v67);
    *&v87.mSelector = 0x676C6F6273746D23;
    v87.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(a9, &v87, v68);
    v70 = v88[1];
    if (v88[1] || v88[0])
    {
      *&v87.mSelector = 0x676C6F6273746D23;
      v87.mElement = 0;
      CAPropertyAddressList::AppendUniqueItem(a9, &v87, v69);
      if (v70)
      {
        *&v87.mSelector = 0x696E707473746D23;
        v87.mElement = 0;
        CAPropertyAddressList::AppendUniqueItem(a9, &v87, v71);
        if (!v88[0])
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      }

      if (v88[0])
      {
LABEL_83:
        *&v87.mSelector = 0x6F75747073746D23;
        v87.mElement = 0;
        CAPropertyAddressList::AppendUniqueItem(a9, &v87, v71);
LABEL_84:
        if (*a9 == *(a9 + 1))
        {
          v72 = *a10;
          while (v72 != a10[1])
          {
            v73 = *v72;
            v74 = *(v72 + 1);
            v72 = (v72 + 32);
            if (v73 != v74)
            {
              goto LABEL_88;
            }
          }
        }

        else
        {
LABEL_88:
          *&v87.mSelector = 0x676C6F6264696666;
          v87.mElement = 0;
          CAPropertyAddressList::AppendUniqueItem(a9, &v87, v71);
        }
      }
    }

    HALS_DeviceState::~HALS_DeviceState(v89);
    HALS_DeviceState::~HALS_DeviceState(&v90);
  }

  if (v82 != 0 && (v81 & 1) != 0)
  {
    v76 = HALS_ObjectMap::CopyObjectByObjectID(v82);
    if (v76)
    {
      HALS_MetaDevice::InheritSubdeviceDSPForClient(a1, v85 == 1768845428, v76);
      LODWORD(v90) = HIDWORD(v80) | v80;
      *(&v90 + 4) = v85;
      CAPropertyAddressList::AppendUniqueItem(a9, &v90, v77);
    }

    HALS_ObjectMap::ReleaseObject(v76, v75);
    v25 = v84;
  }

LABEL_94:
  v78 = *MEMORY[0x1E69E9840];
  return v25;
}

uint64_t HALS_MetaDevice::PassRealNotificationToClient(HALS_MetaDevice *this, const AudioObjectPropertyAddress *a2)
{
  v2 = this;
  result = 0;
  if (v2 > 1935762291)
  {
    if (v2 <= 1935960433)
    {
      if (v2 == 1935762292 || v2 == 1935763060)
      {
        return 1;
      }

      v4 = 1935894638;
    }

    else
    {
      if (v2 <= 1936092531)
      {
        if (v2 != 1935960434)
        {
          v4 = 1936092513;
          goto LABEL_20;
        }

        return 1;
      }

      if (v2 == 1936092532)
      {
        return 1;
      }

      v4 = 1952805485;
    }

LABEL_20:
    if (v2 != v4)
    {
      return result;
    }

    return 1;
  }

  if (v2 > 1853059699)
  {
    if (v2 == 1853059700)
    {
      return a2;
    }

    if (v2 == 1885762592)
    {
      return 1;
    }

    v4 = 1885762657;
    goto LABEL_20;
  }

  if (v2 == 1684629094 || v2 == 1819569763)
  {
    return 1;
  }

  if (v2 == 1853059619)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

void HALS_MetaDevice::_UpdateStreams(const __CFDictionary **this, BOOL *a2)
{
  v76 = *MEMORY[0x1E69E9840];
  if (HALS_MetaDeviceDescription::IsStackRequested(this + 184))
  {
    goto LABEL_2;
  }

  v6 = this[188];
  v7 = this[187];
  if (v6 - v7 == 24 && (v7[1] - *v7) > 8)
  {
    goto LABEL_2;
  }

  if (v7 == v6)
  {
    goto LABEL_49;
  }

  v8 = (v7 + 3);
  do
  {
    v9 = *(v8 - 2) - *(v8 - 3);
    v10 = v9 > 8 || v8 == v6;
    v8 = (v8 + 24);
  }

  while (!v10);
  if (v9 > 8)
  {
LABEL_2:
    updated = HALS_MetaDevice::_UpdateStreams_Output_Stacked(this);
    goto LABEL_3;
  }

  if (this[196] && v7 != v6)
  {
    updated = 0;
    v11 = 0;
    do
    {
      v12 = *v7;
      if (*v7 != v7[1] && *v12)
      {
        v13 = HALS_MetaSubDevice::CopyRealDevice<HALS_Device>(*v12);
        v15 = v13;
        if (v13)
        {
          v73 = 0;
          v74 = 0;
          v75 = 0;
          HALS_Device::CopyStreamList(v13, 0, &v73);
          if (v74 != v73)
          {
            v17 = 0;
            do
            {
              v18 = (*(*this + 50))(this, 0, v11);
              v19 = v18;
              if (!v18)
              {
                operator new();
              }

              (*(*v18 + 240))(v18, 0, v15, v17);
              HALS_ObjectMap::ReleaseObject(v19, v20);
              v11 = (v11 + 1);
              v17 = (v17 + 1);
            }

            while (v17 < (v74 - v73) >> 3);
          }

          HALS_ArrayReleaser<HALS_Stream>::~HALS_ArrayReleaser(&v73, v16);
        }

        HALS_ObjectMap::ReleaseObject(v15, v14);
      }

      v7 += 3;
    }

    while (v7 != v6);
    v21 = v11;
    goto LABEL_50;
  }

LABEL_49:
  updated = 0;
  v21 = 0;
LABEL_50:
  v35 = this[201];
  if (v21 < (this[202] - v35) >> 3)
  {
    v36 = 8 * v21;
    do
    {
      v37 = *(v35 + v21);
      (*(*v37 + 8))(v37);
      HALS_ObjectMap::ObjectIsDead(v37, v38);
      v35 = this[201];
      v39 = v35 + v36;
      v40 = (v35 + v36 + 8);
      v41 = this[202];
      v42 = v41 - v40;
      if (v41 != v40)
      {
        memmove(v35 + v36, v40, v41 - v40);
        v35 = this[201];
      }

      this[202] = &v39[v42];
    }

    while (v21 < (&v39[v42] - v35) >> 3);
    updated = 1;
  }

LABEL_3:
  *a2 = updated & 1;
  v4 = this[196];
  if (HALS_MetaDeviceDescription::GetStackedChannelPolicy(this + 184))
  {
    v5 = 0;
  }

  else
  {
    v5 = HALS_MetaDeviceDescription::IsStackRequested(this + 184);
  }

  v22 = 0;
  v23 = 0;
  if (v4 && (v5 & 1) == 0)
  {
    v24 = this[187];
    v71 = this[188];
    if (v24 == v71)
    {
      v22 = 0;
      v23 = 0;
    }

    else
    {
      v22 = 0;
      v23 = 0;
      do
      {
        v25 = *v24;
        v26 = *(v24 + 1);
        v72 = v24;
        while (v25 != v26)
        {
          v27 = HALS_MetaSubDevice::CopyRealDevice<HALS_Device>(*v25);
          v29 = v27;
          if (v27)
          {
            v73 = 0;
            v74 = 0;
            v75 = 0;
            HALS_Device::CopyStreamList(v27, 1, &v73);
            if (v74 != v73)
            {
              v31 = 0;
              do
              {
                v32 = (*(*this + 50))(this, 1, v23);
                v33 = v32;
                if (!v32)
                {
                  operator new();
                }

                (*(*v32 + 240))(v32, 1, v29, v31);
                HALS_ObjectMap::ReleaseObject(v33, v34);
                v23 = (v23 + 1);
                v31 = (v31 + 1);
              }

              while (v31 < (v74 - v73) >> 3);
            }

            HALS_ArrayReleaser<HALS_Stream>::~HALS_ArrayReleaser(&v73, v30);
          }

          HALS_ObjectMap::ReleaseObject(v29, v28);
          ++v25;
        }

        v24 = (v72 + 24);
      }

      while ((v72 + 24) != v71);
    }
  }

  v43 = this[193];
  for (i = this[194]; v43 != i; v43 = (v43 + 8))
  {
    v45 = *v43;
    v46 = (*(*this + 50))(this, 1, v23);
    v47 = v46;
    if (!v46)
    {
      operator new();
    }

    (*(*v46 + 256))(v46, *(v45 + 72));
    HALS_ObjectMap::ReleaseObject(v47, v48);
    v23 = (v23 + 1);
  }

  v49 = v23;
  v50 = this[204];
  if (v23 < ((this[205] - v50) >> 3))
  {
    v51 = 8 * v23;
    do
    {
      v52 = *(v50 + v49);
      (*(*v52 + 8))(v52);
      HALS_ObjectMap::ObjectIsDead(v52, v53);
      v50 = this[204];
      v54 = v50 + v51;
      v55 = (v50 + v51 + 8);
      v56 = this[205];
      v57 = v56 - v55;
      if (v56 != v55)
      {
        memmove(v50 + v51, v55, v56 - v55);
        v50 = this[204];
      }

      this[205] = &v54[v57];
    }

    while (v49 < (&v54[v57] - v50) >> 3);
    v22 = 1;
  }

  v58 = 0;
  a2[1] = v22 & 1;
  v59 = 1;
  do
  {
    v60 = v59;
    NumberStreams = HALS_IODevice::GetNumberStreams(this, v58 & 1);
    if (NumberStreams)
    {
      v62 = NumberStreams;
      v63 = 0;
      v64 = 1;
      do
      {
        v65 = (*(*this + 50))(this, v58 & 1, v63);
        (*(*v65 + 272))();
        NumberChannels = HALS_Stream::GetNumberChannels(v65);
        HALS_ObjectMap::ReleaseObject(v65, v67);
        v64 += NumberChannels;
        v63 = (v63 + 1);
      }

      while (v62 != v63);
    }

    v59 = 0;
    v58 = 1;
  }

  while ((v60 & 1) != 0);
  v68 = this[202] == this[201] && this[205] != this[204];
  *(this + 440) = v68;
  v69 = *MEMORY[0x1E69E9840];
}

void sub_1DE42C004(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HALS_ArrayReleaser<HALS_Stream>::~HALS_ArrayReleaser(va, a2);
  HALS_ObjectMap::ReleaseObject(v6, v8);
  _Unwind_Resume(a1);
}

void HALS_MetaDevice::InheritSubdeviceDSPForClient(HALS_MetaDevice *this, char a2, HALS_Client *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN15HALS_MetaDevice28InheritSubdeviceDSPForClientEbP11HALS_Client_block_invoke;
  v4[3] = &__block_descriptor_tmp_143;
  v5 = a2;
  v4[4] = this;
  v4[5] = a3;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v4);
}

uint64_t ___ZN15HALS_MetaDevice28InheritSubdeviceDSPForClientEbP11HALS_Client_block_invoke(uint64_t result)
{
  v44 = *MEMORY[0x1E69E9840];
  if (*(result + 48) == 1)
  {
    v2 = *(result + 32);
    v1 = *(result + 40);
    result = HALS_Device::GetNumberStreamsExcludingReferenceStreams(v2, 1);
    if (result)
    {
      v34 = 0x696E707476697374;
      v35 = 0;
      v3 = *(v2 + 1496);
      v4 = *(v2 + 1504);
      if (v3 == v4)
      {
        goto LABEL_11;
      }

      v5 = 0;
      do
      {
        v7 = *v3;
        v6 = v3[1];
        v3 += 3;
        v5 += (v6 - v7) >> 3;
      }

      while (v3 != v4);
      if (!v5)
      {
LABEL_11:
        v10 = v1 != 0;
      }

      else
      {
        v8 = 0;
        while (1)
        {
          result = HALS_MetaDeviceDescription::GetSubDeviceByIndex(*(v2 + 1496), *(v2 + 1504), v8);
          if (result)
          {
            v9 = result;
            result = (*(*result + 96))(result, 0, &v34, v1);
            if (result)
            {
              break;
            }
          }

          if (v5 == ++v8)
          {
            goto LABEL_11;
          }
        }

        *buf = 0;
        v32 = 4;
        result = (*(*v9 + 120))(v9, 0, &v34, 4, &v32, buf, 0, 0, v1);
        v18 = *buf;
        v33 = *buf;
        v10 = v1 != 0;
        if (v1 && *buf)
        {
          v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v19 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(result);
          }

          v21 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v20 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            v22 = *v21;
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }

          else
          {
            v22 = *v21;
          }

          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v31 = *(v2 + 16);
            *buf = 136315906;
            v37 = "HALS_MetaDevice.cpp";
            v38 = 1024;
            v39 = 3620;
            v40 = 1024;
            v41 = v31;
            v42 = 1024;
            v43 = v18;
            _os_log_debug_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] (Device ID: %d) inheriting VI Type %d from subdevice.", buf, 0x1Eu);
          }

          result = (*(*v2 + 128))(v2, 0, &v34, 4, &v33, 0, 0, v1);
          v10 = 1;
        }
      }

      v34 = 0x696E70747641642BLL;
      v35 = 0;
      v11 = *(v2 + 1496);
      v12 = *(v2 + 1504);
      if (v11 != v12)
      {
        v13 = 0;
        do
        {
          v15 = *v11;
          v14 = v11[1];
          v11 += 3;
          v13 += (v14 - v15) >> 3;
        }

        while (v11 != v12);
        if (v13)
        {
          v16 = 0;
          while (1)
          {
            result = HALS_MetaDeviceDescription::GetSubDeviceByIndex(*(v2 + 1496), *(v2 + 1504), v16);
            if (result)
            {
              v17 = result;
              result = (*(*result + 96))(result, 0, &v34, v1);
              if (result)
              {
                break;
              }
            }

            if (v13 == ++v16)
            {
              goto LABEL_39;
            }
          }

          *buf = 0;
          v32 = 4;
          result = (*(*v17 + 120))(v17, 0, &v34, 4, &v32, buf, 0, 0, v1);
          v23 = *buf;
          v33 = *buf;
          if (*buf)
          {
            v24 = v10;
          }

          else
          {
            v24 = 0;
          }

          if (v24)
          {
            v25 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v25 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(result);
            }

            v27 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v26 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v26)
            {
              atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
              v28 = *v27;
              std::__shared_weak_count::__release_shared[abi:ne200100](v26);
            }

            else
            {
              v28 = *v27;
            }

            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v30 = *(v2 + 16);
              *buf = 136315906;
              v37 = "HALS_MetaDevice.cpp";
              v38 = 1024;
              v39 = 3649;
              v40 = 1024;
              v41 = v30;
              v42 = 1024;
              v43 = v23;
              _os_log_debug_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] (Device ID: %d) inheriting Voice Activity enablement %d from subdevice.", buf, 0x1Eu);
            }

            result = (*(*v2 + 128))(v2, 0, &v34, 4, &v33, 0, 0, v1);
          }
        }
      }
    }
  }

LABEL_39:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_MetaDevice::_UpdateStreams_Output_Stacked(const __CFDictionary **this)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!this[196] || (v2 = this[187], v3 = this[188], v2 == v3))
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if (*v2 != *(v2 + 1))
      {
        FirstDeviceWithDirection = HALS_MetaDeviceDescription::FindFirstDeviceWithDirection(v2);
        if (FirstDeviceWithDirection)
        {
          v7 = HALS_MetaSubDevice::CopyRealDevice<HALS_Device>(FirstDeviceWithDirection);
          v9 = v7;
          if (v7)
          {
            TotalNumberChannels = HALS_Device::GetTotalNumberChannels(v7, 0);
            if (HALS_MetaDeviceDescription::GetStackedChannelPolicy(this + 184))
            {
              v11 = TotalNumberChannels;
            }

            else
            {
              v11 = 2;
            }

            v12 = (*(*this + 50))(this, 0, v5);
            v13 = v12;
            if (!v12)
            {
              operator new();
            }

            (*(*v12 + 248))(v12, 0, v11);
            HALS_ObjectMap::ReleaseObject(v13, v14);
            v5 = (v5 + 1);
          }

          HALS_ObjectMap::ReleaseObject(v9, v8);
        }
      }

      v2 = (v2 + 24);
    }

    while (v2 != v3);
    v5 = v5;
  }

  v15 = this[201];
  if (v5 < (this[202] - v15) >> 3)
  {
    v16 = 8 * v5;
    do
    {
      v17 = *(v15 + v5);
      (*(*v17 + 8))(v17);
      HALS_ObjectMap::ObjectIsDead(v17, v18);
      v15 = this[201];
      v19 = v15 + v16;
      v20 = (v15 + v16 + 8);
      v21 = this[202];
      v22 = v21 - v20;
      if (v21 != v20)
      {
        memmove(v15 + v16, v20, v21 - v20);
        v15 = this[201];
      }

      this[202] = &v19[v22];
    }

    while (v5 < (&v19[v22] - v15) >> 3);
    v4 = 1;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v4 & 1;
}

void sub_1DE42C9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(va);
  HALB_FormatList::~HALB_FormatList(v4);
  HALS_Stream::~HALS_Stream(v5);
  MEMORY[0x1E12C1730](v5, 0x10E1C4014714525);
  HALS_ObjectMap::ReleaseObject(0, v7);
  HALS_ObjectMap::ReleaseObject(v3, v8);
  _Unwind_Resume(a1);
}

uint64_t HALS_Stream::GetNumberChannels(HALS_Stream *this)
{
  v1 = *(this + 4);
  v5 = 0x676C6F6270667420;
  v6 = 0;
  (*(*this + 120))(this, v1, &v5, 40, &v6 + 4, v3, 0, 0, 0);
  return v4;
}

HALS_MetaSubDevice *HALS_MetaDeviceDescription::FindFirstDeviceWithDirection(HALS_MetaSubDevice ***a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    while (!HALS_MetaSubDevice::GetNumberStreams(*v1, 0))
    {
      if (++v1 == v2)
      {
        v1 = v2;
        break;
      }
    }

    v2 = a1[1];
  }

  if (v1 == v2)
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t HALS_MetaDevice::_HandleObjectPropertiesChanged(CFDictionaryRef *a1, HALS_MetaSubDevice *a2, unsigned int a3, unsigned int a4, AudioObjectPropertyAddress *a5, CAPropertyAddressList *a6, CAPropertyAddressList **a7)
{
  v77 = *MEMORY[0x1E69E9840];
  if (!(*(*a1 + 5))(a1))
  {
    v24 = 0;
    goto LABEL_73;
  }

  *v72 = 0;
  if (!a4)
  {
    v18 = 0;
    v65 = 0;
    v16 = 0;
    v70 = v15;
    goto LABEL_23;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  p_mScope = &a5->mScope;
  v70 = v15;
  v20 = a4;
  do
  {
    v21 = *(p_mScope - 1);
    if (v21 <= 1934647635)
    {
      if (v21 == 1684629094)
      {
        v16 = 1;
        goto LABEL_18;
      }

      if (v21 != 1752122448)
      {
        goto LABEL_18;
      }
    }

    else if (v21 != 1934647636 && v21 != 1986622324 && v21 != 1983996971)
    {
      goto LABEL_18;
    }

    v70 = *p_mScope;
    v14 = v21 >> 8;
    if ((v18 & 1) == 0)
    {
      v18 = 1;
    }

    v17 = *(p_mScope - 1);
LABEL_18:
    p_mScope += 3;
    --v20;
  }

  while (v20);
  LODWORD(v65) = v17;
  HIDWORD(v65) = v14 << 8;
LABEL_23:
  v69 = v16;
  v25 = a1[197];
  v68 = a1;
  v67 = a3;
  if (!v25)
  {
    v25 = a1[196];
    if (!v25)
    {
      goto LABEL_35;
    }
  }

  if (v25 != a2)
  {
    v26 = *(a2 + 4);
    v27 = 0;
    v28 = 0;
    if (v26 != HALS_MetaSubDevice::GetRealDeviceObjectID(v25) || !a4)
    {
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  if (!a4)
  {
LABEL_35:
    v27 = 0;
    v28 = 0;
    goto LABEL_36;
  }

LABEL_30:
  v28 = 0;
  v27 = 0;
  v29 = a4;
  do
  {
    mSelector = a5->mSelector;
    if (HALS_MetaDevice::PassRealNotificationToClient(a5->mSelector, 1))
    {
      CAPropertyAddressList::AppendUniqueItem(a6, a5, v31);
      mSelector = a5->mSelector;
    }

    v28 |= mSelector == 1853059700;
    v27 |= mSelector == 1853059619;
    ++a5;
    --v29;
  }

  while (v29);
LABEL_36:
  v66 = a6;
  if (v28 & 1) != 0 || (v27)
  {
    v32 = 0;
    v33 = 1;
    do
    {
      v34 = v33;
      v35 = &v68[3 * v32 + 201];
      for (i = *v35; i != *(v35 + 8); ++i)
      {
        v37 = *i;
        if (!(*(**i + 288))(*i))
        {
          (*(*v37 + 280))(v37);
          v39 = v37[4];
          v40 = *a7;
          while (v40 != a7[1])
          {
            v41 = *(v40 + 3);
            v40 = (v40 + 32);
            if (v41 == v39)
            {
LABEL_50:
              v43 = (v40 - 32);
              if (v28)
              {
                *&v74 = 0x676C6F6270667420;
                DWORD2(v74) = 0;
                CAPropertyAddressList::AppendUniqueItem((v40 - 32), &v74, v38);
                *&v74 = 0x676C6F6273666D74;
                DWORD2(v74) = 0;
                CAPropertyAddressList::AppendUniqueItem(v43, &v74, v44);
              }

              if (v27)
              {
                *&v74 = 0x676C6F6270667461;
                DWORD2(v74) = 0;
                CAPropertyAddressList::AppendUniqueItem(v43, &v74, v38);
                *&v74 = 0x676C6F6273666D61;
                DWORD2(v74) = 0;
                CAPropertyAddressList::AppendUniqueItem(v43, &v74, v45);
              }

              goto LABEL_42;
            }
          }

          v74 = 0uLL;
          v75 = 0;
          v76 = v39;
          std::vector<CAPropertyAddressList>::push_back[abi:ne200100](a7, &v74);
          v40 = *a7;
          while (v40 != a7[1])
          {
            v42 = *(v40 + 3);
            v40 = (v40 + 32);
            if (v42 == v37[4])
            {
              goto LABEL_50;
            }
          }
        }

LABEL_42:
        ;
      }

      v33 = 0;
      v32 = 1;
    }

    while ((v34 & 1) != 0);
  }

  v24 = v69;
  if (v69)
  {
    HALS_DeviceState::HALS_DeviceState(&v74);
    HALS_DeviceState::Capture(&v74, v68, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
    HALS_MetaDeviceDescription::UpdateSubDeviceList(v68 + 184, 0);
    HALS_MetaDevice::_UpdateStreams(v68, v72);
    HALS_DeviceState::HALS_DeviceState(v73);
    HALS_DeviceState::Capture(v73, v68, HALS_DeviceState::sStandardDevicePropertiesToCapture, HALS_DeviceState::sStandardStreamPropertiesToCapture);
    HALS_DeviceState::Compare(&v74, v73, a6, a7);
    *&v71.mSelector = 0x676C6F62616D7374;
    v71.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(a6, &v71, v46);
    *&v71.mSelector = 0x676C6F6261706364;
    v71.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(a6, &v71, v47);
    *&v71.mSelector = 0x676C6F6267727570;
    v71.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(a6, &v71, v48);
    *&v71.mSelector = 0x676C6F6261677270;
    v71.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(a6, &v71, v49);
    *&v71.mSelector = 0x676C6F6261746170;
    v71.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(a6, &v71, v50);
    *&v71.mSelector = 0x676C6F6274617023;
    v71.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(a6, &v71, v51);
    *&v71.mSelector = 0x676C6F6261636F6DLL;
    v71.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(a6, &v71, v52);
    *&v71.mSelector = 0x676C6F6273746D23;
    v71.mElement = 0;
    CAPropertyAddressList::AppendUniqueItem(a6, &v71, v53);
    v55 = v72[1];
    if (v72[1] || v72[0])
    {
      *&v71.mSelector = 0x676C6F6273746D23;
      v71.mElement = 0;
      CAPropertyAddressList::AppendUniqueItem(a6, &v71, v54);
      if (v55)
      {
        *&v71.mSelector = 0x696E707473746D23;
        v71.mElement = 0;
        CAPropertyAddressList::AppendUniqueItem(a6, &v71, v56);
        if (!v72[0])
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      }

      if (v72[0])
      {
LABEL_62:
        *&v71.mSelector = 0x6F75747073746D23;
        v71.mElement = 0;
        CAPropertyAddressList::AppendUniqueItem(a6, &v71, v56);
LABEL_63:
        if (*a6 == *(a6 + 1))
        {
          v57 = *a7;
          while (v57 != a7[1])
          {
            v58 = *v57;
            v59 = *(v57 + 1);
            v57 = (v57 + 32);
            if (v58 != v59)
            {
              goto LABEL_67;
            }
          }
        }

        else
        {
LABEL_67:
          *&v71.mSelector = 0x676C6F6264696666;
          v71.mElement = 0;
          CAPropertyAddressList::AppendUniqueItem(a6, &v71, v56);
        }
      }
    }

    HALS_DeviceState::~HALS_DeviceState(v73);
    HALS_DeviceState::~HALS_DeviceState(&v74);
    v24 = v69;
  }

  if (v67 != 0 && (v18 & 1) != 0)
  {
    v61 = HALS_ObjectMap::CopyObjectByObjectID(v67);
    if (v61)
    {
      HALS_MetaDevice::InheritSubdeviceDSPForClient(v68, v70 == 1768845428, v61);
      LODWORD(v74) = HIDWORD(v65) | v65;
      *(&v74 + 4) = v70;
      CAPropertyAddressList::AppendUniqueItem(v66, &v74, v62);
    }

    HALS_ObjectMap::ReleaseObject(v61, v60);
    v24 = v69;
  }

LABEL_73:
  v63 = *MEMORY[0x1E69E9840];
  return v24 & 1;
}

uint64_t HALS_MetaDevice::_GetStreamByRealStreamID(HALS_MetaDevice *this, int a2)
{
  v3 = 0;
  v4 = this + 1608;
  v5 = 1;
  do
  {
    v6 = &v4[24 * v3];
    v7 = *v6;
    if (*v6 == *(v6 + 1))
    {
      v8 = 0;
    }

    else
    {
      v8 = 0;
      do
      {
        v10 = *v7++;
        v9 = v10;
        if ((*(*v10 + 296))(v10) == a2)
        {
          v8 = v9;
        }
      }

      while (v7 != *(v6 + 1));
    }

    v11 = (v8 == 0) & v5;
    v3 = 1;
    v5 = 0;
  }

  while ((v11 & 1) != 0);
  return v8;
}

uint64_t HALS_MetaDevice::_GetStreamByStreamID(HALS_MetaDevice *this, int a2)
{
  v2 = 0;
  v3 = this + 1608;
  v4 = 1;
  do
  {
    v5 = &v3[24 * v2];
    v6 = *v5;
    v7 = *(v5 + 1);
    if (v6 == v7)
    {
      result = 0;
    }

    else
    {
      result = 0;
      do
      {
        v10 = *v6++;
        v9 = v10;
        if (*(v10 + 16) == a2)
        {
          result = v9;
        }
      }

      while (v6 != v7);
    }

    v11 = (result == 0) & v4;
    v2 = 1;
    v4 = 0;
  }

  while ((v11 & 1) != 0);
  return result;
}

uint64_t *HALS_MetaDevice::CopyDSPSettingsForClient@<X0>(HALS_MetaDevice *this@<X0>, HALS_Client *a2@<X2>, char a3@<W1>, uint64_t *a4@<X8>)
{
  HALS_MetaDeviceDescription::GetDSPInputSettingsOverride(&v10, this + 1472);
  v8 = v10;
  if (v10)
  {
    v10 = 0;
    *a4 = v8;
  }

  else
  {
    HALS_Device::CopyDSPSettingsForClient(this, a2, a3, a4);
  }

  return std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&v10, 0);
}

void sub_1DE42D3E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void HALS_MetaDevice::HandleHostedDSPConfigurationChange(HALS_MetaDevice *this, uint64_t a2)
{
  v3 = *(this + 4);
  *&v4.mSelector = 0x676C6F62686F4450;
  v4.mElement = 0;
  HALS_Object::PropertiesChanged(this, v3, a2, 1, &v4);
}

HALS_PlatformBehaviors *HALS_MetaDevice::HasInternalIOContext(HALS_MetaDevice *this)
{
  platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(this);
  result = (*(*platform_behaviors + 16))(platform_behaviors);
  if (result != 1)
  {
    v3 = HALS_PlatformBehaviors::get_platform_behaviors(result);
    return ((*(*v3 + 16))(v3) == 2);
  }

  return result;
}

uint64_t HALS_MetaDevice::IsInputMutedForClient(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = atomic_load((a2 + 720));
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

CFDictionaryRef HALS_MetaDevice::_CreateLegacyIOContextDescription(HALS_MetaDevice *this, HALS_Client *a2)
{
  v209 = *MEMORY[0x1E69E9840];
  v170.__r_.__value_.__r.__words[0] = &v170.__r_.__value_.__l.__size_;
  *&v170.__r_.__value_.__r.__words[1] = 0uLL;
  LOBYTE(v174[0]) = 0;
  v178 = 0;
  v171 = 0;
  v172 = 0;
  if (AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0))
  {
    v173 = *(this + 78);
    v4 = *(this + 208);
    if (AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0))
    {
      buf.__r_.__value_.__s.__data_[0] = 0;
      LOBYTE(v203) = 0;
      *&v204[6] = 0;
      v204[14] = 1;
      v205 = 0;
      v206 = &v205;
      v207 = 0x2000000000;
      p_buf = &buf;
      v5 = *v4;
      v193.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
      v193.__r_.__value_.__l.__size_ = 0x40000000;
      v193.__r_.__value_.__r.__words[2] = ___ZNK25HALS_MetaDevice_HostedDSP39GetFirstDSPOffloadsRequestFromSubdeviceEb_block_invoke;
      v194 = &unk_1E8673040;
      v195 = &v205;
      v196 = v4;
      v197.n128_u8[0] = 1;
      v6 = (*(*v5 + 64))(v5);
      HALB_CommandGate::ExecuteCommand(v6, &v193);
      v7 = *(v206 + 3);
      __p.__r_.__value_.__s.__data_[0] = 0;
      v169 = 0;
      if (v7 && v204[14] == 1)
      {
        v167 = 0;
        if (v203 == 1)
        {
          __p = buf;
          memset(&buf, 0, sizeof(buf));
          v167 = 1;
        }

        cf = *&v204[6];
        *&v204[6] = 0;
        v169 = 1;
      }

      _Block_object_dispose(&v205, 8);
      if (v204[14] == 1)
      {
        if (*&v204[6])
        {
          CFRelease(*&v204[6]);
        }

        if (v203 == 1 && SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }
    }

    else
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      v169 = 0;
    }

    std::__optional_storage_base<HALS_MetaDevice_HostedDSP::SubDeviceOffloadRequest,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<HALS_MetaDevice_HostedDSP::SubDeviceOffloadRequest,false>>(v174, &__p);
    if (v169 == 1)
    {
      if (cf)
      {
        CFRelease(cf);
      }

      if (v167 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    v193.__r_.__value_.__r.__words[0] = &v193.__r_.__value_.__l.__size_;
    *&v193.__r_.__value_.__r.__words[1] = 0uLL;
    v197.n128_u8[0] = 0;
    v201 = 0;
    v194 = 0;
    v195 = 0;
    HALS_Device_HostedDSP_ClientInfo::get_dsp_types_for_client(&buf, this + 648, 1, a2);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v193.__r_.__value_.__l.__size_);
    size = buf.__r_.__value_.__l.__size_;
    v193 = buf;
    if (buf.__r_.__value_.__r.__words[2])
    {
      *(buf.__r_.__value_.__l.__size_ + 16) = &v193.__r_.__value_.__l.__size_;
      buf.__r_.__value_.__r.__words[0] = &buf.__r_.__value_.__l.__size_;
      *&buf.__r_.__value_.__r.__words[1] = 0uLL;
      size = 0;
    }

    else
    {
      v193.__r_.__value_.__r.__words[0] = &v193.__r_.__value_.__l.__size_;
    }

    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(size);
    v9 = *(this + 79);
    if (v9)
    {
      HALS_Device_HostedDSP::RationalizeDSPOffloadsForClient(&buf, v9, 1, a2);
      v9 = buf.__r_.__value_.__r.__words[0];
    }

    buf.__r_.__value_.__r.__words[0] = 0;
    std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&v194, v9);
    std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&buf, 0);
    v10 = *(this + 79);
    if (v10)
    {
      HALS_Device_HostedDSP::CopyDSPSettingsForClient(&buf, *v10, 1, a2);
      v11 = buf.__r_.__value_.__r.__words[0];
    }

    else
    {
      v11 = 0;
    }

    buf.__r_.__value_.__r.__words[0] = 0;
    std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&v195, v11);
    std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&buf, 0);
    if (v194)
    {
      v185 = 0;
      v12 = CFStringCreateWithBytes(0, "dsp offload bypass override", 27, 0x8000100u, 0);
      __p.__r_.__value_.__r.__words[0] = v12;
      if (!v12)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      if (!OS::CF::DictionaryBase<__CFDictionary const*>::HasKey(*(this + 186), v12))
      {
        goto LABEL_36;
      }

      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Dictionary>(&buf, *(this + 186), v12);
      if (buf.__r_.__value_.__l.__size_)
      {
        operator new();
      }

      OS::CF::UntypedObject::~UntypedObject(&buf);
      v12 = __p.__r_.__value_.__r.__words[0];
      if (__p.__r_.__value_.__r.__words[0])
      {
LABEL_36:
        CFRelease(v12);
      }

      std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&v185, 0);
    }

    HALS_MetaDeviceDescription::GetDSPInputSettingsOverride(&v205, this + 1472);
    if (v205)
    {
      v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v14 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v13);
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

      v13 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      v18 = v205;
      if (v13)
      {
        v19 = *(this + 4);
        DSP_Host_OffloadDictionary::get_debug_string(&__p, v205);
        v20 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
        *(buf.__r_.__value_.__r.__words + 4) = "HALS_MetaDevice.cpp";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = 967;
        WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
        HIDWORD(buf.__r_.__value_.__r.__words[2]) = v19;
        v203 = 2080;
        *v204 = v20;
        _os_log_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [hal_dsp][settings] (Device ID: %d) Aggregate device description overrides dsp input settings with %s", &buf, 0x22u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v21 = v195;
      v195 = v18;
      v205 = v21;
    }

    v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v22 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v13);
    }

    v24 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v23 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      v25 = *v24;
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    else
    {
      v25 = *v24;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      if (a2)
      {
        v118 = *(a2 + 4);
      }

      else
      {
        v118 = 0;
      }

      v151 = *(this + 4);
      if (v194)
      {
        DSP_Host_OffloadDictionary::get_debug_string(&__p, v194);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
        *(buf.__r_.__value_.__r.__words + 4) = "HALS_MetaDevice.cpp";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = 976;
        WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
        HIDWORD(buf.__r_.__value_.__r.__words[2]) = v118;
        v203 = 1024;
        *v204 = v151;
        *&v204[4] = 2080;
        *&v204[6] = p_p;
        _os_log_debug_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp][offloads] (Client ID: %d) (Device ID: %d) Aggregate context description has %s for offloads.", &buf, 0x28u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
        *(buf.__r_.__value_.__r.__words + 4) = "HALS_MetaDevice.cpp";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = 976;
        WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
        HIDWORD(buf.__r_.__value_.__r.__words[2]) = v118;
        v203 = 1024;
        *v204 = v151;
        *&v204[4] = 2080;
        *&v204[6] = "NOTHING";
        _os_log_debug_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp][offloads] (Client ID: %d) (Device ID: %d) Aggregate context description has %s for offloads.", &buf, 0x28u);
      }
    }

    std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&v205, 0);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v170.__r_.__value_.__l.__size_);
    v170 = v193;
    if (v193.__r_.__value_.__r.__words[2])
    {
      *(v193.__r_.__value_.__l.__size_ + 16) = &v170.__r_.__value_.__l.__size_;
      v193.__r_.__value_.__r.__words[0] = &v193.__r_.__value_.__l.__size_;
      *&v193.__r_.__value_.__r.__words[1] = 0uLL;
    }

    else
    {
      v170.__r_.__value_.__r.__words[0] = &v170.__r_.__value_.__l.__size_;
    }

    v26 = v194;
    v194 = 0;
    std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&v171, v26);
    v27 = v195;
    v195 = 0;
    std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&v172, v27);
    v173 = v196;
    std::__optional_storage_base<HALS_MetaDevice_HostedDSP::SubDeviceOffloadRequest,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<HALS_MetaDevice_HostedDSP::SubDeviceOffloadRequest,false>>(v174, &v197);
    if (v201 == 1)
    {
      if (v200)
      {
        CFRelease(v200);
      }

      if (v199 == 1 && v198 < 0)
      {
        operator delete(v197.n128_u64[0]);
      }
    }

    std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&v195, 0);
    std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&v194, 0);
    std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v193.__r_.__value_.__l.__size_);
    v173 = 0;
    std::__optional_destruct_base<HALS_MetaDevice_HostedDSP::SubDeviceOffloadRequest,false>::reset[abi:ne200100](v174);
  }

  v28 = *(this + 4);
  v192[0] = &unk_1F596EDE8;
  v192[1] = this;
  v192[3] = v192;
  OS::CF::MutableDictionary::MutableDictionary(&v181);
  OS::CF::Number::Number<unsigned int>(&v193, v28);
  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"device id", v193.__r_.__value_.__l.__size_);
  OS::CF::UntypedObject::~UntypedObject(&v193);
  v29 = *(this + 196);
  if (v29)
  {
    v30 = HALS_MetaSubDevice::CopyRealDeviceUID(v29);
  }

  else
  {
    v30 = 0;
  }

  v180[0] = &unk_1F5991188;
  v180[1] = v30;
  if (v30)
  {
    OS::CF::MutableDictionary::SetValueForKey<OS::CF::String>(theDict, @"master uid", v30);
  }

  v31 = *(this + 197);
  if (v31)
  {
    v32 = HALS_MetaSubDevice::CopyRealDeviceUID(v31);
  }

  else
  {
    v32 = 0;
  }

  v179[0] = &unk_1F5991188;
  v179[1] = v32;
  if (v32)
  {
    OS::CF::MutableDictionary::SetValueForKey<OS::CF::String>(theDict, @"clock device uid", v32);
  }

  else
  {
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&v193, *(this + 186), @"clock");
    if (v193.__r_.__value_.__l.__size_)
    {
      OS::CF::MutableDictionary::SetValueForKey<OS::CF::String>(theDict, @"clock device uid", v193.__r_.__value_.__l.__size_);
    }

    OS::CF::UntypedObject::~UntypedObject(&v193);
  }

  v33 = this;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&v193, *(this + 186), @"LDCM");
  v34 = OS::CF::Boolean::AsBool(v193.__r_.__value_.__l.__size_);
  OS::CF::UntypedObject::~UntypedObject(&v193);
  OS::CF::Boolean::Boolean(&v193, v34);
  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Boolean>(theDict, @"LDCM", v193.__r_.__value_.__l.__size_);
  OS::CF::UntypedObject::~UntypedObject(&v193);
  if (OS::CF::DictionaryBase<__CFDictionary const*>::HasKey(*(this + 186), @"VAD power assertion category"))
  {
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v193, *(this + 186), @"VAD power assertion category");
    v35 = v193.__r_.__value_.__l.__size_;
    if (v193.__r_.__value_.__l.__size_)
    {
      CFRetain(v193.__r_.__value_.__l.__size_);
      OS::CF::UntypedObject::~UntypedObject(&v193);
      v193.__r_.__value_.__r.__words[0] = &unk_1F5991138;
      v193.__r_.__value_.__l.__size_ = v35;
      OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"VAD power assertion category", v35);
    }

    OS::CF::UntypedObject::~UntypedObject(&v193);
    v33 = this;
  }

  StackedChannelPolicy = HALS_MetaDeviceDescription::GetStackedChannelPolicy(v33 + 184);
  if (HALS_MetaDeviceDescription::IsStackRequested(this + 184))
  {
    goto LABEL_85;
  }

  v56 = *(this + 188);
  v57 = *(this + 187);
  if (v56 - v57 == 24 && *(v57 + 1) - *v57 > 8uLL)
  {
    goto LABEL_85;
  }

  if (v57 == v56)
  {
    goto LABEL_124;
  }

  v58 = v57 + 24;
  do
  {
    v59 = *(v58 - 2) - *(v58 - 3);
    v60 = v59 > 8 || v58 == v56;
    v58 += 24;
  }

  while (!v60);
  if (v59 > 8)
  {
LABEL_85:
    OS::CF::MutableArray::MutableArray(v183);
    v36 = *(this + 187);
    v37 = *(this + 188);
    v157 = v37;
    while (v36 != v37)
    {
      if (*v36 != *(v36 + 8))
      {
        if (StackedChannelPolicy == 1 && (FirstDeviceWithDirection = HALS_MetaDeviceDescription::FindFirstDeviceWithDirection(v36)) != 0)
        {
          TotalNumberChannels = HALS_MetaSubDevice::GetTotalNumberChannels(FirstDeviceWithDirection, 0);
        }

        else
        {
          TotalNumberChannels = 2;
        }

        OS::CF::MutableDictionary::MutableDictionary(&v193);
        OS::CF::Number::Number<unsigned int>(&buf, TotalNumberChannels);
        OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(v193.__r_.__value_.__l.__size_, @"channels", buf.__r_.__value_.__l.__size_);
        OS::CF::UntypedObject::~UntypedObject(&buf);
        OS::CF::MutableArray::MutableArray(v40);
        v41 = v36;
        v42 = *v36;
        v158 = v41;
        v43 = *(v41 + 8);
        v159 = v43;
        while (v42 != v43)
        {
          v44 = HALS_MetaSubDevice::CopyRealDeviceUID(*v42);
          __p.__r_.__value_.__r.__words[0] = &unk_1F5991188;
          __p.__r_.__value_.__l.__size_ = v44;
          IsSynchPaddingOn = HALS_MetaSubDevice::IsSynchPaddingOn(*v42);
          IsDriftCorrectionOn = HALS_MetaSubDevice::IsDriftCorrectionOn(*v42);
          ExtraLatency = HALS_MetaSubDevice::GetExtraLatency(*v42, 0);
          OS::CF::MutableArray::MutableArray(&v205);
          NumberStreams = HALS_MetaSubDevice::GetNumberStreams(*v42, 0);
          if (TotalNumberChannels)
          {
            v47 = NumberStreams;
            if (NumberStreams)
            {
              v48 = 0;
              v49 = 0;
              do
              {
                v51 = HALS_MetaSubDevice::CopyStreamByIndex(*v42, 0, v48);
                if (v51)
                {
                  OS::CF::MutableDictionary::MutableDictionary(&v185);
                  OS::CF::MutableDictionary::SetValueForKey<OS::CF::String>(v186, @"uid", __p.__r_.__value_.__l.__size_);
                  OS::CF::Number::Number<unsigned int>(&v190, v48);
                  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(v186, @"index", v191);
                  OS::CF::UntypedObject::~UntypedObject(&v190);
                  OS::CF::Boolean::Boolean(&v190, IsSynchPaddingOn);
                  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Boolean>(v186, @"synch padding", v191);
                  OS::CF::UntypedObject::~UntypedObject(&v190);
                  OS::CF::Boolean::Boolean(&v190, IsDriftCorrectionOn);
                  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Boolean>(v186, @"drift", v191);
                  OS::CF::UntypedObject::~UntypedObject(&v190);
                  OS::CF::Number::Number<unsigned int>(&v190, ExtraLatency);
                  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(v186, @"extra latency", v191);
                  OS::CF::UntypedObject::~UntypedObject(&v190);
                  OS::CF::MutableArray::MutableArray(&v190);
                  NumberChannels = HALS_Stream::GetNumberChannels(v51);
                  v53 = v49;
                  for (i = NumberChannels; i; --i)
                  {
                    if (v53 >= TotalNumberChannels)
                    {
                      OS::CF::Number::Number<int>(&v188, -1);
                    }

                    else
                    {
                      OS::CF::Number::Number<unsigned int>(&v188, v53);
                    }

                    OS::CF::MutableArray::AppendValue<OS::CF::Number>(v191, v189);
                    OS::CF::UntypedObject::~UntypedObject(&v188);
                    ++v53;
                  }

                  v49 += NumberChannels;
                  OS::CF::MutableDictionary::SetValueForKey<OS::CF::MutableArray>(v186, @"channel map", v191);
                  OS::CF::MutableArray::AppendValue<OS::CF::MutableDictionary>(v206, v186);
                  OS::CF::UntypedObject::~UntypedObject(&v190);
                  OS::CF::UntypedObject::~UntypedObject(&v185);
                }

                HALS_ObjectMap::ReleaseObject(v51, v50);
                if (v49 >= TotalNumberChannels)
                {
                  break;
                }

                ++v48;
              }

              while (v48 < v47);
            }
          }

          OS::CF::MutableArray::AppendValue<OS::CF::MutableArray>(buf.__r_.__value_.__l.__size_, v206);
          OS::CF::UntypedObject::~UntypedObject(&v205);
          OS::CF::UntypedObject::~UntypedObject(&__p);
          ++v42;
          v43 = v159;
        }

        if (OS::CF::ArrayBase<__CFArray *>::GetSize(buf.__r_.__value_.__l.__size_))
        {
          OS::CF::MutableDictionary::SetValueForKey<OS::CF::MutableArray>(v193.__r_.__value_.__l.__size_, @"stream groups", buf.__r_.__value_.__l.__size_);
        }

        OS::CF::MutableArray::AppendValue<OS::CF::MutableDictionary>(v184, v193.__r_.__value_.__l.__size_);
        OS::CF::UntypedObject::~UntypedObject(&buf);
        OS::CF::UntypedObject::~UntypedObject(&v193);
        v36 = v158;
      }

      v36 += 24;
      v37 = v157;
    }

    if (OS::CF::ArrayBase<__CFArray *>::GetSize(v184))
    {
      OS::CF::MutableDictionary::SetValueForKey<OS::CF::MutableArray>(theDict, @"grid-out", v184);
    }

    v55 = v183;
  }

  else
  {
LABEL_124:
    OS::CF::MutableArray::MutableArray(&v188);
    v61 = *(this + 187);
    v62 = *(this + 188);
    *v164 = v62;
    while (v61 != v62)
    {
      v63 = *v61;
      if (*v61 != *(v61 + 8))
      {
        v64 = *v63;
        if (*v63)
        {
          v65 = HALS_MetaSubDevice::CopyRealDeviceUID(*v63);
          v193.__r_.__value_.__r.__words[0] = &unk_1F5991188;
          v193.__r_.__value_.__l.__size_ = v65;
          v66 = HALS_MetaSubDevice::IsSynchPaddingOn(v64);
          v67 = HALS_MetaSubDevice::IsDriftCorrectionOn(v64);
          DriftCorrectionAlgorithm = HALS_MetaSubDevice::GetDriftCorrectionAlgorithm(v64);
          DriftCorrectionQuality = HALS_MetaSubDevice::GetDriftCorrectionQuality(v64);
          v70 = HALS_MetaSubDevice::GetExtraLatency(v64, 0);
          v71 = HALS_MetaSubDevice::GetNumberStreams(v64, 0);
          if (v71)
          {
            for (j = 0; j != v71; ++j)
            {
              v74 = HALS_MetaSubDevice::CopyStreamByIndex(v64, 0, j);
              if (v74)
              {
                OS::CF::MutableDictionary::MutableDictionary(&buf);
                v75 = HALS_Stream::GetNumberChannels(v74);
                OS::CF::Number::Number<unsigned int>(&__p, v75);
                OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(buf.__r_.__value_.__l.__size_, @"channels", __p.__r_.__value_.__l.__size_);
                OS::CF::UntypedObject::~UntypedObject(&__p);
                OS::CF::MutableArray::MutableArray(&__p);
                OS::CF::MutableArray::MutableArray(&v205);
                OS::CF::MutableDictionary::MutableDictionary(&v185);
                OS::CF::MutableDictionary::SetValueForKey<OS::CF::String>(v186, @"uid", v193.__r_.__value_.__l.__size_);
                OS::CF::Number::Number<unsigned int>(&v190, j);
                OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(v186, @"index", v191);
                OS::CF::UntypedObject::~UntypedObject(&v190);
                OS::CF::Boolean::Boolean(&v190, v66);
                OS::CF::MutableDictionary::SetValueForKey<OS::CF::Boolean>(v186, @"synch padding", v191);
                OS::CF::UntypedObject::~UntypedObject(&v190);
                OS::CF::Boolean::Boolean(&v190, v67);
                OS::CF::MutableDictionary::SetValueForKey<OS::CF::Boolean>(v186, @"drift", v191);
                OS::CF::UntypedObject::~UntypedObject(&v190);
                OS::CF::Number::Number<unsigned int>(&v190, DriftCorrectionAlgorithm);
                OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(v186, @"drift algorithm", v191);
                OS::CF::UntypedObject::~UntypedObject(&v190);
                OS::CF::Number::Number<unsigned int>(&v190, DriftCorrectionQuality);
                OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(v186, @"drift quality", v191);
                OS::CF::UntypedObject::~UntypedObject(&v190);
                OS::CF::Number::Number<unsigned int>(&v190, v70);
                OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(v186, @"extra latency", v191);
                OS::CF::UntypedObject::~UntypedObject(&v190);
                OS::CF::MutableArray::AppendValue<OS::CF::MutableDictionary>(v206, v186);
                OS::CF::MutableArray::AppendValue<OS::CF::MutableArray>(__p.__r_.__value_.__l.__size_, v206);
                OS::CF::MutableDictionary::SetValueForKey<OS::CF::MutableArray>(buf.__r_.__value_.__l.__size_, @"stream groups", __p.__r_.__value_.__l.__size_);
                OS::CF::MutableArray::AppendValue<OS::CF::MutableDictionary>(v189, buf.__r_.__value_.__l.__size_);
                OS::CF::UntypedObject::~UntypedObject(&v185);
                OS::CF::UntypedObject::~UntypedObject(&v205);
                OS::CF::UntypedObject::~UntypedObject(&__p);
                OS::CF::UntypedObject::~UntypedObject(&buf);
              }

              HALS_ObjectMap::ReleaseObject(v74, v73);
            }
          }

          OS::CF::UntypedObject::~UntypedObject(&v193);
        }
      }

      v61 += 24;
      v62 = *v164;
    }

    if (OS::CF::ArrayBase<__CFArray *>::GetSize(v189))
    {
      OS::CF::MutableDictionary::SetValueForKey<OS::CF::MutableArray>(theDict, @"grid-out", v189);
    }

    v55 = &v188;
  }

  OS::CF::UntypedObject::~UntypedObject(v55);
  std::__function::__value_func<BOOL ()(HALS_Stream *,HALS_Client *)>::__value_func[abi:ne200100](&v205, v192);
  OS::CF::MutableArray::MutableArray(&v190);
  if (StackedChannelPolicy || (HALS_MetaDeviceDescription::IsStackRequested(this + 184) & 1) == 0)
  {
    v76 = v170.__r_.__value_.__r.__words[0];
    if (v170.__r_.__value_.__l.__data_ != &v170.__r_.__value_.__r.__words[1])
    {
      while (1)
      {
        v77 = *(v76 + 28);
        if ((v77 - 2) < 2)
        {
          break;
        }

        if (v77 == 6)
        {
          OS::CF::Number::Number<unsigned int>(&v193, 1);
          v78 = theDict;
          v79 = v193.__r_.__value_.__l.__size_;
          v80 = @"voice activity detection enable";
          goto LABEL_145;
        }

LABEL_146:
        v81 = *(v76 + 8);
        if (v81)
        {
          do
          {
            v82 = v81;
            v81 = v81->__r_.__value_.__r.__words[0];
          }

          while (v81);
        }

        else
        {
          do
          {
            v82 = *(v76 + 16);
            v60 = v82->__r_.__value_.__r.__words[0] == v76;
            v76 = v82;
          }

          while (!v60);
        }

        v76 = v82;
        if (v82 == &v170.__r_.__value_.__r.__words[1])
        {
          goto LABEL_152;
        }
      }

      OS::CF::Number::Number<unsigned int>(&v193, v77);
      v78 = theDict;
      v79 = v193.__r_.__value_.__l.__size_;
      v80 = @"vocal isolation type";
LABEL_145:
      OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(v78, v80, v79);
      OS::CF::UntypedObject::~UntypedObject(&v193);
      goto LABEL_146;
    }

LABEL_152:
    v83 = v171;
    if (v171)
    {
      v84 = *(v171 + 2);
      if (v84)
      {
        if (CFDictionaryGetCount(v84) && !DSP_Host_OffloadDictionary::has_all_id(v83))
        {
          DSP_Host_OffloadDictionary::deep_copy_to(v171, &v181, "device dsp offloads input");
        }
      }
    }

    v85 = v172;
    if (!v172)
    {
      goto LABEL_163;
    }

    std::string::basic_string[abi:ne200100]<0>(&v193, "content creation recording");
    has_id = DSP_Host_OffloadDictionary::has_id(v85, &v193);
    v87 = has_id;
    if (SHIBYTE(v193.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v193.__r_.__value_.__l.__data_);
      if (!v87)
      {
        goto LABEL_163;
      }
    }

    else if (!has_id)
    {
LABEL_163:
      v193.__r_.__value_.__r.__words[0] = a2;
      v193.__r_.__value_.__l.__size_ = &v190;
      std::__function::__value_func<BOOL ()(HALS_Stream *,HALS_Client *)>::__value_func[abi:ne200100](&v193.__r_.__value_.__r.__words[2], &v205);
      v88 = *(this + 187);
      v89 = *(this + 188);
      v160 = v89;
      while (v88 != v89)
      {
        v91 = *v88;
        v90 = *(v88 + 8);
        *v162 = v88;
        *v165 = v90;
        while (v91 != v90)
        {
          v92 = *v91;
          v93 = HALS_MetaSubDevice::CopyRealDeviceUID(*v91);
          buf.__r_.__value_.__r.__words[0] = &unk_1F5991188;
          buf.__r_.__value_.__l.__size_ = v93;
          v94 = HALS_MetaSubDevice::IsSynchPaddingOn(v92);
          v95 = HALS_MetaSubDevice::IsDriftCorrectionOn(v92);
          v96 = HALS_MetaSubDevice::GetDriftCorrectionAlgorithm(v92);
          v97 = HALS_MetaSubDevice::GetDriftCorrectionQuality(v92);
          v98 = HALS_MetaSubDevice::GetExtraLatency(v92, 1);
          v99 = HALS_MetaSubDevice::GetNumberStreams(v92, 1);
          if (v99)
          {
            for (k = 0; k != v99; ++k)
            {
              v101 = HALS_MetaSubDevice::CopyStreamByIndex(v92, 1, k);
              v103 = v101;
              if (v101)
              {
                __p.__r_.__value_.__r.__words[0] = v101;
                v185 = v193.__r_.__value_.__r.__words[0];
                if (!v196)
                {
                  std::__throw_bad_function_call[abi:ne200100]();
                }

                if ((*(*v196 + 48))(v196, &__p, &v185))
                {
                  OS::CF::MutableDictionary::MutableDictionary(&__p);
                  OS::CF::MutableDictionary::SetValueForKey<OS::CF::String>(__p.__r_.__value_.__l.__size_, @"uid", buf.__r_.__value_.__l.__size_);
                  OS::CF::Number::Number<unsigned int>(&v185, k);
                  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(__p.__r_.__value_.__l.__size_, @"index", v186);
                  OS::CF::UntypedObject::~UntypedObject(&v185);
                  OS::CF::Boolean::Boolean(&v185, v94);
                  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Boolean>(__p.__r_.__value_.__l.__size_, @"synch padding", v186);
                  OS::CF::UntypedObject::~UntypedObject(&v185);
                  OS::CF::Boolean::Boolean(&v185, v95);
                  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Boolean>(__p.__r_.__value_.__l.__size_, @"drift", v186);
                  OS::CF::UntypedObject::~UntypedObject(&v185);
                  OS::CF::Number::Number<unsigned int>(&v185, v96);
                  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(__p.__r_.__value_.__l.__size_, @"drift algorithm", v186);
                  OS::CF::UntypedObject::~UntypedObject(&v185);
                  OS::CF::Number::Number<unsigned int>(&v185, v97);
                  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(__p.__r_.__value_.__l.__size_, @"drift quality", v186);
                  OS::CF::UntypedObject::~UntypedObject(&v185);
                  OS::CF::Number::Number<unsigned int>(&v185, v98);
                  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(__p.__r_.__value_.__l.__size_, @"extra latency", v186);
                  OS::CF::UntypedObject::~UntypedObject(&v185);
                  OS::CF::MutableArray::AppendValue<OS::CF::MutableDictionary>(*(v193.__r_.__value_.__l.__size_ + 8), __p.__r_.__value_.__l.__size_);
                  OS::CF::UntypedObject::~UntypedObject(&__p);
                }
              }

              HALS_ObjectMap::ReleaseObject(v103, v102);
            }
          }

          OS::CF::UntypedObject::~UntypedObject(&buf);
          ++v91;
          v90 = *v165;
        }

        v89 = v160;
        v88 = *v162 + 24;
      }

      std::__function::__value_func<BOOL ()(HALS_Stream *,HALS_Client *)>::~__value_func[abi:ne200100](&v193.__r_.__value_.__r.__words[2]);
      goto LABEL_177;
    }

    DSP_Host_OffloadDictionary::deep_copy_to(v172, &v181, "dsp input settings");
    goto LABEL_163;
  }

LABEL_177:
  if (OS::CF::ArrayBase<__CFArray *>::GetSize(v191))
  {
    OS::CF::MutableDictionary::SetValueForKey<OS::CF::MutableArray>(theDict, @"grid-in", v191);
  }

  if (AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0) && v173)
  {
    if (a2)
    {
      v104 = *(a2 + 4);
    }

    else
    {
      v104 = 0;
    }

    v105 = *(this + 186);
    HALS_DSPHostPerClientConfiguration::configuration_for (&__p, v173, v104);
    if (__p.__r_.__value_.__r.__words[0])
    {
      buf.__r_.__value_.__r.__words[0] = __p.__r_.__value_.__r.__words[0] + 8;
      buf.__r_.__value_.__l.__size_ = __p.__r_.__value_.__l.__size_;
      v106 = &__p;
    }

    else
    {
      v106 = &buf;
    }

    v106->__r_.__value_.__r.__words[0] = 0;
    v106->__r_.__value_.__l.__size_ = 0;
    if (__p.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
    }

    v107 = buf.__r_.__value_.__r.__words[0];
    if (buf.__r_.__value_.__r.__words[0])
    {
      if (v105)
      {
        CFRetain(v105);
        v185 = v105;
        v108 = CFGetTypeID(v105);
        if (v108 != CFDictionaryGetTypeID())
        {
          v109 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v109, "Could not construct");
          __cxa_throw(v109, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }

      else
      {
        v185 = 0;
      }

      __p.__r_.__value_.__r.__words[0] = &unk_1F5974508;
      __p.__r_.__value_.__l.__size_ = &v185;
      (*(*v107 + 24))(v107, &__p);
      if (v185)
      {
        CFRelease(v185);
      }
    }

    if (buf.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](buf.__r_.__value_.__l.__size_);
    }

    if (v178 == 1)
    {
      if (v177)
      {
        v110 = v173;
        std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, v174);
        HALS_DSPHostPerClientConfiguration::set_offloads_requested(v110, v104, &v177, &__p);
        if (v167 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    HALS_DSPHostPerClientConfiguration::serialize_to_description(v173, v104, theDict);
  }

  v111 = HALS_MetaDeviceDescription::IsolatedUseCaseID(this + 184);
  v112 = theDict;
  if (!theDict || (v112 = CFDictionaryContainsKey(theDict, @"device id"), !v112))
  {
    v115 = 0;
    goto LABEL_222;
  }

  buf.__r_.__value_.__r.__words[0] = &unk_1F5991138;
  buf.__r_.__value_.__l.__size_ = 0;
  v113 = theDict;
  if (theDict)
  {
    v185 = 0;
    if (!CFDictionaryGetValueIfPresent(theDict, @"device id", &v185))
    {
      goto LABEL_220;
    }

    v114 = v185 ? CFGetTypeID(v185) : 0;
    if (v114 != CFNumberGetTypeID())
    {
      goto LABEL_220;
    }

    v116 = v185;
    if (v185)
    {
      CFRetain(v185);
      v117 = buf.__r_.__value_.__l.__size_;
      buf.__r_.__value_.__l.__size_ = v116;
      if (v117)
      {
        goto LABEL_219;
      }
    }

    else
    {
      v117 = buf.__r_.__value_.__l.__size_;
      buf.__r_.__value_.__l.__size_ = 0;
      if (v117)
      {
LABEL_219:
        CFRelease(v117);
      }
    }

LABEL_220:
    v113 = buf.__r_.__value_.__l.__size_;
  }

  v115 = OS::CF::Number::GetValue<unsigned int>(v113, 0);
  OS::CF::UntypedObject::~UntypedObject(&buf);
LABEL_222:
  if (HIDWORD(v111))
  {
    v123 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v123 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v112);
    }

    v125 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v124 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v124)
    {
      atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
      v126 = *v125;
      std::__shared_weak_count::__release_shared[abi:ne200100](v124);
    }

    else
    {
      v126 = *v125;
    }

    v127 = os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT);
    if (v127)
    {
      v128.i32[0] = bswap32(v111);
      v129 = vzip1_s8(v128, v128);
      v130.i64[0] = 0x1F0000001FLL;
      v130.i64[1] = 0x1F0000001FLL;
      v131.i64[0] = 0x5F0000005FLL;
      v131.i64[1] = 0x5F0000005FLL;
      v187 = 4;
      v132 = vbsl_s8(vmovn_s32(vcgtq_u32(v131, vsraq_n_s32(v130, vshlq_n_s32(vmovl_u16(v129), 0x18uLL), 0x18uLL))), v129, 0x2E002E002E002ELL);
      LODWORD(v185) = vuzp1_s8(v132, v132).u32[0];
      BYTE4(v185) = 0;
      LODWORD(buf.__r_.__value_.__l.__data_) = 136316163;
      *(buf.__r_.__value_.__r.__words + 4) = "HALS_MetaDevice.cpp";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = 1225;
      WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
      HIDWORD(buf.__r_.__value_.__r.__words[2]) = v115;
      v203 = 2081;
      *v204 = "has isolated audio use case";
      *&v204[8] = 2081;
      *&v204[10] = &v185;
      _os_log_impl(&dword_1DE1F9000, v126, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [hal_dsp][iso] (Device ID: %d) %{private}s %{private}s.", &buf, 0x2Cu);
      if (v187 < 0)
      {
        operator delete(v185);
      }
    }

    v133 = v170.__r_.__value_.__l.__size_;
    if (v170.__r_.__value_.__l.__size_)
    {
      v134 = &v170.__r_.__value_.__r.__words[1];
      do
      {
        v135 = v133;
        v136 = v134;
        v137 = *(v133 + 28);
        if (v137 >= 6)
        {
          v134 = v133;
        }

        v133 = *(v133 + 8 * (v137 < 6));
      }

      while (v133);
      if (v134 != &v170.__r_.__value_.__r.__words[1])
      {
        if (v137 < 6)
        {
          v135 = v136;
        }

        if (*(v135 + 28) <= 6u)
        {
          v138 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v138 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v127);
          }

          v140 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v139 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v139)
          {
            atomic_fetch_add_explicit(&v139->__shared_owners_, 1uLL, memory_order_relaxed);
            v141 = *v140;
            std::__shared_weak_count::__release_shared[abi:ne200100](v139);
          }

          else
          {
            v141 = *v140;
          }

          if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
            *(buf.__r_.__value_.__r.__words + 4) = "HALS_MetaDevice.cpp";
            WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = 1227;
            WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
            HIDWORD(buf.__r_.__value_.__r.__words[2]) = v115;
            _os_log_impl(&dword_1DE1F9000, v141, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [hal_dsp][iso][mtd] (Device ID: %d) has DSP type property for mtd.", &buf, 0x18u);
          }
        }
      }
    }
  }

  else if (!v170.__r_.__value_.__r.__words[2])
  {
    v119 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v119 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v112);
    }

    v121 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v120 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v120)
    {
      atomic_fetch_add_explicit(&v120->__shared_owners_, 1uLL, memory_order_relaxed);
      v122 = *v121;
      std::__shared_weak_count::__release_shared[abi:ne200100](v120);
    }

    else
    {
      v122 = *v121;
    }

    if (os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315907;
      *(buf.__r_.__value_.__r.__words + 4) = "HALS_MetaDevice.cpp";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = 1232;
      WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
      HIDWORD(buf.__r_.__value_.__r.__words[2]) = v115;
      v203 = 2081;
      *v204 = "Has no isolated audio use case nor any DSP Types";
      _os_log_debug_impl(&dword_1DE1F9000, v122, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp][iso] (Device ID: %d) %{private}s.", &buf, 0x22u);
    }
  }

  OS::CF::UntypedObject::~UntypedObject(&v190);
  std::__function::__value_func<BOOL ()(HALS_Stream *,HALS_Client *)>::~__value_func[abi:ne200100](&v205);
  v142 = HALS_MetaDeviceDescription::IsPrivate(this + 184);
  v143 = HALS_MetaDeviceDescription::CopyTapList(*(this + 186));
  buf.__r_.__value_.__r.__words[0] = &unk_1F59910D0;
  buf.__r_.__value_.__l.__size_ = v143;
  if (v143)
  {
    OS::CF::MutableArray::MutableArray(&__p);
    for (m = 0; OS::CF::ArrayBase<__CFArray const*>::GetSize(buf.__r_.__value_.__l.__size_) > m; ++m)
    {
      OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(&v193, &buf, m);
      if (v193.__r_.__value_.__l.__size_)
      {
        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&v185, v193.__r_.__value_.__l.__size_, @"uid");
        v188 = 0;
        v189 = 0;
        HALS_System::GetInstance(&v190, 0, &v188);
        v146 = HALS_System::CopyTapByUUID(v190, v186);
        if (v191)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v191);
        }

        if (v146 && v142 & 1 | ((*(v146 + 91) & 1) == 0))
        {
          OS::CF::MutableArray::AppendValue<OS::CF::Dictionary>(__p.__r_.__value_.__l.__size_, v193.__r_.__value_.__l.__size_);
        }

        HALS_ObjectMap::ReleaseObject(v146, v145);
        OS::CF::UntypedObject::~UntypedObject(&v185);
      }

      OS::CF::UntypedObject::~UntypedObject(&v193);
    }

    OS::CF::MutableDictionary::SetValueForKey<OS::CF::MutableArray>(theDict, @"taps", __p.__r_.__value_.__l.__size_);
    if (HALS_MetaDeviceDescription::IsPrivate(this + 184))
    {
      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&v193, *(this + 186), @"tapautostart");
      if (OS::CF::Boolean::AsBool(v193.__r_.__value_.__l.__size_))
      {
        v147 = HALS_MetaDeviceDescription::IsPrivate(this + 184);
      }

      else
      {
        v147 = 0;
      }

      OS::CF::UntypedObject::~UntypedObject(&v193);
      OS::CF::Boolean::Boolean(&v193, v147);
      OS::CF::MutableDictionary::SetValueForKey<OS::CF::Boolean>(theDict, @"tapautostart", v193.__r_.__value_.__l.__size_);
      OS::CF::UntypedObject::~UntypedObject(&v193);
    }

    OS::CF::UntypedObject::~UntypedObject(&__p);
  }

  OS::CF::UntypedObject::~UntypedObject(&buf);
  v148 = theDict;
  if (theDict)
  {
    CFRetain(theDict);
  }

  OS::CF::UntypedObject::~UntypedObject(v179);
  OS::CF::UntypedObject::~UntypedObject(v180);
  OS::CF::UntypedObject::~UntypedObject(&v181);
  std::__function::__value_func<BOOL ()(HALS_Stream *,HALS_Client *)>::~__value_func[abi:ne200100](v192);
  if (v178 == 1)
  {
    if (v177)
    {
      CFRelease(v177);
    }

    if (v176 == 1 && v175 < 0)
    {
      operator delete(v174[0]);
    }
  }

  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&v172, 0);
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](&v171, 0);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v170.__r_.__value_.__l.__size_);
  v149 = *MEMORY[0x1E69E9840];
  return v148;
}
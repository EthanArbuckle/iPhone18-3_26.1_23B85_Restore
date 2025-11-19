void sub_1DE3B84B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1DE3B84C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HALS_DeviceState::Value::~Value(va);
  _Unwind_Resume(a1);
}

void HALS_ClockDeviceState::Compare(HALS_ClockDeviceState *this, const HALS_ClockDeviceState *a2, const AudioObjectPropertyAddress *a3, CAPropertyAddressList *a4)
{
  v4 = *(this + 1);
  v5 = (this + 16);
  if (v4 != (this + 16))
  {
    v6 = a3;
    v8 = (a2 + 16);
    while (1)
    {
      v9 = *v8;
      if (!*v8)
      {
        goto LABEL_42;
      }

      v10 = v8;
      do
      {
        v11 = operator<((v9 + 32), &v4[2].mElement);
        if (v11)
        {
          v12 = 8;
        }

        else
        {
          v12 = 0;
        }

        if (!v11)
        {
          v10 = v9;
        }

        v9 = *(v9 + v12);
      }

      while (v9);
      if (v10 == v8 || operator<(&v4[2].mElement, v10 + 8) || (mSelector = v4[4].mSelector, mSelector != *(v10 + 12)))
      {
LABEL_42:
        if (v4[2].mElement == *this)
        {
          CAPropertyAddressList::AppendUniqueItem(v6, v4 + 3, a3);
        }

        goto LABEL_44;
      }

      if (mSelector > 1718367025)
      {
        break;
      }

      if (mSelector != 1634951780)
      {
        if (mSelector == 1667658612 || mSelector == 1668641388)
        {
LABEL_28:
          if (!CFEqual(*&v4[12].mSelector, v10[18]))
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        }

LABEL_38:
        v14 = *&v4[4].mElement;
        a3 = (*&v4[5].mScope - v14);
        v15 = v10[7];
        if (a3 != (v10[8] - v15) || memcmp(v14, v15, a3))
        {
          goto LABEL_42;
        }

        goto LABEL_44;
      }

      if (*&v4[8].mSelector != *(v10 + 12) || v4[8].mElement != *(v10 + 26) || v4[9].mScope != *(v10 + 28) || v4[9].mElement != *(v10 + 29) || v4[10].mScope != *(v10 + 31) || v4[10].mElement != *(v10 + 32) || !CA::Implementation::EquivalentFormatFlags(&v4[8], (v10 + 12), 1))
      {
        goto LABEL_42;
      }

LABEL_44:
      v16 = *&v4->mElement;
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *&v16->mSelector;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = *&v4[1].mScope;
          v18 = *v17 == v4;
          v4 = v17;
        }

        while (!v18);
      }

      v4 = v17;
      if (v17 == v5)
      {
        return;
      }
    }

    if (mSelector > 1886155635)
    {
      if (mSelector == 1886155636)
      {
        goto LABEL_28;
      }

      if (mSelector == 1969828658)
      {
        if (v4[6].mElement != *(v10 + 20))
        {
          goto LABEL_42;
        }

        goto LABEL_44;
      }
    }

    else
    {
      if (mSelector == 1718367026)
      {
        if (*&v4[7].mSelector != *(v10 + 21))
        {
          goto LABEL_42;
        }

        goto LABEL_44;
      }

      if (mSelector == 1718367796)
      {
        if (*&v4[7].mScope != *(v10 + 11))
        {
          goto LABEL_42;
        }

        goto LABEL_44;
      }
    }

    goto LABEL_38;
  }
}

void HALS_Tap::HandleGroupObjectPropertiesChanged(unsigned int *a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN8HALS_Tap34HandleGroupObjectPropertiesChangedEjjjPKjS1_jPK26AudioObjectPropertyAddressbRKNSt3__16vectorIjNS5_9allocatorIjEEEEN10applesauce8dispatch2v15groupE_block_invoke;
  v4[3] = &unk_1E8673FA0;
  v4[4] = &v5;
  v4[5] = a1;
  v2 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v2, v4);
  if (*(v6 + 24) == 1)
  {
    v3 = a1[4];
    *&v9.mSelector = 0x676C6F6274666D74;
    v9.mElement = 0;
    HALS_Object::PropertiesChanged(a1, v3, 0, 1, &v9);
  }

  _Block_object_dispose(&v5, 8);
}

void sub_1DE3B8870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN8HALS_Tap34HandleGroupObjectPropertiesChangedEjjjPKjS1_jPK26AudioObjectPropertyAddressbRKNSt3__16vectorIjNS5_9allocatorIjEEEEN10applesauce8dispatch2v15groupE_block_invoke(uint64_t a1)
{
  result = HALS_Tap::_UpdateTapFormatFromDeviceFormat(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t HALS_Tap::_UpdateTapFormatFromDeviceFormat(HALS_Tap *this)
{
  v1 = *(this + 31);
  if (v1)
  {
    v3 = HALS_ObjectMap::CopyObjectByObjectID(*v1);
    v5 = v3;
    if (v3)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      HALS_Device::CopyStreamList(v3, 0, &v14);
      if (v15 != v14)
      {
        v7 = *(*(this + 31) + 4);
        if (v7 < v15 - v14)
        {
          HALS_Stream::GetCurrentVirtualFormat(v14[v7], &v13);
          v8 = *(this + 33);
          v12 = v13;
          HALS_MultiTap::set_format(v8, &v12, 0x100000002);
          HALS_ArrayReleaser<HALS_Stream>::~HALS_ArrayReleaser(&v14, v9);
          v10 = 1;
LABEL_9:
          HALS_ObjectMap::ReleaseObject(v5, v4);
          return v10;
        }
      }

      HALS_ArrayReleaser<HALS_Stream>::~HALS_ArrayReleaser(&v14, v6);
    }

    v10 = 0;
    goto LABEL_9;
  }

  return 0;
}

void sub_1DE3B8990(_Unwind_Exception *a1, HALS_Object *a2)
{
  HALS_ArrayReleaser<HALS_Stream>::~HALS_ArrayReleaser((v3 - 40), a2);
  HALS_ObjectMap::ReleaseObject(v2, v5);
  _Unwind_Resume(a1);
}

void HALS_Tap::SetPropertyData(HALS_Tap *this, uint64_t a2, const AudioObjectPropertyAddress *a3, unsigned int a4, CFTypeRef *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  v116 = *MEMORY[0x1E69E9840];
  if (((*(*this + 104))(this, a2, a3, a8, a5, a6, a7) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  if (a3->mSelector == 1952740195)
  {
    if (a8)
    {
      v21 = a8 + 271;
      if (*(a8 + 272) == 1)
      {
        if ((*v21 & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_Client.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1009;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Client is not granted access to the audio taps.", buf, 0x12u);
          }

          v22 = __cxa_allocate_exception(0x10uLL);
          *v22 = off_1F5991DD8;
          v22[2] = 560492391;
        }
      }

      else
      {
        *v21 = 257;
      }
    }

    if (a4 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Tap.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 219;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Tap::SetPropertyData: bad property data size for kAudioTapPropertyDescription", buf, 0x12u);
      }

      v59 = __cxa_allocate_exception(0x10uLL);
      *v59 = off_1F5991DD8;
      v59[2] = 561211770;
    }

    applesauce::CF::DictionaryRef::from_get(&cf, *a5);
    __p = 0;
    v83 = 0;
    v84 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, *(this + 28), *(this + 29), (*(this + 29) - *(this + 28)) >> 2);
    v25 = *(this + 256);
    v78 = 0;
    v79 = &v78;
    v80 = 0x2000000000;
    v81 = 0;
    v74 = 0;
    v75 = &v74;
    v76 = 0x2000000000;
    v77 = 0;
    v70 = 0;
    v71 = &v70;
    v72 = 0x2000000000;
    v73 = 0;
    v66 = 0;
    v67 = &v66;
    v68 = 0x2000000000;
    v69 = 0;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZN8HALS_Tap14SetDescriptionERKN10applesauce2CF13DictionaryRefE_block_invoke;
    v109 = &unk_1E8673F58;
    v114 = this;
    p_cf = &cf;
    v110 = &v78;
    v111 = &v70;
    v112 = &v66;
    v113 = &v74;
    v26 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v26, buf);
    HALS_Tap::UpdateFilteredProcesses(this);
    if (*(v79 + 24) == 1)
    {
      HALS_Tap::UpdateReadingContexts(this, &__p);
    }

    else if ((v25 & 1) != 0 || *(this + 256) != 1)
    {
      v34 = *(this + 33);
      v33 = *(this + 34);
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*(v34 + 488) == 1)
      {
        std::__function::__value_func<void ()(HALS_MultiTap::Reader_Action_State)>::~__value_func[abi:ne200100](v34 + 456);
        *(v34 + 488) = 0;
      }

      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      if (*(this + 256) == 1)
      {
        v97 = 0;
        v98 = 0;
        v99 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v97, __p, v83, (v83 - __p) >> 2);
        v94 = 0;
        v95 = 0;
        v96 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v94, *(this + 28), *(this + 29), (*(this + 29) - *(this + 28)) >> 2);
        v35 = v97;
        v36 = v98;
        v62 = v97;
        std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
        v37 = v94;
        v38 = v95;
        std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
        v91 = 0;
        v92 = 0;
        v93 = 0;
        v85 = v35;
        v61 = v37;
        v100[0] = v36;
        v103 = v38;
        v104 = v37;
        v60 = v38;
        v88 = &v91;
        v89 = 0;
        std::__set_difference[abi:ne200100]<std::__less<void,void>,std::__wrap_iter<unsigned int *> &,std::__wrap_iter<unsigned int *> &,std::__wrap_iter<unsigned int *> &,std::__wrap_iter<unsigned int *> &,std::insert_iterator<std::vector<unsigned int>> &>(&v105, &v85, v100, &v104, &v103, &v88);
        v89 = 0;
        v90 = 0;
        v88 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v88, v91, v92, (v92 - v91) >> 2);
        v39 = v89;
        v63 = v88;
        if (v88 != v89)
        {
          v40 = v88;
          do
          {
            v41 = HALS_ObjectMap::CopyObjectByObjectID(*v40);
            v43 = v41;
            if (v41)
            {
              HALS_Client::RemoveMuter(v41, *(this + 4));
              (*(*v43 + 208))(&v105, v43);
              v45 = v105;
              v44 = v106;
              if (v105 != v106)
              {
                do
                {
                  v46 = HALS_ObjectMap::CopyObjectByObjectID(*v45);
                  v48 = v46;
                  if (v46)
                  {
                    v49 = *(this + 33);
                    v50 = *(this + 34);
                    if (v50)
                    {
                      atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    HALS_IOContext::RemoveTap(*(v46 + 104), v49, v50);
                    if (v50)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v50);
                    }
                  }

                  HALS_ObjectMap::ReleaseObject(v48, v47);
                  ++v45;
                }

                while (v45 != v44);
                v45 = v105;
              }

              if (v45)
              {
                v106 = v45;
                operator delete(v45);
              }
            }

            HALS_ObjectMap::ReleaseObject(v43, v42);
            v40 = (v40 + 4);
          }

          while (v40 != v39);
        }

        if (v63)
        {
          v89 = v63;
          operator delete(v63);
        }

        v85 = 0;
        v86 = 0;
        v87 = 0;
        v103 = v60;
        v104 = v61;
        v102 = v62;
        v100[1] = 0;
        v101 = v36;
        v100[0] = &v85;
        std::__set_difference[abi:ne200100]<std::__less<void,void>,std::__wrap_iter<unsigned int *> &,std::__wrap_iter<unsigned int *> &,std::__wrap_iter<unsigned int *> &,std::__wrap_iter<unsigned int *> &,std::insert_iterator<std::vector<unsigned int>> &>(&v105, &v104, &v103, &v102, &v101, v100);
        v106 = 0;
        v107 = 0;
        v105 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v105, v85, v86, (v86 - v85) >> 2);
        v51 = v105;
        HALS_Tap::AddTapToClients(this, v105, v106);
        if (v51)
        {
          v106 = v51;
          operator delete(v51);
        }

        if (v85)
        {
          v86 = v85;
          operator delete(v85);
        }

        if (v91)
        {
          v92 = v91;
          operator delete(v91);
        }

        if (v61)
        {
          operator delete(v61);
        }

        if (v62)
        {
          operator delete(v62);
        }
      }

      else
      {
        v53 = v83;
        if (__p != v83)
        {
          v54 = __p;
          do
          {
            HALS_Tap::SetClientMuteState(this, *v54++, 0);
          }

          while (v54 != v53);
        }

        v97 = 0;
        v98 = 0;
        HALS_System::GetInstance(&v105, 0, &v97);
        v55 = v105;
        v56 = *(this + 34);
        v94 = *(this + 33);
        v95 = v56;
        if (v56)
        {
          atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        HALS_System::RemoveTapFromAllContexts(v55, &v94);
        if (v56)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v56);
        }

        if (v106)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v106);
        }
      }
    }

    else
    {
      HALS_Tap::AddTapToAllContexts(this);
    }

    v27 = *(this + 4);
    v105 = 0x676C6F6274647363;
    LODWORD(v106) = 0;
    HALS_Object::PropertiesChanged(this, v27, 0, 1, &v105);
    if (*(v67 + 24) == 1)
    {
      v28 = *(this + 4);
      v105 = 0x676C6F6274707323;
      LODWORD(v106) = 0;
      HALS_Object::PropertiesChanged(this, v28, 0, 1, &v105);
    }

    if (*(v71 + 24) == 1)
    {
      v29 = *(this + 4);
      v105 = 0x676C6F6274666D74;
      LODWORD(v106) = 0;
      HALS_Object::PropertiesChanged(this, v29, 0, 1, &v105);
    }

    if (*(v75 + 24) == 1)
    {
      v30 = *(this + 4);
      v105 = 0x676C6F626C6E616DLL;
      LODWORD(v106) = 0;
      HALS_Object::PropertiesChanged(this, v30, 0, 1, &v105);
    }

    _Block_object_dispose(&v66, 8);
    _Block_object_dispose(&v70, 8);
    _Block_object_dispose(&v74, 8);
    _Block_object_dispose(&v78, 8);
    if (__p)
    {
      operator delete(__p);
    }

    v31 = *(this + 4);
    if (a8)
    {
      v32 = *(a8 + 4);
    }

    else
    {
      v32 = 0;
    }

    strcpy(buf, "csdtbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    HALS_Object::PropertiesChanged(this, v31, v32, 1, buf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    if (a3->mSelector != 1819173229)
    {
      HALS_Object::SetPropertyData(this, a2, a3, v14, v15, v16, v17, a8);
    }

    if (a4 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Tap.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 197;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Tap::SetPropertyData: bad property data size for kAudioObjectPropertyName", buf, 0x12u);
      }

      v58 = __cxa_allocate_exception(0x10uLL);
      *v58 = off_1F5991DD8;
      v58[2] = 561211770;
    }

    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 0x40000000;
    v65[2] = ___ZN8HALS_Tap15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke;
    v65[3] = &__block_descriptor_tmp_3_4486;
    v65[4] = this;
    v65[5] = a5;
    v18 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v18, v65);
    v19 = *(this + 4);
    if (a8)
    {
      v20 = *(a8 + 4);
    }

    else
    {
      v20 = 0;
    }

    strcpy(buf, "csdtbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    HALS_Object::PropertiesChanged(this, v19, v20, 1, buf);
    v23 = *(this + 4);
    if (a8)
    {
      v24 = *(a8 + 4);
    }

    else
    {
      v24 = 0;
    }

    strcpy(buf, "manlbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    HALS_Object::PropertiesChanged(this, v23, v24, 1, buf);
  }

  v52 = *MEMORY[0x1E69E9840];
}

void sub_1DE3B93E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, const void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  if (v53)
  {
    *(v54 - 224) = v53;
    operator delete(v53);
  }

  if (__p)
  {
    a42 = __p;
    operator delete(__p);
  }

  if (a47)
  {
    a48 = a47;
    operator delete(a47);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  if (a9)
  {
    a39 = a9;
    operator delete(a9);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef(&a15);
  _Unwind_Resume(a1);
}

void ___ZN8HALS_Tap15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = PropertyListDeepImmutableCopy(**(a1 + 40));
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  v5 = *(v1 + 56);
  *(v1 + 56) = v3;
  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_1DE3B9640(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a10);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3B95F0);
}

void ___ZN8HALS_Tap14SetDescriptionERKN10applesauce2CF13DictionaryRefE_block_invoke(void *a1)
{
  v2 = a1[8];
  *(v2 + 256) = 0;
  HALS_Tap::GetName(&v8, *(v2 + 56));
  v3 = a1[9];
  v4 = *v3;
  if (*v3)
  {
    CFRetain(*v3);
  }

  v7 = v4;
  *(*(a1[4] + 8) + 24) = HALS_Tap::_UpdateFromDescription(v2, &v7, (*(a1[5] + 8) + 24), (*(a1[6] + 8) + 24));
  if (v4)
  {
    CFRelease(v4);
  }

  *(v2 + 256) = 1;
  HALS_Tap::GetName(&cf, *(v2 + 56));
  v5 = v8;
  *(*(a1[7] + 8) + 24) = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v8, &cf) != kCFCompareEqualTo;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_1DE3B9770(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  applesauce::CF::StringRef::~StringRef(va1);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3B974CLL);
}

void HALS_Tap::UpdateFilteredProcesses(HALS_Tap *this)
{
  if (*(this + 89) == 1)
  {
    v10[0] = 0;
    v10[1] = 0;
    HALS_System::GetInstance(&v11, 0, v10);
    HALS_System::GetProcessObjectList(&v13, v11);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1174405120;
    v6[2] = ___ZN8HALS_Tap23UpdateFilteredProcessesEv_block_invoke;
    v6[3] = &__block_descriptor_tmp_25_4491;
    v6[4] = this;
    __p = 0;
    v8 = 0;
    v9 = 0;
    v2 = v13;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v13, v14, (v14 - v13) >> 2);
    v3 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v3, v6);
    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }

    if (v2)
    {
      operator delete(v2);
    }
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = ___ZN8HALS_Tap23UpdateFilteredProcessesEv_block_invoke_26;
    v5[3] = &__block_descriptor_tmp_27_4492;
    v5[4] = this;
    v4 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v4, v5);
  }
}

void sub_1DE3B9920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (v20)
  {
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

void HALS_Tap::UpdateReadingContexts(HALS_Tap *this, unsigned int **a2)
{
  v5 = *(this + 33);
  v4 = *(this + 34);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(v5 + 488) == 1)
  {
    std::__function::__value_func<void ()(HALS_MultiTap::Reader_Action_State)>::~__value_func[abi:ne200100](v5 + 456);
    *(v5 + 488) = 0;
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v7 = *a2;
  v6 = a2[1];
  while (v7 != v6)
  {
    v8 = *v7++;
    HALS_Tap::SetClientMuteState(this, v8, 0);
  }

  v9 = HALS_MetaManager::sInstance;
  HALS_Tap::GetUID(&cf, *(this + 8));
  v36 = 0;
  v37 = 0;
  v38 = 0;
  HALS_DeviceManager::CopyRawDeviceList(v9, &v36);
  v11 = v36;
  v12 = cf;
  v33 = v37;
  if (v36 != v37)
  {
    v32 = &v54;
    v30 = v40;
    v31 = v49;
    while (1)
    {
      v13 = *v11;
      if (v12)
      {
        CFRetain(v12);
        v35 = v12;
        CFRetain(v12);
        v14 = v12;
      }

      else
      {
        v14 = 0;
        v35 = 0;
      }

      v40[4] = v12;
      v50 = 0;
      v51 = &v50;
      v52 = 0x3802000000;
      v53 = __Block_byref_object_copy__134;
      v54 = __Block_byref_object_dispose__135;
      v55[0] = &unk_1F59910D0;
      v55[1] = 0;
      v47 = MEMORY[0x1E69E9820];
      v48 = 0x40000000;
      v49[0] = ___ZN15HALS_MetaDevice6HasTapEN10applesauce2CF9StringRefE_block_invoke;
      v49[1] = &unk_1E8675068;
      v49[2] = &v50;
      v49[3] = v13;
      v15 = (*(*v13 + 64))(v13);
      HALB_CommandGate::ExecuteCommand(v15, &v47);
      v16 = v51[6];
      if (v16)
      {
        break;
      }

LABEL_40:
      v26 = 0;
LABEL_42:
      _Block_object_dispose(&v50, 8);
      OS::CF::UntypedObject::~UntypedObject(v55);
      if (v12)
      {
        CFRelease(v12);
      }

      if (v26)
      {
        v50 = 0;
        v51 = &v50;
        v52 = 0x2000000000;
        v53 = 0;
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 0x40000000;
        v40[0] = ___ZN15HALS_MetaDevice16UpdateTapReadersEN10applesauce2CF9StringRefE_block_invoke;
        v40[1] = &unk_1E86750B8;
        v40[2] = &v50;
        v40[3] = v13;
        v27 = (*(*v13 + 64))(v13);
        HALB_CommandGate::ExecuteCommand(v27, v39);
        v28 = v13[4];
        v47 = 0x676C6F6261636F6DLL;
        LODWORD(v48) = 0;
        (*(*v13 + 128))(v13, v28, &v47, 8, v51 + 3, 0, 0, 0, v30, v31, v32);
        _Block_object_dispose(&v50, 8);
      }

      if (v14)
      {
        CFRelease(v14);
      }

      if (++v11 == v33)
      {
        goto LABEL_49;
      }
    }

    v17 = 0;
    while (1)
    {
      if (OS::CF::ArrayBase<__CFArray const*>::GetSize(v16) <= v17)
      {
        goto LABEL_40;
      }

      v18 = v17;
      OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(v45, (v51 + 5), v17);
      if (theDict)
      {
        break;
      }

LABEL_39:
      OS::CF::UntypedObject::~UntypedObject(v45);
      v17 = v18 + 1;
      v16 = v51[6];
    }

    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v44, theDict, @"uid");
    OS::CF::String::AsStdString(&v43, v44);
    if (!v12)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    applesauce::CF::convert_to<std::string,0>(__p, v12);
    v19 = HIBYTE(v43.__r_.__value_.__r.__words[2]);
    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v43.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v43.__r_.__value_.__l.__size_;
    }

    v21 = v42;
    v22 = v42;
    if ((v42 & 0x80u) != 0)
    {
      v21 = __p[1];
    }

    if (size == v21)
    {
      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v43;
      }

      else
      {
        v23 = v43.__r_.__value_.__r.__words[0];
      }

      if ((v42 & 0x80u) == 0)
      {
        v24 = __p;
      }

      else
      {
        v24 = __p[0];
      }

      v25 = memcmp(v23, v24, size) == 0;
      if ((v22 & 0x80000000) == 0)
      {
LABEL_36:
        if (v19 < 0)
        {
          operator delete(v43.__r_.__value_.__l.__data_);
        }

        OS::CF::UntypedObject::~UntypedObject(v44);
        if (v25)
        {
          OS::CF::UntypedObject::~UntypedObject(v45);
          v26 = 1;
          goto LABEL_42;
        }

        goto LABEL_39;
      }
    }

    else
    {
      v25 = 0;
      if ((v42 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }
    }

    operator delete(__p[0]);
    v19 = HIBYTE(v43.__r_.__value_.__r.__words[2]);
    goto LABEL_36;
  }

LABEL_49:
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&v36, v10);
  if (v12)
  {
    CFRelease(v12);
  }
}

void sub_1DE3B9E30(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, OS::CF::UntypedObject *a14, const void *a15, __int16 a16, char a17, char a18, int a19, HALS_ObjectMap **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, uint64_t a40, char a41)
{
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&a20, a2);
  applesauce::CF::StringRef::~StringRef(&a15);
  _Unwind_Resume(a1);
}

void HALS_Tap::AddTapToAllContexts(HALS_Tap *this)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v3, *(this + 28), *(this + 29), (*(this + 29) - *(this + 28)) >> 2);
  v2 = v3;
  HALS_Tap::AddTapToClients(this, v3, v4);
  if (v2)
  {

    operator delete(v2);
  }
}

void sub_1DE3B9F58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

std::__wrap_iter<unsigned int *>::iterator_type std::__set_difference[abi:ne200100]<std::__less<void,void>,std::__wrap_iter<unsigned int *> &,std::__wrap_iter<unsigned int *> &,std::__wrap_iter<unsigned int *> &,std::__wrap_iter<unsigned int *> &,std::insert_iterator<std::vector<unsigned int>> &>(std::__wrap_iter<unsigned int *>::iterator_type result, const std::vector<unsigned int>::value_type **a2, const std::vector<unsigned int>::value_type **a3, const std::vector<unsigned int>::value_type **a4, const std::vector<unsigned int>::value_type **a5, uint64_t a6)
{
  v7 = result;
  v8 = *a2;
  v9 = *a3;
  if (*a2 == *a3)
  {
LABEL_12:
    v19 = *a6;
    v18.__i_ = *(a6 + 8);
    v9 = v8;
  }

  else
  {
    v12 = *a4;
    if (*a4 != *a5)
    {
      while (*v8 >= *v12)
      {
        v16 = a2;
        v17 = a4;
        if (*v12 >= *v8)
        {
          goto LABEL_6;
        }

LABEL_7:
        *v17 = v12 + 1;
        v8 = *a2;
        v9 = *a3;
        if (*a2 == *a3)
        {
          goto LABEL_12;
        }

        v12 = *a4;
        if (*a4 == *a5)
        {
          goto LABEL_9;
        }
      }

      v15.__i_ = *(a6 + 8);
      result = std::vector<unsigned int>::insert(*a6, v15, v8).__i_;
      v8 = result;
      v16 = (a6 + 8);
      v17 = a2;
LABEL_6:
      *v16 = v8 + 1;
      v12 = *v17;
      goto LABEL_7;
    }

LABEL_9:
    v19 = *a6;
    v18.__i_ = *(a6 + 8);
    while (v8 != v9)
    {
      result = std::vector<unsigned int>::insert(v19, v18, v8).__i_;
      v18.__i_ = result + 1;
      ++v8;
    }
  }

  v7->__i_ = v9;
  v7[1].__i_ = v19;
  v7[2].__i_ = v18.__i_;
  return result;
}

void HALS_Tap::AddTapToClients(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v28[3] = *MEMORY[0x1E69E9840];
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      v6 = *v5;
      v7 = HALS_ObjectMap::CopyObjectByObjectID(v6);
      v9 = v7;
      if (v7)
      {
        (*(*v7 + 208))(&__p, v7);
        v10 = __p;
        v11 = v26;
        while (v10 != v11)
        {
          v13 = HALS_ObjectMap::CopyObjectByObjectID(*v10);
          if (v13)
          {
            HALS_Tap::AddTapToContext(a1, v13);
          }

          HALS_ObjectMap::ReleaseObject(v13, v12);
          ++v10;
        }

        if (*(a1 + 96) == 1)
        {
          HALS_Tap::SetClientMuteState(a1, v6, 1);
        }

        if (__p)
        {
          v26 = __p;
          operator delete(__p);
        }
      }

      HALS_ObjectMap::ReleaseObject(v9, v8);
      ++v5;
    }

    while (v5 != a3);
  }

  if (*(a1 + 96) == 2)
  {
    v15 = *(a1 + 264);
    v14 = *(a1 + 272);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = *(a1 + 16);
    v22 = &unk_1F596B730;
    v23 = v16;
    v24 = &v22;
    v17 = (v15 + 456);
    if (*(v15 + 488) == 1)
    {
      std::__function::__value_func<void ()(HALS_MultiTap::Reader_Action_State)>::__value_func[abi:ne200100](&__p, &v22);
      if (v17 != &__p)
      {
        v18 = p_p;
        v19 = *(v15 + 480);
        if (p_p == &__p)
        {
          if (v19 == v17)
          {
            (*(*p_p + 3))(p_p, v28);
            (*(*p_p + 4))(p_p);
            p_p = 0;
            (*(**(v15 + 480) + 24))(*(v15 + 480), &__p);
            (*(**(v15 + 480) + 32))(*(v15 + 480));
            *(v15 + 480) = 0;
            p_p = &__p;
            (*(v28[0] + 24))(v28, v15 + 456);
            (*(v28[0] + 32))(v28);
          }

          else
          {
            (*(*p_p + 3))(p_p, v15 + 456);
            (*(*p_p + 4))(p_p);
            p_p = *(v15 + 480);
          }

          *(v15 + 480) = v17;
        }

        else if (v19 == v17)
        {
          (*(*v19 + 3))(*(v15 + 480), &__p);
          (*(**(v15 + 480) + 32))(*(v15 + 480));
          *(v15 + 480) = p_p;
          p_p = &__p;
        }

        else
        {
          p_p = *(v15 + 480);
          *(v15 + 480) = v18;
        }
      }

      std::__function::__value_func<void ()(HALS_MultiTap::Reader_Action_State)>::~__value_func[abi:ne200100](&__p);
    }

    else
    {
      std::__function::__value_func<void ()(HALS_MultiTap::Reader_Action_State)>::__value_func[abi:ne200100](v15 + 456, &v22);
      *(v15 + 488) = 1;
    }

    os_unfair_lock_lock((v15 + 384));
    v20 = *(v15 + 416);
    os_unfair_lock_unlock((v15 + 384));
    if (v20)
    {
      std::function<void ()(HALS_MultiTap::Reader_Action_State)>::operator()(*(v15 + 480), 0);
    }

    std::__function::__value_func<void ()(HALS_MultiTap::Reader_Action_State)>::~__value_func[abi:ne200100](&v22);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void sub_1DE3BA498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HALS_Tap::SetClientMuteState(HALS_Tap *this, HALS_ObjectMap *a2, int a3)
{
  v5 = HALS_ObjectMap::CopyObjectByObjectID(a2);
  v7 = v5;
  if (v5)
  {
    if (a3)
    {
      v8 = *(this + 31);
      if (v8)
      {
        v8 = (*v8 | 0x100000000);
      }

      v9 = *(this + 4);
      v20 = 0;
      v21 = &v20;
      v22 = 0x2000000000;
      v23 = 0;
      v16 = 0;
      v17 = &v16;
      v18 = 0x2000000000;
      v19 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 0x40000000;
      v12[2] = ___ZN11HALS_Client8AddMuterEN4AMCP9DirectionEjNSt3__18optionalIjEE_block_invoke;
      v12[3] = &unk_1E8673A28;
      v12[5] = &v16;
      v12[6] = v5;
      v13 = 0;
      v14 = v9;
      v12[4] = &v20;
      v15 = v8;
      v10 = (*(*v5 + 64))(v5);
      HALB_CommandGate::ExecuteCommand(v10, v12);
      if ((v21[3] & 1) != 0 || *(v17 + 24) == 1)
      {
        HALS_Client::UpdateMuteStateOnContexts(v7);
        strcpy(&v11, "tmopbolg");
        BYTE1(v11.mElement) = 0;
        HIWORD(v11.mElement) = 0;
        HALS_Object::PropertiesChanged(v7, *(v7 + 4), *(v7 + 4), 1, &v11);
      }

      _Block_object_dispose(&v16, 8);
      _Block_object_dispose(&v20, 8);
    }

    else
    {
      HALS_Client::RemoveMuter(v5, *(this + 4));
    }
  }

  HALS_ObjectMap::ReleaseObject(v7, v6);
}

void sub_1DE3BA6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 64), 8);
  HALS_ObjectMap::ReleaseObject(v13, v16);
  _Unwind_Resume(a1);
}

void HALS_Tap::AddTapToContext(HALS_Tap *this, HALS_IOContext *a2)
{
  if (a2)
  {
    v4 = *(this + 31);
    if (!v4 || HALS_IOContext::IncludesDevice(a2, *v4))
    {
      v5 = *(this + 33);
      v6 = *(this + 34);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v7 = *(a2 + 13);
        v8 = v5;
        v9 = v6;
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v7 = *(a2 + 13);
        v8 = v5;
        v9 = 0;
      }

      (*(*v7 + 792))(v7, &v8);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }
  }
}

void sub_1DE3BA7A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(HALS_MultiTap::Reader_Action_State)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<HALS_Tap::SetMuteAction(void)::$_0,std::allocator<HALS_Tap::SetMuteAction(void)::$_0>,void ()(HALS_MultiTap::Reader_Action_State)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN8HALS_Tap13SetMuteActionEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_Tap::SetMuteAction(void)::$_0,std::allocator<HALS_Tap::SetMuteAction(void)::$_0>,void ()(HALS_MultiTap::Reader_Action_State)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 8));
  v5 = v3;
  if (v3)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v10, *(v3 + 224), *(v3 + 232), (*(v3 + 232) - *(v3 + 224)) >> 2);
    v6 = v10;
    v7 = v11;
    if (v2)
    {
      if (v10 != v11)
      {
        v8 = v10;
        do
        {
          HALS_Tap::SetClientMuteState(v5, *v8++, 0);
        }

        while (v8 != v7);
      }
    }

    else if (v10 != v11)
    {
      v9 = v10;
      do
      {
        HALS_Tap::SetClientMuteState(v5, *v9++, 1);
      }

      while (v9 != v7);
    }

    if (v6)
    {
      operator delete(v6);
    }
  }

  HALS_ObjectMap::ReleaseObject(v5, v4);
}

uint64_t std::__function::__func<HALS_Tap::SetMuteAction(void)::$_0,std::allocator<HALS_Tap::SetMuteAction(void)::$_0>,void ()(HALS_MultiTap::Reader_Action_State)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F596B730;
  *(a2 + 8) = *(result + 8);
  return result;
}

void ___ZN8HALS_Tap23UpdateFilteredProcessesEv_block_invoke(void *a1)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v2 = a1[4];
  v1 = a1[5];
  v3 = a1[6];
  if (v1 == v3)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    do
    {
      v6 = *v1;
      if (!std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>((v2 + 104), v6))
      {
        std::vector<unsigned int>::push_back[abi:ne200100](&v7, &v6);
      }

      ++v1;
    }

    while (v1 != v3);
    v5 = v7;
    v4 = v8;
  }

  std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v2 + 224), v5, v4, (v4 - v5) >> 2);
  if (v5)
  {

    operator delete(v5);
  }
}

void sub_1DE3BAAF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN8HALS_Tap23UpdateFilteredProcessesEv_block_invoke_26(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(v1 + 224);
  v2 = (v1 + 224);
  v2->__end_ = v3;
  std::vector<unsigned int>::reserve(v2, v2[-4].__begin_);
  for (i = v2[-5].__end_cap_.__value_; i; i = *i)
  {
    v5 = i[4];
    std::vector<unsigned int>::push_back[abi:ne200100](v2, &v5);
  }
}

void __destroy_helper_block_e8_40c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

uint64_t __copy_helper_block_e8_40c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = a1 + 40;
  *(v2 + 16) = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v2, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 2);
}

BOOL HALS_Tap::_UpdateFromDescription(uint64_t a1, const __CFDictionary **a2, BOOL *a3, BOOL *a4)
{
  v187 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    goto LABEL_255;
  }

  v152 = *(a1 + 90);
  v153 = *(a1 + 88);
  v158 = *(a1 + 91);
  v151 = *(a1 + 96);
  v7 = *(a1 + 264);
  v8 = *(v7 + 24);
  v157 = *(v7 + 32);
  v155 = *(v7 + 52);
  v156 = *(v7 + 48);
  v154 = *(v7 + 56);
  *cf = 0;
  applesauce::CF::at_or<applesauce::CF::StringRef,char const(&)[8]>(v182, v5, "TapName", cf);
  v9 = *(a1 + 56);
  *(a1 + 56) = v182[0];
  if (v9)
  {
    CFRelease(v9);
  }

  if (*cf)
  {
    CFRelease(*cf);
  }

  v10 = *a2;
  if (!*a2)
  {
LABEL_254:
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
LABEL_255:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v11 = *MEMORY[0x1E695E4B8];
  *cf = *MEMORY[0x1E695E4B8];
  v12 = applesauce::CF::details::at_key<char const(&)[7]>(v10, "IsMono");
  if (v12)
  {
    v13 = v12;
    CFRetain(v12);
    v14 = CFGetTypeID(v13);
    if (v14 == CFBooleanGetTypeID())
    {
      CFRetain(v13);
      v182[0] = v13;
      CFRelease(v13);
      goto LABEL_12;
    }

    CFRelease(v13);
  }

  v182[0] = v11;
  *cf = 0;
  v13 = v11;
  if (!v11)
  {
    v144 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v144, "Could not construct");
    __cxa_throw(v144, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_12:
  *(a1 + 88) = applesauce::CF::convert_to<BOOL,0>(v13);
  if (v182[0])
  {
    CFRelease(v182[0]);
  }

  if (*cf)
  {
    CFRelease(*cf);
  }

  v15 = *a2;
  if (!*a2)
  {
    goto LABEL_254;
  }

  *cf = v11;
  applesauce::CF::at_or<applesauce::CF::BooleanRef,char const(&)[12]>(v182, v15, "IsExclusive", cf);
  v16 = v182[0];
  if (!v182[0])
  {
    v131 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v131, "Could not construct");
    __cxa_throw(v131, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  *(a1 + 89) = applesauce::CF::convert_to<BOOL,0>(v182[0]);
  CFRelease(v16);
  if (*cf)
  {
    CFRelease(*cf);
  }

  v17 = *a2;
  if (!*a2)
  {
    goto LABEL_254;
  }

  *cf = v11;
  applesauce::CF::at_or<applesauce::CF::BooleanRef,char const(&)[10]>(v182, v17, "IsMixdown", cf);
  v18 = v182[0];
  if (!v182[0])
  {
    v132 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v132, "Could not construct");
    __cxa_throw(v132, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  *(a1 + 90) = applesauce::CF::convert_to<BOOL,0>(v182[0]);
  CFRelease(v18);
  if (*cf)
  {
    CFRelease(*cf);
  }

  v19 = *a2;
  if (!*a2)
  {
    goto LABEL_254;
  }

  *cf = v11;
  applesauce::CF::at_or<applesauce::CF::BooleanRef,char const(&)[10]>(v182, v19, "IsPrivate", cf);
  v20 = v182[0];
  if (!v182[0])
  {
    v133 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v133, "Could not construct");
    __cxa_throw(v133, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  *(a1 + 91) = applesauce::CF::convert_to<BOOL,0>(v182[0]);
  CFRelease(v20);
  if (*cf)
  {
    CFRelease(*cf);
  }

  v21 = *a2;
  if (!*a2)
  {
    goto LABEL_254;
  }

  valuePtr[0] = v11;
  v22 = CFStringCreateWithBytes(0, "ProcessRestoreEnabled", 21, 0x8000100u, 0);
  v182[0] = v22;
  if (!v22)
  {
    v134 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v134, "Could not construct");
    __cxa_throw(v134, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  Value = CFDictionaryGetValue(v21, v22);
  if (v182[0])
  {
    CFRelease(v182[0]);
  }

  if (Value)
  {
    CFRetain(Value);
    v24 = CFGetTypeID(Value);
    if (v24 == CFBooleanGetTypeID())
    {
      CFRetain(Value);
      *cf = Value;
      CFRelease(Value);
      goto LABEL_37;
    }

    CFRelease(Value);
  }

  *cf = v11;
  valuePtr[0] = 0;
  Value = v11;
  if (!v11)
  {
    v145 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v145, "Could not construct");
    __cxa_throw(v145, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_37:
  *(a1 + 92) = applesauce::CF::convert_to<BOOL,0>(Value);
  if (*cf)
  {
    CFRelease(*cf);
  }

  if (valuePtr[0])
  {
    CFRelease(valuePtr[0]);
  }

  if (!*a2)
  {
    v135 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(v135);
    __cxa_throw(v135, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  LODWORD(valuePtr[0]) = 0;
  *cf = CFNumberCreate(0, kCFNumberIntType, valuePtr);
  if (!*cf)
  {
    v136 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v136, "Could not construct");
    __cxa_throw(v136, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::at_or<applesauce::CF::NumberRef,char const(&)[13]>(v182, *a2, "MuteBehavior", cf);
  v25 = v182[0];
  if (!v182[0])
  {
    v137 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v137, "Could not construct");
    __cxa_throw(v137, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v26 = applesauce::CF::convert_to<int,0>(v182[0]);
  CFRelease(v25);
  if (*cf)
  {
    CFRelease(*cf);
  }

  *(a1 + 96) = v26;
  v27 = *a2;
  if (!*a2)
  {
    v138 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(v138);
    __cxa_throw(v138, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v28 = CFStringCreateWithBytes(0, "Stream", 6, 0x8000100u, 0);
  v182[0] = v28;
  if (!v28)
  {
    v139 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v139, "Could not construct");
    __cxa_throw(v139, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v29 = CFDictionaryContainsKey(v27, v28);
  if (v182[0])
  {
    CFRelease(v182[0]);
  }

  if (!v29)
  {
    v33 = -1;
    goto LABEL_63;
  }

  if (!*a2)
  {
    v146 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(v146);
    __cxa_throw(v146, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  LODWORD(valuePtr[0]) = -1;
  *cf = CFNumberCreate(0, kCFNumberIntType, valuePtr);
  if (!*cf)
  {
    v147 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v147, "Could not construct");
    __cxa_throw(v147, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v30 = applesauce::CF::details::at_key<char const(&)[7]>(*a2, "Stream");
  if (!v30)
  {
    goto LABEL_58;
  }

  v31 = v30;
  CFRetain(v30);
  v32 = CFGetTypeID(v31);
  if (v32 != CFNumberGetTypeID())
  {
    CFRelease(v31);
LABEL_58:
    v31 = *cf;
    v182[0] = *cf;
    *cf = 0;
    if (!v182[0])
    {
      v150 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v150, "Could not construct");
      __cxa_throw(v150, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    goto LABEL_59;
  }

  CFRetain(v31);
  v182[0] = v31;
  CFRelease(v31);
LABEL_59:
  v33 = applesauce::CF::convert_to<int,0>(v31);
  if (v182[0])
  {
    CFRelease(v182[0]);
  }

  if (*cf)
  {
    CFRelease(*cf);
  }

LABEL_63:
  if (!*a2)
  {
    v140 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(v140);
    __cxa_throw(v140, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v34 = applesauce::CF::details::at_key<char const(&)[10]>(*a2, "DeviceUID");
  if (!v34)
  {
    goto LABEL_68;
  }

  v38 = v34;
  CFRetain(v34);
  v39 = CFGetTypeID(v38);
  if (v39 != CFStringGetTypeID())
  {
    CFRelease(v38);
LABEL_68:
    v38 = 0;
    v168 = 0;
    goto LABEL_69;
  }

  CFRetain(v38);
  v168 = v38;
  CFRelease(v38);
LABEL_69:
  if ((*(a1 + 90) & 1) == 0)
  {
    v182[0] = 0;
    if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v38, v182))
    {
      v167[0] = 0;
      v167[1] = 0;
      HALS_System::GetInstance(cf, 0, v167);
      memset(v182, 0, sizeof(v182));
      LODWORD(v183) = 1065353216;
      v40 = HALS_System::CopyDeviceByUID(*cf, v168, 0, v182);
      std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v182);
      v44 = *&cf[8];
      if (*&cf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&cf[8]);
      }

      if (!v40)
      {
        v114 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v114 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v44);
        }

        v116 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v115 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v115)
        {
          atomic_fetch_add_explicit(&v115->__shared_owners_, 1uLL, memory_order_relaxed);
          v117 = *v116;
          std::__shared_weak_count::__release_shared[abi:ne200100](v115);
        }

        else
        {
          v117 = *v116;
        }

        if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v182[0]) = 136315650;
          *(v182 + 4) = "HALS_Tap.cpp";
          WORD2(v182[1]) = 1024;
          *(&v182[1] + 6) = 452;
          WORD1(v182[2]) = 2080;
          *(&v182[2] + 4) = "(device.IsValid()) == false";
          _os_log_error_impl(&dword_1DE1F9000, v117, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Tap device not found.", v182, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v172);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Tap device not found.", v175);
        std::runtime_error::runtime_error(__p, v175);
        std::runtime_error::runtime_error(cf, __p);
        *&cf[24] = 0uLL;
        v165 = 0;
        v166 = -1;
        *cf = &unk_1F5992170;
        *&cf[16] = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(v182, cf);
        v183 = "BOOL HALS_Tap::_UpdateFromDescription(AMCP::CF::Dictionary, BOOL &, BOOL &)";
        v184 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Tap.cpp";
        LODWORD(v185) = 452;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v180);
      }

      v45 = *(a1 + 248);
      if (!v45)
      {
        operator new();
      }

      v46 = *v45;
      if (v46 == *(v40 + 4))
      {
        v47 = 0;
        v161 = 0;
        if (v45[1] == v33)
        {
LABEL_91:
          HALS_ObjectMap::ReleaseObject(v40, v46);
          goto LABEL_92;
        }
      }

      else
      {
        HALS_Tap::RemoveDeviceSampleRateListener(*(a1 + 16), v46, v41, v42, v43);
        v47 = 1;
      }

      v50 = *(a1 + 248);
      *v50 = *(v40 + 4);
      v50[1] = v33;
      updated = HALS_Tap::_UpdateTapFormatFromDeviceFormat(a1);
      if ((updated & 1) == 0)
      {
        v118 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v118 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(updated);
        }

        v120 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v119 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v119)
        {
          atomic_fetch_add_explicit(&v119->__shared_owners_, 1uLL, memory_order_relaxed);
          v121 = *v120;
          std::__shared_weak_count::__release_shared[abi:ne200100](v119);
        }

        else
        {
          v121 = *v120;
        }

        if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v182[0]) = 136315650;
          *(v182 + 4) = "HALS_Tap.cpp";
          WORD2(v182[1]) = 1024;
          *(&v182[1] + 6) = 470;
          WORD1(v182[2]) = 2080;
          *(&v182[2] + 4) = "(success) == false";
          _os_log_error_impl(&dword_1DE1F9000, v121, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Stream out of range for tap.", v182, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v172);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Stream out of range for tap.", v175);
        std::runtime_error::runtime_error(__p, v175);
        std::runtime_error::runtime_error(cf, __p);
        *&cf[24] = 0uLL;
        v165 = 0;
        v166 = -1;
        *cf = &unk_1F5992170;
        *&cf[16] = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(v182, cf);
        v183 = "BOOL HALS_Tap::_UpdateFromDescription(AMCP::CF::Dictionary, BOOL &, BOOL &)";
        v184 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Tap.cpp";
        LODWORD(v185) = 470;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v180);
      }

      if (v47)
      {
        v52 = **(a1 + 248);
        valuePtr[0] = 0x676C6F626E737274;
        LODWORD(valuePtr[1]) = 0;
        v53 = *(a1 + 16);
        *cf = 0;
        *&cf[4] = v53;
        memset(&cf[8], 0, 32);
        LOBYTE(v182[0]) = 0;
        v186 = 0;
        HALS_NotificationManager::AddPropertyListener(cf, v52, valuePtr, v182);
        if (v186 == 1)
        {
          AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v182);
        }

        HALS_Listener::~HALS_Listener(cf);
        HALS_MultiTap::set_device_id(*(a1 + 264), (**(a1 + 248) | 0x100000000));
        *(*(a1 + 264) + 80) = *(*(a1 + 248) + 4);
      }

      v161 = 1;
      goto LABEL_91;
    }
  }

  v48 = *(a1 + 248);
  if (v48)
  {
    HALS_Tap::RemoveDeviceSampleRateListener(*(a1 + 16), *v48, v35, v36, v37);
    v49 = *(a1 + 248);
    *(a1 + 248) = 0;
    if (v49)
    {
      MEMORY[0x1E12C1730](v49, 0x1000C4000313F17);
    }

    HALS_MultiTap::set_device_id(*(a1 + 264), 0);
    v161 = 1;
  }

  else
  {
    v161 = 0;
  }

LABEL_92:
  if (!*a2)
  {
    v141 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v141, "Could not construct");
    __cxa_throw(v141, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v54 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C8]);
  v182[0] = v54;
  if (v54)
  {
    v55 = CFGetTypeID(v54);
    if (v55 != CFArrayGetTypeID())
    {
      v148 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v148, "Could not construct");
      __cxa_throw(v148, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  applesauce::CF::at_or<applesauce::CF::ArrayRef,char const(&)[10]>(&v163, *a2, "BundleIDs", v182);
  if (v182[0])
  {
    CFRelease(v182[0]);
  }

  if (!*a2)
  {
    v142 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v142, "Could not construct");
    __cxa_throw(v142, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v56 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C8]);
  v182[0] = v56;
  if (v56)
  {
    v57 = CFGetTypeID(v56);
    if (v57 != CFArrayGetTypeID())
    {
      v149 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v149, "Could not construct");
      __cxa_throw(v149, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  applesauce::CF::at_or<applesauce::CF::ArrayRef,char const(&)[10]>(&v162, *a2, "Processes", v182);
  if (v182[0])
  {
    CFRelease(v182[0]);
  }

  v58 = v162;
  if (v162)
  {
    CFRetain(v162);
  }

  v59 = v163;
  if (v163)
  {
    CFRetain(v163);
  }

  memset(cf, 0, 32);
  *&cf[32] = 1065353216;
  *valuePtr = 0u;
  *v178 = 0u;
  LODWORD(v179) = 1065353216;
  memset(v175, 0, sizeof(v175));
  v176 = 1065353216;
  if (v59)
  {
    Count = CFArrayGetCount(v59);
    v61 = CFArrayGetCount(v59);
    if (Count)
    {
      v62 = v61;
      for (i = 0; i != Count; ++i)
      {
        if (v62 == i)
        {
          break;
        }

        applesauce::CF::details::at_to<applesauce::CF::TypeRef>(&v174, v59, i);
        v64 = v174;
        if (v174)
        {
          v65 = CFGetTypeID(v174);
          if (v65 == CFStringGetTypeID())
          {
            CFRetain(v64);
            v173 = v64;
            v66 = CFGetTypeID(v64);
            if (v66 != CFStringGetTypeID())
            {
              v126 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v126, "Could not construct");
              __cxa_throw(v126, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v171[0] = 0;
            v171[1] = 0;
            HALS_System::GetInstance(&v172, 0, v171);
            if (!v173)
            {
              v127 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v127, "Could not construct");
              __cxa_throw(v127, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v67 = v172.__vftable;
            applesauce::CF::convert_to<std::string,0>(__p, v173);
            v180.__r_.__value_.__r.__words[0] = 0;
            v180.__r_.__value_.__l.__size_ = &v180;
            v180.__r_.__value_.__r.__words[2] = 0x2000000000;
            v181 = 0;
            v182[0] = MEMORY[0x1E69E9820];
            v182[1] = 0x40000000;
            v182[2] = ___ZNK11HALS_System20CopyClientByBundleIDERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
            v182[3] = &unk_1E8675B18;
            v183 = &v180;
            v184 = v67;
            v185 = __p;
            v68 = (*(v67->~logic_error + 8))(v67);
            HALB_CommandGate::ExecuteCommand(v68, v182);
            v69 = *(v180.__r_.__value_.__l.__size_ + 24);
            _Block_object_dispose(&v180, 8);
            if (v170 < 0)
            {
              operator delete(__p[0]);
            }

            if (v172.__imp_.__imp_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v172.__imp_.__imp_);
            }

            if (v69)
            {
              LODWORD(v182[0]) = *(v69 + 4);
              std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(cf, v182[0]);
              if (!v173)
              {
                v129 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v129, "Could not construct");
                __cxa_throw(v129, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              applesauce::CF::convert_to<std::string,0>(v182, v173);
              std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(valuePtr, v182);
            }

            else
            {
              if (!v173)
              {
                v143 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v143, "Could not construct");
                __cxa_throw(v143, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              applesauce::CF::convert_to<std::string,0>(v182, v173);
              std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(v175, v182);
            }

            if (SHIBYTE(v182[2]) < 0)
            {
              operator delete(v182[0]);
            }

            HALS_ObjectMap::ReleaseObject(v69, v70);
            if (v173)
            {
              CFRelease(v173);
            }
          }

          CFRelease(v64);
        }
      }
    }
  }

  if (v58)
  {
    v71 = CFArrayGetCount(v58);
    v72 = CFArrayGetCount(v58);
    if (v71)
    {
      v73 = v72;
      for (j = 0; j != v71; ++j)
      {
        if (v73 == j)
        {
          break;
        }

        applesauce::CF::details::at_to<applesauce::CF::TypeRef>(&v180, v58, j);
        v75 = v180.__r_.__value_.__r.__words[0];
        if (v180.__r_.__value_.__r.__words[0])
        {
          v76 = CFGetTypeID(v180.__r_.__value_.__l.__data_);
          if (v76 == CFNumberGetTypeID())
          {
            applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(__p, &v180.__r_.__value_.__l.__data_);
            if (!__p[0])
            {
              v128 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v128, "Could not construct");
              __cxa_throw(v128, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v77 = applesauce::CF::convert_to<unsigned int,0>(__p[0]);
            v78 = v77;
            LODWORD(v172.__vftable) = v77;
            v79 = HALS_ObjectMap::CopyObjectByObjectID(v77);
            v81 = v79;
            if (v79 && *(v79 + 20) == 1668050548 && !std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(cf, v78))
            {
              std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(cf, v78);
              HALS_Client::GetBundleIDString(v182, v81);
              v82 = HIBYTE(v182[2]);
              v83 = HIBYTE(v182[2]);
              if (SHIBYTE(v182[2]) < 0)
              {
                v82 = v182[1];
              }

              if (v82)
              {
                std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(valuePtr, v182);
                v83 = HIBYTE(v182[2]);
              }

              if (v83 < 0)
              {
                operator delete(v182[0]);
              }
            }

            HALS_ObjectMap::ReleaseObject(v81, v80);
            if (__p[0])
            {
              CFRelease(__p[0]);
            }
          }

          CFRelease(v75);
        }
      }
    }
  }

  if ((a1 + 104) != cf)
  {
    *(a1 + 136) = *&cf[32];
    v84 = *&cf[16];
    v85 = *(a1 + 112);
    if (!v85)
    {
      goto LABEL_156;
    }

    for (k = 0; k != v85; ++k)
    {
      *(*(a1 + 104) + 8 * k) = 0;
    }

    v87 = *(a1 + 120);
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    if (v87)
    {
      while (v84)
      {
        v88 = *(v84 + 4);
        *(v87 + 4) = v88;
        v89 = *v87;
        v87[1] = v88;
        inserted = std::__hash_table<std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<unsigned int>>>>::__node_insert_multi_prepare(a1 + 104, v88, v87 + 4);
        std::__hash_table<std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<unsigned int>>>>::__node_insert_multi_perform((a1 + 104), v87, inserted);
        v84 = *v84;
        v87 = v89;
        if (!v89)
        {
          goto LABEL_156;
        }
      }

      do
      {
        v91 = *v87;
        operator delete(v87);
        v87 = v91;
      }

      while (v91);
    }

    else
    {
LABEL_156:
      if (v84)
      {
        operator new();
      }
    }
  }

  if ((a1 + 144) != valuePtr)
  {
    *(a1 + 176) = v179;
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>>((a1 + 144), v178[0]);
  }

  if ((a1 + 184) != v175)
  {
    *(a1 + 216) = v176;
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>>((a1 + 184), *&v175[16]);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(*&v175[16]);
  v92 = *v175;
  *v175 = 0;
  if (v92)
  {
    operator delete(v92);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v178[0]);
  v93 = valuePtr[0];
  valuePtr[0] = 0;
  if (v93)
  {
    operator delete(v93);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(cf);
  if (v59)
  {
    CFRelease(v59);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  v94 = *(a1 + 264);
  v95 = *(v94 + 40);
  *valuePtr = *(v94 + 24);
  *v178 = v95;
  v179 = *(v94 + 56);
  if (LODWORD(valuePtr[1]) != 1819304813 || (BYTE4(valuePtr[1]) & 0x40) != 0)
  {
    v110 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v110 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v94);
    }

    v112 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v111 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v111)
    {
      atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
      v113 = *v112;
      std::__shared_weak_count::__release_shared[abi:ne200100](v111);
    }

    else
    {
      v113 = *v112;
    }

    if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v182[0]) = 136315650;
      *(v182 + 4) = "HALS_Tap.cpp";
      WORD2(v182[1]) = 1024;
      *(&v182[1] + 6) = 494;
      WORD1(v182[2]) = 2080;
      *(&v182[2] + 4) = "not (format.IsMixable())";
      _os_log_error_impl(&dword_1DE1F9000, v113, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v182, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(v171);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v180);
    std::logic_error::logic_error(&v172, &v180);
    v172.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(cf, &v172);
    *&cf[24] = 0uLL;
    v165 = 0;
    v166 = -1;
    *cf = &unk_1F5991430;
    *&cf[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v182, cf);
    v183 = "BOOL HALS_Tap::_UpdateFromDescription(AMCP::CF::Dictionary, BOOL &, BOOL &)";
    v184 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Tap.cpp";
    LODWORD(v185) = 494;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(__p);
  }

  if (*(a1 + 88))
  {
    v96 = 0;
    v97 = 1;
  }

  else
  {
    if ((*(a1 + 90) & 1) == 0)
    {
      if (!*(a1 + 248))
      {
        v122 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v122 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v94);
        }

        v124 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v123 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v123)
        {
          atomic_fetch_add_explicit(&v123->__shared_owners_, 1uLL, memory_order_relaxed);
          v125 = *v124;
          std::__shared_weak_count::__release_shared[abi:ne200100](v123);
        }

        else
        {
          v125 = *v124;
        }

        if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v182[0]) = 136315650;
          *(v182 + 4) = "HALS_Tap.cpp";
          WORD2(v182[1]) = 1024;
          *(&v182[1] + 6) = 508;
          WORD1(v182[2]) = 2080;
          *(&v182[2] + 4) = "(mDevice.get()) == nullptr";
          _os_log_error_impl(&dword_1DE1F9000, v125, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Missing device for tap.", v182, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(v171);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("Missing device for tap.", &v180);
        std::runtime_error::runtime_error(&v172, &v180);
        std::runtime_error::runtime_error(cf, &v172);
        *&cf[24] = 0uLL;
        v165 = 0;
        v166 = -1;
        *cf = &unk_1F5992170;
        *&cf[16] = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(v182, cf);
        v183 = "BOOL HALS_Tap::_UpdateFromDescription(AMCP::CF::Dictionary, BOOL &, BOOL &)";
        v184 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Tap.cpp";
        LODWORD(v185) = 508;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(__p);
      }

      v100 = v161;
      if (*(v94 + 64) == 2)
      {
        v100 = 1;
      }

      if ((v100 & 1) == 0)
      {
        HALS_Tap::_UpdateTapFormatFromDeviceFormat(a1);
      }

      goto LABEL_189;
    }

    v97 = 2;
    v96 = 1;
  }

  if (v96 != *(v94 + 64))
  {
    if ((BYTE4(valuePtr[1]) & 0x20) != 0)
    {
      v98 = 1;
    }

    else
    {
      v98 = HIDWORD(v178[1]);
      if (!HIDWORD(v178[1]))
      {
        v99 = (v179 + 7) >> 3;
LABEL_188:
        HIDWORD(v178[1]) = v97;
        HIDWORD(v178[0]) = 1;
        LODWORD(v178[1]) = v99 * v97;
        LODWORD(v178[0]) = v99 * v97;
        HIDWORD(valuePtr[1]) &= 0xFFFFFF9F;
        HALS_MultiTap::set_format(v94, valuePtr, v96 | 0x100000000);
        goto LABEL_189;
      }
    }

    v99 = LODWORD(v178[1]) / v98;
    goto LABEL_188;
  }

LABEL_189:
  v101 = *(a1 + 264);
  v102 = 1;
  if ((vminv_u16(vmovn_s32(vceqq_s32(v157, *(v101 + 32)))) & 1) != 0 && v156 == *(v101 + 48))
  {
    v103 = a3;
    if (v8 == *(v101 + 24) && v155 == *(v101 + 52))
    {
      v102 = v154 != *(v101 + 56);
    }
  }

  else
  {
    v103 = a3;
  }

  *v103 = v102;
  v104 = *(a1 + 91);
  v105 = v158 == v104;
  *a4 = v158 != v104;
  v106 = v161;
  if (!v105)
  {
    v106 = 1;
  }

  v107 = (v106 & 1) != 0 || *v103 || v153 != *(a1 + 88) || v152 != *(a1 + 90) || v151 != *(a1 + 96);
  if (v162)
  {
    CFRelease(v162);
  }

  if (v163)
  {
    CFRelease(v163);
  }

  if (v168)
  {
    CFRelease(v168);
  }

  v108 = *MEMORY[0x1E69E9840];
  return v107;
}

void sub_1DE3BC870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  if (LOBYTE(STACK[0x2E0]) == 1)
  {
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&a59);
  }

  HALS_Listener::~HALS_Listener(&a23);
  JUMPOUT(0x1DE3BCEF4);
}

void sub_1DE3BC894(uint64_t a1, HALS_Object *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, const void *a19, const void *a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, __int16 a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, const void *a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a64 < 0)
  {
    operator delete(__p);
  }

  HALS_ObjectMap::ReleaseObject(v64, a2);
  applesauce::CF::NumberRef::~NumberRef(&a33);
  applesauce::CF::TypeRef::~TypeRef(&a55);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a43);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a49);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a23);
  applesauce::CF::ArrayRef::~ArrayRef(&a19);
  applesauce::CF::ArrayRef::~ArrayRef(&a20);
  JUMPOUT(0x1DE3BCF48);
}

void sub_1DE3BCD18(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
    __cxa_rethrow();
  }

  JUMPOUT(0x1DE3BCF60);
}

void sub_1DE3BCD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, const void *a19, const void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  __cxa_end_catch();
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a43);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a49);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a23);
  applesauce::CF::ArrayRef::~ArrayRef(&a19);
  applesauce::CF::ArrayRef::~ArrayRef(&a20);
  JUMPOUT(0x1DE3BCF48);
}

void sub_1DE3BCD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a43);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a49);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a23);
  applesauce::CF::ArrayRef::~ArrayRef(&a19);
  applesauce::CF::ArrayRef::~ArrayRef(&a20);
  JUMPOUT(0x1DE3BCF48);
}

void sub_1DE3BCDAC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::runtime_error a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  if (__p)
  {
    a44 = __p;
    operator delete(__p);
  }

  if (a33)
  {
    a34 = a33;
    operator delete(a33);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(&a58);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a39);
  JUMPOUT(0x1DE3BCF08);
}

void sub_1DE3BCDFC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::runtime_error a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (__p)
  {
    a53 = __p;
    operator delete(__p);
  }

  if (a57)
  {
    a58 = a57;
    operator delete(a57);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(&a61);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a33);
  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (v62)
  {
    __cxa_free_exception(v61);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a38);
  JUMPOUT(0x1DE3BCEF4);
}

void sub_1DE3BCE9C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  if (__p)
  {
    a45 = __p;
    operator delete(__p);
  }

  if (a33)
  {
    a34 = a33;
    operator delete(a33);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(&a59);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a23);
  MEMORY[0x1E12C0F00](&a39);
  JUMPOUT(0x1DE3BCF08);
}

void sub_1DE3BCEF0(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, const void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *__p, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  HALS_ObjectMap::ReleaseObject(v63, a2);
  applesauce::CF::StringRef::~StringRef(&a35);
  _Unwind_Resume(a1);
}

void applesauce::CF::at_or<applesauce::CF::StringRef,char const(&)[8]>(void *a1, const __CFDictionary *a2, char *__s, void *a4)
{
  v8 = strlen(__s);
  v9 = CFStringCreateWithBytes(0, __s, v8, 0x8000100u, 0);
  cf = v9;
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  Value = CFDictionaryGetValue(a2, v9);
  CFRelease(cf);
  if (Value)
  {
    CFRetain(Value);
    v11 = CFGetTypeID(Value);
    if (v11 == CFStringGetTypeID())
    {
      CFRetain(Value);
      *a1 = Value;
      CFRelease(Value);
      return;
    }

    CFRelease(Value);
  }

  *a1 = *a4;
  *a4 = 0;
}

void sub_1DE3BD084(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3BD01CLL);
}

void applesauce::CF::at_or<applesauce::CF::BooleanRef,char const(&)[12]>(void *a1, const __CFDictionary *a2, char *__s, void *a4)
{
  v6 = applesauce::CF::details::at_key<char const(&)[12]>(a2, __s);
  if (v6)
  {
    v7 = v6;
    CFRetain(v6);
    v8 = CFGetTypeID(v7);
    if (v8 == CFBooleanGetTypeID())
    {
      CFRetain(v7);
      *a1 = v7;
      CFRelease(v7);
      return;
    }

    CFRelease(v7);
  }

  *a1 = *a4;
  *a4 = 0;
}

void applesauce::CF::at_or<applesauce::CF::BooleanRef,char const(&)[10]>(const UInt8 **a1, const __CFDictionary *a2, const UInt8 *__s, const UInt8 **a4)
{
  v6 = applesauce::CF::details::at_key<char const(&)[10]>(a2, __s);
  if (v6)
  {
    v7 = v6;
    CFRetain(v6);
    v8 = CFGetTypeID(v7);
    if (v8 == CFBooleanGetTypeID())
    {
      CFRetain(v7);
      *a1 = v7;
      CFRelease(v7);
      return;
    }

    CFRelease(v7);
  }

  *a1 = *a4;
  *a4 = 0;
}

void applesauce::CF::at_or<applesauce::CF::NumberRef,char const(&)[13]>(const UInt8 **a1, const __CFDictionary *a2, const UInt8 *__s, const UInt8 **a4)
{
  Value = __s;
  v8 = strlen(__s);
  v9 = CFStringCreateWithBytes(0, Value, v8, 0x8000100u, 0);
  v12 = v9;
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (a2 && (Value = CFDictionaryGetValue(a2, v9), (v9 = v12) == 0) || (CFRelease(v9), a2))
  {
    if (Value)
    {
      CFRetain(Value);
      v10 = CFGetTypeID(Value);
      if (v10 == CFNumberGetTypeID())
      {
        CFRetain(Value);
        *a1 = Value;
        CFRelease(Value);
        return;
      }

      CFRelease(Value);
    }
  }

  *a1 = *a4;
  *a4 = 0;
}

void sub_1DE3BD354(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3BD2E0);
}

void HALS_Tap::RemoveDeviceSampleRateListener(HALS_Tap *this, const HALS_Listener *a2, uint64_t a3, unsigned int a4, const AudioObjectPropertyAddress *a5)
{
  v8 = 0x676C6F626E737274;
  v9 = 0;
  v5[0] = 0;
  v5[1] = this;
  v6 = 0u;
  v7 = 0u;
  HALS_NotificationManager::RemovePropertyListener(v5, a2, &v8, a4, a5);
  HALS_Listener::~HALS_Listener(v5);
}

void sub_1DE3BD3F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HALS_Listener::~HALS_Listener(va);
  _Unwind_Resume(a1);
}

void applesauce::CF::at_or<applesauce::CF::ArrayRef,char const(&)[10]>(const UInt8 **a1, const __CFDictionary *a2, const UInt8 *__s, const UInt8 **a4)
{
  v6 = applesauce::CF::details::at_key<char const(&)[10]>(a2, __s);
  if (v6)
  {
    v7 = v6;
    CFRetain(v6);
    v8 = CFGetTypeID(v7);
    if (v8 == CFArrayGetTypeID())
    {
      CFRetain(v7);
      *a1 = v7;
      CFRelease(v7);
      return;
    }

    CFRelease(v7);
  }

  *a1 = *a4;
  *a4 = 0;
}

void *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(void *result, unsigned int a2)
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

BOOL std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  result = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v11 + 2, a2);
  if (!result)
  {
    goto LABEL_17;
  }

  return result;
}

const void *applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(void *a1, const void **a2)
{
  result = *a2;
  if (!*a2)
  {
    goto LABEL_6;
  }

  v5 = CFGetTypeID(result);
  result = CFNumberGetTypeID();
  if (v5 != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v6 = *a2;
  if (v6)
  {
    CFRetain(v6);
    *a1 = v6;
    v7 = CFGetTypeID(v6);
    result = CFNumberGetTypeID();
    if (v7 != result)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v8, "Could not construct");
      __cxa_throw(v8, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
LABEL_6:
    *a1 = 0;
  }

  return result;
}

void sub_1DE3BD9FC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(void *result, unsigned int a2)
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

BOOL std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  result = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v11 + 2, a2);
  if (!result)
  {
    goto LABEL_17;
  }

  return result;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>>(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a1[1];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v6 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v6)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v6;
    }

    else
    {
      do
      {
        std::string::operator=((v6 + 2), (v2 + 2));
        v8 = *v6;
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_multi(a1, v6);
        v2 = *v2;
        if (v8)
        {
          v9 = v2 == 0;
        }

        else
        {
          v9 = 1;
        }

        v6 = v8;
      }

      while (!v9);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v8);
  }

  if (v2)
  {
    operator new();
  }
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(void **__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      if (*(v1 + 39) < 0)
      {
        operator delete(v1[2]);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_multi(uint64_t a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100]((a2 + 2));
  a2[1] = v4;
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + 1);
  v7 = *(a1 + 32);
  if (!v5 || (v7 * v5) < v6)
  {
    v8 = 1;
    if (v5 >= 3)
    {
      v8 = (v5 & (v5 - 1)) != 0;
    }

    v9 = v8 | (2 * v5);
    v10 = vcvtps_u32_f32(v6 / v7);
    if (v9 <= v10)
    {
      prime = v10;
    }

    else
    {
      prime = v9;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v5 = *(a1 + 8);
    }

    if (prime > v5)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (prime < v5)
    {
      v12 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v5 < 3 || (v13 = vcnt_s8(v5), v13.i16[0] = vaddlv_u8(v13), v13.u32[0] > 1uLL))
      {
        v12 = std::__next_prime(v12);
      }

      else
      {
        v14 = 1 << -__clz(v12 - 1);
        if (v12 >= 2)
        {
          v12 = v14;
        }
      }

      if (prime <= v12)
      {
        prime = v12;
      }

      if (prime >= v5)
      {
        v5 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v15 = *a1;
        *a1 = 0;
        if (v15)
        {
          operator delete(v15);
        }

        v5 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v5);
  v16.i16[0] = vaddlv_u8(v16);
  v17 = v16.u32[0];
  if (v16.u32[0] > 1uLL)
  {
    v18 = v4;
    if (v5 <= v4)
    {
      v18 = v4 % v5;
    }
  }

  else
  {
    v18 = (v5 - 1) & v4;
  }

  v19 = *(*a1 + 8 * v18);
  v28 = *a1;
  if (v19)
  {
    v20 = *v19;
    if (*v19)
    {
      v21 = 0;
      do
      {
        v22 = v20;
        v23 = v20[1];
        if (v17 > 1)
        {
          v24 = v23;
          if (v23 >= v5)
          {
            v24 = v23 % v5;
          }
        }

        else
        {
          v24 = v23 & (v5 - 1);
        }

        if (v24 != v18)
        {
          break;
        }

        v25 = v23 == v4 && std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v22 + 2, a2 + 2);
        if ((v21 & (v25 != (v21 & 1))) != 0)
        {
          break;
        }

        v21 |= v25 != (v21 & 1);
        v20 = *v22;
        v19 = v22;
      }

      while (*v22);
    }
  }

  v26 = a2[1];
  if (v17 > 1)
  {
    if (v26 >= v5)
    {
      v26 %= v5;
    }
  }

  else
  {
    v26 &= v5 - 1;
  }

  if (!v19)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    v28[v26] = a1 + 16;
    if (!*a2)
    {
      goto LABEL_65;
    }

    v27 = *(*a2 + 8);
    if (v17 > 1)
    {
      if (v27 >= v5)
      {
        v27 %= v5;
      }
    }

    else
    {
      v27 &= v5 - 1;
    }

LABEL_64:
    *(*a1 + 8 * v27) = a2;
    goto LABEL_65;
  }

  *a2 = *v19;
  *v19 = a2;
  if (*a2)
  {
    v27 = *(*a2 + 8);
    if (v17 > 1)
    {
      if (v27 >= v5)
      {
        v27 %= v5;
      }
    }

    else
    {
      v27 &= v5 - 1;
    }

    if (v27 != v26)
    {
      goto LABEL_64;
    }
  }

LABEL_65:
  ++*(a1 + 24);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

const UInt8 *applesauce::CF::details::at_key<char const(&)[10]>(const __CFDictionary *a1, const UInt8 *__s)
{
  Value = __s;
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  v8 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!a1 || (Value = CFDictionaryGetValue(a1, v5), (v5 = v8) != 0))
  {
    CFRelease(v5);
    if (!a1)
    {
      return 0;
    }
  }

  return Value;
}

void sub_1DE3BE664(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3BE610);
}

const UInt8 *applesauce::CF::details::at_key<char const(&)[7]>(const __CFDictionary *a1, const UInt8 *__s)
{
  Value = __s;
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  v8 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!a1 || (Value = CFDictionaryGetValue(a1, v5), (v5 = v8) != 0))
  {
    CFRelease(v5);
    if (!a1)
    {
      return 0;
    }
  }

  return Value;
}

void sub_1DE3BE778(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3BE724);
}

void HALS_Tap::GetPropertyData(HALS_Tap *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, void *a6, unsigned int a7, const void *a8, HALS_Client *a9)
{
  v27 = *MEMORY[0x1E69E9840];
  mSelector = a3->mSelector;
  if (a3->mSelector > 1952869747)
  {
    if (mSelector == 1952869748)
    {
      if (a4 <= 0x27)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_Tap.cpp";
          v25 = 1024;
          v26 = 171;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Client::GetPropertyData: bad property data size for kAudioTapPropertyFormat", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = 561211770;
      }

      v15 = *(this + 33);
      v16 = *(v15 + 24);
      v17 = *(v15 + 40);
      a6[4] = *(v15 + 56);
      *a6 = v16;
      *(a6 + 1) = v17;
      v14 = 40;
      goto LABEL_19;
    }

    if (mSelector != 1953851748)
    {
      goto LABEL_10;
    }

    if (a4 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Tap.cpp";
        v25 = 1024;
        v26 = 152;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Client::GetPropertyData: bad property data size for kAudioTapPropertyUID", buf, 0x12u);
      }

      v20 = __cxa_allocate_exception(0x10uLL);
      *v20 = off_1F5991DD8;
      v20[2] = 561211770;
    }

    HALS_Tap::GetUID(buf, *(this + 8));
LABEL_15:
    *a6 = *buf;
LABEL_16:
    v14 = 8;
LABEL_19:
    *a5 = v14;
    v18 = *MEMORY[0x1E69E9840];
    return;
  }

  if (mSelector == 1819173229)
  {
    if (a4 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Tap.cpp";
        v25 = 1024;
        v26 = 145;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Client::GetPropertyData: bad property data size for kAudioObjectPropertyName", buf, 0x12u);
      }

      v21 = __cxa_allocate_exception(0x10uLL);
      *v21 = off_1F5991DD8;
      v21[2] = 561211770;
    }

    HALS_Tap::GetName(buf, *(this + 7));
    goto LABEL_15;
  }

  if (mSelector == 1952740195)
  {
    if (a4 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Tap.cpp";
        v25 = 1024;
        v26 = 159;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Device::_GetPropertyData: bad property data size for kAudioTapPropertyDescription", buf, 0x12u);
      }

      v19 = __cxa_allocate_exception(0x10uLL);
      *v19 = off_1F5991DD8;
      v19[2] = 561211770;
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 0x40000000;
    v23[2] = ___ZNK8HALS_Tap15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
    v23[3] = &__block_descriptor_tmp_4530;
    v23[4] = this;
    v23[5] = a6;
    v12 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v12, v23);
    goto LABEL_16;
  }

LABEL_10:
  v13 = *MEMORY[0x1E69E9840];

  HALS_Object::GetPropertyData(this, a2, a3, a4, a5, a6);
}

void ___ZNK8HALS_Tap15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  v65[2] = Mutable;
  if (*(v2 + 56))
  {
    v4 = CFStringCreateWithBytes(0, "TapName", 7, 0x8000100u, 0);
    cf.__r_.__value_.__r.__words[0] = v4;
    if (!v4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(Mutable, v4, *(v2 + 56));
    CFRelease(v4);
  }

  v5 = CFStringCreateWithBytes(0, "TapUUID", 7, 0x8000100u, 0);
  cf.__r_.__value_.__r.__words[0] = v5;
  if (!v5)
  {
    v45 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v45, "Could not construct");
    __cxa_throw(v45, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(Mutable, v5, *(v2 + 64));
  CFRelease(v5);
  v6 = CFStringCreateWithBytes(0, "IsMono", 6, 0x8000100u, 0);
  cf.__r_.__value_.__r.__words[0] = v6;
  if (!v6)
  {
    v46 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v46, "Could not construct");
    __cxa_throw(v46, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v7 = *MEMORY[0x1E695E4C8];
  v8 = *MEMORY[0x1E695E4B8];
  if (*(v2 + 88))
  {
    v9 = *MEMORY[0x1E695E4C8];
  }

  else
  {
    v9 = *MEMORY[0x1E695E4B8];
  }

  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(Mutable, v6, v9);
  if (v9)
  {
    CFRelease(v9);
  }

  CFRelease(v6);
  v10 = CFStringCreateWithBytes(0, "IsExclusive", 11, 0x8000100u, 0);
  cf.__r_.__value_.__r.__words[0] = v10;
  if (!v10)
  {
    v47 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v47, "Could not construct");
    __cxa_throw(v47, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (*(v2 + 89))
  {
    v11 = v7;
  }

  else
  {
    v11 = v8;
  }

  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(Mutable, v10, v11);
  if (v11)
  {
    CFRelease(v11);
  }

  CFRelease(v10);
  v12 = CFStringCreateWithBytes(0, "IsMixdown", 9, 0x8000100u, 0);
  cf.__r_.__value_.__r.__words[0] = v12;
  if (!v12)
  {
    v48 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v48, "Could not construct");
    __cxa_throw(v48, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (*(v2 + 90))
  {
    v13 = v7;
  }

  else
  {
    v13 = v8;
  }

  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(Mutable, v12, v13);
  if (v13)
  {
    CFRelease(v13);
  }

  CFRelease(v12);
  v14 = CFStringCreateWithBytes(0, "IsPrivate", 9, 0x8000100u, 0);
  cf.__r_.__value_.__r.__words[0] = v14;
  if (!v14)
  {
    v49 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v49, "Could not construct");
    __cxa_throw(v49, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (*(v2 + 91))
  {
    v15 = v7;
  }

  else
  {
    v15 = v8;
  }

  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(Mutable, v14, v15);
  if (v15)
  {
    CFRelease(v15);
  }

  CFRelease(v14);
  v16 = CFStringCreateWithBytes(0, "ProcessRestoreEnabled", 21, 0x8000100u, 0);
  cf.__r_.__value_.__r.__words[0] = v16;
  if (!v16)
  {
    v50 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v50, "Could not construct");
    __cxa_throw(v50, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (*(v2 + 92))
  {
    v17 = v7;
  }

  else
  {
    v17 = v8;
  }

  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(Mutable, v16, v17);
  if (v17)
  {
    CFRelease(v17);
  }

  CFRelease(v16);
  cf.__r_.__value_.__r.__words[0] = CFStringCreateWithBytes(0, "MuteBehavior", 12, 0x8000100u, 0);
  if (!cf.__r_.__value_.__r.__words[0])
  {
    v51 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v51, "Could not construct");
    __cxa_throw(v51, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  LODWORD(valuePtr) = *(v2 + 96);
  v18 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v65[0] = v18;
  if (!v18)
  {
    v52 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v52, "Could not construct");
    __cxa_throw(v52, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(Mutable, cf.__r_.__value_.__l.__data_, v18);
  CFRelease(v18);
  CFRelease(cf.__r_.__value_.__l.__data_);
  if (*(v2 + 248))
  {
    v65[0] = 0;
    v65[1] = 0;
    HALS_System::GetInstance(&cf, 0, v65);
    v20 = HALS_System::CopyDeviceByObjectID(cf.__r_.__value_.__l.__data_, **(v2 + 248), 0);
    if (cf.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cf.__r_.__value_.__l.__size_);
    }

    if (v20)
    {
      cf.__r_.__value_.__r.__words[0] = CFStringCreateWithBytes(0, "Stream", 6, 0x8000100u, 0);
      if (!cf.__r_.__value_.__r.__words[0])
      {
        v56 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v56, "Could not construct");
        __cxa_throw(v56, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      LODWORD(v62) = *(*(v2 + 248) + 4);
      v21 = CFNumberCreate(0, kCFNumberIntType, &v62);
      valuePtr = v21;
      if (!v21)
      {
        v57 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v57, "Could not construct");
        __cxa_throw(v57, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(Mutable, cf.__r_.__value_.__l.__data_, v21);
      CFRelease(v21);
      if (cf.__r_.__value_.__r.__words[0])
      {
        CFRelease(cf.__r_.__value_.__l.__data_);
      }

      cf.__r_.__value_.__r.__words[0] = CFStringCreateWithBytes(0, "DeviceUID", 9, 0x8000100u, 0);
      if (!cf.__r_.__value_.__r.__words[0])
      {
        v58 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v58, "Could not construct");
        __cxa_throw(v58, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v22 = (*(*v20 + 216))(v20);
      v23 = v22;
      valuePtr = v22;
      if (v22)
      {
        v24 = CFGetTypeID(v22);
        if (v24 != CFStringGetTypeID())
        {
          v59 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v59, "Could not construct");
          __cxa_throw(v59, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(Mutable, cf.__r_.__value_.__l.__data_, v23);
        CFRelease(v23);
      }

      else
      {
        mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(Mutable, cf.__r_.__value_.__l.__data_, 0);
      }

      if (cf.__r_.__value_.__r.__words[0])
      {
        CFRelease(cf.__r_.__value_.__l.__data_);
      }
    }

    HALS_ObjectMap::ReleaseObject(v20, v19);
  }

  v25 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  valuePtr = v25;
  for (i = *(v2 + 160); i; i = *i)
  {
    if (*(i + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&cf, i[2], i[3]);
    }

    else
    {
      cf = *(i + 2);
    }

    if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_cf = &cf;
    }

    else
    {
      p_cf = cf.__r_.__value_.__r.__words[0];
    }

    if (p_cf)
    {
      if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(cf.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = cf.__r_.__value_.__l.__size_;
      }

      v29 = CFStringCreateWithBytes(0, p_cf, size, 0x8000100u, 0);
      v62 = v29;
      if (!v29)
      {
        v43 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v43, "Could not construct");
        __cxa_throw(v43, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::StringRef>(v25, v29);
      CFRelease(v29);
    }

    else
    {
      v62 = 0;
      mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::StringRef>(v25, 0);
    }

    if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cf.__r_.__value_.__l.__data_);
    }
  }

  for (j = *(v2 + 200); j; j = *j)
  {
    if (*(j + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&cf, j[2], j[3]);
    }

    else
    {
      cf = *(j + 2);
    }

    if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &cf;
    }

    else
    {
      v31 = cf.__r_.__value_.__r.__words[0];
    }

    if (v31)
    {
      if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = HIBYTE(cf.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v32 = cf.__r_.__value_.__l.__size_;
      }

      v33 = CFStringCreateWithBytes(0, v31, v32, 0x8000100u, 0);
      v62 = v33;
      if (!v33)
      {
        v44 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v44, "Could not construct");
        __cxa_throw(v44, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::StringRef>(v25, v33);
      CFRelease(v33);
    }

    else
    {
      v62 = 0;
      mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::StringRef>(v25, 0);
    }

    if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(cf.__r_.__value_.__l.__data_);
    }
  }

  v34 = CFStringCreateWithBytes(0, "BundleIDs", 9, 0x8000100u, 0);
  cf.__r_.__value_.__r.__words[0] = v34;
  if (!v34)
  {
    v53 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v53, "Could not construct");
    __cxa_throw(v53, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mcp_applesauce::CF::Array_Builder::copy_array(&v62, v25);
  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::ArrayRef>(Mutable, v34, v62);
  if (v62)
  {
    CFRelease(v62);
  }

  CFRelease(v34);
  v35 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  cf.__r_.__value_.__r.__words[0] = v35;
  v36 = (v2 + 120);
  while (1)
  {
    v36 = *v36;
    if (!v36)
    {
      break;
    }

    v37 = *(v36 + 4);
    v39 = HALS_ObjectMap::CopyObjectByObjectID(v37);
    if (v39)
    {
      LODWORD(v61) = v37;
      v40 = CFNumberCreate(0, kCFNumberIntType, &v61);
      v62 = v40;
      if (!v40)
      {
        v42 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v42, "Could not construct");
        __cxa_throw(v42, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::NumberRef>(v35, v40);
      CFRelease(v40);
    }

    HALS_ObjectMap::ReleaseObject(v39, v38);
  }

  v41 = CFStringCreateWithBytes(0, "Processes", 9, 0x8000100u, 0);
  v62 = v41;
  if (!v41)
  {
    v54 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v54, "Could not construct");
    __cxa_throw(v54, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mcp_applesauce::CF::Array_Builder::copy_array(&v61, v35);
  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::ArrayRef>(Mutable, v41, v61);
  if (v61)
  {
    CFRelease(v61);
  }

  CFRelease(v41);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v60, Mutable);
  if (v35)
  {
    CFRelease(v35);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  **(a1 + 40) = CFRetain(v60);
  if (v60)
  {
    CFRelease(v60);
  }
}

void sub_1DE3BF864(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, const void *a20, __int16 a21, char a22, char a23)
{
  __cxa_free_exception(v23);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a20);
  applesauce::CF::StringRef::~StringRef(&__p);
  HALS_ObjectMap::ReleaseObject(v24, v27);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder((v25 - 72));
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3BF410);
}

void mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    CFDictionaryAddValue(a1, a2, a3);
  }
}

void mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    CFDictionaryAddValue(a1, a2, a3);
  }
}

void mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::ArrayRef>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    CFDictionaryAddValue(a1, a2, a3);
  }
}

uint64_t HALS_Tap::GetPropertyDataSize(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  result = 8;
  if (*a3 > 1952869747)
  {
    if (v3 != 1953851748)
    {
      if (v3 == 1952869748)
      {
        return 40;
      }

      return HALS_Object::GetPropertyDataSize(8, a2, a3);
    }
  }

  else if (v3 != 1819173229 && v3 != 1952740195)
  {
    return HALS_Object::GetPropertyDataSize(8, a2, a3);
  }

  return result;
}

uint64_t HALS_Tap::IsPropertySettable(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  if (*a3 > 1952869747)
  {
    if (v3 == 1952869748 || v3 == 1953851748)
    {
      return 0;
    }
  }

  else if (v3 == 1819173229 || v3 == 1952740195)
  {
    return 1;
  }

  return HALS_Object::IsPropertySettable(a1, a2, a3);
}

uint64_t HALS_Tap::HasProperty(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  result = 1;
  if (*a3 <= 1870098019)
  {
    if (v3 > 1819173228)
    {
      v5 = v3 == 1819173229;
      v6 = 1869638759;
    }

    else
    {
      v5 = v3 == 1650682995;
      v6 = 1668047219;
    }
  }

  else if (v3 <= 1952740194)
  {
    v5 = v3 == 1870098020;
    v6 = 1937007734;
  }

  else
  {
    v5 = v3 == 1952740195 || v3 == 1952869748;
    v6 = 1953851748;
  }

  if (!v5 && v3 != v6)
  {
    return 0;
  }

  return result;
}

uint64_t HALS_Tap::GetCommandGate(HALS_Tap *this)
{
  return *(this + 9);
}

{
  return *(this + 9);
}

void HALS_Tap::~HALS_Tap(HALS_Tap *this)
{
  HALS_Tap::~HALS_Tap(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F596B5B8;
  v2 = *(this + 10);
  *(this + 9) = 0;
  *(this + 10) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 34);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 31);
  *(this + 31) = 0;
  if (v4)
  {
    MEMORY[0x1E12C1730](v4, 0x1000C4000313F17);
  }

  v5 = *(this + 28);
  if (v5)
  {
    *(this + 29) = v5;
    operator delete(v5);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 184);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 144);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(this + 104);
  v6 = *(this + 10);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 8);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(this + 7);
  if (v8)
  {
    CFRelease(v8);
  }

  HALS_Object::~HALS_Object(this);
}

void HALS_Tap::Deactivate(HALS_Tap *this)
{
  v3 = *(this + 33);
  v2 = *(this + 34);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(v3 + 488) == 1)
  {
    std::__function::__value_func<void ()(HALS_MultiTap::Reader_Action_State)>::~__value_func[abi:ne200100](v3 + 456);
    *(v3 + 488) = 0;
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v11, *(this + 28), *(this + 29), (*(this + 29) - *(this + 28)) >> 2);
  v4 = v11;
  v5 = v12;
  if (v11 != v12)
  {
    v6 = v11;
    do
    {
      HALS_Tap::SetClientMuteState(this, LODWORD(v6->__vftable), 0);
      v6 = (v6 + 4);
    }

    while (v6 != v5);
  }

  if (v4)
  {
    operator delete(v4);
  }

  v10[0] = 0;
  v10[1] = 0;
  HALS_System::GetInstance(&v11, 0, v10);
  v7 = v11;
  v8 = *(this + 34);
  v9[0] = *(this + 33);
  v9[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  HALS_System::RemoveTapFromAllContexts(v7, v9);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  HALS_Object::Deactivate(this);
  atomic_fetch_add(&HALS_Tap::gPendingTapDelete, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_1DE3BFFB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<HALS_MultiTap>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = HALS_ObjectMap::CopyObjectByObjectID(v2);
    v4 = v3;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    HALS_ObjectMap::ObjectIsDead(*(a1 + 40));
    *(a1 + 40) = 0;
    HALS_ObjectMap::ReleaseObject(v4, v5);
  }

  v6 = *(a1 + 592);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(a1 + 576);
  *(a1 + 576) = 0;
  if (v7)
  {
    std::default_delete<AMCP::DAL::Container>::operator()[abi:ne200100](v7);
  }

  v8 = *(a1 + 568);
  *(a1 + 568) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(a1 + 520);
  if (*(a1 + 512) == 1)
  {
    std::__function::__value_func<void ()(HALS_MultiTap::Reader_Action_State)>::~__value_func[abi:ne200100](a1 + 480);
  }

  v9 = *(a1 + 432);
  if (v9)
  {
    do
    {
      v10 = *v9;
      v11 = v9[4];
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      operator delete(v9);
      v9 = v10;
    }

    while (v10);
  }

  v12 = *(a1 + 416);
  *(a1 + 416) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *(a1 + 376);
  if (v13)
  {
    v14 = *(a1 + 384);
    v15 = *(a1 + 376);
    if (v14 != v13)
    {
      do
      {
        v16 = *(v14 - 8);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        v14 -= 16;
      }

      while (v14 != v13);
      v15 = *(a1 + 376);
    }

    *(a1 + 384) = v13;
    operator delete(v15);
  }

  std::condition_variable::~condition_variable((a1 + 312));
  std::condition_variable::~condition_variable((a1 + 264));
  std::mutex::~mutex((a1 + 200));
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(a1 + 128);
  HALS_ObjectMap::ReleaseObject(*(a1 + 112), v17);
  v18 = *(a1 + 32);
  if (v18)
  {

    std::__shared_weak_count::__release_weak(v18);
  }
}

void std::__shared_ptr_emplace<HALS_MultiTap>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F596B6E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void *std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::erase(void *a1, void **a2)
{
  v2 = a1[1];
  v4 = *a2;
  v3 = a2[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v3);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 != a1 + 2)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
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

    v9 = *a2;
    if (v8 == v3)
    {
LABEL_20:
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v4)
  {
    goto LABEL_19;
  }

  v10 = v4[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v10 >= *&v2)
    {
      v10 %= *&v2;
    }
  }

  else
  {
    v10 &= *&v2 - 1;
  }

  v9 = *a2;
  if (v10 != v3)
  {
LABEL_19:
    *(*a1 + 8 * v3) = 0;
    v9 = *a2;
    goto LABEL_20;
  }

LABEL_21:
  v11 = v9[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v11 >= *&v2)
    {
      v11 %= *&v2;
    }
  }

  else
  {
    v11 &= *&v2 - 1;
  }

  if (v11 != v3)
  {
    *(*a1 + 8 * v11) = v7;
    v9 = *a2;
  }

LABEL_27:
  *v7 = v9;
  *a2 = 0;
  --a1[3];
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](1, a2);
  return v4;
}

void ___ZN8HALS_Tap16HandleClientExitEj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>((v2 + 104), v3))
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__erase_unique<unsigned int>((v2 + 104), v3);
    v14[0] = 0;
    v14[1] = 0;
    HALS_System::GetInstance(&__p, 0, v14);
    v5 = HALS_System::CopyClientByObjectID(__p, *(a1 + 40));
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (v5)
    {
      HALS_Client::GetBundleIDString(&__p, v5);
      v6 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v6 = v12;
      }

      if (v6)
      {
        v7 = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>((v2 + 144), &__p);
        if (v7)
        {
          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::erase((v2 + 144), v7);
        }

        if (*(v2 + 92) == 1)
        {
          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>((v2 + 184), &__p);
        }
      }

      if (v13 < 0)
      {
        operator delete(__p);
      }
    }

    HALS_ObjectMap::ReleaseObject(v5, v4);
  }

  v9 = *(v2 + 224);
  v8 = *(v2 + 232);
  if (v9 != v8)
  {
    while (*v9 != *(a1 + 40))
    {
      if (++v9 == v8)
      {
        return;
      }
    }

    if (v9 != v8)
    {
      for (i = v9 + 1; i != v8; ++i)
      {
        if (*i != *(a1 + 40))
        {
          *v9++ = *i;
        }
      }
    }
  }

  if (v9 != v8)
  {
    *(v2 + 232) = v9;
  }
}

void sub_1DE3C0508(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  HALS_ObjectMap::ReleaseObject(v15, a2);
  _Unwind_Resume(a1);
}

void std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__erase_unique<unsigned int>(void *a1, unsigned int a2)
{
  v3 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>(a1, a2);
  if (v3)
  {

    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::erase(a1, v3);
  }
}

void std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::erase(void *a1, void *__p)
{
  v2 = a1[1];
  v3 = __p[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *(*a1 + 8 * v3);
  do
  {
    v6 = v5;
    v5 = *v5;
  }

  while (v5 != __p);
  if (v6 == a1 + 2)
  {
    goto LABEL_18;
  }

  v7 = v6[1];
  if (v4.u32[0] > 1uLL)
  {
    if (v7 >= *&v2)
    {
      v7 %= *&v2;
    }
  }

  else
  {
    v7 &= *&v2 - 1;
  }

  if (v7 != v3)
  {
LABEL_18:
    if (!*__p)
    {
      goto LABEL_19;
    }

    v8 = *(*__p + 8);
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

    if (v8 != v3)
    {
LABEL_19:
      *(*a1 + 8 * v3) = 0;
    }
  }

  v9 = *__p;
  if (*__p)
  {
    v10 = *(v9 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v10 >= *&v2)
      {
        v10 %= *&v2;
      }
    }

    else
    {
      v10 &= *&v2 - 1;
    }

    if (v10 != v3)
    {
      *(*a1 + 8 * v10) = v6;
      v9 = *__p;
    }
  }

  *v6 = v9;
  *__p = 0;
  --a1[3];
  operator delete(__p);
}

void AMCP::IO_Core::Device_Node_Factory::~Device_Node_Factory(AMCP::IO_Core::Device_Node_Factory *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

unint64_t AMCP::Core::Core::get_simple_required_property<1935894638u>(AMCP::Core::Core *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  strcpy(buf, "nhcsbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  result = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(a1, buf);
  if (!HIDWORD(result))
  {
    v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v3 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
    }

    v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v5;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 4;
      strcpy(__p, "schn");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      v10 = 1024;
      v11 = 391;
      v12 = 2080;
      v13 = "optional_value.operator BOOL() == true";
      v14 = 2080;
      v15 = __p;
      v16 = 1024;
      v17 = 1735159650;
      v18 = 1024;
      v19 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE3C0880(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

unint64_t AMCP::Core::Core::get_simple_required_property<1935960434u>(AMCP::Core::Core *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  strcpy(buf, "ridsbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  result = AMCP::Core::Core::get_typed_property_value<AMCP::Direction,std::enable_if<true,void>>(a1, buf);
  if (!HIDWORD(result))
  {
    v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v3 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
    }

    v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v5;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 4;
      strcpy(__p, "sdir");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      v10 = 1024;
      v11 = 391;
      v12 = 2080;
      v13 = "optional_value.operator BOOL() == true";
      v14 = 2080;
      v15 = __p;
      v16 = 1024;
      v17 = 1735159650;
      v18 = 1024;
      v19 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE3C0A00(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::IO_Core::Device_Node_Factory::clock_uid_and_node_description_from_device_and_direction(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = (*(*a2 + 16))(a2);
  AMCP::Core::Broker::fetch_core(&v30, v7, a3);
  if (!v30)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
    }

    v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v14;
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v15 = *v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *v33 = "Device_Node_Factory.cpp";
      *&v33[8] = 1024;
      *&v33[10] = 68;
      *&v33[14] = 2080;
      *&v33[16] = "not (device_core != nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v29);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v21);
    std::logic_error::logic_error(&v22, &v21);
    v22.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v23, &v22);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = -1;
    v23.__vftable = &unk_1F5991430;
    v24 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v23);
    v34 = "std::pair<std::string, Node_Description> AMCP::IO_Core::Device_Node_Factory::clock_uid_and_node_description_from_device_and_direction(AMCP::Object_ID, AMCP::Direction)";
    *&v35 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Node_Factory.cpp";
    DWORD2(v35) = 68;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  AMCP::Core::Core::get_simple_required_property<1969841184u>(&v21, v30);
  AMCP::create_device_node_uid_from_device_uid_and_direction(&v21, a4, &v23.__vftable);
  if (SHIBYTE(v24) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v23.__vftable, v23.__imp_.__imp_);
  }

  else
  {
    *&v17.__r_.__value_.__l.__data_ = v23;
    v17.__r_.__value_.__r.__words[2] = v24;
  }

  *buf = 3;
  *&v33[4] = v17;
  memset(&v17, 0, sizeof(v17));
  v36 = 0u;
  v35 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = v21.__r_.__value_.__r.__words[0];
  v34 = 0x100000001;
  DWORD2(v36) = 2;
  if (!v21.__r_.__value_.__r.__words[0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::convert_to<std::string,0>(__p, v21.__r_.__value_.__l.__data_);
  *a1 = *__p;
  *(a1 + 16) = v20;
  __p[1] = 0;
  v20 = 0;
  __p[0] = 0;
  AMCP::Node_Description::Node_Description((a1 + 24), buf);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  for (i = 96; i != 48; i -= 24)
  {
    __p[0] = &buf[i];
    std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](__p);
  }

  if (SBYTE7(v36) < 0)
  {
    operator delete(v35);
  }

  if ((v33[27] & 0x80000000) != 0)
  {
    operator delete(*&v33[4]);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23.__vftable);
  }

  CFRelease(v9);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1DE3C0E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, void *a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, std::__shared_weak_count *a46)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::StringRef::~StringRef(&a23);
  if (a46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a46);
  }

  _Unwind_Resume(a1);
}

void *std::__function::__value_func<std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
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

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE3C1230(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2::~$_2(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core19Device_Node_Factory31add_input_device_node_functionsERKNSt3__110shared_ptrINS0_17Device_Node_StateEEERKNS3_INS_5Graph8TimebaseEEERKNS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::operator()(uint64_t a1@<X0>, int *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  if (!v6 || (v7 = *a2, v8 = *a3, v6 = std::__shared_weak_count::lock(v6), (v9 = v6) == 0) || (v10 = *(a1 + 8)) == 0)
  {
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
      *&buf[4] = "Device_Node_Factory.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 109;
      *&buf[18] = 2080;
      *&buf[20] = "not (device_state.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v19);
    std::logic_error::logic_error(&v20, &v19);
    v20.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v21, &v20);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v21.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v21.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v21);
    v28 = "auto AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(const std::shared_ptr<Device_Node_State> &, const Timebase_Ref &, const std::string &)::(anonymous class)::operator()(Direction, size_t) const";
    v29 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Node_Factory.cpp";
    v30 = 109;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v21 = *(a1 + 24);
  }

  *buf = v21;
  *&buf[24] = v8;
  LODWORD(v28) = v7;
  v11 = std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::find<AMCP::Terminal_Identifier>((v10 + 48), buf);
  if (v11)
  {
    v12 = v11[32];
    *a4 = v11[31];
    a4[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  v13 = *MEMORY[0x1E69E9840];
}

void sub_1DE3C1670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v27 - 144);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 145));
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__alloc_func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::destroy[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::__clone(uint64_t a1, std::string *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  a2->__r_.__value_.__r.__words[0] = &unk_1F596B930;
  a2->__r_.__value_.__l.__size_ = v3;
  a2->__r_.__value_.__r.__words[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2 + 1, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v4 = *(a1 + 24);
    a2[1].__r_.__value_.__r.__words[2] = *(a1 + 40);
    *&a2[1].__r_.__value_.__l.__data_ = v4;
  }
}

void sub_1DE3C1828(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE3C18DC(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596B930;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596B930;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1>,std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core19Device_Node_Factory31add_input_device_node_functionsERKNSt3__110shared_ptrINS0_17Device_Node_StateEEERKNS3_INS_5Graph8TimebaseEEERKNS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1>,std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::operator()@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1>,std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1>,std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1>,std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F596B8A0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1>,std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F596B8A0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1>,std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F596B8A0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<AMCP::IO_Core::Device_Connection>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<AMCP::IO_Core::Device_Connection>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F596B850;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core19Device_Node_Factory31add_input_device_node_functionsERKNSt3__110shared_ptrINS0_17Device_Node_StateEEERKNS3_INS_5Graph8TimebaseEEERKNS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::operator()@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F596B7C0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F596B7C0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F596B7C0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::Readable_Range const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_3,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_3>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core19Device_Node_Factory32add_output_device_node_functionsERKNSt3__110shared_ptrINS0_17Device_Node_StateEEERKNS3_INS_5Graph8TimebaseEEERKNS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEE3$_3"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_3,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_3>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::operator()(uint64_t a1@<X0>, int *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  if (!v6 || (v7 = *a2, v8 = *a3, v6 = std::__shared_weak_count::lock(v6), (v9 = v6) == 0) || (v10 = *(a1 + 8)) == 0)
  {
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
      *&buf[4] = "Device_Node_Factory.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 158;
      *&buf[18] = 2080;
      *&buf[20] = "not (device_state.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", &v19);
    std::logic_error::logic_error(&v20, &v19);
    v20.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v21, &v20);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v21.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v21.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v21);
    v28 = "auto AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(const std::shared_ptr<Device_Node_State> &, const Timebase_Ref &, const std::string &)::(anonymous class)::operator()(Direction, size_t) const";
    v29 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Node_Factory.cpp";
    v30 = 158;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v21 = *(a1 + 24);
  }

  *buf = v21;
  *&buf[24] = v8;
  LODWORD(v28) = v7;
  v11 = std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::find<AMCP::Terminal_Identifier>((v10 + 8), buf);
  if (v11)
  {
    v12 = v11[32];
    *a4 = v11[31];
    a4[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  v13 = *MEMORY[0x1E69E9840];
}

void sub_1DE3C2270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v27 - 144);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 145));
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_3,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_3>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_input_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_3,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_3>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::__clone(uint64_t a1, std::string *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  a2->__r_.__value_.__r.__words[0] = &unk_1F596BB50;
  a2->__r_.__value_.__l.__size_ = v3;
  a2->__r_.__value_.__r.__words[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2 + 1, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v4 = *(a1 + 24);
    a2[1].__r_.__value_.__r.__words[2] = *(a1 + 40);
    *&a2[1].__r_.__value_.__l.__data_ = v4;
  }
}

void sub_1DE3C23D4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE3C2488(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_3,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_3>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596BB50;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_3,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_3>,std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596BB50;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2>,std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core19Device_Node_Factory32add_output_device_node_functionsERKNSt3__110shared_ptrINS0_17Device_Node_StateEEERKNS3_INS_5Graph8TimebaseEEERKNS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2>,std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::operator()@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2>,std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2>,std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2>,std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F596BAD0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2>,std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F596BAD0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_2>,std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F596BAD0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core19Device_Node_Factory32add_output_device_node_functionsERKNSt3__110shared_ptrINS0_17Device_Node_StateEEERKNS3_INS_5Graph8TimebaseEEERKNS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::operator()@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F596BA50;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F596BA50;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_1>,std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F596BA50;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0>,void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::Readable_Range const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core19Device_Node_Factory32add_output_device_node_functionsERKNSt3__110shared_ptrINS0_17Device_Node_StateEEERKNS3_INS_5Graph8TimebaseEEERKNS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0>,void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::Readable_Range const&)>::operator()(uint64_t a1, uint64_t a2, void *a3)
{
  if (AMCP::DAL::DAL_Time::operator<(a3, (a3 + 5)))
  {
    AMCP::IO_Core::Stream_Connection::maybe_capture_audio(*(a1 + 8), a3);
  }

  v5 = *(a1 + 8);
  *(v5 + 72) = *a3;
  *(v5 + 80) = a3[1];
  v6 = a3[3];
  *(v5 + 88) = a3[2];
  v7 = a3[4];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(v5 + 104);
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *(v5 + 112) = *(a3 + 10);
  *(v5 + 120) = a3[6];
  v9 = a3[8];
  *(v5 + 128) = a3[7];
  v10 = a3[9];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(v5 + 144);
  *(v5 + 136) = v9;
  *(v5 + 144) = v10;
  if (v11)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0>,void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::Readable_Range const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0>,void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::Readable_Range const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0>,void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::Readable_Range const&)>::__clone(void *result, void *a2)
{
  v2 = result[1];
  *a2 = &unk_1F596B9C0;
  a2[1] = v2;
  v3 = result[3];
  a2[2] = result[2];
  a2[3] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0>,void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::Readable_Range const&)>::~__func(void *a1)
{
  *a1 = &unk_1F596B9C0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0,std::allocator<AMCP::IO_Core::Device_Node_Factory::add_output_device_node_functions(std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,std::shared_ptr<AMCP::Graph::Timebase> const&,std::string const&)::$_0>,void ()(AMCP::DAL::Source_ID const&,AMCP::DAL::Readable_Range const&)>::~__func(void *a1)
{
  *a1 = &unk_1F596B9C0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void AMCP::IO_Core::Device_Node_Factory::create_node_descriptions_from_device(uint64_t a1, uint64_t *a2, void **a3, unsigned int a4, void *a5)
{
  v333 = *MEMORY[0x1E69E9840];
  v252 = 0u;
  v253 = 0u;
  v251 = 0u;
  memset(v250, 0, sizeof(v250));
  v8 = (*(**a2 + 16))();
  v223 = a4;
  AMCP::Core::Broker::fetch_core(&v248, v8, a4);
  if (!v248)
  {
    v217 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v217 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v219 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v218 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v218)
    {
      atomic_fetch_add_explicit(&v218->__shared_owners_, 1uLL, memory_order_relaxed);
      v220 = *v219;
      std::__shared_weak_count::__release_shared[abi:ne200100](v218);
    }

    else
    {
      v220 = *v219;
    }

    if (os_log_type_enabled(v220, OS_LOG_TYPE_ERROR))
    {
      *v280 = 136315650;
      *&v280[4] = "Device_Node_Factory.cpp";
      *&v280[12] = 1024;
      *&v280[14] = 184;
      *&v280[18] = 2080;
      *&v280[20] = "not (device_core != nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v220, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v280, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(v256);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("", v305);
    std::logic_error::logic_error(&v259, v305);
    v259.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(v308, &v259);
    v309 = 0;
    *&v308[24] = 0;
    *&v310 = 0;
    DWORD2(v310) = -1;
    *v308 = &unk_1F5991430;
    *&v308[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v280, v308);
    *&v280[32] = "std::pair<std::vector<Node_Description>, std::shared_ptr<Device_Node_State>> AMCP::IO_Core::Device_Node_Factory::create_node_descriptions_from_device(const std::shared_ptr<Device_Timebase_Factory> &, AMCP::Object_ID, const std::shared_ptr<Device_Node_State> &)";
    *&v280[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Node_Factory.cpp";
    *&v280[48] = 184;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v263);
  }

  v232 = a5;
  v221 = a1;
  AMCP::Core::Core::get_simple_required_property<1937009955u>(&v246, v248, 0x676C6F62u);
  v11 = v246;
  v12 = v247;
  i = a2;
  if (v246 != v247)
  {
    do
    {
      v14 = *v11;
      *&v282 = 0;
      v281 = 0u;
      memset(v280, 0, sizeof(v280));
      *(&v282 + 1) = 1;
      LOBYTE(v283) = 0;
      v15 = (*(**i + 16))();
      AMCP::Core::Broker::fetch_core(v256, v15, v14);
      v17 = *v256;
      if (!*v256)
      {
        v201 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v201 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v16);
        }

        v203 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v202 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v202)
        {
          atomic_fetch_add_explicit(&v202->__shared_owners_, 1uLL, memory_order_relaxed);
          v204 = *v203;
          std::__shared_weak_count::__release_shared[abi:ne200100](v202);
        }

        else
        {
          v204 = *v203;
        }

        if (os_log_type_enabled(v204, OS_LOG_TYPE_ERROR))
        {
          *v308 = 136315650;
          *&v308[4] = "Device_Node_Factory.cpp";
          *&v308[12] = 1024;
          *&v308[14] = 51;
          *&v308[18] = 2080;
          *&v308[20] = "not (stream_core != nullptr)";
          _os_log_error_impl(&dword_1DE1F9000, v204, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v308, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v276);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("", v263);
        std::logic_error::logic_error(&v277, v263);
        v277.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
        std::logic_error::logic_error(&v268, &v277);
        *&__s.__r_.__value_.__l.__data_ = 0uLL;
        v270 = 0;
        LODWORD(__s.__r_.__value_.__r.__words[2]) = -1;
        v268.__vftable = &unk_1F5991430;
        v269 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v308, &v268);
        v309 = "Terminal_Description AMCP::IO_Core::Device_Node_Factory::terminal_description_from_stream(AMCP::Object_ID, const std::shared_ptr<Device_Node_State> &, AMCP::Direction &)";
        *&v310 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Node_Factory.cpp";
        DWORD2(v310) = 51;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v259);
      }

      AMCP::Core::Core::get_simple_required_property<1935894638u>(*v256);
      simple_required = AMCP::Core::Core::get_simple_required_property<1935960434u>(v17);
      v19 = *(*v232 + 96);
      v20 = *(*v232 + 104);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v19 + 128))(v308);
      v21 = v309;
      v22.i32[0] = 9;
      v22.i32[1] = 4 * *&v308[28];
      v22.i32[2] = 1;
      if (*&v308[8] == 1819304813 && (v308[12] & 0x40) == 0)
      {
        v21 = 32;
        v23 = -1;
      }

      else
      {
        v23 = 0;
      }

      *v280 = *v308;
      v22.i32[3] = 4 * *&v308[28];
      *&v280[12] = vbslq_s8(vdupq_n_s32(v23), v22, *&v308[12]);
      *&v280[8] = *&v308[8];
      *&v280[28] = *&v308[28];
      *&v280[32] = v21;
      *&v280[36] = HIDWORD(v309);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      DWORD2(v282) = 1;
      if (*&v256[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v256[8]);
      }

      v24 = v250 + 24 * simple_required;
      v26 = *(v24 + 1);
      v25 = *(v24 + 2);
      if (v26 >= v25)
      {
        v28 = *v24;
        v29 = v26 - *v24;
        v30 = (v29 >> 2) + 1;
        if (v30 >> 62)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v31 = v25 - v28;
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
          std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v32);
        }

        v33 = (4 * (v29 >> 2));
        *v33 = v14;
        v27 = v33 + 1;
        memcpy(0, v28, v29);
        v34 = *v24;
        *v24 = 0;
        *(v24 + 1) = v27;
        *(v24 + 2) = 0;
        if (v34)
        {
          operator delete(v34);
        }
      }

      else
      {
        *v26 = v14;
        v27 = v26 + 1;
      }

      *(v24 + 1) = v27;
      std::vector<AMCP::Terminal_Description>::push_back[abi:ne200100](&v251 + 24 * (simple_required == 0), v280);
      v35 = 64;
      i = a2;
      do
      {
        *v308 = &v280[v35];
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v308);
        v35 -= 24;
      }

      while (v35 != 16);
      ++v11;
    }

    while (v11 != v12);
  }

  v36 = 0;
  v243 = 0;
  *v244 = 0;
  v245 = 0;
  v279 = 1;
  v37 = v232;
  do
  {
    v38 = *&v280[v36 - 8];
    v234 = &v251 + 3 * v38;
    v39 = *v234;
    v40 = v234[1];
    if (*v234 == v40)
    {
      goto LABEL_280;
    }

    memset(&v242, 0, sizeof(v242));
    v224 = v36;
    if (v38 != 1)
    {
      v231 = v250 + 3 * (v38 == 0);
      if (0x4EC4EC4EC4EC4EC5 * ((v40 - v39) >> 3) != (v231[1] - *v231) >> 2)
      {
        v209 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v209 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v10);
        }

        v211 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v210 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v210)
        {
          atomic_fetch_add_explicit(&v210->__shared_owners_, 1uLL, memory_order_relaxed);
          v212 = *v211;
          std::__shared_weak_count::__release_shared[abi:ne200100](v210);
        }

        else
        {
          v212 = *v211;
        }

        if (os_log_type_enabled(v212, OS_LOG_TYPE_ERROR))
        {
          *v280 = 136315650;
          *&v280[4] = "Device_Node_Factory.cpp";
          *&v280[12] = 1024;
          *&v280[14] = 275;
          *&v280[18] = 2080;
          *&v280[20] = "not (input_terminals.size() == input_stream_ids.size())";
          _os_log_error_impl(&dword_1DE1F9000, v212, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s number of terminals does not match number of stream ids", v280, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(v256);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string("number of terminals does not match number of stream ids", v305);
        std::logic_error::logic_error(&v259, v305);
        v259.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(v308, &v259);
        v309 = 0;
        *&v308[24] = 0;
        *&v310 = 0;
        DWORD2(v310) = -1;
        *v308 = &unk_1F5991430;
        *&v308[16] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v280, v308);
        *&v280[32] = "std::vector<Node_Description> AMCP::IO_Core::Device_Node_Factory::create_input_nodes_for_streams(const std::vector<Terminal_Description> &, const std::vector<AMCP::Object_ID> &, const std::shared_ptr<Device_Node_State> &, AMCP::Object_ID, const std::shared_ptr<Device_Timebase_Factory> &)";
        *&v280[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Node_Factory.cpp";
        *&v280[48] = 275;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(v263);
      }

      v240 = 0uLL;
      v241 = 0;
      AMCP::IO_Core::Device_Node_Factory::clock_uid_and_node_description_from_device_and_direction(&v268, *i, v223, 1);
      v96 = (*(**i + 24))();
      (*(*v96 + 24))(v96, &__s);
      if (v274 != v234)
      {
        std::vector<AMCP::Terminal_Description>::__assign_with_size[abi:ne200100]<AMCP::Terminal_Description*,AMCP::Terminal_Description*>(v274, *v234, v234[1], 0x4EC4EC4EC4EC4EC5 * ((v234[1] - *v234) >> 3));
      }

      std::vector<AMCP::Node_Description>::push_back[abi:ne200100](&v240, &v270);
      v97 = *v232;
      v99 = *(*v232 + 112);
      v98 = *(*v232 + 120);
      if (v98)
      {
        atomic_fetch_add_explicit(&v98->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v98);
        if (v99)
        {
          goto LABEL_138;
        }

        v97 = *v232;
      }

      else if (v99)
      {
        goto LABEL_138;
      }

      v100 = *a3;
      v101 = v97[13];
      *v280 = v97[12];
      *&v280[8] = v101;
      if (v101)
      {
        atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v102 = i;
      AMCP::IO_Core::Device_Timebase_Factory::demand_timebase_for_device(&v266, v100, v280, &v268);
      v103 = v266;
      v104 = v267;
      if (v267)
      {
        atomic_fetch_add_explicit(&v267->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v105 = v97[15];
      v97[14] = v103;
      v97[15] = v104;
      if (v105)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v105);
      }

      if (v104)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v104);
      }

      if (v101)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v101);
      }

      i = v102;
LABEL_138:
      v106 = *v234;
      v107 = v234[1];
      if (v107 != *v234)
      {
        v108 = 0;
        v109 = 0;
        do
        {
          if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v262, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
            v106 = *v234;
            v107 = v234[1];
          }

          else
          {
            v262 = __s;
          }

          *v263 = *&v262.__r_.__value_.__l.__data_;
          v110 = v262.__r_.__value_.__r.__words[2];
          memset(&v262, 0, sizeof(v262));
          *&v264 = v110;
          *(&v264 + 1) = v109;
          LODWORD(v265) = 0;
          if (0x4EC4EC4EC4EC4EC5 * ((v107 - v106) >> 3) <= v109)
          {
            std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
          }

          v111 = v106 + v108;
          v112 = *v111;
          v113 = *(v111 + 1);
          v261 = *(v111 + 4);
          v259 = v112;
          v260 = v113;
          v114 = *v37;
          v115 = std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::find<AMCP::Terminal_Identifier>((*v37 + 48), v263);
          if (!v115)
          {
            v117 = *(v114 + 112);
            v118 = *(v114 + 120);
            if (v118)
            {
              atomic_fetch_add_explicit((v118 + 8), 1uLL, memory_order_relaxed);
            }

            *v280 = 2;
            *&v280[8] = 0x40C0000000000000uLL;
            *&v280[24] = v117;
            operator new();
          }

          v116 = *(v115 + 31);
          v238 = v116;
          if (*(&v116 + 1))
          {
            atomic_fetch_add_explicit((*(&v116 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v119 = *v231;
          if (v109 >= (v231[1] - *v231) >> 2)
          {
            std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
          }

          v120 = (*(**i + 16))();
          AMCP::Core::Broker::fetch_core(&v258, v120, *(v119 + 4 * v109));
          if (!v258.__vftable)
          {
            v189 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v189 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(0);
            }

            v191 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v190 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v190)
            {
              atomic_fetch_add_explicit(&v190->__shared_owners_, 1uLL, memory_order_relaxed);
              v192 = *v191;
              std::__shared_weak_count::__release_shared[abi:ne200100](v190);
            }

            else
            {
              v192 = *v191;
            }

            if (os_log_type_enabled(v192, OS_LOG_TYPE_ERROR))
            {
              *v280 = 136315650;
              *&v280[4] = "Device_Node_Factory.cpp";
              *&v280[12] = 1024;
              *&v280[14] = 302;
              *&v280[18] = 2080;
              *&v280[20] = "not (stream_core != nullptr)";
              _os_log_error_impl(&dword_1DE1F9000, v192, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v280, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v278);
            __cxa_allocate_exception(0x40uLL);
            caulk::make_string("", v256);
            std::logic_error::logic_error(&v276, v256);
            v276.__vftable = (MEMORY[0x1E69E55A8] + 16);
            std::logic_error::logic_error(v308, &v276);
            v309 = 0;
            *&v308[24] = 0;
            *&v310 = 0;
            DWORD2(v310) = -1;
            *v308 = &unk_1F5991430;
            *&v308[16] = &unk_1F5991458;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v280, v308);
            *&v280[32] = "std::vector<Node_Description> AMCP::IO_Core::Device_Node_Factory::create_input_nodes_for_streams(const std::vector<Terminal_Description> &, const std::vector<AMCP::Object_ID> &, const std::shared_ptr<Device_Node_State> &, AMCP::Object_ID, const std::shared_ptr<Device_Timebase_Factory> &)";
            *&v280[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Node_Factory.cpp";
            *&v280[48] = 302;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(&v277);
          }

          AMCP::Core::Core::get_simple_required_property<1935894638u>(v258.__vftable);
          v121 = *(*v37 + 96);
          v122 = *(*v37 + 104);
          if (v122)
          {
            atomic_fetch_add_explicit(&v122->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v236 = v108;
          (*(*v121 + 128))(v256);
          if (v122)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v122);
          }

          v235 = *v37;
          v123 = std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::find<AMCP::Terminal_Identifier>((*v37 + 48), v263);
          if (!v123)
          {
            goto LABEL_176;
          }

          v124 = v123;
          v125 = v259.__vftable;
          imp = v259.__imp_.__imp_;
          imp_high = HIDWORD(v259.__imp_.__imp_);
          v128 = v260;
          v129 = DWORD1(v260);
          v130 = DWORD2(v260);
          v131 = HIDWORD(v260);
          v132 = v261;
          v133 = *v256;
          v134 = *&v256[8];
          v229 = *&v256[16];
          v230 = *&v256[12];
          v227 = *&v256[24];
          v228 = *&v256[20];
          v225 = v257;
          v226 = *&v256[28];
          *v280 = v263;
          *&v280[8] = &v264 + 8;
          *&v280[16] = &v265;
          *v308 = v123 + 7;
          *&v308[8] = v123 + 10;
          *&v308[16] = v123 + 11;
          v135 = std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(v280, v308);
          if (!v135)
          {
            v197 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v197 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v135);
            }

            v199 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v198 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v198)
            {
              atomic_fetch_add_explicit(&v198->__shared_owners_, 1uLL, memory_order_relaxed);
              v200 = *v199;
              std::__shared_weak_count::__release_shared[abi:ne200100](v198);
            }

            else
            {
              v200 = *v199;
            }

            if (os_log_type_enabled(v200, OS_LOG_TYPE_ERROR))
            {
              *v280 = 136315650;
              *&v280[4] = "Stream_Connection.cpp";
              *&v280[12] = 1024;
              *&v280[14] = 276;
              *&v280[18] = 2080;
              *&v280[20] = "not (terminal == m_terminal)";
              _os_log_error_impl(&dword_1DE1F9000, v200, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v280, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v254);
            __cxa_allocate_exception(0x40uLL);
            caulk::make_string("", &v277);
            std::logic_error::logic_error(&v278, &v277);
            v278.__vftable = (MEMORY[0x1E69E55A8] + 16);
            std::logic_error::logic_error(v308, &v278);
            v309 = 0;
            *&v308[24] = 0;
            *&v310 = 0;
            DWORD2(v310) = -1;
            *v308 = &unk_1F5991430;
            *&v308[16] = &unk_1F5991458;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v280, v308);
            *&v280[32] = "BOOL AMCP::IO_Core::Stream_Connection::has_settings(const Terminal_Identifier &, size_t, CA::StreamDescription, CA::StreamDescription) const";
            *&v280[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Stream_Connection.cpp";
            *&v280[48] = 276;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(&v276);
          }

          if (v109 == v124[12] && *&v125 == *(v124 + 26) && imp == *(v124 + 54) && imp_high == *(v124 + 55) && v128 == *(v124 + 56) && v129 == *(v124 + 57) && v130 == *(v124 + 58) && v131 == *(v124 + 59) && v132 == *(v124 + 60) && v133 == *(v124 + 43) && v134 == *(v124 + 88) && v230 == *(v124 + 89) && v229 == *(v124 + 90) && v228 == *(v124 + 91) && v227 == *(v124 + 92) && v226 == *(v124 + 93) && v225 == *(v124 + 94))
          {
            v136 = *(&v238 + 1);
            v137 = v236;
          }

          else
          {
LABEL_176:
            *v280 = v259;
            *&v280[16] = v260;
            *&v280[32] = v261;
            *v305 = *v256;
            v306 = *&v256[16];
            v307 = v257;
            *&v277.__r_.__value_.__l.__data_ = v238;
            AMCP::IO_Core::Stream_Connection::Stream_Connection(v308, v263, v109, 1, v280, v305, &v277);
            if (v277.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v277.__r_.__value_.__l.__size_);
            }

            if (SBYTE7(v264) < 0)
            {
              std::string::__init_copy_ctor_external(v280, v263[0], v263[1]);
            }

            else
            {
              *v280 = *v263;
              *&v280[16] = v264;
            }

            v137 = v236;
            *&v280[24] = *(&v264 + 1);
            *&v280[32] = v265;
            *&v280[40] = *v308;
            v138 = *&v308[16];
            memset(v308, 0, 24);
            *&v280[56] = v138;
            *&v281 = *&v308[24];
            DWORD2(v281) = v309;
            v282 = v310;
            v283 = v311;
            v284 = v312;
            v285 = v313;
            v286 = v314;
            v314 = 0uLL;
            v287 = v315;
            v288 = v316;
            v289 = v317;
            v317 = 0uLL;
            v292 = v320;
            v290 = v318;
            v291 = v319;
            v293 = v321;
            v321 = 0uLL;
            v294 = v322;
            v322 = 0uLL;
            LOBYTE(v295) = 0;
            v298 = 0;
            if (v326 == 1)
            {
              v295 = v323;
              v296 = v324;
              v297 = v325;
              v325 = 0uLL;
              v298 = 1;
            }

            v299 = v327;
            v327 = 0uLL;
            v300 = v328;
            v301 = v329;
            v302 = v330;
            v303 = v331;
            v331 = 0uLL;
            v139 = v332;
            v332 = 0;
            v304 = v139;
            std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>>>::__emplace_unique_key_args<AMCP::Terminal_Identifier,std::pair<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>>((v235 + 48), v280);
            AMCP::IO_Core::Stream_Connection::~Stream_Connection(&v280[40]);
            if ((v280[23] & 0x80000000) != 0)
            {
              operator delete(*v280);
            }

            AMCP::IO_Core::Stream_Connection::~Stream_Connection(v308);
            v136 = 0;
          }

          if (v136)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v136);
          }

          i = a2;
          if (v258.__imp_.__imp_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v258.__imp_.__imp_);
          }

          v37 = v232;
          if (SBYTE7(v264) < 0)
          {
            operator delete(v263[0]);
          }

          ++v109;
          v106 = *v234;
          v107 = v234[1];
          v108 = v137 + 104;
        }

        while (v109 < 0x4EC4EC4EC4EC4EC5 * ((v107 - *v234) >> 3));
      }

      v141 = *(*v37 + 112);
      v140 = *(*v37 + 120);
      if (v140)
      {
        atomic_fetch_add_explicit(&v140->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v142 = (*(**i + 24))();
      (*(*v142 + 16))(v263);
      if (v140)
      {
        atomic_fetch_add_explicit(&v140->__shared_owners_, 1uLL, memory_order_relaxed);
        v143 = v263[0];
        atomic_fetch_add_explicit(&v140->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v143 = v263[0];
      }

      *v280 = &unk_1F596B7C0;
      *&v280[8] = v141;
      *&v280[16] = v140;
      if (v140)
      {
        atomic_fetch_add_explicit(&v140->__shared_owners_, 1uLL, memory_order_relaxed);
        *&v280[24] = v280;
        std::__function::__value_func<std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::swap[abi:ne200100](v280, (v143 + 64));
        std::__function::__value_func<std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::~__value_func[abi:ne200100](v280);
        std::__shared_weak_count::__release_shared[abi:ne200100](v140);
        std::__shared_weak_count::__release_shared[abi:ne200100](v140);
      }

      else
      {
        *&v280[24] = v280;
        std::__function::__value_func<std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::swap[abi:ne200100](v280, (v143 + 64));
        std::__function::__value_func<std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::~__value_func[abi:ne200100](v280);
      }

      v144 = *v37;
      v145 = v37[1];
      if (v145)
      {
        atomic_fetch_add_explicit((v145 + 16), 1uLL, memory_order_relaxed);
      }

      std::allocate_shared[abi:ne200100]<AMCP::IO_Core::Device_Connection,std::allocator<AMCP::IO_Core::Device_Connection>,std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,0>();
    }

    if (0x4EC4EC4EC4EC4EC5 * ((v253 - *(&v252 + 1)) >> 3) != (*(&v250[0] + 1) - *&v250[0]) >> 2)
    {
      v205 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v205 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v10);
      }

      v207 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v206 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v206)
      {
        atomic_fetch_add_explicit(&v206->__shared_owners_, 1uLL, memory_order_relaxed);
        v208 = *v207;
        std::__shared_weak_count::__release_shared[abi:ne200100](v206);
      }

      else
      {
        v208 = *v207;
      }

      if (os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
      {
        *v280 = 136315650;
        *&v280[4] = "Device_Node_Factory.cpp";
        *&v280[12] = 1024;
        *&v280[14] = 225;
        *&v280[18] = 2080;
        *&v280[20] = "not (output_terminals.size() == output_stream_ids.size())";
        _os_log_error_impl(&dword_1DE1F9000, v208, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s number of terminals does not match number of stream ids", v280, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(v256);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("number of terminals does not match number of stream ids", v305);
      std::logic_error::logic_error(&v259, v305);
      v259.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(v308, &v259);
      v309 = 0;
      *&v308[24] = 0;
      *&v310 = 0;
      DWORD2(v310) = -1;
      *v308 = &unk_1F5991430;
      *&v308[16] = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v280, v308);
      *&v280[32] = "std::vector<Node_Description> AMCP::IO_Core::Device_Node_Factory::create_output_nodes_for_streams(const std::vector<Terminal_Description> &, const std::vector<AMCP::Object_ID> &, const std::shared_ptr<Device_Node_State> &, AMCP::Object_ID, const std::shared_ptr<Device_Timebase_Factory> &)";
      *&v280[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Node_Factory.cpp";
      *&v280[48] = 225;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(v263);
    }

    memset(&v262, 0, sizeof(v262));
    AMCP::IO_Core::Device_Node_Factory::clock_uid_and_node_description_from_device_and_direction(&v268, *i, v223, 0);
    v41 = (*(**i + 24))();
    (*(*v41 + 24))(v41, &__s);
    std::vector<AMCP::Terminal_Description>::__assign_with_size[abi:ne200100]<AMCP::Terminal_Description*,AMCP::Terminal_Description*>(v275, *(&v252 + 1), v253, 0x4EC4EC4EC4EC4EC5 * ((v253 - *(&v252 + 1)) >> 3));
    v42 = std::vector<AMCP::Node_Description>::push_back[abi:ne200100](&v262, &v270);
    v43 = *v232;
    if (!*v232)
    {
      v213 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v213 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v42);
      }

      v215 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v214 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v214)
      {
        atomic_fetch_add_explicit(&v214->__shared_owners_, 1uLL, memory_order_relaxed);
        v216 = *v215;
        std::__shared_weak_count::__release_shared[abi:ne200100](v214);
      }

      else
      {
        v216 = *v215;
      }

      if (os_log_type_enabled(v216, OS_LOG_TYPE_ERROR))
      {
        *v280 = 136315650;
        *&v280[4] = "Device_Node_Factory.cpp";
        *&v280[12] = 1024;
        *&v280[14] = 235;
        *&v280[18] = 2080;
        *&v280[20] = "not (device_state.operator BOOL())";
        _os_log_error_impl(&dword_1DE1F9000, v216, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v280, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v277);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string("", v263);
      std::logic_error::logic_error(v256, v263);
      *v256 = MEMORY[0x1E69E55A8] + 16;
      std::logic_error::logic_error(v308, v256);
      v309 = 0;
      *&v308[24] = 0;
      *&v310 = 0;
      DWORD2(v310) = -1;
      *v308 = &unk_1F5991430;
      *&v308[16] = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v280, v308);
      *&v280[32] = "std::vector<Node_Description> AMCP::IO_Core::Device_Node_Factory::create_output_nodes_for_streams(const std::vector<Terminal_Description> &, const std::vector<AMCP::Object_ID> &, const std::shared_ptr<Device_Node_State> &, AMCP::Object_ID, const std::shared_ptr<Device_Timebase_Factory> &)";
      *&v280[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Node_Factory.cpp";
      *&v280[48] = 235;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v259);
    }

    v45 = v43[14];
    v44 = v43[15];
    if (v44)
    {
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v44);
      v43 = *v232;
    }

    if (!v45)
    {
      v46 = *a3;
      v47 = v43[13];
      *v280 = v43[12];
      *&v280[8] = v47;
      if (v47)
      {
        atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      AMCP::IO_Core::Device_Timebase_Factory::demand_timebase_for_device(&v240, v46, v280, &v268);
      v48 = v240;
      if (*(&v240 + 1))
      {
        atomic_fetch_add_explicit((*(&v240 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v49 = v43[15];
      *(v43 + 7) = v48;
      if (v49)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v49);
      }

      if (*(&v48 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v48 + 1));
      }

      if (v47)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v47);
      }

      v50 = i[2];
      memset(v308, 0, 24);
      v51 = v50[2];
      if (v51)
      {
        v52 = 0;
        do
        {
          v53 = *(v51 + 39);
          v54 = v51[3];
          if (v53 >= 0)
          {
            v55 = *(v51 + 39);
          }

          else
          {
            v55 = v51[3];
          }

          size = HIBYTE(__s.__r_.__value_.__r.__words[2]);
          if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = __s.__r_.__value_.__l.__size_;
          }

          if (v55 == size)
          {
            v57 = (v51 + 2);
            v58 = v51[2];
            v59 = v53 >= 0 ? v51 + 2 : v51[2];
            v60 = (__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__s : __s.__r_.__value_.__r.__words[0];
            if (!memcmp(v59, v60, v55))
            {
              if (v52 >= *&v308[16])
              {
                v62 = 0xCCCCCCCCCCCCCCCDLL * ((v52 - *v308) >> 3);
                v63 = v62 + 1;
                if (v62 + 1 > 0x666666666666666)
                {
                  std::vector<void *>::__throw_length_error[abi:ne200100]();
                }

                if (0x999999999999999ALL * ((*&v308[16] - *v308) >> 3) > v63)
                {
                  v63 = 0x999999999999999ALL * ((*&v308[16] - *v308) >> 3);
                }

                if (0xCCCCCCCCCCCCCCCDLL * ((*&v308[16] - *v308) >> 3) >= 0x333333333333333)
                {
                  v64 = 0x666666666666666;
                }

                else
                {
                  v64 = v63;
                }

                *&v280[32] = v308;
                if (v64)
                {
                  if (v64 <= 0x666666666666666)
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v66 = 40 * v62;
                *v280 = 0;
                *&v280[8] = v66;
                *&v280[16] = v66;
                *&v280[24] = 0;
                if (*(v51 + 39) < 0)
                {
                  std::string::__init_copy_ctor_external(v66, v51[2], v51[3]);
                  v69 = *&v280[16];
                  v68 = *&v280[8];
                }

                else
                {
                  v67 = *v57;
                  *(v66 + 16) = v51[4];
                  *v66 = v67;
                  v68 = v66;
                  v69 = v66;
                }

                v70 = v51[5];
                *(v66 + 32) = *(v51 + 12);
                *(v66 + 24) = v70;
                *&v280[16] = v69 + 40;
                v71 = *&v308[8];
                v72 = *v308;
                v73 = v68 + *v308 - *&v308[8];
                if (*v308 != *&v308[8])
                {
                  v74 = *v308;
                  v75 = v73;
                  do
                  {
                    v76 = *v74;
                    *(v75 + 16) = *(v74 + 2);
                    *v75 = v76;
                    *(v74 + 1) = 0;
                    *(v74 + 2) = 0;
                    *v74 = 0;
                    v77 = *(v74 + 3);
                    *(v75 + 32) = *(v74 + 8);
                    *(v75 + 24) = v77;
                    v74 = (v74 + 40);
                    v75 += 40;
                  }

                  while (v74 != v71);
                  do
                  {
                    if (*(v72 + 23) < 0)
                    {
                      operator delete(*v72);
                    }

                    v72 += 40;
                  }

                  while (v72 != v71);
                }

                v78 = *v308;
                v79 = *&v308[16];
                *v308 = v73;
                v237 = *&v280[16];
                *&v308[8] = *&v280[16];
                *&v280[16] = v78;
                *&v280[24] = v79;
                *&v280[8] = v78;
                *v280 = v78;
                std::__split_buffer<AMCP::Terminal_Identifier>::~__split_buffer(v280);
                v52 = v237;
              }

              else
              {
                if (v53 < 0)
                {
                  std::string::__init_copy_ctor_external(v52, v58, v54);
                }

                else
                {
                  v61 = *v57;
                  *(v52 + 16) = v51[4];
                  *v52 = v61;
                }

                v65 = v51[5];
                *(v52 + 32) = *(v51 + 12);
                *(v52 + 24) = v65;
                v52 += 40;
              }

              *&v308[8] = v52;
            }
          }

          v51 = *v51;
        }

        while (v51);
        v80 = *v308;
        for (i = a2; v80 != v52; v80 += 40)
        {
          v81 = std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::find<AMCP::Terminal_Identifier>(v50, v80);
          if (v81)
          {
            v82 = v50[1];
            v83 = v81[1];
            v84 = vcnt_s8(v82);
            v84.i16[0] = vaddlv_u8(v84);
            if (v84.u32[0] > 1uLL)
            {
              if (v83 >= *&v82)
              {
                v83 %= *&v82;
              }
            }

            else
            {
              v83 &= *&v82 - 1;
            }

            v85 = *(*v50 + 8 * v83);
            do
            {
              v86 = v85;
              v85 = *v85;
            }

            while (v85 != v81);
            if (v86 == v50 + 2)
            {
              goto LABEL_106;
            }

            v87 = v86[1];
            if (v84.u32[0] > 1uLL)
            {
              if (v87 >= *&v82)
              {
                v87 %= *&v82;
              }
            }

            else
            {
              v87 &= *&v82 - 1;
            }

            if (v87 != v83)
            {
LABEL_106:
              if (!*v81)
              {
                goto LABEL_107;
              }

              v88 = *(*v81 + 1);
              if (v84.u32[0] > 1uLL)
              {
                if (v88 >= *&v82)
                {
                  v88 %= *&v82;
                }
              }

              else
              {
                v88 &= *&v82 - 1;
              }

              if (v88 != v83)
              {
LABEL_107:
                *(*v50 + 8 * v83) = 0;
              }
            }

            v89 = *v81;
            if (*v81)
            {
              v90 = v89[1];
              if (v84.u32[0] > 1uLL)
              {
                if (v90 >= *&v82)
                {
                  v90 %= *&v82;
                }
              }

              else
              {
                v90 &= *&v82 - 1;
              }

              if (v90 != v83)
              {
                *(*v50 + 8 * v90) = v86;
                v89 = *v81;
              }
            }

            *v86 = v89;
            *v81 = 0;
            --v50[3];
            *v280 = v81;
            *&v280[8] = v50;
            v280[16] = 1;
            *&v280[17] = 0;
            *&v280[20] = 0;
            std::unique_ptr<std::__hash_node<std::__hash_value_type<AMCP::Terminal_Identifier,std::shared_ptr<AMCP::DAL::Synchronized_Mixer>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Terminal_Identifier,std::shared_ptr<AMCP::DAL::Synchronized_Mixer>>,void *>>>>::~unique_ptr[abi:ne200100](v280);
          }
        }
      }

      v91 = v50 + 5;
      v92 = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(v50 + 5, &__s);
      if (v92)
      {
        v93 = v50[6];
        v94 = v92[1];
        v95 = vcnt_s8(v93);
        v95.i16[0] = vaddlv_u8(v95);
        if (v95.u32[0] > 1uLL)
        {
          if (v94 >= *&v93)
          {
            v94 %= *&v93;
          }
        }

        else
        {
          v94 &= *&v93 - 1;
        }

        v146 = *(*v91 + 8 * v94);
        do
        {
          v147 = v146;
          v146 = *v146;
        }

        while (v146 != v92);
        if (v147 == v50 + 7)
        {
          goto LABEL_219;
        }

        v148 = v147[1];
        if (v95.u32[0] > 1uLL)
        {
          if (v148 >= *&v93)
          {
            v148 %= *&v93;
          }
        }

        else
        {
          v148 &= *&v93 - 1;
        }

        if (v148 != v94)
        {
LABEL_219:
          if (!*v92)
          {
            goto LABEL_220;
          }

          v149 = *(*v92 + 8);
          if (v95.u32[0] > 1uLL)
          {
            if (v149 >= *&v93)
            {
              v149 %= *&v93;
            }
          }

          else
          {
            v149 &= *&v93 - 1;
          }

          if (v149 != v94)
          {
LABEL_220:
            *(*v91 + 8 * v94) = 0;
          }
        }

        v150 = *v92;
        if (*v92)
        {
          v151 = *(v150 + 8);
          if (v95.u32[0] > 1uLL)
          {
            if (v151 >= *&v93)
            {
              v151 %= *&v93;
            }
          }

          else
          {
            v151 &= *&v93 - 1;
          }

          if (v151 != v94)
          {
            *(*v91 + 8 * v151) = v147;
            v150 = *v92;
          }
        }

        *v147 = v150;
        *v92 = 0;
        --v50[8];
        *v280 = v92;
        *&v280[8] = v50 + 5;
        v280[16] = 1;
        *&v280[17] = 0;
        *&v280[20] = 0;
        std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Timebase>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Timebase>>,void *>>>>::~unique_ptr[abi:ne200100](v280);
      }

      *v280 = v308;
      std::vector<IOContextInfo>::__destroy_vector::operator()[abi:ne200100](v280);
      v43 = *v232;
    }

    v153 = v43[14];
    v152 = v43[15];
    if (v152)
    {
      atomic_fetch_add_explicit(&v152->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v152);
    }

    if (v153)
    {
      v154 = *(&v252 + 1);
      if (v253 != *(&v252 + 1))
      {
        v155 = 0;
        v156 = 0;
        do
        {
          if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v277, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
          }

          else
          {
            v277 = __s;
          }

          *v305 = *&v277.__r_.__value_.__l.__data_;
          v157 = v277.__r_.__value_.__r.__words[2];
          memset(&v277, 0, sizeof(v277));
          *&v306 = v157;
          *(&v306 + 1) = v156;
          LODWORD(v307) = 1;
          v158 = i[2];
          v159 = *(*v232 + 112);
          v160 = *(v154 + v155);
          v161 = *(v154 + v155 + 16);
          v265 = *(v154 + v155 + 32);
          *v263 = v160;
          v264 = v161;
          if (*(&v159 + 1))
          {
            atomic_fetch_add_explicit((*(&v159 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          *v280 = 2;
          *&v280[8] = 0x40C0000000000000uLL;
          *&v280[24] = v159;
          AMCP::Graph::Synchronized_Mixer_Manager::get_mixer(&v278, v158, v305, v263, v280);
          if (*&v280[32])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&v280[32]);
          }

          v162 = *&v250[0];
          if (v156 >= (*(&v250[0] + 1) - *&v250[0]) >> 2)
          {
            std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
          }

          v163 = (*(**i + 16))();
          AMCP::Core::Broker::fetch_core(&v266, v163, *(v162 + 4 * v156));
          if (!v266)
          {
            v193 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v193 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(0);
            }

            v195 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v194 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v194)
            {
              atomic_fetch_add_explicit(&v194->__shared_owners_, 1uLL, memory_order_relaxed);
              v196 = *v195;
              std::__shared_weak_count::__release_shared[abi:ne200100](v194);
            }

            else
            {
              v196 = *v195;
            }

            if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
            {
              *v280 = 136315650;
              *&v280[4] = "Device_Node_Factory.cpp";
              *&v280[12] = 1024;
              *&v280[14] = 256;
              *&v280[18] = 2080;
              *&v280[20] = "not (stream_core != nullptr)";
              _os_log_error_impl(&dword_1DE1F9000, v196, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v280, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v255);
            __cxa_allocate_exception(0x40uLL);
            caulk::make_string("", v256);
            std::logic_error::logic_error(&v258, v256);
            v258.__vftable = (MEMORY[0x1E69E55A8] + 16);
            std::logic_error::logic_error(v308, &v258);
            v309 = 0;
            *&v308[24] = 0;
            *&v310 = 0;
            DWORD2(v310) = -1;
            *v308 = &unk_1F5991430;
            *&v308[16] = &unk_1F5991458;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v280, v308);
            *&v280[32] = "std::vector<Node_Description> AMCP::IO_Core::Device_Node_Factory::create_output_nodes_for_streams(const std::vector<Terminal_Description> &, const std::vector<AMCP::Object_ID> &, const std::shared_ptr<Device_Node_State> &, AMCP::Object_ID, const std::shared_ptr<Device_Timebase_Factory> &)";
            *&v280[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Node_Factory.cpp";
            *&v280[48] = 256;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(&v276);
          }

          v164 = i;
          AMCP::Core::Core::get_simple_required_property<1935894638u>(v266);
          v165 = *(*v232 + 96);
          v166 = *(*v232 + 104);
          if (v166)
          {
            atomic_fetch_add_explicit(&v166->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v165 + 128))(&v259);
          if (v166)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v166);
          }

          *v280 = *v263;
          *&v280[16] = v264;
          *&v280[32] = v265;
          *v256 = v259;
          *&v256[16] = v260;
          v257 = v261;
          v167 = v278.__imp_.__imp_;
          v254 = v278;
          if (v278.__imp_.__imp_)
          {
            atomic_fetch_add_explicit(v278.__imp_.__imp_ + 1, 1uLL, memory_order_relaxed);
          }

          AMCP::IO_Core::Stream_Connection::Stream_Connection(v308, v305, v156, 0, v280, v256, &v254);
          if (v254.__imp_.__imp_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v254.__imp_.__imp_);
          }

          v168 = *v232;
          if (SBYTE7(v306) < 0)
          {
            std::string::__init_copy_ctor_external(v280, v305[0], v305[1]);
          }

          else
          {
            *v280 = *v305;
            *&v280[16] = v306;
          }

          *&v280[24] = *(&v306 + 1);
          *&v280[32] = v307;
          *&v280[40] = *v308;
          v169 = *&v308[16];
          memset(v308, 0, 24);
          *&v280[56] = v169;
          *&v281 = *&v308[24];
          DWORD2(v281) = v309;
          v282 = v310;
          v283 = v311;
          v284 = v312;
          v285 = v313;
          v286 = v314;
          v314 = 0uLL;
          v287 = v315;
          v288 = v316;
          v289 = v317;
          v317 = 0uLL;
          v292 = v320;
          v290 = v318;
          v291 = v319;
          v293 = v321;
          v321 = 0uLL;
          v294 = v322;
          v322 = 0uLL;
          LOBYTE(v295) = 0;
          v298 = 0;
          if (v326 == 1)
          {
            v295 = v323;
            v296 = v324;
            v297 = v325;
            v325 = 0uLL;
            v298 = 1;
          }

          v299 = v327;
          v327 = 0uLL;
          v300 = v328;
          v301 = v329;
          v302 = v330;
          v303 = v331;
          v331 = 0uLL;
          v170 = v332;
          v332 = 0;
          v304 = v170;
          std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>>>::__emplace_unique_key_args<AMCP::Terminal_Identifier,std::pair<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>>((v168 + 8), v280);
          AMCP::IO_Core::Stream_Connection::~Stream_Connection(&v280[40]);
          i = v164;
          if ((v280[23] & 0x80000000) != 0)
          {
            operator delete(*v280);
          }

          AMCP::IO_Core::Stream_Connection::~Stream_Connection(v308);
          if (v267)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v267);
          }

          if (v167)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v167);
          }

          if (SBYTE7(v306) < 0)
          {
            operator delete(v305[0]);
          }

          ++v156;
          v154 = *(&v252 + 1);
          v155 += 104;
        }

        while (v156 < 0x4EC4EC4EC4EC4EC5 * ((v253 - *(&v252 + 1)) >> 3));
      }

      v171 = *(*v232 + 120);
      v239 = *(*v232 + 112);
      if (v171)
      {
        atomic_fetch_add_explicit((v171 + 8), 1uLL, memory_order_relaxed);
        v172 = *v232;
      }

      v173 = v232[1];
      if (v173)
      {
        atomic_fetch_add_explicit((v173 + 16), 1uLL, memory_order_relaxed);
      }

      std::allocate_shared[abi:ne200100]<AMCP::IO_Core::Device_Connection,std::allocator<AMCP::IO_Core::Device_Connection>,std::shared_ptr<AMCP::IO_Core::Device_Node_State> const&,0>();
    }

    v174 = 120;
    do
    {
      v175 = v174 - 24;
      *v280 = &v268 + v174;
      std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](v280);
      v174 = v175;
    }

    while (v175 != 72);
    if (v273 < 0)
    {
      operator delete(v272);
    }

    v36 = v224;
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v269) < 0)
    {
      operator delete(v268.__vftable);
    }

    std::vector<AMCP::Node_Description>::__vdeallocate(&v242);
    v242 = v262;
    memset(&v262, 0, sizeof(v262));
    *v280 = &v262;
    std::vector<AMCP::Node_Description>::__destroy_vector::operator()[abi:ne200100](v280);
    std::vector<AMCP::Node_Description>::__insert_with_size[abi:ne200100]<std::__wrap_iter<AMCP::Node_Description*>,std::__wrap_iter<AMCP::Node_Description*>>(&v243, *v244, v242.__r_.__value_.__l.__data_, v242.__r_.__value_.__l.__size_, 0xEEEEEEEEEEEEEEEFLL * ((v242.__r_.__value_.__l.__size_ - v242.__r_.__value_.__r.__words[0]) >> 3));
    *v280 = &v242;
    std::vector<AMCP::Node_Description>::__destroy_vector::operator()[abi:ne200100](v280);
LABEL_280:
    v36 += 4;
  }

  while (v36 != 8);
  *(v221 + 32) = 0;
  *v221 = 0u;
  *(v221 + 16) = 0u;
  if (&v243 != v221)
  {
    if (*v244 != v243)
    {
      v176 = 0xEEEEEEEEEEEEEEEFLL * ((*v244 - v243) >> 3);
      std::vector<AMCP::Node_Description>::__vdeallocate(v221);
      if (v176 <= 0x222222222222222)
      {
        v177 = 0xDDDDDDDDDDDDDDDELL * ((*(v221 + 16) - *v221) >> 3);
        if (v177 <= v176)
        {
          v177 = v176;
        }

        if (0xEEEEEEEEEEEEEEEFLL * ((*(v221 + 16) - *v221) >> 3) >= 0x111111111111111)
        {
          v178 = 0x222222222222222;
        }

        else
        {
          v178 = v177;
        }

        std::vector<AMCP::Node_Description>::__vallocate[abi:ne200100](v221, v178);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    std::__copy_impl::operator()[abi:ne200100]<AMCP::Node_Description *,AMCP::Node_Description *,AMCP::Node_Description *>(v243, *v244, 0);
    v180 = v179;
    for (j = *(v221 + 8); j != v180; std::allocator_traits<std::allocator<AMCP::Node_Description>>::destroy[abi:ne200100]<AMCP::Node_Description,void,0>(j))
    {
      j -= 120;
    }

    *(v221 + 8) = v180;
  }

  v183 = *v232;
  v182 = v232[1];
  if (v182)
  {
    atomic_fetch_add_explicit((v182 + 8), 1uLL, memory_order_relaxed);
  }

  v184 = *(v221 + 32);
  *(v221 + 24) = v183;
  *(v221 + 32) = v182;
  if (v184)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v184);
  }

  *v280 = &v243;
  std::vector<AMCP::Node_Description>::__destroy_vector::operator()[abi:ne200100](v280);
  if (v246)
  {
    operator delete(v246);
  }

  if (v249)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v249);
  }

  for (k = 0; k != -48; k -= 24)
  {
    v186 = *(&v250[1] + k + 8);
    if (v186)
    {
      *(&v250[2] + k) = v186;
      operator delete(v186);
    }
  }

  for (m = 24; m != -24; m -= 24)
  {
    *v280 = &v251 + m;
    std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](v280);
  }

  v188 = *MEMORY[0x1E69E9840];
}

void sub_1DE3C5D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  *(v56 + 8) = v55;
  std::pair<std::vector<AMCP::Node_Description>,std::shared_ptr<AMCP::IO_Core::Device_Node_State>>::~pair(a10);
  STACK[0x530] = &a41;
  std::vector<AMCP::Node_Description>::__destroy_vector::operator()[abi:ne200100](&STACK[0x530]);
  if (__p)
  {
    operator delete(__p);
  }

  if (a48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a48);
  }

  v58 = 0;
  while (1)
  {
    v59 = *(&a49 + v58 + 24);
    if (v59)
    {
      *(&a49 + v58 + 32) = v59;
      operator delete(v59);
    }

    v58 -= 24;
    if (v58 == -48)
    {
      for (i = 24; i != -24; i -= 24)
      {
        STACK[0x530] = (&a55 + i);
        std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&STACK[0x530]);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t std::vector<AMCP::Terminal_Description>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v15 = 0x4EC4EC4EC4EC4EC5 * ((v5 - *a1) >> 3);
    if ((v15 + 1) > 0x276276276276276)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v16 = 0x4EC4EC4EC4EC4EC5 * ((v4 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x13B13B13B13B13BLL)
    {
      v18 = 0x276276276276276;
    }

    else
    {
      v18 = v17;
    }

    v35 = a1;
    if (v18)
    {
      std::allocator<AMCP::Terminal_Description>::allocate_at_least[abi:ne200100](v18);
    }

    v19 = 0;
    v20 = 0;
    v21 = 104 * v15;
    v32 = 0;
    v33 = v21;
    v34 = (104 * v15);
    v22 = *a2;
    v23 = a2[1];
    *(v21 + 32) = *(a2 + 4);
    *v21 = v22;
    *(v21 + 16) = v23;
    do
    {
      v24 = v19;
      v25 = (v21 + 24 * v20);
      v25[5] = 0;
      v25[6] = 0;
      v25 += 5;
      v25[2] = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v25, *(a2 + 3 * v20 + 5), *(a2 + 3 * v20 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 3 * v20 + 6) - *(a2 + 3 * v20 + 5)) >> 3));
      v19 = 1;
      v20 = 1;
    }

    while ((v24 & 1) == 0);
    v26 = *(a2 + 11);
    *(104 * v15 + 0x60) = *(a2 + 96);
    *(104 * v15 + 0x58) = v26;
    *&v34 = v34 + 104;
    v27 = *(a1 + 8);
    v28 = v33 + *a1 - v27;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Terminal_Description>,AMCP::Terminal_Description*>(a1, *a1, v27, v28);
    v29 = *a1;
    *a1 = v28;
    v30 = *(a1 + 16);
    v31 = v34;
    *(a1 + 8) = v34;
    *&v34 = v29;
    *(&v34 + 1) = v30;
    v32 = v29;
    v33 = v29;
    result = std::__split_buffer<AMCP::Terminal_Description>::~__split_buffer(&v32);
    v14 = v31;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = *a2;
    v9 = a2[1];
    *(v5 + 32) = *(a2 + 4);
    *v5 = v8;
    *(v5 + 16) = v9;
    do
    {
      v10 = v6;
      v11 = (v5 + 24 * v7);
      v11[5] = 0;
      v11[6] = 0;
      v11 += 5;
      v11[2] = 0;
      result = std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v11, *(a2 + 3 * v7 + 5), *(a2 + 3 * v7 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 3 * v7 + 6) - *(a2 + 3 * v7 + 5)) >> 3));
      v6 = 1;
      v7 = 1;
    }

    while ((v10 & 1) == 0);
    v13 = *(a2 + 11);
    *(v5 + 96) = *(a2 + 96);
    *(v5 + 88) = v13;
    v14 = v5 + 104;
    *(a1 + 8) = v5 + 104;
  }

  *(a1 + 8) = v14;
  return result;
}

void std::vector<AMCP::Node_Description>::__vdeallocate(uint64_t a1)
{
  v1 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v1; std::allocator_traits<std::allocator<AMCP::Node_Description>>::destroy[abi:ne200100]<AMCP::Node_Description,void,0>(i))
    {
      i -= 120;
    }

    *(a1 + 8) = v1;
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

AMCP::Node_Description *std::vector<AMCP::Node_Description>::__insert_with_size[abi:ne200100]<std::__wrap_iter<AMCP::Node_Description*>,std::__wrap_iter<AMCP::Node_Description*>>(AMCP::Node_Description *result, uint64_t a2, const AMCP::Node_Description *a3, AMCP::Node_Description *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v8 = result;
    v10 = *(result + 1);
    v9 = *(result + 2);
    if ((0xEEEEEEEEEEEEEEEFLL * ((v9 - v10) >> 3)) >= a5)
    {
      v15 = v10 - a2;
      if ((0xEEEEEEEEEEEEEEEFLL * ((v10 - a2) >> 3)) >= a5)
      {
        v17 = 120 * a5;
        std::vector<AMCP::Node_Description>::__move_range(result, a2, *(result + 1), a2 + 120 * a5);
        v16 = v6 + v17;
      }

      else
      {
        result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AMCP::Node_Description>,AMCP::Node_Description*,AMCP::Node_Description*,AMCP::Node_Description*>(result, (a3 + v15), a4, *(result + 1));
        v8[1] = result;
        if (v15 < 1)
        {
          return result;
        }

        std::vector<AMCP::Node_Description>::__move_range(v8, a2, v10, a2 + 120 * a5);
        v16 = v6 + v15;
      }

      return std::__copy_impl::operator()[abi:ne200100]<AMCP::Node_Description *,AMCP::Node_Description *,AMCP::Node_Description *>(v6, v16, a2);
    }

    else
    {
      v11 = *result;
      v12 = a5 - 0x1111111111111111 * ((v10 - *result) >> 3);
      if (v12 > 0x222222222222222)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v13 = 0xEEEEEEEEEEEEEEEFLL * ((v9 - v11) >> 3);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x111111111111111)
      {
        v14 = 0x222222222222222;
      }

      else
      {
        v14 = v12;
      }

      v29 = v8;
      if (v14)
      {
        std::allocator<AMCP::Node_Description>::allocate_at_least[abi:ne200100](v14);
      }

      v18 = (8 * ((a2 - v11) >> 3));
      v26 = 0;
      v27 = v18;
      v28 = v18;
      v19 = 120 * a5;
      v20 = v18 + 120 * a5;
      do
      {
        AMCP::Node_Description::Node_Description(v18, v6);
        v18 = (v18 + 120);
        v6 = (v6 + 120);
        v19 -= 120;
      }

      while (v19);
      *&v28 = v20;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Node_Description>,AMCP::Node_Description*>(v8, a2, v8[1], v20);
      v21 = *v8;
      v22 = v27;
      *&v28 = v20 + v8[1] - a2;
      v8[1] = a2;
      v23 = v22 + v21 - a2;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Node_Description>,AMCP::Node_Description*>(v8, v21, a2, v23);
      v24 = *v8;
      *v8 = v23;
      v25 = v8[2];
      *(v8 + 1) = v28;
      *&v28 = v24;
      *(&v28 + 1) = v25;
      v26 = v24;
      v27 = v24;
      return std::__split_buffer<AMCP::Node_Description>::~__split_buffer(&v26);
    }
  }

  return result;
}

uint64_t std::pair<std::vector<AMCP::Node_Description>,std::shared_ptr<AMCP::IO_Core::Device_Node_State>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v4 = a1;
  std::vector<AMCP::Node_Description>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

AMCP::Node_Description *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AMCP::Node_Description>,AMCP::Node_Description*,AMCP::Node_Description*,AMCP::Node_Description*>(int a1, AMCP::Node_Description *a2, AMCP::Node_Description *a3, AMCP::Node_Description *this)
{
  if (a2 == a3)
  {
    return this;
  }

  v5 = a2;
  v6 = 0;
  v7 = this;
  do
  {
    AMCP::Node_Description::Node_Description(v7, v5);
    v5 = (v5 + 120);
    v7 = (v7 + 120);
    v6 -= 120;
  }

  while (v5 != a3);
  return v7;
}

void std::vector<AMCP::Node_Description>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v8 = a2 + v7 - a4;
  v9 = v7;
  if (v8 < a3)
  {
    v11 = a2 + v7 - a4;
    v9 = v7;
    do
    {
      std::construct_at[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description,AMCP::Node_Description*>(v9, v11);
      v11 += 120;
      v9 = v12 + 120;
    }

    while (v11 < a3);
  }

  *(a1 + 8) = v9;
  if (v7 != a4)
  {
    v13 = v8;
    v14 = v7;
    do
    {
      v15 = *(v13 - 120);
      v13 -= 120;
      *(v14 - 120) = v15;
      v14 -= 120;
      if (*(v14 + 31) < 0)
      {
        operator delete(*(v14 + 8));
      }

      v16 = *(v13 + 8);
      *(v14 + 24) = *(v13 + 24);
      *(v14 + 8) = v16;
      *(v8 - 89) = 0;
      *(v8 - 112) = 0;
      *(v7 - 88) = *(v8 - 88);
      v17 = (v7 - 80);
      if (*(v7 - 57) < 0)
      {
        operator delete(*v17);
      }

      v18 = 0;
      v19 = *(v8 - 80);
      *(v7 - 64) = *(v8 - 64);
      *v17 = v19;
      *(v8 - 57) = 0;
      *(v8 - 80) = 0;
      *(v7 - 56) = *(v8 - 56);
      do
      {
        v20 = v7 + v18;
        v21 = v8 + v18;
        std::vector<AMCP::Terminal_Description>::__vdeallocate((v7 + v18 - 48));
        *(v20 - 48) = *(v8 + v18 - 48);
        *(v20 - 32) = *(v8 + v18 - 32);
        *(v21 - 48) = 0;
        *(v21 - 40) = 0;
        *(v21 - 32) = 0;
        v18 += 24;
      }

      while (v18 != 48);
      v7 = v14;
      v8 = v13;
    }

    while (v13 != a2);
  }
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<AMCP::Node_Description *,AMCP::Node_Description *,AMCP::Node_Description *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      *a3 = *v4;
      std::string::operator=((a3 + 8), (v4 + 8));
      *(a3 + 32) = *(v4 + 32);
      std::string::operator=((a3 + 40), (v4 + 40));
      v6 = 0;
      v7 = 0;
      *(a3 + 64) = *(v4 + 64);
      do
      {
        v8 = v6;
        if (a3 != v4)
        {
          std::vector<AMCP::Terminal_Description>::__assign_with_size[abi:ne200100]<AMCP::Terminal_Description*,AMCP::Terminal_Description*>((a3 + 72 + 24 * v7), *(v4 + 72 + 24 * v7), *(v4 + 72 + 24 * v7 + 8), 0x4EC4EC4EC4EC4EC5 * ((*(v4 + 72 + 24 * v7 + 8) - *(v4 + 72 + 24 * v7)) >> 3));
        }

        v6 = 1;
        v7 = 1;
      }

      while ((v8 & 1) == 0);
      v4 += 120;
      a3 += 120;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void std::allocator<AMCP::Node_Description>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x222222222222223)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<AMCP::Node_Description>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 120;
    std::allocator_traits<std::allocator<AMCP::Node_Description>>::destroy[abi:ne200100]<AMCP::Node_Description,void,0>(v3 - 120);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator_traits<std::allocator<AMCP::Node_Description>>::destroy[abi:ne200100]<AMCP::Node_Description,void,0>(uint64_t a1)
{
  v2 = (a1 + 96);
  v3 = -48;
  do
  {
    v5 = v2;
    std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&v5);
    v2 -= 3;
    v3 += 24;
  }

  while (v3);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    v4 = *(a1 + 8);

    operator delete(v4);
  }
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Node_Description>,AMCP::Node_Description*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      std::construct_at[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description,AMCP::Node_Description*>(a4, v7);
      v7 += 120;
      a4 = v8 + 120;
    }

    while (v7 != a3);
    do
    {
      std::allocator_traits<std::allocator<AMCP::Node_Description>>::destroy[abi:ne200100]<AMCP::Node_Description,void,0>(v6);
      v6 += 120;
    }

    while (v6 != a3);
  }
}

__n128 std::construct_at[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description,AMCP::Node_Description*>(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  *(a1 + 64) = *(a2 + 64);
  do
  {
    v5 = (a1 + v2);
    v6 = (a2 + v2);
    v5[9] = 0;
    v5[10] = 0;
    v5[11] = 0;
    result = *(a2 + v2 + 72);
    *(v5 + 9) = result;
    v5[11] = *(a2 + v2 + 88);
    v6[9] = 0;
    v6[10] = 0;
    v6[11] = 0;
    v2 += 24;
  }

  while (v2 != 48);
  return result;
}

void std::vector<AMCP::Terminal_Description>::__assign_with_size[abi:ne200100]<AMCP::Terminal_Description*,AMCP::Terminal_Description*>(uint64_t *a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v7 = *a1;
  if (0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<AMCP::Terminal_Description>::__vdeallocate(a1);
    if (a4 <= 0x276276276276276)
    {
      v8 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
      {
        v9 = 0x276276276276276;
      }

      else
      {
        v9 = v8;
      }

      std::vector<AMCP::Terminal_Description>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v10 = a1[1] - v7;
  if (0x4EC4EC4EC4EC4EC5 * (v10 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<AMCP::Terminal_Description *,AMCP::Terminal_Description *,AMCP::Terminal_Description *>(a2, a3, v7);

    std::vector<AMCP::Terminal_Description>::__base_destruct_at_end[abi:ne200100](a1, v12);
  }

  else
  {
    v11 = std::__copy_impl::operator()[abi:ne200100]<AMCP::Terminal_Description *,AMCP::Terminal_Description *,AMCP::Terminal_Description *>(a2, (a2 + v10), v7);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AMCP::Terminal_Description>,AMCP::Terminal_Description*,AMCP::Terminal_Description*,AMCP::Terminal_Description*>(a1, v11, a3, a1[1]);
  }
}

__int128 *std::__copy_impl::operator()[abi:ne200100]<AMCP::Terminal_Description *,AMCP::Terminal_Description *,AMCP::Terminal_Description *>(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v6 = 0;
      v7 = 0;
      v8 = *v4;
      v9 = v4[1];
      *(a3 + 32) = *(v4 + 4);
      *a3 = v8;
      *(a3 + 16) = v9;
      do
      {
        v10 = v6;
        if (a3 != v4)
        {
          std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a3 + 40 + 24 * v7), *(v4 + 3 * v7 + 5), *(v4 + 3 * v7 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(v4 + 3 * v7 + 6) - *(v4 + 3 * v7 + 5)) >> 3));
        }

        v6 = 1;
        v7 = 1;
      }

      while ((v10 & 1) == 0);
      v11 = *(v4 + 11);
      *(a3 + 96) = *(v4 + 96);
      *(a3 + 88) = v11;
      v4 = (v4 + 104);
      a3 += 104;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void std::vector<AMCP::Terminal_Description>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<AMCP::Terminal_Description>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(std::vector<std::string> *this, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(this);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((this->__end_cap_.__value_ - this->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::string>::__vallocate[abi:ne200100](this, v10);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  end = this->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = this->__end_;
    }

    while (end != begin)
    {
      v14 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v14 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    this->__end_ = begin;
  }

  else
  {
    if (end == begin)
    {
      v13 = __str;
    }

    else
    {
      v13 = (__str + v12);
      do
      {
        std::string::operator=(begin++, v6++);
        v12 -= 24;
      }

      while (v12);
      end = this->__end_;
    }

    this->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(this, v13, a3, end);
  }
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

uint64_t std::vector<AMCP::Node_Description>::push_back[abi:ne200100](uint64_t *a1, const AMCP::Node_Description *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<AMCP::Node_Description>::__emplace_back_slow_path<AMCP::Node_Description const&>(a1, a2);
  }

  else
  {
    AMCP::Node_Description::Node_Description(a1[1], a2);
    result = v3 + 120;
    a1[1] = v3 + 120;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<AMCP::Node_Description>::__emplace_back_slow_path<AMCP::Node_Description const&>(uint64_t *a1, const AMCP::Node_Description *a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v5 = 0x222222222222222;
  }

  else
  {
    v5 = v3;
  }

  v15 = a1;
  if (v5)
  {
    std::allocator<AMCP::Node_Description>::allocate_at_least[abi:ne200100](v5);
  }

  v12 = 0;
  v13 = 120 * v2;
  AMCP::Node_Description::Node_Description((120 * v2), a2);
  v14 = 120 * v2 + 120;
  v6 = a1[1];
  v7 = 120 * v2 + *a1 - v6;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Node_Description>,AMCP::Node_Description*>(a1, *a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  v9 = a1[2];
  v11 = v14;
  *(a1 + 1) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  std::__split_buffer<AMCP::Node_Description>::~__split_buffer(&v12);
  return v11;
}

void sub_1DE3C76D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<AMCP::Node_Description>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

BOOL std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>>>::__emplace_unique_key_args<AMCP::Terminal_Identifier,std::pair<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>>(void *a1, uint64_t a2)
{
  v4 = std::hash<AMCP::Terminal_Identifier>::operator()(a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  v15[0] = v11 + 2;
  v15[1] = v11 + 5;
  v15[2] = v11 + 6;
  v14[0] = a2;
  v14[1] = a2 + 24;
  v14[2] = a2 + 32;
  result = std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(v15, v14);
  if (!result)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_1DE3C7B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void AMCP::IO_Core::Stream_Connection::~Stream_Connection(OpaqueAudioConverter **this)
{
  std::unique_ptr<OpaqueAudioConverter,AMCP::IO_Core::Stream_Connection::AudioConverter_Deleter>::reset[abi:ne200100](this + 43, 0);
  v2 = this[42];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[35];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 264) == 1)
  {
    v4 = this[32];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v5 = this[27];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = this[25];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = this[18];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = this[13];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::pair<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>::~pair(uint64_t a1)
{
  AMCP::IO_Core::Stream_Connection::~Stream_Connection((a1 + 40));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

OpaqueAudioConverter *std::unique_ptr<OpaqueAudioConverter,AMCP::IO_Core::Stream_Connection::AudioConverter_Deleter>::reset[abi:ne200100](OpaqueAudioConverter **a1, OpaqueAudioConverter *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    return AudioConverterDispose(result);
  }

  return result;
}

__n128 AMCP::IO_Core::Stream_Connection::Stream_Connection(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v3 = *(a2 + 3);
  *(a1 + 32) = *(a2 + 8);
  *(a1 + 24) = v3;
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  v5 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v5;
  *(a1 + 96) = a2[6];
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  v6 = a2[7];
  *(a1 + 128) = *(a2 + 16);
  *(a1 + 112) = v6;
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 17) = 0;
  *(a2 + 18) = 0;
  v7 = *(a2 + 152);
  v8 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 23);
  *(a1 + 168) = v8;
  *(a1 + 152) = v7;
  *(a1 + 192) = a2[12];
  *(a2 + 24) = 0;
  *(a2 + 25) = 0;
  *(a1 + 208) = a2[13];
  *(a2 + 26) = 0;
  *(a2 + 27) = 0;
  *(a1 + 224) = 0;
  *(a1 + 264) = 0;
  if (*(a2 + 264) == 1)
  {
    v9 = a2[14];
    *(a1 + 240) = *(a2 + 30);
    *(a1 + 224) = v9;
    *(a1 + 248) = *(a2 + 248);
    *(a2 + 31) = 0;
    *(a2 + 32) = 0;
    *(a1 + 264) = 1;
  }

  *(a1 + 272) = a2[17];
  *(a2 + 34) = 0;
  *(a2 + 35) = 0;
  result = a2[18];
  v11 = a2[19];
  *(a1 + 320) = *(a2 + 40);
  *(a1 + 288) = result;
  *(a1 + 304) = v11;
  v12 = *(a2 + 42);
  *(a1 + 328) = *(a2 + 41);
  *(a1 + 336) = v12;
  *(a2 + 41) = 0;
  *(a2 + 42) = 0;
  v13 = *(a2 + 43);
  *(a2 + 43) = 0;
  *(a1 + 344) = v13;
  return result;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Terminal_Identifier,AMCP::IO_Core::Stream_Connection>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<AMCP::Terminal_Identifier const,AMCP::IO_Core::Stream_Connection>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<AMCP::Terminal_Identifier const,AMCP::IO_Core::Stream_Connection>,0>(uint64_t a1)
{
  AMCP::IO_Core::Stream_Connection::~Stream_Connection((a1 + 40));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::vector<AMCP::Node_Description>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    std::allocator<AMCP::Node_Description>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Terminal_Description>,AMCP::Terminal_Description*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v17 = a4;
  v18 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  if (a2 == a3)
  {
    v16 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = 0;
      v8 = *v6;
      v9 = v6[1];
      *(a4 + 32) = *(v6 + 4);
      *a4 = v8;
      *(a4 + 16) = v9;
      do
      {
        v10 = (a4 + v7);
        v11 = (v6 + v7);
        v10[5] = 0;
        v10[6] = 0;
        v10[7] = 0;
        *(v10 + 5) = *(v6 + v7 + 40);
        v10[7] = *(v6 + v7 + 56);
        v11[5] = 0;
        v11[6] = 0;
        v11[7] = 0;
        v7 += 24;
      }

      while (v7 != 48);
      v12 = *(v6 + 11);
      *(a4 + 96) = *(v6 + 96);
      *(a4 + 88) = v12;
      v6 = (v6 + 104);
      a4 = v18 + 104;
      v18 += 104;
    }

    while (v6 != a3);
    v16 = 1;
    do
    {
      for (i = 64; i != 16; i -= 24)
      {
        v19 = (v5 + i);
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v19);
      }

      v5 = (v5 + 104);
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AMCP::Terminal_Description>,AMCP::Terminal_Description*>>::~__exception_guard_exceptions[abi:ne200100](v15);
}

uint64_t std::__split_buffer<AMCP::Terminal_Description>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 104;
    v4 = (i - 40);
    v5 = -48;
    do
    {
      v7 = v4;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
      v4 -= 3;
      v5 += 24;
    }

    while (v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void HALS_IOUARegistrar::~HALS_IOUARegistrar(HALS_IOUARegistrar *this)
{
  HALS_IOUARegistrar::~HALS_IOUARegistrar(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F596BBD0;
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 46));
  std::unique_ptr<applesauce::iokit::io_service_factory>::reset[abi:ne200100](this + 44, 0);
  std::unique_ptr<applesauce::iokit::io_service_factory>::reset[abi:ne200100](this + 43, 0);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 8));
}

uint64_t std::__function::__func<HALS_IOUARegistrar::Initialize(void)::$_1,std::allocator<HALS_IOUARegistrar::Initialize(void)::$_1>,void ()(applesauce::iokit::io_object_holder)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN18HALS_IOUARegistrar10InitializeEvE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_IOUARegistrar::Initialize(void)::$_1,std::allocator<HALS_IOUARegistrar::Initialize(void)::$_1>,void ()(applesauce::iokit::io_object_holder)>::operator()(AMCP::Log::AMCP_Scope_Registry *a1, io_object_t *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  *a2 = 0;
  v3 = *(a1 + 1);
  if (v2)
  {
    v4 = IOObjectRetain(v2);
    if (v4)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      v31 = std::system_category();
      MEMORY[0x1E12C10C0](exception, v4, v31, "Error on Retain");
      __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }

    v5 = *(v3 + 360);
    v35 = v2;
    a1 = IOObjectRetain(v2);
    v6 = a1;
    if (a1)
    {
      v32 = __cxa_allocate_exception(0x20uLL);
      v33 = std::system_category();
      MEMORY[0x1E12C10C0](v32, v6, v33, "Error on Retain");
      __cxa_throw(v32, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }

    v7 = (v3 + 360);
    v8 = v2;
  }

  else
  {
    v8 = 0;
    v7 = (v3 + 360);
    v5 = *(v3 + 360);
    v35 = 0;
  }

  v9 = (v3 + 368);
  if (v5 != (v3 + 368))
  {
    while (1)
    {
      v10 = v5[4];
      if (v10)
      {
        break;
      }

LABEL_23:
      v16 = v5[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v5[2];
          v14 = *v17 == v5;
          v5 = v17;
        }

        while (!v14);
      }

      v5 = v17;
      if (v17 == v9)
      {
        v5 = v9;
        goto LABEL_30;
      }
    }

    v11 = *(v10 + 736);
    v12 = *(v10 + 744);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = *v11;
    if (*v11)
    {
      a1 = IOObjectRetain(*v11);
      if (a1)
      {
        v27 = a1;
        v28 = __cxa_allocate_exception(0x20uLL);
        v29 = std::system_category();
        MEMORY[0x1E12C10C0](v28, v27, v29, "Error on Retain");
        __cxa_throw(v28, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
      }
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (v13)
    {
      v14 = v2 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      v15 = v2 == 0;
      if (!v13)
      {
        goto LABEL_22;
      }

      v15 = 0;
    }

    else
    {
      v15 = IOObjectIsEqualTo(v13, v8) != 0;
    }

    a1 = IOObjectRelease(v13);
LABEL_22:
    if (v15)
    {
      goto LABEL_30;
    }

    goto LABEL_23;
  }

LABEL_30:
  if (v2)
  {
    a1 = IOObjectRelease(v8);
  }

  if (v5 == v9)
  {
    v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v22 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      *block = 136315394;
      *&block[4] = "HALS_IOUARegistrar.cpp";
      *&block[12] = 1024;
      *&block[14] = 128;
      _os_log_debug_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_DEBUG, "%32s:%-5d Unknown io service termination", block, 0x12u);
      if (!v2)
      {
        goto LABEL_47;
      }
    }

    else if (!v2)
    {
      goto LABEL_47;
    }

LABEL_46:
    IOObjectRelease(v2);
    IOObjectRelease(v2);
    goto LABEL_47;
  }

  v18 = v5[4];
  v34[0] = 0;
  v34[1] = 0;
  HALS_System::GetInstance(block, 0, v34);
  HALS_System::DeviceManagerDestroyed(*block, v18);
  if (*&block[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&block[8]);
  }

  v19 = (*(*v18 + 72))(v18);
  *block = MEMORY[0x1E69E9820];
  *&block[8] = 0x40000000;
  *&block[16] = ___ZN15HALS_IOUADriver25RemoveAllDevicesAndNotifyEv_block_invoke;
  v37 = &__block_descriptor_tmp_3757;
  v38 = v18;
  v20 = atomic_load((v19 + 32));
  if (v20)
  {
    atomic_store(1u, (v19 + 33));
  }

  dispatch_sync(*v19, block);
  HALS_ObjectMap::ReleaseObject(v18, v21);
  std::__tree<HALS_IOUADriver *>::__remove_node_pointer(v7, v5);
  operator delete(v5);
  if (v2)
  {
    goto LABEL_46;
  }

LABEL_47:
  v26 = *MEMORY[0x1E69E9840];
}

void sub_1DE3C8530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, io_object_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, uint64_t a16)
{
  if (a2)
  {
    __cxa_free_exception(v16);
    applesauce::iokit::io_object_holder::~io_object_holder(&a10);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    if (!a9)
    {
      JUMPOUT(0x1DE3C83B8);
    }

    JUMPOUT(0x1DE3C83B0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<HALS_IOUADriver *>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  return std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
}

io_object_t *HALS_IOUARegistrar::_HandleServiceTerminated(applesauce::iokit::io_object_holder)::$_0::~$_0(io_object_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    IOObjectRelease(v2);
  }

  return a1;
}

uint64_t std::__function::__func<HALS_IOUARegistrar::Initialize(void)::$_1,std::allocator<HALS_IOUARegistrar::Initialize(void)::$_1>,void ()(applesauce::iokit::io_object_holder)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F596BC80;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<HALS_IOUARegistrar::Initialize(void)::$_0,std::allocator<HALS_IOUARegistrar::Initialize(void)::$_0>,void ()(applesauce::iokit::io_object_holder)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN18HALS_IOUARegistrar10InitializeEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_IOUARegistrar::Initialize(void)::$_0,std::allocator<HALS_IOUARegistrar::Initialize(void)::$_0>,void ()(applesauce::iokit::io_object_holder)>::operator()(uint64_t a1, io_object_t *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  *a2 = 0;
  v3 = *(a1 + 8);
  if (v2)
  {
    v4 = IOObjectRetain(v2);
    if (v4)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      v6 = std::system_category();
      MEMORY[0x1E12C10C0](exception, v4, v6, "Error on Retain");
      __cxa_throw(exception, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
    }
  }

  operator new();
}

void sub_1DE3C9130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, io_object_t a12, io_object_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, io_object_t a29)
{
  if (a2)
  {
    __cxa_free_exception(v32);
    applesauce::iokit::io_object_holder::~io_object_holder(&a29);
    std::__shared_weak_count::~__shared_weak_count(v31);
    operator delete(v34);
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((v29 + 50));
    v36 = v29[49];
    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    HALS_IOUAObject::~HALS_IOUAObject(v30, v35);
    HALS_DeviceManager::~HALS_DeviceManager(v29);
    applesauce::iokit::io_object_holder::~io_object_holder(&a13);
    if (a17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a17);
    }

    MEMORY[0x1E12C1730](v29, 0x10E3C4037FBDF48);
    applesauce::iokit::io_object_holder::~io_object_holder(&a12);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    if (!a11)
    {
      JUMPOUT(0x1DE3C9010);
    }

    JUMPOUT(0x1DE3C9008);
  }

  _Unwind_Resume(exception_object);
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<HALS_IOUARegistrar::_HandleServiceMatch(applesauce::iokit::io_object_holder)::$_0,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(uint64_t a1)
{
  if (MEMORY[0x1E12C16E0]() > *a1)
  {
    v2 = *(a1 + 16);
    (*(***(a1 + 8) + 8))(**(a1 + 8));
    v3 = *(v2 + 368);
    if (v3)
    {
      v4 = **(a1 + 8);
      v5 = (v2 + 368);
      do
      {
        v6 = v3[4];
        v7 = v6 >= v4;
        v8 = v6 < v4;
        if (v7)
        {
          v5 = v3;
        }

        v3 = v3[v8];
      }

      while (v3);
      if (v5 != (v2 + 368) && v4 >= v5[4])
      {
        std::__tree<HALS_IOUADriver *>::__remove_node_pointer((v2 + 360), v5);
        operator delete(v5);
      }
    }
  }

  return a1;
}
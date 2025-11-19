void sub_223BC2448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (__p)
  {
    operator delete(__p);
  }

  *(v47 - 208) = &a34;
  std::vector<adm::graph::TerminalDescription>::__destroy_vector::operator()[abi:ne200100]((v47 - 208));
  adm::graph::NodeDescription::~NodeDescription(&a24);
  if (v46 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

void adm::graph::GraphBuilder::createVPAggNodeDesc(adm::graph::GraphBuilder *this, const adm::ConfigurationChangeRequest *a2, uint64_t a3)
{
  v68 = *MEMORY[0x277D85DE8];
  adm::config_policy::getActiveStreamInfo(&__p, a3);
  v6 = __p;
  v7 = v55 - __p;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v55 - __p) >> 3);
  v9 = v8 - 1;
  if (v8 > 1)
  {
    v11 = *(*(__p + 1) + 64);
    v39 = *__p;
    v40 = *(v55 - 24);
    if (*(a2 + 287) >= 0)
    {
      v12 = *(a2 + 287);
    }

    else
    {
      v12 = *(a2 + 34);
    }

    std::string::basic_string[abi:ne200100](&v42, v12 + 1);
    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v42;
    }

    else
    {
      v13 = v42.__r_.__value_.__r.__words[0];
    }

    if (v12)
    {
      if (*(a2 + 287) >= 0)
      {
        v14 = a2 + 264;
      }

      else
      {
        v14 = *(a2 + 33);
      }

      memmove(v13, v14, v12);
    }

    *(&v13->__r_.__value_.__l.__data_ + v12) = 95;
    v15 = *(a2 + 311);
    if (v15 >= 0)
    {
      v16 = a2 + 288;
    }

    else
    {
      v16 = *(a2 + 36);
    }

    if (v15 >= 0)
    {
      v17 = *(a2 + 311);
    }

    else
    {
      v17 = *(a2 + 37);
    }

    v18 = std::string::append(&v42, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v43, "_", 1uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v67.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v67.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v49;
    }

    else
    {
      v22 = v49.__r_.__value_.__r.__words[0];
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v49.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v49.__r_.__value_.__l.__size_;
    }

    v24 = std::string::append(&v67, v22, size);
    v25 = *&v24->__r_.__value_.__l.__data_;
    v56.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v56.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v26 = std::string::append(&v56, "_VoiceProcessingUL", 0x12uLL);
    v27 = v26->__r_.__value_.__l.__size_;
    __s = v26->__r_.__value_.__r.__words[0];
    v53[0] = v26->__r_.__value_.__r.__words[2];
    *(v53 + 3) = *(&v26->__r_.__value_.__r.__words[2] + 3);
    v28 = SHIBYTE(v26->__r_.__value_.__r.__words[2]);
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((v28 & 0x80000000) == 0)
    {
LABEL_38:
      v49.__r_.__value_.__r.__words[0] = __s;
      v49.__r_.__value_.__l.__size_ = v27;
      LODWORD(v49.__r_.__value_.__r.__words[2]) = v53[0];
      *(&v49.__r_.__value_.__r.__words[2] + 3) = *(v53 + 3);
      *(&v49.__r_.__value_.__s + 23) = v28;
      goto LABEL_41;
    }

    std::string::__init_copy_ctor_external(&v49, __s, v27);
LABEL_41:
    if (*(a3 + 164))
    {
      v29 = *(a3 + 160);
    }

    else
    {
      v29 = 480;
    }

    v50 = 6;
    v51 = v29;
    std::string::basic_string[abi:ne200100]<0>(&v52, "");
    v47 = 0uLL;
    v48 = 0;
    v30 = v6[1] + 64;
    if (*(a3 + 72))
    {
      v30 = a3 + 32;
    }

    v31 = *(v30 + 16);
    v44 = *v30;
    v45 = v31;
    v46 = *(v30 + 32);
    if (v28 < 0)
    {
      std::string::__init_copy_ctor_external(&v56, __s, v27);
    }

    else
    {
      v56.__r_.__value_.__r.__words[0] = __s;
      v56.__r_.__value_.__l.__size_ = v27;
      LODWORD(v56.__r_.__value_.__r.__words[2]) = v53[0];
      *(&v56.__r_.__value_.__r.__words[2] + 3) = *(v53 + 3);
      *(&v56.__r_.__value_.__s + 23) = v28;
    }

    LODWORD(v57) = 1;
    *v58 = v44;
    v59 = v45;
    v60 = v46;
    v61 = 0;
    *v62 = 0x100000000;
    *&v62[8] = 0;
    LOBYTE(v63) = 0;
    v65 = 0;
    LOBYTE(v66) = 0;
    std::vector<adm::graph::TerminalDescription>::push_back[abi:ne200100](&v47, &v56);
    if (v65 == 1 && v64 < 0)
    {
      operator delete(v63);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (v7 != 24)
    {
      v32 = 0;
      v33 = 0;
      if (v9 <= 1)
      {
        v9 = 1;
      }

      v34 = v6 + 1;
      do
      {
        v35 = *v34;
        v36 = *(*v34 + 92);
        if (v28 < 0)
        {
          std::string::__init_copy_ctor_external(&v56, __s, v27);
        }

        else
        {
          v56.__r_.__value_.__r.__words[0] = __s;
          v56.__r_.__value_.__l.__size_ = v27;
          LODWORD(v56.__r_.__value_.__r.__words[2]) = v53[0];
          *(&v56.__r_.__value_.__r.__words[2] + 3) = *(v53 + 3);
          *(&v56.__r_.__value_.__s + 23) = v28;
        }

        LODWORD(v57) = 0;
        v37 = *(v35 + 64);
        v38 = *(v35 + 80);
        v60 = *(v35 + 96);
        *v58 = v37;
        v59 = v38;
        v61 = 0;
        *v62 = v33;
        *&v62[4] = 1;
        LOBYTE(v63) = 0;
        v65 = 0;
        LOBYTE(v66) = 0;
        std::vector<adm::graph::TerminalDescription>::push_back[abi:ne200100](&v47, &v56);
        if (v65 == 1 && v64 < 0)
        {
          operator delete(v63);
        }

        if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v56.__r_.__value_.__l.__data_);
        }

        v32 += v36;
        ++v33;
        v34 += 3;
      }

      while (v9 != v33);
    }

    operator new();
  }

  *this = 1969448551;
  *(this + 392) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_223BC3B24(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void adm::graph::GraphBuilder::createDSPGraphAggNodeDesc(adm::graph::GraphBuilder *this, const adm::ConfigurationChangeRequest *a2, uint64_t a3)
{
  v145 = *MEMORY[0x277D85DE8];
  if (*(a2 + 287) >= 0)
  {
    v5 = *(a2 + 287);
  }

  else
  {
    v5 = *(a2 + 34);
  }

  std::string::basic_string[abi:ne200100](&v100, v5 + 1);
  if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v100;
  }

  else
  {
    v6 = v100.__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    if (*(a2 + 287) >= 0)
    {
      v7 = a2 + 264;
    }

    else
    {
      v7 = *(a2 + 33);
    }

    memmove(v6, v7, v5);
  }

  *(&v6->__r_.__value_.__l.__data_ + v5) = 95;
  v8 = *(a2 + 311);
  if (v8 >= 0)
  {
    v9 = a2 + 288;
  }

  else
  {
    v9 = *(a2 + 36);
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 311);
  }

  else
  {
    v10 = *(a2 + 37);
  }

  v11 = std::string::append(&v100, v9, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  *v132 = *(&v11->__r_.__value_.__l + 2);
  v131 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v131, "_", 1uLL);
  v14 = *&v13->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v17 = std::string::append(&__str, p_p, size);
  v18 = v17->__r_.__value_.__l.__size_;
  __s = v17->__r_.__value_.__r.__words[0];
  v105[0] = v17->__r_.__value_.__r.__words[2];
  *(v105 + 3) = *(&v17->__r_.__value_.__r.__words[2] + 3);
  v19 = SHIBYTE(v17->__r_.__value_.__r.__words[2]);
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if ((v132[7] & 0x80000000) != 0)
  {
    operator delete(v131);
  }

  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }
  }

  else if ((v19 & 0x80000000) == 0)
  {
LABEL_32:
    v100.__r_.__value_.__r.__words[0] = __s;
    v100.__r_.__value_.__l.__size_ = v18;
    LODWORD(v100.__r_.__value_.__r.__words[2]) = v105[0];
    *(&v100.__r_.__value_.__r.__words[2] + 3) = *(v105 + 3);
    *(&v100.__r_.__value_.__s + 23) = v19;
    goto LABEL_35;
  }

  std::string::__init_copy_ctor_external(&v100, __s, v18);
LABEL_35:
  if (*(a3 + 164))
  {
    v20 = *(a3 + 160);
  }

  else
  {
    v20 = 1024;
  }

  LODWORD(v101) = 1;
  HIDWORD(v101) = v20;
  v89 = v19;
  std::string::basic_string[abi:ne200100]<0>(&v102, "");
  v88 = a2;
  memset(&__p, 0, sizeof(__p));
  adm::config_policy::getActiveStreamInfo(&v98, a3);
  v21 = v99;
  if (v98 != v99)
  {
    v22 = 0;
    v23 = 0;
    for (i = v98; i != v21; i += 3)
    {
      std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__str, i[1] + 32, "general");
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        if (__str.__r_.__value_.__l.__size_ == 7)
        {
          v27 = *__str.__r_.__value_.__l.__data_ != 1701733735 || *(__str.__r_.__value_.__r.__words[0] + 3) != 1818325605;
          operator delete(__str.__r_.__value_.__l.__data_);
          if (!v27)
          {
LABEL_56:
            v131 = 0u;
            memset(v132, 0, 24);
            v28 = i[1] + 64;
            if (*(i + 16))
            {
              v29 = *(i[1] + 80);
              v131 = *v28;
              *v132 = v29;
              *&v132[16] = *(v28 + 32);
              if (*(a3 + 72))
              {
                v28 = a3 + 32;
              }
            }

            else
            {
              v33 = a3 + 80;
              if (!*(a3 + 120))
              {
                v33 = i[1] + 64;
              }

              v34 = *(v33 + 16);
              v131 = *v33;
              *v132 = v34;
              *&v132[16] = *(v33 + 32);
            }

            v35 = *(v28 + 16);
            *&v132[24] = *v28;
            *&v132[40] = v35;
            *&v133 = *(v28 + 32);
            if (v89 < 0)
            {
              std::string::__init_copy_ctor_external(&__str, __s, v18);
            }

            else
            {
              __str.__r_.__value_.__r.__words[0] = __s;
              __str.__r_.__value_.__l.__size_ = v18;
              LODWORD(__str.__r_.__value_.__r.__words[2]) = v105[0];
              *(&__str.__r_.__value_.__r.__words[2] + 3) = *(v105 + 3);
              *(&__str.__r_.__value_.__s + 23) = v89;
            }

            LODWORD(v108) = 1;
            *v109 = *&v132[24];
            *v110 = *&v132[40];
            *&v110[16] = v133;
            *&v110[24] = 0;
            LODWORD(v111) = v23;
            *(&v111 + 4) = 1;
            LOBYTE(v112) = 0;
            LOBYTE(v114) = 0;
            LOBYTE(v115) = 0;
            std::vector<adm::graph::TerminalDescription>::push_back[abi:ne200100](&__p, &__str);
            if (v114 == 1 && SHIBYTE(v113) < 0)
            {
              operator delete(v112);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
              if (v89 < 0)
              {
                goto LABEL_84;
              }

LABEL_82:
              __str.__r_.__value_.__r.__words[0] = __s;
              __str.__r_.__value_.__l.__size_ = v18;
              LODWORD(__str.__r_.__value_.__r.__words[2]) = v105[0];
              *(&__str.__r_.__value_.__r.__words[2] + 3) = *(v105 + 3);
              *(&__str.__r_.__value_.__s + 23) = v89;
            }

            else
            {
              if ((v89 & 0x80000000) == 0)
              {
                goto LABEL_82;
              }

LABEL_84:
              std::string::__init_copy_ctor_external(&__str, __s, v18);
            }

            LODWORD(v108) = 0;
            *v109 = v131;
            *v110 = *v132;
            *&v110[16] = *&v132[16];
            *&v110[24] = 0;
            LODWORD(v111) = v22;
            *(&v111 + 4) = 1;
            LOBYTE(v112) = 0;
            LOBYTE(v114) = 0;
            LOBYTE(v115) = 0;
            std::vector<adm::graph::TerminalDescription>::push_back[abi:ne200100](&__p, &__str);
            if (v114 == 1 && SHIBYTE(v113) < 0)
            {
              operator delete(v112);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            ++v23;
            goto LABEL_91;
          }
        }

        else
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }

      else if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) == 7 && LODWORD(__str.__r_.__value_.__l.__data_) == 1701733735 && *(__str.__r_.__value_.__r.__words + 3) == 1818325605)
      {
        goto LABEL_56;
      }

      if (!std::operator==[abi:ne200100]<std::string,char [10]>(i[1] + 32, "reference"))
      {
        continue;
      }

      if (v89 < 0)
      {
        std::string::__init_copy_ctor_external(&__str, __s, v18);
      }

      else
      {
        __str.__r_.__value_.__r.__words[0] = __s;
        __str.__r_.__value_.__l.__size_ = v18;
        LODWORD(__str.__r_.__value_.__r.__words[2]) = v105[0];
        *(&__str.__r_.__value_.__r.__words[2] + 3) = *(v105 + 3);
        *(&__str.__r_.__value_.__s + 23) = v89;
      }

      LODWORD(v108) = 0;
      v30 = i[1];
      v32 = *(v30 + 64);
      v31 = *(v30 + 80);
      *&v110[16] = *(v30 + 96);
      *v109 = v32;
      *v110 = v31;
      LODWORD(v131) = 1;
      adm::graph::SemanticSet::SemanticSet(&v110[24], &v131, 1);
      LODWORD(v111) = v22;
      *(&v111 + 4) = 1;
      LOBYTE(v112) = 0;
      LOBYTE(v114) = 0;
      LOBYTE(v115) = 0;
      std::vector<adm::graph::TerminalDescription>::push_back[abi:ne200100](&__p, &__str);
      if (v114 == 1 && SHIBYTE(v113) < 0)
      {
        operator delete(v112);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

LABEL_91:
      ++v22;
    }
  }

  v36 = v88;
  if (std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::find<std::string>(v88 + 24, &v97))
  {
LABEL_94:
    v95 = 0uLL;
    v96 = 0;
    std::string::basic_string[abi:ne200100]<0>(&__str, "spatial playback");
    v37 = std::__tree<std::string>::find<std::string>(a3 + 8, &__str);
    v38 = a3 + 16;
    if (a3 + 16 == v37)
    {
      v44 = v37;
      std::string::basic_string[abi:ne200100]<0>(&v131, "spatial channel virtualization only");
      v39 = v44 != std::__tree<std::string>::find<std::string>(a3 + 8, &v131);
      if ((v132[7] & 0x80000000) != 0)
      {
        operator delete(v131);
      }
    }

    else
    {
      v39 = 1;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
      if (!v39)
      {
        goto LABEL_109;
      }
    }

    else if (!v39)
    {
LABEL_109:
      std::string::basic_string[abi:ne200100]<0>(&__str, "content creation recording");
      v45 = std::__tree<std::string>::find<std::string>(a3 + 8, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (v38 != v45 && *(a3 + 240) == 1 && *(a3 + 232) == 1 && *(a3 + 224))
      {
        operator new();
      }

      v46 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::find<std::string>(v88 + 24, &v97);
      if (!v46)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v47 = v46;
      v92 = 0;
      v93 = 0;
      v94 = 0;
      std::string::basic_string[abi:ne200100]<0>(&__str, "spatial playback");
      if (v38 == std::__tree<std::string>::find<std::string>(a3 + 8, &__str))
      {
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

LABEL_128:
        std::string::basic_string[abi:ne200100]<0>(&__str, "spatial channel virtualization only");
        v51 = std::__tree<std::string>::find<std::string>(a3 + 8, &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (v38 != v51)
        {
          std::string::basic_string[abi:ne200100]<0>(&__str, "Channel Virtualization");
          std::vector<std::string>::push_back[abi:ne200100](&v92, &__str);
LABEL_132:
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v73 = v92;
          v74 = v93;
          if (v92 != v93)
          {
            while (1)
            {
              if (*(v73 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&v91, *v73, *(v73 + 1));
              }

              else
              {
                v75 = *v73;
                v91.__r_.__value_.__r.__words[2] = *(v73 + 2);
                *&v91.__r_.__value_.__l.__data_ = v75;
              }

              if (*(v36 + 128) == 1)
              {
                if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v76 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v76 = v91.__r_.__value_.__l.__size_;
                }

                std::string::basic_string[abi:ne200100](&__str, v76 + 8);
                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  p_str = &__str;
                }

                else
                {
                  p_str = __str.__r_.__value_.__r.__words[0];
                }

                if (v76)
                {
                  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v78 = &v91;
                  }

                  else
                  {
                    v78 = v91.__r_.__value_.__r.__words[0];
                  }

                  memmove(p_str, v78, v76);
                }

                strcpy(p_str + v76, " (Intel)");
                if (std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::find<std::string>(v47 + 5, &__str))
                {
                  std::string::operator=(&v91, &__str);
                }

                v36 = v88;
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }
              }

              if (_os_feature_enabled_impl())
              {
                if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v79 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v79 = v91.__r_.__value_.__l.__size_;
                }

                std::string::basic_string[abi:ne200100](&__str, v79 + 10);
                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v80 = &__str;
                }

                else
                {
                  v80 = __str.__r_.__value_.__r.__words[0];
                }

                if (v79)
                {
                  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v81 = &v91;
                  }

                  else
                  {
                    v81 = v91.__r_.__value_.__r.__words[0];
                  }

                  memmove(v80, v81, v79);
                }

                strcpy(v80 + v79, " (NNVADV2)");
                if (std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::find<std::string>(v47 + 5, &__str))
                {
                  std::string::operator=(&v91, &__str);
                }

                v36 = v88;
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }
              }

              v82 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::find<std::string>(v47 + 5, &v91);
              if (v82)
              {
                break;
              }

              if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v91.__r_.__value_.__l.__data_);
              }

              v73 = (v73 + 24);
              if (v73 == v74)
              {
                goto LABEL_238;
              }
            }

            adm::DSPGraphBasicConfiguration::DSPGraphBasicConfiguration(&v131, (v82 + 5));
            *&v143[8] = *(&v95 + 1);
            v83 = v95;
            *&v143[16] = v96;
            v96 = 0;
            v95 = 0uLL;
            v144[0] = 0;
            v144[4] = 0;
            v144[8] = 0;
            v144[12] = 0;
            *&__str.__r_.__value_.__l.__data_ = *&v100.__r_.__value_.__l.__data_;
            memset(&v100, 0, sizeof(v100));
            __str.__r_.__value_.__r.__words[2] = v100.__r_.__value_.__r.__words[2];
            v108 = v101;
            *v109 = v102;
            v84 = v103;
            v102 = 0uLL;
            v103 = 0;
            *&v110[8] = __p;
            *v110 = v84;
            memset(&__p, 0, sizeof(__p));
            v111 = v131;
            v131 = 0uLL;
            v113 = *&v132[8];
            v112 = *v132;
            v114 = *&v132[24];
            memset(v132, 0, sizeof(v132));
            v115 = *&v132[32];
            v116 = *&v132[48];
            v118 = v134;
            v117 = v133;
            v133 = 0uLL;
            v134 = 0;
            v120 = v136;
            v119 = *v135;
            v135[1] = 0;
            v135[0] = 0;
            v121 = v137;
            v122 = v138;
            v136 = 0;
            v138 = 0uLL;
            v85 = v139;
            v139 = 0;
            v123 = v85;
            v124 = 0;
            v125 = 0;
            v126 = 0;
            v141 = 0;
            v140 = 0;
            v142 = 0;
            v127 = v83;
            v128 = *&v143[8];
            memset(v143, 0, sizeof(v143));
            *(v129 + 5) = *&v144[5];
            v129[0] = *v144;
            v130 = 0;
            std::expected<adm::graph::GraphDescription,std::error_code>::expected[abi:ne200100]<adm::graph::GraphDescription>(this, &__str);
            std::__variant_detail::__dtor<std::__variant_detail::__traits<adm::graph::DSPGraphConfiguration,adm::vp::Configuration,adm::graph::ExclaveNodeConfiguration>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v111);
            v106 = &v110[8];
            std::vector<adm::graph::TerminalDescription>::__destroy_vector::operator()[abi:ne200100](&v106);
            if ((v110[7] & 0x80000000) != 0)
            {
              operator delete(v109[0]);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            __str.__r_.__value_.__r.__words[0] = v143;
            std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__destroy_vector::operator()[abi:ne200100](&__str);
            if (v140)
            {
              v141 = v140;
              operator delete(v140);
            }

            __str.__r_.__value_.__r.__words[0] = &v138;
            std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__destroy_vector::operator()[abi:ne200100](&__str);
            if (SHIBYTE(v136) < 0)
            {
              operator delete(v135[0]);
            }

            v55 = v89;
            if (SHIBYTE(v134) < 0)
            {
              operator delete(v133);
            }

            __str.__r_.__value_.__r.__words[0] = &v132[32];
            std::vector<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::__destroy_vector::operator()[abi:ne200100](&__str);
            __str.__r_.__value_.__r.__words[0] = &v132[8];
            std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&__str);
            __str.__r_.__value_.__r.__words[0] = &v131;
            std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&__str);
            if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v91.__r_.__value_.__l.__data_);
            }

            __str.__r_.__value_.__r.__words[0] = &v92;
            std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&__str);
            goto LABEL_253;
          }

LABEL_238:
          __str.__r_.__value_.__r.__words[0] = &v92;
          std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&__str);
LABEL_239:
          *this = 1969448551;
          *(this + 392) = 0;
          v55 = v89;
LABEL_253:
          __str.__r_.__value_.__r.__words[0] = &v95;
          std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__destroy_vector::operator()[abi:ne200100](&__str);
          goto LABEL_254;
        }

        std::string::basic_string[abi:ne200100]<0>(&__str, "voice activity detection");
        v52 = std::__tree<std::string>::find<std::string>(a3 + 8, &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (v38 != v52)
        {
          std::string::basic_string[abi:ne200100]<0>(&v131, "Default");
          if (*(a3 + 176) - *(a3 + 168) == 24)
          {
            if ((v132[7] & 0x80000000) != 0)
            {
              *(&v131 + 1) = 5;
              v53 = v131;
            }

            else
            {
              v132[7] = 5;
              v53 = &v131;
            }

            strcpy(v53, "No EC");
          }

          else
          {
            DeviceDescription = adm::config_policy::getDeviceDescription(a3, 1);
            v66 = adm::config_policy::getDeviceDescription(a3, 0);
            {
              if ((v132[7] & 0x80000000) != 0)
              {
                *(&v131 + 1) = 15;
                v68 = v131;
              }

              else
              {
                v132[7] = 15;
                v68 = &v131;
              }

              strcpy(v68, "High HW Latency");
            }

            adm_log_object = get_adm_log_object();
            if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
            {
              v72 = &v131;
              if (v132[7] < 0)
              {
                v72 = v131;
              }

              LODWORD(__str.__r_.__value_.__l.__data_) = 136315138;
              *(__str.__r_.__value_.__r.__words + 4) = v72;
              _os_log_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_DEFAULT, "DSP selection is: %s", &__str, 0xCu);
            }
          }

          v109[0] = &v92;
          operator new();
        }

        std::string::basic_string[abi:ne200100]<0>(&__str, "content creation recording");
        if (v38 == std::__tree<std::string>::find<std::string>(a3 + 8, &__str))
        {
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          isAirPodsMicOffloadUseCase = adm::config_policy::isAirPodsMicOffloadUseCase(a3 + 8);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          if (!isAirPodsMicOffloadUseCase)
          {
            if (*v88 == 3)
            {
              adm::getMacMicDriverConfigurationKey(&__str);
              v63 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              v64 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v63 = __str.__r_.__value_.__l.__size_;
              }

              if (v63)
              {
                std::vector<std::string>::emplace_back<std::string const&>(&v92, &__str);
                v64 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              }

              if ((v64 & 0x80) == 0)
              {
                goto LABEL_287;
              }

LABEL_168:
              operator delete(__str.__r_.__value_.__l.__data_);
LABEL_287:
              std::string::basic_string[abi:ne200100]<0>(&__str, "Default");
              std::vector<std::string>::push_back[abi:ne200100](&v92, &__str);
              goto LABEL_132;
            }

            if (*(a3 + 240) != 1 || *(a3 + 232) != 1)
            {
              goto LABEL_287;
            }

            v70 = *(a3 + 200);
            if (v70 <= 1835230833)
            {
              switch(v70)
              {
                case 1835229798:
                  std::string::basic_string[abi:ne200100]<0>(&__str, "beamformed_mic_general");
                  std::vector<std::string>::push_back[abi:ne200100](&v92, &__str);
                  goto LABEL_286;
                case 1835229803:
                  std::string::basic_string[abi:ne200100]<0>(&__str, "back_mic_general");
                  std::vector<std::string>::push_back[abi:ne200100](&v92, &__str);
                  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__str.__r_.__value_.__l.__data_);
                  }

                  break;
                case 1835229812:
                  std::string::basic_string[abi:ne200100]<0>(&__str, "bottom_mic_general");
                  std::vector<std::string>::push_back[abi:ne200100](&v92, &__str);
                  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__str.__r_.__value_.__l.__data_);
                  }

                  break;
                default:
                  goto LABEL_287;
              }
            }

            else if (v70 > 1835233907)
            {
              if (v70 == 1835233908)
              {
                std::string::basic_string[abi:ne200100]<0>(&__str, "right_mic_general");
                std::vector<std::string>::push_back[abi:ne200100](&v92, &__str);
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }
              }

              else
              {
                if (v70 != 1835234416)
                {
                  goto LABEL_287;
                }

                std::string::basic_string[abi:ne200100]<0>(&__str, "top_mic_general");
                std::vector<std::string>::push_back[abi:ne200100](&v92, &__str);
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }
              }
            }

            else if (v70 == 1835230834)
            {
              std::string::basic_string[abi:ne200100]<0>(&__str, "front_mic_general");
              std::vector<std::string>::push_back[abi:ne200100](&v92, &__str);
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              if (v70 != 1835232358)
              {
                goto LABEL_287;
              }

              std::string::basic_string[abi:ne200100]<0>(&__str, "left_mic_general");
              std::vector<std::string>::push_back[abi:ne200100](&v92, &__str);
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }
            }

            std::string::basic_string[abi:ne200100]<0>(&__str, "omni_mic_general");
            std::vector<std::string>::push_back[abi:ne200100](&v92, &__str);
LABEL_286:
            if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_287;
            }

            goto LABEL_168;
          }
        }

        std::string::basic_string[abi:ne200100]<0>(&__str, "Default");
        std::vector<std::string>::push_back[abi:ne200100](&v92, &__str);
        goto LABEL_132;
      }

      v48 = *(a3 + 152);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
        if (!v48)
        {
          goto LABEL_128;
        }
      }

      else if (!*(a3 + 152))
      {
        goto LABEL_128;
      }

      v131 = 0uLL;
      *v132 = 0;
      if (**(a3 + 128) == 6619138)
      {
        BYTE8(v131) = 32;
        *&v131 = *"Stereo - ";
        v50 = 9;
      }

      else
      {
        v131 = *"Multi Channel - ";
        v50 = 16;
      }

      v132[7] = v50;
      v56 = adm::config_policy::getDeviceDescription(a3, 0);
      v57 = *(v56 + 16);
      if (v57 == 1651275109)
      {
        if (*(v56 + 19) == 1)
        {
          goto LABEL_154;
        }
      }

      else if (v57 == 1651274862)
      {
        v58 = *(v56 + 18);
        {
          v59 = "Built-in Speaker";
          v60 = 16;
LABEL_156:
          std::string::append(&v131, v59, v60);
          goto LABEL_157;
        }

        if (v58 != 1751412846)
        {
LABEL_157:
          v109[0] = &v92;
          operator new();
        }

LABEL_154:
        v59 = "Headphone";
        v60 = 9;
        goto LABEL_156;
      }

      v59 = "Default";
      v60 = 7;
      goto LABEL_156;
    }

    if (*(a3 + 152))
    {
      operator new();
    }

    v49 = get_adm_log_object();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__str.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_223B4A000, v49, OS_LOG_TYPE_ERROR, "Failed to create DSP node due to missing channel layout", &__str, 2u);
    }

    goto LABEL_239;
  }

  v40 = get_adm_log_object();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    v69 = &v97;
    if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v69 = v97.__r_.__value_.__r.__words[0];
    }

    LODWORD(__str.__r_.__value_.__l.__data_) = 136315138;
    *(__str.__r_.__value_.__r.__words + 4) = v69;
    _os_log_error_impl(&dword_223B4A000, v40, OS_LOG_TYPE_ERROR, "The IOContextSemantic %s is not found from the DSPG config of system config", &__str, 0xCu);
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "general");
  v41 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::find<std::string>(v88 + 24, &__str);
  v42 = v41;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if (v42)
    {
LABEL_99:
      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        v97.__r_.__value_.__l.__size_ = 7;
        v43 = v97.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&v97.__r_.__value_.__s + 23) = 7;
        v43 = &v97;
      }

      strcpy(v43, "general");
      v61 = get_adm_log_object();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__str.__r_.__value_.__l.__data_) = 136315138;
        *(__str.__r_.__value_.__r.__words + 4) = "general";
        _os_log_impl(&dword_223B4A000, v61, OS_LOG_TYPE_DEFAULT, "Fall back to DSP for IOContext Semantic %s", &__str, 0xCu);
      }

      goto LABEL_94;
    }
  }

  else if (v41)
  {
    goto LABEL_99;
  }

  v54 = get_adm_log_object();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
  {
    LODWORD(__str.__r_.__value_.__l.__data_) = 136315138;
    *(__str.__r_.__value_.__r.__words + 4) = "general";
    _os_log_error_impl(&dword_223B4A000, v54, OS_LOG_TYPE_ERROR, "The fallback IOContextSemantic %s is not found from the DSPG config of system config", &__str, 0xCu);
  }

  *this = 1969448551;
  *(this + 392) = 0;
  v55 = v89;
LABEL_254:
  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v97.__r_.__value_.__l.__data_);
  }

  if (v98)
  {
    operator delete(v98);
  }

  __str.__r_.__value_.__r.__words[0] = &__p;
  std::vector<adm::graph::TerminalDescription>::__destroy_vector::operator()[abi:ne200100](&__str);
  if (SHIBYTE(v103) < 0)
  {
    operator delete(v102);
  }

  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
    if ((v55 & 0x80000000) == 0)
    {
      goto LABEL_262;
    }

LABEL_264:
    operator delete(__s);
    goto LABEL_262;
  }

  if (v55 < 0)
  {
    goto LABEL_264;
  }

LABEL_262:
  v86 = *MEMORY[0x277D85DE8];
}

void sub_223BC54D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, void *a17, void *a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a54 < 0)
  {
    operator delete(__p);
  }

  STACK[0x2B0] = &a21;
  std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2B0]);
  STACK[0x2B0] = &a24;
  std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2B0]);
  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a33)
  {
    operator delete(a33);
  }

  STACK[0x2B0] = &a43;
  std::vector<adm::graph::TerminalDescription>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2B0]);
  adm::graph::NodeDescription::~NodeDescription(&a36);
  if (a16 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

std::string *anonymous namespace::flattenSemantics(std::string *this, void *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 != a2 + 1)
  {
    v4 = this;
    v5 = 0;
    do
    {
      if (v5)
      {
        std::string::append(v4, "_", 1uLL);
      }

      v6 = *(v3 + 55);
      if (v6 >= 0)
      {
        v7 = (v3 + 4);
      }

      else
      {
        v7 = v3[4];
      }

      if (v6 >= 0)
      {
        v8 = *(v3 + 55);
      }

      else
      {
        v8 = v3[5];
      }

      this = std::string::append(v4, v7, v8);
      v9 = v3[1];
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
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      ++v5;
      v3 = v10;
    }

    while (v10 != v2);
  }

  return this;
}

void sub_223BC5948(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<adm::graph::TerminalDescription>::push_back[abi:ne200100](uint64_t *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v13 = 0xF0F0F0F0F0F0F0F1 * ((v3 - *result) >> 3);
    v14 = v13 + 1;
    if (v13 + 1 > 0x1E1E1E1E1E1E1E1)
    {
      std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
    }

    v15 = 0xF0F0F0F0F0F0F0F1 * ((v4 - *result) >> 3);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0xF0F0F0F0F0F0F0)
    {
      v16 = 0x1E1E1E1E1E1E1E1;
    }

    else
    {
      v16 = v14;
    }

    v31 = v2;
    if (v16)
    {
      std::allocator<adm::graph::TerminalDescription>::allocate_at_least[abi:ne200100](v16);
    }

    v17 = 136 * v13;
    v28 = 0;
    v29 = v17;
    *(&v30 + 1) = 0;
    v18 = *a2;
    *(v17 + 16) = *(a2 + 2);
    *v17 = v18;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v17 + 24) = *(a2 + 24);
    v19 = *(a2 + 40);
    v20 = *(a2 + 56);
    v21 = *(a2 + 72);
    *(v17 + 88) = *(a2 + 22);
    *(v17 + 72) = v21;
    *(v17 + 56) = v20;
    *(v17 + 40) = v19;
    *(136 * v13 + 0x60) = 0;
    *(v17 + 120) = 0;
    if (*(a2 + 120) == 1)
    {
      v22 = a2[6];
      *(136 * v13 + 0x70) = *(a2 + 14);
      *(136 * v13 + 0x60) = v22;
      *(a2 + 13) = 0;
      *(a2 + 14) = 0;
      *(a2 + 12) = 0;
      *(136 * v13 + 0x78) = 1;
    }

    *(136 * v13 + 0x80) = *(a2 + 128);
    *&v30 = v17 + 136;
    v23 = v2[1];
    v24 = v17 + *v2 - v23;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<adm::graph::TerminalDescription>,adm::graph::TerminalDescription*>(v2, *v2, v23, v24);
    v25 = *v2;
    *v2 = v24;
    v26 = v2[2];
    v27 = v30;
    *(v2 + 1) = v30;
    *&v30 = v25;
    *(&v30 + 1) = v26;
    v28 = v25;
    v29 = v25;
    result = std::__split_buffer<adm::graph::TerminalDescription>::~__split_buffer(&v28);
    v12 = v27;
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = *(a2 + 40);
    v7 = *(a2 + 56);
    v8 = *(a2 + 72);
    v9 = *(a2 + 22);
    v10 = *(a2 + 24);
    *(v3 + 96) = 0;
    *(v3 + 24) = v10;
    *(v3 + 88) = v9;
    *(v3 + 72) = v8;
    *(v3 + 56) = v7;
    *(v3 + 40) = v6;
    *(v3 + 120) = 0;
    if (*(a2 + 120) == 1)
    {
      v11 = a2[6];
      *(v3 + 112) = *(a2 + 14);
      *(v3 + 96) = v11;
      *(a2 + 13) = 0;
      *(a2 + 14) = 0;
      *(a2 + 12) = 0;
      *(v3 + 120) = 1;
    }

    *(v3 + 128) = *(a2 + 128);
    v12 = v3 + 136;
  }

  v2[1] = v12;
  return result;
}

void adm::graph::TerminalDescription::~TerminalDescription(void **this)
{
  if (*(this + 120) == 1 && *(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

BOOL std::operator==[abi:ne200100]<std::string,char [10]>(uint64_t a1, char *__s)
{
  if (*(a1 + 24) != 1)
  {
    return 0;
  }

  v3 = a1;
  v4 = strlen(__s);
  v5 = *(v3 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(v3, __s, v4) == 0;
  }

  if (v4 == v3[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v3 = *v3;
    return memcmp(v3, __s, v4) == 0;
  }

  return 0;
}

void *std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,adm::DSPGraphBasicConfiguration>>>>::find<std::string>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
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
      if (v6 == v12)
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

const void **std::vector<std::shared_ptr<adm::graph::KernelProperty>>::push_back[abi:ne200100](const void **result, uint64_t a2)
{
  v2 = result;
  v4 = result[1];
  v3 = result[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *result) >> 4;
    if ((v6 + 1) >> 60)
    {
      std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *result;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    v15[4] = v2;
    if (v9)
    {
      std::allocator<std::shared_ptr<adm::graph::KernelProperty>>::allocate_at_least[abi:ne200100](v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v11 = v2[1] - *v2;
    v12 = v10 - v11;
    memcpy(v10 - v11, *v2, v11);
    v13 = *v2;
    *v2 = v12;
    v2[1] = v5;
    v14 = v2[2];
    v2[2] = 0;
    v15[2] = v13;
    v15[3] = v14;
    v15[0] = v13;
    v15[1] = v13;
    result = std::__split_buffer<std::shared_ptr<adm::graph::KernelProperty>>::~__split_buffer(v15);
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v2[1] = v5;
  return result;
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v17.__end_cap_.__value_ = a1;
    if (v10)
    {
      std::allocator<std::__fs::filesystem::path>::allocate_at_least[abi:ne200100](v10);
    }

    v11 = 24 * v7;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v12;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = 24 * v7 + 24;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    v16 = *(a1 + 16);
    *(a1 + 16) = 0;
    v17.__end_ = v15;
    v17.__end_cap_.__value_ = v16;
    v17.__first_ = v15;
    v17.__begin_ = v15;
    std::__split_buffer<std::string>::~__split_buffer(&v17);
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = v3 + 24;
  }

  *(a1 + 8) = v6;
}

BOOL anonymous namespace::isHighLatencyRoute(_anonymous_namespace_ *this, const DeviceDescription *a2, const DeviceDescription *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  if (this)
  {
    v7 = *(this + 7);
    v6 = *(this + 20) / v7;
    v8 = *(this + 21);
    if (v8 != *(this + 22))
    {
      v9 = 0.0;
      if (*(v8 + 132) == 1)
      {
        v9 = *(v8 + 128);
      }

      v10 = *(v8 + 64);
      v5 = v9 / v10;
    }
  }

  v11 = 0.0;
  v12 = 0.0;
  if (a2)
  {
    v13 = *(a2 + 7);
    v14 = *(a2 + 24);
    v15 = 0.0;
    if (v14 != *(a2 + 25))
    {
      v16 = 0.0;
      if (*(v14 + 132) == 1)
      {
        v16 = *(v14 + 128);
      }

      v17 = *(v14 + 64);
      v4 = v16 / v17;
    }

    v18 = *(a2 + 21);
    v19 = *(a2 + 20) / v13;
    v20 = *(a2 + 168);
    v21 = *(a2 + 22);
    v22 = *(a2 + 21);
    if (v22 != v21)
    {
      while (!std::operator==[abi:ne200100]<std::string,char [10]>(v22 + 32, "reference"))
      {
        v22 += 136;
        if (v22 == v21)
        {
          goto LABEL_18;
        }
      }

      v23 = 0.0;
      if (*(v22 + 132) == 1)
      {
        v23 = *(v22 + 128);
      }

      v24 = *(v22 + 64);
      v15 = v23 / v24;
    }

LABEL_18:
    v12 = v19 + v15;
    v11 = v18 / v13;
  }

  v25 = (v4 + ((v5 + v6) + v11)) - v12;
  if (v25 < 0.0)
  {
    adm_log_object = get_adm_log_object();
    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
    {
      v29 = 134217984;
      v30 = v25;
      _os_log_error_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_ERROR, "Total HW presentation latency is %f seconds, mic-ref will be non-causal", &v29, 0xCu);
    }
  }

  result = v25 >= 0.1;
  if (a2 && v25 < 0.1)
  {
    result = *(a2 + 16) == 1634300528;
  }

  v28 = *MEMORY[0x277D85DE8];
  return result;
}

void std::vector<std::string>::emplace_back<std::string const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v8;
    }

    v19.__end_cap_.__value_ = a1;
    if (v9)
    {
      std::allocator<std::__fs::filesystem::path>::allocate_at_least[abi:ne200100](v9);
    }

    begin = (24 * v6);
    v19.__first_ = 0;
    v19.__begin_ = begin;
    value = 0;
    v19.__end_ = begin;
    v19.__end_cap_.__value_ = 0;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
      begin = v19.__begin_;
      end = v19.__end_;
      value = v19.__end_cap_.__value_;
    }

    else
    {
      v13 = *a2;
      begin->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&begin->__r_.__value_.__l.__data_ = v13;
      end = begin;
    }

    v10 = end + 1;
    v15 = *(a1 + 8) - *a1;
    v16 = begin - v15;
    memcpy(begin - v15, *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v10;
    v18 = *(a1 + 16);
    *(a1 + 16) = value;
    v19.__end_ = v17;
    v19.__end_cap_.__value_ = v18;
    v19.__first_ = v17;
    v19.__begin_ = v17;
    std::__split_buffer<std::string>::~__split_buffer(&v19);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
    }

    else
    {
      v5 = *a2;
      *(v4 + 16) = *(a2 + 2);
      *v4 = v5;
    }

    v10 = (v4 + 24);
    *(a1 + 8) = v4 + 24;
  }

  *(a1 + 8) = v10;
}

uint64_t std::expected<adm::graph::GraphDescription,std::error_code>::expected[abi:ne200100]<adm::graph::GraphDescription>(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 24) = *(a2 + 3);
  v5 = a2[2];
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 32) = v5;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 4) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 9);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(a1 + 80) = 0;
  v6 = a1 + 80;
  *(a1 + 384) = -1;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<adm::graph::DSPGraphConfiguration,adm::vp::Configuration,adm::graph::ExclaveNodeConfiguration>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 80);
  v7 = *(a2 + 96);
  if (v7 != -1)
  {
    v9 = v6;
    (off_28371B908[v7])(&v9, a2 + 5);
    *(a1 + 384) = v7;
  }

  *(a1 + 392) = 1;
  return a1;
}

void adm::graph::NodeDescription::~NodeDescription(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<adm::graph::DSPGraphConfiguration,adm::vp::Configuration,adm::graph::ExclaveNodeConfiguration>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<adm::graph::DSPGraphConfiguration,adm::vp::Configuration,adm::graph::ExclaveNodeConfiguration>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<adm::graph::DSPGraphConfiguration,adm::vp::Configuration,adm::graph::ExclaveNodeConfiguration>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<adm::graph::DSPGraphConfiguration,adm::vp::Configuration,adm::graph::ExclaveNodeConfiguration>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<adm::graph::DSPGraphConfiguration,adm::vp::Configuration,adm::graph::ExclaveNodeConfiguration>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,adm::graph::DSPGraphConfiguration,adm::vp::Configuration,adm::graph::ExclaveNodeConfiguration> &&>(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  *(v2 + 13) = *(a2 + 13);
  *v2 = v3;
  result = a2[2];
  *(v2 + 48) = *(a2 + 6);
  *(v2 + 32) = result;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 4) = 0;
  v5 = *(a2 + 14);
  *(v2 + 60) = *(a2 + 60);
  *(v2 + 56) = v5;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<adm::graph::DSPGraphConfiguration,adm::vp::Configuration,adm::graph::ExclaveNodeConfiguration>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<adm::graph::DSPGraphConfiguration,adm::vp::Configuration,adm::graph::ExclaveNodeConfiguration>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<adm::graph::DSPGraphConfiguration,adm::vp::Configuration,adm::graph::ExclaveNodeConfiguration>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<adm::graph::DSPGraphConfiguration,adm::vp::Configuration,adm::graph::ExclaveNodeConfiguration>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<adm::graph::DSPGraphConfiguration,adm::vp::Configuration,adm::graph::ExclaveNodeConfiguration>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,adm::graph::DSPGraphConfiguration,adm::vp::Configuration,adm::graph::ExclaveNodeConfiguration> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = *a2;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  *(v2 + 8) = *(a2 + 8);
  *(v2 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a2 + 32);
  *(v2 + 48) = *(a2 + 48);
  *(v2 + 32) = v3;
  *(v2 + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(v2 + 64) = *(a2 + 64);
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 72) = 0;
  *(v2 + 72) = *(a2 + 72);
  v4 = *(a2 + 96);
  *(v2 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(v2 + 96) = v4;
  *(a2 + 96) = 0;
  v5 = *(a2 + 104);
  *(v2 + 120) = *(a2 + 120);
  *(v2 + 104) = v5;
  *(v2 + 136) = *(a2 + 136);
  *(a2 + 136) = 0;
  *(v2 + 144) = 0;
  *(v2 + 152) = 0;
  *(v2 + 160) = 0;
  *(v2 + 144) = *(a2 + 144);
  *(v2 + 160) = *(a2 + 160);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  v6 = *(a2 + 168);
  v7 = *(a2 + 184);
  *(v2 + 196) = *(a2 + 196);
  *(v2 + 184) = v7;
  *(v2 + 168) = v6;
  v8 = *(a2 + 216);
  *(v2 + 232) = *(a2 + 232);
  *(v2 + 216) = v8;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *(a2 + 216) = 0;
  *(v2 + 240) = *(a2 + 240);
  *(v2 + 256) = 0;
  *(v2 + 264) = 0;
  *(v2 + 248) = 0;
  *(v2 + 248) = *(a2 + 248);
  *(v2 + 264) = *(a2 + 264);
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  *(v2 + 272) = 0;
  *(v2 + 280) = 0;
  *(v2 + 288) = 0;
  result = *(a2 + 272);
  *(v2 + 272) = result;
  *(v2 + 288) = *(a2 + 288);
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(v2 + 296) = *(a2 + 296);
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<adm::graph::DSPGraphConfiguration,adm::vp::Configuration,adm::graph::ExclaveNodeConfiguration>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<adm::graph::DSPGraphConfiguration,adm::vp::Configuration,adm::graph::ExclaveNodeConfiguration>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<adm::graph::DSPGraphConfiguration,adm::vp::Configuration,adm::graph::ExclaveNodeConfiguration>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<adm::graph::DSPGraphConfiguration,adm::vp::Configuration,adm::graph::ExclaveNodeConfiguration>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<adm::graph::DSPGraphConfiguration,adm::vp::Configuration,adm::graph::ExclaveNodeConfiguration>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,adm::graph::DSPGraphConfiguration,adm::vp::Configuration,adm::graph::ExclaveNodeConfiguration> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = *a2;
  *(v2 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 24) = *(a2 + 24);
  *(v2 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 48) = *(a2 + 48);
  *(v2 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v3 = *(a2 + 72);
  *(v2 + 88) = *(a2 + 88);
  *(v2 + 72) = v3;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  v4 = *(a2 + 96);
  *(v2 + 112) = *(a2 + 112);
  *(v2 + 96) = v4;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  *(v2 + 120) = *(a2 + 120);
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  *(v2 + 128) = 0;
  *(v2 + 128) = *(a2 + 128);
  *(v2 + 144) = *(a2 + 144);
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(v2 + 152) = 0;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  *(v2 + 152) = *(a2 + 152);
  *(v2 + 168) = *(a2 + 168);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(v2 + 176) = 0;
  *(v2 + 184) = 0;
  *(v2 + 192) = 0;
  result = *(a2 + 176);
  *(v2 + 176) = result;
  *(v2 + 192) = *(a2 + 192);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  v6 = *(a2 + 200);
  *(v2 + 205) = *(a2 + 205);
  *(v2 + 200) = v6;
  return result;
}

uint64_t adm::graph::detail::KernelPropertyType<applesauce::CF::ArrayRef>::getEntry@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 24))(a1);
  result = (*(*a1 + 32))(a1);
  *a2 = a1[2];
  *(a2 + 8) = v4;
  *(a2 + 16) = result;
  return result;
}

void adm::graph::detail::KernelPropertyType<applesauce::CF::ArrayRef>::~KernelPropertyType(void *a1)
{
  *a1 = &unk_28371B9C0;
  v1 = a1[2];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x223DF43A0);
}

void *adm::graph::detail::KernelPropertyType<applesauce::CF::ArrayRef>::~KernelPropertyType(void *a1)
{
  *a1 = &unk_28371B9C0;
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::__split_buffer<std::shared_ptr<adm::graph::KernelProperty>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<adm::graph::KernelProperty  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__114default_deleteIN3adm5graph14KernelPropertyEEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<adm::graph::KernelProperty  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<adm::graph::KernelProperty  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223DF43A0);
}

uint64_t adm::graph::detail::KernelPropertyType<CA::ChannelLayout>::getEntry@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 24))(a1);
  result = (*(*a1 + 32))(a1);
  *a2 = a1[2];
  *(a2 + 8) = v4;
  *(a2 + 16) = result;
  return result;
}

void adm::graph::detail::KernelPropertyType<CA::ChannelLayout>::~KernelPropertyType(void *a1)
{
  *a1 = &unk_28371B930;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x223DF43A0);
}

void *adm::graph::detail::KernelPropertyType<CA::ChannelLayout>::~KernelPropertyType(void *a1)
{
  *a1 = &unk_28371B930;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void std::allocator<adm::graph::TerminalDescription>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x1E1E1E1E1E1E1E2)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<adm::graph::TerminalDescription>,adm::graph::TerminalDescription*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4 + 96;
    v7 = a2 + 96;
    do
    {
      v8 = *(v7 - 96);
      *(v6 - 80) = *(v7 - 80);
      *(v6 - 96) = v8;
      *(v7 - 88) = 0;
      *(v7 - 80) = 0;
      *(v7 - 96) = 0;
      *(v6 - 72) = *(v7 - 72);
      v9 = *(v7 - 56);
      v10 = *(v7 - 40);
      v11 = *(v7 - 24);
      *(v6 - 8) = *(v7 - 8);
      *(v6 - 24) = v11;
      *(v6 - 40) = v10;
      *(v6 - 56) = v9;
      *v6 = 0;
      *(v6 + 24) = 0;
      if (*(v7 + 24) == 1)
      {
        v12 = *v7;
        *(v6 + 16) = *(v7 + 16);
        *v6 = v12;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = 0;
        *(v6 + 24) = 1;
      }

      v13 = v7 - 96;
      *(v6 + 32) = *(v7 + 32);
      v6 += 136;
      v7 += 136;
    }

    while (v13 + 136 != a3);
    do
    {
      std::allocator_traits<std::allocator<adm::graph::TerminalDescription>>::destroy[abi:ne200100]<adm::graph::TerminalDescription,void,0>(v5);
      v5 += 136;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<adm::graph::TerminalDescription>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 136;
    std::allocator_traits<std::allocator<adm::graph::TerminalDescription>>::destroy[abi:ne200100]<adm::graph::TerminalDescription,void,0>(v3 - 136);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator_traits<std::allocator<adm::graph::TerminalDescription>>::destroy[abi:ne200100]<adm::graph::TerminalDescription,void,0>(uint64_t a1)
{
  if (*(a1 + 120) == 1 && *(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::allocator<std::tuple<adm::vp::UplinkNodeConfiguration::InputType,CA::StreamDescription>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::tuple<adm::vp::UplinkNodeConfiguration::InputType,CA::StreamDescription>>::__init_with_size[abi:ne200100]<std::tuple<adm::vp::UplinkNodeConfiguration::InputType,CA::StreamDescription>*,std::tuple<adm::vp::UplinkNodeConfiguration::InputType,CA::StreamDescription>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x555555555555556)
    {
      std::allocator<std::tuple<adm::vp::UplinkNodeConfiguration::InputType,CA::StreamDescription>>::allocate_at_least[abi:ne200100](a4);
    }

    std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
  }
}

void sub_223BC6D98(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::tuple<adm::vp::UplinkNodeConfiguration::OutputType,CA::StreamDescription>>::__init_with_size[abi:ne200100]<std::tuple<adm::vp::UplinkNodeConfiguration::OutputType,CA::StreamDescription>*,std::tuple<adm::vp::UplinkNodeConfiguration::OutputType,CA::StreamDescription>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x555555555555556)
    {
      std::allocator<std::tuple<adm::vp::UplinkNodeConfiguration::InputType,CA::StreamDescription>>::allocate_at_least[abi:ne200100](a4);
    }

    std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
  }
}

void sub_223BC6E54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::tuple<adm::vp::DownlinkNodeConfiguration::InputType,CA::StreamDescription>>::__init_with_size[abi:ne200100]<std::tuple<adm::vp::DownlinkNodeConfiguration::InputType,CA::StreamDescription>*,std::tuple<adm::vp::DownlinkNodeConfiguration::InputType,CA::StreamDescription>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x555555555555556)
    {
      operator new();
    }

    std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
  }
}

void sub_223BC6F28(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::tuple<adm::vp::DownlinkNodeConfiguration::OutputType,CA::StreamDescription>>::__init_with_size[abi:ne200100]<std::tuple<adm::vp::DownlinkNodeConfiguration::OutputType,CA::StreamDescription>*,std::tuple<adm::vp::DownlinkNodeConfiguration::OutputType,CA::StreamDescription>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x555555555555556)
    {
      std::allocator<std::tuple<adm::vp::UplinkNodeConfiguration::InputType,CA::StreamDescription>>::allocate_at_least[abi:ne200100](a4);
    }

    std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
  }
}

void sub_223BC6FE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void adm::vp::UplinkNodeConfiguration::~UplinkNodeConfiguration(adm::vp::UplinkNodeConfiguration *this)
{
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

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void adm::dsp::ADMGraphMacroGenerator::generateBusSemanticFormatMacros(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::to_string(&v15, *a3);
  std::operator+<char>();
  v16 = __p;
  v7 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, __p);
  v8 = v7;
  if (*(v7 + 63) < 0)
  {
    operator delete(v7[5]);
  }

  *(v8 + 5) = v15;
  *(&v15.__r_.__value_.__s + 23) = 0;
  v15.__r_.__value_.__s.__data_[0] = 0;
  if (v14 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  std::to_string(&v15, *(a3 + 28));
  std::operator+<char>();
  v16 = __p;
  v9 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, __p);
  v10 = v9;
  if (*(v9 + 63) < 0)
  {
    operator delete(v9[5]);
  }

  *(v10 + 5) = v15;
  *(&v15.__r_.__value_.__s + 23) = 0;
  v15.__r_.__value_.__s.__data_[0] = 0;
  if (v14 < 0 && (operator delete(__p[0]), SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(v15.__r_.__value_.__l.__data_);
    if ((a4 & 0x100000000) == 0)
    {
      return;
    }
  }

  else if ((a4 & 0x100000000) == 0)
  {
    return;
  }

  std::to_string(&v15, a4);
  std::operator+<char>();
  v16 = __p;
  v11 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, __p);
  v12 = v11;
  if (*(v11 + 63) < 0)
  {
    operator delete(v11[5]);
  }

  *(v12 + 5) = v15;
  *(&v15.__r_.__value_.__s + 23) = 0;
  v15.__r_.__value_.__s.__data_[0] = 0;
  if (v14 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }
}

void *std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, void *a2)
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_223BC7520(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[12],char [12],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(unsigned __int8 *result)
{
  v1 = *result;
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      if (*(result + 1))
      {
        return result;
      }

      v2 = "m_type != value_t::string or m_value.string != nullptr";
      v3 = 1222;
    }

    else
    {
      if (v1 != 8 || *(result + 1))
      {
        return result;
      }

      v2 = "m_type != value_t::binary or m_value.binary != nullptr";
      v3 = 1223;
    }

LABEL_15:
    __assert_rtn("assert_invariant", "json.hpp", v3, v2);
  }

  if (v1 == 1)
  {
    if (*(result + 1))
    {
      return result;
    }

    v2 = "m_type != value_t::object or m_value.object != nullptr";
    v3 = 1220;
    goto LABEL_15;
  }

  if (v1 == 2 && !*(result + 1))
  {
    v2 = "m_type != value_t::array or m_value.array != nullptr";
    v3 = 1221;
    goto LABEL_15;
  }

  return result;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a3)
  {
    v3 = a2 + 16;
    v4 = 32 * a3;
    while (**v3 == 2)
    {
      v6 = *(*v3 + 8);
      v5 = *v6;
      if (*(v6 + 8) - *v6 != 32 || *v5 != 3)
      {
        break;
      }

      v3 += 32;
      v4 -= 32;
      if (!v4)
      {
        *a1 = 1;
        operator new();
      }
    }

    *a1 = 2;
    operator new();
  }

  *a1 = 1;
  operator new();
}

void sub_223BC79B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::dump(void *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_223BC7C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~serializer(&a9);
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  _Unwind_Resume(a1);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(uint64_t **a1, int a2)
{
  v32 = 0;
  v33 = 0;
  v34 = 0;
  if (a2 == 1)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(&v32, (*a1)[2]);
    v6 = (*a1 + 1);
    v7 = **a1;
    if (v7 != v6)
    {
      v8 = v33;
      do
      {
        if (v8 >= v34)
        {
          v8 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(&v32, (v7 + 7));
        }

        else
        {
          *v8 = *(v7 + 56);
          *(v8 + 8) = v7[8];
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7 + 56);
          *(v7 + 56) = 0;
          v7[8] = 0;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
          v8 += 16;
        }

        v33 = v8;
        v9 = v7[1];
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
            v10 = v7[2];
            v11 = *v10 == v7;
            v7 = v10;
          }

          while (!v11);
        }

        v7 = v10;
      }

      while (v10 != v6);
    }
  }

  else if (a2 == 2)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(&v32, ((*a1)[1] - **a1) >> 4);
    v4 = **a1;
    v5 = (*a1)[1];
    while (v4 != v5)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](&v32, v4);
      v4 += 16;
    }
  }

  for (i = v33; v32 != v33; i = v33)
  {
    v15 = *(i - 16);
    v13 = i - 16;
    v14 = v15;
    LOBYTE(v30) = v15;
    v16 = *(v13 + 8);
    v31 = v16;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v13);
    *v13 = 0;
    *(v13 + 8) = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v30);
    v17 = v33;
    v18 = v33 - 16;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((v33 - 16));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v17 - 8, *(v17 - 16));
    v33 = v18;
    if (v15 == 1)
    {
      v24 = *v16;
      if (*v16 == v16 + 1)
      {
        v14 = 1;
      }

      else
      {
        do
        {
          if (v18 >= v34)
          {
            v18 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(&v32, (v24 + 7));
          }

          else
          {
            *v18 = *(v24 + 56);
            *(v18 + 8) = v24[8];
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v24 + 56);
            *(v24 + 56) = 0;
            v24[8] = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v18);
            v18 += 16;
          }

          v33 = v18;
          v25 = v24[1];
          if (v25)
          {
            do
            {
              v26 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v26 = v24[2];
              v11 = *v26 == v24;
              v24 = v26;
            }

            while (!v11);
          }

          v24 = v26;
        }

        while (v26 != v16 + 1);
        v16 = v31;
        v14 = v30;
      }

      std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(v16[1]);
      *v16 = (v16 + 1);
      v16[2] = 0;
      v16[1] = 0;
    }

    else if (v14 == 2)
    {
      v19 = *v16;
      v20 = v16[1];
      if (*v16 != v20)
      {
        do
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](&v32, v19);
          v19 += 16;
        }

        while (v19 != v20);
        v19 = *v16;
        v20 = v16[1];
      }

      if (v20 != v19)
      {
        v21 = (v20 - 16);
        v22 = v21;
        do
        {
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v21);
          v23 = *v22;
          v22 -= 16;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v21 + 8, v23);
          v11 = v21 == v19;
          v21 = v22;
        }

        while (!v11);
      }

      v16[1] = v19;
      v14 = 2;
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v30);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v31, v14);
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v27 = *a1;
      if (*(*a1 + 23) < 0)
      {
        v29 = *v27;
        goto LABEL_53;
      }
    }

    else
    {
      if (a2 != 8)
      {
        goto LABEL_56;
      }

      v27 = *a1;
      v28 = **a1;
      if (v28)
      {
        v27[1] = v28;
        v29 = v28;
LABEL_53:
        operator delete(v29);
        goto LABEL_54;
      }
    }

LABEL_55:
    operator delete(v27);
    goto LABEL_56;
  }

  if (a2 == 1)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy((*a1)[1]);
    goto LABEL_54;
  }

  if (a2 == 2)
  {
    v30 = *a1;
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v30);
LABEL_54:
    v27 = *a1;
    goto LABEL_55;
  }

LABEL_56:
  v30 = &v32;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v30);
}

void *std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_223BC80B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(a1, a2);
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
    *a2 = 0;
    *(a2 + 8) = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
    result = v4 + 16;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::allocate_at_least[abi:ne200100](v7);
  }

  v8 = 16 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  *a2 = 0;
  *(a2 + 8) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  *&v17 = v8 + 16;
  v9 = *(a1 + 8);
  v10 = v8 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v15);
  return v14;
}

void sub_223BC8254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(*(a1 + 1));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1 + 56);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(a1 + 64, a1[56]);
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 16;
      v7 = v4 - 16;
      do
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
        v8 = *v7;
        v7 -= 16;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v6 + 8, v8);
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = *v7;
      *(v4 + 8) = *(v7 + 1);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
      *v7 = 0;
      *(v7 + 1) = 0;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
      v7 += 16;
      v4 = v14 + 16;
      v14 += 16;
    }

    while (v7 != a3);
    v12 = 1;
    v8 = v6;
    do
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v6);
      v9 = *v8;
      v8 += 16;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v6 + 8, v9);
      v6 = v8;
    }

    while (v8 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((i - 16));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(i - 8, *(i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = v2 - 16;
      v5 = v2 - 16;
      do
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
        v6 = *v5;
        v5 -= 16;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v4 + 8, v6);
        v7 = v4 == v3;
        v4 = v5;
      }

      while (!v7);
    }
  }

  return a1;
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(void (****a1)(void), uint64_t **a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  if (v9 <= 4)
  {
    if (*a2 > 1u)
    {
      if (v9 != 2)
      {
        if (v9 != 3)
        {
          if (v9 == 4)
          {
            v10 = *a1;
            v11 = (**a1)[1];
            *(a2 + 8);
            goto LABEL_266;
          }

LABEL_322:
          __assert_rtn("dump", "serializer.hpp", 363, "false");
        }

        v25 = *a1;
        (***a1)();
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, a2[1]);
        v11 = ***a1;
LABEL_159:

        return v11();
      }

      v33 = *a1;
      v34 = **a1;
      if (*a2[1] != a2[1][1])
      {
        if (!a3)
        {
          (*v34)();
          v61 = a2[1];
          v63 = *v61;
          v62 = v61[1];
          if (v63 != v62 - 16)
          {
            do
            {
              nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v63, 0, a4, a5);
              (***a1)();
              v63 += 16;
              v64 = a2[1];
              v62 = v64[1];
            }

            while (v63 != v62 - 16);
            v63 = *v64;
          }

          if (v63 == v62)
          {
            __assert_rtn("dump", "serializer.hpp", 229, "not val.m_value.array->empty()");
          }

          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v62 - 16, 0, a4, a5);
          goto LABEL_142;
        }

        v34[1]();
        v35 = a5 + a4;
        v36 = a1 + 76;
        v37 = *(a1 + 631);
        if ((v37 & 0x80000000) != 0)
        {
          v38 = a1[77];
          if (v38 < v35)
          {
            goto LABEL_296;
          }
        }

        else if (v35 > v37)
        {
          v38 = *(a1 + 631);
LABEL_296:
          std::string::resize((a1 + 76), 2 * v38, 32);
        }

        v92 = a2[1];
        v94 = *v92;
        v93 = v92[1];
        if (v94 != v93 - 16)
        {
          do
          {
            v95 = a1 + 76;
            if (*(a1 + 631) < 0)
            {
              v95 = *v36;
            }

            ((**a1)[1])(*a1, v95, (a5 + a4));
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v94, 1, a4, (a5 + a4));
            ((**a1)[1])(*a1, ",\n", 2);
            v94 += 16;
            v96 = a2[1];
            v93 = v96[1];
          }

          while (v94 != v93 - 16);
          v94 = *v96;
        }

        if (v94 == v93)
        {
          __assert_rtn("dump", "serializer.hpp", 208, "not val.m_value.array->empty()");
        }

        v97 = a1 + 76;
        if (*(a1 + 631) < 0)
        {
          v97 = *v36;
        }

        ((**a1)[1])(*a1, v97, (a5 + a4));
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, a2[1][1] - 16, 1, a4, (a5 + a4));
        (***a1)();
        if (*(a1 + 631) < 0)
        {
          v36 = *v36;
        }

        ((**a1)[1])(*a1, v36, a5);
LABEL_142:
        v11 = ***a1;
        goto LABEL_159;
      }

      v49 = v34[1];
      goto LABEL_52;
    }

    if (*a2)
    {
      v13 = *a1;
      v14 = **a1;
      if (!a2[1][2])
      {
        v49 = v14[1];
LABEL_52:

        return v49();
      }

      if (!a3)
      {
        (*v14)();
        v52 = a2[1];
        v53 = *v52;
        if (v52[2] != 1)
        {
          v54 = 0;
          do
          {
            (***a1)(*a1, 34);
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v53 + 4);
            ((**a1)[1])(*a1, ":", 2);
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v53 + 7, 0, a4, a5);
            (***a1)();
            v55 = v53[1];
            v56 = v53;
            if (v55)
            {
              do
              {
                v53 = v55;
                v55 = *v55;
              }

              while (v55);
            }

            else
            {
              do
              {
                v53 = v56[2];
                v57 = *v53 == v56;
                v56 = v53;
              }

              while (!v57);
            }

            ++v54;
            v52 = a2[1];
          }

          while (v54 < v52[2] - 1);
        }

        v58 = v52 + 1;
        if (v53 == v58)
        {
          __assert_rtn("dump", "serializer.hpp", 166, "i != val.m_value.object->cend()");
        }

        v59 = v53[1];
        if (v59)
        {
          do
          {
            v60 = v59;
            v59 = *v59;
          }

          while (v59);
        }

        else
        {
          v98 = v53;
          do
          {
            v60 = v98[2];
            v57 = *v60 == v98;
            v98 = v60;
          }

          while (!v57);
        }

        if (v60 != v58)
        {
          __assert_rtn("dump", "serializer.hpp", 167, "std::next(i) == val.m_value.object->cend()");
        }

        (***a1)(*a1, 34);
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v53 + 4);
        ((**a1)[1])(*a1, ":", 2);
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v53 + 7, 0, a4, a5);
        goto LABEL_158;
      }

      v14[1]();
      v15 = a5 + a4;
      v16 = a1 + 76;
      v17 = *(a1 + 631);
      if ((v17 & 0x80000000) != 0)
      {
        v18 = a1[77];
        if (v18 < v15)
        {
          goto LABEL_294;
        }
      }

      else if (v15 > v17)
      {
        v18 = *(a1 + 631);
LABEL_294:
        std::string::resize((a1 + 76), 2 * v18, 32);
      }

      v83 = a2[1];
      v84 = *v83;
      if (v83[2] == 1)
      {
        v85 = *v83;
      }

      else
      {
        v86 = 0;
        do
        {
          v87 = a1 + 76;
          if (*(a1 + 631) < 0)
          {
            v87 = *v16;
          }

          ((**a1)[1])(*a1, v87, (a5 + a4));
          (***a1)();
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v84 + 4);
          ((**a1)[1])(*a1, ": ", 3);
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v84 + 7, 1, a4, (a5 + a4));
          ((**a1)[1])(*a1, ",\n", 2);
          v88 = v84[1];
          if (v88)
          {
            do
            {
              v85 = v88;
              v88 = *v88;
            }

            while (v88);
          }

          else
          {
            do
            {
              v85 = v84[2];
              v57 = *v85 == v84;
              v84 = v85;
            }

            while (!v57);
          }

          ++v86;
          v83 = a2[1];
          v84 = v85;
        }

        while (v86 < v83[2] - 1);
      }

      v89 = v83 + 1;
      if (v85 == v89)
      {
        __assert_rtn("dump", "serializer.hpp", 138, "i != val.m_value.object->cend()");
      }

      v90 = v85[1];
      if (v90)
      {
        do
        {
          v91 = v90;
          v90 = *v90;
        }

        while (v90);
      }

      else
      {
        v99 = v85;
        do
        {
          v91 = v99[2];
          v57 = *v91 == v99;
          v99 = v91;
        }

        while (!v57);
      }

      if (v91 != v89)
      {
        __assert_rtn("dump", "serializer.hpp", 139, "std::next(i) == val.m_value.object->cend()");
      }

      v100 = a1 + 76;
      if (*(a1 + 631) < 0)
      {
        v100 = *v16;
      }

      ((**a1)[1])(*a1, v100, (a5 + a4));
      (***a1)();
      nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v85 + 4);
      ((**a1)[1])(*a1, ": ", 3);
      nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v85 + 7, 1, a4, (a5 + a4));
      (***a1)();
      if (*(a1 + 631) < 0)
      {
        v101 = *v16;
      }

      v76 = (**a1)[1];
LABEL_157:
      v76();
LABEL_158:
      v11 = ***a1;
      goto LABEL_159;
    }

    goto LABEL_43;
  }

  if (*a2 <= 6u)
  {
    if (v9 == 5)
    {
      v19 = a2[1];
      if (v19)
      {
        v23 = a1 + 2;
        if ((v19 & 0x8000000000000000) != 0)
        {
          *v23 = 45;
          v19 = -v19;
          v65 = 1;
          if (v19 >= 0xA)
          {
            v66 = v19;
            while (1)
            {
              if (v66 <= 0x63)
              {
                ++v65;
                goto LABEL_199;
              }

              if (v66 <= 0x3E7)
              {
                v65 += 2;
                goto LABEL_199;
              }

              if (v66 >> 4 <= 0x270)
              {
                break;
              }

              v65 += 4;
              v22 = v66 >= 0x186A0;
              v66 /= 0x2710uLL;
              if (!v22)
              {
                goto LABEL_199;
              }
            }

            v65 += 3;
          }
        }

        else
        {
          if (v19 < 0xA)
          {
            goto LABEL_31;
          }

          v65 = 1;
          v67 = a2[1];
          while (v67 > 0x63)
          {
            if (v67 <= 0x3E7)
            {
              v65 += 2;
              goto LABEL_200;
            }

            if (v67 >> 4 <= 0x270)
            {
              v65 += 3;
              goto LABEL_200;
            }

            v65 += 4;
            v22 = v67 >= 0x186A0;
            v67 /= 0x2710uLL;
            if (!v22)
            {
              goto LABEL_200;
            }
          }
        }

LABEL_199:
        ++v65;
LABEL_200:
        if (v65 < 0x3F)
        {
          v24 = &v23[v65];
          if (v19 >= 0x64)
          {
            do
            {
              v103 = v19 / 0x64;
              *(v24 - 2) = *&nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[2 * (v19 % 0x64)];
              v24 -= 2;
              v139 = v19 >> 4;
              v19 /= 0x64uLL;
            }

            while (v139 > 0x270);
            goto LABEL_205;
          }

          goto LABEL_204;
        }

LABEL_288:
        __assert_rtn("dump_integer", "serializer.hpp", 726, "n_chars < number_buffer.size() - 1");
      }
    }

    else
    {
      if (v9 != 6)
      {
        goto LABEL_322;
      }

      v19 = a2[1];
      if (v19)
      {
        if (v19 >= 0xA)
        {
          v20 = 1;
          v21 = a2[1];
          while (1)
          {
            if (v21 <= 0x63)
            {
              ++v20;
              goto LABEL_168;
            }

            if (v21 <= 0x3E7)
            {
              v20 += 2;
              goto LABEL_168;
            }

            if (v21 >> 4 <= 0x270)
            {
              break;
            }

            v20 += 4;
            v22 = v21 >= 0x186A0;
            v21 /= 0x2710uLL;
            if (!v22)
            {
              goto LABEL_168;
            }
          }

          v20 += 3;
LABEL_168:
          if (v20 < 0x3F)
          {
            v24 = a1 + v20 + 16;
            if (v19 >= 0x64)
            {
              do
              {
                v103 = v19 / 0x64;
                *(v24 - 2) = *&nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[2 * (v19 % 0x64)];
                v24 -= 2;
                v104 = v19 >> 4;
                v19 /= 0x64uLL;
              }

              while (v104 > 0x270);
              goto LABEL_205;
            }

LABEL_204:
            v103 = v19;
LABEL_205:
            if (v103 >= 0xA)
            {
              *(v24 - 2) = *&nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[2 * v103];
LABEL_209:
              v140 = *a1;
LABEL_265:
              v11 = (*v140)[1];
              goto LABEL_266;
            }

            LOBYTE(v19) = v103;
LABEL_208:
            *(v24 - 1) = v19 | 0x30;
            goto LABEL_209;
          }

          goto LABEL_288;
        }

LABEL_31:
        v24 = a1 + 17;
        goto LABEL_208;
      }
    }

    v41 = *a1;
    v42 = ***a1;
    goto LABEL_58;
  }

  if (v9 == 7)
  {
    v39 = *(a2 + 1);
    if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
LABEL_43:
      v40 = *a1;
      v11 = (**a1)[1];
      goto LABEL_266;
    }

    v47 = a2[1];
    if ((*&v39 & 0x8000000000000000) != 0)
    {
      v39 = -v39;
      v48 = a1 + 17;
      *(a1 + 16) = 45;
    }

    else
    {
      v48 = a1 + 2;
    }

    if (v39 == 0.0)
    {
      *v48 = 11824;
      v48[2] = 48;
LABEL_264:
      v140 = *a1;
      goto LABEL_265;
    }

    if ((a1 + 10) - v48 <= 16)
    {
      __assert_rtn("to_chars", "to_chars.hpp", 1082, "last - first >= std::numeric_limits<FloatType>::max_digits10");
    }

    if (v39 <= 0.0)
    {
      __assert_rtn("grisu2", "to_chars.hpp", 890, "value > 0");
    }

    v169 = (a1 + 10) - v48;
    v77 = *&v39 & 0xFFFFFFFFFFFFFLL;
    if (*&v39 >> 52)
    {
      v81 = (*&v39 >> 52) - 1075;
      v79 = 2 * (v77 | 0x10000000000000);
      v80 = (2 * (*&v39 & 0xFFFFFFFFFFFFFLL | 0x10000000000000)) | 1;
      v78 = (*&v39 >> 52) - 1076;
      v82 = (*&v39 >> 52) - 1076;
      if (*&v39 >> 53 && !v77)
      {
        v82 = (*&v39 >> 52) - 1077;
        v77 = 0x10000000000000;
        v102 = 0x3FFFFFFFFFFFFFLL;
        goto LABEL_176;
      }

      v77 |= 0x10000000000000uLL;
    }

    else
    {
      v78 = 4294966221;
      v79 = 2 * *&v39;
      v80 = (2 * (*&v39 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
      v81 = 4294966222;
      v82 = -1075;
    }

    v102 = v79 - 1;
LABEL_176:
    v105 = nlohmann::detail::dtoa_impl::diyfp::normalize(v80, v78);
    v107 = v106;
    v108 = v82 - v106;
    if (v82 - v106 < 0)
    {
      v167 = "delta >= 0";
      v168 = 162;
    }

    else
    {
      v109 = v102 << v108;
      if ((v102 << v108) >> v108 == v102)
      {
        v110 = v105;
        v111 = nlohmann::detail::dtoa_impl::diyfp::normalize(v77, v81);
        if (v107 != v112)
        {
          __assert_rtn("grisu2", "to_chars.hpp", 828, "m_plus.e == v.e");
        }

        if (v107 <= -1501)
        {
          __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 466, "e >= -1500");
        }

        if (v107 >= 1501)
        {
          __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 467, "e <= 1500");
        }

        v113 = 78913 * (-61 - v107) / 0x40000;
        if (v107 < -61)
        {
          ++v113;
        }

        if (v113 <= -315)
        {
          __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 472, "index >= 0");
        }

        v114 = ((v113 + 307 + (((v113 + 307) >> 28) & 7)) << 16) >> 19;
        if (v114 >= 0x4F)
        {
          __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 473, "static_cast<std::size_t>(index) < kCachedPowers.size()");
        }

        v115 = (&nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent(int)::kCachedPowers + 16 * v114);
        v116 = v115[1];
        if (v116 + v107 <= -125)
        {
          __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 476, "kAlpha <= cached.e + e + 64");
        }

        if (v116 + v107 >= -95)
        {
          __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 477, "kGamma >= cached.e + e + 64");
        }

        v117 = *v115;
        v118 = v115[1];
        v119 = nlohmann::detail::dtoa_impl::diyfp::mul(v111, v107, *v115);
        v121 = v120;
        v122 = nlohmann::detail::dtoa_impl::diyfp::mul(v109, v107, v117);
        v124 = v123;
        v125 = nlohmann::detail::dtoa_impl::diyfp::mul(v110, v107, v117);
        v127 = v126;
        if (v126 <= -61)
        {
          __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 601, "M_plus.e >= kAlpha");
        }

        if (v126 >= -31)
        {
          __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 602, "M_plus.e <= kGamma");
        }

        v128 = v125 - 1;
        v129 = nlohmann::detail::dtoa_impl::diyfp::sub(v125 - 1, v126, v122 + 1, v124);
        v130 = nlohmann::detail::dtoa_impl::diyfp::sub(v128, v127, v119, v121);
        v131 = -v127;
        v132 = v128 >> -v127;
        if (!v132)
        {
          __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 623, "p1 > 0");
        }

        v133 = v130;
        v134 = HIDWORD(v116);
        v135 = (1 << v131) - 1;
        v136 = v135 & v128;
        if (v132 <= 0x3B9AC9FF)
        {
          if (v132 <= 0x5F5E0FF)
          {
            if (v132 <= 0x98967F)
            {
              if (v132 <= 0xF423F)
              {
                v141 = v132 >> 5;
                v142 = v132 >> 4;
                if (v132 <= 9)
                {
                  v143 = 1;
                }

                else
                {
                  v143 = 10;
                }

                if (v132 <= 9)
                {
                  v144 = 1;
                }

                else
                {
                  v144 = 2;
                }

                if (v132 <= 0x63)
                {
                  v145 = v144;
                }

                else
                {
                  v145 = 3;
                }

                if (v132 <= 0x63)
                {
                  v146 = v143;
                }

                else
                {
                  v146 = 100;
                }

                if (v132 <= 0x3E7)
                {
                  v147 = v145;
                }

                else
                {
                  v147 = 4;
                }

                if (v132 <= 0x3E7)
                {
                  v148 = v146;
                }

                else
                {
                  v148 = 1000;
                }

                if (v142 <= 0x270)
                {
                  v149 = v147;
                }

                else
                {
                  v149 = 5;
                }

                if (v142 <= 0x270)
                {
                  v150 = v148;
                }

                else
                {
                  v150 = 10000;
                }

                if (v141 <= 0xC34)
                {
                  v138 = v149;
                }

                else
                {
                  v138 = 6;
                }

                if (v141 > 0xC34)
                {
                  v137 = 100000;
                }

                else
                {
                  v137 = v150;
                }
              }

              else
              {
                v137 = 1000000;
                v138 = 7;
              }
            }

            else
            {
              v137 = 10000000;
              v138 = 8;
            }
          }

          else
          {
            v137 = 100000000;
            v138 = 9;
          }
        }

        else
        {
          v137 = 1000000000;
          v138 = 10;
        }

        v151 = 0;
        v152 = -v138;
        v153 = v138 - 1;
        do
        {
          v154 = v132 / v137;
          if (v132 / v137 >= 0xA)
          {
            __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 659, "d <= 9");
          }

          v132 = v132 % v137;
          v155 = v151 + 1;
          v48[v151] = v154 | 0x30;
          if ((v132 << v131) + v136 <= v129)
          {
            nlohmann::detail::dtoa_impl::grisu2_round(v48, (v151 + 1), v133, v129, (v132 << v131) + v136, v137 << v131);
            LODWORD(v159) = v155;
            goto LABEL_253;
          }

          v137 /= 0xAu;
          --v153;
          ++v151;
        }

        while (v152 + v155);
        if (v136 <= v129)
        {
          __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 746, "p2 > delta");
        }

        v156 = -1;
        do
        {
          if (v136 >= 0x199999999999999ALL)
          {
            __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 757, "p2 <= (std::numeric_limits<std::uint64_t>::max)() / 10");
          }

          v157 = (10 * v136) >> v131;
          if (v157 >= 0xA)
          {
            __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 766, "d <= 9");
          }

          v48[v155] = v157 | 0x30;
          v136 = (10 * v136) & v135;
          v158 = 5 * v129;
          v159 = (v155 + 1);
          v129 *= 10;
          v133 *= 10;
          ++v156;
          ++v155;
        }

        while (v136 > 2 * v158);
        v153 = ~v156;
        nlohmann::detail::dtoa_impl::grisu2_round(v48, v159, v133, v129, v136, 1 << v131);
LABEL_253:
        if (v159 >= 18)
        {
          __assert_rtn("to_chars", "to_chars.hpp", 1092, "len <= std::numeric_limits<FloatType>::max_digits10");
        }

        if (v169 <= 0x15)
        {
          __assert_rtn("to_chars", "to_chars.hpp", 1100, "last - first >= 2 + (-kMinExp - 1) + std::numeric_limits<FloatType>::max_digits10");
        }

        if (v169 == 22)
        {
          __assert_rtn("to_chars", "to_chars.hpp", 1101, "last - first >= std::numeric_limits<FloatType>::max_digits10 + 6");
        }

        v160 = v153 - v134;
        v161 = v153 - v134 + v159;
        if (v153 - v134 < 0 || v161 > 15)
        {
          if ((v161 - 16) >= 0xFFFFFFF1)
          {
            if ((v160 & 0x80000000) == 0)
            {
              __assert_rtn("format_buffer", "to_chars.hpp", 1006, "k > n");
            }

            v162 = &v48[v161];
            memmove(v162 + 1, v162, v159 - v161);
            *v162 = 46;
          }

          else if (v161 != 0 && v161 < 0xFFFFFFFD)
          {
            if (v159 != 1)
            {
              memmove(v48 + 2, v48 + 1, v159 - 1);
              v48[1] = 46;
              v48 += v159;
            }

            v48[1] = 101;
            if (v161 <= -999)
            {
              __assert_rtn("append_exponent", "to_chars.hpp", 926, "e > -1000");
            }

            if (v161 >= 1001)
            {
              __assert_rtn("append_exponent", "to_chars.hpp", 927, "e < 1000");
            }

            v163 = v161 - 1;
            if (v161 >= 1)
            {
              v164 = 43;
            }

            else
            {
              v164 = 45;
            }

            if (v163 < 0)
            {
              v163 = 1 - v161;
            }

            v48[2] = v164;
            if (v163 > 9)
            {
              if (v163 > 0x63)
              {
                v48[3] = v163 / 0x64u + 48;
                LOBYTE(v163) = v163 % 0x64u;
                v166 = v163 / 0xAu;
                v165 = v48 + 5;
                v48[4] = (v163 / 0xAu) | 0x30;
              }

              else
              {
                v166 = v163 / 0xAu;
                v165 = v48 + 4;
                v48[3] = (v163 / 0xAu) | 0x30;
              }

              LOBYTE(v163) = v163 - 10 * v166;
            }

            else
            {
              v165 = v48 + 4;
              v48[3] = 48;
            }

            *v165 = v163 | 0x30;
          }

          else
          {
            memmove(&v48[-v161 + 2], v48, v159);
            *v48 = 11824;
            memset(v48 + 2, 48, -v161);
          }
        }

        else
        {
          memset(&v48[v159], 48, v160);
          *&v48[v161] = 12334;
        }

        goto LABEL_264;
      }

      v167 = "((x.f << delta) >> delta) == x.f";
      v168 = 163;
    }

    __assert_rtn("normalize_to", "to_chars.hpp", v168, v167);
  }

  if (v9 != 8)
  {
    if (v9 != 9)
    {
      goto LABEL_322;
    }

    v12 = *a1;
    v11 = (**a1)[1];
LABEL_266:

    return v11();
  }

  v26 = *a1;
  v27 = (**a1)[1];
  if (a3)
  {
    v27();
    v28 = (a5 + a4);
    v29 = a1 + 76;
    v30 = *(a1 + 631);
    if ((v30 & 0x80000000) != 0)
    {
      v68 = a1[77];
      if (v68 >= v28)
      {
        v31 = *a1;
LABEL_94:
        v32 = *v29;
        goto LABEL_95;
      }
    }

    else
    {
      if (v28 <= v30)
      {
        v31 = *a1;
        v32 = a1 + 76;
LABEL_95:
        ((*v31)[1])(v31, v32, v28);
        ((**a1)[1])(*a1, "bytes: [", 10);
        v69 = *a2[1];
        v70 = a2[1][1];
        v71 = *a2[1];
        if (v71 != v70)
        {
          for (; v71 != v70 - 1; v70 = a2[1][1])
          {
            v72 = *v71++;
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, v72);
            ((**a1)[1])(*a1, ", ", 2);
          }

          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v70 - 1));
        }

        ((**a1)[1])(*a1, "],\n", 3);
        v73 = a1 + 76;
        if (*(a1 + 631) < 0)
        {
          v73 = *v29;
        }

        ((**a1)[1])(*a1, v73, v28);
        ((**a1)[1])(*a1, "subtype: ", 11);
        v74 = a2[1];
        if (*(v74 + 25) == 1)
        {
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v74 + 24));
        }

        else
        {
          ((**a1)[1])(*a1, "null", 4);
        }

        (***a1)(*a1, 10);
        if (*(a1 + 631) < 0)
        {
          v75 = *v29;
        }

        v76 = (**a1)[1];
        goto LABEL_157;
      }

      v68 = *(a1 + 631);
    }

    std::string::resize((a1 + 76), 2 * v68, 32);
    v31 = *a1;
    v32 = a1 + 76;
    if ((*(a1 + 631) & 0x80000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

  v27();
  v43 = *a2[1];
  v44 = a2[1][1];
  v45 = *a2[1];
  if (v45 != v44)
  {
    while (v45 != v44 - 1)
    {
      v46 = *v45++;
      nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, v46);
      (***a1)(*a1, 44);
      v44 = a2[1][1];
    }

    nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v44 - 1));
  }

  ((**a1)[1])(*a1, "],subtype:", 12);
  v51 = a2[1];
  if (*(v51 + 25) != 1)
  {
    v11 = (**a1)[1];
    goto LABEL_266;
  }

  nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v51 + 24));
  v42 = ***a1;
LABEL_58:

  return v42();
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~serializer(uint64_t a1)
{
  if (*(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(uint64_t result, uint64_t *a2)
{
  v2 = *(a2 + 23);
  v3 = a2[1];
  if ((v2 & 0x80000000) == 0)
  {
    v3 = *(a2 + 23);
  }

  if (!v3)
  {
    return result;
  }

  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = v2 >> 63;
  v13 = result + 90;
  do
  {
    if (v12)
    {
      v14 = *a2;
    }

    else
    {
      v14 = a2;
    }

    v15 = *(v14 + v9);
    if (v7)
    {
      v6 = v15 & 0x3F | (v6 << 6);
    }

    else
    {
      v6 = (0xFFu >> nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(unsigned char &,unsigned int &,unsigned char)::utf8d[v15]) & v15;
    }

    v16 = 16 * v7 + nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(unsigned char &,unsigned int &,unsigned char)::utf8d[v15] + 256;
    if (v16 >= 0x190)
    {
      __assert_rtn("decode", "serializer.hpp", 892, "index < 400");
    }

    v7 = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(unsigned char &,unsigned int &,unsigned char)::utf8d[v16];
    if (v7 == 1)
    {
      v18 = v5[158];
      if ((v18 - 1) >= 2)
      {
        if (!v18)
        {
          v42 = 3;
          *__str = 0;
          snprintf(__str, 3uLL, "%.2X", v15);
          exception = __cxa_allocate_exception(0x20uLL);
          std::to_string(&v35, v9);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v36, "invalid UTF-8 byte at index ", &v35);
          v27 = std::string::append(&v36, ": 0x", 4uLL);
          v28 = *&v27->__r_.__value_.__l.__data_;
          v37.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
          *&v37.__r_.__value_.__l.__data_ = v28;
          v27->__r_.__value_.__l.__size_ = 0;
          v27->__r_.__value_.__r.__words[2] = 0;
          v27->__r_.__value_.__r.__words[0] = 0;
          if (v42 >= 0)
          {
            v29 = __str;
          }

          else
          {
            v29 = *__str;
          }

          if (v42 >= 0)
          {
            v30 = v42;
          }

          else
          {
            v30 = v41;
          }

          v31 = std::string::append(&v37, v29, v30);
          v32 = *&v31->__r_.__value_.__l.__data_;
          v39 = v31->__r_.__value_.__r.__words[2];
          v38 = v32;
          v31->__r_.__value_.__l.__size_ = 0;
          v31->__r_.__value_.__r.__words[2] = 0;
          v31->__r_.__value_.__r.__words[0] = 0;
          nlohmann::detail::type_error::create(exception, 316, &v38);
        }

        __assert_rtn("dump_escaped", "serializer.hpp", 562, "false");
      }

      v9 -= v10 != 0;
      if (v18 == 1)
      {
        v19 = v13 + v11;
        v8 = v11 + 3;
        *v19 = -16401;
        *(v19 + 2) = -67;
        if ((v11 - 497) > 0xC)
        {
          v7 = 0;
          v10 = 0;
          v11 += 3;
          goto LABEL_46;
        }

        v21 = *(**v5 + 8);
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    if (!v7)
    {
      if (v6 <= 11)
      {
        switch(v6)
        {
          case 8:
            v17 = 25180;
            goto LABEL_41;
          case 9:
            v17 = 29788;
            goto LABEL_41;
          case 10:
            v17 = 28252;
            goto LABEL_41;
        }
      }

      else if (v6 > 33)
      {
        if (v6 == 34)
        {
          v17 = 8796;
          goto LABEL_41;
        }

        if (v6 == 92)
        {
          v17 = 23644;
          goto LABEL_41;
        }
      }

      else
      {
        if (v6 == 12)
        {
          v17 = 26204;
          goto LABEL_41;
        }

        if (v6 == 13)
        {
          v17 = 29276;
LABEL_41:
          *(v13 + v8) = v17;
          v11 = v8 + 2;
          goto LABEL_42;
        }
      }

      if (v6 > 0x1F)
      {
        if ((v2 & 0x80u) == 0)
        {
          v23 = a2;
        }

        else
        {
          v23 = *a2;
        }

        v11 = v8 + 1;
        *(v13 + v8) = *(v23 + v9);
      }

      else
      {
        result = snprintf((v13 + v8), 7uLL, "\\u%04x", v6);
        v11 = v8 + 6;
      }

LABEL_42:
      if ((v11 - 500) <= 0xC)
      {
        v21 = *(**v5 + 8);
LABEL_44:
        result = v21();
        v7 = 0;
        v11 = 0;
        v10 = 0;
        v8 = 0;
        goto LABEL_46;
      }

LABEL_45:
      v7 = 0;
      v10 = 0;
      v8 = v11;
      goto LABEL_46;
    }

    if ((v2 & 0x80u) == 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = *a2;
    }

    *(v13 + v8++) = *(v20 + v9);
    ++v10;
LABEL_46:
    ++v9;
    v2 = *(a2 + 23);
    v12 = v2 >> 63;
    v22 = a2[1];
    if ((v2 & 0x80000000) == 0)
    {
      v22 = *(a2 + 23);
    }
  }

  while (v9 < v22);
  if (v7)
  {
    v25 = v5[158];
    switch(v25)
    {
      case 1:
        (*(**v5 + 8))(*v5, v13, v11);
        v24 = *(**v5 + 8);
        break;
      case 2:
        v24 = *(**v5 + 8);
        break;
      case 0:
        v42 = 3;
        *__str = 0;
        v33 = *a2;
        if ((v2 & 0x80000000) == 0)
        {
          v33 = a2;
        }

        snprintf(__str, 3uLL, "%.2X", *(v33 + v22 - 1));
        v34 = __cxa_allocate_exception(0x20uLL);
        std::operator+<char>();
        nlohmann::detail::type_error::create(v34, 316, &v38);
      default:
        __assert_rtn("dump_escaped", "serializer.hpp", 625, "false");
    }

LABEL_57:

    return v24();
  }

  else if (v8)
  {
    v24 = *(**v5 + 8);
    goto LABEL_57;
  }

  return result;
}

void sub_223BCA7DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
    if ((v36 & 1) == 0)
    {
LABEL_6:
      if (*(v37 - 81) < 0)
      {
        operator delete(*(v37 - 104));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v36)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v35);
  goto LABEL_6;
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(void *a1, unsigned int a2)
{
  if (!a2)
  {
    return (***a1)(*a1, 48);
  }

  if (a2 < 0xA)
  {
    v2 = 1;
LABEL_8:
    v5 = a2 | 0x30;
    goto LABEL_9;
  }

  if (a2 >= 0x64)
  {
    *(a1 + 17) = *&nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[2 * (a2 - 100 * ((41 * a2) >> 12))];
    v2 = 3;
    a2 = (41 * a2) >> 12;
    goto LABEL_8;
  }

  v4 = &nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(unsigned long long)::digits_to_99[2 * a2];
  *(a1 + 17) = v4[1];
  v5 = *v4;
  v2 = 2;
LABEL_9:
  *(a1 + 16) = v5;
  return (*(**a1 + 8))(*a1, a1 + 2, v2);
}

unint64_t nlohmann::detail::dtoa_impl::diyfp::sub(unint64_t a1, int a2, unint64_t a3, int a4)
{
  if (a2 != a4)
  {
    v6 = "x.e == y.e";
    v7 = 66;
LABEL_6:
    __assert_rtn("sub", "to_chars.hpp", v7, v6);
  }

  v4 = a1 >= a3;
  result = a1 - a3;
  if (!v4)
  {
    v6 = "x.f >= y.f";
    v7 = 67;
    goto LABEL_6;
  }

  return result;
}

uint64_t nlohmann::detail::dtoa_impl::grisu2_round(uint64_t this, char *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a2 <= 0)
  {
    __assert_rtn("grisu2_round", "to_chars.hpp", 545, "len >= 1");
  }

  if (a3 > a4)
  {
    __assert_rtn("grisu2_round", "to_chars.hpp", 546, "dist <= delta");
  }

  if (a4 < a5)
  {
    __assert_rtn("grisu2_round", "to_chars.hpp", 547, "rest <= delta");
  }

  if (!a6)
  {
    __assert_rtn("grisu2_round", "to_chars.hpp", 548, "ten_k > 0");
  }

  v6 = a3 - a5;
  if (a3 > a5 && a4 - a5 >= a6)
  {
    v7 = this - 1;
    v8 = a6 + a5;
    v9 = a4 - (a6 + a5);
    do
    {
      if (v8 >= a3 && v6 <= v8 - a3)
      {
        break;
      }

      v10 = *(v7 + a2);
      if (v10 == 48)
      {
        __assert_rtn("grisu2_round", "to_chars.hpp", 573, "buf[len - 1] != '0'");
      }

      *(v7 + a2) = v10 - 1;
      if (v8 >= a3)
      {
        break;
      }

      v6 -= a6;
      v8 += a6;
      v11 = v9 >= a6;
      v9 -= a6;
    }

    while (v11);
  }

  return this;
}

uint64_t nlohmann::detail::dtoa_impl::diyfp::normalize(uint64_t result, unint64_t a2)
{
  if (!result)
  {
    __assert_rtn("normalize", "to_chars.hpp", 143, "x.f != 0");
  }

  for (; (result & 0x8000000000000000) == 0; a2 = (a2 - 1) | a2 & 0xFFFFFFFF00000000)
  {
    result *= 2;
  }

  return result;
}

void nlohmann::detail::type_error::create(uint64_t a1, int a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "type_error");
  std::operator+<char>();
  v6 = std::string::append(&v26, ".", 1uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v25, a2);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v25;
  }

  else
  {
    v8 = v25.__r_.__value_.__r.__words[0];
  }

  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v25.__r_.__value_.__l.__size_;
  }

  v10 = std::string::append(&v27, v8, size);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v28, "] ", 2uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v14 = *(a3 + 23);
  if (v14 >= 0)
  {
    v15 = a3;
  }

  else
  {
    v15 = *a3;
  }

  if (v14 >= 0)
  {
    v16 = *(a3 + 23);
  }

  else
  {
    v16 = *(a3 + 8);
  }

  v17 = std::string::append(&v22, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v24 = v17->__r_.__value_.__r.__words[2];
  *v23 = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v21 < 0)
  {
    operator delete(__p);
  }

  if (v24 >= 0)
  {
    v19 = v23;
  }

  else
  {
    v19 = v23[0];
  }

  *a1 = &unk_28371DB30;
  *(a1 + 8) = a2;
  std::runtime_error::runtime_error((a1 + 16), v19);
  *a1 = &unk_28371DB08;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }
}

void sub_223BCADB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  std::exception::~exception(v41);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void nlohmann::detail::type_error::~type_error(std::runtime_error *this)
{
  this->__vftable = &unk_28371DB30;
  std::runtime_error::~runtime_error(this + 1);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_28371DB30;
  std::runtime_error::~runtime_error(this + 1);
  std::exception::~exception(this);

  JUMPOUT(0x223DF43A0);
}

void nlohmann::detail::exception::~exception(std::runtime_error *this)
{
  this->__vftable = &unk_28371DB30;
  std::runtime_error::~runtime_error(this + 1);
  std::exception::~exception(this);

  JUMPOUT(0x223DF43A0);
}

{
  this->__vftable = &unk_28371DB30;
  std::runtime_error::~runtime_error(this + 1);

  std::exception::~exception(this);
}

void std::__shared_ptr_emplace<nlohmann::detail::output_string_adapter<char,std::string>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28371DA30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223DF43A0);
}

unsigned __int8 *nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::moved_or_copied(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
    *a2 = 0;
    *(a2 + 8) = 0;

    return nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  }

  else
  {

    return nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(a1, a2);
  }
}

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(unsigned __int8 *a1)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(a1 + 1, *a1);
  return a1;
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
}

unsigned __int8 *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(unsigned __int8 *a1, unsigned __int8 *a2)
{
  *a1 = *a2;
  *(a1 + 1) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  v4 = *a1;
  if (v4 > 4)
  {
    if (*a1 > 6u)
    {
      if (v4 != 7)
      {
        if (v4 == 8)
        {
          v7 = *(a2 + 1);
          operator new();
        }

        goto LABEL_20;
      }
    }

    else if (v4 != 5 && v4 != 6)
    {
      goto LABEL_20;
    }

    v6 = *(a2 + 1);
    goto LABEL_19;
  }

  if (*a1 <= 2u)
  {
    if (v4 == 1)
    {
      v8 = *(a2 + 1);
      operator new();
    }

    if (v4 == 2)
    {
      v5 = *(a2 + 1);
      operator new();
    }

    goto LABEL_20;
  }

  if (v4 == 3)
  {
    v9 = *(a2 + 1);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,std::string const&>();
  }

  if (v4 == 4)
  {
    v6 = a2[8];
LABEL_19:
    *(a1 + 1) = v6;
  }

LABEL_20:
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  return a1;
}

void sub_223BCB4AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  v13 = *v11;
  if (*v11)
  {
    v11[1] = v13;
    operator delete(v13);
  }

  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_223BCB610(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](0, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](char a1, uint64_t a2)
{
  if (a1)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((a2 + 56));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy((a2 + 64), *(a2 + 56));
    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void adm::config_policy::getDeviceConfigurations(uint64_t a1, adm::ConfigurationChangeRequest *a2, uint64_t a3)
{
  v108 = *MEMORY[0x277D85DE8];
  v99[0] = 0;
  v99[1] = 0;
  v98 = v99;
  if (*(a3 + 24) == 1)
  {
    v6 = *a3;
    v5 = *(a3 + 8);
    if (*a3 != v5)
    {
      do
      {
        BYTE8(v95) = 0;
        *v96 = 0;
        v96[4] = 0;
        v96[8] = 0;
        *&v96[12] = 0;
        v96[16] = 0;
        v96[20] = 0;
        v96[24] = 0;
        v96[28] = 0;
        memset(&v94, 0, sizeof(v94));
        LOBYTE(v95) = 0;
        std::string::operator=(&v94, v6);
        if (*(v6 + 41) == 1 && (*(v6 + 40) & 1) != 0)
        {
          *v96 = 256;
        }

        if (*(v6 + 53) == 1 && *(v6 + 52))
        {
          *&v96[12] = 256;
        }

        if (*(v6 + 68) == 1 && *(v6 + 64))
        {
          *&v96[24] = 0;
          v96[28] = 1;
        }

        if (*(v6 + 60) == 1 && *(v6 + 56))
        {
          *&v96[16] = 0;
          v96[20] = 1;
        }

        __p.__r_.__value_.__r.__words[0] = v6;
        v7 = std::__tree<std::__value_type<std::string,adm::DeviceConfiguration>,std::__map_value_compare<std::string,std::__value_type<std::string,adm::DeviceConfiguration>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,adm::DeviceConfiguration>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v98, v6);
        v8 = v7;
        if (*(v7 + 79) < 0)
        {
          operator delete(v7[7]);
        }

        *(v8 + 7) = v94;
        v9 = *v96;
        *(v8 + 5) = v95;
        *(v8 + 6) = v9;
        *(v8 + 109) = *&v96[13];
        v6 += 72;
      }

      while (v6 != v5);
    }
  }

  if (*a2 != 1)
  {
    goto LABEL_121;
  }

  DeviceDescription = adm::config_policy::getDeviceDescription(a2, 1);
  v11 = adm::config_policy::getDeviceDescription(a2, 0);
  BYTE8(v91) = 0;
  *v92 = 0;
  v92[4] = 0;
  v92[8] = 0;
  *&v92[12] = 0;
  v92[16] = 0;
  v92[20] = 0;
  v92[24] = 0;
  v92[28] = 0;
  memset(&__p, 0, sizeof(__p));
  LOBYTE(v91) = 0;
  std::string::basic_string[abi:ne200100]<0>(&buf, "voice isolation conferencing");
  v12 = std::__tree<std::string>::find<std::string>(a2 + 8, &buf);
  v13 = a2 + 16;
  if ((a2 + 16) == v12)
  {
    v15 = v12;
    std::string::basic_string[abi:ne200100]<0>(&v107, "content creation recording");
    v14 = v15 != std::__tree<std::string>::find<std::string>(a2 + 8, &v107);
    if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v107.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v14 = 1;
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (!v14)
  {
    adm_log_object = get_adm_log_object();
    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      goto LABEL_31;
    }

LABEL_32:
    v94 = __p;
    memset(&__p, 0, sizeof(__p));
    v95 = v91;
    *v96 = *v92;
    v17 = 1;
    *&v96[13] = *&v92[13];
    goto LABEL_33;
  }

  if (adm::config_policy::isAirPodsMicOffloadUseCase(a2 + 8))
  {
    adm_log_object = get_adm_log_object();
    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
LABEL_31:
      _os_log_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_DEFAULT, "No input device configuration needed", &buf, 2u);
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  if (DeviceDescription)
  {
    std::string::operator=(&__p, DeviceDescription);
    if (*(DeviceDescription + 24) != *(DeviceDescription + 25))
    {
      goto LABEL_45;
    }

    v26 = *(DeviceDescription + 21);
    v27 = *(DeviceDescription + 22);
    if (v26 != v27)
    {
      while (!std::operator==[abi:ne200100]<std::string,char [10]>(v26 + 32, "reference"))
      {
        v26 += 136;
        if (v26 == v27)
        {
          v26 = v27;
          break;
        }
      }

      v27 = *(DeviceDescription + 22);
    }

    if (v26 == v27)
    {
      goto LABEL_45;
    }

    *v92 = 257;
    v28 = *(v26 + 104);
    v29 = *(v26 + 112);
    v30 = v28 + 40;
    v31 = v28 == v29 || v30 == v29;
    if (!v31)
    {
      do
      {
        if (*(v28 + 28) < *(v30 + 28))
        {
          v28 = v30;
        }

        v30 += 40;
      }

      while (v30 != v29);
    }

    v32 = *(v28 + 28);
    v33 = get_adm_log_object();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(buf.__r_.__value_.__r.__words[0]) = v32;
      _os_log_impl(&dword_223B4A000, v33, OS_LOG_TYPE_DEFAULT, "The max channel count in the supported ref stream format is %u", &buf, 8u);
    }

    if (v32)
    {
      *&v92[4] = v32;
      v92[8] = 1;
LABEL_45:
      std::string::basic_string[abi:ne200100]<0>(&buf, "voice isolation conferencing");
      if (v13 == std::__tree<std::string>::find<std::string>(a2 + 8, &buf))
      {
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        if (*(DeviceDescription + 16) == 1651274862)
        {
        }

        else
        {
          v23 = 0;
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        if (v23)
        {
          *&v92[24] = 1;
          v92[28] = 1;
          *&v92[16] = 1;
          v92[20] = 1;
        }
      }

      goto LABEL_32;
    }

    v25 = get_adm_log_object();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v84 = "Max channel count of the available ref stream is 0 ";
LABEL_221:
      _os_log_error_impl(&dword_223B4A000, v25, OS_LOG_TYPE_ERROR, v84, &buf, 2u);
    }
  }

  else
  {
    v25 = get_adm_log_object();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v84 = "Input device description unavailable";
      goto LABEL_221;
    }
  }

  v17 = 0;
  v94.__r_.__value_.__r.__words[0] = 1969448551;
LABEL_33:
  v97 = v17;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v17)
    {
      goto LABEL_35;
    }

LABEL_42:
    *a1 = *&v94.__r_.__value_.__l.__data_;
    *(a1 + 24) = 0;
    goto LABEL_159;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((v97 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_35:
  size = HIBYTE(v94.__r_.__value_.__r.__words[2]);
  if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v94.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    __p.__r_.__value_.__r.__words[0] = &v94;
    v19 = std::__tree<std::__value_type<std::string,adm::DeviceConfiguration>,std::__map_value_compare<std::string,std::__value_type<std::string,adm::DeviceConfiguration>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,adm::DeviceConfiguration>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v98, &v94);
  }

  BYTE8(v105) = 0;
  *v106 = 0;
  v106[4] = 0;
  v106[8] = 0;
  *&v106[12] = 0;
  v106[16] = 0;
  v106[20] = 0;
  v106[24] = 0;
  v106[28] = 0;
  memset(&buf, 0, sizeof(buf));
  LOBYTE(v105) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v107, "voice isolation conferencing");
  v21 = std::__tree<std::string>::find<std::string>(a2 + 8, &v107);
  if (v13 == v21)
  {
    v24 = v21;
    std::string::basic_string[abi:ne200100]<0>(v102, "voice activity detection");
    if (v24 == std::__tree<std::string>::find<std::string>(a2 + 8, v102))
    {
      std::string::basic_string[abi:ne200100]<0>(v100, "content creation recording");
      v22 = v24 != std::__tree<std::string>::find<std::string>(a2 + 8, v100) || adm::config_policy::isExclaveUseCase(a2 + 8);
      if (v101 < 0)
      {
        operator delete(v100[0]);
      }
    }

    else
    {
      v22 = 1;
    }

    if (v103 < 0)
    {
      operator delete(*v102);
    }
  }

  else
  {
    v22 = 1;
  }

  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  if (!v22)
  {
    v34 = get_adm_log_object();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v107.__r_.__value_.__l.__data_) = 0;
      goto LABEL_87;
    }

LABEL_88:
    __p = buf;
    memset(&buf, 0, sizeof(buf));
    v91 = v105;
    *v92 = *v106;
    v35 = 1;
    *&v92[13] = *&v106[13];
    goto LABEL_89;
  }

  if (adm::config_policy::isAirPodsMicOffloadUseCase(a2 + 8))
  {
    v34 = get_adm_log_object();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v107.__r_.__value_.__l.__data_) = 0;
LABEL_87:
      _os_log_impl(&dword_223B4A000, v34, OS_LOG_TYPE_DEFAULT, "No output device configuration needed", &v107, 2u);
      goto LABEL_88;
    }

    goto LABEL_88;
  }

  if (!v11)
  {
    v74 = get_adm_log_object();
    if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_192;
    }

    LOWORD(v107.__r_.__value_.__l.__data_) = 0;
    v75 = "Output device description unavailable";
LABEL_223:
    _os_log_error_impl(&dword_223B4A000, v74, OS_LOG_TYPE_ERROR, v75, &v107, 2u);
    goto LABEL_192;
  }

  std::string::operator=(&buf, v11);
  std::string::basic_string[abi:ne200100]<0>(&v107, "voice isolation conferencing");
  v42 = std::__tree<std::string>::find<std::string>(a2 + 8, &v107);
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  if (v13 == v42)
  {
    std::string::basic_string[abi:ne200100]<0>(&v107, "content creation recording");
    if (v13 == std::__tree<std::string>::find<std::string>(a2 + 8, &v107))
    {
      if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v107.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v77 = adm::config_policy::contentCreationRequiresEC((a2 + 8), DeviceDescription, v11, v76);
      if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v107.__r_.__value_.__l.__data_);
      }

      if (v77)
      {
        goto LABEL_101;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v107, "voice activity detection");
    if (v13 == std::__tree<std::string>::find<std::string>(a2 + 8, &v107))
    {
      if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v107.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (DeviceDescription && *(DeviceDescription + 16) == 1651275109 && *(DeviceDescription + 19) == 1)
      {
        v85 = *(DeviceDescription + 160);
      }

      else
      {
        v85 = 0;
      }

      v86 = *(v11 + 16) == 1651275109 && *(v11 + 19) == 1;
      v87 = v85 & v86;
      if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v107.__r_.__value_.__l.__data_);
      }

      if ((v87 & 1) == 0)
      {
        goto LABEL_101;
      }
    }

    if (!adm::config_policy::isExclaveUseCase(a2 + 8) || !adm::config_policy::exclaveUseCaseRequiresRefStream(a2 + 8))
    {
LABEL_213:
      std::string::basic_string[abi:ne200100]<0>(&v107, "voice isolation conferencing");
      if (v13 == std::__tree<std::string>::find<std::string>(a2 + 8, &v107))
      {
        if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v107.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v88 = *(v11 + 16);
        if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v107.__r_.__value_.__l.__data_);
        }

        if (v88 == 1651275109)
        {
          *&v106[12] = 257;
        }
      }

      goto LABEL_88;
    }
  }

LABEL_101:
  v43 = *(v11 + 21);
  v44 = *(v11 + 22);
  if (v43 != v44)
  {
    while (!std::operator==[abi:ne200100]<std::string,char [10]>(v43 + 32, "reference"))
    {
      v43 += 136;
      if (v43 == v44)
      {
        v43 = v44;
        break;
      }
    }

    v44 = *(v11 + 22);
  }

  if (v43 == v44)
  {
    v78 = get_adm_log_object();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v107.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_223B4A000, v78, OS_LOG_TYPE_ERROR, "None of the input HW streams on the output device is marked as ref stream", &v107, 2u);
    }

    v79 = *(v11 + 21);
    for (i = *(v11 + 22); v79 != i; v79 += 136)
    {
      v81 = get_adm_log_object();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v107, v79 + 32, "");
        v82 = (v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v107 : v107.__r_.__value_.__r.__words[0];
        *v102 = 136315138;
        *&v102[4] = v82;
        _os_log_error_impl(&dword_223B4A000, v81, OS_LOG_TYPE_ERROR, "Input HW stream on the output device has semantic %s", v102, 0xCu);
        if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v107.__r_.__value_.__l.__data_);
        }
      }
    }

    goto LABEL_192;
  }

  v45 = *(v43 + 104);
  v46 = *(v43 + 112);
  if (v45 == v46)
  {
    v47 = 0;
  }

  else
  {
    v47 = 0;
    do
    {
      if (*(v45 + 28) > v47)
      {
        v47 = *(v45 + 28);
      }

      v45 += 40;
    }

    while (v45 != v46);
  }

  v83 = get_adm_log_object();
  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v107.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(v107.__r_.__value_.__r.__words[0]) = v47;
    _os_log_impl(&dword_223B4A000, v83, OS_LOG_TYPE_DEFAULT, "The max channel count in the supported ref stream format is %u", &v107, 8u);
  }

  if (v47)
  {
    *v106 = 257;
    if ((v106[8] & 1) == 0)
    {
      v106[8] = 1;
    }

    *&v106[4] = v47;
    goto LABEL_213;
  }

  v74 = get_adm_log_object();
  if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v107.__r_.__value_.__l.__data_) = 0;
    v75 = "Max channel count of the available ref stream is 0 ";
    goto LABEL_223;
  }

LABEL_192:
  v35 = 0;
  __p.__r_.__value_.__r.__words[0] = 1969448551;
LABEL_89:
  v93 = v35;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if (v93)
    {
      goto LABEL_91;
    }

LABEL_96:
    v41 = 0;
    *a1 = *&__p.__r_.__value_.__l.__data_;
    *(a1 + 24) = 0;
    goto LABEL_117;
  }

  if ((v35 & 1) == 0)
  {
    goto LABEL_96;
  }

LABEL_91:
  v36 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v37 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v36 = __p.__r_.__value_.__l.__size_;
  }

  if (v36)
  {
    buf.__r_.__value_.__r.__words[0] = &__p;
    v38 = std::__tree<std::__value_type<std::string,adm::DeviceConfiguration>,std::__map_value_compare<std::string,std::__value_type<std::string,adm::DeviceConfiguration>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,adm::DeviceConfiguration>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v98, &__p);
    v40 = v93;
    v37 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v40 = 1;
  }

  v41 = 1;
  if ((v40 & 1) != 0 && v37 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_117:
  if (v97 == 1 && SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  if (v41)
  {
LABEL_121:
    v89 = a1;
    memset(&__p, 0, sizeof(__p));
    v48 = v98;
    if (v98 == v99)
    {
      v72 = 0;
      v49 = 0;
      v71 = 0;
    }

    else
    {
      v49 = 0;
      do
      {
        if ((v48[11] & 1) != 0 || (*(v48 + 97) & 1) != 0 || (v48[13] & 1) != 0 || (*(v48 + 109) & 1) != 0 || (*(v48 + 116) & 1) != 0 || *(v48 + 124) == 1)
        {
          if (v49 >= __p.__r_.__value_.__r.__words[2])
          {
            v53 = 0x8E38E38E38E38E39 * ((v49 - __p.__r_.__value_.__r.__words[0]) >> 3);
            v54 = v53 + 1;
            if (v53 + 1 > 0x38E38E38E38E38ELL)
            {
              std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
            }

            if (0x1C71C71C71C71C72 * ((__p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0]) >> 3) > v54)
            {
              v54 = 0x1C71C71C71C71C72 * ((__p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0]) >> 3);
            }

            if (0x8E38E38E38E38E39 * ((__p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0]) >> 3) >= 0x1C71C71C71C71C7)
            {
              v55 = 0x38E38E38E38E38ELL;
            }

            else
            {
              v55 = v54;
            }

            if (v55)
            {
              std::allocator<adm::DeviceConfiguration>::allocate_at_least[abi:ne200100](v55);
            }

            v56 = 8 * ((v49 - __p.__r_.__value_.__r.__words[0]) >> 3);
            v57 = *(v48 + 7);
            *(v56 + 16) = v48[9];
            *v56 = v57;
            v48[8] = 0;
            v48[9] = 0;
            v48[7] = 0;
            v58 = *(v48 + 109);
            v59 = *(v48 + 6);
            *(v56 + 24) = *(v48 + 5);
            *(v56 + 53) = v58;
            *(v56 + 40) = v59;
            v60 = __p.__r_.__value_.__l.__size_;
            v61 = __p.__r_.__value_.__r.__words[0];
            v94.__r_.__value_.__r.__words[0] = &__p;
            v94.__r_.__value_.__l.__size_ = &v107;
            v94.__r_.__value_.__r.__words[2] = &buf;
            v62 = __p.__r_.__value_.__r.__words[0];
            v63 = 72 * v53 + __p.__r_.__value_.__r.__words[0] - __p.__r_.__value_.__l.__size_;
            buf.__r_.__value_.__r.__words[0] = v56 + __p.__r_.__value_.__r.__words[0] - __p.__r_.__value_.__l.__size_;
            v107.__r_.__value_.__r.__words[0] = buf.__r_.__value_.__r.__words[0];
            v64 = buf.__r_.__value_.__r.__words[0];
            if (__p.__r_.__value_.__r.__words[0] == __p.__r_.__value_.__l.__size_)
            {
              LOBYTE(v95) = 1;
            }

            else
            {
              do
              {
                v65 = *v62;
                *(v64 + 16) = *(v62 + 16);
                *v64 = v65;
                *(v62 + 8) = 0;
                *(v62 + 16) = 0;
                *v62 = 0;
                v66 = *(v62 + 24);
                v67 = *(v62 + 40);
                *(v64 + 53) = *(v62 + 53);
                *(v64 + 40) = v67;
                *(v64 + 24) = v66;
                v62 += 72;
                v64 += 72;
              }

              while (v62 != v60);
              buf.__r_.__value_.__r.__words[0] = v64;
              LOBYTE(v95) = 1;
              do
              {
                if (*(v61 + 23) < 0)
                {
                  operator delete(*v61);
                }

                v61 += 72;
              }

              while (v61 != v60);
            }

            v49 = v56 + 72;
            std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<adm::DeviceConfiguration>,adm::DeviceConfiguration*>>::~__exception_guard_exceptions[abi:ne200100](&v94);
            v68 = __p.__r_.__value_.__r.__words[0];
            __p.__r_.__value_.__r.__words[0] = v63;
            *&__p.__r_.__value_.__r.__words[1] = (v56 + 72);
            if (v68)
            {
              operator delete(v68);
            }
          }

          else
          {
            v50 = *(v48 + 7);
            *(v49 + 16) = v48[9];
            *v49 = v50;
            v48[8] = 0;
            v48[9] = 0;
            v48[7] = 0;
            v51 = *(v48 + 5);
            v52 = *(v48 + 6);
            *(v49 + 53) = *(v48 + 109);
            *(v49 + 40) = v52;
            *(v49 + 24) = v51;
            v49 += 72;
          }

          __p.__r_.__value_.__l.__size_ = v49;
        }

        v69 = v48[1];
        if (v69)
        {
          do
          {
            v70 = v69;
            v69 = *v69;
          }

          while (v69);
        }

        else
        {
          do
          {
            v70 = v48[2];
            v31 = *v70 == v48;
            v48 = v70;
          }

          while (!v31);
        }

        v48 = v70;
      }

      while (v70 != v99);
      v71 = __p.__r_.__value_.__r.__words[0];
      v72 = __p.__r_.__value_.__r.__words[2];
    }

    *v89 = v71;
    *(v89 + 8) = v49;
    *(v89 + 16) = v72;
    memset(&__p, 0, sizeof(__p));
    *(v89 + 24) = 1;
    v94.__r_.__value_.__r.__words[0] = &__p;
    std::vector<adm::DeviceConfiguration>::__destroy_vector::operator()[abi:ne200100](&v94);
  }

LABEL_159:
  std::__tree<std::__value_type<std::string,adm::DeviceConfiguration>,std::__map_value_compare<std::string,std::__value_type<std::string,adm::DeviceConfiguration>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,adm::DeviceConfiguration>>>::destroy(v99[0]);
  v73 = *MEMORY[0x277D85DE8];
}

void sub_223BCC5CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, void *a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (*(v53 - 185) < 0)
  {
    operator delete(*(v53 - 208));
  }

  if (a38 == 1 && a31 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,adm::DeviceConfiguration>,std::__map_value_compare<std::string,std::__value_type<std::string,adm::DeviceConfiguration>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,adm::DeviceConfiguration>>>::destroy(a40);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::string,adm::DeviceConfiguration>,std::__map_value_compare<std::string,std::__value_type<std::string,adm::DeviceConfiguration>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,adm::DeviceConfiguration>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v2;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v2 + 4) & 0x80) == 0)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v4 + 4, a2) & 0x80) == 0)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_223BCC848(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,adm::DeviceConfiguration>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,adm::DeviceConfiguration>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::string *anonymous namespace::mergeConfigs(std::string *this, const std::string *__str, const DeviceConfiguration *a3)
{
  v4 = this;
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    this = std::string::operator=(this, __str);
  }

  if (__str[1].__r_.__value_.__s.__data_[8] == 1)
  {
    data = __str[1].__r_.__value_.__l.__data_;
    v4[1].__r_.__value_.__s.__data_[8] = __str[1].__r_.__value_.__s.__data_[8];
    v4[1].__r_.__value_.__r.__words[0] = data;
  }

  if (__str[1].__r_.__value_.__s.__data_[17] == 1)
  {
    LOWORD(v4[1].__r_.__value_.__r.__words[2]) = __str[1].__r_.__value_.__r.__words[2];
  }

  if (__str[2].__r_.__value_.__s.__data_[0] == 1)
  {
    v7 = HIDWORD(__str[1].__r_.__value_.__r.__words[2]);
    v4[2].__r_.__value_.__s.__data_[0] = __str[2].__r_.__value_.__s.__data_[0];
    HIDWORD(v4[1].__r_.__value_.__r.__words[2]) = v7;
  }

  if (__str[2].__r_.__value_.__s.__data_[5] == 1)
  {
    WORD2(v4[2].__r_.__value_.__r.__words[0]) = WORD2(__str[2].__r_.__value_.__r.__words[0]);
  }

  if (__str[2].__r_.__value_.__s.__data_[12] == 1)
  {
    v8 = __str[2].__r_.__value_.__r.__words[1];
    v4[2].__r_.__value_.__s.__data_[12] = __str[2].__r_.__value_.__s.__data_[12];
    LODWORD(v4[2].__r_.__value_.__r.__words[1]) = v8;
  }

  if (__str[2].__r_.__value_.__s.__data_[20] == 1)
  {
    v9 = __str[2].__r_.__value_.__r.__words[2];
    v4[2].__r_.__value_.__s.__data_[20] = __str[2].__r_.__value_.__s.__data_[20];
    LODWORD(v4[2].__r_.__value_.__r.__words[2]) = v9;
  }

  return this;
}

void std::__tree<std::__value_type<std::string,adm::DeviceConfiguration>,std::__map_value_compare<std::string,std::__value_type<std::string,adm::DeviceConfiguration>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,adm::DeviceConfiguration>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,adm::DeviceConfiguration>,std::__map_value_compare<std::string,std::__value_type<std::string,adm::DeviceConfiguration>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,adm::DeviceConfiguration>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,adm::DeviceConfiguration>,std::__map_value_compare<std::string,std::__value_type<std::string,adm::DeviceConfiguration>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,adm::DeviceConfiguration>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig,0>((a1 + 4));

    operator delete(a1);
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,adm::DeviceConfiguration>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,adm::DeviceConfiguration>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t adm::config_policy::getIOContextConfiguration(uint64_t this, const adm::ConfigurationChangeRequest *a2)
{
  if (*a2)
  {
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    adm::config_policy::getPrimaryStreamInfo(v14, a2);
    v3 = v14[1];
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "voice isolation conferencing");
      v4 = std::__tree<std::string>::find<std::string>(a2 + 8, __p);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      if ((a2 + 16) != v4)
      {
        std::allocator<CA::StreamDescription>::allocate_at_least[abi:ne200100](1uLL);
      }
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "spatial playback");
    if ((a2 + 16) == std::__tree<std::string>::find<std::string>(a2 + 8, __p))
    {
      std::string::basic_string[abi:ne200100]<0>(v10, "spatial channel virtualization only");
      v5 = ((a2 + 16) != std::__tree<std::string>::find<std::string>(a2 + 8, v10)) & *(a2 + 152);
      if (v11 < 0)
      {
        operator delete(v10[0]);
      }
    }

    else
    {
      v5 = *(a2 + 152);
    }

    if (v13 < 0)
    {
      operator delete(__p[0]);
      if (v5)
      {
LABEL_16:
        v6 = *(a2 + 16);
        if (*v6 == 0x10000)
        {
          v8 = vcnt_s8(v6[1]);
        }

        else if (!*v6)
        {
          v7 = v6[2];
        }

        v9 = *(v3 + 19);
        std::allocator<CA::StreamDescription>::allocate_at_least[abi:ne200100](1uLL);
      }
    }

    else if (v5)
    {
      goto LABEL_16;
    }

    if (v15 == 1)
    {
      std::allocator<CA::StreamDescription>::allocate_at_least[abi:ne200100](1uLL);
    }

    std::allocator<CA::StreamDescription>::allocate_at_least[abi:ne200100](1uLL);
  }

  *(this + 16) = 0u;
  *(this + 32) = 0u;
  *this = 0u;
  *(this + 48) = 1;
  return this;
}

uint64_t std::allocator_traits<std::allocator<CA::StreamDescription>>::construct[abi:ne200100]<CA::StreamDescription,double const&,int,CA::CommonPCMFormat,BOOL,void,0>(uint64_t result, int a2, int a3, char a4, double a5)
{
  v5 = 0.0;
  if (a3 <= 2)
  {
    if (a4)
    {
      v6 = 9;
    }

    else
    {
      v6 = 41;
    }

    v7 = 4 * a2;
    if ((a4 & 1) == 0)
    {
      v7 = 4;
    }

    v8 = 32;
    if (a4)
    {
      v9 = 12;
    }

    else
    {
      v9 = 44;
    }

    v10 = 2 * a2;
    if ((a4 & 1) == 0)
    {
      v10 = 2;
    }

    if (a3 == 2)
    {
      v5 = a5;
      v11 = 1819304813;
    }

    else
    {
      v11 = 0;
    }

    if (a3 != 2)
    {
      v9 = 0;
      v10 = 0;
    }

    v12 = a3 == 2;
    if (a3 == 2)
    {
      v13 = a2;
    }

    else
    {
      v13 = 0;
    }

    if (a3 == 2)
    {
      v14 = 16;
    }

    else
    {
      v14 = 0;
    }

    v15 = a3 == 1;
    goto LABEL_47;
  }

  if (a3 != 3)
  {
    if (a4)
    {
      v6 = 9;
    }

    else
    {
      v6 = 41;
    }

    v7 = 8 * a2;
    if ((a4 & 1) == 0)
    {
      v7 = 8;
    }

    v8 = 64;
    if (a4)
    {
      v9 = 12;
    }

    else
    {
      v9 = 44;
    }

    v10 = 4 * a2;
    if ((a4 & 1) == 0)
    {
      v10 = 4;
    }

    if (a3 == 5)
    {
      v5 = a5;
      v11 = 1819304813;
    }

    else
    {
      v11 = 0;
    }

    if (a3 != 5)
    {
      v9 = 0;
      v10 = 0;
    }

    v12 = a3 == 5;
    if (a3 == 5)
    {
      v13 = a2;
    }

    else
    {
      v13 = 0;
    }

    if (a3 == 5)
    {
      v14 = 32;
    }

    else
    {
      v14 = 0;
    }

    v15 = a3 == 4;
LABEL_47:
    if (v15)
    {
      v16 = 1819304813;
    }

    else
    {
      a5 = v5;
      v16 = v11;
    }

    if (v15)
    {
      v17 = 1;
    }

    else
    {
      v6 = v9;
      v7 = v10;
      v17 = v12;
    }

    if (!v15)
    {
      a2 = v13;
      v8 = v14;
    }

    goto LABEL_55;
  }

  if (a4)
  {
    v6 = 3084;
  }

  else
  {
    v6 = 3116;
  }

  v7 = 4 * a2;
  if ((a4 & 1) == 0)
  {
    v7 = 4;
  }

  v8 = 32;
  v17 = 1;
  v16 = 1819304813;
LABEL_55:
  *result = a5;
  *(result + 8) = v16;
  *(result + 12) = v6;
  *(result + 16) = v7;
  *(result + 20) = v17;
  *(result + 24) = v7;
  *(result + 28) = a2;
  *(result + 32) = v8;
  *(result + 36) = 0;
  return result;
}

void adm::IOContextConfiguration::~IOContextConfiguration(adm::IOContextConfiguration *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

void adm::graph::Kernel::doGetExpectedOutputSamplesForInputSamples(adm::graph::Kernel *this, unint64_t a2, unint64_t *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  adm_log_object = get_adm_log_object();
  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_FAULT))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[5],char [5],0>(v5);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "operation is not supported");
  __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
}

void sub_223BCD17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a10);
  v33 = -96;
  v34 = v31;
  do
  {
    v34 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v34) - 32;
    v33 += 32;
  }

  while (v33);
  v35 = &a19;
  v36 = -64;
  do
  {
    v35 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v35) - 32;
    v36 += 32;
  }

  while (v36);
  v37 = &a27;
  v38 = -64;
  do
  {
    v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v37) - 32;
    v38 += 32;
  }

  while (v38);
  for (i = 32; i != -32; i -= 32)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a31 + i);
  }

  _Unwind_Resume(a1);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[5],char [5],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[112],char [112],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[9],char [9],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

void adm::graph::Kernel::doGetRequiredInputSamplesForOutputSamples(adm::graph::Kernel *this)
{
  v4 = *MEMORY[0x277D85DE8];
  adm_log_object = get_adm_log_object();
  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_FAULT))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[5],char [5],0>(v3);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "operation is not supported");
  __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
}

void sub_223BCD740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a10);
  v33 = -96;
  v34 = v31;
  do
  {
    v34 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v34) - 32;
    v33 += 32;
  }

  while (v33);
  v35 = &a19;
  v36 = -64;
  do
  {
    v35 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v35) - 32;
    v36 += 32;
  }

  while (v36);
  v37 = &a27;
  v38 = -64;
  do
  {
    v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v37) - 32;
    v38 += 32;
  }

  while (v38);
  for (i = 32; i != -32; i -= 32)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a31 + i);
  }

  _Unwind_Resume(a1);
}

void adm::graph::Kernel::doGetLatency(adm::graph::Kernel *this)
{
  v4 = *MEMORY[0x277D85DE8];
  adm_log_object = get_adm_log_object();
  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_FAULT))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[5],char [5],0>(v3);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "operation is not supported");
  __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
}

void sub_223BCDB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a10);
  v33 = -96;
  v34 = v31;
  do
  {
    v34 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v34) - 32;
    v33 += 32;
  }

  while (v33);
  v35 = &a19;
  v36 = -64;
  do
  {
    v35 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v35) - 32;
    v36 += 32;
  }

  while (v36);
  v37 = &a27;
  v38 = -64;
  do
  {
    v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v37) - 32;
    v38 += 32;
  }

  while (v38);
  for (i = 32; i != -32; i -= 32)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a31 + i);
  }

  _Unwind_Resume(a1);
}

void adm::graph::Kernel::doUnregisterClient(adm::graph::Kernel *this)
{
  v4 = *MEMORY[0x277D85DE8];
  adm_log_object = get_adm_log_object();
  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_FAULT))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[5],char [5],0>(v3);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "operation is not supported");
  __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
}

void sub_223BCDFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a10);
  v33 = -96;
  v34 = v31;
  do
  {
    v34 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v34) - 32;
    v33 += 32;
  }

  while (v33);
  v35 = &a19;
  v36 = -64;
  do
  {
    v35 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v35) - 32;
    v36 += 32;
  }

  while (v36);
  v37 = &a27;
  v38 = -64;
  do
  {
    v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v37) - 32;
    v38 += 32;
  }

  while (v38);
  for (i = 32; i != -32; i -= 32)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a31 + i);
  }

  _Unwind_Resume(a1);
}

void adm::graph::Kernel::doEndProcessing(adm::graph::Kernel *this)
{
  v4 = *MEMORY[0x277D85DE8];
  adm_log_object = get_adm_log_object();
  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_FAULT))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[5],char [5],0>(v3);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "operation is not supported");
  __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
}

void sub_223BCE3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a10);
  v33 = -96;
  v34 = v31;
  do
  {
    v34 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v34) - 32;
    v33 += 32;
  }

  while (v33);
  v35 = &a19;
  v36 = -64;
  do
  {
    v35 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v35) - 32;
    v36 += 32;
  }

  while (v36);
  v37 = &a27;
  v38 = -64;
  do
  {
    v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v37) - 32;
    v38 += 32;
  }

  while (v38);
  for (i = 32; i != -32; i -= 32)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a31 + i);
  }

  _Unwind_Resume(a1);
}

void adm::graph::Kernel::doEndCycle()
{
  v3 = *MEMORY[0x277D85DE8];
  adm_log_object = get_adm_log_object();
  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_FAULT))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[5],char [5],0>(v2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "operation is not supported");
  __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
}

void sub_223BCE830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a10);
  v33 = -96;
  v34 = v31;
  do
  {
    v34 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v34) - 32;
    v33 += 32;
  }

  while (v33);
  v35 = &a19;
  v36 = -64;
  do
  {
    v35 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v35) - 32;
    v36 += 32;
  }

  while (v36);
  v37 = &a27;
  v38 = -64;
  do
  {
    v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v37) - 32;
    v38 += 32;
  }

  while (v38);
  for (i = 32; i != -32; i -= 32)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a31 + i);
  }

  _Unwind_Resume(a1);
}

void adm::graph::Kernel::doClientIO()
{
  v3 = *MEMORY[0x277D85DE8];
  adm_log_object = get_adm_log_object();
  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_FAULT))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[5],char [5],0>(v2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "operation is not supported");
  __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
}

void sub_223BCEC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a10);
  v33 = -96;
  v34 = v31;
  do
  {
    v34 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v34) - 32;
    v33 += 32;
  }

  while (v33);
  v35 = &a19;
  v36 = -64;
  do
  {
    v35 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v35) - 32;
    v36 += 32;
  }

  while (v36);
  v37 = &a27;
  v38 = -64;
  do
  {
    v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v37) - 32;
    v38 += 32;
  }

  while (v38);
  for (i = 32; i != -32; i -= 32)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a31 + i);
  }

  _Unwind_Resume(a1);
}

void adm::graph::Kernel::doBeginCycle()
{
  v3 = *MEMORY[0x277D85DE8];
  adm_log_object = get_adm_log_object();
  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_FAULT))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[5],char [5],0>(v2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "operation is not supported");
  __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
}

void sub_223BCF0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a10);
  v33 = -96;
  v34 = v31;
  do
  {
    v34 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v34) - 32;
    v33 += 32;
  }

  while (v33);
  v35 = &a19;
  v36 = -64;
  do
  {
    v35 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v35) - 32;
    v36 += 32;
  }

  while (v36);
  v37 = &a27;
  v38 = -64;
  do
  {
    v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v37) - 32;
    v38 += 32;
  }

  while (v38);
  for (i = 32; i != -32; i -= 32)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a31 + i);
  }

  _Unwind_Resume(a1);
}

void adm::graph::Kernel::doBeginProcessing(adm::graph::Kernel *this)
{
  v4 = *MEMORY[0x277D85DE8];
  adm_log_object = get_adm_log_object();
  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_FAULT))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[5],char [5],0>(v3);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "operation is not supported");
  __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
}

void sub_223BCF4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a10);
  v33 = -96;
  v34 = v31;
  do
  {
    v34 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v34) - 32;
    v33 += 32;
  }

  while (v33);
  v35 = &a19;
  v36 = -64;
  do
  {
    v35 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v35) - 32;
    v36 += 32;
  }

  while (v36);
  v37 = &a27;
  v38 = -64;
  do
  {
    v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v37) - 32;
    v38 += 32;
  }

  while (v38);
  for (i = 32; i != -32; i -= 32)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a31 + i);
  }

  _Unwind_Resume(a1);
}

void adm::graph::Kernel::doRegisterClient(adm::graph::Kernel *this)
{
  v4 = *MEMORY[0x277D85DE8];
  adm_log_object = get_adm_log_object();
  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_FAULT))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[5],char [5],0>(v3);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "operation is not supported");
  __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
}

void sub_223BCF920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a10);
  v33 = -96;
  v34 = v31;
  do
  {
    v34 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v34) - 32;
    v33 += 32;
  }

  while (v33);
  v35 = &a19;
  v36 = -64;
  do
  {
    v35 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v35) - 32;
    v36 += 32;
  }

  while (v36);
  v37 = &a27;
  v38 = -64;
  do
  {
    v37 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(v37) - 32;
    v38 += 32;
  }

  while (v38);
  for (i = 32; i != -32; i -= 32)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a31 + i);
  }

  _Unwind_Resume(a1);
}

void adm::graph::DSPKernel::doEndProcessing(adm::graph::DSPKernel *this)
{
  v8 = *MEMORY[0x277D85DE8];
  adm_log_object = get_adm_log_object();
  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7[0]) = 0;
    _os_log_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_DEFAULT, "EndProcessing handler is called, IOStopped", v7, 2u);
  }

  v3 = *(this + 21);
  if (v3)
  {
    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_896);
    }

    if (AudioIssueDetectorLibraryLoader(void)::libSym)
    {
      v4 = AudioIssueDetectorLibraryLoader(void)::libSym(v3);
      if (!v4)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v4 = -1;
    }

    v5 = get_adm_log_object();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = v4;
      _os_log_error_impl(&dword_223B4A000, v5, OS_LOG_TYPE_ERROR, "Failed to flush RTAID due to error %i", v7, 8u);
    }
  }

LABEL_12:
  v6 = *MEMORY[0x277D85DE8];
}

void sub_223BCFBA4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *___Z31AudioIssueDetectorLibraryLoaderv_block_invoke_902()
{
  v0 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v0 || (v0 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1)) != 0)
  {
    v1 = v0;
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v0, "AudioIssueDetectorCreate");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorInitialize");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorDispose");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetNodeFormat");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetNodeFormatWithDirection");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorReset");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorAnalyzeBuffer");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorUpdateReportingSessions");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorRemoveNode");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetUplinkMute");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetDownlinkVolume");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetRouteSpecificDownlinkGainAdjustment");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetSmartCaseMicMute");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorFlush");
  }

  result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib", 1);
  if (result)
  {
    result = dlsym(result, "RegisterAudioUnits_Analyzer");
    if (result)
    {

      return (result)();
    }
  }

  return result;
}

void adm::graph::DSPKernel::createConverters(adm::graph::DSPKernel *this, const adm::graph::KernelConfiguration *a2, StreamDescription *(*const *a3)(StreamDescription *__return_ptr __struct_ptr retstr, const StreamDescription *), void (**a4)(__int128 *__return_ptr, AudioConverterRef), int a5)
{
  __p = 0;
  v70 = 0;
  v71 = 0;
  std::vector<CA::StreamDescription>::__init_with_size[abi:ne200100]<CA::StreamDescription*,CA::StreamDescription*>(&__p, *(a2 + 1), *(a2 + 2), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 2) - *(a2 + 1)) >> 3));
  v9 = __p;
  v10 = v70;
  if (__p != v70)
  {
    v11 = *a3;
    do
    {
      v11(&v74, v9);
      v12 = v74;
      v13 = v75;
      v9[4] = v76;
      *v9 = v12;
      *(v9 + 1) = v13;
      v9 += 5;
    }

    while (v9 != v10);
  }

  v14 = (this + 32);
  std::vector<std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>>::reserve(this + 4, 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 2) - *(a2 + 1)) >> 3));
  v15 = *(a2 + 1);
  v16 = 4 * a5;
  if (*(a2 + 2) != v15)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      if (*(v15 + v17 + 8) != 1819304813)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v73, v18);
        v60 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v74, "Non-LinearPCM format for input terminal index ", &v73);
        MEMORY[0x223DF3FB0](exception, &v74, v60);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v19 = __p;
      if (0xCCCCCCCCCCCCCCCDLL * ((v70 - __p) >> 3) <= v18)
      {
        std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
      }

      outAudioConverter = 0;
      if (AudioConverterNew((v15 + v17), (__p + v17), &outAudioConverter))
      {
        v57 = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v73, v18);
        v58 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v74, "Failed to create preprocessing converter for stream ", &v73);
        MEMORY[0x223DF3FB0](v57, &v74, v58);
        __cxa_throw(v57, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v21 = *(this + 5);
      v20 = *(this + 6);
      if (v21 >= v20)
      {
        v23 = *v14;
        v24 = v21 - *v14;
        v25 = v24 >> 3;
        v26 = (v24 >> 3) + 1;
        if (v26 >> 61)
        {
          std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
        }

        v27 = v20 - v23;
        if (v27 >> 2 > v26)
        {
          v26 = v27 >> 2;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v28 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v26;
        }

        v76 = v14;
        if (v28)
        {
          std::allocator<CA::AudioBuffersDeprecated>::allocate_at_least[abi:ne200100](v28);
        }

        *(8 * v25) = outAudioConverter;
        v22 = 8 * v25 + 8;
        memcpy(0, v23, v24);
        v29 = *(this + 4);
        *(this + 4) = 0;
        *(this + 5) = v22;
        v30 = *(this + 6);
        *(this + 6) = 0;
        *&v75 = v29;
        *(&v75 + 1) = v30;
        *&v74 = v29;
        *(&v74 + 1) = v29;
        std::__split_buffer<std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>>::~__split_buffer(&v74);
        v14 = (this + 32);
      }

      else
      {
        *v21 = outAudioConverter;
        v22 = (v21 + 8);
      }

      *(this + 5) = v22;
      LODWORD(v74) = v16;
      v31 = *(this + 11);
      if (v31 >= *(this + 12))
      {
        v32 = std::vector<CA::AudioBuffersDeprecated>::__emplace_back_slow_path<CA::StreamDescription const&,unsigned int>(this + 80, &v19[v17], &v74);
      }

      else
      {
        CA::AudioBuffersBase::AudioBuffersBase(*(this + 11), &v19[v17]);
        v32 = v31 + 8;
        *(this + 11) = v31 + 8;
      }

      *(this + 11) = v32;
      CA::AudioBuffersDeprecated::Prepare(*(v32 - 8));
      ++v18;
      v15 = *(a2 + 1);
      v17 += 40;
    }

    while (v18 < 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 2) - v15) >> 3));
  }

  outAudioConverter = 0;
  v67 = 0;
  v68 = 0;
  std::vector<CA::StreamDescription>::__init_with_size[abi:ne200100]<CA::StreamDescription*,CA::StreamDescription*>(&outAudioConverter, *(a2 + 4), *(a2 + 5), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 5) - *(a2 + 4)) >> 3));
  v34 = outAudioConverter;
  v33 = v67;
  if (outAudioConverter != v67)
  {
    v35 = *a4;
    v36 = outAudioConverter;
    do
    {
      v35(&v74, v36);
      v37 = v74;
      v38 = v75;
      *(v36 + 4) = v76;
      *v36 = v37;
      *(v36 + 1) = v38;
      v36 = (v36 + 40);
    }

    while (v36 != v33);
  }

  v39 = (this + 56);
  std::vector<std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>>::reserve(this + 7, 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 5) - *(a2 + 4)) >> 3));
  v40 = *(a2 + 4);
  if (*(a2 + 5) != v40)
  {
    v41 = 0;
    v42 = 0;
    do
    {
      if (*(v40 + v41 + 8) != 1819304813)
      {
        v63 = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v73, v42);
        v64 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v74, "Non-LinearPCM format for output terminal index ", &v73);
        MEMORY[0x223DF3FB0](v63, &v74, v64);
        __cxa_throw(v63, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v43 = outAudioConverter;
      if (0xCCCCCCCCCCCCCCCDLL * ((v67 - outAudioConverter) >> 3) <= v42)
      {
        std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
      }

      v72 = 0;
      if (AudioConverterNew((outAudioConverter + v41), (v40 + v41), &v72))
      {
        v61 = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v73, v42);
        v62 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v74, "Failed to create postprocessing converter for stream ", &v73);
        MEMORY[0x223DF3FB0](v61, &v74, v62);
        __cxa_throw(v61, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v45 = *(this + 8);
      v44 = *(this + 9);
      if (v45 >= v44)
      {
        v47 = *v39;
        v48 = v45 - *v39;
        v49 = v48 >> 3;
        v50 = (v48 >> 3) + 1;
        if (v50 >> 61)
        {
          std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
        }

        v51 = v44 - v47;
        if (v51 >> 2 > v50)
        {
          v50 = v51 >> 2;
        }

        if (v51 >= 0x7FFFFFFFFFFFFFF8)
        {
          v52 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v52 = v50;
        }

        v76 = v39;
        if (v52)
        {
          std::allocator<CA::AudioBuffersDeprecated>::allocate_at_least[abi:ne200100](v52);
        }

        *(8 * v49) = v72;
        v46 = 8 * v49 + 8;
        memcpy(0, v47, v48);
        v53 = *(this + 7);
        *(this + 7) = 0;
        *(this + 8) = v46;
        v54 = *(this + 9);
        *(this + 9) = 0;
        *&v75 = v53;
        *(&v75 + 1) = v54;
        *&v74 = v53;
        *(&v74 + 1) = v53;
        std::__split_buffer<std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>>::~__split_buffer(&v74);
        v39 = (this + 56);
      }

      else
      {
        *v45 = v72;
        v46 = (v45 + 8);
      }

      *(this + 8) = v46;
      LODWORD(v74) = v16;
      v55 = *(this + 14);
      if (v55 >= *(this + 15))
      {
        v56 = std::vector<CA::AudioBuffersDeprecated>::__emplace_back_slow_path<CA::StreamDescription const&,unsigned int>(this + 104, (v43 + v41), &v74);
      }

      else
      {
        CA::AudioBuffersBase::AudioBuffersBase(*(this + 14), (v43 + v41));
        v56 = v55 + 8;
        *(this + 14) = v55 + 8;
      }

      *(this + 14) = v56;
      CA::AudioBuffersDeprecated::Prepare(*(v56 - 8));
      ++v42;
      v40 = *(a2 + 4);
      v41 += 40;
    }

    while (v42 < 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 5) - v40) >> 3));
    v34 = outAudioConverter;
  }

  if (v34)
  {
    operator delete(v34);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void sub_223BD03E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::allocator<CA::AudioBuffersDeprecated>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::__split_buffer<std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>::reset[abi:ne200100]((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<CA::AudioBuffersDeprecated>::__emplace_back_slow_path<CA::StreamDescription const&,unsigned int>(uint64_t a1, const AudioStreamBasicDescription *a2, unsigned int *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 3;
  v4 = v3 + 1;
  if ((v3 + 1) >> 61)
  {
    std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v4)
  {
    v4 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  v18 = a1;
  if (v7)
  {
    std::allocator<CA::AudioBuffersDeprecated>::allocate_at_least[abi:ne200100](v7);
  }

  v15 = 0;
  v16 = 8 * v3;
  v17 = (8 * v3);
  v8 = *a3;
  CA::AudioBuffersBase::AudioBuffersBase((8 * v3), a2);
  *&v17 = 8 * v3 + 8;
  v9 = *(a1 + 8);
  v10 = (8 * v3 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CA::AudioBuffersDeprecated>,CA::AudioBuffersDeprecated*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<CA::AudioBuffersDeprecated>::~__split_buffer(&v15);
  return v14;
}

void sub_223BD06F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CA::AudioBuffersDeprecated>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t CA::AudioBuffersDeprecated::Prepare(CA::AudioBuffersDeprecated *this)
{
  result = ExtendedAudioBufferList_Prepare();
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "ExtendedAudioBufferList_Prepare failed");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  return result;
}

uint64_t adm::graph::DSPKernel::doClientIOPreProcessing(std::chrono::system_clock::time_point *a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v4 = (a1[5].__d_.__rep_ - a1[4].__d_.__rep_) >> 3;
  if (v4 != a3)
  {
    v6 = (a1[11].__d_.__rep_ - a1[10].__d_.__rep_) >> 3;
    goto LABEL_12;
  }

  v6 = (a1[11].__d_.__rep_ - a1[10].__d_.__rep_) >> 3;
  if (v6 != a3)
  {
LABEL_12:
    v7 = 1920231791;
    v15 = v6;
    v16 = v4;
    adm::util::RTLogger::log<unsigned long &,unsigned long,unsigned long>(a1 + 16, "numStreams = %u, mPreProcessingConverters size is %u, mPreProcessingABLs size is %u", &v17, &v16, &v15);
    return v7;
  }

  v7 = 0;
  if (a3)
  {
    v8 = 0;
    v9 = (a2 + 72);
    v10 = "mPreProcessingConverters is nullptr at index %u";
    while (1)
    {
      rep = a1[4].__d_.__rep_;
      if (v8 >= (a1[5].__d_.__rep_ - rep) >> 3)
      {
        std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
      }

      v12 = *(rep + 8 * v8);
      if (!v12)
      {
        break;
      }

      if (!*v9)
      {
        v10 = "inStreams ABL is nullptr at index %u";
        break;
      }

      v13 = a1[10].__d_.__rep_;
      if (v8 >= (a1[11].__d_.__rep_ - v13) >> 3)
      {
        std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
      }

      v7 = AudioConverterConvertComplexBuffer(v12, *(v9 - 2), *v9, (*(v13 + 8 * v8++) + 48)) | v7;
      v9 += 10;
      if (a3 == v8)
      {
        return v7;
      }
    }

    v7 = 1920231791;
    v16 = v8;
    adm::util::RTLogger::log<unsigned long &>(a1 + 16, v10, &v16);
  }

  return v7;
}

std::chrono::system_clock::time_point adm::util::RTLogger::log<unsigned long &,unsigned long,unsigned long>(std::chrono::system_clock::time_point *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  rep = a1->__d_.__rep_;
  if (LODWORD(a1->__d_.__rep_) >= 0x65)
  {
    result.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (result.__d_.__rep_ - a1[1].__d_.__rep_ < 501000)
    {
      goto LABEL_6;
    }

    rep = a1->__d_.__rep_;
  }

  result.__d_.__rep_ = *MEMORY[0x277D7F098];
  if (!*MEMORY[0x277D7F098])
  {
    __break(1u);
    return result;
  }

  v12 = *a5;
  v13 = *a4;
  v14 = *a3;
  v15 = caulk::rt_safe_memory_resource::rt_allocate(result.__d_.__rep_);
  *(v15 + 16) = 0;
  *(v15 + 24) = 3;
  *(v15 + 32) = a2;
  *(v15 + 40) = rep;
  *(v15 + 48) = v14;
  *(v15 + 56) = v13;
  *(v15 + 64) = v12;
  *v15 = &unk_28371BA90;
  *(v15 + 8) = 0;
  caulk::concurrent::messenger::enqueue(&a1[2], v15);
  result.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  a1[1].__d_.__rep_ = result.__d_.__rep_;
LABEL_6:
  if (LODWORD(a1->__d_.__rep_) != -1)
  {
    ++LODWORD(a1->__d_.__rep_);
  }

  return result;
}

std::chrono::system_clock::time_point adm::util::RTLogger::log<unsigned long &>(std::chrono::system_clock::time_point *a1, uint64_t a2, uint64_t *a3)
{
  rep = a1->__d_.__rep_;
  if (LODWORD(a1->__d_.__rep_) >= 0x65)
  {
    result.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (result.__d_.__rep_ - a1[1].__d_.__rep_ < 501000)
    {
      goto LABEL_6;
    }

    rep = a1->__d_.__rep_;
  }

  result.__d_.__rep_ = *MEMORY[0x277D7F098];
  if (!*MEMORY[0x277D7F098])
  {
    __break(1u);
    return result;
  }

  v8 = *a3;
  v9 = caulk::rt_safe_memory_resource::rt_allocate(result.__d_.__rep_);
  *(v9 + 16) = 0;
  *(v9 + 24) = 3;
  *(v9 + 32) = a2;
  *(v9 + 40) = rep;
  *(v9 + 48) = v8;
  *v9 = &unk_28371D488;
  *(v9 + 8) = 0;
  caulk::concurrent::messenger::enqueue(&a1[2], v9);
  result.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  a1[1].__d_.__rep_ = result.__d_.__rep_;
LABEL_6:
  if (LODWORD(a1->__d_.__rep_) != -1)
  {
    ++LODWORD(a1->__d_.__rep_);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<unsigned long &>(adm::util::RTLogLevel,char const*,unsigned long &)::{lambda(void)#1}>::perform(caulk::concurrent::message *a1)
{
  v2 = a1;
  adm::util::RTLogger::doLog<adm::graph::ExclaveDSPControllerClientImpl *>(adm::util::RTLogLevel,char const*,adm::graph::ExclaveDSPControllerClientImpl * &&)::{lambda(void)#1}::operator()(a1 + 24);
  return caulk::concurrent::details::rt_message_call<adm::CustomPropertyManager::onGraphParameterUpdate(adm::CustomPropertyManager::ParameterMapping const&,float)::$_0>::rt_cleanup::~rt_cleanup(&v2);
}

void caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<unsigned long &>(adm::util::RTLogLevel,char const*,unsigned long &)::{lambda(void)#1}>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x223DF43A0);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<unsigned long &,unsigned long,unsigned long>(adm::util::RTLogLevel,char const*,unsigned long &,unsigned long,unsigned long &&)::{lambda(void)#1}>::perform(caulk::concurrent::message *a1)
{
  v2 = a1;
  adm::util::RTLogger::doLog<unsigned long &,unsigned long,unsigned long>(adm::util::RTLogLevel,char const*,unsigned long &,unsigned long,unsigned long &&)::{lambda(void)#1}::operator()(a1 + 24);
  return caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<unsigned int &,float &,audiodsputility_parametererror_s const&,char const*>(adm::util::RTLogLevel,char const*,unsigned int &,float &,audiodsputility_parametererror_s const&,char const* &&)::{lambda(void)#1}>::rt_cleanup::~rt_cleanup(&v2);
}

void adm::util::RTLogger::doLog<unsigned long &,unsigned long,unsigned long>(adm::util::RTLogLevel,char const*,unsigned long &,unsigned long,unsigned long &&)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  caulk::make_string(*(a1 + 8), __p, *(a1 + 24), *(a1 + 32), *(a1 + 40));
  v2 = *a1;
  adm_log_object = get_adm_log_object();
  v4 = adm_log_object;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v11 = __p;
      if (v17 < 0)
      {
        v11 = __p[0];
      }

      goto LABEL_25;
    }

    if (v2 != 3)
    {
LABEL_14:
      if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v11 = __p;
      if (v17 < 0)
      {
        v11 = __p[0];
      }

LABEL_25:
      v14 = *(a1 + 16);
      *buf = 136315394;
      v19 = v11;
      v20 = 1024;
      v21 = v14;
      v7 = v4;
      v8 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
      _os_log_impl(&dword_223B4A000, v7, v8, "%s. Log counter = %u", buf, 0x12u);
      goto LABEL_27;
    }

    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
    {
      v9 = __p;
      if (v17 < 0)
      {
        v9 = __p[0];
      }

      v10 = *(a1 + 16);
      *buf = 136315394;
      v19 = v9;
      v20 = 1024;
      v21 = v10;
      _os_log_error_impl(&dword_223B4A000, v4, OS_LOG_TYPE_ERROR, "!!! ADM realtime error: %s. Log counter = %u", buf, 0x12u);
    }
  }

  else
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (!os_log_type_enabled(adm_log_object, OS_LOG_TYPE_INFO))
        {
          goto LABEL_27;
        }

        v5 = __p;
        if (v17 < 0)
        {
          v5 = __p[0];
        }

        v6 = *(a1 + 16);
        *buf = 136315394;
        v19 = v5;
        v20 = 1024;
        v21 = v6;
        v7 = v4;
        v8 = OS_LOG_TYPE_INFO;
        goto LABEL_26;
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEBUG))
    {
      v12 = __p;
      if (v17 < 0)
      {
        v12 = __p[0];
      }

      v13 = *(a1 + 16);
      *buf = 136315394;
      v19 = v12;
      v20 = 1024;
      v21 = v13;
      _os_log_debug_impl(&dword_223B4A000, v4, OS_LOG_TYPE_DEBUG, "%s. Log counter = %u", buf, 0x12u);
    }
  }

LABEL_27:
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<unsigned long &,unsigned long,unsigned long>(adm::util::RTLogLevel,char const*,unsigned long &,unsigned long,unsigned long &&)::{lambda(void)#1}>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x223DF43A0);
}

uint64_t adm::graph::DSPKernel::doClientIOPostProcessing(std::chrono::system_clock::time_point *a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v4 = (a1[8].__d_.__rep_ - a1[7].__d_.__rep_) >> 3;
  if (v4 != a3)
  {
    v6 = (a1[14].__d_.__rep_ - a1[13].__d_.__rep_) >> 3;
    goto LABEL_12;
  }

  v6 = (a1[14].__d_.__rep_ - a1[13].__d_.__rep_) >> 3;
  if (v6 != a3)
  {
LABEL_12:
    v7 = 1920231791;
    v15 = v6;
    v16 = v4;
    adm::util::RTLogger::log<unsigned long &,unsigned long,unsigned long>(a1 + 16, "numStreams = %u, mPostProcessingConverters size is %u, mPostProcessingABLs size is %u", &v17, &v16, &v15);
    return v7;
  }

  v7 = 0;
  if (a3)
  {
    v8 = 0;
    v9 = (a2 + 72);
    v10 = "mPostProcessingConverters is nullptr at index %u";
    while (1)
    {
      rep = a1[7].__d_.__rep_;
      if (v8 >= (a1[8].__d_.__rep_ - rep) >> 3)
      {
        std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
      }

      v12 = *(rep + 8 * v8);
      if (!v12)
      {
        break;
      }

      if (!*v9)
      {
        v10 = "outStreams ABL is nullptr at index %u";
        break;
      }

      v13 = a1[13].__d_.__rep_;
      if (v8 >= (a1[14].__d_.__rep_ - v13) >> 3)
      {
        std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
      }

      v7 = AudioConverterConvertComplexBuffer(v12, *(v9 - 2), (*(v13 + 8 * v8++) + 48), *v9) | v7;
      v9 += 10;
      if (a3 == v8)
      {
        return v7;
      }
    }

    v7 = 1920231791;
    v16 = v8;
    adm::util::RTLogger::log<unsigned long &>(a1 + 16, v10, &v16);
  }

  return v7;
}

BOOL adm::graph::isValid(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  if (v1 == v2)
  {
    adm_log_object = get_adm_log_object();
    result = os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v12 = 0;
    v7 = "Kernel configuration is not valid - no input terminal formats";
    v8 = &v12;
    goto LABEL_14;
  }

  v3 = a1[4];
  v4 = a1[5];
  if (v3 == v4)
  {
    adm_log_object = get_adm_log_object();
    result = os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v11 = 0;
    v7 = "Kernel configuration is not valid - no output terminal formats";
    v8 = &v11;
    goto LABEL_14;
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((v2 - v1) >> 3) != (a1[8] - a1[7]) >> 3)
  {
    adm_log_object = get_adm_log_object();
    result = os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v10 = 0;
    v7 = "Kernel configuration is not valid - number of input terminal formats and semantics don't match";
    v8 = &v10;
    goto LABEL_14;
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v3) >> 3) == (a1[11] - a1[10]) >> 3)
  {
    return 1;
  }

  adm_log_object = get_adm_log_object();
  result = os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v9 = 0;
    v7 = "Kernel configuration is not valid - number of output terminal formats and semantics don't match";
    v8 = &v9;
LABEL_14:
    _os_log_error_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_ERROR, v7, v8, 2u);
    return 0;
  }

  return result;
}

uint64_t adm::graph::isValid(uint64_t a1)
{
  __ec.__val_ = 0;
  v2 = std::system_category();
  __ec.__cat_ = v2;
  result = adm::graph::isValid(a1);
  if (!result)
  {
    return result;
  }

  std::__fs::filesystem::__status((a1 + 224), &__ec);
  if (!buf[0] || (__ec.__val_ = 0, __ec.__cat_ = v2, buf[0] == 255))
  {
    adm_log_object = get_adm_log_object();
    result = os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 0;
      v10 = "Kernel configuration is not valid - '.dspg' file doesn't exist";
      goto LABEL_31;
    }

    return result;
  }

  v5 = *(a1 + 152);
  v6 = *(a1 + 160);
  while (v5 != v6)
  {
    if ((*(v5 + 23) & 0x8000000000000000) != 0)
    {
      if (!*(v5 + 8))
      {
        goto LABEL_14;
      }
    }

    else if (!*(v5 + 23))
    {
      goto LABEL_14;
    }

    std::__fs::filesystem::__status(v5, &__ec);
    if (!buf[0] || (__ec.__val_ = 0, __ec.__cat_ = v2, buf[0] == 255))
    {
      adm_log_object = get_adm_log_object();
      result = os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 0;
        v10 = "Kernel configuration is not valid - '.austrip' file doesn't exist";
        goto LABEL_31;
      }

      return result;
    }

LABEL_14:
    v5 += 24;
  }

  v7 = *(a1 + 176);
  v8 = *(a1 + 184);
  while (1)
  {
    if (v7 == v8)
    {
      v9 = *(a1 + 316);
      if (v9 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      *buf = &v11;
      return (off_28371BAD8[v9])(buf, a1 + 304);
    }

    if ((*(v7 + 23) & 0x8000000000000000) != 0)
    {
      if (!*(v7 + 8))
      {
        goto LABEL_23;
      }
    }

    else if (!*(v7 + 23))
    {
      goto LABEL_23;
    }

    std::__fs::filesystem::__status(v7, &__ec);
    if (!buf[0])
    {
      break;
    }

    __ec.__val_ = 0;
    __ec.__cat_ = v2;
    if (buf[0] == 255)
    {
      break;
    }

LABEL_23:
    v7 += 24;
  }

  adm_log_object = get_adm_log_object();
  result = os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR);
  if (!result)
  {
    return result;
  }

  *buf = 0;
  v10 = "Kernel configuration is not valid - '.propstrip' file doesn't exist";
LABEL_31:
  _os_log_error_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_ERROR, v10, buf, 2u);
  return 0;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<adm::graph::isValid(adm::graph::DSPGraphKernelConfiguration const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,adm::graph::DSPGraphKernelConfiguration::FixedBlockSize,adm::graph::DSPGraphKernelConfiguration::VariableBlockSize> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8) & (HIDWORD(*a2) == 0);
  if (v2 == 1)
  {
    adm_log_object = get_adm_log_object();
    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_ERROR, "Kernel configuration is not valid - expected maximum block size can't be 0", v5, 2u);
    }
  }

  return v2 ^ 1u;
}

BOOL std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<adm::graph::isValid(adm::graph::DSPGraphKernelConfiguration const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,adm::graph::DSPGraphKernelConfiguration::FixedBlockSize,adm::graph::DSPGraphKernelConfiguration::VariableBlockSize> const&>(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    adm_log_object = get_adm_log_object();
    if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_ERROR, "Kernel configuration is not valid - block size can't be 0", v5, 2u);
    }
  }

  return v2 != 0;
}

BOOL adm::graph::operator==(uint64_t a1, uint64_t a2)
{
  if (!adm::graph::KernelConfiguration::operator==(a1, a2))
  {
    return 0;
  }

  v5 = *(a1 + 152);
  v6 = *(a1 + 160);
  v7 = *(a2 + 152);
  if (v6 - v5 != *(a2 + 160) - v7)
  {
    return 0;
  }

  if (v5 != v6)
  {
    do
    {
      v4.__data_ = v7;
      v8 = std::__fs::filesystem::operator==[abi:ne200100](v5, v4);
      if (!v8)
      {
        break;
      }

      ++v5;
      v7 += 24;
    }

    while (v5 != v6);
    if (!v8)
    {
      return 0;
    }
  }

  v9 = *(a1 + 176);
  v10 = *(a1 + 184);
  v11 = *(a2 + 176);
  if (v10 - v9 != *(a2 + 184) - v11)
  {
    return 0;
  }

  if (v9 != v10)
  {
    do
    {
      v4.__data_ = v11;
      v12 = std::__fs::filesystem::operator==[abi:ne200100](v9, v4);
      if (!v12)
      {
        break;
      }

      ++v9;
      v11 += 24;
    }

    while (v9 != v10);
    if (!v12)
    {
      return 0;
    }
  }

  v4.__data_ = (a2 + 224);
  return std::__fs::filesystem::operator==[abi:ne200100]((a1 + 224), v4);
}

BOOL std::__fs::filesystem::operator==[abi:ne200100](const std::__fs::filesystem::path *a1, std::__fs::filesystem::path::__string_view a2)
{
  v2 = *(a2.__data_ + 1);
  if (*(a2.__data_ + 23) >= 0)
  {
    a2.__size_ = *(a2.__data_ + 23);
  }

  else
  {
    a2.__data_ = *a2.__data_;
    a2.__size_ = v2;
  }

  return std::__fs::filesystem::path::__compare(a1, a2) == 0;
}

id get_adm_log_object(void)
{
  v1 = 0x281339000uLL;
  {
    v1 = 0x281339000;
    if (v4)
    {
      get_adm_log_object(void)::g_adm_log_object = os_log_create("com.apple.coreaudio", "audio_dsp_manager");
      v1 = 0x281339000;
    }
  }

  v2 = *(v1 + 2880);

  return v2;
}

void adm::graph::Node::~Node(void **this)
{
  adm::graph::Node::~Node(this);

  JUMPOUT(0x223DF43A0);
}

{
  *this = &unk_28371C990;
  v2 = 14;
  do
  {
    v2 -= 3;
    v3 = &this[v2];
    v4 = this[v2];
    if (v4)
    {
      v5 = v3[1];
      v6 = this[v2];
      if (v5 != v4)
      {
        do
        {
          v5 = std::unique_ptr<adm::graph::Terminal>::~unique_ptr[abi:ne200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = *v3;
      }

      v3[1] = v4;
      operator delete(v6);
    }
  }

  while (v2 != 8);
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t *std::unique_ptr<adm::graph::Terminal>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 120) == 1 && *(v2 + 119) < 0)
    {
      operator delete(*(v2 + 96));
    }

    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x223DF43A0](v2, 0x1012C4044313033);
  }

  return a1;
}

uint64_t non-virtual thunk toadm::graph::HostNode::kernelDidUnregisterClient(uint64_t this, int a2)
{
  v2 = *(this + 192);
  for (i = *(this + 200); v2 != i; v2 += 40)
  {
    this = std::function<void ()>::operator()(*(v2 + 32), a2);
  }

  return this;
}

uint64_t std::function<void ()(unsigned int)>::operator()(uint64_t a1, int a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

uint64_t non-virtual thunk toadm::graph::HostNode::kernelDidEndProcessing(uint64_t this, int a2)
{
  v2 = *(this + 168);
  for (i = *(this + 176); v2 != i; v2 += 40)
  {
    this = std::function<void ()>::operator()(*(v2 + 32), a2);
  }

  return this;
}

uint64_t non-virtual thunk toadm::graph::HostNode::kernelDidEndCycle(uint64_t result, int a2)
{
  v2 = *(result + 144);
  for (i = *(result + 152); v2 != i; v2 += 40)
  {
    result = std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::operator()(*(v2 + 32), a2);
  }

  return result;
}

uint64_t std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::operator()(uint64_t a1, int a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

uint64_t non-virtual thunk toadm::graph::HostNode::kernelDidPerformClientIO(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(result + 120);
  for (i = *(result + 128); v7 != i; v7 += 40)
  {
    result = std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator()(*(v7 + 32), a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator()(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a2;
  v11 = a4;
  v9 = a6;
  v10 = a5;
  v8 = a7;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v12, a3, &v11, &v10, &v9, &v8);
}

uint64_t non-virtual thunk toadm::graph::HostNode::kernelWillPerformClientIO(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(result + 96);
  for (i = *(result + 104); v7 != i; v7 += 40)
  {
    result = std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator()(*(v7 + 32), a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t non-virtual thunk toadm::graph::HostNode::kernelWillBeginCycle(uint64_t result, int a2)
{
  v2 = *(result + 72);
  for (i = *(result + 80); v2 != i; v2 += 40)
  {
    result = std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::operator()(*(v2 + 32), a2);
  }

  return result;
}

uint64_t non-virtual thunk toadm::graph::HostNode::kernelWillBeginProcessing(uint64_t this, int a2)
{
  v2 = *(this + 48);
  for (i = *(this + 56); v2 != i; v2 += 40)
  {
    this = std::function<void ()>::operator()(*(v2 + 32), a2);
  }

  return this;
}

uint64_t non-virtual thunk toadm::graph::HostNode::kernelWillRegisterClient(uint64_t this, int a2)
{
  v2 = *(this + 24);
  for (i = *(this + 32); v2 != i; v2 += 40)
  {
    this = std::function<void ()>::operator()(*(v2 + 32), a2);
  }

  return this;
}

void non-virtual thunk toadm::graph::HostNode::~HostNode(adm::graph::HostNode *this)
{
  adm::graph::HostNode::~HostNode((this - 128));

  JUMPOUT(0x223DF43A0);
}

{
  adm::graph::HostNode::~HostNode((this - 128));
}

void adm::graph::HostNode::~HostNode(adm::graph::HostNode *this)
{
  *this = &unk_28371C878;
  *(this + 16) = &unk_28371C930;
  v3 = (this + 320);
  std::vector<std::tuple<unsigned int,std::function<void ()>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 296);
  std::vector<std::tuple<unsigned int,std::function<void ()>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 272);
  std::vector<std::tuple<unsigned int,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 248);
  std::vector<std::tuple<unsigned int,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 224);
  std::vector<std::tuple<unsigned int,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 200);
  std::vector<std::tuple<unsigned int,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 176);
  std::vector<std::tuple<unsigned int,std::function<void ()>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 152);
  std::vector<std::tuple<unsigned int,std::function<void ()>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 18);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  adm::graph::Node::~Node(this);
}

{
  adm::graph::HostNode::~HostNode(this);

  JUMPOUT(0x223DF43A0);
}

void std::vector<std::tuple<unsigned int,std::function<void ()(unsigned int)>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::__function::__value_func<void ()>::~__value_func[abi:ne200100]((v4 - 32));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::tuple<unsigned int,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__value_func[abi:ne200100]((v4 - 32));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::tuple<unsigned int,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100]((v4 - 32));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t adm::graph::HostNode::kernelDidUnregisterClient(uint64_t this, int a2)
{
  v2 = *(this + 320);
  for (i = *(this + 328); v2 != i; v2 += 40)
  {
    this = std::function<void ()>::operator()(*(v2 + 32), a2);
  }

  return this;
}

uint64_t adm::graph::HostNode::kernelDidEndProcessing(uint64_t this, int a2)
{
  v2 = *(this + 296);
  for (i = *(this + 304); v2 != i; v2 += 40)
  {
    this = std::function<void ()>::operator()(*(v2 + 32), a2);
  }

  return this;
}

uint64_t adm::graph::HostNode::kernelDidEndCycle(uint64_t result, int a2)
{
  v2 = *(result + 272);
  for (i = *(result + 280); v2 != i; v2 += 40)
  {
    result = std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::operator()(*(v2 + 32), a2);
  }

  return result;
}

uint64_t adm::graph::HostNode::kernelDidPerformClientIO(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(result + 248);
  for (i = *(result + 256); v7 != i; v7 += 40)
  {
    result = std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator()(*(v7 + 32), a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t adm::graph::HostNode::kernelWillPerformClientIO(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(result + 224);
  for (i = *(result + 232); v7 != i; v7 += 40)
  {
    result = std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator()(*(v7 + 32), a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t adm::graph::HostNode::kernelWillBeginCycle(uint64_t result, int a2)
{
  v2 = *(result + 200);
  for (i = *(result + 208); v2 != i; v2 += 40)
  {
    result = std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::operator()(*(v2 + 32), a2);
  }

  return result;
}

uint64_t adm::graph::HostNode::kernelWillBeginProcessing(uint64_t this, int a2)
{
  v2 = *(this + 176);
  for (i = *(this + 184); v2 != i; v2 += 40)
  {
    this = std::function<void ()>::operator()(*(v2 + 32), a2);
  }

  return this;
}

uint64_t adm::graph::HostNode::kernelWillRegisterClient(uint64_t this, int a2)
{
  v2 = *(this + 152);
  for (i = *(this + 160); v2 != i; v2 += 40)
  {
    this = std::function<void ()>::operator()(*(v2 + 32), a2);
  }

  return this;
}

uint64_t adm::graph::HostNode::createGetExpectedOutputSamplesForInputSamplesHandler_@<X0>(adm::graph::HostNode *this@<X0>, void *a2@<X8>)
{
  result = *(this + 17);
  if (result && (result = (*(*result + 176))(result), (result & 1) != 0))
  {
    v6 = *(this + 17);
    v5 = *(this + 18);
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    *a2 = &unk_28371C250;
    a2[1] = v6;
    a2[2] = v5;
    a2[3] = a2;
  }

  else
  {
    a2[3] = 0;
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZNK3adm5graph8HostNode22createHandlerFunction_ILNS3_11HandlerTypeE9EEENS3_7HandlerIXT_EE8FunctionEvEUlDpOT_E_NS_9allocatorISD_EEFyyRyEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK3adm5graph8HostNode22createHandlerFunction_ILNS0_11HandlerTypeE9EEENS0_7HandlerIXT_EE8FunctionEvEUlDpOT_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZNK3adm5graph8HostNode22createHandlerFunction_ILNS3_11HandlerTypeE9EEENS3_7HandlerIXT_EE8FunctionEvEUlDpOT_E_NS_9allocatorISD_EEFyyRyEEclEOySG_(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = *(a1 + 8);
      if (v8)
      {
        atomic_fetch_add(v8 + 1, 1uLL);
        atomic_load(v8 + 2);
        if ((*(*v8 + 176))(v8))
        {
          v9 = (*(*v8 + 184))(v8, *a2, a3);
        }

        else
        {
          adm_log_object = get_adm_log_object();
          if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
          {
            *v14 = 0;
            _os_log_error_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_ERROR, "HandlerType::GetExpectedOutputSamplesForInputSamples is not supported", v14, 2u);
          }

          v9 = 0;
        }

        atomic_fetch_add(v8 + 1, 0xFFFFFFFFFFFFFFFFLL);
LABEL_14:
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        result = v9;
        goto LABEL_15;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = get_adm_log_object();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[13],char [13],0>(v14);
  }

  v9 = 0;
  result = 0;
  if (v7)
  {
    goto LABEL_14;
  }

LABEL_15:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_223BD247C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a2)
  {
    atomic_fetch_add((v40 + 8), 0xFFFFFFFFFFFFFFFFLL);
    v44 = __cxa_begin_catch(exception_object);
    adm_log_object = get_adm_log_object();
    v46 = os_log_type_enabled(adm_log_object, OS_LOG_TYPE_FAULT);
    if (a2 == 2)
    {
      if (v46)
      {
        v47 = (*(*v44 + 16))(v44);
        *(v42 - 160) = 136315138;
        *(v41 + 4) = v47;
        _os_log_fault_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_FAULT, "exception in handler: %s", (v42 - 160), 0xCu);
      }

      __cxa_end_catch();
      JUMPOUT(0x223BD22DCLL);
    }

    if (!v46)
    {
      __cxa_end_catch();
      JUMPOUT(0x223BD22A8);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[13],char [13],0>(&a33);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[13],char [13],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const* const&,char const*,0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const* const&>();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[19],char [19],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

void adm::graph::demangle(adm::graph *this, unint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, (a2 & 0x7FFFFFFFFFFFFFFFLL));
  applesauce::backtrace::detail::demangle_ex(&v5, __p);
  if (v7 == 1)
  {
    *this = v5;
    *(this + 2) = v6;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(this, "???");
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_223BD2A58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::json_ref<std::string,0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

double applesauce::backtrace::detail::demangle_ex(uint64_t a1, uint64_t a2)
{
  status = 0;
  outlen = 0;
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = __cxa_demangle(v3, 0, &outlen, &status);
  v6 = v4;
  if (status)
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    if (!v4)
    {
      return result;
    }

    goto LABEL_6;
  }

  v7 = outlen - 1;
  if (outlen - 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v9) = outlen - 1;
  if (outlen != 1)
  {
    memmove(&__dst, v4, v7);
  }

  *(&__dst + v7) = 0;
  result = *&__dst;
  *a1 = __dst;
  *(a1 + 16) = v9;
  *(a1 + 24) = 1;
  if (v6)
  {
LABEL_6:
    free(v6);
  }

  return result;
}

void sub_223BD2C1C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZNK3adm5graph8HostNode22createHandlerFunction_ILNS3_11HandlerTypeE9EEENS3_7HandlerIXT_EE8FunctionEvEUlDpOT_E_NS_9allocatorISD_EEFyyRyEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZNK3adm5graph8HostNode22createHandlerFunction_ILNS3_11HandlerTypeE9EEENS3_7HandlerIXT_EE8FunctionEvEUlDpOT_E_NS_9allocatorISD_EEFyyRyEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZNK3adm5graph8HostNode22createHandlerFunction_ILNS3_11HandlerTypeE9EEENS3_7HandlerIXT_EE8FunctionEvEUlDpOT_E_NS_9allocatorISD_EEFyyRyEE7__cloneEPNS0_6__baseISH_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_28371C250;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZNK3adm5graph8HostNode22createHandlerFunction_ILNS3_11HandlerTypeE9EEENS3_7HandlerIXT_EE8FunctionEvEUlDpOT_E_NS_9allocatorISD_EEFyyRyEED0Ev(void *a1)
{
  *a1 = &unk_28371C250;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x223DF43A0);
}

void *_ZNSt3__110__function6__funcIZNK3adm5graph8HostNode22createHandlerFunction_ILNS3_11HandlerTypeE9EEENS3_7HandlerIXT_EE8FunctionEvEUlDpOT_E_NS_9allocatorISD_EEFyyRyEED1Ev(void *a1)
{
  *a1 = &unk_28371C250;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t adm::graph::HostNode::createGetRequiredInputSamplesForOutputSamplesHandler_@<X0>(adm::graph::HostNode *this@<X0>, void *a2@<X8>)
{
  result = *(this + 17);
  if (result && (result = (*(*result + 160))(result), (result & 1) != 0))
  {
    v6 = *(this + 17);
    v5 = *(this + 18);
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    *a2 = &unk_28371C1C0;
    a2[1] = v6;
    a2[2] = v5;
    a2[3] = a2;
  }

  else
  {
    a2[3] = 0;
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZNK3adm5graph8HostNode22createHandlerFunction_ILNS3_11HandlerTypeE8EEENS3_7HandlerIXT_EE8FunctionEvEUlDpOT_E_NS_9allocatorISD_EEFyyEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK3adm5graph8HostNode22createHandlerFunction_ILNS0_11HandlerTypeE8EEENS0_7HandlerIXT_EE8FunctionEvEUlDpOT_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZNK3adm5graph8HostNode22createHandlerFunction_ILNS3_11HandlerTypeE8EEENS3_7HandlerIXT_EE8FunctionEvEUlDpOT_E_NS_9allocatorISD_EEFyyEEclEOy(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        atomic_fetch_add(v6 + 1, 1uLL);
        atomic_load(v6 + 2);
        if ((*(*v6 + 160))(v6))
        {
          v7 = (*(*v6 + 168))(v6, *a2);
        }

        else
        {
          adm_log_object = get_adm_log_object();
          if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
          {
            *v12 = 0;
            _os_log_error_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_ERROR, "HandlerType::GetRequiredInputSamplesForOutputSamples is not supported", v12, 2u);
          }

          v7 = 0;
        }

        atomic_fetch_add(v6 + 1, 0xFFFFFFFFFFFFFFFFLL);
LABEL_14:
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        result = v7;
        goto LABEL_15;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = get_adm_log_object();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[13],char [13],0>(v12);
  }

  v7 = 0;
  result = 0;
  if (v5)
  {
    goto LABEL_14;
  }

LABEL_15:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_223BD31C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a2)
  {
    atomic_fetch_add((v40 + 8), 0xFFFFFFFFFFFFFFFFLL);
    v43 = __cxa_begin_catch(exception_object);
    adm_log_object = get_adm_log_object();
    v45 = os_log_type_enabled(adm_log_object, OS_LOG_TYPE_FAULT);
    if (a2 == 2)
    {
      if (v45)
      {
        v46 = (*(*v43 + 16))(v43);
        *(v41 - 160) = 136315138;
        *(v41 - 156) = v46;
        _os_log_fault_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_FAULT, "exception in handler: %s", (v41 - 160), 0xCu);
      }

      __cxa_end_catch();
      JUMPOUT(0x223BD3028);
    }

    if (!v45)
    {
      __cxa_end_catch();
      JUMPOUT(0x223BD2FF4);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[13],char [13],0>(&a33);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZNK3adm5graph8HostNode22createHandlerFunction_ILNS3_11HandlerTypeE8EEENS3_7HandlerIXT_EE8FunctionEvEUlDpOT_E_NS_9allocatorISD_EEFyyEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZNK3adm5graph8HostNode22createHandlerFunction_ILNS3_11HandlerTypeE8EEENS3_7HandlerIXT_EE8FunctionEvEUlDpOT_E_NS_9allocatorISD_EEFyyEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZNK3adm5graph8HostNode22createHandlerFunction_ILNS3_11HandlerTypeE8EEENS3_7HandlerIXT_EE8FunctionEvEUlDpOT_E_NS_9allocatorISD_EEFyyEE7__cloneEPNS0_6__baseISG_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_28371C1C0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZNK3adm5graph8HostNode22createHandlerFunction_ILNS3_11HandlerTypeE8EEENS3_7HandlerIXT_EE8FunctionEvEUlDpOT_E_NS_9allocatorISD_EEFyyEED0Ev(void *a1)
{
  *a1 = &unk_28371C1C0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x223DF43A0);
}

void *_ZNSt3__110__function6__funcIZNK3adm5graph8HostNode22createHandlerFunction_ILNS3_11HandlerTypeE8EEENS3_7HandlerIXT_EE8FunctionEvEUlDpOT_E_NS_9allocatorISD_EEFyyEED1Ev(void *a1)
{
  *a1 = &unk_28371C1C0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t adm::graph::HostNode::createGetLatencyHandler_@<X0>(adm::graph::HostNode *this@<X0>, void *a2@<X8>)
{
  result = *(this + 17);
  if (result && (result = (*(*result + 144))(result), (result & 1) != 0))
  {
    v6 = *(this + 17);
    v5 = *(this + 18);
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    *a2 = &unk_28371C130;
    a2[1] = v6;
    a2[2] = v5;
    a2[3] = a2;
  }

  else
  {
    a2[3] = 0;
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZNK3adm5graph8HostNode22createHandlerFunction_ILNS3_11HandlerTypeE7EEENS3_7HandlerIXT_EE8FunctionEvEUlDpOT_E_NS_9allocatorISD_EEFxvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK3adm5graph8HostNode22createHandlerFunction_ILNS0_11HandlerTypeE7EEENS0_7HandlerIXT_EE8FunctionEvEUlDpOT_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZNK3adm5graph8HostNode22createHandlerFunction_ILNS3_11HandlerTypeE7EEENS3_7HandlerIXT_EE8FunctionEvEUlDpOT_E_NS_9allocatorISD_EEFxvEEclEv(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 8);
      if (v4)
      {
        atomic_fetch_add(v4 + 1, 1uLL);
        atomic_load(v4 + 2);
        if ((*(*v4 + 144))(v4))
        {
          v5 = (*(*v4 + 152))(v4);
        }

        else
        {
          adm_log_object = get_adm_log_object();
          if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
          {
            *v10 = 0;
            _os_log_error_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_ERROR, "HandlerType::GetLatency is not supported", v10, 2u);
          }

          v5 = 0;
        }

        atomic_fetch_add(v4 + 1, 0xFFFFFFFFFFFFFFFFLL);
LABEL_14:
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
        result = v5;
        goto LABEL_15;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v6 = get_adm_log_object();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[13],char [13],0>(v10);
  }

  v5 = 0;
  result = 0;
  if (v3)
  {
    goto LABEL_14;
  }

LABEL_15:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_223BD3B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a2)
  {
    atomic_fetch_add((v40 + 8), 0xFFFFFFFFFFFFFFFFLL);
    v43 = __cxa_begin_catch(exception_object);
    adm_log_object = get_adm_log_object();
    v45 = os_log_type_enabled(adm_log_object, OS_LOG_TYPE_FAULT);
    if (a2 == 2)
    {
      if (v45)
      {
        v46 = (*(*v43 + 16))(v43);
        *(v41 - 160) = 136315138;
        *(v41 - 156) = v46;
        _os_log_fault_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_FAULT, "exception in handler: %s", (v41 - 160), 0xCu);
      }

      __cxa_end_catch();
      JUMPOUT(0x223BD3960);
    }

    if (!v45)
    {
      __cxa_end_catch();
      JUMPOUT(0x223BD392CLL);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[13],char [13],0>(&a33);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZNK3adm5graph8HostNode22createHandlerFunction_ILNS3_11HandlerTypeE7EEENS3_7HandlerIXT_EE8FunctionEvEUlDpOT_E_NS_9allocatorISD_EEFxvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZNK3adm5graph8HostNode22createHandlerFunction_ILNS3_11HandlerTypeE7EEENS3_7HandlerIXT_EE8FunctionEvEUlDpOT_E_NS_9allocatorISD_EEFxvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZNK3adm5graph8HostNode22createHandlerFunction_ILNS3_11HandlerTypeE7EEENS3_7HandlerIXT_EE8FunctionEvEUlDpOT_E_NS_9allocatorISD_EEFxvEE7__cloneEPNS0_6__baseISG_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_28371C130;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZNK3adm5graph8HostNode22createHandlerFunction_ILNS3_11HandlerTypeE7EEENS3_7HandlerIXT_EE8FunctionEvEUlDpOT_E_NS_9allocatorISD_EEFxvEED0Ev(void *a1)
{
  *a1 = &unk_28371C130;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x223DF43A0);
}

void *_ZNSt3__110__function6__funcIZNK3adm5graph8HostNode22createHandlerFunction_ILNS3_11HandlerTypeE7EEENS3_7HandlerIXT_EE8FunctionEvEUlDpOT_E_NS_9allocatorISD_EEFxvEED1Ev(void *a1)
{
  *a1 = &unk_28371C130;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t adm::graph::HostNode::createUnregisterClientHandler_@<X0>(adm::graph::HostNode *this@<X0>, void *a2@<X8>)
{
  result = *(this + 17);
  if (result && ((v5 = *(this + 40), v6 = *(this + 41), result = (*(*result + 128))(result), v5 != v6) || (result & 1) != 0) && (v5 != v6 ? (v7 = 1) : (v7 = result), (v7 & 1) != 0))
  {
    v9 = *(this + 17);
    v8 = *(this + 18);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
    }

    *a2 = &unk_28371C0B0;
    a2[1] = v9;
    a2[2] = v8;
    a2[3] = a2;
  }

  else
  {
    a2[3] = 0;
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZNK3adm5graph8HostNode22createHandlerFunction_ILNS3_11HandlerTypeE6EEENS3_7HandlerIXT_EE8FunctionEvEUlDpOT_E_NS_9allocatorISD_EEFvjEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK3adm5graph8HostNode22createHandlerFunction_ILNS0_11HandlerTypeE6EEENS0_7HandlerIXT_EE8FunctionEvEUlDpOT_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZNK3adm5graph8HostNode22createHandlerFunction_ILNS3_11HandlerTypeE6EEENS3_7HandlerIXT_EE8FunctionEvEUlDpOT_E_NS_9allocatorISD_EEFvjEEclEOj(uint64_t a1, unsigned int *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        atomic_fetch_add(v6 + 1, 1uLL);
        v7 = atomic_load(v6 + 2);
        if ((*(*v6 + 128))(v6))
        {
          (*(*v6 + 136))(v6, *a2);
        }

        (*(*v7 + 72))(v7, *a2);
        atomic_fetch_add(v6 + 1, 0xFFFFFFFFFFFFFFFFLL);
LABEL_10:
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        goto LABEL_11;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  adm_log_object = get_adm_log_object();
  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_FAULT))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[13],char [13],0>(v10);
  }

  if (v5)
  {
    goto LABEL_10;
  }

LABEL_11:
  v9 = *MEMORY[0x277D85DE8];
}

void sub_223BD4438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a2)
  {
    atomic_fetch_add((v40 + 8), 0xFFFFFFFFFFFFFFFFLL);
    v44 = __cxa_begin_catch(exception_object);
    adm_log_object = get_adm_log_object();
    v46 = os_log_type_enabled(adm_log_object, OS_LOG_TYPE_FAULT);
    if (a2 == 2)
    {
      if (v46)
      {
        v47 = (*(*v44 + 16))(v44);
        *(v42 - 160) = 136315138;
        *(v41 + 4) = v47;
        _os_log_fault_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_FAULT, "exception in handler: %s", (v42 - 160), 0xCu);
      }

      __cxa_end_catch();
      JUMPOUT(0x223BD42C8);
    }

    if (!v46)
    {
      __cxa_end_catch();
      JUMPOUT(0x223BD42C4);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[13],char [13],0>(&a33);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZNK3adm5graph8HostNode22createHandlerFunction_ILNS3_11HandlerTypeE6EEENS3_7HandlerIXT_EE8FunctionEvEUlDpOT_E_NS_9allocatorISD_EEFvjEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZNK3adm5graph8HostNode22createHandlerFunction_ILNS3_11HandlerTypeE6EEENS3_7HandlerIXT_EE8FunctionEvEUlDpOT_E_NS_9allocatorISD_EEFvjEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}
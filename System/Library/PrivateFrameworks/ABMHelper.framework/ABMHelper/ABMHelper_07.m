void sub_23C2193C4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23C218F7CLL);
}

void sub_23C2193D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    xpc::dict::~dict(v14);
    _Unwind_Resume(a1);
  }

  xpc::dict::~dict(v14);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE96c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  a1[1].__r_.__value_.__r.__words[2] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[1].__r_.__value_.__r.__words[2];
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v6 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 3, *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v7 = *(a2 + 72);
    a1[3].__r_.__value_.__r.__words[2] = *(a2 + 88);
    *&a1[3].__r_.__value_.__l.__data_ = v7;
  }

  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 4, *(a2 + 96), *(a2 + 104));
  }

  else
  {
    v8 = *(a2 + 96);
    a1[4].__r_.__value_.__r.__words[2] = *(a2 + 112);
    *&a1[4].__r_.__value_.__l.__data_ = v8;
  }
}

void sub_23C219600(_Unwind_Exception *exception_object)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
    if ((*(v1 + 71) & 0x80000000) == 0)
    {
LABEL_3:
      v3 = *(v1 + 40);
      if (!v3)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v1 + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 48));
  v3 = *(v1 + 40);
  if (!v3)
  {
    goto LABEL_9;
  }

LABEL_7:
  dispatch_group_leave(v3);
  v4 = *(v1 + 40);
  if (v4)
  {
    dispatch_release(v4);
  }

LABEL_9:
  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE96c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 71) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(a1 + 95) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 72));
  if ((*(a1 + 71) & 0x80000000) == 0)
  {
LABEL_4:
    v2 = *(a1 + 40);
    if (!v2)
    {
      return;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(*(a1 + 48));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return;
  }

LABEL_9:
  dispatch_group_leave(v2);
  v3 = *(a1 + 40);
  if (v3)
  {

    dispatch_release(v3);
  }
}

void ICETrace::dumpState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1174405120;
  v4[2] = ___ZN8ICETrace9dumpStateEN8dispatch5groupENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE_block_invoke;
  v4[3] = &__block_descriptor_tmp_70_0;
  v4[4] = a1;
  if ((*(a3 + 23) & 0x80000000) == 0)
  {
    __p = *a3;
    ctu::SharedSynchronizable<Trace>::execute_wrapped((a1 + 8), v4);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(__p.__r_.__value_.__l.__data_);
    return;
  }

  std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  ctu::SharedSynchronizable<Trace>::execute_wrapped((a1 + 8), v4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_5;
  }
}

void ___ZN8ICETrace9dumpStateEN8dispatch5groupENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  if (v3)
  {
    dispatch_retain(*(v2 + 88));
    dispatch_group_enter(v3);
  }

  v4 = *(v2 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v7, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      v7 = *(a1 + 40);
    }

    ICETrace::dumpState_sync(v2, &v7, 1, 10, __p);
    if (v9 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136315138;
    v11 = v5;
    _os_log_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
    if ((v9 & 0x80000000) == 0)
    {
      if ((SHIBYTE(v7.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_16:
      operator delete(v7.__r_.__value_.__l.__data_);
      if (!v3)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    operator delete(__p[0]);
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_16;
    }
  }

LABEL_12:
  if (v3)
  {
LABEL_13:
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }

LABEL_14:
  v6 = *MEMORY[0x277D85DE8];
}

void sub_23C219940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (!v14)
  {
    _Unwind_Resume(exception_object);
  }

  dispatch_group_leave(v14);
  dispatch_release(v14);
  _Unwind_Resume(exception_object);
}

uint64_t ICETrace::dumpState_sync@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, std::string::value_type a4@<W3>, _BYTE *a5@<X8>)
{
  v120 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v119[7] = v10;
  v119[8] = v10;
  v119[5] = v10;
  v119[6] = v10;
  v119[3] = v10;
  v119[4] = v10;
  v119[1] = v10;
  v119[2] = v10;
  v118 = v10;
  v119[0] = v10;
  *v116 = v10;
  v117 = v10;
  v114 = v10;
  v115 = v10;
  v112 = v10;
  v113 = v10;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v112);
  if (a3)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v112, "\n----- BB Trace Dump State -----\n", 33);
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v112, "Enabled         : ", 18);
  *(v11 + *(*v11 - 24) + 8) |= 1u;
  v12 = *(a1 + 280);
  v13 = MEMORY[0x23EECDF10]();
  __dst.__r_.__value_.__s.__data_[0] = a4;
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &__dst, 1);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Mode            : ", 18);
  v16 = *(a1 + 96);
  if (v16 > 6)
  {
    v17 = "Unknown";
  }

  else
  {
    v17 = off_278BB8A48[v16];
  }

  v18 = strlen(v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
  __dst.__r_.__value_.__s.__data_[0] = a4;
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, &__dst, 1);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "History         : ", 18);
  ICETrace::historyAsString_sync(a1, &v109);
  if (v111 >= 0)
  {
    v22 = &v109;
  }

  else
  {
    v22 = v109;
  }

  if (v111 >= 0)
  {
    v23 = HIBYTE(v111);
  }

  else
  {
    v23 = v110;
  }

  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, v23);
  __dst.__r_.__value_.__s.__data_[0] = a4;
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, &__dst, 1);
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "BackgroundMode  : ", 18);
  *(v26 + *(*v26 - 24) + 8) |= 1u;
  v27 = *(a1 + 248);
  v28 = MEMORY[0x23EECDF10]();
  __dst.__r_.__value_.__s.__data_[0] = a4;
  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, &__dst, 1);
  v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "HighWatermark   : ", 18);
  v31 = MEMORY[0x23EECDF30](v30, *(a1 + 252));
  __dst.__r_.__value_.__s.__data_[0] = a4;
  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, &__dst, 1);
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "LowWatermark    : ", 18);
  v34 = MEMORY[0x23EECDF30](v33, *(a1 + 256));
  __dst.__r_.__value_.__s.__data_[0] = a4;
  v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, &__dst, 1);
  v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "ActiveConfigFile: ", 18);
  v37 = *(a1 + 127);
  if (v37 >= 0)
  {
    v38 = a1 + 104;
  }

  else
  {
    v38 = *(a1 + 104);
  }

  if (v37 >= 0)
  {
    v39 = *(a1 + 127);
  }

  else
  {
    v39 = *(a1 + 112);
  }

  v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, v38, v39);
  __dst.__r_.__value_.__s.__data_[0] = a4;
  v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, &__dst, 1);
  v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "Enabled During Sleep  : ", 24);
  v43 = MEMORY[0x23EECDF10](v42, *(a1 + 260));
  __dst.__r_.__value_.__s.__data_[0] = a4;
  v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, &__dst, 1);
  v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "SleepConfigFile\t   : ", 21);
  v46 = *(a1 + 151);
  if (v46 >= 0)
  {
    v47 = a1 + 128;
  }

  else
  {
    v47 = *(a1 + 128);
  }

  if (v46 >= 0)
  {
    v48 = *(a1 + 151);
  }

  else
  {
    v48 = *(a1 + 136);
  }

  v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, v47, v48);
  __dst.__r_.__value_.__s.__data_[0] = a4;
  v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, &__dst, 1);
  v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Max memory file count :", 23);
  v52 = *(a1 + 276);
  if (v52)
  {
    std::to_string(&__dst, v52);
    __p = __dst;
  }

  else
  {
    *(&__p.__r_.__value_.__s + 23) = 8;
    strcpy(&__p, "No limit");
  }

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

  v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, p_p, size);
  __dst.__r_.__value_.__s.__data_[0] = a4;
  v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, &__dst, 1);
  v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, "File Size : ", 12);
  v58 = MEMORY[0x23EECDF40](v57, *(a1 + 288));
  __dst.__r_.__value_.__s.__data_[0] = a4;
  v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, &__dst, 1);
  v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, "Transport Read Size   : ", 24);
  v61 = MEMORY[0x23EECDF40](v60, *(a1 + 292));
  __dst.__r_.__value_.__s.__data_[0] = a4;
  v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, &__dst, 1);
  v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Transport Read Count  : ", 24);
  v64 = MEMORY[0x23EECDF40](v63, *(a1 + 296));
  __dst.__r_.__value_.__s.__data_[0] = a4;
  v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, &__dst, 1);
  v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, "ETB Config File :", 17);
  v67 = *(a1 + 175);
  if (v67 >= 0)
  {
    v68 = a1 + 152;
  }

  else
  {
    v68 = *(a1 + 152);
  }

  if (v67 >= 0)
  {
    v69 = *(a1 + 175);
  }

  else
  {
    v69 = *(a1 + 160);
  }

  v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, v68, v69);
  __dst.__r_.__value_.__s.__data_[0] = a4;
  v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, &__dst, 1);
  v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, "Retain Previous Trace : ", 24);
  v73 = MEMORY[0x23EECDF10](v72, *(a1 + 440));
  __dst.__r_.__value_.__s.__data_[0] = a4;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, &__dst, 1);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v111) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_44:
    operator delete(v109);
    if (!a3)
    {
      goto LABEL_91;
    }

LABEL_45:
    v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v112, "ActiveMask      : ", 18);
    v76 = *(a1 + 176);
    v75 = *(a1 + 184);
    v77 = v75 - v76;
    if ((v75 - v76) > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v78 = v74;
    if (v77 > 0x16)
    {
      v93 = a5;
      v94 = a2;
      if ((v77 | 7) == 0x17)
      {
        v95 = 25;
      }

      else
      {
        v95 = (v77 | 7) + 1;
      }

      v79 = operator new(v95);
      __dst.__r_.__value_.__l.__size_ = v75 - v76;
      __dst.__r_.__value_.__r.__words[2] = v95 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = v79;
      a2 = v94;
      a5 = v93;
      if (v75 == v76)
      {
LABEL_49:
        v79[v77] = 0;
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v81 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v81 = __dst.__r_.__value_.__l.__size_;
        }

        v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, p_dst, v81);
        LOBYTE(v109) = a4;
        v83 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, &v109, 1);
        v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, "SleepMask       : ", 18);
        v86 = *(a1 + 200);
        v85 = *(a1 + 208);
        v87 = v85 - v86;
        if ((v85 - v86) > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v88 = v84;
        if (v87 > 0x16)
        {
          if ((v87 | 7) == 0x17)
          {
            v96 = 25;
          }

          else
          {
            v96 = (v87 | 7) + 1;
          }

          v89 = operator new(v96);
          v110 = v85 - v86;
          v111 = v96 | 0x8000000000000000;
          v109 = v89;
          if (v85 == v86)
          {
LABEL_59:
            *(v89 + v87) = 0;
            if (v111 >= 0)
            {
              v90 = &v109;
            }

            else
            {
              v90 = v109;
            }

            if (v111 >= 0)
            {
              v91 = HIBYTE(v111);
            }

            else
            {
              v91 = v110;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, v90, v91);
            if (SHIBYTE(v111) < 0)
            {
              operator delete(v109);
              if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_67:
                v92 = *(a2 + 23);
                if ((v92 & 0x8000000000000000) == 0)
                {
                  goto LABEL_68;
                }

                goto LABEL_82;
              }
            }

            else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_67;
            }

            operator delete(__dst.__r_.__value_.__l.__data_);
            v92 = *(a2 + 23);
            if ((v92 & 0x8000000000000000) == 0)
            {
LABEL_68:
              if (!v92)
              {
                goto LABEL_90;
              }

              goto LABEL_83;
            }

LABEL_82:
            if (!*(a2 + 8))
            {
LABEL_90:
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v112, "\n---------------------------------\n", 35);
              goto LABEL_91;
            }

LABEL_83:
            __dst.__r_.__value_.__s.__data_[0] = a4;
            v97 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v112, &__dst, 1);
            v98 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, "Reason: ", 8);
            v99 = *(a2 + 23);
            if (v99 >= 0)
            {
              v100 = a2;
            }

            else
            {
              v100 = *a2;
            }

            if (v99 >= 0)
            {
              v101 = *(a2 + 23);
            }

            else
            {
              v101 = *(a2 + 8);
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v98, v100, v101);
            goto LABEL_90;
          }
        }

        else
        {
          HIBYTE(v111) = v85 - v86;
          v89 = &v109;
          if (v85 == v86)
          {
            goto LABEL_59;
          }
        }

        memmove(v89, v86, v85 - v86);
        goto LABEL_59;
      }
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v75 - v76;
      v79 = &__dst;
      if (v75 == v76)
      {
        goto LABEL_49;
      }
    }

    memmove(v79, v76, v75 - v76);
    goto LABEL_49;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v111) < 0)
  {
    goto LABEL_44;
  }

LABEL_41:
  if (a3)
  {
    goto LABEL_45;
  }

LABEL_91:
  if ((BYTE8(v118) & 0x10) != 0)
  {
    v103 = v118;
    if (v118 < *(&v115 + 1))
    {
      *&v118 = *(&v115 + 1);
      v103 = *(&v115 + 1);
    }

    v104 = v115;
    v102 = v103 - v115;
    if ((v103 - v115) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_109;
    }
  }

  else
  {
    if ((BYTE8(v118) & 8) == 0)
    {
      v102 = 0;
      a5[23] = 0;
      goto LABEL_105;
    }

    v104 = *(&v113 + 1);
    v102 = *(&v114 + 1) - *(&v113 + 1);
    if (*(&v114 + 1) - *(&v113 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_109:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v102 >= 0x17)
  {
    if ((v102 | 7) == 0x17)
    {
      v105 = 25;
    }

    else
    {
      v105 = (v102 | 7) + 1;
    }

    v106 = operator new(v105);
    *(a5 + 1) = v102;
    *(a5 + 2) = v105 | 0x8000000000000000;
    *a5 = v106;
    a5 = v106;
    goto LABEL_104;
  }

  a5[23] = v102;
  if (v102)
  {
LABEL_104:
    memmove(a5, v104, v102);
  }

LABEL_105:
  a5[v102] = 0;
  *&v112 = *MEMORY[0x277D82828];
  *(&v112 + *(v112 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v112 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v117) < 0)
  {
    operator delete(v116[1]);
  }

  *(&v112 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v113);
  std::ostream::~ostream();
  return MEMORY[0x23EECE150](v119);
}

void sub_23C21A214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 - 89) < 0)
  {
    operator delete(*(v21 - 112));
    std::ostringstream::~ostringstream(&a21);
    _Unwind_Resume(a1);
  }

  std::ostringstream::~ostringstream(&a21);
  _Unwind_Resume(a1);
}

uint64_t ICETrace::setProperty(void *a1, dispatch_object_t *a2, uint64_t *a3, uint64_t *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v8);
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1174405120;
  v18[2] = ___ZN8ICETrace11setPropertyEN8dispatch5groupERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEESA__block_invoke;
  v18[3] = &unk_284EFA950;
  v18[5] = a1;
  group = v8;
  if (v8)
  {
    dispatch_retain(v8);
    dispatch_group_enter(group);
  }

  v18[4] = &v23;
  v9 = *a2;
  v20 = a3;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v22 = a4;
  v27 = v18;
  *block = MEMORY[0x277D85DD0];
  *&block[8] = 0x40000000;
  *&block[16] = ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke_0;
  v29 = &__block_descriptor_tmp_174;
  v30 = a1 + 1;
  v31 = &v27;
  v10 = a1[3];
  if (a1[4])
  {
    dispatch_async_and_wait(v10, block);
    if (v24[3])
    {
      goto LABEL_9;
    }
  }

  else
  {
    dispatch_sync(v10, block);
    if (v24[3])
    {
LABEL_9:
      v11 = 1;
      v12 = object;
      if (!object)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  v13 = a1[5];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    if (*(a3 + 23) >= 0)
    {
      v16 = a3;
    }

    else
    {
      v16 = *a3;
    }

    if (*(a4 + 23) >= 0)
    {
      v17 = a4;
    }

    else
    {
      v17 = *a4;
    }

    *block = 136315394;
    *&block[4] = v16;
    *&block[12] = 2080;
    *&block[14] = v17;
    _os_log_error_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_ERROR, "Set %s to %s failed.", block, 0x16u);
    v11 = *(v24 + 24);
    v12 = object;
    if (object)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v11 = 0;
    v12 = object;
    if (object)
    {
LABEL_14:
      dispatch_release(v12);
    }
  }

LABEL_15:
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  _Block_object_dispose(&v23, 8);
  if (v8)
  {
    dispatch_group_leave(v8);
    dispatch_release(v8);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

void ___ZN8ICETrace11setPropertyEN8dispatch5groupERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEESA__block_invoke(uint64_t a1)
{
  v113 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4 = *(v3 + 23);
  if ((v4 & 0x80000000) == 0)
  {
    if (strcasecmp(*(a1 + 56), "Enabled"))
    {
      if (strcasecmp(v3, "History"))
      {
        if (strcasecmp(v3, "Mode"))
        {
          if (strcasecmp(v3, "File"))
          {
            if (strcasecmp(v3, "File_Sleep"))
            {
              if (strcasecmp(v3, "BackgroundMode"))
              {
                if (strcasecmp(v3, "High_Watermark"))
                {
                  if (strcasecmp(v3, "Low_Watermark"))
                  {
                    if (strcasecmp(v3, "Enabled_During_Sleep"))
                    {
                      if (strcasecmp(v3, "ETBFile"))
                      {
                        if (strcasecmp(v3, "MaxMemoryFileCount"))
                        {
                          if (strcasecmp(v3, "FileSize"))
                          {
                            if (strcasecmp(v3, "SizeIO"))
                            {
                              v6 = v3;
                              if (strcasecmp(v3, "NumberOfReadIO"))
                              {
                                goto LABEL_16;
                              }

                              goto LABEL_36;
                            }

LABEL_158:
                            v8 = *(a1 + 64);
                            v66 = v8;
                            if (v8)
                            {
                              dispatch_retain(v8);
                            }

                            std::string::basic_string[abi:ne200100]<0>(v64, "SizeIO");
                            v37 = *(a1 + 72);
                            if (*(v37 + 23) < 0)
                            {
                              std::string::__init_copy_ctor_external(&v63, *v37, *(v37 + 1));
                            }

                            else
                            {
                              v38 = *v37;
                              v63.__r_.__value_.__r.__words[2] = *(v37 + 2);
                              *&v63.__r_.__value_.__l.__data_ = v38;
                            }

                            *(*(*(a1 + 32) + 8) + 24) = ICETrace::setPropTransportReadSize_sync(v2, &v66, v64, &v63);
                            if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v63.__r_.__value_.__l.__data_);
                              if ((v65 & 0x80000000) == 0)
                              {
                                goto LABEL_189;
                              }
                            }

                            else if ((v65 & 0x80000000) == 0)
                            {
                              goto LABEL_189;
                            }

                            operator delete(v64[0]);
                            if (!v8)
                            {
                              goto LABEL_191;
                            }

                            goto LABEL_190;
                          }

LABEL_147:
                          v8 = *(a1 + 64);
                          if (v8)
                          {
                            dispatch_retain(*(a1 + 64));
                          }

                          std::string::basic_string[abi:ne200100]<0>(v68, "FileSize");
                          v35 = *(a1 + 72);
                          if (*(v35 + 23) < 0)
                          {
                            std::string::__init_copy_ctor_external(&v67, *v35, *(v35 + 1));
                          }

                          else
                          {
                            v36 = *v35;
                            v67.__r_.__value_.__r.__words[2] = *(v35 + 2);
                            *&v67.__r_.__value_.__l.__data_ = v36;
                          }

                          *(*(*(a1 + 32) + 8) + 24) = ICETrace::setPropFileSize_sync(v2, v34, v68, &v67);
                          if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(v67.__r_.__value_.__l.__data_);
                            if ((v69 & 0x80000000) == 0)
                            {
                              goto LABEL_189;
                            }
                          }

                          else if ((v69 & 0x80000000) == 0)
                          {
                            goto LABEL_189;
                          }

                          operator delete(v68[0]);
                          if (!v8)
                          {
                            goto LABEL_191;
                          }

                          goto LABEL_190;
                        }

LABEL_136:
                        v8 = *(a1 + 64);
                        v73 = v8;
                        if (v8)
                        {
                          dispatch_retain(v8);
                        }

                        std::string::basic_string[abi:ne200100]<0>(v71, "MaxMemoryFileCount");
                        v32 = *(a1 + 72);
                        if (*(v32 + 23) < 0)
                        {
                          std::string::__init_copy_ctor_external(&v70, *v32, *(v32 + 1));
                        }

                        else
                        {
                          v33 = *v32;
                          v70.__r_.__value_.__r.__words[2] = *(v32 + 2);
                          *&v70.__r_.__value_.__l.__data_ = v33;
                        }

                        *(*(*(a1 + 32) + 8) + 24) = ICETrace::setPropMaxMemoryFileCount_sync(v2, &v73, v71, &v70);
                        if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v70.__r_.__value_.__l.__data_);
                          if ((v72 & 0x80000000) == 0)
                          {
                            goto LABEL_189;
                          }
                        }

                        else if ((v72 & 0x80000000) == 0)
                        {
                          goto LABEL_189;
                        }

                        operator delete(v71[0]);
                        if (!v8)
                        {
                          goto LABEL_191;
                        }

                        goto LABEL_190;
                      }

LABEL_125:
                      v8 = *(a1 + 64);
                      if (v8)
                      {
                        dispatch_retain(*(a1 + 64));
                      }

                      std::string::basic_string[abi:ne200100]<0>(v75, "ETBFile");
                      v30 = *(a1 + 72);
                      if (*(v30 + 23) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v74, *v30, *(v30 + 1));
                      }

                      else
                      {
                        v31 = *v30;
                        v74.__r_.__value_.__r.__words[2] = *(v30 + 2);
                        *&v74.__r_.__value_.__l.__data_ = v31;
                      }

                      *(*(*(a1 + 32) + 8) + 24) = ICETrace::setPropETBSetup_sync(v2, v29, v75, &v74);
                      if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v74.__r_.__value_.__l.__data_);
                        if ((v76 & 0x80000000) == 0)
                        {
                          goto LABEL_189;
                        }
                      }

                      else if ((v76 & 0x80000000) == 0)
                      {
                        goto LABEL_189;
                      }

                      operator delete(v75[0]);
                      if (!v8)
                      {
                        goto LABEL_191;
                      }

                      goto LABEL_190;
                    }

LABEL_114:
                    v8 = *(a1 + 64);
                    v80 = v8;
                    if (v8)
                    {
                      dispatch_retain(v8);
                    }

                    std::string::basic_string[abi:ne200100]<0>(v78, "Enabled_During_Sleep");
                    v27 = *(a1 + 72);
                    if (*(v27 + 23) < 0)
                    {
                      std::string::__init_copy_ctor_external(&v77, *v27, *(v27 + 1));
                    }

                    else
                    {
                      v28 = *v27;
                      v77.__r_.__value_.__r.__words[2] = *(v27 + 2);
                      *&v77.__r_.__value_.__l.__data_ = v28;
                    }

                    *(*(*(a1 + 32) + 8) + 24) = ICETrace::setPropSleepTraceEnabled_sync(v2, &v80, v78, &v77);
                    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v77.__r_.__value_.__l.__data_);
                      if ((v79 & 0x80000000) == 0)
                      {
                        goto LABEL_189;
                      }
                    }

                    else if ((v79 & 0x80000000) == 0)
                    {
                      goto LABEL_189;
                    }

                    operator delete(v78[0]);
                    if (!v8)
                    {
                      goto LABEL_191;
                    }

                    goto LABEL_190;
                  }

LABEL_103:
                  v8 = *(a1 + 64);
                  v84 = v8;
                  if (v8)
                  {
                    dispatch_retain(v8);
                  }

                  std::string::basic_string[abi:ne200100]<0>(v82, "Low_Watermark");
                  v25 = *(a1 + 72);
                  if (*(v25 + 23) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v81, *v25, *(v25 + 1));
                  }

                  else
                  {
                    v26 = *v25;
                    v81.__r_.__value_.__r.__words[2] = *(v25 + 2);
                    *&v81.__r_.__value_.__l.__data_ = v26;
                  }

                  *(*(*(a1 + 32) + 8) + 24) = ICETrace::setPropLowWatermark_sync(v2, &v84, v82, &v81);
                  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v81.__r_.__value_.__l.__data_);
                    if ((v83 & 0x80000000) == 0)
                    {
                      goto LABEL_189;
                    }
                  }

                  else if ((v83 & 0x80000000) == 0)
                  {
                    goto LABEL_189;
                  }

                  operator delete(v82[0]);
                  if (!v8)
                  {
                    goto LABEL_191;
                  }

                  goto LABEL_190;
                }

LABEL_92:
                v8 = *(a1 + 64);
                v88 = v8;
                if (v8)
                {
                  dispatch_retain(v8);
                }

                v87 = 14;
                strcpy(v86, "High_Watermark");
                v23 = *(a1 + 72);
                if (*(v23 + 23) < 0)
                {
                  std::string::__init_copy_ctor_external(&v85, *v23, *(v23 + 1));
                }

                else
                {
                  v24 = *v23;
                  v85.__r_.__value_.__r.__words[2] = *(v23 + 2);
                  *&v85.__r_.__value_.__l.__data_ = v24;
                }

                *(*(*(a1 + 32) + 8) + 24) = ICETrace::setPropHighWatermark_sync(v2, &v88, v86, &v85);
                if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v85.__r_.__value_.__l.__data_);
                  if ((v87 & 0x80000000) == 0)
                  {
                    goto LABEL_189;
                  }
                }

                else if ((v87 & 0x80000000) == 0)
                {
                  goto LABEL_189;
                }

                operator delete(v86[0]);
                if (!v8)
                {
                  goto LABEL_191;
                }

                goto LABEL_190;
              }

LABEL_81:
              v8 = *(a1 + 64);
              v92 = v8;
              if (v8)
              {
                dispatch_retain(v8);
              }

              v91 = 14;
              strcpy(v90, "BackgroundMode");
              v21 = *(a1 + 72);
              if (*(v21 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&v89, *v21, *(v21 + 1));
              }

              else
              {
                v22 = *v21;
                v89.__r_.__value_.__r.__words[2] = *(v21 + 2);
                *&v89.__r_.__value_.__l.__data_ = v22;
              }

              *(*(*(a1 + 32) + 8) + 24) = ICETrace::setPropBackgroundMode_sync(v2, &v92, v90, &v89);
              if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v89.__r_.__value_.__l.__data_);
                if ((v91 & 0x80000000) == 0)
                {
                  goto LABEL_189;
                }
              }

              else if ((v91 & 0x80000000) == 0)
              {
                goto LABEL_189;
              }

              operator delete(v90[0]);
              if (!v8)
              {
                goto LABEL_191;
              }

              goto LABEL_190;
            }

LABEL_70:
            v8 = *(a1 + 64);
            v96 = v8;
            if (v8)
            {
              dispatch_retain(v8);
            }

            v95 = 10;
            strcpy(v94, "File_Sleep");
            v19 = *(a1 + 72);
            if (*(v19 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v93, *v19, *(v19 + 1));
            }

            else
            {
              v20 = *v19;
              v93.__r_.__value_.__r.__words[2] = *(v19 + 2);
              *&v93.__r_.__value_.__l.__data_ = v20;
            }

            *(*(*(a1 + 32) + 8) + 24) = ICETrace::setPropSleepConfig_sync(v2, &v96, v94, &v93);
            if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v93.__r_.__value_.__l.__data_);
              if ((v95 & 0x80000000) == 0)
              {
                goto LABEL_189;
              }
            }

            else if ((v95 & 0x80000000) == 0)
            {
              goto LABEL_189;
            }

            operator delete(v94[0]);
            if (!v8)
            {
              goto LABEL_191;
            }

            goto LABEL_190;
          }

LABEL_59:
          v8 = *(a1 + 64);
          v100 = v8;
          if (v8)
          {
            dispatch_retain(v8);
          }

          v99 = 4;
          strcpy(__p, "File");
          v17 = *(a1 + 72);
          if (*(v17 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v97, *v17, *(v17 + 1));
          }

          else
          {
            v18 = *v17;
            v97.__r_.__value_.__r.__words[2] = *(v17 + 2);
            *&v97.__r_.__value_.__l.__data_ = v18;
          }

          *(*(*(a1 + 32) + 8) + 24) = ICETrace::setPropActiveConfig_sync(v2, &v100, __p, &v97);
          if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v97.__r_.__value_.__l.__data_);
            if ((v99 & 0x80000000) == 0)
            {
              goto LABEL_189;
            }
          }

          else if ((v99 & 0x80000000) == 0)
          {
            goto LABEL_189;
          }

          operator delete(__p[0]);
          if (!v8)
          {
            goto LABEL_191;
          }

          goto LABEL_190;
        }

LABEL_48:
        v8 = *(a1 + 64);
        v104 = v8;
        if (v8)
        {
          dispatch_retain(v8);
        }

        v103 = 4;
        strcpy(v102, "Mode");
        v15 = *(a1 + 72);
        if (*(v15 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v101, *v15, *(v15 + 1));
        }

        else
        {
          v16 = *v15;
          v101.__r_.__value_.__r.__words[2] = *(v15 + 2);
          *&v101.__r_.__value_.__l.__data_ = v16;
        }

        *(*(*(a1 + 32) + 8) + 24) = ICETrace::setPropMode_sync(v2, &v104, v102, &v101);
        if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v101.__r_.__value_.__l.__data_);
          if ((v103 & 0x80000000) == 0)
          {
            goto LABEL_189;
          }
        }

        else if ((v103 & 0x80000000) == 0)
        {
          goto LABEL_189;
        }

        operator delete(v102[0]);
        if (!v8)
        {
          goto LABEL_191;
        }

        goto LABEL_190;
      }

LABEL_44:
      v8 = *(a1 + 64);
      if (v8)
      {
        dispatch_retain(*(a1 + 64));
      }

      v107 = 7;
      strcpy(v106, "History");
      v13 = *(a1 + 72);
      if (*(v13 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v105, *v13, *(v13 + 1));
      }

      else
      {
        v14 = *v13;
        v105.__r_.__value_.__r.__words[2] = *(v13 + 2);
        *&v105.__r_.__value_.__l.__data_ = v14;
      }

      *(*(*(a1 + 32) + 8) + 24) = ICETrace::setPropHistory_sync(v2, v5, v106, &v105);
      if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v105.__r_.__value_.__l.__data_);
        if ((v107 & 0x80000000) == 0)
        {
          goto LABEL_189;
        }
      }

      else if ((v107 & 0x80000000) == 0)
      {
        goto LABEL_189;
      }

      operator delete(v106[0]);
      if (!v8)
      {
        goto LABEL_191;
      }

      goto LABEL_190;
    }

LABEL_40:
    v8 = *(a1 + 64);
    v111 = v8;
    if (v8)
    {
      dispatch_retain(v8);
    }

    v110 = 7;
    strcpy(v109, "Enabled");
    v11 = *(a1 + 72);
    if (*(v11 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v108, *v11, *(v11 + 1));
    }

    else
    {
      v12 = *v11;
      v108.__r_.__value_.__r.__words[2] = *(v11 + 2);
      *&v108.__r_.__value_.__l.__data_ = v12;
    }

    *(*(*(a1 + 32) + 8) + 24) = ICETrace::setPropEnabled_sync(v2, &v111, v109, &v108);
    if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v108.__r_.__value_.__l.__data_);
      if ((v110 & 0x80000000) == 0)
      {
        goto LABEL_189;
      }
    }

    else if ((v110 & 0x80000000) == 0)
    {
      goto LABEL_189;
    }

    operator delete(v109[0]);
    if (!v8)
    {
      goto LABEL_191;
    }

    goto LABEL_190;
  }

  v6 = *v3;
  if (!strcasecmp(*v3, "Enabled"))
  {
    goto LABEL_40;
  }

  if (!strcasecmp(v6, "History"))
  {
    goto LABEL_44;
  }

  if (!strcasecmp(v6, "Mode"))
  {
    goto LABEL_48;
  }

  if (!strcasecmp(v6, "File"))
  {
    goto LABEL_59;
  }

  if (!strcasecmp(v6, "File_Sleep"))
  {
    goto LABEL_70;
  }

  if (!strcasecmp(v6, "BackgroundMode"))
  {
    goto LABEL_81;
  }

  if (!strcasecmp(v6, "High_Watermark"))
  {
    goto LABEL_92;
  }

  if (!strcasecmp(v6, "Low_Watermark"))
  {
    goto LABEL_103;
  }

  if (!strcasecmp(v6, "Enabled_During_Sleep"))
  {
    goto LABEL_114;
  }

  if (!strcasecmp(v6, "ETBFile"))
  {
    goto LABEL_125;
  }

  if (!strcasecmp(v6, "MaxMemoryFileCount"))
  {
    goto LABEL_136;
  }

  if (!strcasecmp(v6, "FileSize"))
  {
    goto LABEL_147;
  }

  if (!strcasecmp(v6, "SizeIO"))
  {
    goto LABEL_158;
  }

  if (!strcasecmp(v6, "NumberOfReadIO"))
  {
LABEL_36:
    v8 = *(a1 + 64);
    v62 = v8;
    if (v8)
    {
      dispatch_retain(v8);
    }

    std::string::basic_string[abi:ne200100]<0>(v60, "NumberOfReadIO");
    v9 = *(a1 + 72);
    if (*(v9 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v59, *v9, *(v9 + 1));
    }

    else
    {
      v10 = *v9;
      v59.__r_.__value_.__r.__words[2] = *(v9 + 2);
      *&v59.__r_.__value_.__l.__data_ = v10;
    }

    *(*(*(a1 + 32) + 8) + 24) = ICETrace::setPropTransportReadCount_sync(v2, &v62, v60, &v59);
    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
      if ((v61 & 0x80000000) == 0)
      {
LABEL_189:
        if (!v8)
        {
          goto LABEL_191;
        }

        goto LABEL_190;
      }
    }

    else if ((v61 & 0x80000000) == 0)
    {
      goto LABEL_189;
    }

    operator delete(v60[0]);
    if (!v8)
    {
      goto LABEL_191;
    }

LABEL_190:
    dispatch_release(v8);
    goto LABEL_191;
  }

LABEL_16:
  if (!strcasecmp(v6, "Retain_Previous_Trace"))
  {
    *(*(*(a1 + 32) + 8) + 24) = prop::bbtrace::set(v3, *(a1 + 72));
    v39 = *(*(a1 + 32) + 8);
    if (*(v39 + 24) == 1)
    {
      *(*(*(a1 + 32) + 8) + 24) = prop::bbtrace::get<BOOL>(*(a1 + 56), (v2 + 440));
      if (!*(v2 + 424))
      {
        goto LABEL_217;
      }
    }

    else
    {
      *(v39 + 24) = 0;
      if (!*(v2 + 424))
      {
        goto LABEL_217;
      }
    }

    goto LABEL_192;
  }

  v7 = *(v2 + 40);
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
LABEL_191:
    if (!*(v2 + 424))
    {
      goto LABEL_217;
    }

LABEL_192:
    v40 = *(a1 + 56);
    v41 = *(v40 + 23);
    if (v41 >= 0)
    {
      v42 = *(v40 + 23);
    }

    else
    {
      v42 = v40[1];
    }

    v43 = v42 + 3;
    if (v42 + 3 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v43 < 0x17)
    {
      memset(&buf, 0, sizeof(buf));
      p_buf = &buf;
      *(&buf.__r_.__value_.__s + 23) = v42 + 3;
      if (!v42)
      {
        goto LABEL_206;
      }
    }

    else
    {
      if ((v43 | 7) == 0x17)
      {
        v44 = 25;
      }

      else
      {
        v44 = (v43 | 7) + 1;
      }

      p_buf = operator new(v44);
      buf.__r_.__value_.__l.__size_ = v42 + 3;
      buf.__r_.__value_.__r.__words[2] = v44 | 0x8000000000000000;
      buf.__r_.__value_.__r.__words[0] = p_buf;
    }

    v46 = *v40;
    if (v41 >= 0)
    {
      v47 = v40;
    }

    else
    {
      v47 = *v40;
    }

    memmove(p_buf, v47, v42);
LABEL_206:
    *(&p_buf->__r_.__value_.__l.__data_ + v42) = 2112800;
    v48 = *(a1 + 72);
    v49 = *(v48 + 23);
    if (v49 >= 0)
    {
      v50 = *(a1 + 72);
    }

    else
    {
      v50 = *v48;
    }

    if (v49 >= 0)
    {
      v51 = *(v48 + 23);
    }

    else
    {
      v51 = *(v48 + 8);
    }

    v52 = std::string::append(&buf, v50, v51);
    v53 = *&v52->__r_.__value_.__l.__data_;
    v58 = v52->__r_.__value_.__r.__words[2];
    *v57 = v53;
    v52->__r_.__value_.__l.__size_ = 0;
    v52->__r_.__value_.__r.__words[2] = 0;
    v52->__r_.__value_.__r.__words[0] = 0;
    Timestamp::Timestamp(v55);
    abm::trace::TraceInfo::push();
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v55, v56);
    if (SHIBYTE(v58) < 0)
    {
      operator delete(v57[0]);
      if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_217;
      }
    }

    else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_217;
    }

    operator delete(buf.__r_.__value_.__l.__data_);
    goto LABEL_217;
  }

  if (v4 < 0)
  {
    v3 = *v3;
  }

  LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
  *(buf.__r_.__value_.__r.__words + 4) = v3;
  _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, "Key not handled: %s", &buf, 0xCu);
  if (*(v2 + 424))
  {
    goto LABEL_192;
  }

LABEL_217:
  v54 = *MEMORY[0x277D85DE8];
}

void sub_23C21B3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
    if (!v32)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v32)
  {
    goto LABEL_6;
  }

  dispatch_release(v32);
  _Unwind_Resume(a1);
}

uint64_t ICETrace::setPropEnabled_sync(uint64_t a1, NSObject **a2, char *a3, uint64_t a4)
{
  v37 = *MEMORY[0x277D85DE8];
  if (!prop::bbtrace::set(a3, a4))
  {
    v7 = 0;
    goto LABEL_59;
  }

  v35 = -1431655766;
  memset(&buf, 0, sizeof(buf));
  if (prop::bbtrace::get(a3, &buf))
  {
    v7 = util::convert<int>(&buf, &v35, 0);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    if (!v7)
    {
      goto LABEL_59;
    }

    goto LABEL_9;
  }

  v7 = 0;
  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  operator delete(buf.__r_.__value_.__l.__data_);
  if (!v7)
  {
    goto LABEL_59;
  }

LABEL_9:
  v8 = v35;
  v9 = *(a1 + 280);
  if (v35 != v9)
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(buf.__r_.__value_.__r.__words[0]) = v9;
      LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
      *(&buf.__r_.__value_.__r.__words[1] + 2) = v8;
      _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, "#I Setting enable from %d to %d", &buf, 0xEu);
      v8 = v35;
    }

    *(a1 + 280) = v8 != 0;
    cf = 0;
    v11 = (a1 + 360);
    v12 = *(a1 + 360);
    if (v12)
    {
      if (((*(*v12 + 128))(v12) & 1) == 0)
      {
        v7 = 1;
        goto LABEL_59;
      }
    }

    else
    {
      v13 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
      v14 = off_280C059B8;
      if (!off_280C059B8)
      {
        CommandDriverFactory::create_default_global(&buf, v13);
        v15 = *&buf.__r_.__value_.__l.__data_;
        *&buf.__r_.__value_.__l.__data_ = 0uLL;
        v16 = *(&off_280C059B8 + 1);
        off_280C059B8 = v15;
        if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
        }

        size = buf.__r_.__value_.__l.__size_;
        if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (size->__on_zero_shared)(size);
          std::__shared_weak_count::__release_weak(size);
        }

        v14 = off_280C059B8;
      }

      object[1] = v14;
      v32 = *(&off_280C059B8 + 1);
      if (*(&off_280C059B8 + 1))
      {
        atomic_fetch_add_explicit((*(&off_280C059B8 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
      (*(v14->isa + 16))(&v33, v14);
      v18 = v33;
      v33 = 0uLL;
      v19 = *(a1 + 368);
      *v11 = v18;
      if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v19->__on_zero_shared)(v19);
        std::__shared_weak_count::__release_weak(v19);
      }

      v20 = *(&v33 + 1);
      if (*(&v33 + 1) && !atomic_fetch_add((*(&v33 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v20->__on_zero_shared)(v20);
        std::__shared_weak_count::__release_weak(v20);
      }

      if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v32->__on_zero_shared)(v32);
        std::__shared_weak_count::__release_weak(v32);
      }
    }

    if (*(a1 + 280) == 1)
    {
      v21 = *a2;
      object[0] = v21;
      if (v21)
      {
        dispatch_retain(v21);
      }

      v22 = cf;
      v30 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      (*(*a1 + 160))(a1, object, &v30);
      if (v30)
      {
        CFRelease(v30);
      }

      if (object[0])
      {
        dispatch_release(object[0]);
      }
    }

    else if (*v11)
    {
      v23 = *a2;
      v29 = v23;
      if (v23)
      {
        dispatch_retain(v23);
      }

      v22 = cf;
      v28 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      (*(*a1 + 168))(a1, &v29, &v28);
      if (v28)
      {
        CFRelease(v28);
      }

      if (v29)
      {
        dispatch_release(v29);
      }

      if (*(a1 + 312))
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, abm::trace::kTrashFolder[0]);
        TraceFileCollection::clear();
        if (v27 < 0)
        {
          operator delete(__p);
        }

        std::shared_ptr<TraceFileCollection>::reset[abi:ne200100]((a1 + 312));
      }
    }

    else
    {
      v22 = cf;
    }

    if (v22)
    {
      CFRelease(v22);
    }
  }

LABEL_59:
  v24 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_23C21BD7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, dispatch_object_t object, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, const void *a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a24);
  _Unwind_Resume(a1);
}

void sub_23C21BE2C(_Unwind_Exception *a1)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t ICETrace::setPropHistory_sync(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!prop::bbtrace::set(a3, a4))
  {
    v6 = 0;
    goto LABEL_14;
  }

  v13 = -1431655766;
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(a3, &__p))
  {
    v6 = util::convert<int>(&__p, &v13, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v6 = 0;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_9:
  v7 = v13;
  v8 = *(a1 + 284);
  if (v13 != v8)
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v8;
      LOWORD(__p.__r_.__value_.__r.__words[1]) = 1024;
      *(&__p.__r_.__value_.__r.__words[1] + 2) = v7;
      _os_log_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_DEFAULT, "#I Setting history from %d MB to %d MB", &__p, 0xEu);
      v7 = v13;
    }

    *(a1 + 284) = v7;
    v10 = *(a1 + 312);
    if (v10)
    {
      TraceFileCollection::setHistory(v10);
    }
  }

LABEL_14:
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_23C21BFA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ICETrace::setPropMode_sync(uint64_t a1, dispatch_object_t *a2, char *a3, uint64_t a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v7);
  }

  if ((prop::bbtrace::set(a3, a4) & 1) == 0)
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (a3[23] < 0)
      {
        a3 = *a3;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = a3;
      _os_log_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_DEFAULT, "#I Failed to set %s property", &buf, 0xCu);
      v12 = 0;
      if (v7)
      {
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    goto LABEL_37;
  }

  memset(&buf, 0, sizeof(buf));
  v8 = -1431655766;
  if (!prop::bbtrace::get(a3, &buf))
  {
    v10 = 0;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_20;
    }

LABEL_16:
    if ((v10 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_17:
    v13 = *(a1 + 96);
    v14 = *(a1 + 273);
    if (v13 == v8)
    {
      if ((*(a1 + 273) & 1) == 0)
      {
LABEL_28:
        v12 = 1;
        if (!v7)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }
    }

    else if ((*(a1 + 273) & 1) == 0)
    {
      v19 = *(a1 + 40);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        if (v13 > 6)
        {
          v20 = "Unknown";
        }

        else
        {
          v20 = off_278BB8A48[v13];
        }

        if (v8 > 6)
        {
          v23 = "Unknown";
        }

        else
        {
          v23 = off_278BB8A48[v8];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
        *(buf.__r_.__value_.__r.__words + 4) = v20;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v23;
        _os_log_impl(&dword_23C1C4000, v19, OS_LOG_TYPE_DEFAULT, "#I Setting mode from %s to %s", &buf, 0x16u);
      }

      v24 = *(a1 + 16);
      if (!v24 || (v25 = *(a1 + 8), (v26 = std::__shared_weak_count::lock(v24)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v27 = v26;
      atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v26->__on_zero_shared)(v26);
        std::__shared_weak_count::__release_weak(v27);
      }

      *&buf.__r_.__value_.__l.__data_ = 0uLL;
      *(a1 + 96) = v8;
      *(a1 + 273) = 1;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1174405120;
      aBlock[2] = ___ZN8ICETrace16setPropMode_syncEN8dispatch5groupENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8__block_invoke;
      aBlock[3] = &__block_descriptor_tmp_113;
      aBlock[4] = a1;
      group = v7;
      if (v7)
      {
        dispatch_retain(v7);
        dispatch_group_enter(group);
      }

      v36 = v25;
      v37 = v27;
      atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v38 = v8;
      v28 = _Block_copy(aBlock);
      v29 = *(a1 + 24);
      if (v29)
      {
        dispatch_retain(*(a1 + 24));
      }

      buf.__r_.__value_.__r.__words[0] = v28;
      buf.__r_.__value_.__l.__size_ = v29;
      v30 = *(a1 + 360);
      if (v30)
      {
        if (v28)
        {
          v31 = _Block_copy(v28);
        }

        else
        {
          v31 = 0;
        }

        v32 = v31;
        object = v29;
        if (v29)
        {
          dispatch_retain(v29);
        }

        (*(*v30 + 48))(v30, 0, &v32);
        if (object)
        {
          dispatch_release(object);
        }

        if (v32)
        {
          _Block_release(v32);
        }
      }

      if (v37)
      {
        std::__shared_weak_count::__release_weak(v37);
      }

      if (group)
      {
        dispatch_group_leave(group);
        if (group)
        {
          dispatch_release(group);
        }
      }

      if (v29)
      {
        dispatch_release(v29);
      }

      if (v28)
      {
        _Block_release(v28);
      }

      std::__shared_weak_count::__release_weak(v27);
      v12 = 1;
      if (v7)
      {
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    *(a1 + 96) = v8;
    goto LABEL_28;
  }

  v39 = -1431655766;
  v9 = util::convert<int>(&buf, &v39, 0);
  v10 = v9;
  if (v9)
  {
    v8 = v39;
  }

  else
  {
    v8 = -1431655766;
  }

  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  operator delete(buf.__r_.__value_.__l.__data_);
  if (v10)
  {
    goto LABEL_17;
  }

LABEL_21:
  v15 = *(a1 + 40);
  if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_37;
  }

  if ((a3[23] & 0x80000000) == 0)
  {
    v16 = *(a1 + 96);
    if (v16 <= 6)
    {
      goto LABEL_24;
    }

LABEL_34:
    v17 = "Unknown";
    if (v8 > 6)
    {
      goto LABEL_25;
    }

LABEL_35:
    v18 = off_278BB8A48[v8];
    goto LABEL_36;
  }

  a3 = *a3;
  v16 = *(a1 + 96);
  if (v16 > 6)
  {
    goto LABEL_34;
  }

LABEL_24:
  v17 = off_278BB8A48[v16];
  if (v8 <= 6)
  {
    goto LABEL_35;
  }

LABEL_25:
  v18 = "Unknown";
LABEL_36:
  LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
  *(buf.__r_.__value_.__r.__words + 4) = a3;
  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
  *(&buf.__r_.__value_.__r.__words[1] + 6) = v17;
  HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
  v41 = v18;
  _os_log_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_DEFAULT, "#I Failed to get %s property as mode from %s to %s", &buf, 0x20u);
LABEL_37:
  v12 = 0;
  if (v7)
  {
LABEL_38:
    dispatch_group_leave(v7);
    dispatch_release(v7);
  }

LABEL_39:
  v21 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_23C21C488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_group_t group, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ICETrace::setPropActiveConfig_sync(uint64_t a1, dispatch_object_t *a2, char *a3, uint64_t a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v7);
  }

  v9 = (a1 + 104);
  v8 = *(a1 + 104);
  if (*(a1 + 127) >= 0)
  {
    v10 = (a1 + 104);
  }

  else
  {
    v10 = *(a1 + 104);
  }

  v11 = *(a4 + 23);
  v12 = *a4;
  if (v11 >= 0)
  {
    v13 = a4;
  }

  else
  {
    v13 = *a4;
  }

  if (!strcasecmp(v10, v13))
  {
    v14 = *(a1 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = v13;
      _os_log_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_DEFAULT, "#I Trace config already set: %s", buf, 0xCu);
    }

    v15 = 1;
  }

  else
  {
    __p = 0;
    v47 = 0;
    v48 = 0;
    if (v11 < 0)
    {
      std::string::__init_copy_ctor_external(&v45, v12, *(a4 + 8));
    }

    else
    {
      v45 = *a4;
    }

    v16 = ICETrace::loadTraceConfigFile_sync(a1, &v45, &__p, 0);
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      v22 = v16;
      operator delete(v45.__r_.__value_.__l.__data_);
      v23 = v22;
      v17 = *(a1 + 40);
      if (v23)
      {
LABEL_18:
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = a1 + 104;
          if (*(a1 + 127) < 0)
          {
            v18 = *v9;
          }

          v19 = a4;
          if (*(a4 + 23) < 0)
          {
            v19 = *a4;
          }

          *buf = 136315394;
          *&buf[4] = v18;
          *&buf[12] = 2080;
          *&buf[14] = v19;
          _os_log_impl(&dword_23C1C4000, v17, OS_LOG_TYPE_DEFAULT, "#I Setting Active Config File from %s to %s", buf, 0x16u);
        }

        if (prop::bbtrace::set(a3, a4))
        {
          if (v9 != a4)
          {
            v20 = *(a4 + 23);
            if (*(a1 + 127) < 0)
            {
              if (v20 >= 0)
              {
                v27 = a4;
              }

              else
              {
                v27 = *a4;
              }

              if (v20 >= 0)
              {
                v28 = *(a4 + 23);
              }

              else
              {
                v28 = *(a4 + 8);
              }

              std::string::__assign_no_alias<false>((a1 + 104), v27, v28);
            }

            else if ((*(a4 + 23) & 0x80) != 0)
            {
              std::string::__assign_no_alias<true>((a1 + 104), *a4, *(a4 + 8));
            }

            else
            {
              v21 = *a4;
              *(a1 + 120) = *(a4 + 16);
              *v9 = v21;
            }
          }

          if ((a1 + 176) != &__p)
          {
            std::vector<char>::__assign_with_size[abi:ne200100]<char *,char *>((a1 + 176), __p, v47, v47 - __p);
          }

          v29 = *(a1 + 16);
          if (!v29 || (v30 = *(a1 + 8), (v31 = std::__shared_weak_count::lock(v29)) == 0))
          {
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }

          v32 = v31;
          atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v31->__on_zero_shared)(v31);
            std::__shared_weak_count::__release_weak(v32);
          }

          v43 = 0xAAAAAAAAAAAAAAAALL;
          v44 = 0xAAAAAAAAAAAAAAAALL;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1174405120;
          aBlock[2] = ___ZN8ICETrace24setPropActiveConfig_syncEN8dispatch5groupENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8__block_invoke;
          aBlock[3] = &__block_descriptor_tmp_123_0;
          aBlock[4] = a1;
          group = v7;
          if (v7)
          {
            dispatch_retain(v7);
            dispatch_group_enter(group);
          }

          v41 = v30;
          v42 = v32;
          atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v33 = _Block_copy(aBlock);
          v34 = *(a1 + 24);
          if (v34)
          {
            dispatch_retain(*(a1 + 24));
          }

          v43 = v33;
          v44 = v34;
          if (!*(a1 + 360))
          {
LABEL_66:
            if (v34)
            {
              dispatch_release(v34);
            }

            if (v33)
            {
              _Block_release(v33);
            }

            if (v42)
            {
              std::__shared_weak_count::__release_weak(v42);
            }

            if (group)
            {
              dispatch_group_leave(group);
              if (group)
              {
                dispatch_release(group);
              }
            }

            std::__shared_weak_count::__release_weak(v32);
            v15 = 1;
            v24 = __p;
            if (!__p)
            {
              goto LABEL_33;
            }

LABEL_32:
            v47 = v24;
            operator delete(v24);
            goto LABEL_33;
          }

          v51 = 0xAAAAAAAAAAAAAAAALL;
          *&v35 = 0xAAAAAAAAAAAAAAAALL;
          *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&buf[16] = v35;
          *v50 = v35;
          *buf = v35;
          trace::TraceMaskInfo::TraceMaskInfo(buf, a1 + 176, a1 + 200);
          v36 = *(a1 + 360);
          if (v33)
          {
            v37 = _Block_copy(v33);
            object = v34;
            if (!v34)
            {
LABEL_58:
              (*(*v36 + 56))(v36, buf, &v37);
              if (object)
              {
                dispatch_release(object);
              }

              if (v37)
              {
                _Block_release(v37);
              }

              *buf = &unk_284EFAAF0;
              if (v50[0])
              {
                v50[1] = v50[0];
                operator delete(v50[0]);
              }

              if (*&buf[8])
              {
                *&buf[16] = *&buf[8];
                operator delete(*&buf[8]);
              }

              goto LABEL_66;
            }
          }

          else
          {
            v37 = 0;
            object = v34;
            if (!v34)
            {
              goto LABEL_58;
            }
          }

          dispatch_retain(v34);
          goto LABEL_58;
        }

LABEL_31:
        v15 = 0;
        v24 = __p;
        if (!__p)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v17 = *(a1 + 40);
      if (v16)
      {
        goto LABEL_18;
      }
    }

    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    if (*(a4 + 23) < 0)
    {
      a4 = *a4;
    }

    *buf = 136315138;
    *&buf[4] = a4;
    _os_log_error_impl(&dword_23C1C4000, v17, OS_LOG_TYPE_ERROR, "Failed to load trace config %s", buf, 0xCu);
    v15 = 0;
    v24 = __p;
    if (__p)
    {
      goto LABEL_32;
    }
  }

LABEL_33:
  if (v7)
  {
    dispatch_group_leave(v7);
    dispatch_release(v7);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_23C21CA74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_group_t group, uint64_t a17, std::__shared_weak_count *a18, char a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, uint64_t a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ICETrace::setPropSleepConfig_sync(uint64_t a1, dispatch_object_t *a2, char *a3, uint64_t a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v7);
  }

  v9 = (a1 + 128);
  v8 = *(a1 + 128);
  if (*(a1 + 151) >= 0)
  {
    v10 = (a1 + 128);
  }

  else
  {
    v10 = *(a1 + 128);
  }

  v11 = *(a4 + 23);
  v12 = *a4;
  if (v11 >= 0)
  {
    v13 = a4;
  }

  else
  {
    v13 = *a4;
  }

  if (!strcasecmp(v10, v13))
  {
    v14 = *(a1 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = v13;
      _os_log_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_DEFAULT, "#I Trace config already set: %s", buf, 0xCu);
    }

    v15 = 1;
  }

  else
  {
    __p = 0;
    v47 = 0;
    v48 = 0;
    if (v11 < 0)
    {
      std::string::__init_copy_ctor_external(&v45, v12, *(a4 + 8));
    }

    else
    {
      v45 = *a4;
    }

    v16 = ICETrace::loadTraceConfigFile_sync(a1, &v45, &__p, 0);
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      v22 = v16;
      operator delete(v45.__r_.__value_.__l.__data_);
      v23 = v22;
      v17 = *(a1 + 40);
      if (v23)
      {
LABEL_18:
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = a1 + 128;
          if (*(a1 + 151) < 0)
          {
            v18 = *v9;
          }

          v19 = a4;
          if (*(a4 + 23) < 0)
          {
            v19 = *a4;
          }

          *buf = 136315394;
          *&buf[4] = v18;
          *&buf[12] = 2080;
          *&buf[14] = v19;
          _os_log_impl(&dword_23C1C4000, v17, OS_LOG_TYPE_DEFAULT, "#I Setting Sleep Config File from %s to %s", buf, 0x16u);
        }

        if (prop::bbtrace::set(a3, a4))
        {
          if (v9 != a4)
          {
            v20 = *(a4 + 23);
            if (*(a1 + 151) < 0)
            {
              if (v20 >= 0)
              {
                v27 = a4;
              }

              else
              {
                v27 = *a4;
              }

              if (v20 >= 0)
              {
                v28 = *(a4 + 23);
              }

              else
              {
                v28 = *(a4 + 8);
              }

              std::string::__assign_no_alias<false>((a1 + 128), v27, v28);
            }

            else if ((*(a4 + 23) & 0x80) != 0)
            {
              std::string::__assign_no_alias<true>((a1 + 128), *a4, *(a4 + 8));
            }

            else
            {
              v21 = *a4;
              *(a1 + 144) = *(a4 + 16);
              *v9 = v21;
            }
          }

          if ((a1 + 200) != &__p)
          {
            std::vector<char>::__assign_with_size[abi:ne200100]<char *,char *>((a1 + 200), __p, v47, v47 - __p);
          }

          v29 = *(a1 + 16);
          if (!v29 || (v30 = *(a1 + 8), (v31 = std::__shared_weak_count::lock(v29)) == 0))
          {
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }

          v32 = v31;
          atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v31->__on_zero_shared)(v31);
            std::__shared_weak_count::__release_weak(v32);
          }

          v43 = 0xAAAAAAAAAAAAAAAALL;
          v44 = 0xAAAAAAAAAAAAAAAALL;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1174405120;
          aBlock[2] = ___ZN8ICETrace23setPropSleepConfig_syncEN8dispatch5groupENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8__block_invoke;
          aBlock[3] = &__block_descriptor_tmp_127;
          aBlock[4] = a1;
          group = v7;
          if (v7)
          {
            dispatch_retain(v7);
            dispatch_group_enter(group);
          }

          v41 = v30;
          v42 = v32;
          atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v33 = _Block_copy(aBlock);
          v34 = *(a1 + 24);
          if (v34)
          {
            dispatch_retain(*(a1 + 24));
          }

          v43 = v33;
          v44 = v34;
          if (!*(a1 + 360))
          {
LABEL_66:
            if (v34)
            {
              dispatch_release(v34);
            }

            if (v33)
            {
              _Block_release(v33);
            }

            if (v42)
            {
              std::__shared_weak_count::__release_weak(v42);
            }

            if (group)
            {
              dispatch_group_leave(group);
              if (group)
              {
                dispatch_release(group);
              }
            }

            std::__shared_weak_count::__release_weak(v32);
            v15 = 1;
            v24 = __p;
            if (!__p)
            {
              goto LABEL_33;
            }

LABEL_32:
            v47 = v24;
            operator delete(v24);
            goto LABEL_33;
          }

          v51 = 0xAAAAAAAAAAAAAAAALL;
          *&v35 = 0xAAAAAAAAAAAAAAAALL;
          *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&buf[16] = v35;
          *v50 = v35;
          *buf = v35;
          trace::TraceMaskInfo::TraceMaskInfo(buf, a1 + 176, a1 + 200);
          v36 = *(a1 + 360);
          if (v33)
          {
            v37 = _Block_copy(v33);
            object = v34;
            if (!v34)
            {
LABEL_58:
              (*(*v36 + 56))(v36, buf, &v37);
              if (object)
              {
                dispatch_release(object);
              }

              if (v37)
              {
                _Block_release(v37);
              }

              *buf = &unk_284EFAAF0;
              if (v50[0])
              {
                v50[1] = v50[0];
                operator delete(v50[0]);
              }

              if (*&buf[8])
              {
                *&buf[16] = *&buf[8];
                operator delete(*&buf[8]);
              }

              goto LABEL_66;
            }
          }

          else
          {
            v37 = 0;
            object = v34;
            if (!v34)
            {
              goto LABEL_58;
            }
          }

          dispatch_retain(v34);
          goto LABEL_58;
        }

LABEL_31:
        v15 = 0;
        v24 = __p;
        if (!__p)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v17 = *(a1 + 40);
      if (v16)
      {
        goto LABEL_18;
      }
    }

    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    if (*(a4 + 23) < 0)
    {
      a4 = *a4;
    }

    *buf = 136315138;
    *&buf[4] = a4;
    _os_log_error_impl(&dword_23C1C4000, v17, OS_LOG_TYPE_ERROR, "Failed to load trace config %s", buf, 0xCu);
    v15 = 0;
    v24 = __p;
    if (__p)
    {
      goto LABEL_32;
    }
  }

LABEL_33:
  if (v7)
  {
    dispatch_group_leave(v7);
    dispatch_release(v7);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_23C21D098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_group_t group, uint64_t a17, std::__shared_weak_count *a18, char a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, uint64_t a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ICETrace::setPropBackgroundMode_sync(uint64_t a1, NSObject **a2, char *a3, uint64_t a4)
{
  v49 = *MEMORY[0x277D85DE8];
  if (capabilities::abs::supportsTraceBackgroundMode(a1))
  {
    v8 = prop::bbtrace::set(a3, a4);
    v9 = *a2;
    if (v9)
    {
      dispatch_retain(v9);
      dispatch_group_enter(v9);
    }

    v10 = *(a1 + 16);
    if (!v10 || (v11 = *(a1 + 8), (v12 = std::__shared_weak_count::lock(v10)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v13 = v12;
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (v8)
      {
        goto LABEL_8;
      }
    }

    else
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v13);
      if (v8)
      {
LABEL_8:
        v47 = -86;
        memset(&buf, 0, sizeof(buf));
        if (prop::bbtrace::get(a3, &buf))
        {
          v14 = util::convert<BOOL>(&buf, &v47, 0);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v14 = 0;
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_10:
            operator delete(buf.__r_.__value_.__l.__data_);
            if (!v14)
            {
LABEL_45:
              std::__shared_weak_count::__release_weak(v13);
              if (!v9)
              {
                goto LABEL_16;
              }

              goto LABEL_15;
            }

LABEL_19:
            v17 = v47;
            if (v47 == *(a1 + 248))
            {
              goto LABEL_45;
            }

            v18 = *(a1 + 40);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = "disabled";
              if (v17)
              {
                v19 = "enabled";
              }

              LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
              *(buf.__r_.__value_.__r.__words + 4) = v19;
              _os_log_impl(&dword_23C1C4000, v18, OS_LOG_TYPE_DEFAULT, "#I Setting BB Trace BackgroundMode to %s", &buf, 0xCu);
              LOBYTE(v17) = v47;
            }

            *(a1 + 248) = v17;
            if (*(a1 + 280) != 1 || (v20 = *(a1 + 360)) == 0 || !(*(*v20 + 128))(v20))
            {
              v30 = *(a1 + 40);
              if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_45;
              }

              if (v47)
              {
                v31 = "enable";
              }

              else
              {
                v31 = "disable";
              }

              LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
              *(buf.__r_.__value_.__r.__words + 4) = v31;
              _os_log_impl(&dword_23C1C4000, v30, OS_LOG_TYPE_DEFAULT, "#I Trace is not enabled/started. Restart Trace for 'BackgroundMode %s' action to take effect", &buf, 0xCu);
LABEL_43:
              std::__shared_weak_count::__release_weak(v13);
              v14 = 1;
              if (!v9)
              {
                goto LABEL_16;
              }

              goto LABEL_15;
            }

            v45 = 0xAAAAAAAAAAAAAAAALL;
            v46 = 0xAAAAAAAAAAAAAAAALL;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1174405120;
            aBlock[2] = ___ZN8ICETrace26setPropBackgroundMode_syncEN8dispatch5groupENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8__block_invoke;
            aBlock[3] = &__block_descriptor_tmp_105_0;
            aBlock[4] = a1;
            group = v9;
            if (v9)
            {
              dispatch_retain(v9);
              dispatch_group_enter(group);
            }

            v43 = v11;
            v44 = v13;
            atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v21 = _Block_copy(aBlock);
            v22 = *(a1 + 24);
            if (v22)
            {
              dispatch_retain(*(a1 + 24));
            }

            v45 = v21;
            v46 = v22;
            buf.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
            buf.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAAAALL;
            v23 = *(a1 + 248);
            buf.__r_.__value_.__r.__words[0] = &unk_284EFAAC8;
            buf.__r_.__value_.__s.__data_[8] = 1;
            buf.__r_.__value_.__s.__data_[9] = v23;
            *(&buf.__r_.__value_.__r.__words[1] + 4) = *(a1 + 252);
            v24 = *(a1 + 360);
            dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::callback(v40, &v45);
            (*(*v24 + 64))(v24, &buf, v40);
            v25 = dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v40);
            v26 = *(a1 + 96);
            if (v26 != 6 && v26 || (config::hw::watch(v25) & 1) != 0 || (*(a1 + 248) & 1) != 0)
            {
              v27 = *(a1 + 336);
              v28 = *(a1 + 352);
              if (v28)
              {
                v29 = _Block_copy(v28);
                v38 = v29;
                BasebandTransport::reportStatus(v27, 0, &v38);
                if (v29)
                {
                  _Block_release(v29);
                }

                goto LABEL_49;
              }

              v38 = 0;
              v32 = &v38;
              v33 = v27;
              v34 = 0;
            }

            else
            {
              v35 = *(a1 + 336);
              v36 = *(a1 + 352);
              if (v36)
              {
                v37 = _Block_copy(v36);
                v39 = v37;
                BasebandTransport::reportStatus(v35, 600, &v39);
                if (v37)
                {
                  _Block_release(v37);
                }

                goto LABEL_49;
              }

              v39 = 0;
              v32 = &v39;
              v33 = v35;
              v34 = 600;
            }

            BasebandTransport::reportStatus(v33, v34, v32);
LABEL_49:
            dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&v45);
            if (v44)
            {
              std::__shared_weak_count::__release_weak(v44);
            }

            if (group)
            {
              dispatch_group_leave(group);
              if (group)
              {
                dispatch_release(group);
              }
            }

            goto LABEL_43;
          }
        }

        if (!v14)
        {
          goto LABEL_45;
        }

        goto LABEL_19;
      }
    }

    std::__shared_weak_count::__release_weak(v13);
    v14 = 0;
    if (v9)
    {
LABEL_15:
      dispatch_group_leave(v9);
      dispatch_release(v9);
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_16:
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_23C21D65C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, dispatch_group_t group, uint64_t a20, std::__shared_weak_count *a21, char a22)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ICETrace::setPropHighWatermark_sync(uint64_t a1, dispatch_object_t *a2, char *a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v7);
  }

  if (!prop::bbtrace::set(a3, a4))
  {
    v8 = 0;
    goto LABEL_15;
  }

  v14 = -1431655766;
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(a3, &__p))
  {
    v8 = util::convert<int>(&__p, &v14, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_9:
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v8)
  {
    v9 = v14;
    v10 = *(a1 + 252);
    if (v14 != v10)
    {
      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = 67109376;
        HIDWORD(__p.__r_.__value_.__r.__words[0]) = v10;
        LOWORD(__p.__r_.__value_.__r.__words[1]) = 1024;
        *(&__p.__r_.__value_.__r.__words[1] + 2) = v9;
        _os_log_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_DEFAULT, "#I Setting high watermark from %d to %d", &__p, 0xEu);
        v9 = v14;
      }

      *(a1 + 252) = v9;
    }
  }

LABEL_15:
  if (v7)
  {
    dispatch_group_leave(v7);
    dispatch_release(v7);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_23C21D888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    dispatch_group_leave(v16);
    dispatch_release(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ICETrace::setPropLowWatermark_sync(uint64_t a1, dispatch_object_t *a2, char *a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v7);
  }

  if (!prop::bbtrace::set(a3, a4))
  {
    v8 = 0;
    goto LABEL_15;
  }

  v14 = -1431655766;
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(a3, &__p))
  {
    v8 = util::convert<int>(&__p, &v14, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_9:
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v8)
  {
    v9 = v14;
    v10 = *(a1 + 256);
    if (v14 != v10)
    {
      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = 67109376;
        HIDWORD(__p.__r_.__value_.__r.__words[0]) = v10;
        LOWORD(__p.__r_.__value_.__r.__words[1]) = 1024;
        *(&__p.__r_.__value_.__r.__words[1] + 2) = v9;
        _os_log_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_DEFAULT, "#I Setting low watermark from %d to %d", &__p, 0xEu);
        v9 = v14;
      }

      *(a1 + 256) = v9;
    }
  }

LABEL_15:
  if (v7)
  {
    dispatch_group_leave(v7);
    dispatch_release(v7);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_23C21DA3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    dispatch_group_leave(v16);
    dispatch_release(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ICETrace::setPropSleepTraceEnabled_sync(uint64_t a1, dispatch_object_t *a2, char *a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v7);
  }

  if (!prop::bbtrace::set(a3, a4))
  {
    v8 = 0;
    goto LABEL_15;
  }

  v14 = -86;
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(a3, &__p))
  {
    v8 = util::convert<BOOL>(&__p, &v14, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_9:
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v8)
  {
    v9 = v14;
    v10 = *(a1 + 260);
    if (v14 != v10)
    {
      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = 67109376;
        HIDWORD(__p.__r_.__value_.__r.__words[0]) = v10;
        LOWORD(__p.__r_.__value_.__r.__words[1]) = 1024;
        *(&__p.__r_.__value_.__r.__words[1] + 2) = v9;
        _os_log_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_DEFAULT, "#I Setting sleep trace enabled from %d to %d", &__p, 0xEu);
        LOBYTE(v9) = v14;
      }

      *(a1 + 260) = v9;
    }
  }

LABEL_15:
  if (v7)
  {
    dispatch_group_leave(v7);
    dispatch_release(v7);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_23C21DBF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    dispatch_group_leave(v16);
    dispatch_release(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ICETrace::setPropETBSetup_sync(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v60 = *MEMORY[0x277D85DE8];
  result = capabilities::abs::supportsETB(a1);
  if (!result)
  {
    goto LABEL_68;
  }

  v8 = *(a1 + 175);
  if ((v8 & 0x8000000000000000) == 0)
  {
    if (*(a1 + 175))
    {
      goto LABEL_4;
    }

LABEL_16:
    result = 0;
    v17 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (!*(a1 + 160))
  {
    goto LABEL_16;
  }

LABEL_4:
  v9 = (a1 + 152);
  if (v8 >= 0)
  {
    v10 = (a1 + 152);
  }

  else
  {
    v10 = *(a1 + 152);
  }

  if (*(a4 + 23) >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = *a4;
  }

  result = strcasecmp(v10, v11);
  if (!result)
  {
    goto LABEL_68;
  }

  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v57 = v12;
  v58 = v12;
  v55 = v12;
  v56 = v12;
  v53 = v12;
  v54 = v12;
  v52 = v12;
  v13 = *MEMORY[0x277CECC40];
  v14 = strlen(*MEMORY[0x277CECC40]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v14 | 7) + 1;
    }

    v16 = operator new(v18);
    *&__dst[8] = v15;
    *&__dst[16] = v18 | 0x8000000000000000;
    *__dst = v16;
    goto LABEL_21;
  }

  __dst[23] = v14;
  v16 = __dst;
  if (v14)
  {
LABEL_21:
    memmove(v16, v13, v15);
  }

  v16[v15] = 0;
  v19 = *MEMORY[0x277CECD58];
  v20 = strlen(*MEMORY[0x277CECD58]);
  if (v20 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v21 = v20;
  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v20 | 7) + 1;
    }

    v22 = operator new(v23);
    *(&v50 + 1) = v21;
    v51 = v23 | 0x8000000000000000;
    *&v50 = v22;
    goto LABEL_30;
  }

  HIBYTE(v51) = v20;
  v22 = &v50;
  if (v20)
  {
LABEL_30:
    memmove(v22, v19, v21);
  }

  *(v22 + v21) = 0;
  v24 = operator new(0x20uLL);
  v48 = v24;
  v49 = xmmword_23C32CA70;
  strcpy(v24, "ETB Config file has changed");
  Timestamp::Timestamp(v44);
  Timestamp::asString(v44, 0, 9, __p);
  v43 = 0;
  LOBYTE(v42) = 0;
  ResetInfo::ResetInfo(&v52, __dst, &v50, &v48, __p, 7, &v42);
  if (v47 < 0)
  {
    operator delete(__p[0]);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v44, v45);
  operator delete(v24);
  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50);
    if ((__dst[23] & 0x80000000) == 0)
    {
      goto LABEL_35;
    }
  }

  else if ((__dst[23] & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  operator delete(*__dst);
LABEL_35:
  ResetInfo::ResetInfo(&v35, &v52);
  ICETrace::commandResetModem_sync(a1, &v35);
  if (v41 < 0)
  {
    operator delete(v40);
    if ((v39 & 0x80000000) == 0)
    {
LABEL_37:
      if ((v37 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

LABEL_54:
      operator delete(v36);
      if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_55;
    }
  }

  else if ((v39 & 0x80000000) == 0)
  {
    goto LABEL_37;
  }

  operator delete(v38);
  if (v37 < 0)
  {
    goto LABEL_54;
  }

LABEL_38:
  if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_39;
  }

LABEL_55:
  operator delete(v35.__r_.__value_.__l.__data_);
LABEL_39:
  result = prop::bbtrace::set(a3, a4);
  v25 = result;
  if (result)
  {
    v26 = *(a1 + 40);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = a1 + 152;
      if (*(a1 + 175) < 0)
      {
        v27 = *v9;
      }

      v28 = a4;
      if (*(a4 + 23) < 0)
      {
        v28 = *a4;
      }

      *__dst = 136315394;
      *&__dst[4] = v27;
      *&__dst[12] = 2080;
      *&__dst[14] = v28;
      _os_log_impl(&dword_23C1C4000, v26, OS_LOG_TYPE_DEFAULT, "#I Setting ETB Config File from %s to %s", __dst, 0x16u);
    }

    result = v25;
    if (v9 != a4)
    {
      v29 = *(a4 + 23);
      if (*(a1 + 175) < 0)
      {
        if (v29 >= 0)
        {
          v31 = a4;
        }

        else
        {
          v31 = *a4;
        }

        if (v29 >= 0)
        {
          v32 = *(a4 + 23);
        }

        else
        {
          v32 = *(a4 + 8);
        }

        std::string::__assign_no_alias<false>((a1 + 152), v31, v32);
        result = v25;
      }

      else if ((*(a4 + 23) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>((a1 + 152), *a4, *(a4 + 8));
        result = v25;
      }

      else
      {
        v30 = *a4;
        *(a1 + 168) = *(a4 + 16);
        *v9 = v30;
      }
    }
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(*(&v57 + 1));
    result = v25;
    if ((SBYTE7(v56) & 0x80000000) == 0)
    {
LABEL_66:
      if ((SHIBYTE(v54) & 0x80000000) == 0)
      {
        goto LABEL_67;
      }

LABEL_71:
      operator delete(*(&v53 + 1));
      result = v25;
      if ((SBYTE7(v53) & 0x80000000) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_72;
    }
  }

  else if ((SBYTE7(v56) & 0x80000000) == 0)
  {
    goto LABEL_66;
  }

  operator delete(v55);
  result = v25;
  if (SHIBYTE(v54) < 0)
  {
    goto LABEL_71;
  }

LABEL_67:
  if ((SBYTE7(v53) & 0x80000000) == 0)
  {
LABEL_68:
    v33 = *MEMORY[0x277D85DE8];
    return result;
  }

LABEL_72:
  operator delete(v52);
  result = v25;
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C21E0CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45)
{
  ResetInfo::~ResetInfo(&a10);
  ResetInfo::~ResetInfo(&a45);
  _Unwind_Resume(a1);
}

uint64_t ICETrace::setPropMaxMemoryFileCount_sync(uint64_t a1, dispatch_object_t *a2, char *a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v7);
  }

  if (!prop::bbtrace::set(a3, a4))
  {
    v8 = 0;
    goto LABEL_17;
  }

  v15 = -1431655766;
  memset(&__p, 0, sizeof(__p));
  if (!prop::bbtrace::get(a3, &__p))
  {
    v8 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_11;
    }

LABEL_9:
    if (!v8)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v8 = util::convert<unsigned int>(&__p, &v15, 0);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_11:
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_12:
  v9 = v15;
  v10 = *(a1 + 276);
  if (v15 != v10)
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v10;
      LOWORD(__p.__r_.__value_.__r.__words[1]) = 1024;
      *(&__p.__r_.__value_.__r.__words[1] + 2) = v9;
      _os_log_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_DEFAULT, "#I Setting max memory file count from %u to %u", &__p, 0xEu);
      v9 = v15;
    }

    *(a1 + 276) = v9;
    v12 = *(a1 + 312);
    if (v12)
    {
      TraceFileCollection::setMaxMemoryFileCount(v12);
    }
  }

LABEL_17:
  if (v7)
  {
    dispatch_group_leave(v7);
    dispatch_release(v7);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_23C21E2F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    dispatch_group_leave(v16);
    dispatch_release(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ICETrace::setPropFileSize_sync(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!prop::bbtrace::set(a3, a4))
  {
    v6 = 0;
    goto LABEL_14;
  }

  v13 = -1431655766;
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(a3, &__p))
  {
    v6 = util::convert<unsigned int>(&__p, &v13, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v6 = 0;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_9:
  v7 = v13;
  v8 = *(a1 + 288);
  if (v13 != v8)
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v8 >> 10;
      LOWORD(__p.__r_.__value_.__r.__words[1]) = 1024;
      *(&__p.__r_.__value_.__r.__words[1] + 2) = v7 >> 10;
      _os_log_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_DEFAULT, "#I Changing file size from %d KB to %d KB", &__p, 0xEu);
      v7 = v13;
    }

    *(a1 + 288) = v7;
    v10 = *(a1 + 312);
    if (v10)
    {
      TraceFileCollection::setFileSize(v10);
    }
  }

LABEL_14:
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_23C21E498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ICETrace::setPropTransportReadSize_sync(_BYTE *a1, NSObject **a2, char *a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!prop::bbtrace::set(a3, a4))
  {
    v7 = 0;
    goto LABEL_26;
  }

  v19 = 0;
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(a3, &__p))
  {
    v7 = util::convert<unsigned int>(&__p, &v19, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_9:
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!v7)
      {
        goto LABEL_26;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_9;
    }
  }

  if (!v7)
  {
    goto LABEL_26;
  }

LABEL_10:
  v8 = v19;
  v9 = *(a1 + 73);
  if (v19 != v9)
  {
    v10 = *(a1 + 5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v9 >> 10;
      LOWORD(__p.__r_.__value_.__r.__words[1]) = 1024;
      *(&__p.__r_.__value_.__r.__words[1] + 2) = v8 >> 10;
      _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, "#I Updating trace transport read-size from %u KB to %u KB", &__p, 0xEu);
      v8 = v19;
    }

    *(a1 + 73) = v8;
    if (a1[280] == 1)
    {
      v11 = *a2;
      object = v11;
      if (v11)
      {
        dispatch_retain(v11);
      }

      cf = 0;
      (*(*a1 + 168))(a1, &object, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      if (object)
      {
        dispatch_release(object);
      }

      v12 = *a2;
      v16 = v12;
      if (v12)
      {
        dispatch_retain(v12);
      }

      v15 = 0;
      (*(*a1 + 160))(a1, &v16, &v15);
      if (v15)
      {
        CFRelease(v15);
      }

      if (v16)
      {
        dispatch_release(v16);
      }
    }
  }

LABEL_26:
  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_23C21E6D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, dispatch_object_t object, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ICETrace::setPropTransportReadCount_sync(_BYTE *a1, NSObject **a2, char *a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!prop::bbtrace::set(a3, a4))
  {
    v7 = 0;
    goto LABEL_26;
  }

  v19 = 0;
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(a3, &__p))
  {
    v7 = util::convert<unsigned int>(&__p, &v19, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_9:
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!v7)
      {
        goto LABEL_26;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_9;
    }
  }

  if (!v7)
  {
    goto LABEL_26;
  }

LABEL_10:
  v8 = v19;
  v9 = *(a1 + 74);
  if (v19 != v9)
  {
    v10 = *(a1 + 5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v9;
      LOWORD(__p.__r_.__value_.__r.__words[1]) = 1024;
      *(&__p.__r_.__value_.__r.__words[1] + 2) = v8;
      _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, "#I Updating trace transport read-count from %d to %d", &__p, 0xEu);
      v8 = v19;
    }

    *(a1 + 74) = v8;
    if (a1[280] == 1)
    {
      v11 = *a2;
      object = v11;
      if (v11)
      {
        dispatch_retain(v11);
      }

      cf = 0;
      (*(*a1 + 168))(a1, &object, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      if (object)
      {
        dispatch_release(object);
      }

      v12 = *a2;
      v16 = v12;
      if (v12)
      {
        dispatch_retain(v12);
      }

      v15 = 0;
      (*(*a1 + 160))(a1, &v16, &v15);
      if (v15)
      {
        CFRelease(v15);
      }

      if (v16)
      {
        dispatch_release(v16);
      }
    }
  }

LABEL_26:
  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_23C21E94C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, dispatch_object_t object, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_48c30_ZTSN8dispatch13group_sessionE64c21_ZTSN8dispatch5groupE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 48) = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = *(a1 + 48);
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  v6 = *(a2 + 64);
  *(a1 + 64) = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void __destroy_helper_block_e8_48c30_ZTSN8dispatch13group_sessionE64c21_ZTSN8dispatch5groupE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(a1 + 48);
    if (v4)
    {

      dispatch_release(v4);
    }
  }
}

uint64_t ICETrace::getProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 1;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = ___ZN8ICETrace11getPropertyERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERS6__block_invoke;
  v7[3] = &unk_278BB89C0;
  v7[6] = a2;
  v7[7] = a3;
  v7[4] = &v8;
  v7[5] = a1;
  v12 = v7;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke_0;
  block[3] = &__block_descriptor_tmp_174;
  block[4] = a1 + 8;
  block[5] = &v12;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    dispatch_async_and_wait(v3, block);
  }

  else
  {
    dispatch_sync(v3, block);
  }

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

void ___ZN8ICETrace11getPropertyERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERS6__block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if ((*(v3 + 23) & 0x80000000) == 0)
  {
    if (strcasecmp(*(a1 + 48), "Enabled"))
    {
      if (strcasecmp(v3, "History"))
      {
        if (strcasecmp(v3, "Mode"))
        {
          if (strcasecmp(v3, "File"))
          {
            if (strcasecmp(v3, "File_Sleep"))
            {
              if (strcasecmp(v3, "BackgroundMode"))
              {
                if (strcasecmp(v3, "High_Watermark"))
                {
                  if (strcasecmp(v3, "Low_Watermark"))
                  {
                    if (strcasecmp(v3, "Enabled_During_Sleep"))
                    {
                      if (strcasecmp(v3, "State"))
                      {
                        if (strcasecmp(v3, "ETBFile"))
                        {
                          if (strcasecmp(v3, "MaxMemoryFileCount"))
                          {
                            if (strcasecmp(v3, "FileSize"))
                            {
                              if (strcasecmp(v3, "SizeIO"))
                              {
                                v4 = v3;
                                if (strcasecmp(v3, "NumberOfReadIO"))
                                {
LABEL_17:
                                  if (strcasecmp(v4, "Retain_Previous_Trace"))
                                  {
                                    *(*(*(a1 + 32) + 8) + 24) = 0;
                                    v5 = *(v2 + 40);
                                    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
                                    {
                                      if (*(v3 + 23) < 0)
                                      {
                                        v3 = *v3;
                                      }

                                      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                                      *(buf.__r_.__value_.__r.__words + 4) = v3;
                                      _os_log_error_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_ERROR, "Key not handled: %s", &buf, 0xCu);
                                    }

                                    goto LABEL_44;
                                  }

                                  util::to_str<BOOL>(*(v2 + 440), &buf);
LABEL_68:
                                  v28 = *(a1 + 56);
                                  if (*(v28 + 23) < 0)
                                  {
                                    operator delete(*v28);
                                  }

                                  v29 = *&buf.__r_.__value_.__l.__data_;
                                  *(v28 + 16) = *(&buf.__r_.__value_.__l + 2);
                                  *v28 = v29;
                                  goto LABEL_44;
                                }

LABEL_37:
                                util::to_str<unsigned int>(*(v2 + 296), &buf);
                                goto LABEL_68;
                              }

                              goto LABEL_84;
                            }

                            goto LABEL_83;
                          }

                          goto LABEL_82;
                        }

LABEL_79:
                        v31 = *(a1 + 56);
                        v32 = *MEMORY[0x277D85DE8];

                        std::string::operator=(v31, (v2 + 152));
                        return;
                      }

                      goto LABEL_75;
                    }

                    goto LABEL_67;
                  }

                  goto LABEL_56;
                }

LABEL_54:
                v21 = *(v2 + 252);
                v35[0] = 0;
                *(v35 + 7) = 0;
                std::to_string(&buf, v21);
                goto LABEL_41;
              }

LABEL_53:
              v20 = *(v2 + 248);
              v35[0] = 0;
              *(v35 + 7) = 0;
              std::to_string(&buf, v20);
              goto LABEL_41;
            }

            goto LABEL_49;
          }

          goto LABEL_45;
        }

        goto LABEL_40;
      }

      goto LABEL_39;
    }

LABEL_38:
    v6 = *(v2 + 280);
    v35[0] = 0;
    *(v35 + 7) = 0;
    std::to_string(&buf, v6);
LABEL_41:
    v35[0] = buf.__r_.__value_.__l.__size_;
    v9 = buf.__r_.__value_.__r.__words[0];
    *(v35 + 7) = *(&buf.__r_.__value_.__r.__words[1] + 7);
    v10 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    v11 = *(a1 + 56);
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    v12 = v35[0];
    *v11 = v9;
    *(v11 + 8) = v12;
    *(v11 + 15) = *(v35 + 7);
    *(v11 + 23) = v10;
    goto LABEL_44;
  }

  v4 = *v3;
  if (!strcasecmp(*v3, "Enabled"))
  {
    goto LABEL_38;
  }

  if (!strcasecmp(v4, "History"))
  {
LABEL_39:
    v7 = *(v2 + 284);
    v35[0] = 0;
    *(v35 + 7) = 0;
    std::to_string(&buf, v7);
    goto LABEL_41;
  }

  if (!strcasecmp(v4, "Mode"))
  {
LABEL_40:
    v8 = *(v2 + 96);
    v35[0] = 0;
    *(v35 + 7) = 0;
    std::to_string(&buf, v8);
    goto LABEL_41;
  }

  if (strcasecmp(v4, "File"))
  {
    if (strcasecmp(v4, "File_Sleep"))
    {
      if (strcasecmp(v4, "BackgroundMode"))
      {
        if (strcasecmp(v4, "High_Watermark"))
        {
          if (strcasecmp(v4, "Low_Watermark"))
          {
            if (strcasecmp(v4, "Enabled_During_Sleep"))
            {
              if (strcasecmp(v4, "State"))
              {
                if (strcasecmp(v4, "ETBFile"))
                {
                  if (strcasecmp(v4, "MaxMemoryFileCount"))
                  {
                    if (strcasecmp(v4, "FileSize"))
                    {
                      if (strcasecmp(v4, "SizeIO"))
                      {
                        if (strcasecmp(v4, "NumberOfReadIO"))
                        {
                          goto LABEL_17;
                        }

                        goto LABEL_37;
                      }

LABEL_84:
                      util::to_str<unsigned int>(*(v2 + 292), &buf);
                      goto LABEL_68;
                    }

LABEL_83:
                    util::to_str<unsigned int>(*(v2 + 288), &buf);
                    goto LABEL_68;
                  }

LABEL_82:
                  util::to_str<unsigned int>(*(v2 + 276), &buf);
                  goto LABEL_68;
                }

                goto LABEL_79;
              }

LABEL_75:
              std::string::basic_string[abi:ne200100]<0>(__p, "");
              ICETrace::dumpState_sync(v2, __p, 0, 10, &buf);
              std::string::operator=(*(a1 + 56), &buf);
              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              if (v34 < 0)
              {
                operator delete(__p[0]);
              }

              goto LABEL_44;
            }

LABEL_67:
            util::to_str<BOOL>(*(v2 + 260), &buf);
            goto LABEL_68;
          }

LABEL_56:
          util::to_str<BOOL>(*(v2 + 256), &buf);
          goto LABEL_68;
        }

        goto LABEL_54;
      }

      goto LABEL_53;
    }

LABEL_49:
    v14 = (v2 + 128);
    v15 = *(a1 + 56);
    if (v15 != v2 + 128)
    {
      v16 = *(v2 + 151);
      if ((*(v15 + 23) & 0x80000000) == 0)
      {
        if ((v16 & 0x80) == 0)
        {
          goto LABEL_52;
        }

        v17 = *(v2 + 128);
        v18 = *(v2 + 136);
LABEL_72:
        v30 = *MEMORY[0x277D85DE8];

        std::string::__assign_no_alias<true>(v15, v17, v18);
        return;
      }

      v22 = v16;
      v23 = *(v2 + 128);
      v24 = *(v2 + 136);
      goto LABEL_58;
    }

LABEL_44:
    v13 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_45:
  v14 = (v2 + 104);
  v15 = *(a1 + 56);
  if (v15 == v2 + 104)
  {
    goto LABEL_44;
  }

  v16 = *(v2 + 127);
  if ((*(v15 + 23) & 0x80000000) == 0)
  {
    if ((v16 & 0x80) == 0)
    {
LABEL_52:
      v19 = *v14;
      *(v15 + 16) = v14[2];
      *v15 = v19;
      goto LABEL_44;
    }

    v17 = *(v2 + 104);
    v18 = *(v2 + 112);
    goto LABEL_72;
  }

  v22 = v16;
  v23 = *(v2 + 104);
  v24 = *(v2 + 112);
LABEL_58:
  if (v22 >= 0)
  {
    v25 = v14;
  }

  else
  {
    v25 = v23;
  }

  if (v22 >= 0)
  {
    v26 = v16;
  }

  else
  {
    v26 = v24;
  }

  v27 = *MEMORY[0x277D85DE8];

  std::string::__assign_no_alias<false>(v15, v25, v26);
}

void sub_23C21F194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ICETrace::historyAsString_sync@<X0>(uint64_t this@<X0>, char *a2@<X8>)
{
  v2 = a2;
  if (!*(this + 284))
  {
    a2[23] = 8;
    strcpy(a2, "Infinite");
    return this;
  }

  v3 = this;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[7] = v4;
  v22[8] = v4;
  v22[5] = v4;
  v22[6] = v4;
  v22[3] = v4;
  v22[4] = v4;
  v22[1] = v4;
  v22[2] = v4;
  v21 = v4;
  v22[0] = v4;
  *v19 = v4;
  v20 = v4;
  v17 = v4;
  v18 = v4;
  v15 = v4;
  v16 = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
  std::to_string(&v24, *(v3 + 284));
  __p = v24;
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
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

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, p_p, size);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " MB", 3);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v8 = BYTE8(v21);
    if ((BYTE8(v21) & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_14:
    v10 = v21;
    if (v21 < *(&v18 + 1))
    {
      *&v21 = *(&v18 + 1);
      v10 = *(&v18 + 1);
    }

    v11 = v18;
    v9 = v10 - v18;
    if ((v10 - v18) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_29;
    }

    goto LABEL_17;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v8 = BYTE8(v21);
  if ((BYTE8(v21) & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ((v8 & 8) == 0)
  {
    v9 = 0;
    v2[23] = 0;
    goto LABEL_25;
  }

  v11 = *(&v16 + 1);
  v9 = *(&v17 + 1) - *(&v16 + 1);
  if (*(&v17 + 1) - *(&v16 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
  {
LABEL_29:
    std::string::__throw_length_error[abi:ne200100]();
  }

LABEL_17:
  if (v9 >= 0x17)
  {
    if ((v9 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v9 | 7) + 1;
    }

    v13 = operator new(v12);
    *(v2 + 1) = v9;
    *(v2 + 2) = v12 | 0x8000000000000000;
    *v2 = v13;
    v2 = v13;
  }

  else
  {
    v2[23] = v9;
    if (!v9)
    {
      goto LABEL_25;
    }
  }

  memmove(v2, v11, v9);
LABEL_25:
  v2[v9] = 0;
  *&v15 = *MEMORY[0x277D82828];
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v15 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[1]);
  }

  *(&v15 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v16);
  std::ostream::~ostream();
  return MEMORY[0x23EECE150](v22);
}

void sub_23C21F53C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23C21F2E4);
}

void sub_23C21F548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

void ___ZN8ICETrace26setPropBackgroundMode_syncEN8dispatch5groupENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8__block_invoke(void *a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  v5 = *(v4 + 88);
  if (v5)
  {
    dispatch_retain(*(v4 + 88));
    dispatch_group_enter(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    v44 = v7;
    if (v7)
    {
      v43 = a1[6];
      if (!v43 || !*a2)
      {
LABEL_50:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v21 = v7;
          (v7->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v21);
        }

        goto LABEL_52;
      }

      v8 = *(v4 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        if (*(v4 + 248))
        {
          v23 = "enabled";
        }

        else
        {
          v23 = "disabled";
        }

        *buf = 136315138;
        *&buf[4] = v23;
        _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Failed to set BB Trace BackgroundMode to %s", buf, 0xCu);
      }

      *&v9 = 0xAAAAAAAAAAAAAAAALL;
      *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v50 = v9;
      v51 = v9;
      v48 = v9;
      v49 = v9;
      v46 = v9;
      v47 = v9;
      *buf = v9;
      v10 = *MEMORY[0x277CECC38];
      v11 = strlen(*MEMORY[0x277CECC38]);
      if (v11 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        if ((v11 | 7) == 0x17)
        {
          v14 = 25;
        }

        else
        {
          v14 = (v11 | 7) + 1;
        }

        p_dst = operator new(v14);
        *(&__dst + 1) = v12;
        v42 = v14 | 0x8000000000000000;
        *&__dst = p_dst;
      }

      else
      {
        HIBYTE(v42) = v11;
        p_dst = &__dst;
        if (!v11)
        {
LABEL_17:
          *(p_dst + v12) = 0;
          v15 = *MEMORY[0x277CECD38];
          v16 = strlen(*MEMORY[0x277CECD38]);
          if (v16 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v17 = v16;
          if (v16 >= 0x17)
          {
            if ((v16 | 7) == 0x17)
            {
              v19 = 25;
            }

            else
            {
              v19 = (v16 | 7) + 1;
            }

            v18 = operator new(v19);
            *(&v39 + 1) = v17;
            v40 = v19 | 0x8000000000000000;
            *&v39 = v18;
          }

          else
          {
            HIBYTE(v40) = v16;
            v18 = &v39;
            if (!v16)
            {
LABEL_26:
              v18[v17] = 0;
              v20 = operator new(0x20uLL);
              v37 = v20;
              v38 = xmmword_23C32D560;
              strcpy(v20, "Failed to set trace params");
              Timestamp::Timestamp(v33);
              Timestamp::asString(v33, 0, 9, __p);
              v32 = 0;
              LOBYTE(v31) = 0;
              ResetInfo::ResetInfo(buf, &__dst, &v39, &v37, __p, 7, &v31);
              if (v36 < 0)
              {
                operator delete(__p[0]);
              }

              std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v33, v34);
              operator delete(v20);
              if (SHIBYTE(v40) < 0)
              {
                operator delete(v39);
              }

              if (SHIBYTE(v42) < 0)
              {
                operator delete(__dst);
              }

              ResetInfo::ResetInfo(&v24, buf);
              ICETrace::commandResetModem_sync(v4, &v24);
              if (v30 < 0)
              {
                operator delete(v29);
                if ((v28 & 0x80000000) == 0)
                {
LABEL_34:
                  if ((v26 & 0x80000000) == 0)
                  {
                    goto LABEL_35;
                  }

                  goto LABEL_44;
                }
              }

              else if ((v28 & 0x80000000) == 0)
              {
                goto LABEL_34;
              }

              operator delete(v27);
              if ((v26 & 0x80000000) == 0)
              {
LABEL_35:
                if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_36;
                }

                goto LABEL_45;
              }

LABEL_44:
              operator delete(v25);
              if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_36:
                if ((SHIBYTE(v51) & 0x80000000) == 0)
                {
                  goto LABEL_37;
                }

                goto LABEL_46;
              }

LABEL_45:
              operator delete(v24.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v51) & 0x80000000) == 0)
              {
LABEL_37:
                if ((SBYTE7(v49) & 0x80000000) == 0)
                {
                  goto LABEL_38;
                }

                goto LABEL_47;
              }

LABEL_46:
              operator delete(*(&v50 + 1));
              if ((SBYTE7(v49) & 0x80000000) == 0)
              {
LABEL_38:
                if ((SHIBYTE(v47) & 0x80000000) == 0)
                {
                  goto LABEL_39;
                }

                goto LABEL_48;
              }

LABEL_47:
              operator delete(v48);
              if ((SHIBYTE(v47) & 0x80000000) == 0)
              {
LABEL_39:
                if ((SBYTE7(v46) & 0x80000000) == 0)
                {
                  goto LABEL_40;
                }

LABEL_49:
                operator delete(*buf);
                v7 = v44;
                if (!v44)
                {
                  goto LABEL_52;
                }

                goto LABEL_50;
              }

LABEL_48:
              operator delete(*(&v46 + 1));
              if ((SBYTE7(v46) & 0x80000000) == 0)
              {
LABEL_40:
                v7 = v44;
                if (!v44)
                {
                  goto LABEL_52;
                }

                goto LABEL_50;
              }

              goto LABEL_49;
            }
          }

          memmove(v18, v15, v17);
          goto LABEL_26;
        }
      }

      memmove(p_dst, v10, v12);
      goto LABEL_17;
    }
  }

LABEL_52:
  if (v5)
  {
    dispatch_group_leave(v5);
    dispatch_release(v5);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_23C21F9B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  ResetInfo::~ResetInfo(&a9);
  ResetInfo::~ResetInfo((v50 - 208));
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v50 - 224);
  if (!v49)
  {
    _Unwind_Resume(a1);
  }

  dispatch_group_leave(v49);
  dispatch_release(v49);
  _Unwind_Resume(a1);
}

void ___ZN8ICETrace16setPropMode_syncEN8dispatch5groupENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8__block_invoke(uint64_t a1, uint64_t *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = *(v4 + 88);
  if (v5)
  {
    dispatch_retain(*(v4 + 88));
    dispatch_group_enter(v5);
  }

  v42 = 0;
  v43 = 0;
  v6 = *(a1 + 56);
  if (!v6)
  {
    goto LABEL_42;
  }

  v43 = std::__shared_weak_count::lock(v6);
  if (!v43)
  {
    goto LABEL_45;
  }

  v42 = *(a1 + 48);
  if (!v42)
  {
    goto LABEL_42;
  }

  v7 = *a2;
  if (!v7)
  {
    ICETrace::setTraceMode_sync(v4, *(a1 + 64));
    goto LABEL_42;
  }

  v8 = *(v4 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = v7;
    _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Unable to set mode %@", buf, 0xCu);
  }

  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v49 = v9;
  v50 = v9;
  v47 = v9;
  v48 = v9;
  v45 = v9;
  v46 = v9;
  *buf = v9;
  v10 = *MEMORY[0x277CECC38];
  v11 = strlen(*MEMORY[0x277CECC38]);
  if (v11 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v11 | 7) + 1;
    }

    p_dst = operator new(v14);
    *(&__dst + 1) = v12;
    v41 = v14 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_18;
  }

  HIBYTE(v41) = v11;
  p_dst = &__dst;
  if (v11)
  {
LABEL_18:
    memmove(p_dst, v10, v12);
  }

  *(p_dst + v12) = 0;
  v15 = *MEMORY[0x277CECD38];
  v16 = strlen(*MEMORY[0x277CECD38]);
  if (v16 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v17 = v16;
  if (v16 >= 0x17)
  {
    if ((v16 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (v16 | 7) + 1;
    }

    v18 = operator new(v19);
    *(&v38 + 1) = v17;
    v39 = v19 | 0x8000000000000000;
    *&v38 = v18;
    goto LABEL_27;
  }

  HIBYTE(v39) = v16;
  v18 = &v38;
  if (v16)
  {
LABEL_27:
    memmove(v18, v15, v17);
  }

  *(v18 + v17) = 0;
  v20 = operator new(0x20uLL);
  v36 = v20;
  v37 = xmmword_23C32C5A0;
  strcpy(v20, "Failed to set trace mode");
  Timestamp::Timestamp(v32);
  Timestamp::asString(v32, 0, 9, __p);
  v31 = 0;
  LOBYTE(v30) = 0;
  ResetInfo::ResetInfo(buf, &__dst, &v38, &v36, __p, 7, &v30);
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v32, v33);
  operator delete(v20);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(__dst);
  }

  ResetInfo::ResetInfo(&v23, buf);
  ICETrace::commandResetModem_sync(v4, &v23);
  if (v29 < 0)
  {
    operator delete(v28);
    if ((v27 & 0x80000000) == 0)
    {
LABEL_36:
      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_50;
    }
  }

  else if ((v27 & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

  operator delete(v26);
  if ((v25 & 0x80000000) == 0)
  {
LABEL_37:
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_51;
  }

LABEL_50:
  operator delete(v24);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_38:
    if ((SHIBYTE(v50) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_52;
  }

LABEL_51:
  operator delete(v23.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v50) & 0x80000000) == 0)
  {
LABEL_39:
    if ((SBYTE7(v48) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

LABEL_53:
    operator delete(v47);
    if ((SHIBYTE(v46) & 0x80000000) == 0)
    {
LABEL_41:
      if ((SBYTE7(v45) & 0x80000000) == 0)
      {
        goto LABEL_42;
      }

LABEL_55:
      operator delete(*buf);
      v21 = v43;
      if (!v43)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    goto LABEL_54;
  }

LABEL_52:
  operator delete(*(&v49 + 1));
  if (SBYTE7(v48) < 0)
  {
    goto LABEL_53;
  }

LABEL_40:
  if ((SHIBYTE(v46) & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

LABEL_54:
  operator delete(*(&v45 + 1));
  if (SBYTE7(v45) < 0)
  {
    goto LABEL_55;
  }

LABEL_42:
  v21 = v43;
  if (!v43)
  {
    goto LABEL_45;
  }

LABEL_43:
  if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

LABEL_45:
  if (v5)
  {
    dispatch_group_leave(v5);
    dispatch_release(v5);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_23C21FED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v50 - 224);
  if (v49)
  {
    dispatch_group_leave(v49);
    dispatch_release(v49);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void ___ZN8ICETrace24setPropActiveConfig_syncEN8dispatch5groupENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8__block_invoke(void *a1, __CFError **a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  v5 = *(v4 + 88);
  if (v5)
  {
    dispatch_retain(*(v4 + 88));
    dispatch_group_enter(v5);
  }

  v59 = 0;
  v60 = 0;
  v6 = a1[7];
  if (!v6)
  {
    goto LABEL_88;
  }

  v60 = std::__shared_weak_count::lock(v6);
  if (!v60)
  {
    goto LABEL_91;
  }

  v59 = a1[6];
  if (!v59)
  {
    goto LABEL_88;
  }

  v7 = *a2;
  if (!*a2)
  {
    v10 = *(v4 + 280);
    v11 = *(v4 + 40);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10 == 1)
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_DEFAULT, "#I Sending command to enable new active trace mask", buf, 2u);
      }

      memset(buf, 170, sizeof(buf));
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1174405120;
      aBlock[2] = ___ZN8ICETrace24setPropActiveConfig_syncEN8dispatch5groupENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8__block_invoke_116;
      aBlock[3] = &__block_descriptor_tmp_120;
      v13 = a1[5];
      aBlock[4] = v4;
      group = v13;
      if (v13)
      {
        dispatch_retain(v13);
        dispatch_group_enter(group);
      }

      v37 = v5;
      if (v5)
      {
        dispatch_retain(v5);
        dispatch_group_enter(v37);
      }

      v14 = a1[7];
      v38 = a1[6];
      v39 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = _Block_copy(aBlock);
      v16 = *(v4 + 24);
      if (v16)
      {
        dispatch_retain(*(v4 + 24));
      }

      *buf = v15;
      *&buf[8] = v16;
      v17 = *(v4 + 360);
      if (v17)
      {
        if (v15)
        {
          v18 = _Block_copy(v15);
        }

        else
        {
          v18 = 0;
        }

        v33 = v18;
        object = v16;
        if (v16)
        {
          dispatch_retain(v16);
        }

        (*(*v17 + 16))(v17, &v33);
        if (object)
        {
          dispatch_release(object);
        }

        if (v33)
        {
          _Block_release(v33);
        }
      }

      if (v16)
      {
        dispatch_release(v16);
      }

      if (v15)
      {
        _Block_release(v15);
      }

      if (v39)
      {
        std::__shared_weak_count::__release_weak(v39);
      }

      if (v37)
      {
        dispatch_group_leave(v37);
        if (v37)
        {
          dispatch_release(v37);
        }
      }

      if (group)
      {
        dispatch_group_leave(group);
        if (group)
        {
          dispatch_release(group);
        }
      }
    }

    else if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_DEFAULT, "#I Successfully set active trace mask", buf, 2u);
    }

    goto LABEL_88;
  }

  v8 = *(v4 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = v7;
    _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Unable to set active trace mask: %@", buf, 0xCu);
    v7 = *a2;
  }

  if (CFErrorGetCode(v7) == 2)
  {
    v9 = *(v4 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_ERROR, "File access error!", buf, 2u);
    }

    goto LABEL_88;
  }

  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v67 = v19;
  v66 = v19;
  v65 = v19;
  v64 = v19;
  v63 = v19;
  v62 = v19;
  *buf = v19;
  v20 = *MEMORY[0x277CECC38];
  v21 = strlen(*MEMORY[0x277CECC38]);
  if (v21 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v22 = v21;
  if (v21 >= 0x17)
  {
    if ((v21 | 7) == 0x17)
    {
      v24 = 25;
    }

    else
    {
      v24 = (v21 | 7) + 1;
    }

    p_dst = operator new(v24);
    *(&__dst + 1) = v22;
    v58 = v24 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_36;
  }

  HIBYTE(v58) = v21;
  p_dst = &__dst;
  if (v21)
  {
LABEL_36:
    memmove(p_dst, v20, v22);
  }

  *(p_dst + v22) = 0;
  v25 = *MEMORY[0x277CECD38];
  v26 = strlen(*MEMORY[0x277CECD38]);
  if (v26 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v27 = v26;
  if (v26 >= 0x17)
  {
    if ((v26 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v26 | 7) + 1;
    }

    v28 = operator new(v29);
    *(&v55 + 1) = v27;
    v56 = v29 | 0x8000000000000000;
    *&v55 = v28;
    goto LABEL_45;
  }

  HIBYTE(v56) = v26;
  v28 = &v55;
  if (v26)
  {
LABEL_45:
    memmove(v28, v25, v27);
  }

  *(v28 + v27) = 0;
  v30 = operator new(0x20uLL);
  v53 = v30;
  v54 = xmmword_23C32D570;
  strcpy(v30, "Failed to set trace active mask");
  Timestamp::Timestamp(v49);
  Timestamp::asString(v49, 0, 9, __p);
  v48 = 0;
  LOBYTE(v47) = 0;
  ResetInfo::ResetInfo(buf, &__dst, &v55, &v53, __p, 7, &v47);
  if (v52 < 0)
  {
    operator delete(__p[0]);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v49, v50);
  operator delete(v30);
  if (SHIBYTE(v56) < 0)
  {
    operator delete(v55);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(__dst);
  }

  ResetInfo::ResetInfo(&v40, buf);
  ICETrace::commandResetModem_sync(v4, &v40);
  if (v46 < 0)
  {
    operator delete(v45);
    if ((v44 & 0x80000000) == 0)
    {
LABEL_54:
      if ((v42 & 0x80000000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_63;
    }
  }

  else if ((v44 & 0x80000000) == 0)
  {
    goto LABEL_54;
  }

  operator delete(v43);
  if ((v42 & 0x80000000) == 0)
  {
LABEL_55:
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_64;
  }

LABEL_63:
  operator delete(v41);
  if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_56:
    if ((SHIBYTE(v67) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_65;
  }

LABEL_64:
  operator delete(v40.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v67) & 0x80000000) == 0)
  {
LABEL_57:
    if ((SBYTE7(v65) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_66;
  }

LABEL_65:
  operator delete(*(&v66 + 1));
  if ((SBYTE7(v65) & 0x80000000) == 0)
  {
LABEL_58:
    if ((SHIBYTE(v63) & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_67;
  }

LABEL_66:
  operator delete(v64);
  if ((SHIBYTE(v63) & 0x80000000) == 0)
  {
LABEL_59:
    if (SBYTE7(v62) < 0)
    {
      goto LABEL_68;
    }

    goto LABEL_88;
  }

LABEL_67:
  operator delete(*(&v62 + 1));
  if (SBYTE7(v62) < 0)
  {
LABEL_68:
    operator delete(*buf);
  }

LABEL_88:
  v31 = v60;
  if (v60 && !atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

LABEL_91:
  if (v5)
  {
    dispatch_group_leave(v5);
    dispatch_release(v5);
  }

  v32 = *MEMORY[0x277D85DE8];
}

void sub_23C220638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_group_t object, dispatch_group_t group, uint64_t a19, std::__shared_weak_count *a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN8ICETrace24setPropActiveConfig_syncEN8dispatch5groupENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8__block_invoke_116(void *a1, uint64_t *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a1[8];
  if (!v3)
  {
    goto LABEL_54;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v44 = v6;
  if (!v6)
  {
    goto LABEL_54;
  }

  if (a1[7])
  {
    v7 = *a2;
    v8 = *(v5 + 40);
    if (v7)
    {
      if (os_log_type_enabled(*(v5 + 40), OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v7;
        _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Failed to enable active trace profile: %@", buf, 0xCu);
      }

      *&v9 = 0xAAAAAAAAAAAAAAAALL;
      *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v50 = v9;
      v51 = v9;
      v48 = v9;
      v49 = v9;
      v46 = v9;
      v47 = v9;
      *buf = v9;
      v10 = *MEMORY[0x277CECC38];
      v11 = strlen(*MEMORY[0x277CECC38]);
      if (v11 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        if ((v11 | 7) == 0x17)
        {
          v15 = 25;
        }

        else
        {
          v15 = (v11 | 7) + 1;
        }

        p_dst = operator new(v15);
        *(&__dst + 1) = v12;
        v42 = v15 | 0x8000000000000000;
        *&__dst = p_dst;
      }

      else
      {
        HIBYTE(v42) = v11;
        p_dst = &__dst;
        if (!v11)
        {
LABEL_19:
          *(p_dst + v12) = 0;
          v16 = *MEMORY[0x277CECD38];
          v17 = strlen(*MEMORY[0x277CECD38]);
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
            *(&v39 + 1) = v18;
            v40 = v20 | 0x8000000000000000;
            *&v39 = v19;
          }

          else
          {
            HIBYTE(v40) = v17;
            v19 = &v39;
            if (!v17)
            {
LABEL_28:
              v19[v18] = 0;
              v21 = operator new(0x28uLL);
              v37 = v21;
              v38 = xmmword_23C32D550;
              strcpy(v21, "Failed to enable active trace profile");
              Timestamp::Timestamp(v33);
              Timestamp::asString(v33, 0, 9, __p);
              v32 = 0;
              LOBYTE(v31) = 0;
              ResetInfo::ResetInfo(buf, &__dst, &v39, &v37, __p, 7, &v31);
              if (v36 < 0)
              {
                operator delete(__p[0]);
              }

              std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v33, v34);
              operator delete(v21);
              if (SHIBYTE(v40) < 0)
              {
                operator delete(v39);
              }

              if (SHIBYTE(v42) < 0)
              {
                operator delete(__dst);
              }

              ResetInfo::ResetInfo(&v24, buf);
              ICETrace::commandResetModem_sync(v5, &v24);
              if (v30 < 0)
              {
                operator delete(v29);
                if ((v28 & 0x80000000) == 0)
                {
LABEL_36:
                  if ((v26 & 0x80000000) == 0)
                  {
                    goto LABEL_37;
                  }

                  goto LABEL_46;
                }
              }

              else if ((v28 & 0x80000000) == 0)
              {
                goto LABEL_36;
              }

              operator delete(v27);
              if ((v26 & 0x80000000) == 0)
              {
LABEL_37:
                if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_38;
                }

                goto LABEL_47;
              }

LABEL_46:
              operator delete(v25);
              if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_38:
                if ((SHIBYTE(v51) & 0x80000000) == 0)
                {
                  goto LABEL_39;
                }

                goto LABEL_48;
              }

LABEL_47:
              operator delete(v24.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v51) & 0x80000000) == 0)
              {
LABEL_39:
                if ((SBYTE7(v49) & 0x80000000) == 0)
                {
                  goto LABEL_40;
                }

                goto LABEL_49;
              }

LABEL_48:
              operator delete(*(&v50 + 1));
              if ((SBYTE7(v49) & 0x80000000) == 0)
              {
LABEL_40:
                if ((SHIBYTE(v47) & 0x80000000) == 0)
                {
                  goto LABEL_41;
                }

                goto LABEL_50;
              }

LABEL_49:
              operator delete(v48);
              if ((SHIBYTE(v47) & 0x80000000) == 0)
              {
LABEL_41:
                if ((SBYTE7(v46) & 0x80000000) == 0)
                {
                  goto LABEL_42;
                }

                goto LABEL_51;
              }

LABEL_50:
              operator delete(*(&v46 + 1));
              if ((SBYTE7(v46) & 0x80000000) == 0)
              {
LABEL_42:
                v6 = v44;
                if (!v44)
                {
                  goto LABEL_54;
                }

                goto LABEL_52;
              }

LABEL_51:
              operator delete(*buf);
              v6 = v44;
              if (!v44)
              {
                goto LABEL_54;
              }

              goto LABEL_52;
            }
          }

          memmove(v19, v16, v18);
          goto LABEL_28;
        }
      }

      memmove(p_dst, v10, v12);
      goto LABEL_19;
    }

    v14 = v6;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_DEFAULT, "#I Successfully enabled active trace mask", buf, 2u);
    }

    v6 = v14;
  }

LABEL_52:
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v22 = v6;
    (v6->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v22);
  }

LABEL_54:
  v23 = *MEMORY[0x277D85DE8];
}

void sub_23C220B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  ResetInfo::~ResetInfo(&a9);
  ResetInfo::~ResetInfo((v9 - 192));
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v9 - 208);
  _Unwind_Resume(a1);
}

void sub_23C220BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, void *a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&a26, a27);
  operator delete(v49);
  if (a43 < 0)
  {
    operator delete(a38);
    if ((a49 & 0x80000000) == 0)
    {
LABEL_5:
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v50 - 208);
      _Unwind_Resume(a1);
    }
  }

  else if ((a49 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a44);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v50 - 208);
  _Unwind_Resume(a1);
}

void ___ZN8ICETrace23setPropSleepConfig_syncEN8dispatch5groupENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES8__block_invoke(void *a1, __CFError **a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  v5 = *(v4 + 88);
  if (v5)
  {
    dispatch_retain(*(v4 + 88));
    dispatch_group_enter(v5);
  }

  v43 = 0;
  v44 = 0;
  v6 = a1[7];
  if (!v6)
  {
    goto LABEL_46;
  }

  v44 = std::__shared_weak_count::lock(v6);
  if (!v44)
  {
    goto LABEL_49;
  }

  v43 = a1[6];
  if (!v43)
  {
    goto LABEL_46;
  }

  v7 = *a2;
  v8 = *(v4 + 40);
  if (*a2)
  {
    if (os_log_type_enabled(*(v4 + 40), OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v7;
      _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Unable to set sleep trace mask: %@", buf, 0xCu);
      v7 = *a2;
    }

    if (CFErrorGetCode(v7) == 2)
    {
      v9 = *(v4 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_ERROR, "File access error!", buf, 2u);
        v10 = v44;
        goto LABEL_47;
      }

LABEL_46:
      v10 = v44;
      if (!v44)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    }

    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v50 = v11;
    v51 = v11;
    v48 = v11;
    v49 = v11;
    v46 = v11;
    v47 = v11;
    *buf = v11;
    v12 = *MEMORY[0x277CECC38];
    v13 = strlen(*MEMORY[0x277CECC38]);
    if (v13 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      if ((v13 | 7) == 0x17)
      {
        v16 = 25;
      }

      else
      {
        v16 = (v13 | 7) + 1;
      }

      p_dst = operator new(v16);
      *(&__dst + 1) = v14;
      v42 = v16 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v42) = v13;
      p_dst = &__dst;
      if (!v13)
      {
LABEL_23:
        *(p_dst + v14) = 0;
        v17 = *MEMORY[0x277CECD38];
        v18 = strlen(*MEMORY[0x277CECD38]);
        if (v18 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v19 = v18;
        if (v18 >= 0x17)
        {
          if ((v18 | 7) == 0x17)
          {
            v21 = 25;
          }

          else
          {
            v21 = (v18 | 7) + 1;
          }

          v20 = operator new(v21);
          *(&v39 + 1) = v19;
          v40 = v21 | 0x8000000000000000;
          *&v39 = v20;
        }

        else
        {
          HIBYTE(v40) = v18;
          v20 = &v39;
          if (!v18)
          {
LABEL_32:
            v20[v19] = 0;
            v22 = operator new(0x20uLL);
            v37 = v22;
            v38 = xmmword_23C32CA80;
            strcpy(v22, "Failed to set trace sleep mask");
            Timestamp::Timestamp(v33);
            Timestamp::asString(v33, 0, 9, __p);
            v32 = 0;
            LOBYTE(v31) = 0;
            ResetInfo::ResetInfo(buf, &__dst, &v39, &v37, __p, 7, &v31);
            if (v36 < 0)
            {
              operator delete(__p[0]);
            }

            std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v33, v34);
            operator delete(v22);
            if (SHIBYTE(v40) < 0)
            {
              operator delete(v39);
            }

            if (SHIBYTE(v42) < 0)
            {
              operator delete(__dst);
            }

            ResetInfo::ResetInfo(&v24, buf);
            ICETrace::commandResetModem_sync(v4, &v24);
            if (v30 < 0)
            {
              operator delete(v29);
              if ((v28 & 0x80000000) == 0)
              {
LABEL_40:
                if ((v26 & 0x80000000) == 0)
                {
                  goto LABEL_41;
                }

                goto LABEL_54;
              }
            }

            else if ((v28 & 0x80000000) == 0)
            {
              goto LABEL_40;
            }

            operator delete(v27);
            if ((v26 & 0x80000000) == 0)
            {
LABEL_41:
              if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_42;
              }

              goto LABEL_55;
            }

LABEL_54:
            operator delete(v25);
            if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_42:
              if ((SHIBYTE(v51) & 0x80000000) == 0)
              {
                goto LABEL_43;
              }

              goto LABEL_56;
            }

LABEL_55:
            operator delete(v24.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v51) & 0x80000000) == 0)
            {
LABEL_43:
              if ((SBYTE7(v49) & 0x80000000) == 0)
              {
                goto LABEL_44;
              }

              goto LABEL_57;
            }

LABEL_56:
            operator delete(*(&v50 + 1));
            if ((SBYTE7(v49) & 0x80000000) == 0)
            {
LABEL_44:
              if ((SHIBYTE(v47) & 0x80000000) == 0)
              {
                goto LABEL_45;
              }

              goto LABEL_58;
            }

LABEL_57:
            operator delete(v48);
            if ((SHIBYTE(v47) & 0x80000000) == 0)
            {
LABEL_45:
              if ((SBYTE7(v46) & 0x80000000) == 0)
              {
                goto LABEL_46;
              }

              goto LABEL_59;
            }

LABEL_58:
            operator delete(*(&v46 + 1));
            if ((SBYTE7(v46) & 0x80000000) == 0)
            {
              goto LABEL_46;
            }

LABEL_59:
            operator delete(*buf);
            v10 = v44;
            if (!v44)
            {
              goto LABEL_49;
            }

            goto LABEL_47;
          }
        }

        memmove(v20, v17, v19);
        goto LABEL_32;
      }
    }

    memmove(p_dst, v12, v14);
    goto LABEL_23;
  }

  if (!os_log_type_enabled(*(v4 + 40), OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_46;
  }

  *buf = 0;
  _os_log_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_DEFAULT, "#I Successfully set sleep trace mask", buf, 2u);
  v10 = v44;
LABEL_47:
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_49:
  if (v5)
  {
    dispatch_group_leave(v5);
    dispatch_release(v5);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_23C22111C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  ResetInfo::~ResetInfo(&a9);
  ResetInfo::~ResetInfo((v50 - 208));
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v50 - 224);
  if (!v49)
  {
    _Unwind_Resume(a1);
  }

  dispatch_group_leave(v49);
  dispatch_release(v49);
  _Unwind_Resume(a1);
}

void ___ZN8ICETrace15processETB_syncEv_block_invoke(void *a1, uint64_t *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  v5 = *(v4 + 88);
  if (v5)
  {
    dispatch_retain(*(v4 + 88));
    dispatch_group_enter(v5);
  }

  v6 = a1[6];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    v45 = v7;
    if (v7)
    {
      if (a1[5])
      {
        v8 = *a2;
        v9 = *(v4 + 40);
        if (v8)
        {
          if (os_log_type_enabled(*(v4 + 40), OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v8;
            _os_log_error_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_ERROR, "Unable to set etb trace mask: %@", buf, 0xCu);
          }

          *&v10 = 0xAAAAAAAAAAAAAAAALL;
          *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v51 = v10;
          v52 = v10;
          v49 = v10;
          v50 = v10;
          v47 = v10;
          v48 = v10;
          *buf = v10;
          v11 = *MEMORY[0x277CECC38];
          v12 = strlen(*MEMORY[0x277CECC38]);
          if (v12 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v13 = v12;
          if (v12 >= 0x17)
          {
            if ((v12 | 7) == 0x17)
            {
              v16 = 25;
            }

            else
            {
              v16 = (v12 | 7) + 1;
            }

            p_dst = operator new(v16);
            *(&__dst + 1) = v13;
            v43 = v16 | 0x8000000000000000;
            *&__dst = p_dst;
          }

          else
          {
            HIBYTE(v43) = v12;
            p_dst = &__dst;
            if (!v12)
            {
LABEL_21:
              *(p_dst + v13) = 0;
              v17 = *MEMORY[0x277CECD38];
              v18 = strlen(*MEMORY[0x277CECD38]);
              if (v18 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              v19 = v18;
              if (v18 >= 0x17)
              {
                if ((v18 | 7) == 0x17)
                {
                  v21 = 25;
                }

                else
                {
                  v21 = (v18 | 7) + 1;
                }

                v20 = operator new(v21);
                *(&v40 + 1) = v19;
                v41 = v21 | 0x8000000000000000;
                *&v40 = v20;
              }

              else
              {
                HIBYTE(v41) = v18;
                v20 = &v40;
                if (!v18)
                {
LABEL_30:
                  v20[v19] = 0;
                  v22 = operator new(0x20uLL);
                  v38 = v22;
                  v39 = xmmword_23C32CBF0;
                  strcpy(v22, "Failed to set trace etb mask");
                  Timestamp::Timestamp(v34);
                  Timestamp::asString(v34, 0, 9, __p);
                  v33 = 0;
                  LOBYTE(v32) = 0;
                  ResetInfo::ResetInfo(buf, &__dst, &v40, &v38, __p, 7, &v32);
                  if (v37 < 0)
                  {
                    operator delete(__p[0]);
                  }

                  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v34, v35);
                  operator delete(v22);
                  if (SHIBYTE(v41) < 0)
                  {
                    operator delete(v40);
                  }

                  if (SHIBYTE(v43) < 0)
                  {
                    operator delete(__dst);
                  }

                  ResetInfo::ResetInfo(&v25, buf);
                  ICETrace::commandResetModem_sync(v4, &v25);
                  if (v31 < 0)
                  {
                    operator delete(v30);
                    if ((v29 & 0x80000000) == 0)
                    {
LABEL_38:
                      if ((v27 & 0x80000000) == 0)
                      {
                        goto LABEL_39;
                      }

                      goto LABEL_48;
                    }
                  }

                  else if ((v29 & 0x80000000) == 0)
                  {
                    goto LABEL_38;
                  }

                  operator delete(v28);
                  if ((v27 & 0x80000000) == 0)
                  {
LABEL_39:
                    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_40;
                    }

                    goto LABEL_49;
                  }

LABEL_48:
                  operator delete(v26);
                  if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_40:
                    if ((SHIBYTE(v52) & 0x80000000) == 0)
                    {
                      goto LABEL_41;
                    }

                    goto LABEL_50;
                  }

LABEL_49:
                  operator delete(v25.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v52) & 0x80000000) == 0)
                  {
LABEL_41:
                    if ((SBYTE7(v50) & 0x80000000) == 0)
                    {
                      goto LABEL_42;
                    }

                    goto LABEL_51;
                  }

LABEL_50:
                  operator delete(*(&v51 + 1));
                  if ((SBYTE7(v50) & 0x80000000) == 0)
                  {
LABEL_42:
                    if ((SHIBYTE(v48) & 0x80000000) == 0)
                    {
                      goto LABEL_43;
                    }

                    goto LABEL_52;
                  }

LABEL_51:
                  operator delete(v49);
                  if ((SHIBYTE(v48) & 0x80000000) == 0)
                  {
LABEL_43:
                    if ((SBYTE7(v47) & 0x80000000) == 0)
                    {
                      goto LABEL_44;
                    }

LABEL_53:
                    operator delete(*buf);
                    v7 = v45;
                    if (!v45)
                    {
                      goto LABEL_56;
                    }

                    goto LABEL_54;
                  }

LABEL_52:
                  operator delete(*(&v47 + 1));
                  if ((SBYTE7(v47) & 0x80000000) == 0)
                  {
LABEL_44:
                    v7 = v45;
                    if (!v45)
                    {
                      goto LABEL_56;
                    }

                    goto LABEL_54;
                  }

                  goto LABEL_53;
                }
              }

              memmove(v20, v17, v19);
              goto LABEL_30;
            }
          }

          memmove(p_dst, v11, v13);
          goto LABEL_21;
        }

        v15 = v7;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_DEFAULT, "#I Successfully set etb trace mask.", buf, 2u);
        }

        v7 = v15;
      }

LABEL_54:
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v23 = v7;
        (v7->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v23);
      }
    }
  }

LABEL_56:
  if (v5)
  {
    dispatch_group_leave(v5);
    dispatch_release(v5);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void sub_23C221678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  ResetInfo::~ResetInfo(&a9);
  ResetInfo::~ResetInfo((v50 - 208));
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v50 - 224);
  if (!v49)
  {
    _Unwind_Resume(a1);
  }

  dispatch_group_leave(v49);
  dispatch_release(v49);
  _Unwind_Resume(a1);
}

void *dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::callback(void *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  *a1 = v4;
  a1[1] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  return a1;
}

void *trace::TraceMaskInfo::TraceMaskInfo(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  *a1 = &unk_284EFAAF0;
  a1[2] = 0;
  a1[3] = 0;
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = v5 - *a2;
  if (v5 != *a2)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v8 = operator new(v5 - *a2);
    a1[1] = v8;
    a1[2] = v8;
    v9 = &v8[v7];
    a1[3] = &v8[v7];
    memcpy(v8, v6, v7);
    a1[2] = v9;
  }

  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  v10 = *a3;
  v11 = *(a3 + 8) - *a3;
  if (v11)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v12 = operator new(v11);
    a1[4] = v12;
    a1[5] = v12;
    v13 = &v12[v11];
    a1[6] = &v12[v11];
    memcpy(v12, v10, v11);
    a1[5] = v13;
  }

  return a1;
}

void sub_23C2218A0(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

const void **ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(const void **a1)
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

uint64_t dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,xpc::dict)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

void TraceFileCollection::Parameters::~Parameters(void **this)
{
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
    if ((*(this + 79) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = this[4];
      if (!v2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 79) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[7]);
  v2 = this[4];
  if (v2)
  {
LABEL_4:
    this[5] = v2;
    operator delete(v2);
  }

LABEL_5:
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

char *std::vector<char>::__assign_with_size[abi:ne200100]<char *,char *>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (v6 - result < a4)
  {
    if (result)
    {
      a1[1] = result;
      v9 = a4;
      operator delete(result);
      a4 = v9;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v10 = 2 * v6;
    if (2 * v6 <= a4)
    {
      v10 = a4;
    }

    if (v6 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = operator new(v11);
    v12 = result;
    *a1 = result;
    a1[1] = result;
    a1[2] = &result[v11];
    v13 = a3 - a2;
    if (v13)
    {
      result = memcpy(result, a2, v13);
    }

LABEL_17:
    a1[1] = &v12[v13];
    return result;
  }

  v12 = a1[1];
  v14 = v12 - result;
  if (v12 - result < a4)
  {
    v15 = &a2[v14];
    if (v12 != result)
    {
      result = memmove(result, a2, v14);
      v12 = a1[1];
    }

    v13 = a3 - v15;
    if (v13)
    {
      result = memmove(v12, v15, v13);
    }

    goto LABEL_17;
  }

  v16 = a3 - a2;
  if (v16)
  {
    v17 = result;
    memmove(result, a2, v16);
    result = v17;
  }

  a1[1] = &result[v16];
  return result;
}

atomic_ullong *std::shared_ptr<ICETrace>::shared_ptr[abi:ne200100]<ICETrace,std::shared_ptr<ICETrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<ICETrace>(ICETrace*)::{lambda(ICETrace*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_284EFAB18;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_23C221C30(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<ICETrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<ICETrace>(ICETrace*)::{lambda(ICETrace*)#1}::operator() const(ICETrace*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<ICETrace *,std::shared_ptr<ICETrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<ICETrace>(ICETrace*)::{lambda(ICETrace *)#1},std::allocator<ICETrace>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ICETrace *,std::shared_ptr<ICETrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<ICETrace>(ICETrace*)::{lambda(ICETrace *)#1},std::allocator<ICETrace>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI8ICETraceEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI8ICETraceEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI8ICETraceEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI8ICETraceEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<ICETrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<ICETrace>(ICETrace*)::{lambda(ICETrace*)#1}::operator() const(ICETrace*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<ICETrace::init(std::string,std::weak_ptr<abm::BasebandTracingTask>,dispatch::group)::$_0>(ICETrace::init(std::string,std::weak_ptr<abm::BasebandTracingTask>,dispatch::group)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ICETrace::init(std::string,std::weak_ptr<abm::BasebandTracingTask>,dispatch::group)::$_0,std::default_delete<ICETrace::init(std::string,std::weak_ptr<abm::BasebandTracingTask>,dispatch::group)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v1 = 0x7FFFFFFFFFFFFFF7;
  v2 = *a1;
  v3 = **a1;
  v4 = abm::trace::kScratchFolder[0];
  v5 = strlen(abm::trace::kScratchFolder[0]);
  if (v5 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v5 | 7) + 1;
    }

    p_dst = operator new(v12);
    *(&__dst + 1) = v6;
    v29 = v12 | 0x8000000000000000;
    *&__dst = p_dst;
LABEL_11:
    memmove(p_dst, v4, v6);
    *(p_dst + v6) = 0;
    v8 = SHIBYTE(v29);
    if ((SHIBYTE(v29) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  HIBYTE(v29) = v5;
  p_dst = &__dst;
  if (v5)
  {
    goto LABEL_11;
  }

  LOBYTE(__dst) = 0;
  v8 = SHIBYTE(v29);
  if ((SHIBYTE(v29) & 0x8000000000000000) == 0)
  {
LABEL_5:
    if (v8 - 7 < 0x10)
    {
      v9 = v8 + 16;
      v10 = &__dst;
      v11 = 22;
LABEL_15:
      v13 = 2 * v11;
      if (v9 > 2 * v11)
      {
        v13 = v9;
      }

      if ((v13 | 7) == 0x17)
      {
        v14 = 25;
      }

      else
      {
        v14 = (v13 | 7) + 1;
      }

      if (v13 >= 0x17)
      {
        v1 = v14;
      }

      else
      {
        v1 = 23;
      }

      v15 = v11 == 22;
      goto LABEL_24;
    }

    v19 = &__dst;
LABEL_31:
    *(v19 + v8) = *"BBTrace.scratch/";
    v20 = v8 + 16;
    if (SHIBYTE(v29) < 0)
    {
      *(&__dst + 1) = v8 + 16;
    }

    else
    {
      HIBYTE(v29) = v20 & 0x7F;
    }

    v18 = v19 + v20;
    goto LABEL_35;
  }

LABEL_12:
  v8 = *(&__dst + 1);
  v11 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v11 - *(&__dst + 1) >= 0x10)
  {
    v19 = __dst;
    goto LABEL_31;
  }

  v9 = *(&__dst + 1) + 16;
  if (0x7FFFFFFFFFFFFFF7 - (v29 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 16 - v11)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = __dst;
  if (v11 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_15;
  }

  v15 = 0;
LABEL_24:
  v16 = operator new(v1);
  v17 = v16;
  if (v8)
  {
    memmove(v16, v10, v8);
  }

  *&v17[v8] = *"BBTrace.scratch/";
  if (!v15)
  {
    operator delete(v10);
  }

  *(&__dst + 1) = v9;
  v29 = v1 | 0x8000000000000000;
  *&__dst = v17;
  v18 = &v17[v9];
LABEL_35:
  *v18 = 0;
  *__p = __dst;
  v31 = v29;
  v29 = 0;
  __dst = 0uLL;
  abm::trace::TraceInfo::create();
  v21 = v32;
  v32 = 0uLL;
  v22 = *(v3 + 432);
  *(v3 + 424) = v21;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
    v23 = *(&v32 + 1);
    if (!*(&v32 + 1))
    {
LABEL_39:
      if ((SHIBYTE(v31) & 0x80000000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_46;
    }
  }

  else
  {
    v23 = *(&v32 + 1);
    if (!*(&v32 + 1))
    {
      goto LABEL_39;
    }
  }

  if (atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_39;
  }

  (v23->__on_zero_shared)(v23);
  std::__shared_weak_count::__release_weak(v23);
  if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
LABEL_40:
    if ((SHIBYTE(v29) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_47:
    operator delete(__dst);
    operator delete(v2);
    v24 = a1;
    if (!a1)
    {
      return;
    }

    goto LABEL_48;
  }

LABEL_46:
  operator delete(__p[0]);
  if (SHIBYTE(v29) < 0)
  {
    goto LABEL_47;
  }

LABEL_41:
  operator delete(v2);
  v24 = a1;
  if (!a1)
  {
    return;
  }

LABEL_48:
  v25 = v24[2];
  if (v25)
  {
    if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v26 = v24;
      (v25->__on_zero_shared)(v25);
      std::__shared_weak_count::__release_weak(v25);
      v24 = v26;
    }
  }

  operator delete(v24);
}

void sub_23C2220DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a15 & 0x80000000) == 0)
  {
    operator delete(v21);
    std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  operator delete(v21);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_23C222148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  operator delete(v9);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc4dictEEEclIJS5_S7_EEEvDpT__block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  cf = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  v4 = a1[6];
  object = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v3 + 16))(v3, &cf, &object);
  xpc_release(object);
  object = 0;
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_23C2221F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, const void *a10)
{
  xpc_release(object);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

xpc_object_t __copy_helper_block_e8_32c87_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc4dictEEEE40c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE48c15_ZTSN3xpc4dictE(void *a1, void *a2)
{
  v4 = a2[4];
  if (!v4)
  {
    v6 = a2[5];
    a1[4] = 0;
    a1[5] = v6;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = _Block_copy(v4);
  v6 = a2[5];
  a1[4] = v5;
  a1[5] = v6;
  if (v6)
  {
LABEL_5:
    CFRetain(v6);
  }

LABEL_6:
  v7 = a2[6];
  a1[6] = v7;
  if (v7)
  {
    return xpc_retain(v7);
  }

  result = xpc_null_create();
  a1[6] = result;
  return result;
}

void __destroy_helper_block_e8_32c87_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc4dictEEEE40c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE48c15_ZTSN3xpc4dictE(uint64_t a1)
{
  xpc_release(*(a1 + 48));
  *(a1 + 48) = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    _Block_release(v3);
  }
}

void ctu::SharedSynchronizable<Trace>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableI5TraceE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_284EFAB90;
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

uint64_t ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

uint64_t __cxx_global_var_init_138()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

uint64_t __cxx_global_var_init_139()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

uint64_t abm::SystemLogsTask::SystemLogsTask(uint64_t a1, int a2, uint64_t *a3)
{
  v4 = a3[1];
  v7 = *a3;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  abm::HelperTask::HelperTask(a1, a2, &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  *a1 = &unk_284EFAC00;
  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  *(a1 + 104) = dispatch_queue_create("systemlogs.task.queue", v5);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  return a1;
}

void sub_23C222664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void abm::SystemLogsTask::init_sync(abm::SystemLogsTask *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = *(this + 12);
    if (!v6)
    {
      goto LABEL_43;
    }
  }

  else
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
    v6 = *(this + 12);
    if (!v6)
    {
      goto LABEL_43;
    }
  }

  v7 = std::__shared_weak_count::lock(v6);
  v43 = v7;
  if (v7)
  {
    v8 = v7;
    v9 = *(this + 11);
    v42 = v9;
    if (v9)
    {
      v10 = operator new(0x20uLL);
      v40 = v10;
      v41 = xmmword_23C32CA70;
      strcpy(v10, "CommandOsLogArchiveSnapshot");
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3321888768;
      aBlock[2] = ___ZN3abm14SystemLogsTask9init_syncEv_block_invoke;
      aBlock[3] = &__block_descriptor_56_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE_e242_v48__0_ServerClientState__shared_ptr_TelephonyXPC::ServerClientState::State____State_____shared_weak_count___8_dict__object__v__24_callback_void_____int__xpc::dict____block_void_____int__xpc::dict_______queue__object___dispatch_object_s____32l;
      aBlock[4] = this;
      aBlock[5] = v3;
      v38 = v5;
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v11 = _Block_copy(aBlock);
      v12 = *(this + 3);
      if (v12)
      {
        dispatch_retain(*(this + 3));
      }

      v39[0] = v11;
      v39[1] = v12;
      abm::HelperServerInternal::setCommandHandler(v9, &v40, v39);
      if (v12)
      {
        dispatch_release(v12);
      }

      if (v11)
      {
        _Block_release(v11);
      }

      operator delete(v10);
      v13 = operator new(0x20uLL);
      v35 = v13;
      v36 = xmmword_23C32D560;
      strcpy(v13, "CommandSysdiagnoseSnapshot");
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3321888768;
      v32[2] = ___ZN3abm14SystemLogsTask9init_syncEv_block_invoke_4;
      v32[3] = &__block_descriptor_56_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE_e242_v48__0_ServerClientState__shared_ptr_TelephonyXPC::ServerClientState::State____State_____shared_weak_count___8_dict__object__v__24_callback_void_____int__xpc::dict____block_void_____int__xpc::dict_______queue__object___dispatch_object_s____32l;
      v32[4] = this;
      v32[5] = v3;
      v33 = v5;
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v14 = _Block_copy(v32);
      v15 = *(this + 3);
      if (v15)
      {
        dispatch_retain(*(this + 3));
      }

      v34[0] = v14;
      v34[1] = v15;
      abm::HelperServerInternal::setCommandHandler(v9, &v35, v34);
      if (v15)
      {
        dispatch_release(v15);
      }

      if (v14)
      {
        _Block_release(v14);
      }

      operator delete(v13);
      v16 = operator new(0x20uLL);
      v30 = v16;
      v31 = xmmword_23C32C5A0;
      strcpy(v16, "CommandSysdiagnoseStatus");
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3321888768;
      v27[2] = ___ZN3abm14SystemLogsTask9init_syncEv_block_invoke_2;
      v27[3] = &__block_descriptor_56_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE_e242_v48__0_ServerClientState__shared_ptr_TelephonyXPC::ServerClientState::State____State_____shared_weak_count___8_dict__object__v__24_callback_void_____int__xpc::dict____block_void_____int__xpc::dict_______queue__object___dispatch_object_s____32l;
      v27[4] = this;
      v27[5] = v3;
      v28 = v5;
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v17 = _Block_copy(v27);
      v18 = *(this + 3);
      if (v18)
      {
        dispatch_retain(*(this + 3));
      }

      v29[0] = v17;
      v29[1] = v18;
      abm::HelperServerInternal::setCommandHandler(v9, &v30, v29);
      if (v18)
      {
        dispatch_release(v18);
      }

      if (v17)
      {
        _Block_release(v17);
      }

      operator delete(v16);
      v19 = operator new(0x20uLL);
      v25 = v19;
      v26 = xmmword_23C32CBF0;
      strcpy(v19, "CommandOsLogProcessingStatus");
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3321888768;
      v22[2] = ___ZN3abm14SystemLogsTask9init_syncEv_block_invoke_6;
      v22[3] = &__block_descriptor_56_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE_e242_v48__0_ServerClientState__shared_ptr_TelephonyXPC::ServerClientState::State____State_____shared_weak_count___8_dict__object__v__24_callback_void_____int__xpc::dict____block_void_____int__xpc::dict_______queue__object___dispatch_object_s____32l;
      v22[4] = this;
      v22[5] = v3;
      v23 = v5;
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v20 = _Block_copy(v22);
      v21 = *(this + 3);
      if (v21)
      {
        dispatch_retain(v21);
      }

      v24[0] = v20;
      v24[1] = v21;
      abm::HelperServerInternal::setCommandHandler(v9, &v25, v24);
      if (v21)
      {
        dispatch_release(v21);
      }

      if (v20)
      {
        _Block_release(v20);
      }

      operator delete(v19);
      if (v23)
      {
        std::__shared_weak_count::__release_weak(v23);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_weak(v28);
      }

      if (v33)
      {
        std::__shared_weak_count::__release_weak(v33);
      }

      if (v38)
      {
        std::__shared_weak_count::__release_weak(v38);
      }
    }

    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

LABEL_43:
  std::__shared_weak_count::__release_weak(v5);
}

void sub_23C222B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40, char a41)
{
  dispatch::callback<void({block_pointer})(TelephonyXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(int,xpc::dict)>)>::~callback(&a17);
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  operator delete(v42);
  if (a28)
  {
    std::__shared_weak_count::__release_weak(a28);
    v45 = a40;
    if (!a40)
    {
LABEL_5:
      v46 = *(v43 - 168);
      if (!v46)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v45 = a40;
    if (!a40)
    {
      goto LABEL_5;
    }
  }

  std::__shared_weak_count::__release_weak(v45);
  v46 = *(v43 - 168);
  if (!v46)
  {
LABEL_6:
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v43 - 120);
    std::__shared_weak_count::__release_weak(v41);
    _Unwind_Resume(a1);
  }

LABEL_9:
  std::__shared_weak_count::__release_weak(v46);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v43 - 120);
  std::__shared_weak_count::__release_weak(v41);
  _Unwind_Resume(a1);
}

void sub_23C222C54(_Unwind_Exception *a1)
{
  dispatch::callback<void({block_pointer})(TelephonyXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(int,xpc::dict)>)>::~callback(v3 - 160);
  v5 = *(v3 - 168);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(v2);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v3 - 120);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void sub_23C222C90(_Unwind_Exception *a1)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v2 - 120);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void ___ZN3abm14SystemLogsTask9init_syncEv_block_invoke(void **a1, uint64_t a2, xpc_object_t *a3, uint64_t a4)
{
  v5 = a1[6];
  if (v5)
  {
    v8 = a1[4];
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = a1[5];
      if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (!v10)
        {
          return;
        }
      }

      else
      {
        v11 = v9;
        (v9->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v11);
        if (!v10)
        {
          return;
        }
      }

      v12 = *(v8 + 10);
      if (v12)
      {
        dispatch_retain(*(v8 + 10));
        dispatch_group_enter(v12);
      }

      if (MEMORY[0x23EECEE80](*a3) != MEMORY[0x277D86468])
      {
        v13 = xpc_null_create();
        if (*a4)
        {
          v14 = _Block_copy(*a4);
        }

        else
        {
          v14 = 0;
        }

        v22 = *(a4 + 8);
        __p[0] = MEMORY[0x277D85DD0];
        __p[1] = 3321888768;
        v34 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__2ES2_EEEvDpT__block_invoke;
        aBlock.__r_.__value_.__r.__words[0] = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
        if (v14)
        {
          LODWORD(v36.__r_.__value_.__l.__data_) = -534716414;
          aBlock.__r_.__value_.__l.__size_ = _Block_copy(v14);
          aBlock.__r_.__value_.__r.__words[2] = v13;
          if (v13)
          {
LABEL_32:
            xpc_retain(v13);
LABEL_35:
            dispatch_async(v22, __p);
            xpc_release(aBlock.__r_.__value_.__r.__words[2]);
            aBlock.__r_.__value_.__r.__words[2] = 0;
            if (aBlock.__r_.__value_.__l.__size_)
            {
              _Block_release(aBlock.__r_.__value_.__l.__size_);
            }

            if (v14)
            {
              _Block_release(v14);
            }

            xpc_release(v13);
            goto LABEL_40;
          }
        }

        else
        {
          LODWORD(v36.__r_.__value_.__l.__data_) = -534716414;
          aBlock.__r_.__value_.__l.__size_ = 0;
          aBlock.__r_.__value_.__r.__words[2] = v13;
          if (v13)
          {
            goto LABEL_32;
          }
        }

        aBlock.__r_.__value_.__r.__words[2] = xpc_null_create();
        goto LABEL_35;
      }

      v42[4] = 0xAAAAAAAAAAAAAAAALL;
      v43 = 0xAAAAAAAAAAAAAAAALL;
      v15 = pthread_mutex_lock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
      v16 = xmmword_280C05A58;
      if (!xmmword_280C05A58)
      {
        ctu::XpcJetsamAssertion::create_default_global(__p, v15);
        v17 = *__p;
        __p[0] = 0;
        __p[1] = 0;
        v18 = *(&xmmword_280C05A58 + 1);
        xmmword_280C05A58 = v17;
        if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }

        v19 = __p[1];
        if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v16 = xmmword_280C05A58;
      }

      v20 = *(&xmmword_280C05A58 + 1);
      v41[1].__r_.__value_.__r.__words[0] = v16;
      v41[1].__r_.__value_.__l.__size_ = *(&xmmword_280C05A58 + 1);
      if (*(&xmmword_280C05A58 + 1))
      {
        atomic_fetch_add_explicit((*(&xmmword_280C05A58 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
      HIBYTE(v42[2]) = 19;
      strcpy(v42, "logarchive snapshot");
      ctu::XpcJetsamAssertion::createActivity();
      if (SHIBYTE(v42[2]) < 0)
      {
        operator delete(v42[0]);
      }

      if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v20->__on_zero_shared)(v20);
        std::__shared_weak_count::__release_weak(v20);
      }

      memset(&v41[1], 170, sizeof(std::string));
      value = xpc_dictionary_get_value(*a3, "TimestampString");
      v40.__r_.__value_.__r.__words[0] = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        v40.__r_.__value_.__r.__words[0] = xpc_null_create();
      }

      Timestamp::Timestamp(v41);
      Timestamp::asString(v41, 0, 9, __p);
      xpc::dyn_cast_or_default();
      if (SHIBYTE(v34) < 0)
      {
        operator delete(__p[0]);
      }

      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v41, v41[0].__r_.__value_.__l.__size_);
      xpc_release(v40.__r_.__value_.__l.__data_);
      memset(v41, 170, 24);
      v23 = xpc_dictionary_get_value(*a3, "History");
      v40.__r_.__value_.__r.__words[0] = v23;
      if (v23)
      {
        xpc_retain(v23);
      }

      else
      {
        v40.__r_.__value_.__r.__words[0] = xpc_null_create();
      }

      __p[0] = 0;
      __p[1] = 0;
      v34 = 0;
      xpc::dyn_cast_or_default();
      if (SHIBYTE(v34) < 0)
      {
        operator delete(__p[0]);
      }

      xpc_release(v40.__r_.__value_.__l.__data_);
      memset(&v40, 170, sizeof(v40));
      v24 = xpc_dictionary_get_value(*a3, "LogPath");
      __p[0] = v24;
      if (v24)
      {
        xpc_retain(v24);
      }

      else
      {
        __p[0] = xpc_null_create();
      }

      xpc::dyn_cast_or_default();
      xpc_release(__p[0]);
      v25 = a1[6];
      __p[0] = a1[5];
      __p[1] = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(v25 + 2, 1uLL, memory_order_relaxed);
      }

      v34 = v8;
      if (SHIBYTE(v41[1].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&aBlock, v41[1].__r_.__value_.__l.__data_, v41[1].__r_.__value_.__l.__size_);
      }

      else
      {
        aBlock = v41[1];
      }

      if (SHIBYTE(v41[0].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v36, v41[0].__r_.__value_.__l.__data_, v41[0].__r_.__value_.__l.__size_);
      }

      else
      {
        v36 = v41[0];
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v37, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
      }

      else
      {
        v37 = v40;
      }

      group[0] = v12;
      if (v12)
      {
        dispatch_retain(v12);
        if (group[0])
        {
          dispatch_group_enter(group[0]);
        }
      }

      v26 = *a4;
      if (*a4)
      {
        v26 = _Block_copy(v26);
      }

      v27 = *(a4 + 8);
      group[1] = v26;
      v39 = v27;
      if (v27)
      {
        dispatch_retain(v27);
      }

      v28 = *(v8 + 13);
      v29 = operator new(0x78uLL);
      v30 = v29;
      v31 = __p[1];
      v29->__r_.__value_.__l.__data_ = __p[0];
      v29->__r_.__value_.__l.__size_ = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(v31 + 2, 1uLL, memory_order_relaxed);
      }

      v29->__r_.__value_.__r.__words[2] = v34;
      if (SHIBYTE(aBlock.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v29 + 1, aBlock.__r_.__value_.__l.__data_, aBlock.__r_.__value_.__l.__size_);
      }

      else
      {
        v29[1] = aBlock;
      }

      v30[2] = v36;
      memset(&v36, 0, sizeof(v36));
      v30[3] = v37;
      memset(&v37, 0, sizeof(v37));
      *&v30[4].__r_.__value_.__l.__data_ = *group;
      group[0] = 0;
      group[1] = 0;
      v30[4].__r_.__value_.__r.__words[2] = v39;
      v39 = 0;
      dispatch_async_f(v28, v30, _ZZN8dispatch5asyncIZZN3abm14SystemLogsTask9init_syncEvEUb_E3__1EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS6_14default_deleteIS8_EEEEENUlPvE_8__invokeESC_);
      _ZZZN3abm14SystemLogsTask9init_syncEvEUb_EN3__1D1Ev(__p);
      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v41[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_79:
          if ((SHIBYTE(v41[1].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_80;
          }

          goto LABEL_84;
        }
      }

      else if ((SHIBYTE(v41[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_79;
      }

      operator delete(v41[0].__r_.__value_.__l.__data_);
      if ((SHIBYTE(v41[1].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_80:
        v32 = v43;
        if (!v43)
        {
LABEL_40:
          if (v12)
          {
            dispatch_group_leave(v12);
            dispatch_release(v12);
          }

          return;
        }

LABEL_85:
        if (!atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v32->__on_zero_shared)(v32);
          std::__shared_weak_count::__release_weak(v32);
        }

        goto LABEL_40;
      }

LABEL_84:
      operator delete(v41[1].__r_.__value_.__l.__data_);
      v32 = v43;
      if (!v43)
      {
        goto LABEL_40;
      }

      goto LABEL_85;
    }
  }
}

void sub_23C223380(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  v43 = *(v41 + 8);
  if (v43)
  {
    std::__shared_weak_count::__release_weak(v43);
    __clang_call_terminate(a1);
  }

  __clang_call_terminate(a1);
}

void sub_23C223448(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  xpc_release(object);
  if (a32 < 0)
  {
    operator delete(a27);
  }

  JUMPOUT(0x23C2234A8);
}

void sub_23C22347C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, xpc_object_t object)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  if (*(v27 - 129) < 0)
  {
    operator delete(*(v27 - 152));
  }

  JUMPOUT(0x23C223504);
}

void sub_23C2234C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, xpc_object_t object, uint64_t a28, uint64_t a29, char a30, void *a31)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&a30, a31);
  xpc_release(object);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v32 - 96);
  if (v31)
  {
    dispatch_group_leave(v31);
    dispatch_release(v31);
  }

  _Unwind_Resume(a1);
}

void sub_23C223528()
{
  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v1 - 152);
  if (!v0)
  {
    JUMPOUT(0x23C223520);
  }

  JUMPOUT(0x23C223510);
}

void sub_23C223550()
{
  if (!v0)
  {
    JUMPOUT(0x23C223520);
  }

  JUMPOUT(0x23C223510);
}

uint64_t _ZZZN3abm14SystemLogsTask9init_syncEvEUb_EN3__1D1Ev(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = *(a1 + 96);
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
LABEL_10:
      if ((*(a1 + 47) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_16:
      operator delete(*(a1 + 24));
      v6 = *(a1 + 8);
      if (!v6)
      {
        return a1;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a1 + 71) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  operator delete(*(a1 + 48));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  v6 = *(a1 + 8);
  if (v6)
  {
LABEL_12:
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

void ___ZN3abm14SystemLogsTask9init_syncEv_block_invoke_4(void **a1, uint64_t a2, xpc_object_t *a3, uint64_t a4)
{
  v5 = a1[6];
  if (v5)
  {
    v8 = a1[4];
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = a1[5];
      if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (!v10)
        {
          return;
        }
      }

      else
      {
        v11 = v9;
        (v9->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v11);
        if (!v10)
        {
          return;
        }
      }

      v12 = *(v8 + 10);
      if (v12)
      {
        dispatch_retain(*(v8 + 10));
        dispatch_group_enter(v12);
      }

      if (MEMORY[0x23EECEE80](*a3) != MEMORY[0x277D86468])
      {
        v13 = xpc_null_create();
        if (*a4)
        {
          v14 = _Block_copy(*a4);
        }

        else
        {
          v14 = 0;
        }

        v22 = *(a4 + 8);
        __p[0] = MEMORY[0x277D85DD0];
        __p[1] = 3321888768;
        *&v38 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__2ES2_EEEvDpT__block_invoke;
        *(&v38 + 1) = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
        if (v14)
        {
          LODWORD(object.__r_.__value_.__r.__words[2]) = -534716414;
          object.__r_.__value_.__r.__words[0] = _Block_copy(v14);
          object.__r_.__value_.__l.__size_ = v13;
          if (v13)
          {
LABEL_32:
            xpc_retain(v13);
LABEL_35:
            dispatch_async(v22, __p);
            xpc_release(object.__r_.__value_.__l.__size_);
            object.__r_.__value_.__l.__size_ = 0;
            if (object.__r_.__value_.__r.__words[0])
            {
              _Block_release(object.__r_.__value_.__l.__data_);
            }

            if (v14)
            {
              _Block_release(v14);
            }

            xpc_release(v13);
            goto LABEL_40;
          }
        }

        else
        {
          LODWORD(object.__r_.__value_.__r.__words[2]) = -534716414;
          object.__r_.__value_.__r.__words[0] = 0;
          object.__r_.__value_.__l.__size_ = v13;
          if (v13)
          {
            goto LABEL_32;
          }
        }

        object.__r_.__value_.__l.__size_ = xpc_null_create();
        goto LABEL_35;
      }

      v48[4] = 0xAAAAAAAAAAAAAAAALL;
      v49 = 0xAAAAAAAAAAAAAAAALL;
      v15 = pthread_mutex_lock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
      v16 = xmmword_280C05A58;
      if (!xmmword_280C05A58)
      {
        ctu::XpcJetsamAssertion::create_default_global(__p, v15);
        v17 = *__p;
        __p[0] = 0;
        __p[1] = 0;
        v18 = *(&xmmword_280C05A58 + 1);
        xmmword_280C05A58 = v17;
        if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }

        v19 = __p[1];
        if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v16 = xmmword_280C05A58;
      }

      v20 = *(&xmmword_280C05A58 + 1);
      v47[3] = v16;
      v47[4] = *(&xmmword_280C05A58 + 1);
      if (*(&xmmword_280C05A58 + 1))
      {
        atomic_fetch_add_explicit((*(&xmmword_280C05A58 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
      HIBYTE(v48[2]) = 20;
      strcpy(v48, "sysdiagnose snapshot");
      ctu::XpcJetsamAssertion::createActivity();
      if (SHIBYTE(v48[2]) < 0)
      {
        operator delete(v48[0]);
      }

      if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v20->__on_zero_shared)(v20);
        std::__shared_weak_count::__release_weak(v20);
      }

      memset(&v47[3], 170, 24);
      value = xpc_dictionary_get_value(*a3, "TimestampString");
      v46.__r_.__value_.__r.__words[0] = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        v46.__r_.__value_.__r.__words[0] = xpc_null_create();
      }

      Timestamp::Timestamp(v47);
      Timestamp::asString(v23, 0, 9, __p);
      xpc::dyn_cast_or_default();
      if (SBYTE7(v38) < 0)
      {
        operator delete(__p[0]);
      }

      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v47, v47[1]);
      xpc_release(v46.__r_.__value_.__l.__data_);
      memset(v47, 170, 24);
      v24 = xpc_dictionary_get_value(*a3, "DumpStateReason");
      v46.__r_.__value_.__r.__words[0] = v24;
      if (v24)
      {
        xpc_retain(v24);
      }

      else
      {
        v46.__r_.__value_.__r.__words[0] = xpc_null_create();
      }

      __p[0] = 0;
      __p[1] = 0;
      *&v38 = 0;
      xpc::dyn_cast_or_default();
      if (SBYTE7(v38) < 0)
      {
        operator delete(__p[0]);
      }

      xpc_release(v46.__r_.__value_.__l.__data_);
      memset(&v46, 170, sizeof(v46));
      abm::SystemLogsTask::filterReason_sync(v47, &v46);
      memset(&v45, 170, sizeof(v45));
      v25 = xpc_dictionary_get_value(*a3, "History");
      v44[1].__r_.__value_.__r.__words[0] = v25;
      if (v25)
      {
        xpc_retain(v25);
      }

      else
      {
        v44[1].__r_.__value_.__r.__words[0] = xpc_null_create();
      }

      __p[0] = 0;
      __p[1] = 0;
      *&v38 = 0;
      xpc::dyn_cast_or_default();
      if (SBYTE7(v38) < 0)
      {
        operator delete(__p[0]);
      }

      xpc_release(v44[1].__r_.__value_.__l.__data_);
      memset(&v44[1], 170, sizeof(std::string));
      v26 = xpc_dictionary_get_value(*a3, "LogPath");
      __p[0] = v26;
      if (v26)
      {
        xpc_retain(v26);
      }

      else
      {
        __p[0] = xpc_null_create();
      }

      xpc::dyn_cast_or_default();
      xpc_release(__p[0]);
      v27 = xpc_dictionary_get_value(*a3, "RequireUserConfirmation");
      __p[0] = v27;
      if (v27)
      {
        xpc_retain(v27);
      }

      else
      {
        __p[0] = xpc_null_create();
      }

      v28 = xpc::dyn_cast_or_default();
      xpc_release(__p[0]);
      v29 = a1[6];
      __p[0] = a1[5];
      __p[1] = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(v29 + 2, 1uLL, memory_order_relaxed);
      }

      LOBYTE(v38) = v28;
      *(&v38 + 1) = v8;
      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&object, v46.__r_.__value_.__l.__data_, v46.__r_.__value_.__l.__size_);
      }

      else
      {
        object = v46;
      }

      if (SHIBYTE(v47[5]) < 0)
      {
        std::string::__init_copy_ctor_external(&v40, v47[3], v47[4]);
      }

      else
      {
        v40 = *&v47[3];
      }

      group[0] = v12;
      if (v12)
      {
        dispatch_retain(v12);
        if (group[0])
        {
          dispatch_group_enter(group[0]);
        }
      }

      v30 = *a4;
      if (*a4)
      {
        v30 = _Block_copy(v30);
      }

      v31 = *(a4 + 8);
      group[1] = v30;
      v42 = v31;
      if (v31)
      {
        dispatch_retain(v31);
      }

      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v43, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
      }

      else
      {
        v43 = v45;
      }

      if (SHIBYTE(v44[1].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v44, v44[1].__r_.__value_.__l.__data_, v44[1].__r_.__value_.__l.__size_);
      }

      else
      {
        v44[0] = v44[1];
      }

      v32 = *(v8 + 13);
      v33 = operator new(0x98uLL);
      v34 = v33;
      v35 = __p[1];
      *v33 = __p[0];
      v33[1] = v35;
      if (v35)
      {
        atomic_fetch_add_explicit(v35 + 2, 1uLL, memory_order_relaxed);
      }

      *(v33 + 1) = v38;
      if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external((v33 + 4), object.__r_.__value_.__l.__data_, object.__r_.__value_.__l.__size_);
      }

      else
      {
        *(v33 + 4) = object;
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external((v34 + 7), v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
      }

      else
      {
        *(v34 + 7) = v40;
      }

      *(v34 + 5) = *group;
      *group = 0u;
      v34[12] = v42;
      v42 = 0;
      *(v34 + 13) = v43;
      memset(&v43, 0, sizeof(v43));
      *(v34 + 16) = v44[0];
      memset(v44, 0, 24);
      dispatch_async_f(v32, v34, _ZZN8dispatch5asyncIZZN3abm14SystemLogsTask9init_syncEvEUb0_E3__3EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS6_14default_deleteIS8_EEEEENUlPvE_8__invokeESC_);
      _ZZZN3abm14SystemLogsTask9init_syncEvEUb0_EN3__3D1Ev(__p);
      if (SHIBYTE(v44[1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44[1].__r_.__value_.__l.__data_);
        if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_93:
          if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_94;
          }

          goto LABEL_100;
        }
      }

      else if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_93;
      }

      operator delete(v45.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_94:
        if ((SHIBYTE(v47[2]) & 0x80000000) == 0)
        {
          goto LABEL_95;
        }

        goto LABEL_101;
      }

LABEL_100:
      operator delete(v46.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v47[2]) & 0x80000000) == 0)
      {
LABEL_95:
        if ((SHIBYTE(v47[5]) & 0x80000000) == 0)
        {
          goto LABEL_96;
        }

        goto LABEL_102;
      }

LABEL_101:
      operator delete(v47[0]);
      if ((SHIBYTE(v47[5]) & 0x80000000) == 0)
      {
LABEL_96:
        v36 = v49;
        if (!v49)
        {
LABEL_40:
          if (v12)
          {
            dispatch_group_leave(v12);
            dispatch_release(v12);
          }

          return;
        }

LABEL_103:
        if (!atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v36->__on_zero_shared)(v36);
          std::__shared_weak_count::__release_weak(v36);
        }

        goto LABEL_40;
      }

LABEL_102:
      operator delete(v47[3]);
      v36 = v49;
      if (!v49)
      {
        goto LABEL_40;
      }

      goto LABEL_103;
    }
  }
}

void sub_23C223E88(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, dispatch_group_t group, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v54 + 55) < 0)
  {
    operator delete(*(v54 + 32));
  }

  v56 = *(v54 + 8);
  if (v56)
  {
    std::__shared_weak_count::__release_weak(v56);
    __clang_call_terminate(a1);
  }

  __clang_call_terminate(a1);
}

void sub_23C223F8C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  xpc_release(object);
  if (a33 < 0)
  {
    operator delete(a28);
  }

  JUMPOUT(0x23C223FDCLL);
}

void sub_23C223FC0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  xpc_release(object);
  if (a36 < 0)
  {
    operator delete(a31);
  }

  JUMPOUT(0x23C224020);
}

void sub_23C223FF4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, xpc_object_t object, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  if (a42 < 0)
  {
    operator delete(a37);
  }

  JUMPOUT(0x23C224038);
}

void sub_23C224050(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, xpc_object_t object)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  if (*(v37 - 129) < 0)
  {
    operator delete(*(v37 - 152));
  }

  JUMPOUT(0x23C2240D8);
}

void sub_23C224094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, xpc_object_t object)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v38 - 176, *(v38 - 168));
  xpc_release(object);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v38 - 96);
  if (v37)
  {
    dispatch_group_leave(v37);
    dispatch_release(v37);
  }

  _Unwind_Resume(a1);
}

void sub_23C2240FC()
{
  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v1 - 152);
  if (!v0)
  {
    JUMPOUT(0x23C2240F4);
  }

  JUMPOUT(0x23C2240E4);
}

void sub_23C224124()
{
  if (!v0)
  {
    JUMPOUT(0x23C2240F4);
  }

  JUMPOUT(0x23C2240E4);
}

void abm::SystemLogsTask::filterReason_sync(uint64_t a1@<X1>, std::string *a2@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  memset(a2, 170, sizeof(std::string));
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    v3 = *(a1 + 16);
    a2->__r_.__value_.__r.__words[2] = v3;
    size = HIBYTE(v3);
    if ((size & 0x80u) != 0)
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      goto LABEL_63;
    }

LABEL_9:
    memset(v27, 170, sizeof(v27));
    strcpy(&v29 + 7, "\t**");
    strcpy(&__dst, "[abmtool]");
    v30 = 2;
    v32 = 3;
    LODWORD(v31) = 2763306;
    v34 = 14;
    strcpy(v33, "[ABM Settings]");
    v36 = 13;
    strcpy(v35, "BB-Triggered:");
    v38 = 13;
    strcpy(v37, "AP-Triggered:");
    std::vector<std::string>::vector[abi:ne200100](v27, &__dst, 6uLL);
    if (v38 < 0)
    {
      operator delete(v37[0]);
      if ((v36 & 0x80000000) == 0)
      {
LABEL_11:
        if ((v34 & 0x80000000) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_66;
      }
    }

    else if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    operator delete(v35[0]);
    if ((v34 & 0x80000000) == 0)
    {
LABEL_12:
      if ((v32 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_67;
    }

LABEL_66:
    operator delete(v33[0]);
    if ((v32 & 0x80000000) == 0)
    {
LABEL_13:
      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_68;
    }

LABEL_67:
    operator delete(v31);
    if ((v30 & 0x80000000) == 0)
    {
LABEL_14:
      if ((SBYTE7(v29) & 0x80000000) == 0)
      {
LABEL_15:
        for (i = v27[0]; i != v27[1]; i += 24)
        {
          util::strip_pattern(i, a2, &__dst);
          if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(a2->__r_.__value_.__l.__data_);
          }

          *&a2->__r_.__value_.__l.__data_ = __dst;
          a2->__r_.__value_.__r.__words[2] = v29;
        }

        v26 = 2;
        strcpy(__p, " \t");
        util::strip_leading_trailing(a2, __p, &__dst);
        if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(a2->__r_.__value_.__l.__data_);
        }

        *&a2->__r_.__value_.__l.__data_ = __dst;
        a2->__r_.__value_.__r.__words[2] = v29;
        BYTE7(v29) = 0;
        LOBYTE(__dst) = 0;
        if (v26 < 0)
        {
          operator delete(__p[0]);
        }

        v7 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
        v8 = v7;
        v9 = a2->__r_.__value_.__r.__words[0];
        v10 = a2->__r_.__value_.__l.__size_;
        if ((v7 & 0x80u) == 0)
        {
          v11 = a2;
        }

        else
        {
          v11 = a2->__r_.__value_.__r.__words[0];
        }

        if ((v7 & 0x80u) == 0)
        {
          v12 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
        }

        else
        {
          v12 = a2->__r_.__value_.__l.__size_;
        }

        if (v12)
        {
          v13 = MEMORY[0x277D85DE0];
          do
          {
            v14 = v11->__r_.__value_.__s.__data_[0];
            if ((v14 & 0x80000000) != 0)
            {
              v15 = __maskrune(v14, 0x500uLL);
            }

            else
            {
              v15 = *(v13 + 4 * v14 + 60) & 0x500;
            }

            if (!v15)
            {
              v11->__r_.__value_.__s.__data_[0] = 95;
            }

            v11 = (v11 + 1);
            --v12;
          }

          while (v12);
          v7 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
          v9 = a2->__r_.__value_.__r.__words[0];
          v10 = a2->__r_.__value_.__l.__size_;
          v8 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
        }

        if (v8 >= 0)
        {
          v16 = a2;
        }

        else
        {
          v7 = v10;
          v16 = v9;
        }

        if (v7 >= 0x1E)
        {
          v17 = 30;
        }

        else
        {
          v17 = v7;
        }

        if (v7 >= 0x17)
        {
          if ((v17 | 7) == 0x17)
          {
            v20 = 25;
          }

          else
          {
            v20 = (v17 | 7) + 1;
          }

          p_dst = operator new(v20);
          *(&__dst + 1) = v17;
          *&v29 = v20 | 0x8000000000000000;
          *&__dst = p_dst;
        }

        else
        {
          BYTE7(v29) = v17;
          p_dst = &__dst;
          if (!v7)
          {
            *(&__dst + v17) = 0;
            if ((SHIBYTE(a2->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_48;
            }

            goto LABEL_55;
          }
        }

        memmove(p_dst, v16, v17);
        *(p_dst + v17) = 0;
        if ((SHIBYTE(a2->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_48:
          *&a2->__r_.__value_.__l.__data_ = __dst;
          a2->__r_.__value_.__r.__words[2] = v29;
          v19 = v27[0];
          if (!v27[0])
          {
            goto LABEL_63;
          }

LABEL_56:
          v21 = v27[1];
          v22 = v19;
          if (v27[1] != v19)
          {
            do
            {
              v23 = *(v21 - 1);
              v21 -= 3;
              if (v23 < 0)
              {
                operator delete(*v21);
              }
            }

            while (v21 != v19);
            v22 = v27[0];
          }

          v27[1] = v19;
          operator delete(v22);
          goto LABEL_63;
        }

LABEL_55:
        operator delete(a2->__r_.__value_.__l.__data_);
        *&a2->__r_.__value_.__l.__data_ = __dst;
        a2->__r_.__value_.__r.__words[2] = v29;
        v19 = v27[0];
        if (!v27[0])
        {
          goto LABEL_63;
        }

        goto LABEL_56;
      }

LABEL_69:
      operator delete(__dst);
      goto LABEL_15;
    }

LABEL_68:
    operator delete(*(&v29 + 1));
    if ((SBYTE7(v29) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_69;
  }

  std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
  v5 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((v5 & 0x80u) != 0)
  {
    v5 = a2->__r_.__value_.__l.__size_;
  }

  if (v5)
  {
    goto LABEL_9;
  }

LABEL_63:
  v24 = *MEMORY[0x277D85DE8];
}

void sub_23C2245A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  std::vector<std::string>::~vector[abi:ne200100](&a16);
  if (*(v54 + 23) < 0)
  {
    operator delete(*v54);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZZZN3abm14SystemLogsTask9init_syncEvEUb0_EN3__3D1Ev(uint64_t a1)
{
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
    if ((*(a1 + 127) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 96);
      if (!v2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(a1 + 127) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 104));
  v2 = *(a1 + 96);
  if (v2)
  {
LABEL_4:
    dispatch_release(v2);
  }

LABEL_5:
  v3 = *(a1 + 88);
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = *(a1 + 80);
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  if ((*(a1 + 79) & 0x80000000) == 0)
  {
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_19:
    operator delete(*(a1 + 32));
    v6 = *(a1 + 8);
    if (!v6)
    {
      return a1;
    }

    goto LABEL_13;
  }

  operator delete(*(a1 + 56));
  if (*(a1 + 55) < 0)
  {
    goto LABEL_19;
  }

LABEL_12:
  v6 = *(a1 + 8);
  if (v6)
  {
LABEL_13:
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

void ___ZN3abm14SystemLogsTask9init_syncEv_block_invoke_2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a1[6];
  if (!v5)
  {
    goto LABEL_51;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v5);
  if (!v8)
  {
    goto LABEL_51;
  }

  v9 = a1[5];
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v9)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v10 = v8;
    (v8->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v10);
    if (!v9)
    {
      goto LABEL_51;
    }
  }

  v11 = *(v7 + 80);
  if (v11)
  {
    dispatch_retain(*(v7 + 80));
    dispatch_group_enter(v11);
  }

  object = xpc_null_create();
  memset(&v28, 170, sizeof(v28));
  if (*(v7 + 135) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, *(v7 + 112), *(v7 + 120));
  }

  else
  {
    v28 = *(v7 + 112);
  }

  size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v28.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v13 = xpc_dictionary_create(0, 0, 0);
    if (v13 || (v13 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x23EECEE80](v13) == MEMORY[0x277D86468])
      {
        xpc_retain(v13);
        v14 = v13;
      }

      else
      {
        v14 = xpc_null_create();
      }
    }

    else
    {
      v14 = xpc_null_create();
      v13 = 0;
    }

    xpc_release(v13);
    v15 = xpc_null_create();
    v16 = object;
    object = v14;
    xpc_release(v16);
    xpc_release(v15);
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v28;
    }

    else
    {
      v17 = v28.__r_.__value_.__r.__words[0];
    }

    v18 = xpc_string_create(v17);
    if (!v18)
    {
      v18 = xpc_null_create();
    }

    xpc_dictionary_set_value(object, "TimestampString", v18);
    v19 = xpc_null_create();
    xpc_release(v18);
    xpc_release(v19);
  }

  v20 = *(v7 + 40);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    xpc::object::to_string(__p, &object);
    v21 = SHIBYTE(v31) >= 0 ? __p : __p[0];
    *buf = 136315138;
    v37 = v21;
    _os_log_impl(&dword_23C1C4000, v20, OS_LOG_TYPE_DEFAULT, "#I Snapshot - running: %s", buf, 0xCu);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v22 = object;
  if (object)
  {
    xpc_retain(object);
    v23 = *a4;
    if (*a4)
    {
LABEL_35:
      v24 = _Block_copy(v23);
      goto LABEL_38;
    }
  }

  else
  {
    v22 = xpc_null_create();
    v23 = *a4;
    if (*a4)
    {
      goto LABEL_35;
    }
  }

  v24 = 0;
LABEL_38:
  v25 = *(a4 + 8);
  __p[0] = MEMORY[0x277D85DD0];
  __p[1] = 3321888768;
  v31 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__2ES2_EEEvDpT__block_invoke;
  v32 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
  if (!v24)
  {
    v35 = 0;
    aBlock = 0;
    v34 = v22;
    if (v22)
    {
      goto LABEL_40;
    }

LABEL_42:
    v34 = xpc_null_create();
    goto LABEL_43;
  }

  v26 = _Block_copy(v24);
  v35 = 0;
  aBlock = v26;
  v34 = v22;
  if (!v22)
  {
    goto LABEL_42;
  }

LABEL_40:
  xpc_retain(v22);
LABEL_43:
  dispatch_async(v25, __p);
  xpc_release(v34);
  v34 = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v24)
  {
    _Block_release(v24);
  }

  xpc_release(v22);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  xpc_release(object);
  if (v11)
  {
    dispatch_group_leave(v11);
    dispatch_release(v11);
  }

LABEL_51:
  v27 = *MEMORY[0x277D85DE8];
}
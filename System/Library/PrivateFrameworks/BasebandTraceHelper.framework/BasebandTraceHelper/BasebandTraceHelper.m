uint64_t TraceFileCollection::getInMemoryRemaining(TraceFileCollection *this)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK19TraceFileCollection20getInMemoryRemainingEv_block_invoke;
  v5[3] = &unk_278D04DE8;
  v5[4] = &v6;
  v5[5] = this;
  v10 = v5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI19TraceFileCollectionE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_82;
  block[4] = this;
  block[5] = &v10;
  v2 = this + 16;
  v1 = *(this + 2);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }

  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void ___ZNK19TraceFileCollection20getInMemoryRemainingEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 208);
  if (v2)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(v2 + 68) - *(v2 + 64);
  }

  else
  {
    v3 = *(v1 + 32);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_241A16000, v3, OS_LOG_TYPE_ERROR, "No memory file!", v4, 2u);
    }
  }
}

void ___ZN19TraceFileCollection14handleReadDataEPKhj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 208);
  if (!v3)
  {
    TraceFileCollection::createNewMemoryFile_sync(*(a1 + 40), 1);
    v3 = *(v2 + 208);
    if (!v3)
    {
      *(v2 + 184) += *(a1 + 56);
      return;
    }
  }

  v4 = *(v3 + 64);
  if (v4)
  {
LABEL_8:
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(v3 + 68);
    v8 = v7 - v4;
    v9 = v6 - (v7 - v4);
    if (v6 > v7 - v4)
    {
      goto LABEL_9;
    }

LABEL_15:
    v10 = v4 + v6;
    goto LABEL_16;
  }

  if (*(a1 + 56))
  {
    Timestamp::Timestamp(&v15);
    if ((v2 + 224) != &v15)
    {
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<Timestamp::TimeDomain,timeval>,std::__tree_node<std::__value_type<Timestamp::TimeDomain,timeval>,void *> *,long>>((v2 + 224), v15, &v16);
    }

    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v15, v16);
    v3 = *(v2 + 208);
    v4 = *(v3 + 64);
    goto LABEL_8;
  }

  v4 = 0;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(v3 + 68);
  v8 = v7;
  v9 = v6 - v7;
  if (v6 <= v7)
  {
    goto LABEL_15;
  }

LABEL_9:
  if (*(v3 + 72))
  {
    *(v3 + 60) += v9;
    v10 = v7;
    goto LABEL_16;
  }

  v10 = v7;
  v6 = v8;
  if (v8)
  {
LABEL_16:
    *(v3 + 64) = v10;
    v11 = *(v3 + 56);
    v12 = v11 & (v7 - 1);
    v13 = v7 - v12;
    *(v3 + 56) = v11 + v6;
    v14 = v6 - v13;
    if (v6 <= v13)
    {
      v14 = v6;
    }

    else
    {
      memcpy((*(v3 + 32) + v12), v5, v13);
      v12 = 0;
      v5 += v13;
    }

    memcpy((*(v3 + 32) + v12), v5, v14);
  }

  *(*(*(a1 + 32) + 8) + 24) = v6;
}

uint64_t TraceFileCollection::handleReadData(TraceFileCollection *this, const unsigned __int8 *a2, int a3)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = ___ZN19TraceFileCollection14handleReadDataEPKhj_block_invoke;
  v7[3] = &unk_278D04DA0;
  v8 = a3;
  v7[4] = &v9;
  v7[5] = this;
  v7[6] = a2;
  v13 = v7;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI19TraceFileCollectionE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_82;
  block[4] = this;
  block[5] = &v13;
  v4 = this + 16;
  v3 = *(this + 2);
  if (*(v4 + 1))
  {
    dispatch_async_and_wait(v3, block);
  }

  else
  {
    dispatch_sync(v3, block);
  }

  v5 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void TraceFileCollection::storeFile_sync(TraceFileCollection *this, int a2)
{
  v62 = *MEMORY[0x277D85DE8];
  if (!*(this + 26))
  {
    goto LABEL_99;
  }

  TraceFileCollection::archiveMemoryFile_sync(this);
  v3 = *(this + 50);
  v4 = *(this + 51) - v3;
  v5 = *(this + 36);
  if (v5)
  {
    v6 = v4 + 1 <= v5;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = (this + 120);
    while (1)
    {
      v8 = this + 96;
      if (*(this + 119) < 0)
      {
        v8 = *(this + 12);
      }

      *&v9 = 0xAAAAAAAAAAAAAAAALL;
      *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *__str = v9;
      v61 = v9;
      snprintf(__str, 0x20uLL, "0x%08X%s", v3, v8);
      v10 = strlen(__str);
      if (v10 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_100:
        std::string::__throw_length_error[abi:ne200100]();
      }

      v12 = v10;
      if (v10 >= 0x17)
      {
        break;
      }

      HIBYTE(v56) = v10;
      p_dst = &__dst;
      if (v10)
      {
        goto LABEL_17;
      }

LABEL_18:
      *(p_dst + v12) = 0;
      v15 = *(this + 143);
      if (v15 >= 0)
      {
        v16 = *(this + 143);
      }

      else
      {
        v16 = *(this + 16);
      }

      v17 = SHIBYTE(v56);
      if (v56 >= 0)
      {
        v18 = HIBYTE(v56);
      }

      else
      {
        v18 = v55;
      }

      v19 = v18 + v16;
      if (v18 + v16 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v19 <= 0x16)
      {
        v58 = 0;
        v59 = 0;
        v57 = 0;
        v21 = &v57;
        HIBYTE(v59) = v18 + v16;
        if (!v16)
        {
          goto LABEL_36;
        }

LABEL_32:
        v22 = *v7;
        if (v15 >= 0)
        {
          v23 = this + 120;
        }

        else
        {
          v23 = *v7;
        }

        memmove(v21, v23, v16);
        goto LABEL_36;
      }

      if ((v19 | 7) == 0x17)
      {
        v20 = 25;
      }

      else
      {
        v20 = (v19 | 7) + 1;
      }

      v21 = operator new(v20);
      v58 = v18 + v16;
      v59 = v20 | 0x8000000000000000;
      v57 = v21;
      if (v16)
      {
        goto LABEL_32;
      }

LABEL_36:
      v24 = v21 + v16;
      if (v18)
      {
        if (v17 >= 0)
        {
          v25 = &__dst;
        }

        else
        {
          v25 = __dst;
        }

        memmove(v24, v25, v18);
      }

      v24[v18] = 0;
      v26 = SHIBYTE(v59);
      v27 = v57;
      if (v59 >= 0)
      {
        v28 = &v57;
      }

      else
      {
        v28 = v57;
      }

      if (remove(v28, v11))
      {
        unlink(v28);
      }

      if (v26 < 0)
      {
        operator delete(v27);
        if ((v17 & 0x80000000) == 0)
        {
          goto LABEL_48;
        }
      }

      else if ((v17 & 0x80000000) == 0)
      {
        goto LABEL_48;
      }

      operator delete(__dst);
LABEL_48:
      v29 = *(this + 50);
      *&v30 = 0xAAAAAAAAAAAAAAAALL;
      *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *__str = v30;
      v61 = v30;
      snprintf(__str, 0x20uLL, "0x%08X%s", v29, ".meta");
      v31 = strlen(__str);
      if (v31 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_100;
      }

      v33 = v31;
      if (v31 >= 0x17)
      {
        if ((v31 | 7) == 0x17)
        {
          v35 = 25;
        }

        else
        {
          v35 = (v31 | 7) + 1;
        }

        v34 = operator new(v35);
        v55 = v33;
        v56 = v35 | 0x8000000000000000;
        __dst = v34;
LABEL_56:
        memcpy(v34, __str, v33);
        goto LABEL_57;
      }

      HIBYTE(v56) = v31;
      v34 = &__dst;
      if (v31)
      {
        goto LABEL_56;
      }

LABEL_57:
      *(v34 + v33) = 0;
      v36 = *(this + 143);
      if (v36 >= 0)
      {
        v37 = *(this + 143);
      }

      else
      {
        v37 = *(this + 16);
      }

      v38 = SHIBYTE(v56);
      if (v56 >= 0)
      {
        v39 = HIBYTE(v56);
      }

      else
      {
        v39 = v55;
      }

      v40 = v39 + v37;
      if (v39 + v37 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v40 <= 0x16)
      {
        v58 = 0;
        v59 = 0;
        v57 = 0;
        v42 = &v57;
        HIBYTE(v59) = v39 + v37;
        if (!v37)
        {
          goto LABEL_75;
        }

LABEL_71:
        v43 = *v7;
        if (v36 >= 0)
        {
          v44 = this + 120;
        }

        else
        {
          v44 = *v7;
        }

        memmove(v42, v44, v37);
        goto LABEL_75;
      }

      if ((v40 | 7) == 0x17)
      {
        v41 = 25;
      }

      else
      {
        v41 = (v40 | 7) + 1;
      }

      v42 = operator new(v41);
      v58 = v39 + v37;
      v59 = v41 | 0x8000000000000000;
      v57 = v42;
      if (v37)
      {
        goto LABEL_71;
      }

LABEL_75:
      v45 = v42 + v37;
      if (v39)
      {
        if (v38 >= 0)
        {
          v46 = &__dst;
        }

        else
        {
          v46 = __dst;
        }

        memmove(v45, v46, v39);
      }

      v45[v39] = 0;
      v47 = SHIBYTE(v59);
      v48 = v57;
      if (v59 >= 0)
      {
        v49 = &v57;
      }

      else
      {
        v49 = v57;
      }

      if (remove(v49, v32))
      {
        unlink(v49);
      }

      if (v47 < 0)
      {
        operator delete(v48);
        if (v38 < 0)
        {
LABEL_92:
          operator delete(__dst);
          LODWORD(v3) = *(this + 50) + 1;
          *(this + 50) = v3;
          v50 = *(this + 36);
          if (!v50)
          {
            goto LABEL_95;
          }

          goto LABEL_93;
        }
      }

      else if (v38 < 0)
      {
        goto LABEL_92;
      }

      LODWORD(v3) = *(this + 50) + 1;
      *(this + 50) = v3;
      v50 = *(this + 36);
      if (!v50)
      {
        goto LABEL_95;
      }

LABEL_93:
      v6 = v4-- <= v50;
      if (v6)
      {
        goto LABEL_95;
      }
    }

    if ((v10 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v10 | 7) + 1;
    }

    p_dst = operator new(v14);
    v55 = v12;
    v56 = v14 | 0x8000000000000000;
    __dst = p_dst;
LABEL_17:
    memcpy(p_dst, __str, v12);
    goto LABEL_18;
  }

LABEL_95:
  if (a2)
  {
    v51 = *MEMORY[0x277D85DE8];

    TraceFileCollection::createNewMemoryFile_sync(this, 1);
  }

  else
  {
LABEL_99:
    v52 = *MEMORY[0x277D85DE8];
  }
}

void sub_241A176F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p)
{
  if (v13 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TraceFileCollection::archive(TraceFileCollection *this, char a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZN19TraceFileCollection7archiveEb_block_invoke;
  v4[3] = &__block_descriptor_tmp_7_0;
  v4[4] = this;
  v5 = a2;
  v6 = v4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI19TraceFileCollectionE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_82;
  block[4] = this;
  block[5] = &v6;
  v3 = this + 16;
  v2 = *(this + 2);
  if (*(v3 + 1))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }
}

void TraceFileCollection::archiveMemoryFile_sync(dispatch_group_t *this)
{
  v50 = *MEMORY[0x277D85DE8];
  dispatch_group_enter(this[34]);
  v2 = *(this + 51);
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__str = v3;
  *&__str[16] = v3;
  snprintf(__str, 0x20uLL, "0x%08X%s", v2, ".meta");
  v4 = strlen(__str);
  if (v4 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    p_dst = operator new(v7);
    __dst.__r_.__value_.__l.__size_ = v5;
    __dst.__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_9;
  }

  *(&__dst.__r_.__value_.__s + 23) = v4;
  p_dst = &__dst;
  if (v4)
  {
LABEL_9:
    memcpy(p_dst, __str, v5);
  }

  p_dst->__r_.__value_.__s.__data_[v5] = 0;
  v8 = *(this + 143);
  if (v8 >= 0)
  {
    v9 = *(this + 143);
  }

  else
  {
    v9 = this[16];
  }

  v10 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __dst.__r_.__value_.__l.__size_;
  }

  v12 = size + v9;
  if (size + v9 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v12 <= 0x16)
  {
    memset(&v48, 0, sizeof(v48));
    v14 = &v48;
    *(&v48.__r_.__value_.__s + 23) = size + v9;
    if (!v9)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  if ((v12 | 7) == 0x17)
  {
    v13 = 25;
  }

  else
  {
    v13 = (v12 | 7) + 1;
  }

  v14 = operator new(v13);
  v48.__r_.__value_.__l.__size_ = size + v9;
  v48.__r_.__value_.__r.__words[2] = v13 | 0x8000000000000000;
  v48.__r_.__value_.__r.__words[0] = v14;
  if (v9)
  {
LABEL_24:
    if (v8 >= 0)
    {
      v15 = (this + 15);
    }

    else
    {
      v15 = this[15];
    }

    memmove(v14, v15, v9);
  }

LABEL_28:
  v16 = v14 + v9;
  if (size)
  {
    if (v10 >= 0)
    {
      v17 = &__dst;
    }

    else
    {
      v17 = __dst.__r_.__value_.__r.__words[0];
    }

    memmove(v16, v17, size);
  }

  v16[size] = 0;
  if ((v10 & 0x80000000) == 0)
  {
    isa = this[26][8].isa;
    if (*(this + 41) != 1)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  isa = this[26][8].isa;
  if (*(this + 41) == 1)
  {
LABEL_35:
    isa += *(this + 20) - *(this + 18);
  }

LABEL_36:
  memset(__str, 170, 24);
  Timestamp::asString((this + 28), 0, 1);
  v20 = this[26];
  v19 = this[27];
  v45 = v20;
  v46 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19[1], 1uLL, memory_order_relaxed);
  }

  v22 = *this;
  v21 = this[1];
  v43 = *this;
  if (!v21 || (v23 = std::__shared_weak_count::lock(v21), (v44 = v23) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  memset(&__dst, 170, sizeof(__dst));
  v24 = this[26];
  if (SHIBYTE(v24[3].isa) < 0)
  {
    v26 = v23;
    std::string::__init_copy_ctor_external(&__dst, v24[1].isa, v24[2].isa);
    v23 = v26;
  }

  else
  {
    v25 = *&v24[1].isa;
    __dst.__r_.__value_.__r.__words[2] = v24[3].isa;
    *&__dst.__r_.__value_.__l.__data_ = v25;
  }

  v27 = this[33];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZN19TraceFileCollection22archiveMemoryFile_syncEv_block_invoke;
  block[3] = &__block_descriptor_tmp_27_0;
  block[4] = this;
  block[5] = v22;
  v36 = v23;
  atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  v37 = v20;
  v38 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19[1], 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v39, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    v39 = __dst;
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v40, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
  }

  else
  {
    v40 = v48;
  }

  if (__str[23] < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *__str, *&__str[8]);
  }

  else
  {
    __p = *__str;
  }

  v42 = isa;
  dispatch_async(v27, block);
  v28 = this[27];
  this[26] = 0;
  this[27] = 0;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_59:
      if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_65;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_59;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_60:
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

LABEL_66:
    operator delete(v39.__r_.__value_.__l.__data_);
    v29 = v38;
    if (!v38)
    {
      goto LABEL_69;
    }

    goto LABEL_67;
  }

LABEL_65:
  operator delete(v40.__r_.__value_.__l.__data_);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_66;
  }

LABEL_61:
  v29 = v38;
  if (!v38)
  {
    goto LABEL_69;
  }

LABEL_67:
  if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

LABEL_69:
  v30 = v36;
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_72:
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

LABEL_73:
  v31 = v44;
  if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  v32 = v46;
  if (!v46 || atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((__str[23] & 0x80000000) == 0)
    {
      goto LABEL_79;
    }

LABEL_84:
    operator delete(*__str);
    if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_85;
  }

  (v32->__on_zero_shared)(v32);
  std::__shared_weak_count::__release_weak(v32);
  if (__str[23] < 0)
  {
    goto LABEL_84;
  }

LABEL_79:
  if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_80:
    v33 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_85:
  operator delete(v48.__r_.__value_.__l.__data_);
  v34 = *MEMORY[0x277D85DE8];
}

void sub_241A17DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, char a39)
{
  if (a32 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
LABEL_3:
      std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](v39 + 56);
      std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](v39 + 40);
      if ((*(v40 - 153) & 0x80000000) == 0)
      {
LABEL_8:
        std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](&a37);
        std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](&a39);
        if (*(v40 - 105) < 0)
        {
          operator delete(*(v40 - 128));
        }

        if (*(v40 - 129) < 0)
        {
          operator delete(*(v40 - 152));
        }

        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(*(v40 - 176));
      goto LABEL_8;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a21);
  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](v39 + 56);
  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](v39 + 40);
  if ((*(v40 - 153) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t TraceFileCollection::createNewMemoryFile_sync(TraceFileCollection *this, int a2)
{
  v42 = *MEMORY[0x277D85DE8];
  if (*(this + 42))
  {
    v3 = atomic_load(this + 43);
    if (v3 >= *(this + 42))
    {
      result = 0;
      v31 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  if (a2)
  {
    ++*(this + 51);
  }

  atomic_fetch_add(this + 43, 1u);
  v4 = atomic_load(this + 43);
  if (v4 > *(this + 44))
  {
    v5 = atomic_load(this + 43);
    *(this + 44) = v5;
  }

  v6 = *(this + 51);
  v7 = this + 96;
  if (*(this + 119) < 0)
  {
    v7 = *v7;
  }

  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__str = v8;
  v41 = v8;
  snprintf(__str, 0x20uLL, "0x%08X%s", v6, v7);
  v9 = strlen(__str);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
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

    p_dst = operator new(v12);
    v35 = v10;
    v36 = v12 | 0x8000000000000000;
    __dst = p_dst;
    goto LABEL_17;
  }

  HIBYTE(v36) = v9;
  p_dst = &__dst;
  if (v9)
  {
LABEL_17:
    memcpy(p_dst, __str, v10);
  }

  *(p_dst + v10) = 0;
  v13 = *(this + 143);
  if (v13 >= 0)
  {
    v14 = *(this + 143);
  }

  else
  {
    v14 = *(this + 16);
  }

  v15 = SHIBYTE(v36);
  if (v36 >= 0)
  {
    v16 = HIBYTE(v36);
  }

  else
  {
    v16 = v35;
  }

  v17 = v16 + v14;
  if (v16 + v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v17 <= 0x16)
  {
    v38 = 0;
    __p = 0uLL;
    p_p = &__p;
    HIBYTE(v38) = v16 + v14;
    if (!v14)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  if ((v17 | 7) == 0x17)
  {
    v18 = 25;
  }

  else
  {
    v18 = (v17 | 7) + 1;
  }

  p_p = operator new(v18);
  *(&__p + 1) = v16 + v14;
  v38 = v18 | 0x8000000000000000;
  *&__p = p_p;
  if (v14)
  {
LABEL_32:
    if (v13 >= 0)
    {
      v20 = this + 120;
    }

    else
    {
      v20 = *(this + 15);
    }

    memmove(p_p, v20, v14);
  }

LABEL_36:
  v21 = &p_p[v14];
  if (v16)
  {
    if (v15 >= 0)
    {
      v22 = &__dst;
    }

    else
    {
      v22 = __dst;
    }

    memmove(v21, v22, v16);
  }

  v21[v16] = 0;
  v23 = *(this + 38);
  v24 = *(this + 32);
  v32 = *(this + 31);
  v33 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  TraceFile::create(&__p, v23, 2, &v32, &v39);
  v25 = v39;
  v39 = 0uLL;
  v26 = *(this + 27);
  *(this + 13) = v25;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = *(&v39 + 1);
  if (*(&v39 + 1) && !atomic_fetch_add((*(&v39 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
    v28 = v33;
    if (!v33)
    {
LABEL_50:
      if ((SHIBYTE(v38) & 0x80000000) == 0)
      {
        goto LABEL_51;
      }

LABEL_59:
      operator delete(__p);
      if ((SHIBYTE(v36) & 0x80000000) == 0)
      {
        goto LABEL_52;
      }

LABEL_60:
      operator delete(__dst);
      goto LABEL_52;
    }
  }

  else
  {
    v28 = v33;
    if (!v33)
    {
      goto LABEL_50;
    }
  }

  if (atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_50;
  }

  (v28->__on_zero_shared)(v28);
  std::__shared_weak_count::__release_weak(v28);
  if (SHIBYTE(v38) < 0)
  {
    goto LABEL_59;
  }

LABEL_51:
  if (SHIBYTE(v36) < 0)
  {
    goto LABEL_60;
  }

LABEL_52:
  Timestamp::Timestamp(__str);
  if (this + 224 != __str)
  {
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<Timestamp::TimeDomain,timeval>,std::__tree_node<std::__value_type<Timestamp::TimeDomain,timeval>,void *> *,long>>(this + 28, *__str, &__str[8]);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(__str, *&__str[8]);
  result = 1;
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_241A182C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](&a11);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (v21 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

void TraceFile::create(__int128 *a1@<X0>, size_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x60uLL);
  v11 = v10;
  v12 = *a4;
  v13 = a4[1];
  v15[0] = v12;
  v15[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  TraceFile::TraceFile(v10, a1, a2, a3, v15);
  *a5 = v11;
  v15[2] = v11;
  v14 = operator new(0x20uLL);
  *v14 = &unk_2853A3558;
  v14[1] = 0;
  v14[2] = 0;
  v14[3] = v11;
  a5[1] = v14;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);

    std::__shared_weak_count::__release_weak(v13);
  }
}

void sub_241A18418(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  std::unique_ptr<TraceFile>::~unique_ptr[abi:ne200100](va1);
  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_241A18434(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](va);
  operator delete(v2);
  _Unwind_Resume(a1);
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
  _os_log_error_impl(&dword_241A16000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to get current time. Error: %s\n", buf, 0xCu);
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

void std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<Timestamp::TimeDomain,timeval>,std::__tree_node<std::__value_type<Timestamp::TimeDomain,timeval>,void *> *,long>>(void **a1, void *a2, void *a3)
{
  if (!a1[2])
  {
    goto LABEL_17;
  }

  v6 = *a1;
  v8 = a1 + 1;
  v7 = a1[1];
  *a1 = a1 + 1;
  v7[2] = 0;
  a1[2] = 0;
  a1[1] = 0;
  v9 = v6[1] ? v6[1] : v6;
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9[2];
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v33 = v10[1];
        if (!v33)
        {
          break;
        }

        do
        {
          v10 = v33;
          v33 = *v33;
        }

        while (v33);
      }
    }

    else
    {
      for (v10[1] = 0; v11; v11 = v10[1])
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  if (a2 != a3)
  {
    v24 = a2;
    while (1)
    {
      v12 = v10;
      v25 = *(v24 + 8);
      *(v9 + 8) = v25;
      *(v9 + 5) = *(v24 + 5);
      v26 = *v8;
      v27 = a1 + 1;
      v28 = a1 + 1;
      if (*v8)
      {
        break;
      }

LABEL_38:
      *v9 = 0;
      v9[1] = 0;
      v9[2] = v27;
      *v28 = v9;
      v29 = **a1;
      if (v29)
      {
        goto LABEL_39;
      }

LABEL_40:
      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v9);
      a1[2] = (a1[2] + 1);
      if (v10)
      {
        v10 = v10[2];
        if (v10)
        {
          v31 = *v10;
          if (*v10 == v12)
          {
            *v10 = 0;
            while (1)
            {
              v32 = v10[1];
              if (!v32)
              {
                break;
              }

              do
              {
                v10 = v32;
                v32 = *v32;
              }

              while (v32);
            }
          }

          else
          {
            for (v10[1] = 0; v31; v31 = v10[1])
            {
              do
              {
                v10 = v31;
                v31 = *v31;
              }

              while (v31);
            }
          }
        }
      }

      else
      {
        v10 = 0;
      }

      v30 = v24[1];
      if (v30)
      {
        do
        {
          a2 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          a2 = v24[2];
          v23 = *a2 == v24;
          v24 = a2;
        }

        while (!v23);
      }

      if (v12)
      {
        v24 = a2;
        v9 = v12;
        if (a2 != a3)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    do
    {
      while (1)
      {
        v27 = v26;
        if (v25 >= *(v26 + 8))
        {
          break;
        }

        v26 = *v26;
        v28 = v27;
        if (!*v27)
        {
          goto LABEL_38;
        }
      }

      v26 = v26[1];
    }

    while (v26);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v27;
    v27[1] = v9;
    v29 = **a1;
    if (!v29)
    {
      goto LABEL_40;
    }

LABEL_39:
    *a1 = v29;
    goto LABEL_40;
  }

  v12 = v9;
LABEL_13:
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(a1, v12);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(a1, v10);
  }

LABEL_17:
  if (a2 != a3)
  {
    v14 = a1 + 1;
    while (1)
    {
      v15 = operator new(0x38uLL);
      v16 = a2[6];
      v15[2] = *(a2 + 2);
      *(v15 + 6) = v16;
      v17 = *v14;
      v18 = a1 + 1;
      v19 = a1 + 1;
      if (*v14)
      {
        break;
      }

LABEL_25:
      *v15 = 0;
      *(v15 + 1) = 0;
      *(v15 + 2) = v18;
      *v19 = v15;
      v20 = **a1;
      if (v20)
      {
        goto LABEL_26;
      }

LABEL_27:
      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v15);
      a1[2] = (a1[2] + 1);
      v21 = a2[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = a2[2];
          v23 = *v22 == a2;
          a2 = v22;
        }

        while (!v23);
      }

      a2 = v22;
      if (v22 == a3)
      {
        return;
      }
    }

    do
    {
      while (1)
      {
        v18 = v17;
        if (*(v15 + 8) >= *(v17 + 8))
        {
          break;
        }

        v17 = *v17;
        v19 = v18;
        if (!*v18)
        {
          goto LABEL_25;
        }
      }

      v17 = v17[1];
    }

    while (v17);
    *v15 = 0;
    *(v15 + 1) = 0;
    *(v15 + 2) = v18;
    v18[1] = v15;
    v20 = **a1;
    if (!v20)
    {
      goto LABEL_27;
    }

LABEL_26:
    *a1 = v20;
    goto LABEL_27;
  }
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        v20 = a2[2];
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v2[1];
        v11 = *v10;
        v2[1] = *v10;
        v12 = v2;
        if (v11)
        {
          v11[2] = v2;
          v3 = v2[2];
          v12 = *v3;
        }

        v10[2] = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        v2[2] = v10;
        v3 = v10[2];
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

void std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = this;
    v6 = __s;
    if ((__sz | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__sz | 7) + 1;
    }

    this = operator new(v7);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = this;
    __s = v6;
    v4 = __sz + 1;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
    v4 = __sz + 1;
  }

  memmove(this, __s, v4);
}

uint64_t TraceFile::TraceFile(uint64_t a1, __int128 *a2, size_t size, int a4, void *a5)
{
  v7 = size;
  v28 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v9;
  }

  *(a1 + 40) = *a5;
  *(a1 + 32) = 0;
  v10 = a5[1];
  *(a1 + 48) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = v7;
  *(a1 + 72) = a4;
  *(a1 + 88) = 0;
  if ((v7 & (v7 - 1)) != 0)
  {
    v18 = *(GetOsLogContext() + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_241A16000, v18, OS_LOG_TYPE_FAULT, "Capacity must be the power of 2!", buf, 2u);
    }

    v19 = *(GetOsLogContext() + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      *&buf[4] = "ABM ASSERT";
      *&buf[12] = 2080;
      *&buf[14] = "(!( fCapacity &(fCapacity - 1)))";
      v24 = 2080;
      v25 = "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/BasebandServices/Trace/TraceFile.cpp";
      v26 = 1024;
      v27 = 36;
      _os_log_fault_impl(&dword_241A16000, v19, OS_LOG_TYPE_FAULT, "%s (%s): File: %s Line: %d", buf, 0x26u);
    }

    __break(1u);
  }

  if (v7 >= 0x200000)
  {
    v11 = pthread_mutex_lock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
    if (!xmmword_27E552210)
    {
      ctu::XpcJetsamAssertion::create_default_global(buf, v11);
      v12 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      v13 = *(&xmmword_27E552210 + 1);
      xmmword_27E552210 = v12;
      if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      v14 = *&buf[8];
      if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }
    }

    v21 = *(&xmmword_27E552210 + 1);
    if (*(&xmmword_27E552210 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_27E552210 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
    __p = operator new(0x20uLL);
    strcpy(__p, "Creating large trace file");
    ctu::XpcJetsamAssertion::createActivity();
    v15 = *(a1 + 88);
    *(a1 + 80) = v22;
    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    operator delete(__p);
    if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
    }

    v7 = *(a1 + 68);
  }

  *(a1 + 32) = malloc_type_zone_malloc(**(a1 + 40), v7, 0xCF026B59uLL);
  v16 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_241A1900C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  pthread_mutex_unlock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](v19);
  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](v18);
  if (*(v16 + 31) < 0)
  {
    operator delete(*v17);
  }

  _Unwind_Resume(a1);
}

uint64_t Timestamp::asString(uint64_t a1, int a2, char a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v32 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31[7] = v6;
  v31[8] = v6;
  v31[5] = v6;
  v31[6] = v6;
  v31[3] = v6;
  v31[4] = v6;
  v31[1] = v6;
  v31[2] = v6;
  v30 = v6;
  v31[0] = v6;
  *__p = v6;
  v29 = v6;
  v27[1] = v6;
  v27[2] = v6;
  v26 = v6;
  v27[0] = v6;
  v25 = v6;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v25);
  v9 = *(a1 + 8);
  v8 = a1 + 8;
  v7 = v9;
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = v8;
  do
  {
    if (*(v7 + 32) >= a2)
    {
      v10 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 32) < a2));
  }

  while (v7);
  if (v10 != v8 && *(v10 + 32) <= a2)
  {
    v12 = *(v10 + 40);
    v11 = *(v10 + 48);
    if ((a3 & 0x11) != 0)
    {
LABEL_9:
      v23.tm_zone = 0xAAAAAAAAAAAAAAAALL;
      v24 = v12;
      *&v13 = 0xAAAAAAAAAAAAAAAALL;
      *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v23.tm_mon = v13;
      *&v23.tm_isdst = v13;
      *&v23.tm_sec = v13;
      localtime_r(&v24, &v23);
      v36 = 0u;
      v37 = 0u;
      *__s = 0u;
      v35 = 0u;
      if ((a3 & 0x10) != 0)
      {
        v14 = "%Y.%m.%d_%H-%M-%S%z";
      }

      else
      {
        v14 = "%Y-%m-%d-%H-%M-%S";
      }

      strftime(__s, 0x40uLL, v14, &v23);
      v15 = strlen(__s);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, __s, v15);
      if ((a3 & 8) != 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "-", 1);
        v16 = v26;
        v17 = &v27[-1] + *(v26 - 24);
        if (*(v17 + 36) == -1)
        {
          std::ios_base::getloc((&v27[-1] + *(v26 - 24)));
          v18 = std::locale::use_facet(&v33, MEMORY[0x277D82680]);
          (v18->__vftable[2].~facet_0)(v18, 32);
          std::locale::~locale(&v33);
          v16 = v26;
        }

        *(v17 + 36) = 48;
        *(v27 + *(v16 - 24) + 8) = 3;
        MEMORY[0x245CF5950](&v26, (v11 / 1000));
      }

      goto LABEL_22;
    }
  }

  else
  {
LABEL_8:
    v11 = 0;
    v12 = 0;
    if ((a3 & 0x11) != 0)
    {
      goto LABEL_9;
    }
  }

  MEMORY[0x245CF5970](&v26, v12);
  if ((a3 & 4) != 0)
  {
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, ".", 1);
  }

  else
  {
    if ((a3 & 8) == 0)
    {
      goto LABEL_22;
    }

    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, ".", 1);
    v11 = (v11 / 1000);
  }

  MEMORY[0x245CF5950](v19, v11);
LABEL_22:
  std::stringbuf::str();
  *&v25 = *MEMORY[0x277D82818];
  v20 = *(MEMORY[0x277D82818] + 72);
  *(&v25 + *(v25 - 24)) = *(MEMORY[0x277D82818] + 64);
  *&v26 = v20;
  *(&v26 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v26 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v27);
  std::iostream::~basic_iostream();
  result = MEMORY[0x245CF5AE0](v31);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_241A19488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17, MEMORY[0x277D82818]);
  MEMORY[0x245CF5AE0](&a33);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x277D82890] + 104;
  *(a1 + 128) = MEMORY[0x277D82890] + 104;
  v3 = a1 + 16;
  v4 = MEMORY[0x277D82890] + 64;
  *(a1 + 16) = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  *(a1 + 8) = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, (a1 + 24));
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  *(a1 + 16) = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  *(a1 + 128) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  MEMORY[0x245CF5A90](a1 + 32);
  *(a1 + 88) = 0;
  v13 = a1 + 88;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 24;
  *(a1 + 40) = a1 + 88;
  *(a1 + 48) = a1 + 88;
  *(a1 + 56) = a1 + 88;
  *(a1 + 112) = a1 + 88;
  std::string::resize((a1 + 88), 0x16uLL, 0);
  v14 = *(a1 + 111);
  if (v14 < 0)
  {
    v14 = *(a1 + 96);
  }

  *(a1 + 64) = v13;
  *(a1 + 72) = v13;
  *(a1 + 80) = v13 + v14;
  return a1;
}

void sub_241A197E0(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*v3);
  }

  *(v1 + 24) = v4;
  std::locale::~locale((v1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x245CF5AE0](v2);
  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v14[0] = 0xAAAAAAAAAAAAAAAALL;
  v14[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x245CF5910](v14, a1);
  if (LOBYTE(v14[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      v10 = (a1 + *(*a1 - 24));
      std::ios_base::getloc(v10);
      v11 = std::locale::use_facet(&v15, MEMORY[0x277D82680]);
      v9 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      v6 = v10;
      v10[1].__fmtflags_ = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v12, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x245CF5920](v14);
  return a1;
}

void sub_241A1997C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x245CF5920](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x241A1995CLL);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      memset(__b, 170, sizeof(__b));
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        if ((v12 | 7) == 0x17)
        {
          v14 = 25;
        }

        else
        {
          v14 = (v12 | 7) + 1;
        }

        v13 = operator new(v14);
        __b[1] = v12;
        __b[2] = (v14 | 0x8000000000000000);
        __b[0] = v13;
      }

      else
      {
        HIBYTE(__b[2]) = v12;
        v13 = __b;
      }

      memset(v13, __c, v12);
      *(v13 + v12) = 0;
      if (SHIBYTE(__b[2]) >= 0)
      {
        v15 = __b;
      }

      else
      {
        v15 = __b[0];
      }

      v16 = (*(*v6 + 96))(v6, v15, v12);
      if (SHIBYTE(__b[2]) < 0)
      {
        v17 = v16;
        operator delete(__b[0]);
        if (v17 != v12)
        {
          return 0;
        }
      }

      else if (v16 != v12)
      {
        return 0;
      }
    }

    v18 = a4 - a3;
    if (v18 < 1 || (*(*v6 + 96))(v6, a3, v18) == v18)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_241A19BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c47_ZTSNSt3__110shared_ptrI19TraceFileCollectionEE56c36_ZTSNSt3__110shared_ptrI9TraceFileEE72c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE96c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE120c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  a1[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
  a1[2].__r_.__value_.__r.__words[0] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 64);
  a1[2].__r_.__value_.__l.__size_ = *(a2 + 56);
  a1[2].__r_.__value_.__r.__words[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 3, *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v6 = *(a2 + 72);
    a1[3].__r_.__value_.__r.__words[2] = *(a2 + 88);
    *&a1[3].__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 4, *(a2 + 96), *(a2 + 104));
  }

  else
  {
    v7 = *(a2 + 96);
    a1[4].__r_.__value_.__r.__words[2] = *(a2 + 112);
    *&a1[4].__r_.__value_.__l.__data_ = v7;
  }

  if (*(a2 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 5, *(a2 + 120), *(a2 + 128));
  }

  else
  {
    v8 = *(a2 + 120);
    a1[5].__r_.__value_.__r.__words[2] = *(a2 + 136);
    *&a1[5].__r_.__value_.__l.__data_ = v8;
  }
}

void sub_241A19CC0(_Unwind_Exception *a1)
{
  if (*(v2 + 119) < 0)
  {
    operator delete(*(v2 + 96));
    if ((*(v2 + 95) & 0x80000000) == 0)
    {
LABEL_3:
      std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](v3);
      std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](v1);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v2 + 95) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v2 + 72));
  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](v3);
  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void sub_241A19D2C(_Unwind_Exception *a1)
{
  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](v2);
  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t ___ZN19TraceFileCollection22archiveMemoryFile_syncEv_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  if (*(v2 + 41) == 1)
  {
    if ((TraceFile::writeToFile(v3, (v2 + 72)) & 1) == 0)
    {
      v4 = *(v2 + 32);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = (a1 + 72);
        if (*(a1 + 95) < 0)
        {
          v5 = *v5;
        }

        *buf = 136315138;
        *&buf[4] = v5;
        _os_log_error_impl(&dword_241A16000, v4, OS_LOG_TYPE_ERROR, "Error on writing a file: %s", buf, 0xCu);
      }
    }
  }

  else
  {
    memset(buf, 0, 24);
    TraceFile::writeToFile(v3, buf);
  }

  memset(&buf[8], 170, 0x230uLL);
  v6 = (a1 + 96);
  if (*(a1 + 119) < 0)
  {
    v7 = *v6;
  }

  *&buf[464] = 0;
  v8 = MEMORY[0x277D82860] + 64;
  *&buf[416] = MEMORY[0x277D82860] + 64;
  v9 = MEMORY[0x277D82810];
  v10 = *(MEMORY[0x277D82810] + 16);
  *buf = *(MEMORY[0x277D82810] + 8);
  *&buf[*(*buf - 24)] = v10;
  v11 = &buf[*(*buf - 24)];
  std::ios_base::init(v11, &buf[8]);
  v12 = MEMORY[0x277D82860] + 24;
  v11[1].__vftable = 0;
  v11[1].__fmtflags_ = -1;
  *buf = v12;
  *&buf[416] = v8;
  MEMORY[0x245CF5850](&buf[8]);
  if (!std::filebuf::open())
  {
    std::ios_base::clear(&buf[*(*buf - 24)], *&buf[*(*buf - 24) + 32] | 4);
  }

  if (*&buf[*(*buf - 24) + 32])
  {
    v13 = *(v2 + 32);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 119) < 0)
      {
        v6 = *v6;
      }

      v23 = 136315138;
      v24 = v6;
      _os_log_error_impl(&dword_241A16000, v13, OS_LOG_TYPE_ERROR, "Failed to open meta data file: %s", &v23, 0xCu);
    }
  }

  else
  {
    v14 = *(a1 + 143);
    if (v14 >= 0)
    {
      v15 = a1 + 120;
    }

    else
    {
      v15 = *(a1 + 120);
    }

    if (v14 >= 0)
    {
      v16 = *(a1 + 143);
    }

    else
    {
      v16 = *(a1 + 128);
    }

    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, v15, v16);
    std::ios_base::getloc((v17 + *(*v17 - 24)));
    v18 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
    v19 = MEMORY[0x245CF5960](v17, *(a1 + 144));
    std::ios_base::getloc((v19 + *(*v19 - 24)));
    v20 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v20->__vftable[2].~facet_0)(v20, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
    std::ostream::flush();
    if (!std::filebuf::close())
    {
      std::ios_base::clear(&buf[*(*buf - 24)], *&buf[*(*buf - 24) + 32] | 4);
    }
  }

  atomic_fetch_add((v2 + 172), 0xFFFFFFFF);
  dispatch_group_leave(*(v2 + 272));
  *buf = *v9;
  *&buf[*(*buf - 24)] = v9[3];
  MEMORY[0x245CF5860](&buf[8]);
  std::ostream::~ostream();
  result = MEMORY[0x245CF5AE0](&buf[416]);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_241A1A25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  std::locale::~locale(&a9);
  std::ofstream::~ofstream(&a11);
  _Unwind_Resume(a1);
}

void sub_241A1A27C(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x245CF5AE0](v1);
  _Unwind_Resume(a1);
}

void sub_241A1A2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ofstream::~ofstream(va);
  _Unwind_Resume(a1);
}

uint64_t TraceFile::writeToFile(uint64_t a1, char **a2)
{
  v4 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    v5 = open(*v4, 1537, 420);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v5 = open(v4, 1537, 420);
  if (v5 < 0)
  {
    return 0;
  }

LABEL_3:
  v6 = v5;
  v7 = *(a1 + 60);
  v8 = *(a1 + 68);
  v10 = *a2;
  v9 = a2[1];
  if (*a2 != v9)
  {
    v11 = (v9 - v10);
    while (v11)
    {
      v12 = write(v6, v10, v11);
      v11 -= v12;
      v10 += v12;
      if (v12 < 0)
      {
LABEL_21:
        v20 = 0;
        goto LABEL_23;
      }
    }
  }

  v13 = (v8 - 1) & v7;
  v14 = v8 - v13;
  v15 = *(a1 + 64);
  v16 = (*(a1 + 32) + v13);
  if (v8 - v13 >= v15)
  {
    while (v15)
    {
      v19 = write(v6, v16, v15);
      v15 -= v19;
      v16 += v19;
      if (v19 < 0)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v17 = v8 - v13;
    while (v17)
    {
      v18 = write(v6, v16, v17);
      v17 -= v18;
      v16 += v18;
      if (v18 < 0)
      {
        goto LABEL_21;
      }
    }

    v21 = *(a1 + 32);
    v22 = (*(a1 + 64) - v14);
    while (v22)
    {
      v23 = write(v6, v21, v22);
      v22 -= v23;
      v21 += v23;
      if (v23 < 0)
      {
        goto LABEL_21;
      }
    }
  }

  v20 = 1;
  *a1 = 1;
  fsync(v6);
LABEL_23:
  close(v6);
  malloc_zone_free(**(a1 + 40), *(a1 + 32));
  *(a1 + 32) = 0;
  return v20;
}

void __destroy_helper_block_e8_40c47_ZTSNSt3__110shared_ptrI19TraceFileCollectionEE56c36_ZTSNSt3__110shared_ptrI9TraceFileEE72c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE96c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE120c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 95) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(a1 + 119) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 96));
  if ((*(a1 + 95) & 0x80000000) == 0)
  {
LABEL_4:
    v2 = *(a1 + 64);
    if (!v2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(*(a1 + 72));
  v2 = *(a1 + 64);
  if (!v2)
  {
    goto LABEL_10;
  }

LABEL_9:
  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 48);
    if (!v3)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_10:
  v3 = *(a1 + 48);
  if (!v3)
  {
    return;
  }

LABEL_11:
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void TraceFile::~TraceFile(TraceFile *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    malloc_zone_free(**(this + 5), v2);
    *(this + 4) = 0;
  }

  v3 = *(this + 11);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(this + 6);
  if (!v4 || atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_11:
    operator delete(*(this + 1));
    return;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  if (*(this + 31) < 0)
  {
    goto LABEL_11;
  }
}

void std::__shared_ptr_pointer<TraceFile *,std::shared_ptr<TraceFile>::__shared_ptr_default_delete<TraceFile,TraceFile>,std::allocator<TraceFile>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    TraceFile::~TraceFile(v1);

    operator delete(v2);
  }
}

void support::misc::safe_timer::create(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, dispatch_qos_class_t a4@<W3>, support::misc::safe_timer **a5@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24 = v10;
  v25 = v10;
  v23[1] = v10;
  v23[2] = v10;
  v23[0] = v10;
  v21 = operator new(0x30uLL);
  v22 = xmmword_241A64710;
  strcpy(v21, "com.apple.telephony.basebandservices.support");
  v20 = 10;
  strcpy(__p, "safe-timer");
  support::log::client::client(v23, &v21, __p);
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SHIBYTE(v22) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v21);
LABEL_3:
  *a5 = 0;
  v11 = operator new(0xD0uLL);
  *v17 = *a1;
  v18 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v12 = *(a3 + 24);
  if (v12)
  {
    if (v12 == a3)
    {
      v27 = v26;
      (*(*v12 + 24))(v12, v26);
    }

    else
    {
      v27 = *(a3 + 24);
      *(a3 + 24) = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  support::misc::safe_timer::safe_timer(v11, v17, a2, 0, v26, a4);
  if (v27 == v26)
  {
    (*(*v27 + 32))(v27);
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v27)
    {
      (*(*v27 + 40))(v27);
    }

    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
LABEL_14:
      if (support::misc::safe_timer::init(v11))
      {
        goto LABEL_15;
      }

      goto LABEL_21;
    }
  }

  operator delete(v17[0]);
  if (support::misc::safe_timer::init(v11))
  {
LABEL_15:
    *a5 = v11;
    *&v23[0] = &unk_2853A1D78;
    v13 = v25;
    if (!v25)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_21:
  v15 = *v24;
  if (os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
  {
    *v16 = 0;
    _os_log_error_impl(&dword_241A16000, v15, OS_LOG_TYPE_ERROR, "error: failed to init safe_timer object", v16, 2u);
  }

  (*(*v11 + 8))(v11);
  *&v23[0] = &unk_2853A1D78;
  v13 = v25;
  if (v25)
  {
LABEL_16:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
}

void sub_241A1AAC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

uint64_t std::function<void ()(void)>::~function(uint64_t a1)
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

BOOL support::misc::safe_timer::init(support::misc::safe_timer *this)
{
  if (!*(this + 17))
  {
    v3 = **(this + 13);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v9 = 0;
    v4 = "error: invalid timeout value";
    v5 = &v9;
    goto LABEL_15;
  }

  if (!*(this + 22))
  {
    v3 = **(this + 13);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v8 = 0;
    v4 = "error: invalid timeout callback";
    v5 = &v8;
    goto LABEL_15;
  }

  v1 = *(this + 23);
  if (!v1)
  {
    v3 = **(this + 13);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v7 = 0;
    v4 = "error: failed to create dispatch queue";
    v5 = &v7;
LABEL_15:
    _os_log_error_impl(&dword_241A16000, v3, OS_LOG_TYPE_ERROR, v4, v5, 2u);
    return 0;
  }

  if (*(this + 24))
  {
    dispatch_queue_set_specific(*(this + 23), "CurrentQueue", v1, 0);
    return 1;
  }

  v3 = **(this + 13);
  result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v6 = 0;
    v4 = "error: failed to create dispatch safe_timer object";
    v5 = &v6;
    goto LABEL_15;
  }

  return result;
}

void support::log::client::~client(support::log::client *this)
{
  *this = &unk_2853A1D78;
  v1 = *(this + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

{
  *this = &unk_2853A1D78;
  v1 = *(this + 8);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  operator delete(this);
}

{
  *this = &unk_2853A1D78;
  v1 = *(this + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

void support::misc::safe_timer::create(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, dispatch_qos_class_t a5@<W4>, support::misc::safe_timer **a6@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26 = v12;
  v27 = v12;
  v25[1] = v12;
  v25[2] = v12;
  v25[0] = v12;
  v23 = operator new(0x30uLL);
  v24 = xmmword_241A64710;
  strcpy(v23, "com.apple.telephony.basebandservices.support");
  v22 = 10;
  strcpy(__p, "safe-timer");
  support::log::client::client(v25, &v23, __p);
  if (v22 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SHIBYTE(v24) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v23);
LABEL_3:
  *a6 = 0;
  v13 = operator new(0xD0uLL);
  *v19 = *a1;
  v20 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v14 = *(a4 + 24);
  if (v14)
  {
    if (v14 == a4)
    {
      v29 = v28;
      (*(*v14 + 24))(v14, v28);
    }

    else
    {
      v29 = *(a4 + 24);
      *(a4 + 24) = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  support::misc::safe_timer::safe_timer(v13, v19, a2, a3, v28, a5);
  if (v29 == v28)
  {
    (*(*v29 + 32))(v29);
    if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v29)
    {
      (*(*v29 + 40))(v29);
    }

    if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
LABEL_14:
      if (support::misc::safe_timer::init(v13))
      {
        goto LABEL_15;
      }

      goto LABEL_21;
    }
  }

  operator delete(v19[0]);
  if (support::misc::safe_timer::init(v13))
  {
LABEL_15:
    *a6 = v13;
    *&v25[0] = &unk_2853A1D78;
    v15 = v27;
    if (!v27)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_21:
  v17 = *v26;
  if (os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
  {
    *v18 = 0;
    _os_log_error_impl(&dword_241A16000, v17, OS_LOG_TYPE_ERROR, "error: failed to init safe_timer object", v18, 2u);
  }

  (*(*v13 + 8))(v13);
  *&v25[0] = &unk_2853A1D78;
  v15 = v27;
  if (v27)
  {
LABEL_16:
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_18:
  v16 = *MEMORY[0x277D85DE8];
}

void sub_241A1B1B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t support::misc::safe_timer::safe_timer(uint64_t a1, const std::string::value_type *a2, uint64_t a3, uint64_t a4, uint64_t a5, dispatch_qos_class_t a6)
{
  *a1 = &unk_2853A1D48;
  v11 = a1 + 8;
  *(&v30.__r_.__value_.__s + 23) = 11;
  strcpy(&v30, "safe-timer.");
  v12 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v13 = v12;
  }

  v14 = std::string::append(&v30, a2, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  *(v11 + 16) = *(&v14->__r_.__value_.__l + 2);
  *v11 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  v30.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
  *&v30.__r_.__value_.__r.__words[1] = xmmword_241A64720;
  strcpy(v30.__r_.__value_.__l.__data_, "com.apple.telephony.baseband.");
  v16 = *(a1 + 31);
  if (v16 >= 0)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(a1 + 8);
  }

  if (v16 >= 0)
  {
    v18 = *(a1 + 31);
  }

  else
  {
    v18 = *(a1 + 16);
  }

  v19 = std::string::append(&v30, v17, v18);
  v20 = (a1 + 32);
  v21 = *&v19->__r_.__value_.__l.__data_;
  *(a1 + 48) = *(&v19->__r_.__value_.__l + 2);
  *(a1 + 32) = v21;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  v28 = operator new(0x30uLL);
  v29 = xmmword_241A64710;
  strcpy(v28, "com.apple.telephony.basebandservices.support");
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    __p = *v11;
  }

  support::log::client::client((a1 + 56), &v28, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v29) & 0x80000000) == 0)
    {
LABEL_19:
      *(a1 + 136) = a3;
      *(a1 + 144) = a4;
      v22 = a5 + 24;
      v23 = *(a5 + 24);
      if (v23)
      {
        goto LABEL_20;
      }

LABEL_24:
      v22 = a1 + 176;
      goto LABEL_25;
    }
  }

  else if ((SHIBYTE(v29) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  operator delete(v28);
  *(a1 + 136) = a3;
  *(a1 + 144) = a4;
  v22 = a5 + 24;
  v23 = *(a5 + 24);
  if (!v23)
  {
    goto LABEL_24;
  }

LABEL_20:
  if (v23 != a5)
  {
    *(a1 + 176) = v23;
LABEL_25:
    *v22 = 0;
    goto LABEL_27;
  }

  *(a1 + 176) = a1 + 152;
  (*(**v22 + 24))();
LABEL_27:
  if (*(a1 + 55) < 0)
  {
    v20 = *v20;
  }

  v24 = dispatch_queue_attr_make_with_qos_class(0, a6, 0);
  v25 = dispatch_queue_create(v20, v24);
  *(a1 + 184) = v25;
  *(a1 + 192) = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v25);
  *(a1 + 200) = 0;
  return a1;
}

void sub_241A1B4E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((*(v27 + 55) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((*(v27 + 55) & 0x80000000) == 0)
  {
LABEL_6:
    if (*(v27 + 31) < 0)
    {
      operator delete(*v29);
    }

    _Unwind_Resume(exception_object);
  }

  operator delete(*v28);
  goto LABEL_6;
}

void sub_241A1B580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x241A1B574);
  }

  JUMPOUT(0x241A1B578);
}

void support::misc::safe_timer::start_sync(support::misc::safe_timer *this)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = **(this + 13);
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    if (*(this + 200) != 1)
    {
      goto LABEL_3;
    }

LABEL_11:
    v9 = this;
    v10 = **(this + 13);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = (v9 + 8);
      if (*(v9 + 31) < 0)
      {
        v11 = *v11;
      }

      *buf = 136315138;
      *&buf[4] = v11;
      _os_log_error_impl(&dword_241A16000, v10, OS_LOG_TYPE_ERROR, "error: '%s' already active", buf, 0xCu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v28, "'");
    v15 = *(v9 + 1);
    v14 = v9 + 8;
    v13 = v15;
    v16 = v14[23];
    if (v16 >= 0)
    {
      v17 = v14;
    }

    else
    {
      v17 = v13;
    }

    if (v16 >= 0)
    {
      v18 = v14[23];
    }

    else
    {
      v18 = *(v14 + 1);
    }

    v19 = std::string::append(&v28, v17, v18);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(v26, "' already active");
    if ((v27 & 0x80u) == 0)
    {
      v21 = v26;
    }

    else
    {
      v21 = v26[0];
    }

    if ((v27 & 0x80u) == 0)
    {
      v22 = v27;
    }

    else
    {
      v22 = v26[1];
    }

    v23 = std::string::append(&v29, v21, v22);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v31 = v23->__r_.__value_.__r.__words[2];
    *buf = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x245CF5750](exception, buf);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *buf = 0;
  _os_log_debug_impl(&dword_241A16000, v2, OS_LOG_TYPE_DEBUG, "starting...", buf, 2u);
  if (*(this + 200) == 1)
  {
    goto LABEL_11;
  }

LABEL_3:
  dispatch_assert_queue_V2(*(this + 23));
  v3 = *(this + 24);
  v4 = dispatch_time(0, 1000000 * *(this + 17));
  v5 = *(this + 18);
  if (v5)
  {
    v6 = 1000000 * v5;
  }

  else
  {
    v6 = -1;
  }

  dispatch_source_set_timer(v3, v4, v6, 0x1388uLL);
  v7 = *(this + 24);
  if (*(this + 200))
  {
    dispatch_resume(v7);
  }

  else
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = ___ZN7support4misc10safe_timer10start_syncEv_block_invoke;
    handler[3] = &__block_descriptor_tmp;
    handler[4] = this;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_activate(*(this + 24));
  }

  *(this + 100) = 1;
  v8 = *MEMORY[0x277D85DE8];
}

void sub_241A1B844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v34 - 41) < 0)
  {
    operator delete(*(v34 - 64));
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a32 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  if ((a32 & 0x80000000) == 0)
  {
LABEL_4:
    if (a26 < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a27);
  if (a26 < 0)
  {
LABEL_5:
    operator delete(__p);
    if ((v33 & 1) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }

LABEL_11:
    __cxa_free_exception(v32);
    _Unwind_Resume(a1);
  }

LABEL_10:
  if (!v33)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

uint64_t ___ZN7support4misc10safe_timer10start_syncEv_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 200) != 1)
  {
    return result;
  }

  v2 = **(v1 + 104);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_241A16000, v2, OS_LOG_TYPE_DEBUG, "fired", v5, 2u);
    *(v1 + 201) = 1;
    if (!*(v1 + 144))
    {
LABEL_4:
      dispatch_assert_queue_V2(*(v1 + 184));
      if (*(v1 + 200) == 1)
      {
        v3 = **(v1 + 104);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_241A16000, v3, OS_LOG_TYPE_DEBUG, "stopping...", buf, 2u);
        }

        dispatch_suspend(*(v1 + 192));
        *(v1 + 200) = 2;
      }
    }
  }

  else
  {
    *(v1 + 201) = 1;
    if (!*(v1 + 144))
    {
      goto LABEL_4;
    }
  }

  v4 = *(v1 + 176);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4);
}

void support::misc::safe_timer::stop_sync(dispatch_queue_t *this)
{
  dispatch_assert_queue_V2(this[23]);
  if (*(this + 200) == 1)
  {
    isa = this[13]->isa;
    if (os_log_type_enabled(isa, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_debug_impl(&dword_241A16000, isa, OS_LOG_TYPE_DEBUG, "stopping...", v3, 2u);
    }

    dispatch_suspend(this[24]);
    *(this + 200) = 2;
  }
}

void support::misc::safe_timer::start(support::misc::safe_timer *this)
{
  v2 = *(this + 23);
  if (v2 == dispatch_get_specific("CurrentQueue"))
  {

    support::misc::safe_timer::start_sync(this);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZN7support4misc10safe_timer5startEv_block_invoke;
    block[3] = &__block_descriptor_tmp_8;
    block[4] = this;
    dispatch_sync(v2, block);
  }
}

void support::misc::safe_timer::stop(support::misc::safe_timer *this)
{
  v2 = *(this + 23);
  if (v2 == dispatch_get_specific("CurrentQueue"))
  {
    dispatch_assert_queue_V2(v2);
    if (*(this + 200) == 1)
    {
      v3 = **(this + 13);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_241A16000, v3, OS_LOG_TYPE_DEBUG, "stopping...", buf, 2u);
      }

      dispatch_suspend(*(this + 24));
      *(this + 200) = 2;
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZN7support4misc10safe_timer4stopEv_block_invoke;
    block[3] = &__block_descriptor_tmp_9;
    block[4] = this;
    dispatch_sync(v2, block);
  }
}

void ___ZN7support4misc10safe_timer4stopEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_assert_queue_V2(*(v1 + 184));
  if (*(v1 + 200) == 1)
  {
    v2 = **(v1 + 104);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_debug_impl(&dword_241A16000, v2, OS_LOG_TYPE_DEBUG, "stopping...", v3, 2u);
    }

    dispatch_suspend(*(v1 + 192));
    *(v1 + 200) = 2;
  }
}

void support::misc::safe_timer::restart(support::misc::safe_timer *this)
{
  v2 = *(this + 23);
  if (v2 == dispatch_get_specific("CurrentQueue"))
  {
    dispatch_assert_queue_V2(v2);
    if (*(this + 200) == 1)
    {
      v3 = **(this + 13);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_241A16000, v3, OS_LOG_TYPE_DEBUG, "stopping...", buf, 2u);
      }

      dispatch_suspend(*(this + 24));
      *(this + 200) = 2;
    }

    v4 = *(this + 23);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZN7support4misc10safe_timer7restartEv_block_invoke;
    block[3] = &__block_descriptor_tmp_10;
    block[4] = this;
    dispatch_async(v4, block);
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 0x40000000;
    v5[2] = ___ZN7support4misc10safe_timer7restartEv_block_invoke_2;
    v5[3] = &__block_descriptor_tmp_11;
    v5[4] = this;
    dispatch_sync(v2, v5);
  }
}

void ___ZN7support4misc10safe_timer7restartEv_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_assert_queue_V2(*(v1 + 184));
  if (*(v1 + 200) == 1)
  {
    v2 = **(v1 + 104);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_debug_impl(&dword_241A16000, v2, OS_LOG_TYPE_DEBUG, "stopping...", v3, 2u);
    }

    dispatch_suspend(*(v1 + 192));
    *(v1 + 200) = 2;
  }

  support::misc::safe_timer::start_sync(v1);
}

uint64_t support::misc::safe_timer::has_fired(support::misc::safe_timer *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(this + 23);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK7support4misc10safe_timer9has_firedEv_block_invoke;
  v4[3] = &unk_278D044C8;
  v4[4] = &v5;
  v4[5] = this;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t support::misc::safe_timer::has_started(support::misc::safe_timer *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(this + 23);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK7support4misc10safe_timer11has_startedEv_block_invoke;
  v4[3] = &unk_278D044F0;
  v4[4] = &v5;
  v4[5] = this;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void support::misc::safe_timer::~safe_timer(support::misc::safe_timer *this)
{
  *this = &unk_2853A1D48;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (*(this + 23))
  {
    support::misc::safe_timer::stop(this);
    v2 = *(this + 23);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 0x40000000;
    v7[2] = ___ZN7support4misc10safe_timerD2Ev_block_invoke;
    v7[3] = &unk_278D04518;
    v7[4] = &v8;
    v7[5] = this;
    dispatch_sync(v2, v7);
  }

  v3 = *(this + 24);
  if (v3)
  {
    if (*(v9 + 24))
    {
      dispatch_source_cancel(v3);
      if (*(v9 + 24) == 2)
      {
        dispatch_resume(*(this + 24));
      }
    }

    else
    {
      dispatch_activate(v3);
      dispatch_source_cancel(*(this + 24));
    }

    dispatch_release(*(this + 24));
  }

  v4 = *(this + 23);
  if (v4)
  {
    dispatch_release(v4);
  }

  _Block_object_dispose(&v8, 8);
  v5 = *(this + 22);
  if (v5 == (this + 152))
  {
    (*(*v5 + 32))(v5);
    *(this + 7) = &unk_2853A1D78;
    v6 = *(this + 15);
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v5)
    {
      (*(*v5 + 40))(v5);
    }

    *(this + 7) = &unk_2853A1D78;
    v6 = *(this + 15);
    if (!v6)
    {
LABEL_18:
      if ((*(this + 55) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }
  }

  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_18;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  if ((*(this + 55) & 0x80000000) == 0)
  {
LABEL_19:
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_23:
    operator delete(*(this + 1));
    return;
  }

LABEL_22:
  operator delete(*(this + 4));
  if (*(this + 31) < 0)
  {
    goto LABEL_23;
  }
}

{
  support::misc::safe_timer::~safe_timer(this);

  operator delete(v1);
}

uint64_t ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy(uint64_t a1)
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

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278D04408, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

uint64_t __cxx_global_var_init()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_241A16000);
  }

  return result;
}

_OWORD *TCP::getSupportedTCPModesLowerCase@<X0>(uint64_t *a1@<X8>)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  v17 = &v17;
  v18 = &v17;
  v19 = 0;
  v3 = operator new(0x18uLL);
  v3[4] = 0;
  *v3 = &v17;
  *(v3 + 1) = &v17;
  v17 = v3;
  v18 = v3;
  v19 = 1;
  v4 = operator new(0x18uLL);
  v4[4] = 1;
  *v4 = v3;
  *(v4 + 1) = &v17;
  *(v3 + 1) = v4;
  v17 = v4;
  v19 = 2;
  do
  {
    v5 = v3[4];
    v15 = 0uLL;
    v16 = 0;
    if (v5)
    {
      v6 = "Unknown";
    }

    else
    {
      v6 = "Server";
    }

    if (v5 == 1)
    {
      v7 = "Client";
    }

    else
    {
      v7 = v6;
    }

    MEMORY[0x245CF57C0](&v15, v7);
    if (v16 >= 0)
    {
      v8 = &v15 + HIBYTE(v16);
    }

    else
    {
      v8 = (v15 + *(&v15 + 1));
    }

    if (v16 >= 0)
    {
      v9 = &v15;
    }

    else
    {
      v9 = v15;
    }

    for (; v9 != v8; ++v9)
    {
      *v9 = __tolower(*v9);
    }

    result = operator new(0x28uLL);
    result[1] = v15;
    *(result + 4) = v16;
    v11 = *a1;
    *result = *a1;
    *(result + 1) = a1;
    *(v11 + 8) = result;
    *a1 = result;
    ++a1[2];
    v3 = *(v3 + 1);
  }

  while (v3 != &v17);
  if (v19)
  {
    result = v18;
    v12 = *(v17 + 1);
    v13 = *v18;
    *(v13 + 8) = v12;
    *v12 = v13;
    v19 = 0;
    if (result != &v17)
    {
      do
      {
        v14 = *(result + 1);
        operator delete(result);
        result = v14;
      }

      while (v14 != &v17);
    }
  }

  return result;
}

void sub_241A1C818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__list_imp<TCP::Mode>::clear(va);
  std::list<std::string>::~list(v4);
  _Unwind_Resume(a1);
}

void sub_241A1C834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::list<TCP::Mode>::~list(&a15);
  std::list<std::string>::~list(v15);
  _Unwind_Resume(a1);
}

uint64_t TCP::asStringLowerCase@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = "Unknown";
  if (!a1)
  {
    v3 = "Server";
  }

  if (a1 == 1)
  {
    v4 = "Client";
  }

  else
  {
    v4 = v3;
  }

  result = MEMORY[0x245CF57C0](a2, v4);
  v6 = *(a2 + 23);
  v7 = v6;
  v8 = (a2 + v6);
  if (v7 >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = (*a2 + *(a2 + 8));
  }

  if (v7 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  for (; v10 != v9; ++v10)
  {
    result = __tolower(*v10);
    *v10 = result;
  }

  return result;
}

void sub_241A1C904(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TCP::asString@<X0>(int a1@<W0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = "Unknown";
  if (!a1)
  {
    v3 = "Server";
  }

  if (a1 == 1)
  {
    v4 = "Client";
  }

  else
  {
    v4 = v3;
  }

  return MEMORY[0x245CF57C0](a2, v4);
}

void sub_241A1C97C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TCP::asTCPMode(char *a1)
{
  v1 = a1;
  if (a1[23] < 0)
  {
    v1 = *a1;
  }

  result = strcasecmp(v1, "Server");
  if (result)
  {
    if (!strcasecmp(v1, "Client"))
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

BOOL TCP::sendAllToDst(TCP *this, uint64_t a2, const unsigned __int8 *a3)
{
  v3 = a3;
  v5 = this;
  v41 = *MEMORY[0x277D85DE8];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36 = v6;
  v37 = v6;
  v35[1] = v6;
  v35[2] = v6;
  v35[0] = v6;
  v33 = operator new(0x28uLL);
  v34 = xmmword_241A64780;
  strcpy(v33, "com.apple.telephony.basebandservices");
  v32 = 8;
  strcpy(__p, "tcp.send");
  support::log::client::client(v35, &v33, __p);
  if (v32 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v34) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_21:
    operator delete(v33);
    goto LABEL_3;
  }

  if (SHIBYTE(v34) < 0)
  {
    goto LABEL_21;
  }

LABEL_3:
  v7 = 0;
  v8 = 1 << v5;
  v9 = v5 >> 5;
  v10 = v3;
  while (1)
  {
    while (1)
    {
      v11 = send(v5, (a2 + v7), v10 - v7, 0);
      v12 = v11;
      if (v11 < 0)
      {
        break;
      }

      v7 += v11;
      if (v7 == v10)
      {
        goto LABEL_26;
      }
    }

    v13 = *__error();
    v14 = *v36;
    v15 = *v36;
    if (v13 != 35)
    {
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      v17 = __error();
      v18 = strerror(*v17);
      buf.fds_bits[0] = 136315138;
      *&buf.fds_bits[1] = v18;
      v19 = "error: Failed to send, error: %s";
      p_buf = &buf;
      v21 = v14;
      goto LABEL_31;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.fds_bits[0]) = 0;
      _os_log_impl(&dword_241A16000, v14, OS_LOG_TYPE_DEFAULT, "warning: Dst socket busy, waiting", &buf, 2u);
    }

    memset(&buf, 0, sizeof(buf));
    if (__darwin_check_fd_set_overflow(v5, &buf, 0))
    {
      buf.fds_bits[v9] |= v8;
    }

    if (select(v5 + 1, 0, &buf, 0, 0) < 0)
    {
      break;
    }

    if (__darwin_check_fd_set_overflow(v5, &buf, 0) && (buf.fds_bits[v9] & v8) != 0)
    {
      v16 = *v36;
      if (os_log_type_enabled(*v36, OS_LOG_TYPE_INFO))
      {
        *v38 = 0;
        _os_log_impl(&dword_241A16000, v16, OS_LOG_TYPE_INFO, "Dst socket became ready for writing", v38, 2u);
      }

      __darwin_check_fd_set_overflow(v5, &buf, 0);
    }

    if (v10 == v7)
    {
      goto LABEL_25;
    }
  }

  v22 = *v36;
  if (!os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
  {
LABEL_25:
    v23 = *v36;
    if (!os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    goto LABEL_32;
  }

  v27 = __error();
  v28 = strerror(*v27);
  *v38 = 136315138;
  v39 = v28;
  v19 = "error: Failed to register for write notification on Dst socket, error: %s";
  p_buf = v38;
  v21 = v22;
LABEL_31:
  _os_log_error_impl(&dword_241A16000, v21, OS_LOG_TYPE_ERROR, v19, p_buf, 0xCu);
  v23 = *v36;
  if (!os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
  {
LABEL_26:
    *&v35[0] = &unk_2853A1D78;
    v24 = v37;
    if (!v37)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

LABEL_32:
  v29 = __error();
  v30 = strerror(*v29);
  buf.fds_bits[0] = 136315138;
  *&buf.fds_bits[1] = v30;
  _os_log_error_impl(&dword_241A16000, v23, OS_LOG_TYPE_ERROR, "error: Failed to send data to destination, Error: %s", &buf, 0xCu);
  *&v35[0] = &unk_2853A1D78;
  v24 = v37;
  if (!v37)
  {
    goto LABEL_29;
  }

LABEL_27:
  if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

LABEL_29:
  v25 = *MEMORY[0x277D85DE8];
  return v12 >= 0;
}

void TCP::create(int a1@<W0>, int a2@<W1>, NSObject **a3@<X2>, atomic_ullong *a4@<X8>)
{
  v8 = operator new(0xE8uLL);
  v9 = *a3;
  v10 = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  TCP::TCP(v8, a1, a2, &v10);
  std::shared_ptr<TCP>::shared_ptr[abi:ne200100]<TCP,std::shared_ptr<TCP> ctu::SharedSynchronizable<TCP>::make_shared_ptr<TCP>(TCP*)::{lambda(TCP*)#1},0>(a4, v8);
  if (v9)
  {

    dispatch_release(v9);
  }
}

void sub_241A1CF44(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    dispatch_release(v2);
    if (!v3)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

uint64_t TCP::TCP(uint64_t a1, int a2, int a3, NSObject **a4)
{
  v8 = dispatch_queue_create("TCP", 0);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v8;
  if (v8)
  {
    v9 = v8;
    dispatch_retain(v8);
    *(a1 + 32) = 0;
    dispatch_release(v9);
    *a1 = &unk_2853A1DA8;
    v10 = *a4;
    *(a1 + 40) = *a4;
    if (!v10)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  *(a1 + 32) = 0;
  *a1 = &unk_2853A1DA8;
  v10 = *a4;
  *(a1 + 40) = *a4;
  if (v10)
  {
LABEL_3:
    dispatch_retain(v10);
  }

LABEL_4:
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 52) = a2;
  *(a1 + 56) = a3;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 84) = 0xFFFFFFFF00000001;
  *(a1 + 92) = -1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v11 = operator new(0x100000uLL);
  *(a1 + 112) = v11;
  v12 = v11 + 0x100000;
  *(a1 + 128) = v11 + 0x100000;
  bzero(v11, 0x100000uLL);
  *(a1 + 136) = 0;
  *(a1 + 120) = v12;
  *(a1 + 144) = 0;
  v16 = operator new(0x28uLL);
  v17 = xmmword_241A64780;
  strcpy(v16, "com.apple.telephony.basebandservices");
  v15 = 3;
  LODWORD(__p) = 7365492;
  support::log::client::client((a1 + 152), &v16, &__p);
  if (v15 < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v17) & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_10:
    operator delete(v16);
    return a1;
  }

  if (SHIBYTE(v17) < 0)
  {
    goto LABEL_10;
  }

  return a1;
}

void sub_241A1D13C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      v26 = v20[18];
      if (!v26)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  v26 = v20[18];
  if (!v26)
  {
LABEL_4:
    v27 = *v24;
    if (!*v24)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  dispatch_release(v26);
  v27 = *v24;
  if (!*v24)
  {
LABEL_5:
    v28 = *v22;
    if (!*v22)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  dispatch_release(v27);
  v28 = *v22;
  if (!*v22)
  {
LABEL_6:
    v29 = v20[9];
    if (!v29)
    {
LABEL_14:
      if (*v23)
      {
        _Block_release(*v23);
      }

      v30 = v20[5];
      if (v30)
      {
        dispatch_release(v30);
      }

      ctu::SharedSynchronizable<TCP>::~SharedSynchronizable(v21);
      _Unwind_Resume(a1);
    }

LABEL_13:
    _Block_release(v29);
    goto LABEL_14;
  }

LABEL_12:
  v20[15] = v28;
  operator delete(v28);
  v29 = v20[9];
  if (!v29)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

void *ctu::SharedSynchronizable<TCP>::~SharedSynchronizable(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

BOOL TCP::configureServerMode_sync(TCP *this, int a2)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*(this + 12))
  {
    goto LABEL_33;
  }

  v4 = socket(2, 1, 0);
  *(this + 22) = v4;
  if (v4 < 0)
  {
    v16 = **(this + 25);
    result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v17 = __error();
      v18 = strerror(*v17);
      *buf = 136315138;
      v33 = v18;
      _os_log_error_impl(&dword_241A16000, v16, OS_LOG_TYPE_ERROR, "error: [server] Failed to create socket, error: %s", buf, 0xCu);
LABEL_33:
      result = 0;
      goto LABEL_34;
    }

    goto LABEL_34;
  }

  v31 = 1;
  if (setsockopt(v4, 0xFFFF, 4, &v31, 4u) < 0)
  {
    v19 = **(this + 25);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v20 = __error();
    v21 = strerror(*v20);
    *buf = 136315138;
    v33 = v21;
    v13 = "error: [server] Failed to set socket options, error: %s";
LABEL_30:
    v14 = v19;
    v15 = 12;
    goto LABEL_31;
  }

  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 97) = 2;
  *(this + 49) = bswap32(*(this + 28)) >> 16;
  if (bind(*(this + 22), this + 6, 0x10u) < 0)
  {
    v19 = **(this + 25);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v22 = __error();
    v23 = strerror(*v22);
    *buf = 136315138;
    v33 = v23;
    v13 = "error: [server] Failed to bind to the socket, error: %s";
    goto LABEL_30;
  }

  if (!*(this + 14))
  {
    v31 = 16;
    v5 = getsockname(*(this + 22), this + 6, &v31);
    if (v5 < 0)
    {
      v6 = **(this + 25);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v29 = __error();
        v30 = strerror(*v29);
        *buf = 136315138;
        v33 = v30;
        _os_log_error_impl(&dword_241A16000, v6, OS_LOG_TYPE_ERROR, "error: [server] Failed to get socket address, error: %s", buf, 0xCu);
      }

      TCP::closeLocalSocket_sync(this);
      TCP::closeServerSocket_sync(this);
    }

    v7 = bswap32(*(this + 49)) >> 16;
    *(this + 14) = v7;
    v8 = **(this + 25);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v33) = v7;
      _os_log_impl(&dword_241A16000, v8, OS_LOG_TYPE_INFO, "Assigned port number is %d", buf, 8u);
    }

    if (v5 < 0)
    {
      goto LABEL_33;
    }
  }

  if (listen(*(this + 22), *(this + 21)) < 0)
  {
    v19 = **(this + 25);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v24 = __error();
    v25 = strerror(*v24);
    *buf = 136315138;
    v33 = v25;
    v13 = "error: [server] Failed to listen to the socket, error: %s";
    goto LABEL_30;
  }

  if (!a2)
  {
    result = TCP::setServerSocketAcceptSource_sync(this);
    goto LABEL_34;
  }

  v9 = accept(*(this + 22), 0, 0);
  *(this + 23) = v9;
  if (v9 < 0)
  {
    v19 = **(this + 25);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v26 = __error();
    v27 = strerror(*v26);
    *buf = 136315138;
    v33 = v27;
    v13 = "error: [server] Failed to accept connection, error: %s";
    goto LABEL_30;
  }

  *(this + 81) = 1;
  Source_sync = TCP::setLocalSocketReadSource_sync(this);
  result = 1;
  if ((Source_sync & 1) == 0)
  {
    v12 = **(this + 25);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v13 = "error: [server] Failed to set read source for local socket";
      v14 = v12;
      v15 = 2;
LABEL_31:
      _os_log_error_impl(&dword_241A16000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
    }

LABEL_32:
    TCP::closeLocalSocket_sync(this);
    TCP::closeServerSocket_sync(this);
    goto LABEL_33;
  }

LABEL_34:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t TCP::setLocalSocketReadSource_sync(TCP *this)
{
  if (*(this + 80) == 1)
  {
    v2 = fcntl(*(this + 23), 3, 0);
    fcntl(*(this + 23), 4, v2 | 4);
    v3 = dispatch_source_create(MEMORY[0x277D85D28], *(this + 23), 0, *(this + 5));
    v4 = *(this + 18);
    *(this + 18) = v3;
    if (v4)
    {
      dispatch_release(v4);
      v3 = *(this + 18);
    }

    if (v3)
    {
      v5 = *(this + 2);
      if (!v5 || (v6 = *(this + 1), (v7 = std::__shared_weak_count::lock(v5)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v8 = v7;
      p_shared_weak_owners = &v7->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v8);
      }

      v10 = *(this + 18);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 1174405120;
      handler[2] = ___ZN3TCP29setLocalSocketReadSource_syncEv_block_invoke;
      handler[3] = &__block_descriptor_tmp_11_1;
      handler[4] = this;
      handler[5] = v6;
      v15 = v8;
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      dispatch_source_set_event_handler(v10, handler);
      dispatch_activate(*(this + 18));
      if (v15)
      {
        std::__shared_weak_count::__release_weak(v15);
      }

      std::__shared_weak_count::__release_weak(v8);
      return 1;
    }

    else
    {
      v13 = **(this + 25);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_241A16000, v13, OS_LOG_TYPE_ERROR, "error: Unable to create accept source for local client socket, closing local socket", buf, 2u);
      }

      TCP::closeLocalSocket_sync(this);
      return 0;
    }
  }

  else
  {
    v12 = **(this + 25);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241A16000, v12, OS_LOG_TYPE_DEFAULT, "warning: data handler required for setting up async local socket read source", buf, 2u);
    }

    return 1;
  }
}

BOOL TCP::setServerSocketAcceptSource_sync(dispatch_queue_t *this)
{
  v2 = dispatch_source_create(MEMORY[0x277D85D28], *(this + 22), 0, this[3]);
  v3 = this[17];
  this[17] = v2;
  if (v3)
  {
    dispatch_release(v3);
    v2 = this[17];
  }

  if (v2)
  {
    v4 = this[2];
    if (!v4 || (v5 = this[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
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

    v9 = this[17];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 1174405120;
    handler[2] = ___ZN3TCP32setServerSocketAcceptSource_syncEv_block_invoke;
    handler[3] = &__block_descriptor_tmp_8;
    handler[4] = this;
    handler[5] = v5;
    v13 = v7;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    dispatch_source_set_event_handler(v9, handler);
    dispatch_activate(this[17]);
    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }

    std::__shared_weak_count::__release_weak(v7);
  }

  else
  {
    isa = this[25]->isa;
    if (os_log_type_enabled(isa, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_241A16000, isa, OS_LOG_TYPE_ERROR, "error: [server] Unable to create accept source for server socket", buf, 2u);
    }

    TCP::closeLocalSocket_sync(this);
    TCP::closeServerSocket_sync(this);
  }

  return v2 != 0;
}

uint64_t TCP::configureClientMode_sync(TCP *this)
{
  v19 = *MEMORY[0x277D85DE8];
  *&v18.sa_len = 0;
  *&v18.sa_data[6] = 0;
  v2 = socket(2, 1, 0);
  if (v2 < 0)
  {
    v6 = **(this + 25);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = __error();
      v8 = strerror(*v7);
      v16 = 136315138;
      v17 = v8;
      _os_log_error_impl(&dword_241A16000, v6, OS_LOG_TYPE_ERROR, "error: [client] Failed to create socket, error: %s", &v16, 0xCu);
    }

    goto LABEL_13;
  }

  v3 = gethostbyname("localhost");
  if (!v3)
  {
    v9 = **(this + 25);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16) = 0;
      _os_log_error_impl(&dword_241A16000, v9, OS_LOG_TYPE_ERROR, "error: [client] Failed to get hostname", &v16, 2u);
    }

    goto LABEL_13;
  }

  v18.sa_family = 2;
  memcpy(&v18.sa_data[2], *v3->h_addr_list, v3->h_length);
  *v18.sa_data = bswap32(*(this + 28)) >> 16;
  if (connect(v2, &v18, 0x10u) < 0)
  {
    v10 = **(this + 25);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = __error();
      v15 = strerror(*v14);
      v16 = 136315138;
      v17 = v15;
      _os_log_error_impl(&dword_241A16000, v10, OS_LOG_TYPE_ERROR, "error: [client] Failed to connect to the socket, error: %s", &v16, 0xCu);
    }

    close(v2);
    v2 = -1;
LABEL_13:
    result = 0;
    *(this + 23) = v2;
    v11 = *MEMORY[0x277D85DE8];
    return result;
  }

  *(this + 23) = v2;
  if (TCP::setLocalSocketReadSource_sync(this))
  {
    result = 1;
    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v12 = **(this + 25);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16) = 0;
      _os_log_error_impl(&dword_241A16000, v12, OS_LOG_TYPE_ERROR, "error: [client] Failed to set read source for local socket", &v16, 2u);
    }

    TCP::closeLocalSocket_sync(this);
    TCP::closeServerSocket_sync(this);
    result = 0;
    v13 = *MEMORY[0x277D85DE8];
  }

  return result;
}

uint64_t TCP::start(uint64_t a1, void **a2, void **a3, char a4)
{
  v16 = 1;
  v12[0] = a1;
  v12[1] = &v16;
  v7 = *a3;
  if (*a3)
  {
    v7 = _Block_copy(v7);
  }

  v13 = v7;
  v8 = *a2;
  if (*a2)
  {
    v8 = _Block_copy(v8);
  }

  aBlock = v8;
  v15 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI3TCPE20execute_wrapped_syncIZNS1_5startEN8dispatch5blockIU13block_pointerFvNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEENS5_IU13block_pointerFvPKhjEEEbE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSM__block_invoke;
  block[3] = &__block_descriptor_tmp_21;
  block[4] = a1 + 8;
  block[5] = v12;
  v9 = *(a1 + 24);
  if (!*(a1 + 32))
  {
    dispatch_sync(v9, block);
    v10 = aBlock;
    if (!aBlock)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  dispatch_async_and_wait(v9, block);
  v10 = aBlock;
  if (aBlock)
  {
LABEL_9:
    _Block_release(v10);
  }

LABEL_10:
  if (v13)
  {
    _Block_release(v13);
  }

  return v16;
}

void ___ZN3TCP32setServerSocketAcceptSource_syncEv_block_invoke(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = **(v2 + 200);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v17) = 0;
    _os_log_debug_impl(&dword_241A16000, v3, OS_LOG_TYPE_DEBUG, "New Connection, accept source is triggered", &v17, 2u);
    v17 = 0;
    v18 = 0;
    v4 = a1[6];
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_14:
    v5 = 0;
LABEL_15:
    v7 = 1;
LABEL_16:
    v10 = **(v2 + 200);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      LODWORD(v20) = v7;
      _os_log_debug_impl(&dword_241A16000, v10, OS_LOG_TYPE_DEBUG, "[server] tcp instance gone: %d", buf, 8u);
      if (v7)
      {
        goto LABEL_20;
      }
    }

    else if (v7)
    {
      goto LABEL_20;
    }

    v11 = **(v2 + 200);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(v2 + 48);
      *buf = 67109120;
      LODWORD(v20) = v16;
      _os_log_debug_impl(&dword_241A16000, v11, OS_LOG_TYPE_DEBUG, "[server] current state: %d", buf, 8u);
    }

LABEL_20:
    if (!v5)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v17 = 0;
  v18 = 0;
  v4 = a1[6];
  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_3:
  v5 = std::__shared_weak_count::lock(v4);
  v18 = v5;
  if (!v5)
  {
    goto LABEL_15;
  }

  v17 = a1[5];
  if (!v17)
  {
    goto LABEL_15;
  }

  if (!*(v2 + 48))
  {
    v7 = 0;
    goto LABEL_16;
  }

  if (*(v2 + 81) == 1)
  {
    v6 = **(v2 + 200);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_241A16000, v6, OS_LOG_TYPE_ERROR, "error: [server] A Client connection is already active, ignoring..", buf, 2u);
    }
  }

  else
  {
    v8 = accept(*(v2 + 88), 0, 0);
    *(v2 + 92) = v8;
    if (v8 < 0)
    {
      v13 = **(v2 + 200);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = __error();
        v15 = strerror(*v14);
        *buf = 136315138;
        v20 = v15;
        _os_log_error_impl(&dword_241A16000, v13, OS_LOG_TYPE_ERROR, "error: [server] Async accept connection failed: %s", buf, 0xCu);
      }
    }

    else
    {
      *(v2 + 81) = 1;
      TCP::setLocalSocketReadSource_sync(v2);
      *(v2 + 48) = 1;
      v9 = **(v2 + 200);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_241A16000, v9, OS_LOG_TYPE_INFO, "[server] New Connection setup successfully", buf, 2u);
      }
    }
  }

LABEL_21:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

LABEL_23:
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t __copy_helper_block_e8_40c27_ZTSNSt3__18weak_ptrI3TCPEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c27_ZTSNSt3__18weak_ptrI3TCPEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

BOOL TCP::closeLocalSocket_sync(TCP *this)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(this + 23);
  if (v2 < 0)
  {
    v4 = 1;
    goto LABEL_10;
  }

  v3 = close(v2);
  v4 = v3 == 0;
  if (v3)
  {
    v5 = **(this + 25);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = __error();
      v11 = strerror(*v10);
      v12 = 136315138;
      v13 = v11;
      _os_log_error_impl(&dword_241A16000, v5, OS_LOG_TYPE_ERROR, "error: Failed to close local socket, Error: %s", &v12, 0xCu);
      if (*(this + 13))
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  if (!*(this + 13))
  {
LABEL_5:
    *(this + 81) = 0;
  }

LABEL_6:
  *(this + 23) = -1;
  v6 = *(this + 18);
  if (v6)
  {
    dispatch_source_cancel(v6);
    v7 = *(this + 18);
    *(this + 18) = 0;
    if (v7)
    {
      dispatch_release(v7);
    }
  }

LABEL_10:
  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

void ___ZN3TCP29setLocalSocketReadSource_syncEv_block_invoke(void *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = a1[6];
  if (!v2)
  {
    goto LABEL_39;
  }

  v3 = a1[4];
  v4 = std::__shared_weak_count::lock(v2);
  v24 = v4;
  if (!v4)
  {
    goto LABEL_39;
  }

  v23 = a1[5];
  if (v23 && *(v3 + 48) == 1)
  {
    v5 = v4;
    v6 = recv(*(v3 + 92), *(v3 + 112), 0x100000uLL, 0);
    if ((v6 & 0x8000000000000000) == 0)
    {
      if (v6)
      {
        v7 = *(v3 + 112);
        (*(*(v3 + 64) + 16))();
        v4 = v5;
      }

      else
      {
        v20 = v3;
        *&block = MEMORY[0x277D85DD0];
        *(&block + 1) = 0x40000000;
        v26 = ___ZNK3ctu20SharedSynchronizableI3TCPE20execute_wrapped_syncIZZNS1_29setLocalSocketReadSource_syncEvEUb_E3__2EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
        v27 = &__block_descriptor_tmp_24;
        v28 = v3 + 8;
        v29 = &v20;
        v13 = *(v3 + 24);
        if (*(v3 + 32))
        {
          dispatch_async_and_wait(v13, &block);
        }

        else
        {
          dispatch_sync(v13, &block);
        }

        v4 = v5;
      }

      goto LABEL_37;
    }

    memset(&__dst, 170, sizeof(__dst));
    v8 = __error();
    v9 = strerror(*v8);
    v10 = strlen(v9);
    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v11 = v10;
    if (v10 >= 0x17)
    {
      if ((v10 | 7) == 0x17)
      {
        v14 = 25;
      }

      else
      {
        v14 = (v10 | 7) + 1;
      }

      p_dst = operator new(v14);
      __dst.__r_.__value_.__l.__size_ = v11;
      __dst.__r_.__value_.__r.__words[2] = v14 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = p_dst;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v10;
      p_dst = &__dst;
      if (!v10)
      {
LABEL_20:
        p_dst->__r_.__value_.__s.__data_[v11] = 0;
        v15 = **(v3 + 200);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = &__dst;
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v16 = __dst.__r_.__value_.__r.__words[0];
          }

          LODWORD(block) = 136315138;
          *(&block + 4) = v16;
          _os_log_error_impl(&dword_241A16000, v15, OS_LOG_TYPE_ERROR, "error: recv failed: %s", &block, 0xCu);
          v20 = v3;
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v20 = v3;
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_22:
            __p = __dst;
            goto LABEL_28;
          }
        }

        std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
LABEL_28:
        *&block = MEMORY[0x277D85DD0];
        *(&block + 1) = 0x40000000;
        v26 = ___ZNK3ctu20SharedSynchronizableI3TCPE20execute_wrapped_syncIZZNS1_29setLocalSocketReadSource_syncEvEUb_E3__1EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
        v27 = &__block_descriptor_tmp_23;
        v28 = v3 + 8;
        v29 = &v20;
        v17 = *(v3 + 24);
        if (*(v3 + 32))
        {
          dispatch_async_and_wait(v17, &block);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          dispatch_sync(v17, &block);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_31:
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
              v4 = v24;
              if (!v24)
              {
                goto LABEL_39;
              }
            }

            else
            {
              v4 = v24;
              if (!v24)
              {
                goto LABEL_39;
              }
            }

            goto LABEL_37;
          }
        }

        operator delete(__p.__r_.__value_.__l.__data_);
        goto LABEL_31;
      }
    }

    memmove(p_dst, v9, v11);
    goto LABEL_20;
  }

LABEL_37:
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v18 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_39:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_241A1E630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
    std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](&a20);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](&a20);
  _Unwind_Resume(a1);
}

BOOL TCP::closeServerSocket_sync(TCP *this)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(this + 13) || (v4 = *(this + 22), v4 < 0))
  {
    result = 1;
  }

  else
  {
    v5 = close(v4);
    result = v5 == 0;
    if (v5 && (v6 = **(this + 25), v7 = v5 == 0, v8 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR), result = v7, v8))
    {
      v12 = __error();
      v13 = strerror(*v12);
      v14 = 136315138;
      v15 = v13;
      _os_log_error_impl(&dword_241A16000, v6, OS_LOG_TYPE_ERROR, "error: Failed to close server socket, Error: %s", &v14, 0xCu);
      result = v7;
      *(this + 22) = -1;
      v9 = *(this + 17);
      if (!v9)
      {
        goto LABEL_3;
      }
    }

    else
    {
      *(this + 22) = -1;
      v9 = *(this + 17);
      if (!v9)
      {
        goto LABEL_3;
      }
    }

    v10 = result;
    dispatch_source_cancel(v9);
    v11 = *(this + 17);
    *(this + 17) = 0;
    if (v11)
    {
      dispatch_release(v11);
    }

    result = v10;
  }

LABEL_3:
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t TCP::stop(TCP *this)
{
  v5 = 1;
  v4[0] = this;
  v4[1] = &v5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI3TCPE20execute_wrapped_syncIZNS1_4stopEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  block[3] = &__block_descriptor_tmp_26;
  block[4] = this + 8;
  block[5] = v4;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }

  return v5;
}

uint64_t TCP::recv(TCP *this, unsigned __int8 *a2, int a3, unsigned int *a4)
{
  v12 = 1;
  if (a2 && a4)
  {
    v8[0] = this;
    v8[1] = &v12;
    v9 = a3;
    v10 = a2;
    v11 = a4;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableI3TCPE20execute_wrapped_syncIZNS1_4recvEPhjPjE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    block[3] = &__block_descriptor_tmp_27;
    block[4] = this + 8;
    block[5] = v8;
    v5 = this + 24;
    v4 = *(this + 3);
    if (*(v5 + 1))
    {
      dispatch_async_and_wait(v4, block);
    }

    else
    {
      dispatch_sync(v4, block);
    }

    return v12 & 1;
  }

  else
  {
    v7 = **(this + 25);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(block[0]) = 0;
      _os_log_error_impl(&dword_241A16000, v7, OS_LOG_TYPE_ERROR, "error: Invalid input parameter TCP Receive", block, 2u);
    }

    return 0;
  }
}

uint64_t TCP::send(TCP *this, const unsigned __int8 *a2, int a3)
{
  v9 = 1;
  if (a2)
  {
    v7[0] = this;
    v7[1] = &v9;
    v7[2] = a2;
    v8 = a3;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableI3TCPE20execute_wrapped_syncIZNS1_4sendEPKhjE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    block[3] = &__block_descriptor_tmp_28;
    block[4] = this + 8;
    block[5] = v7;
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

    return v9 & 1;
  }

  else
  {
    v6 = **(this + 25);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(block[0]) = 0;
      _os_log_error_impl(&dword_241A16000, v6, OS_LOG_TYPE_ERROR, "error: Invalid input parameter for TCP Send", block, 2u);
    }

    return 0;
  }
}

uint64_t TCP::getPortNumber(TCP *this, int *a2)
{
  v6 = 1;
  v5[0] = this;
  v5[1] = &v6;
  v5[2] = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI3TCPE20execute_wrapped_syncIZNS1_13getPortNumberERiE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS6__block_invoke;
  block[3] = &__block_descriptor_tmp_29;
  block[4] = this + 8;
  block[5] = v5;
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

  return v6;
}

uint64_t TCP::asString@<X0>(unsigned int a1@<W0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (a1 >= 4)
  {
    v2 = "Unknown";
  }

  else
  {
    v2 = off_278D04618[a1];
  }

  return MEMORY[0x245CF57C0](a2, v2);
}

void sub_241A1EBAC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void TCP::~TCP(TCP *this)
{
  TCP::~TCP(this);

  operator delete(v1);
}

{
  *this = &unk_2853A1DA8;
  *(this + 19) = &unk_2853A1D78;
  v2 = *(this + 27);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 17);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 14);
  if (v5)
  {
    *(this + 15) = v5;
    operator delete(v5);
  }

  v6 = *(this + 9);
  if (v6)
  {
    _Block_release(v6);
  }

  v7 = *(this + 8);
  if (v7)
  {
    _Block_release(v7);
  }

  v8 = *(this + 5);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 4);
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = *(this + 3);
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = *(this + 2);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }
}

uint64_t *std::list<TCP::Mode>::~list(uint64_t *a1)
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

void *std::__list_imp<TCP::Mode>::clear(void *result)
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

atomic_ullong *std::shared_ptr<TCP>::shared_ptr[abi:ne200100]<TCP,std::shared_ptr<TCP> ctu::SharedSynchronizable<TCP>::make_shared_ptr<TCP>(TCP*)::{lambda(TCP*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2853A1E78;
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

void sub_241A1EEEC(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<TCP> ctu::SharedSynchronizable<TCP>::make_shared_ptr<TCP>(TCP*)::{lambda(TCP*)#1}::operator() const(TCP*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<TCP *,std::shared_ptr<TCP> ctu::SharedSynchronizable<TCP>::make_shared_ptr<TCP>(TCP*)::{lambda(TCP *)#1},std::allocator<TCP>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<TCP *,std::shared_ptr<TCP> ctu::SharedSynchronizable<TCP>::make_shared_ptr<TCP>(TCP*)::{lambda(TCP *)#1},std::allocator<TCP>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI3TCPE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI3TCPE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI3TCPE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI3TCPE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<TCP> ctu::SharedSynchronizable<TCP>::make_shared_ptr<TCP>(TCP*)::{lambda(TCP*)#1}::operator() const(TCP*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ___ZNK3ctu20SharedSynchronizableI3TCPE20execute_wrapped_syncIZNS1_5startEN8dispatch5blockIU13block_pointerFvNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEENS5_IU13block_pointerFvPKhjEEEbE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSM__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = v1[2];
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  v4 = *(v2 + 64);
  *(v2 + 64) = v3;
  if (v4)
  {
    _Block_release(v4);
    v3 = *(v2 + 64);
  }

  *(v2 + 80) = v3 != 0;
  v5 = v1[3];
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  v6 = *(v2 + 72);
  *(v2 + 72) = v5;
  if (v6)
  {
    _Block_release(v6);
  }

  v7 = *(v2 + 52);
  if (!v7)
  {
    v9 = TCP::configureServerMode_sync(v2, *(v1 + 32));
    *v1[1] = v9;
    if (!v9)
    {
      return;
    }

LABEL_14:
    *(v2 + 48) = 1;
    return;
  }

  if (v7 != 1)
  {
    *v1[1] = 0;
    return;
  }

  v8 = TCP::configureClientMode_sync(v2);
  *v1[1] = v8;
  if (v8)
  {
    goto LABEL_14;
  }
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82830] + 16;
  __cxa_throw(exception, MEMORY[0x277D82708], MEMORY[0x277D82630]);
}

void ___ZNK3ctu20SharedSynchronizableI3TCPE20execute_wrapped_syncIZZNS1_29setLocalSocketReadSource_syncEvEUb_E3__1EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  *(v2 + 48) = 3;
  TCP::closeLocalSocket_sync(v2);
  v3 = *(v2 + 72);
  if (*(v1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v1[1], v1[2]);
  }

  else
  {
    v4 = *(v1 + 1);
    __p.__r_.__value_.__r.__words[2] = v1[3];
    *&__p.__r_.__value_.__l.__data_ = v4;
  }

  (*(v3 + 16))(v3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_241A1F1D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK3ctu20SharedSynchronizableI3TCPE20execute_wrapped_syncIZZNS1_29setLocalSocketReadSource_syncEvEUb_E3__2EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke(uint64_t a1)
{
  v1 = **(a1 + 40);
  TCP::closeLocalSocket_sync(v1);
  *(v1 + 48) = 2;
  v2 = *(v1 + 72);
  v4 = 11;
  strcpy(__p, "peer closed");
  (*(v2 + 16))();
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_241A1F28C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ___ZNK3ctu20SharedSynchronizableI3TCPE20execute_wrapped_syncIZNS1_4stopEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  *(v2 + 48) = 0;
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;
  if (v3)
  {
    _Block_release(v3);
  }

  *(v2 + 80) = 0;
  v4 = TCP::closeLocalSocket_sync(v2);
  result = TCP::closeServerSocket_sync(v2);
  *v1[1] = v4 && result;
  return result;
}

void ___ZNK3ctu20SharedSynchronizableI3TCPE20execute_wrapped_syncIZNS1_4recvEPhjPjE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  if (*(*v1 + 80))
  {
    *v1[1] = 0;
  }

  else
  {
    v3 = recv(*(v2 + 92), v1[3], *(v1 + 4), 0);
    *v1[4] = v3;
    *v1[1] = v3 != 0;
    if (!v3)
    {
      v4 = **(v2 + 200);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *v5 = 0;
        _os_log_error_impl(&dword_241A16000, v4, OS_LOG_TYPE_ERROR, "error: Failed to receive data, peer closed", v5, 2u);
      }
    }
  }
}

void ___ZNK3ctu20SharedSynchronizableI3TCPE20execute_wrapped_syncIZNS1_4sendEPKhjE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  if (*(*v1 + 48) != 1)
  {
    v6 = **(v2 + 200);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 0;
      v7 = "error: Failed to send data to local socket, TCP Not Running";
      v8 = &v9;
      goto LABEL_13;
    }

LABEL_9:
    *v1[1] = 0;
    return;
  }

  v3 = *(v2 + 92);
  if ((v3 & 0x80000000) != 0)
  {
    v6 = **(v2 + 200);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 0;
      v7 = "error: Skip forwarding data as no valid socket destination is found";
      v8 = &v10;
LABEL_13:
      _os_log_error_impl(&dword_241A16000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
      *v1[1] = 0;
      return;
    }

    goto LABEL_9;
  }

  v4 = TCP::sendAllToDst(v3, v1[2], *(v1 + 6));
  *v1[1] = v4;
  if (!v4)
  {
    v5 = **(v2 + 200);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_241A16000, v5, OS_LOG_TYPE_ERROR, "error: Failed to send data to local socket, closing local socket", buf, 2u);
    }

    TCP::closeLocalSocket_sync(v2);
  }
}

void ___ZNK3ctu20SharedSynchronizableI3TCPE20execute_wrapped_syncIZNS1_13getPortNumberERiE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS6__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *v1;
  if (*(*v1 + 48))
  {
    *v1[2] = *(v2 + 56);
    v3 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v4 = **(v2 + 200);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __p[0] = 0;
      __p[1] = 0;
      v8 = 0;
      MEMORY[0x245CF57C0](__p, "Stopped");
      if (v8 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      *buf = 136315138;
      v10 = v6;
      _os_log_error_impl(&dword_241A16000, v4, OS_LOG_TYPE_ERROR, "error: server in invalid state %s", buf, 0xCu);
      if (SHIBYTE(v8) < 0)
      {
        operator delete(__p[0]);
      }
    }

    *v1[1] = 0;
    v5 = *MEMORY[0x277D85DE8];
  }
}

void sub_241A1F634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __cxx_global_var_init_0()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_241A16000);
  }

  return result;
}

void TraceSocketStreamer::create(char *a1@<X0>, dispatch_object_t *a2@<X1>, std::__shared_weak_count **a3@<X8>)
{
  v5 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  v7[1] = 0;
  v8 = 0;
  ctu::OsLogLogger::OsLogLogger(v9, "com.apple.telephony", a1);
  memset(&v9[8], 0, 32);
  v7[0] = &unk_2853A1EC8;
  v10 = 0;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  std::allocate_shared[abi:ne200100]<TraceSocketStreamer,std::allocator<TraceSocketStreamer>,TraceSocketStreamer,0>(v7, a3);
  v7[0] = &unk_2853A1EC8;
  if (object)
  {
    dispatch_release(object);
  }

  v6 = v10;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  MEMORY[0x245CF5550](v9);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v5)
  {
    dispatch_release(v5);
  }
}

void sub_241A1F8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::__shared_weak_count *a12)
{
  TraceSocketStreamer::~TraceSocketStreamer(&a10);
  if (!v12)
  {
    _Unwind_Resume(a1);
  }

  dispatch_release(v12);
  _Unwind_Resume(a1);
}

void *TraceSocketStreamer::TraceSocketStreamer(void *a1, char *a2, NSObject **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 3), "com.apple.telephony", a2);
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  *a1 = &unk_2853A1EC8;
  a1[8] = 0;
  v5 = *a3;
  a1[9] = *a3;
  if (v5)
  {
    dispatch_retain(v5);
  }

  return a1;
}

{
  a1[1] = 0;
  a1[2] = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 3), "com.apple.telephony", a2);
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  *a1 = &unk_2853A1EC8;
  a1[8] = 0;
  v5 = *a3;
  a1[9] = *a3;
  if (v5)
  {
    dispatch_retain(v5);
  }

  return a1;
}

void sub_241A1F98C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void TraceSocketStreamer::~TraceSocketStreamer(TraceSocketStreamer *this)
{
  *this = &unk_2853A1EC8;
  v2 = *(this + 9);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 8);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x245CF5550](this + 24);
  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

{
  *this = &unk_2853A1EC8;
  v2 = *(this + 9);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 8);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x245CF5550](this + 24);
  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

{
  *this = &unk_2853A1EC8;
  v2 = *(this + 9);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 8);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x245CF5550](this + 24);
  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(this);
}

void sub_241A1FAC4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TraceSocketStreamer::start(TraceSocketStreamer *this)
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN19TraceSocketStreamer5startEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_0;
  aBlock[4] = this;
  v2 = _Block_copy(aBlock);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 0x40000000;
  v21[2] = ___ZN19TraceSocketStreamer5startEv_block_invoke_1;
  v21[3] = &__block_descriptor_tmp_3;
  v21[4] = this;
  v3 = _Block_copy(v21);
  v4 = *(this + 9);
  object = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  TCP::create(0, 0, &object, buf);
  v5 = *buf;
  memset(buf, 0, sizeof(buf));
  v6 = *(this + 8);
  *(this + 56) = v5;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (!*(this + 7))
  {
    v12 = *(this + 3);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v13 = "[start failed] server socket gone";
    goto LABEL_35;
  }

  signal(13, 1);
  v8 = *(this + 7);
  if (v2)
  {
    v9 = _Block_copy(v2);
    v18 = v9;
    if (v3)
    {
      goto LABEL_14;
    }

LABEL_21:
    v17 = 0;
    v11 = TCP::start(v8, &v18, &v17, 0);
    if (!v9)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v9 = 0;
  v18 = 0;
  if (!v3)
  {
    goto LABEL_21;
  }

LABEL_14:
  v10 = _Block_copy(v3);
  v17 = v10;
  v11 = TCP::start(v8, &v18, &v17, 0);
  if (v10)
  {
    _Block_release(v10);
  }

  if (v9)
  {
LABEL_22:
    _Block_release(v9);
  }

LABEL_23:
  if ((v11 & 1) == 0)
  {
    v12 = *(this + 3);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_29:
      v15 = 0;
      if (!v3)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    *buf = 0;
    v13 = "[start failed] failed to start TCP service";
LABEL_35:
    _os_log_error_impl(&dword_241A16000, v12, OS_LOG_TYPE_ERROR, v13, buf, 2u);
    v15 = 0;
    if (!v3)
    {
      goto LABEL_31;
    }

LABEL_30:
    _Block_release(v3);
    goto LABEL_31;
  }

  TraceSocketStreamer::notifyCellularLoggingPortNumber(this);
  v14 = *(this + 3);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241A16000, v14, OS_LOG_TYPE_DEFAULT, "#I [start success] notification for port number is sent out to client", buf, 2u);
  }

  v15 = 1;
  if (v3)
  {
    goto LABEL_30;
  }

LABEL_31:
  if (v2)
  {
    _Block_release(v2);
  }

  return v15;
}

void sub_241A1FE18(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    _Block_release(v2);
  }

  if (v1)
  {
    _Block_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN19TraceSocketStreamer5startEv_block_invoke(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    v5 = 136315138;
    v6 = a2;
    _os_log_impl(&dword_241A16000, v3, OS_LOG_TYPE_DEFAULT, "#I Error: %s", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void ___ZN19TraceSocketStreamer5startEv_block_invoke_1(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a3;
    _os_log_impl(&dword_241A16000, v4, OS_LOG_TYPE_DEFAULT, "#I data handler cb triggered with message size %d", v6, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

BOOL TraceSocketStreamer::notifyCellularLoggingPortNumber(TraceSocketStreamer *this)
{
  v21 = *MEMORY[0x277D85DE8];
  out_token = 0;
  if (!notify_register_check("com.apple.CommCenterMobileHelpr.streamingPort", &out_token))
  {
    if (!notify_is_valid_token(out_token))
    {
LABEL_11:
      result = 1;
      goto LABEL_17;
    }

    v7 = *(this + 7);
    if (v7)
    {
      v12 = -1;
      v15 = 1;
      v14[0] = v7;
      v14[1] = &v15;
      v14[2] = &v12;
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 0x40000000;
      v17 = ___ZNK3ctu20SharedSynchronizableI3TCPE20execute_wrapped_syncIZNS1_13getPortNumberERiE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS6__block_invoke;
      v18 = &__block_descriptor_tmp_29;
      v19 = v7 + 8;
      v20 = v14;
      v8 = *(v7 + 24);
      if (*(v7 + 32))
      {
        dispatch_async_and_wait(v8, &buf);
        if (v15)
        {
          goto LABEL_9;
        }
      }

      else
      {
        dispatch_sync(v8, &buf);
        if (v15)
        {
LABEL_9:
          notify_set_state(out_token, v12);
          notify_post("com.apple.CommCenterMobileHelpr.streamingPort");
          v9 = *(this + 3);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 67109120;
            DWORD1(buf) = v12;
            _os_log_impl(&dword_241A16000, v9, OS_LOG_TYPE_DEFAULT, "#I notify port number %d", &buf, 8u);
          }

          goto LABEL_11;
        }
      }

      v10 = *(this + 3);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      LOWORD(buf) = 0;
      v4 = "Unable to get port number from TCP stack, is TCP stack running?";
    }

    else
    {
      v10 = *(this + 3);
      result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_17;
      }

      LOWORD(buf) = 0;
      v4 = "TCP object gone!";
    }

    v5 = v10;
    v6 = 2;
    goto LABEL_4;
  }

  v2 = *(this + 3);
  result = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
  if (result)
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "com.apple.CommCenterMobileHelpr.streamingPort";
    v4 = "Failed to create notifiy register check for notification %s";
    v5 = v2;
    v6 = 12;
LABEL_4:
    _os_log_error_impl(&dword_241A16000, v5, OS_LOG_TYPE_ERROR, v4, &buf, v6);
LABEL_16:
    result = 0;
  }

LABEL_17:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t TraceSocketStreamer::stop(TraceSocketStreamer *this)
{
  v3 = (this + 56);
  v2 = *(this + 7);
  if (v2)
  {
    v12 = 1;
    v11[0] = v2;
    v11[1] = &v12;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableI3TCPE20execute_wrapped_syncIZNS1_4stopEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
    block[3] = &__block_descriptor_tmp_26;
    block[4] = v2 + 8;
    block[5] = v11;
    v4 = *(v2 + 24);
    if (*(v2 + 32))
    {
      dispatch_async_and_wait(v4, block);
      v5 = v12;
      v6 = *(this + 8);
      *(this + 7) = 0;
      *(this + 8) = 0;
      if (v6)
      {
LABEL_4:
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }

        v7 = *(this + 8);
        *v3 = 0;
        v3[1] = 0;
        if (v7)
        {
          if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }
        }

LABEL_14:
        signal(13, 0);
        v10 = *(this + 3);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(block[0]) = 0;
          _os_log_impl(&dword_241A16000, v10, OS_LOG_TYPE_DEFAULT, "#I [stop success] server socket closed", block, 2u);
          return v5;
        }

        return v5;
      }
    }

    else
    {
      dispatch_sync(v4, block);
      v5 = v12;
      v6 = *(this + 8);
      *(this + 7) = 0;
      *(this + 8) = 0;
      if (v6)
      {
        goto LABEL_4;
      }
    }

    *v3 = 0;
    v3[1] = 0;
    goto LABEL_14;
  }

  v8 = *(this + 3);
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    return 0;
  }

  LOWORD(block[0]) = 0;
  _os_log_error_impl(&dword_241A16000, v8, OS_LOG_TYPE_ERROR, "[stop fail] TCP instance gone!", block, 2u);
  return 0;
}

BOOL TraceSocketStreamer::forward(TraceSocketStreamer *this, unsigned __int8 *a2, unsigned int a3)
{
  result = 0;
  if (a2 && a3)
  {
    v5 = a3;
    *(this + 5) += a3;
    if (TCP::send(*(this + 7), a2, a3))
    {
      *(this + 6) += v5;
      v6 = *(this + 3);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_241A16000, v6, OS_LOG_TYPE_DEBUG, "#D new data forwarded", buf, 2u);
        return 1;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      v7 = *(this + 3);
      *(this + 4) += v5;
      result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *v8 = 0;
        _os_log_error_impl(&dword_241A16000, v7, OS_LOG_TYPE_ERROR, "failed to forward new data", v8, 2u);
        return 0;
      }
    }
  }

  return result;
}

uint64_t TraceSocketStreamer::snapshot@<X0>(TraceSocketStreamer *this@<X0>, xpc_object_t *a2@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x245CF6530](v5) != MEMORY[0x277D86468])
  {
    v6 = xpc_null_create();
LABEL_8:
    *a2 = v6;
    goto LABEL_9;
  }

  xpc_retain(v5);
LABEL_9:
  xpc_release(v5);
  v42 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41[7] = v7;
  v41[8] = v7;
  v41[5] = v7;
  v41[6] = v7;
  v41[3] = v7;
  v41[4] = v7;
  v41[1] = v7;
  v41[2] = v7;
  v40 = v7;
  v41[0] = v7;
  *__p = v7;
  v39 = v7;
  v37[1] = v7;
  v37[2] = v7;
  v36 = v7;
  v37[0] = v7;
  v35 = v7;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v35);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, "Received Bytes during Streaming Session: ", 41);
  v9 = MEMORY[0x245CF5990](v8, *(this + 5));
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v34, MEMORY[0x277D82680]);
  (v10->__vftable[2].~facet_0)(v10, 10);
  std::locale::~locale(&v34);
  std::ostream::put();
  std::ostream::flush();
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Sent Bytes during Streaming Session: ", 37);
  v12 = MEMORY[0x245CF5990](v11, *(this + 6));
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&v34, MEMORY[0x277D82680]);
  (v13->__vftable[2].~facet_0)(v13, 10);
  std::locale::~locale(&v34);
  std::ostream::put();
  std::ostream::flush();
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Drop Bytes during Streaming Session: ", 37);
  v15 = (this + 32);
  v16 = MEMORY[0x245CF5990](v14, *(this + 4));
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v34, MEMORY[0x277D82680]);
  (v17->__vftable[2].~facet_0)(v17, 10);
  std::locale::~locale(&v34);
  std::ostream::put();
  std::ostream::flush();
  v18 = *(this + 3);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    std::stringbuf::str();
    v19 = (v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v34 : v34.__r_.__value_.__r.__words[0];
    *buf = 136315138;
    v44 = v19;
    _os_log_impl(&dword_241A16000, v18, OS_LOG_TYPE_DEFAULT, "#I Streaming Statistics:\n%s", buf, 0xCu);
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }
  }

  std::to_string(&v34, *(this + 5));
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v34;
  }

  else
  {
    v20 = v34.__r_.__value_.__r.__words[0];
  }

  v21 = xpc_string_create(v20);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  v22 = *a2;
  xpc_dictionary_set_value(*a2, *MEMORY[0x277CECD28], v21);
  v23 = xpc_null_create();
  xpc_release(v21);
  xpc_release(v23);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  std::to_string(&v34, *(this + 6));
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v34;
  }

  else
  {
    v24 = v34.__r_.__value_.__r.__words[0];
  }

  v25 = xpc_string_create(v24);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  xpc_dictionary_set_value(v22, *MEMORY[0x277CECD00], v25);
  v26 = xpc_null_create();
  xpc_release(v25);
  xpc_release(v26);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  std::to_string(&v34, *v15);
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &v34;
  }

  else
  {
    v27 = v34.__r_.__value_.__r.__words[0];
  }

  v28 = xpc_string_create(v27);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  xpc_dictionary_set_value(v22, *MEMORY[0x277CECD20], v28);
  v29 = xpc_null_create();
  xpc_release(v28);
  xpc_release(v29);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  *v15 = 0;
  v15[1] = 0;
  v30 = MEMORY[0x277D82818];
  v15[2] = 0;
  *&v35 = *v30;
  v31 = v30[9];
  *(&v35 + *(v35 - 24)) = v30[8];
  *&v36 = v31;
  *(&v36 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v36 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v37);
  std::iostream::~basic_iostream();
  result = MEMORY[0x245CF5AE0](v41);
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_241A20C9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void xpc::dict::~dict(xpc_object_t *this)
{
  xpc_release(*this);
  *this = 0;
}

{
  xpc_release(*this);
  *this = 0;
}

void std::allocate_shared[abi:ne200100]<TraceSocketStreamer,std::allocator<TraceSocketStreamer>,TraceSocketStreamer,0>(uint64_t a1@<X1>, std::__shared_weak_count **a2@<X8>)
{
  v4 = operator new(0x68uLL);
  v4->__shared_owners_ = 0;
  p_shared_owners = &v4->__shared_owners_;
  v4->__shared_weak_owners_ = 0;
  v4->__vftable = &unk_2853A1F28;
  v4[1].__shared_owners_ = 0;
  v4[1].__shared_weak_owners_ = 0;
  MEMORY[0x245CF5540](&v4[2], a1 + 24);
  v6 = v4 + 1;
  *&v4[2].__shared_owners_ = *(a1 + 32);
  v7 = *(a1 + 56);
  v4[3].__vftable = *(a1 + 48);
  v4[3].__shared_owners_ = v7;
  v4[1].__vftable = &unk_2853A1EC8;
  v8 = *(a1 + 64);
  v4[3].__shared_weak_owners_ = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 72);
  v4[4].__vftable = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  *a2 = v6;
  a2[1] = v4;
  shared_weak_owners = v4[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    if (shared_weak_owners->__shared_owners_ != -1)
    {
      return;
    }

    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4[1].__shared_owners_ = v6;
    v4[1].__shared_weak_owners_ = v4;
    std::__shared_weak_count::__release_weak(shared_weak_owners);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4[1].__shared_owners_ = v6;
    v4[1].__shared_weak_owners_ = v4;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v4->__on_zero_shared)(v4);

  std::__shared_weak_count::__release_weak(v4);
}

void sub_241A2106C(_Unwind_Exception *a1)
{
  shared_weak_owners = v1[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_weak(shared_weak_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<TraceSocketStreamer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2853A1F28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t __cxx_global_var_init_1()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_241A16000);
  }

  return result;
}

void TraceStreamer::create(char *a1@<X0>, int a2@<W1>, NSObject **a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  if (!a2)
  {
    v5 = *a3;
    v8 = v5;
    if (v5)
    {
      v6 = a1;
      dispatch_retain(v5);
      a1 = v6;
    }

    TraceSocketStreamer::create(a1, &v8, &v9);
    v7 = v9;
    v9 = 0uLL;
    *a4 = v7;
    if (v5)
    {
      dispatch_release(v5);
    }
  }
}

void sub_241A211E8(_Unwind_Exception *a1)
{
  if (v2)
  {
    dispatch_release(v2);
  }

  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void TraceStreamer::TraceStreamer(TraceStreamer *this, const char *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  ctu::OsLogLogger::OsLogLogger((this + 24), "com.apple.telephony", a2);
  *this = &unk_2853A1F78;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
}

void sub_241A21268(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void TraceStreamer::~TraceStreamer(TraceStreamer *this)
{
  MEMORY[0x245CF5550](this + 24);
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t __cxx_global_var_init_2()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_241A16000);
  }

  return result;
}

void *support::log::delegate::context::create@<X0>(support::log::delegate::context *this@<X0>, void *a2@<X8>)
{
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v5 = operator new(0x10uLL);
  *v5 = &unk_2853A2018;
  v5[1] = this;
  *a2 = v5;
  result = operator new(0x20uLL);
  *result = &unk_2853A2210;
  result[1] = 0;
  result[2] = 0;
  result[3] = v5;
  a2[1] = result;
  return result;
}

void *support::log::delegate::context::context(void *this, void *a2)
{
  *this = &unk_2853A2018;
  this[1] = a2;
  return this;
}

{
  *this = &unk_2853A2018;
  this[1] = a2;
  return this;
}

uint64_t support::log::delegate::delegate(uint64_t result, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *result = &unk_2853A2038;
  *(result + 8) = v3;
  *(result + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(result + 24) = 1;
  return result;
}

uint64_t support::log::delegate::get_context@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 16) = 0;
  if (*(this + 24) == 1)
  {
    v2 = *(this + 16);
    *a2 = *(this + 8);
    *(a2 + 8) = v2;
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
    }

    *(a2 + 16) = 1;
  }

  return this;
}

uint64_t support::log::manager::parameters::parameters(uint64_t result, char a2)
{
  *result = &unk_2853A2068;
  *(result + 8) = a2;
  return result;
}

{
  *result = &unk_2853A2068;
  *(result + 8) = a2;
  return result;
}

uint64_t support::log::manager::parameters::parameters(uint64_t this)
{
  *this = &unk_2853A2068;
  *(this + 8) = 3;
  return this;
}

{
  *this = &unk_2853A2068;
  *(this + 8) = 3;
  return this;
}

uint64_t support::log::manager::manager(uint64_t a1, std::string *a2, uint64_t a3, void *a4)
{
  *a1 = &unk_2853A2080;
  *(a1 + 8) = 850045863;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  v19 = *a2;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  v18 = 12;
  strcpy(__s, ".log_manager");
  v7 = std::string::append(&v19, __s, 0xCuLL);
  v8 = (a1 + 72);
  v9 = *&v7->__r_.__value_.__l.__data_;
  *(a1 + 88) = *(&v7->__r_.__value_.__l + 2);
  *(a1 + 72) = v9;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if ((v18 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    operator delete(v19.__r_.__value_.__l.__data_);
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  operator delete(*__s);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((*(a1 + 95) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

LABEL_9:
  v8 = *v8;
LABEL_4:
  *(a1 + 96) = os_log_create("com.apple.telephony.basebandservices", v8);
  *(a1 + 104) = &unk_2853A2068;
  *(a1 + 112) = *(a3 + 8);
  *(a1 + 120) = a1 + 120;
  *(a1 + 128) = a1 + 120;
  *(a1 + 136) = 0;
  v10 = a4[2];
  if (v10)
  {
    v12 = *a4;
    v11 = a4[1];
    v13 = *(*a4 + 8);
    v14 = *v11;
    *(v14 + 8) = v13;
    *v13 = v14;
    v15 = *(a1 + 120);
    *(v15 + 8) = v11;
    *v11 = v15;
    *(a1 + 120) = v12;
    *(v12 + 8) = a1 + 120;
    *(a1 + 136) = v10;
    a4[2] = 0;
  }

  return a1;
}

void sub_241A2169C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      std::mutex::~mutex(v21);
      _Unwind_Resume(a1);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  std::mutex::~mutex(v21);
  _Unwind_Resume(a1);
}

uint64_t support::log::manager::manager(uint64_t a1, std::string *a2, uint64_t a3, uint64_t *a4)
{
  __p = *a2;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  v15 = &v15;
  v16 = &v15;
  v17 = 0;
  support::log::manager::manager(a1, &__p, a3, &v15);
  if (v17)
  {
    v6 = v16;
    v7 = *(v15 + 8);
    v8 = *v16;
    *(v8 + 8) = v7;
    *v7 = v8;
    v17 = 0;
    if (v6 != &v15)
    {
      do
      {
        v10 = v6[1];
        v9 = v6[2];
        v6[2] = 0;
        if (v9)
        {
          (*(*v9 + 16))(v9);
        }

        operator delete(v6);
        v6 = v10;
      }

      while (v10 != &v15);
    }
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!*a4)
    {
      return a1;
    }

    goto LABEL_10;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (*a4)
  {
LABEL_10:
    std::mutex::lock((a1 + 8));
    v11 = operator new(0x18uLL);
    v12 = *a4;
    *a4 = 0;
    v13 = *(a1 + 120);
    v11[1] = a1 + 120;
    v11[2] = v12;
    *v11 = v13;
    *(v13 + 8) = v11;
    *(a1 + 120) = v11;
    ++*(a1 + 136);
    std::mutex::unlock((a1 + 8));
  }

  return a1;
}

{
  __p = *a2;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  v15 = &v15;
  v16 = &v15;
  v17 = 0;
  support::log::manager::manager(a1, &__p, a3, &v15);
  if (v17)
  {
    v6 = v16;
    v7 = *(v15 + 8);
    v8 = *v16;
    *(v8 + 8) = v7;
    *v7 = v8;
    v17 = 0;
    if (v6 != &v15)
    {
      do
      {
        v10 = v6[1];
        v9 = v6[2];
        v6[2] = 0;
        if (v9)
        {
          (*(*v9 + 16))(v9);
        }

        operator delete(v6);
        v6 = v10;
      }

      while (v10 != &v15);
    }
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!*a4)
    {
      return a1;
    }

    goto LABEL_10;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (*a4)
  {
LABEL_10:
    std::mutex::lock((a1 + 8));
    v11 = operator new(0x18uLL);
    v12 = *a4;
    *a4 = 0;
    v13 = *(a1 + 120);
    v11[1] = a1 + 120;
    v11[2] = v12;
    *v11 = v13;
    *(v13 + 8) = v11;
    *(a1 + 120) = v11;
    ++*(a1 + 136);
    std::mutex::unlock((a1 + 8));
  }

  return a1;
}

void sub_241A21838(_Unwind_Exception *a1)
{
  std::mutex::unlock((v1 + 8));
  support::log::manager::~manager(v1);
  _Unwind_Resume(a1);
}

void sub_241A2185C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  std::list<std::unique_ptr<support::log::delegate>>::~list(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::list<std::unique_ptr<support::log::delegate>>::~list(uint64_t *a1)
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
        v7 = v2[1];
        v6 = v2[2];
        v2[2] = 0;
        if (v6)
        {
          (*(*v6 + 16))(v6);
        }

        operator delete(v2);
        v2 = v7;
      }

      while (v7 != a1);
    }
  }

  return a1;
}

void support::log::manager::add_delegate(uint64_t a1, uint64_t *a2)
{
  v3 = a1;
  std::mutex::lock((a1 + 8));
  v4 = operator new(0x18uLL);
  v5 = *a2;
  *a2 = 0;
  v4[2] = v5;
  v6 = (v3 + 1);
  v7 = v3[15];
  v3 += 15;
  *v4 = v7;
  v4[1] = v3;
  *(v7 + 8) = v4;
  *v3 = v4;
  ++v3[2];

  std::mutex::unlock(v6);
}

void support::log::manager::~manager(support::log::manager *this)
{
  *this = &unk_2853A2080;
  if (*(this + 17))
  {
    v2 = this + 120;
    v3 = *(this + 16);
    v4 = *(*(this + 15) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 17) = 0;
    if (v3 != this + 120)
    {
      do
      {
        v7 = *(v3 + 1);
        v6 = *(v3 + 2);
        *(v3 + 2) = 0;
        if (v6)
        {
          (*(*v6 + 16))(v6);
        }

        operator delete(v3);
        v3 = v7;
      }

      while (v7 != v2);
    }
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  std::mutex::~mutex((this + 8));
}

{
  *this = &unk_2853A2080;
  if (*(this + 17))
  {
    v2 = this + 120;
    v3 = *(this + 16);
    v4 = *(*(this + 15) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 17) = 0;
    if (v3 != this + 120)
    {
      do
      {
        v7 = *(v3 + 1);
        v6 = *(v3 + 2);
        *(v3 + 2) = 0;
        if (v6)
        {
          (*(*v6 + 16))(v6);
        }

        operator delete(v3);
        v3 = v7;
      }

      while (v7 != v2);
    }
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  std::mutex::~mutex((this + 8));
}

{
  *this = &unk_2853A2080;
  if (*(this + 17))
  {
    v2 = this + 120;
    v3 = *(this + 16);
    v4 = *(*(this + 15) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 17) = 0;
    if (v3 != this + 120)
    {
      do
      {
        v7 = *(v3 + 1);
        v6 = *(v3 + 2);
        *(v3 + 2) = 0;
        if (v6)
        {
          (*(*v6 + 16))(v6);
        }

        operator delete(v3);
        v3 = v7;
      }

      while (v7 != v2);
    }
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  std::mutex::~mutex((this + 8));

  operator delete(this);
}

void sub_241A21BC4(_Unwind_Exception *a1)
{
  std::mutex::unlock((v1 + 8));
  support::log::manager::~manager(v1);
  _Unwind_Resume(a1);
}

void sub_241A21BE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  std::list<std::unique_ptr<support::log::delegate>>::~list(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void support::log::manager::create(std::string *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  *a4 = 0xAAAAAAAAAAAAAAAALL;
  a4[1] = 0xAAAAAAAAAAAAAAAALL;
  v8 = operator new(0x90uLL);
  __p = *a1;
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  support::log::manager::manager(v8, &__p, a2, a3);
  *a4 = v8;
  v9 = operator new(0x20uLL);
  *v9 = &unk_2853A22F8;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = v8;
  a4[1] = v9;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v10 = __p.__r_.__value_.__r.__words[0];

    operator delete(v10);
  }
}

void sub_241A21DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  (*(*v14 + 8))(v14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void support::log::manager::create(std::string *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  *a4 = 0xAAAAAAAAAAAAAAAALL;
  a4[1] = 0xAAAAAAAAAAAAAAAALL;
  v8 = operator new(0x90uLL);
  __p = *a1;
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  support::log::manager::manager(v8, &__p, a2, a3);
  *a4 = v8;
  v9 = operator new(0x20uLL);
  *v9 = &unk_2853A22F8;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = v8;
  a4[1] = v9;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v10 = __p.__r_.__value_.__r.__words[0];

    operator delete(v10);
  }
}

void sub_241A21F14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  (*(*v14 + 8))(v14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void support::log::manager::set_level(uint64_t a1, unsigned int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  std::mutex::lock((a1 + 8));
  v4 = *(a1 + 96);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 112);
    if (v5 > 6)
    {
      v6 = "???";
      if (a2 > 6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (a2 > 6)
      {
LABEL_4:
        v7 = "???";
LABEL_7:
        v9 = 136315394;
        v10 = v6;
        v11 = 2080;
        v12 = v7;
        _os_log_impl(&dword_241A16000, v4, OS_LOG_TYPE_DEFAULT, "setting log level %s -> %s", &v9, 0x16u);
        goto LABEL_8;
      }
    }

    goto LABEL_7;
  }

LABEL_8:
  *(a1 + 112) = a2;
  std::mutex::unlock((a1 + 8));
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t support::log::manager::get_log_buffer(support::log::manager *this)
{
  pthread_mutex_lock(&ctu::Singleton<support::log::buffer,support::log::buffer,ctu::PthreadMutexGuardPolicy<support::log::buffer>>::sInstance);
  if (!qword_27E552080)
  {
    v1 = operator new(0xA8uLL);
    *(v1 + 1) = 0;
    *(v1 + 2) = 0;
    *v1 = &unk_2853A2260;
    v2 = (v1 + 24);
    *(v1 + 3) = &unk_2853A22B0;
    *(v1 + 4) = 850045863;
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 14) = 0;
    *(v1 + 13) = 0;
    *(v1 + 11) = 0;
    *(v1 + 12) = v1 + 104;
    *(v1 + 120) = 0u;
    *(v1 + 136) = 0u;
    *(v1 + 152) = 0u;
    v3 = off_27E552088;
    qword_27E552080 = (v1 + 24);
    off_27E552088 = v1;
    if (!v3)
    {
      v18 = v1;
      goto LABEL_8;
    }

    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  v2 = qword_27E552080;
  v1 = off_27E552088;
  v18 = off_27E552088;
  if (off_27E552088)
  {
LABEL_8:
    atomic_fetch_add_explicit(v1 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<support::log::buffer,support::log::buffer,ctu::PthreadMutexGuardPolicy<support::log::buffer>>::sInstance);
  std::mutex::lock((v2 + 8));
  v4 = *(v2 + 136);
  if (v4)
  {
    v5 = (v2 + 128);
    v6 = *(v2 + 104);
    v7 = (*(v6 + ((*(v2 + 128) >> 6) & 0x3FFFFFFFFFFFFF8)))[*(v2 + 128) & 0x1FFLL];
    v8 = *(v2 + 128) + 1;
    *(v2 + 128) = v8;
    *(v2 + 136) = v4 - 1;
    if (v8 >= 0x400)
    {
      operator delete(*v6);
      *(v2 + 104) += 8;
      v9 = -512;
LABEL_23:
      *v5 += v9;
    }
  }

  else
  {
    v10 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
    v7 = v10;
    if (v10)
    {
      v12 = (v2 + 80);
      v11 = *(v2 + 80);
      if (!v11)
      {
        v13 = (v2 + 80);
LABEL_20:
        v15 = operator new(0x28uLL);
        v15[4] = v7;
        *v15 = 0;
        v15[1] = 0;
        v15[2] = v13;
        *v12 = v15;
        v16 = **(v2 + 72);
        if (v16)
        {
          *(v2 + 72) = v16;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v2 + 80), v15);
        v5 = (v2 + 88);
        v9 = 1;
        goto LABEL_23;
      }

      while (1)
      {
        while (1)
        {
          v13 = v11;
          v14 = v11[4];
          if (v10 >= v14)
          {
            break;
          }

          v11 = *v13;
          v12 = v13;
          if (!*v13)
          {
            goto LABEL_20;
          }
        }

        if (v14 >= v10)
        {
          break;
        }

        v11 = v13[1];
        if (!v11)
        {
          v12 = v13 + 1;
          goto LABEL_20;
        }
      }
    }
  }

  std::mutex::unlock((v2 + 8));
  if (!v18 || atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v7;
  }

  (v18->__on_zero_shared)(v18);
  std::__shared_weak_count::__release_weak(v18);
  return v7;
}

void sub_241A22360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 8));
  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void support::log::manager::release_log_buffer(support::log::manager *this, char *a2)
{
  pthread_mutex_lock(&ctu::Singleton<support::log::buffer,support::log::buffer,ctu::PthreadMutexGuardPolicy<support::log::buffer>>::sInstance);
  if (qword_27E552080)
  {
    goto LABEL_2;
  }

  v3 = operator new(0xA8uLL);
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = &unk_2853A2260;
  v4 = (v3 + 24);
  *(v3 + 3) = &unk_2853A22B0;
  *(v3 + 4) = 850045863;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 14) = 0;
  *(v3 + 13) = 0;
  *(v3 + 11) = 0;
  *(v3 + 12) = v3 + 104;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  v5 = off_27E552088;
  qword_27E552080 = (v3 + 24);
  off_27E552088 = v3;
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

LABEL_2:
    v4 = qword_27E552080;
    v3 = off_27E552088;
    if (!off_27E552088)
    {
      goto LABEL_8;
    }
  }

  atomic_fetch_add_explicit(v3 + 1, 1uLL, memory_order_relaxed);
LABEL_8:
  pthread_mutex_unlock(&ctu::Singleton<support::log::buffer,support::log::buffer,ctu::PthreadMutexGuardPolicy<support::log::buffer>>::sInstance);
  v8 = *(v4 + 80);
  v7 = v4 + 80;
  v6 = v8;
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = v7;
  do
  {
    v10 = *(v6 + 32);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v6;
    }

    v6 = *(v6 + 8 * v12);
  }

  while (v6);
  if (v9 == v7 || *(v9 + 32) > a2)
  {
LABEL_16:
    v9 = v7;
  }

  if (!v3 || atomic_fetch_add(v3 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (v9 != v7)
    {
      goto LABEL_20;
    }

LABEL_24:

    free(a2);
    return;
  }

  (*(*v3 + 16))(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (v9 == v7)
  {
    goto LABEL_24;
  }

LABEL_20:
  pthread_mutex_lock(&ctu::Singleton<support::log::buffer,support::log::buffer,ctu::PthreadMutexGuardPolicy<support::log::buffer>>::sInstance);
  if (!qword_27E552080)
  {
    v13 = operator new(0xA8uLL);
    *(v13 + 1) = 0;
    *(v13 + 2) = 0;
    *v13 = &unk_2853A2260;
    *(v13 + 3) = &unk_2853A22B0;
    *(v13 + 4) = 850045863;
    *(v13 + 40) = 0u;
    *(v13 + 56) = 0u;
    *(v13 + 72) = 0u;
    *(v13 + 14) = 0;
    *(v13 + 13) = 0;
    *(v13 + 11) = 0;
    *(v13 + 12) = v13 + 104;
    *(v13 + 120) = 0u;
    *(v13 + 136) = 0u;
    *(v13 + 152) = 0u;
    v14 = off_27E552088;
    qword_27E552080 = (v13 + 24);
    off_27E552088 = v13;
    if (!v14)
    {
      v84 = v13;
      goto LABEL_31;
    }

    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }
  }

  v13 = off_27E552088;
  v84 = off_27E552088;
  if (off_27E552088)
  {
LABEL_31:
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<support::log::buffer,support::log::buffer,ctu::PthreadMutexGuardPolicy<support::log::buffer>>::sInstance);
  pthread_mutex_lock(&ctu::Singleton<support::log::buffer,support::log::buffer,ctu::PthreadMutexGuardPolicy<support::log::buffer>>::sInstance);
  if (qword_27E552080)
  {
    goto LABEL_33;
  }

  v15 = operator new(0xA8uLL);
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  *v15 = &unk_2853A2260;
  v16 = (v15 + 24);
  *(v15 + 3) = &unk_2853A22B0;
  *(v15 + 4) = 850045863;
  *(v15 + 40) = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 72) = 0u;
  *(v15 + 14) = 0;
  *(v15 + 13) = 0;
  *(v15 + 11) = 0;
  *(v15 + 12) = v15 + 104;
  *(v15 + 120) = 0u;
  *(v15 + 136) = 0u;
  *(v15 + 152) = 0u;
  v17 = off_27E552088;
  qword_27E552080 = (v15 + 24);
  off_27E552088 = v15;
  if (v17)
  {
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

LABEL_33:
    v16 = qword_27E552080;
    v15 = off_27E552088;
    v85 = off_27E552088;
    if (!off_27E552088)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v85 = v15;
LABEL_39:
  atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
LABEL_40:
  pthread_mutex_unlock(&ctu::Singleton<support::log::buffer,support::log::buffer,ctu::PthreadMutexGuardPolicy<support::log::buffer>>::sInstance);
  std::mutex::lock((v16 + 8));
  v18 = *(v16 + 80);
  if (!v18)
  {
    goto LABEL_120;
  }

  v19 = v16 + 80;
  do
  {
    v20 = *(v18 + 32);
    v11 = v20 >= a2;
    v21 = v20 < a2;
    if (v11)
    {
      v19 = v18;
    }

    v18 = *(v18 + 8 * v21);
  }

  while (v18);
  if (v19 == v16 + 80 || *(v19 + 32) > a2)
  {
LABEL_120:
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CF5740](exception, "attempting to put back a buffer the instance does not own");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v22 = *(v16 + 104);
  v23 = *(v16 + 112);
  v24 = *(v16 + 104);
  v25 = v23 - v24;
  if (v23 == v24)
  {
    v26 = 0;
  }

  else
  {
    v26 = ((v23 - v24) << 6) - 1;
  }

  v28 = *(v16 + 128);
  v27 = *(v16 + 136);
  v29 = v27 + v28;
  if (v26 != v27 + v28)
  {
    goto LABEL_110;
  }

  if (v28 < 0x200)
  {
    v30 = *(v16 + 120);
    v31 = *(v16 + 96);
    if (v25 < (v30 - v31))
    {
      v32 = operator new(0x1000uLL);
      if (v30 != v23)
      {
        *v23 = v32;
        *(v16 + 112) = v23 + 8;
        goto LABEL_109;
      }

      if (v24 != v31)
      {
        v43 = v24;
LABEL_108:
        *(v43 - 1) = v32;
        v86 = v32;
        *(v16 + 104) = v43;
        std::__split_buffer<char **>::emplace_back<char **&>((v16 + 96), &v86);
        goto LABEL_109;
      }

      if (v23 == v24)
      {
        v66 = 1;
      }

      else
      {
        v66 = (v30 - v24) >> 2;
      }

      if (!(v66 >> 61))
      {
        v67 = v32;
        v68 = operator new(8 * v66);
        v32 = v67;
        v69 = (v66 + 3) >> 2;
        v43 = &v68[8 * v69];
        v70 = v43;
        if (v23 != v24)
        {
          v70 = &v43[v25];
          v71 = v23 - v24 - 8;
          v72 = &v68[8 * v69];
          v73 = v24;
          if (v71 < 0x38)
          {
            goto LABEL_126;
          }

          v74 = &v68[8 * v69];
          v72 = v74;
          v73 = v24;
          if ((v74 - v24) < 0x20)
          {
            goto LABEL_126;
          }

          v75 = (v71 >> 3) + 1;
          v76 = 8 * (v75 & 0x3FFFFFFFFFFFFFFCLL);
          v72 = &v43[v76];
          v73 = &v24[v76];
          v77 = (v24 + 16);
          v78 = v74 + 16;
          v79 = v75 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v80 = *v77;
            *(v78 - 1) = *(v77 - 1);
            *v78 = v80;
            v77 += 2;
            v78 += 2;
            v79 -= 4;
          }

          while (v79);
          if (v75 != (v75 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_126:
            do
            {
              v81 = *v73;
              v73 += 8;
              *v72 = v81;
              v72 += 8;
            }

            while (v72 != v70);
          }
        }

        *(v16 + 96) = v68;
        *(v16 + 104) = v43;
        *(v16 + 112) = v70;
        *(v16 + 120) = &v68[8 * v66];
        if (v24)
        {
          operator delete(v31);
          v32 = v67;
          v43 = *(v16 + 104);
        }

        goto LABEL_108;
      }

LABEL_122:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v33 = (v30 - v31) >> 2;
    if (v30 == v31)
    {
      v33 = 1;
    }

    if (v33 >> 61)
    {
      goto LABEL_122;
    }

    v34 = 8 * v33;
    v35 = operator new(8 * v33);
    v36 = operator new(0x1000uLL);
    v37 = v36;
    v38 = &v35[v25];
    v39 = &v35[v34];
    if (v25 != v34)
    {
      goto LABEL_63;
    }

    if (v25 >= 1)
    {
      v38 -= ((v25 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
LABEL_63:
      *v38 = v36;
      v40 = v38 + 8;
      if (v23 != v24)
      {
        goto LABEL_77;
      }

LABEL_64:
      v41 = v38;
LABEL_65:
      v42 = *(v16 + 96);
      *(v16 + 96) = v35;
      *(v16 + 104) = v41;
      *(v16 + 112) = v40;
      *(v16 + 120) = v39;
      if (v42)
      {
        operator delete(v42);
      }

      goto LABEL_109;
    }

    if (v23 == v24)
    {
      v44 = 1;
    }

    else
    {
      v44 = v25 >> 2;
    }

    if (v44 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v38 = operator new(8 * v44);
    v39 = &v38[8 * v44];
    operator delete(v35);
    v45 = *(v16 + 104);
    v23 = *(v16 + 112);
    v35 = v38;
    *v38 = v37;
    v40 = v38 + 8;
    if (v23 == v45)
    {
      goto LABEL_64;
    }

LABEL_77:
    while (v38 != v35)
    {
      v46 = v38;
LABEL_76:
      v47 = *(v23 - 1);
      v23 -= 8;
      *(v46 - 1) = v47;
      v41 = v46 - 8;
      v38 = v41;
      if (v23 == *(v16 + 104))
      {
        goto LABEL_65;
      }
    }

    if (v40 < v39)
    {
      v46 = &v35[8 * ((((v39 - v40) >> 3) + 1 + ((((v39 - v40) >> 3) + 1) >> 63)) >> 1)];
      v49 = v40 - v35;
      v48 = v40 == v35;
      v40 += 8 * ((((v39 - v40) >> 3) + 1 + ((((v39 - v40) >> 3) + 1) >> 63)) >> 1);
      if (!v48)
      {
        memmove(v46, v38, v49);
      }

      goto LABEL_76;
    }

    if (v39 == v35)
    {
      v50 = 1;
    }

    else
    {
      v50 = (v39 - v35) >> 2;
    }

    if (v50 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v51 = operator new(8 * v50);
    v52 = v51;
    v53 = (v50 + 3) >> 2;
    v46 = &v51[8 * v53];
    v54 = v40 - v35;
    v48 = v40 == v35;
    v40 = v46;
    if (!v48)
    {
      v40 = &v46[v54];
      v55 = v54 - 8;
      if (v55 >= 0x18 && (v56 = 8 * v53, (&v51[8 * v53] - v38) >= 0x20))
      {
        v60 = (v55 >> 3) + 1;
        v61 = 8 * (v60 & 0x3FFFFFFFFFFFFFFCLL);
        v57 = &v46[v61];
        v58 = &v38[v61];
        v62 = (v38 + 16);
        v63 = &v51[v56 + 16];
        v64 = v60 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v65 = *v62;
          *(v63 - 1) = *(v62 - 1);
          *v63 = v65;
          v62 += 2;
          v63 += 32;
          v64 -= 4;
        }

        while (v64);
        if (v60 == (v60 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_90;
        }
      }

      else
      {
        v57 = &v51[8 * v53];
        v58 = v38;
      }

      do
      {
        v59 = *v58;
        v58 += 8;
        *v57 = v59;
        v57 += 8;
      }

      while (v57 != v40);
    }

LABEL_90:
    v39 = &v51[8 * v50];
    operator delete(v35);
    v35 = v52;
    goto LABEL_76;
  }

  *(v16 + 128) = v28 - 512;
  v86 = *v24;
  *(v16 + 104) = v24 + 8;
  std::__split_buffer<char **>::emplace_back<char **&>((v16 + 96), &v86);
LABEL_109:
  v24 = *(v16 + 104);
  v27 = *(v16 + 136);
  v29 = *(v16 + 128) + v27;
LABEL_110:
  *(*&v24[(v29 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v29 & 0x1FF)) = a2;
  *(v16 + 136) = v27 + 1;
  std::mutex::unlock((v16 + 8));
  if (v85 && !atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v85->__on_zero_shared)(v85);
    std::__shared_weak_count::__release_weak(v85);
    v82 = v84;
    if (!v84)
    {
      return;
    }
  }

  else
  {
    v82 = v84;
    if (!v84)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v82->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v82->__on_zero_shared)(v82);

    std::__shared_weak_count::__release_weak(v82);
  }
}

void sub_241A22CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  operator delete(v13);
  operator delete(v12);
  std::mutex::unlock((v14 + 8));
  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](&a12);
  std::shared_ptr<TCP>::~shared_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void support::log::manager::add_delegates(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != a2)
  {
    v5 = a1 + 120;
    do
    {
      std::mutex::lock((a1 + 8));
      v6 = operator new(0x18uLL);
      v7 = *(v2 + 16);
      *(v2 + 16) = 0;
      v6[1] = v5;
      v6[2] = v7;
      v8 = *(a1 + 120);
      *v6 = v8;
      *(v8 + 8) = v6;
      *(a1 + 120) = v6;
      ++*(a1 + 136);
      std::mutex::unlock((a1 + 8));
      v2 = *(v2 + 8);
    }

    while (v2 != a2);
  }
}

void support::log::manager::set_defaults(support::log::manager *this)
{
  std::mutex::lock((this + 8));
  *(this + 112) = 3;
  if (*(this + 17))
  {
    v2 = *(this + 16);
    v3 = *(*(this + 15) + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(this + 17) = 0;
    if (v2 != (this + 120))
    {
      do
      {
        v6 = *(v2 + 1);
        v5 = *(v2 + 2);
        *(v2 + 2) = 0;
        if (v5)
        {
          (*(*v5 + 16))(v5);
        }

        operator delete(v2);
        v2 = v6;
      }

      while (v6 != (this + 120));
    }
  }

  std::mutex::unlock((this + 8));
}

void support::log::manager::message_delegates(support::log::manager *a1, uint64_t a2, char *a3)
{
  v4 = (a1 + 120);
  v5 = *(a1 + 16);
  if (v5 != (a1 + 120))
  {
    do
    {
      a1 = (***(v5 + 16))(*(v5 + 16), a2, a3);
      v5 = *(v5 + 8);
    }

    while (v5 != v4);
  }

  support::log::manager::release_log_buffer(a1, a3);
}

void support::log::stdout_delegate::create(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x20uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *v4 = &unk_2853A2038;
  v4[1] = v6;
  v4[2] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(v4 + 24) = 1;
    std::__shared_weak_count::__release_weak(v7);
    *v5 = &unk_2853A20B0;
    std::__shared_weak_count::__release_weak(v7);
    *a2 = v5;
  }

  else
  {
    *(v4 + 24) = 1;
    *v4 = &unk_2853A20B0;
    *a2 = v4;
  }
}

uint64_t support::log::stdout_delegate::stdout_delegate(uint64_t result, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *result = &unk_2853A2038;
  *(result + 8) = v3;
  *(result + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(result + 24) = 1;
    v4 = result;
    std::__shared_weak_count::__release_weak(v2);
    result = v4;
  }

  else
  {
    *(result + 24) = 1;
  }

  *result = &unk_2853A20B0;
  return result;
}

{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *result = &unk_2853A2038;
  *(result + 8) = v3;
  *(result + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(result + 24) = 1;
    v4 = result;
    std::__shared_weak_count::__release_weak(v2);
    result = v4;
  }

  else
  {
    *(result + 24) = 1;
  }

  *result = &unk_2853A20B0;
  return result;
}

double support::log::stdout_delegate::create@<D0>(void *a1@<X8>)
{
  v3 = operator new(0x20uLL);
  result = 0.0;
  *v3 = 0u;
  v3[1] = 0u;
  *v3 = &unk_2853A20B0;
  *a1 = v3;
  return result;
}

void support::log::stdout_delegate::message(uint64_t a1, uint64_t a2, const char *a3)
{
  if (a3)
  {
    memset(v6, 170, sizeof(v6));
    (*(*a1 + 24))(v6);
    if (v6[2])
    {
      if (v6[1])
      {
        v4 = std::__shared_weak_count::lock(v6[1]);
        if (v4)
        {
          v5 = v4;
          if (v6[0])
          {
            fprintf(*MEMORY[0x277D85E08], "%s\n", a3);
          }

          if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v5->__on_zero_shared)(v5);
            std::__shared_weak_count::__release_weak(v5);
          }
        }
      }
    }

    else
    {
      fprintf(*MEMORY[0x277D85E08], "%s\n", a3);
    }

    if (LOBYTE(v6[2]) == 1)
    {
      if (v6[1])
      {
        std::__shared_weak_count::__release_weak(v6[1]);
      }
    }
  }
}

support::log::manager_global *support::log::manager_global::manager_global(support::log::manager_global *this)
{
  *(&__p.__r_.__value_.__s + 23) = 6;
  strcpy(&__p, "global");
  v10 = 0;
  v11 = &unk_2853A2068;
  v12 = 3;
  v8 = &v8;
  v9 = &v8;
  support::log::manager::manager(this, &__p, &v11, &v8);
  if (v10)
  {
    v2 = v9;
    v3 = *(v8 + 8);
    v4 = *v9;
    *(v4 + 8) = v3;
    *v3 = v4;
    v10 = 0;
    if (v2 != &v8)
    {
      do
      {
        v7 = v2[1];
        v6 = v2[2];
        v2[2] = 0;
        if (v6)
        {
          (*(*v6 + 16))(v6);
        }

        operator delete(v2);
        v2 = v7;
      }

      while (v7 != &v8);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *this = &unk_2853A20E0;
  return this;
}

void sub_241A234B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  std::list<std::unique_ptr<support::log::delegate>>::~list(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *support::log::client::descriptor::descriptor(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2853A2110;
  descriptor_instance = support::log::global_client_descriptor_manager::get_descriptor_instance(a2, a3);
  a1[1] = descriptor_instance;
  a1[2] = descriptor_instance;
  a1[3] = descriptor_instance + 1;
  a1[4] = descriptor_instance + 4;
  a1[5] = descriptor_instance + 7;
  return a1;
}

{
  *a1 = &unk_2853A2110;
  descriptor_instance = support::log::global_client_descriptor_manager::get_descriptor_instance(a2, a3);
  a1[1] = descriptor_instance;
  a1[2] = descriptor_instance;
  a1[3] = descriptor_instance + 1;
  a1[4] = descriptor_instance + 4;
  a1[5] = descriptor_instance + 7;
  return a1;
}

uint64_t *support::log::global_client_descriptor_manager::get_descriptor_instance(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals))
  {
    *&qword_27E5523E0 = 0u;
    *&qword_27E5523D0 = 0u;
    dword_27E5523F0 = 1065353216;
    __cxa_guard_release(&_MergedGlobals);
  }

  std::mutex::lock(&support::log::global_client_descriptor_manager::get_descriptor_instance(std::string const&,std::string const&)::sMutex);
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = *(a1 + 8);
  }

  v6 = v5 + 1;
  if (v5 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v6 < 0x17)
  {
    memset(&v70, 0, sizeof(v70));
    v8 = &v70;
    *(&v70.__r_.__value_.__s + 23) = v5 + 1;
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v6 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v6 | 7) + 1;
    }

    v8 = operator new(v7);
    v70.__r_.__value_.__l.__size_ = v5 + 1;
    v70.__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
    v70.__r_.__value_.__r.__words[0] = v8;
  }

  v9 = *a1;
  if (v4 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  memmove(v8, v10, v5);
LABEL_16:
  *&v8[v5] = 44;
  v11 = *(a2 + 23);
  if (v11 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  if (v11 >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    v13 = *(a2 + 8);
  }

  v14 = std::string::append(&v70, v12, v13);
  __p = *v14;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
    if (std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>>>::find<std::string>(&__p))
    {
      goto LABEL_87;
    }
  }

  else if (std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>>>::find<std::string>(&__p))
  {
    goto LABEL_87;
  }

  v15 = operator new(0x40uLL);
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v68, *a1, *(a1 + 8));
  }

  else
  {
    v68 = *a1;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v67, *a2, *(a2 + 8));
  }

  else
  {
    v67 = *a2;
  }

  *v15 = &unk_2853A21E0;
  v16 = v15 + 8;
  *(v15 + 8) = v68;
  memset(&v68, 0, sizeof(v68));
  *(v15 + 32) = v67;
  memset(&v67, 0, sizeof(v67));
  if (v15[31] < 0)
  {
    v16 = *v16;
    v17 = v15 + 32;
    if ((v15[55] & 0x80000000) == 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v17 = v15 + 32;
    if ((v15[55] & 0x80000000) == 0)
    {
      goto LABEL_34;
    }
  }

  v17 = *v17;
LABEL_34:
  *(v15 + 7) = os_log_create(v16, v17);
  v18 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  v19 = *&__p.__r_.__value_.__l.__data_;
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

  v22 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](p_p, size);
  v23 = v22;
  v24 = qword_27E5523D8;
  if (qword_27E5523D8)
  {
    v25 = vcnt_s8(qword_27E5523D8);
    v25.i16[0] = vaddlv_u8(v25);
    if (v25.u32[0] > 1uLL)
    {
      v26 = v22;
      if (v22 >= qword_27E5523D8)
      {
        v26 = v22 % qword_27E5523D8;
      }
    }

    else
    {
      v26 = (qword_27E5523D8 - 1) & v22;
    }

    v27 = *(qword_27E5523D0 + 8 * v26);
    if (v27)
    {
      v28 = *v27;
      if (*v27)
      {
        if (v25.u32[0] < 2uLL)
        {
          while (1)
          {
            v33 = v28[1];
            if (v33 == v23)
            {
              v34 = *(v28 + 39);
              v35 = v34;
              if (v34 < 0)
              {
                v34 = v28[3];
              }

              if (v34 == size)
              {
                v36 = v35 >= 0 ? (v28 + 2) : v28[2];
                if (!memcmp(v36, p_p, size))
                {
                  goto LABEL_85;
                }
              }
            }

            else if ((v33 & (v24 - 1)) != v26)
            {
              goto LABEL_76;
            }

            v28 = *v28;
            if (!v28)
            {
              goto LABEL_76;
            }
          }
        }

        do
        {
          v29 = v28[1];
          if (v29 == v23)
          {
            v30 = *(v28 + 39);
            v31 = v30;
            if (v30 < 0)
            {
              v30 = v28[3];
            }

            if (v30 == size)
            {
              v32 = v31 >= 0 ? (v28 + 2) : v28[2];
              if (!memcmp(v32, p_p, size))
              {
                goto LABEL_85;
              }
            }
          }

          else
          {
            if (v29 >= v24)
            {
              v29 %= v24;
            }

            if (v29 != v26)
            {
              break;
            }
          }

          v28 = *v28;
        }

        while (v28);
      }
    }
  }

  else
  {
    v26 = 0xAAAAAAAAAAAAAAAALL;
  }

LABEL_76:
  v37 = operator new(0x30uLL);
  v70.__r_.__value_.__r.__words[0] = v37;
  v70.__r_.__value_.__l.__size_ = &qword_27E5523D0;
  v70.__r_.__value_.__r.__words[2] = 0;
  *v37 = 0;
  *(v37 + 1) = v23;
  if (v18 < 0)
  {
    v38 = v37;
    std::string::__init_copy_ctor_external((v37 + 16), v19, *(&v19 + 1));
    v37 = v38;
  }

  else
  {
    *(v37 + 16) = __p;
  }

  *(v37 + 5) = v15;
  v70.__r_.__value_.__s.__data_[16] = 1;
  v39 = (qword_27E5523E8 + 1);
  if (!v24 || (*&dword_27E5523F0 * v24) < v39)
  {
    v46 = 1;
    if (v24 >= 3)
    {
      v46 = (v24 & (v24 - 1)) != 0;
    }

    v47 = v46 | (2 * v24);
    v48 = vcvtps_u32_f32(v39 / *&dword_27E5523F0);
    if (v47 <= v48)
    {
      prime = v48;
    }

    else
    {
      prime = v47;
    }

    if (prime == 1)
    {
      prime = 2;
      v50 = &unk_27E552000;
    }

    else
    {
      v50 = &unk_27E552000;
      if ((prime & (prime - 1)) != 0)
      {
        prime = std::__next_prime(prime);
      }
    }

    v24 = v50[123];
    if (prime > v24)
    {
LABEL_104:
      if (prime >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v51 = operator new(8 * prime);
      v52 = qword_27E5523D0;
      qword_27E5523D0 = v51;
      if (v52)
      {
        operator delete(v52);
        v51 = qword_27E5523D0;
      }

      qword_27E5523D8 = prime;
      bzero(v51, 8 * prime);
      v53 = qword_27E5523E0;
      if (!qword_27E5523E0)
      {
        goto LABEL_134;
      }

      v54 = *(qword_27E5523E0 + 8);
      v55 = prime - 1;
      if ((prime & (prime - 1)) == 0)
      {
        v56 = v54 & v55;
        *(v51 + v56) = &qword_27E5523E0;
        for (i = *v53; *v53; i = *v53)
        {
          v58 = i[1] & v55;
          if (v58 == v56)
          {
            v53 = i;
          }

          else if (*(v51 + v58))
          {
            *v53 = *i;
            *i = **(v51 + v58);
            **(v51 + v58) = i;
          }

          else
          {
            *(v51 + v58) = v53;
            v53 = i;
            v56 = v58;
          }
        }

        goto LABEL_134;
      }

      if (v54 >= prime)
      {
        v54 %= prime;
      }

      *(v51 + v54) = &qword_27E5523E0;
      v62 = *v53;
      if (!*v53)
      {
LABEL_134:
        v24 = prime;
        v64 = prime - 1;
        if ((prime & (prime - 1)) != 0)
        {
          goto LABEL_135;
        }

        goto LABEL_150;
      }

      while (1)
      {
        v63 = v62[1];
        if (v63 >= prime)
        {
          v63 %= prime;
        }

        if (v63 == v54)
        {
          goto LABEL_128;
        }

        if (*(v51 + v63))
        {
          *v53 = *v62;
          *v62 = **(v51 + v63);
          **(v51 + v63) = v62;
          v62 = v53;
LABEL_128:
          v53 = v62;
          v62 = *v62;
          if (!v62)
          {
            goto LABEL_134;
          }
        }

        else
        {
          *(v51 + v63) = v53;
          v53 = v62;
          v62 = *v62;
          v54 = v63;
          if (!v62)
          {
            goto LABEL_134;
          }
        }
      }
    }

    if (prime < v24)
    {
      v59 = vcvtps_u32_f32(qword_27E5523E8 / *&dword_27E5523F0);
      if (v24 < 3 || (v60 = vcnt_s8(v24), v60.i16[0] = vaddlv_u8(v60), v60.u32[0] > 1uLL))
      {
        v59 = std::__next_prime(v59);
      }

      else
      {
        v61 = 1 << -__clz(v59 - 1);
        if (v59 >= 2)
        {
          v59 = v61;
        }
      }

      if (prime <= v59)
      {
        prime = v59;
      }

      if (prime < v24)
      {
        if (!prime)
        {
          v65 = qword_27E5523D0;
          qword_27E5523D0 = 0;
          if (v65)
          {
            operator delete(v65);
          }

          v24 = 0;
          v50[123] = 0;
          v64 = -1;
          goto LABEL_150;
        }

        goto LABEL_104;
      }

      v24 = v50[123];
    }

    v64 = v24 - 1;
    if ((v24 & (v24 - 1)) != 0)
    {
LABEL_135:
      if (v23 >= v24)
      {
        v26 = v23 % v24;
        v40 = qword_27E5523D0;
        v41 = *(qword_27E5523D0 + 8 * (v23 % v24));
        v42 = v70.__r_.__value_.__r.__words[0];
        if (v41)
        {
          goto LABEL_82;
        }
      }

      else
      {
        v26 = v23;
        v40 = qword_27E5523D0;
        v41 = *(qword_27E5523D0 + 8 * v23);
        v42 = v70.__r_.__value_.__r.__words[0];
        if (v41)
        {
          goto LABEL_82;
        }
      }

      goto LABEL_151;
    }

LABEL_150:
    v26 = v64 & v23;
    v40 = qword_27E5523D0;
    v41 = *(qword_27E5523D0 + 8 * (v64 & v23));
    v42 = v70.__r_.__value_.__r.__words[0];
    if (v41)
    {
      goto LABEL_82;
    }

    goto LABEL_151;
  }

  v40 = qword_27E5523D0;
  v41 = *(qword_27E5523D0 + 8 * v26);
  v42 = v70.__r_.__value_.__r.__words[0];
  if (v41)
  {
LABEL_82:
    *v42 = *v41;
    goto LABEL_83;
  }

LABEL_151:
  *v42 = qword_27E5523E0;
  qword_27E5523E0 = v42;
  *(v40 + 8 * v26) = &qword_27E5523E0;
  if (!*v42)
  {
    goto LABEL_84;
  }

  v66 = *(*v42 + 8);
  if ((v24 & (v24 - 1)) != 0)
  {
    if (v66 >= v24)
    {
      v66 %= v24;
    }

    v41 = (v40 + 8 * v66);
  }

  else
  {
    v41 = (v40 + 8 * (v66 & (v24 - 1)));
  }

LABEL_83:
  *v41 = v42;
LABEL_84:
  ++qword_27E5523E8;
LABEL_85:
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_87:
      v43 = std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>>>::find<std::string>(&__p);
      if (v43)
      {
        goto LABEL_88;
      }

LABEL_100:
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }
  }

  else if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_87;
  }

  operator delete(v68.__r_.__value_.__l.__data_);
  v43 = std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>>>::find<std::string>(&__p);
  if (!v43)
  {
    goto LABEL_100;
  }

LABEL_88:
  v44 = v43[5];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::mutex::unlock(&support::log::global_client_descriptor_manager::get_descriptor_instance(std::string const&,std::string const&)::sMutex);
  return v44;
}
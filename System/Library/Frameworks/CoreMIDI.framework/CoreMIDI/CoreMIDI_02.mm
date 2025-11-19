uint64_t OwnedPtrVector<MIDICIServerSession *>::~OwnedPtrVector(uint64_t a1)
{
  *a1 = &unk_284A46A10;
  OwnedPtrVector<MIDICIServerSession *>::erase(a1, *(a1 + 8), *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

void *OwnedPtrVector<MIDICIServerSession *>::erase(void *result, uint64_t *__dst, uint64_t *__src)
{
  if (__src != __dst)
  {
    v5 = result;
    v6 = __dst;
    do
    {
      result = *v6;
      if (*v6)
      {
        result = (*(*result + 8))(result);
      }

      ++v6;
    }

    while (v6 != __src);
    v7 = v5[2];
    v8 = v7 - __src;
    if (v7 != __src)
    {
      result = memmove(__dst, __src, v7 - __src);
    }

    v5[2] = __dst + v8;
  }

  return result;
}

void OwnedPtrVector<MIDICIServerSession *>::~OwnedPtrVector(uint64_t a1)
{
  OwnedPtrVector<MIDICIServerSession *>::~OwnedPtrVector(a1);

  JUMPOUT(0x2383C8250);
}

BOOL SynchronizedListManager<MIDICIServerResponder>::Empty(uint64_t a1)
{
  std::recursive_mutex::lock(*(a1 + 8));
  v2 = *(a1 + 24) == *(a1 + 32);
  std::recursive_mutex::unlock(*(a1 + 8));
  return v2;
}

uint64_t SynchronizedListManager<MIDICIServerResponder>::Size(uint64_t a1)
{
  std::recursive_mutex::lock(*(a1 + 8));
  v2 = (*(a1 + 32) - *(a1 + 24)) >> 4;
  std::recursive_mutex::unlock(*(a1 + 8));
  return v2;
}

void SynchronizedListManager<MIDICIServerResponder>::Clear(uint64_t a1)
{
  std::recursive_mutex::lock(*(a1 + 8));
  std::vector<std::shared_ptr<LocalMIDIClient>>::clear[abi:ne200100]((a1 + 24));
  v2 = *(a1 + 8);

  std::recursive_mutex::unlock(v2);
}

BOOL SynchronizedListManager<MIDICIServerResponder>::ContainsShared(uint64_t a1, uint64_t *a2)
{
  std::recursive_mutex::lock(*(a1 + 8));
  v4 = *(a1 + 24);
  std::recursive_mutex::lock(*(a1 + 8));
  v5 = *(a1 + 32);
  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4 != v5)
  {
    while (*v4 != v7)
    {
      v4 += 2;
      if (v4 == v5)
      {
        v4 = v5;
        break;
      }
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::recursive_mutex::unlock(*(a1 + 8));
  std::recursive_mutex::unlock(*(a1 + 8));
  std::recursive_mutex::lock(*(a1 + 8));
  v8 = v4 != *(a1 + 32);
  std::recursive_mutex::unlock(*(a1 + 8));
  return v8;
}

BOOL SynchronizedListManager<MIDICIServerResponder>::Matches(uint64_t a1, uint64_t a2)
{
  std::recursive_mutex::lock(*(a1 + 8));
  v4 = *(a1 + 24);
  std::recursive_mutex::lock(*(a1 + 8));
  v5 = *(a1 + 32);
  if (v4 != v5)
  {
    while (1)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*(v7 + 84) == *(a2 + 84))
      {
        break;
      }

      v8 = 0;
      if (v6)
      {
        goto LABEL_8;
      }

LABEL_9:
      if (v8)
      {
        goto LABEL_12;
      }

      v4 += 2;
      if (v4 == v5)
      {
        v4 = v5;
        goto LABEL_12;
      }
    }

    v8 = *(v7 + 108) == *(a2 + 108);
    if (!v6)
    {
      goto LABEL_9;
    }

LABEL_8:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    goto LABEL_9;
  }

LABEL_12:
  std::recursive_mutex::unlock(*(a1 + 8));
  std::recursive_mutex::unlock(*(a1 + 8));
  std::recursive_mutex::lock(*(a1 + 8));
  v9 = v4 != *(a1 + 32);
  std::recursive_mutex::unlock(*(a1 + 8));
  return v9;
}

BOOL SynchronizedListManager<MIDICIServerResponder>::RemoveShared(uint64_t a1, uint64_t *a2)
{
  std::recursive_mutex::lock(*(a1 + 8));
  v4 = *(a1 + 24);
  std::recursive_mutex::lock(*(a1 + 8));
  v5 = *(a1 + 32);
  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4 != v5)
  {
    while (*v4 != v7)
    {
      v4 += 2;
      if (v4 == v5)
      {
        v4 = v5;
        goto LABEL_15;
      }
    }

    if (v4 != v5)
    {
      for (i = v4 + 2; i != v5; i += 2)
      {
        v9 = *i;
        if (*i != v7)
        {
          v10 = i[1];
          *i = 0;
          i[1] = 0;
          v11 = v4[1];
          *v4 = v9;
          v4[1] = v10;
          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          }

          v4 += 2;
        }
      }
    }
  }

LABEL_15:
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::recursive_mutex::unlock(*(a1 + 8));
  std::recursive_mutex::unlock(*(a1 + 8));
  std::recursive_mutex::lock(*(a1 + 8));
  v12 = *(a1 + 32);
  std::recursive_mutex::unlock(*(a1 + 8));
  std::recursive_mutex::lock(*(a1 + 8));
  std::recursive_mutex::lock(*(a1 + 8));
  std::vector<std::shared_ptr<MIDICIServerResponder>>::erase((a1 + 24), v4, *(a1 + 32));
  std::recursive_mutex::unlock(*(a1 + 8));
  std::recursive_mutex::unlock(*(a1 + 8));
  return v12 != v4;
}

uint64_t std::vector<std::shared_ptr<MIDICIServerResponder>>::erase(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v12 = a2;
    }

    else
    {
      v6 = -*a1;
      v7 = *a1 + a2;
      v8 = *a1 + a3;
      do
      {
        v9 = (v8 + v6);
        v10 = *(v8 + v6);
        *v9 = 0;
        v9[1] = 0;
        v11 = *(v7 + v6 + 8);
        *(v7 + v6) = v10;
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        v7 += 16;
        v8 += 16;
      }

      while (v8 + v6 != v5);
      v12 = v7 + v6;
      v5 = a1[1];
    }

    while (v5 != v12)
    {
      v13 = *(v5 - 8);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v5 -= 16;
    }

    a1[1] = v12;
  }

  return a2;
}

uint64_t SynchronizedListManager<MIDICIServerResponder>::AddShared(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  v21 = *a2;
  v22 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = (*(*a1 + 24))(a1, &v21);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if ((v5 & 1) == 0)
  {
    std::recursive_mutex::lock(*(a1 + 8));
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (v6 >= v7)
    {
      v10 = *(a1 + 24);
      v11 = (v6 - v10) >> 4;
      v12 = v11 + 1;
      if ((v11 + 1) >> 60)
      {
        std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
      }

      v13 = v7 - v10;
      if (v13 >> 3 > v12)
      {
        v12 = v13 >> 3;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF0)
      {
        v14 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        if (!(v14 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v15 = 16 * v11;
      v16 = *a2;
      *(16 * v11) = *a2;
      if (*(&v16 + 1))
      {
        atomic_fetch_add_explicit((*(&v16 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v9 = (v15 + 16);
      v17 = *(a1 + 24);
      v18 = *(a1 + 32) - v17;
      v19 = v15 - v18;
      memcpy((v15 - v18), v17, v18);
      *(a1 + 24) = v19;
      *(a1 + 32) = v9;
      *(a1 + 40) = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      v8 = a2[1];
      *v6 = *a2;
      v6[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = v6 + 2;
    }

    *(a1 + 32) = v9;
    std::recursive_mutex::unlock(*(a1 + 8));
  }

  return v5 ^ 1u;
}

BOOL SynchronizedListManager<MIDICIPeer>::Empty(uint64_t a1)
{
  std::recursive_mutex::lock(*(a1 + 8));
  v2 = *(a1 + 24) == *(a1 + 32);
  std::recursive_mutex::unlock(*(a1 + 8));
  return v2;
}

uint64_t SynchronizedListManager<MIDICIPeer>::Size(uint64_t a1)
{
  std::recursive_mutex::lock(*(a1 + 8));
  v2 = (*(a1 + 32) - *(a1 + 24)) >> 4;
  std::recursive_mutex::unlock(*(a1 + 8));
  return v2;
}

void SynchronizedListManager<MIDICIPeer>::Clear(uint64_t a1)
{
  std::recursive_mutex::lock(*(a1 + 8));
  std::vector<std::shared_ptr<LocalMIDIClient>>::clear[abi:ne200100]((a1 + 24));
  v2 = *(a1 + 8);

  std::recursive_mutex::unlock(v2);
}

BOOL SynchronizedListManager<MIDICIPeer>::ContainsShared(uint64_t a1, uint64_t *a2)
{
  std::recursive_mutex::lock(*(a1 + 8));
  v4 = *(a1 + 24);
  std::recursive_mutex::lock(*(a1 + 8));
  v5 = *(a1 + 32);
  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4 != v5)
  {
    while (*v4 != v7)
    {
      v4 += 2;
      if (v4 == v5)
      {
        v4 = v5;
        break;
      }
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::recursive_mutex::unlock(*(a1 + 8));
  std::recursive_mutex::unlock(*(a1 + 8));
  std::recursive_mutex::lock(*(a1 + 8));
  v8 = v4 != *(a1 + 32);
  std::recursive_mutex::unlock(*(a1 + 8));
  return v8;
}

BOOL SynchronizedListManager<MIDICIPeer>::Matches(uint64_t a1, _DWORD *a2)
{
  std::recursive_mutex::lock(*(a1 + 8));
  v4 = *(a1 + 24);
  std::recursive_mutex::lock(*(a1 + 8));
  v5 = *(a1 + 32);
  if (v4 != v5)
  {
    while (1)
    {
      v7 = *v4;
      v6 = *(v4 + 8);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*v7 == *a2)
      {
        break;
      }

      v8 = 0;
      if (v6)
      {
        goto LABEL_8;
      }

LABEL_9:
      if (v8)
      {
        goto LABEL_12;
      }

      v4 += 16;
      if (v4 == v5)
      {
        v4 = v5;
        goto LABEL_12;
      }
    }

    v8 = v7[6] == a2[6];
    if (!v6)
    {
      goto LABEL_9;
    }

LABEL_8:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    goto LABEL_9;
  }

LABEL_12:
  std::recursive_mutex::unlock(*(a1 + 8));
  std::recursive_mutex::unlock(*(a1 + 8));
  std::recursive_mutex::lock(*(a1 + 8));
  v9 = v4 != *(a1 + 32);
  std::recursive_mutex::unlock(*(a1 + 8));
  return v9;
}

BOOL SynchronizedListManager<MIDICIPeer>::RemoveShared(uint64_t a1, uint64_t *a2)
{
  std::recursive_mutex::lock(*(a1 + 8));
  v4 = *(a1 + 24);
  std::recursive_mutex::lock(*(a1 + 8));
  v5 = *(a1 + 32);
  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4 != v5)
  {
    while (*v4 != v7)
    {
      v4 += 2;
      if (v4 == v5)
      {
        v4 = v5;
        goto LABEL_15;
      }
    }

    if (v4 != v5)
    {
      for (i = v4 + 2; i != v5; i += 2)
      {
        v9 = *i;
        if (*i != v7)
        {
          v10 = i[1];
          *i = 0;
          i[1] = 0;
          v11 = v4[1];
          *v4 = v9;
          v4[1] = v10;
          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          }

          v4 += 2;
        }
      }
    }
  }

LABEL_15:
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::recursive_mutex::unlock(*(a1 + 8));
  std::recursive_mutex::unlock(*(a1 + 8));
  std::recursive_mutex::lock(*(a1 + 8));
  v12 = *(a1 + 32);
  std::recursive_mutex::unlock(*(a1 + 8));
  std::recursive_mutex::lock(*(a1 + 8));
  std::recursive_mutex::lock(*(a1 + 8));
  v13 = *(a1 + 32);
  if (v4 != v13)
  {
    while (v13 != v4)
    {
      v14 = *(v13 - 1);
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      v13 -= 2;
    }

    *(a1 + 32) = v4;
  }

  std::recursive_mutex::unlock(*(a1 + 8));
  std::recursive_mutex::unlock(*(a1 + 8));
  return v12 != v4;
}

uint64_t SynchronizedListManager<MIDICIPeer>::AddShared(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  v21 = *a2;
  v22 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = (*(*a1 + 24))(a1, &v21);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if ((v5 & 1) == 0)
  {
    std::recursive_mutex::lock(*(a1 + 8));
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (v6 >= v7)
    {
      v10 = *(a1 + 24);
      v11 = (v6 - v10) >> 4;
      v12 = v11 + 1;
      if ((v11 + 1) >> 60)
      {
        std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
      }

      v13 = v7 - v10;
      if (v13 >> 3 > v12)
      {
        v12 = v13 >> 3;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF0)
      {
        v14 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        if (!(v14 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v15 = 16 * v11;
      v16 = *a2;
      *(16 * v11) = *a2;
      if (*(&v16 + 1))
      {
        atomic_fetch_add_explicit((*(&v16 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v9 = (v15 + 16);
      v17 = *(a1 + 24);
      v18 = *(a1 + 32) - v17;
      v19 = v15 - v18;
      memcpy((v15 - v18), v17, v18);
      *(a1 + 24) = v19;
      *(a1 + 32) = v9;
      *(a1 + 40) = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      v8 = a2[1];
      *v6 = *a2;
      v6[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = v6 + 2;
    }

    *(a1 + 32) = v9;
    std::recursive_mutex::unlock(*(a1 + 8));
  }

  return v5 ^ 1u;
}

uint64_t MIDICIServerSession::Invalidate(MIDICIServerSession *this)
{
  v43 = *MEMORY[0x277D85DE8];
  gSessionManager();
  v2 = gSessionManager(void)::cisrvr;
  if (os_log_type_enabled(gSessionManager(void)::cisrvr, OS_LOG_TYPE_INFO))
  {
    v21 = 136315650;
    v22 = "MIDICIServerSession.mm";
    v23 = 1024;
    v24 = 269;
    v25 = 2048;
    *v26 = this;
    _os_log_impl(&dword_2371C2000, v2, OS_LOG_TYPE_INFO, "%25s:%-5d [*]MIDICIServerSession(%p)::Invalidate()", &v21, 0x1Cu);
  }

  v3 = *(this + 15);
  v4 = *(this + 19);
  v5 = *(this + 20);
  v6 = v3 + 8;
  if (*(v3 + 16) != *(v3 + 8))
  {
    gCIMsgEmitter();
    v7 = gCIMsgEmitter(void)::ciemit;
    if (os_log_type_enabled(gCIMsgEmitter(void)::ciemit, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(v3 + 16) - *(v3 + 8);
      v21 = 136315650;
      v22 = "MIDICIMessageEmitter.cpp";
      v23 = 1024;
      v24 = 49;
      v25 = 2048;
      *v26 = v8;
      _os_log_impl(&dword_2371C2000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d      Message already has %lu bytes. Checking continuation ...", &v21, 0x1Cu);
    }

    if (*(v3 + 176) != v4 || *(v3 + 180) != v5 || *(v3 + 184) != 126)
    {
      gCIMsgEmitter();
      v9 = gCIMsgEmitter(void)::ciemit;
      if (os_log_type_enabled(gCIMsgEmitter(void)::ciemit, OS_LOG_TYPE_ERROR))
      {
        v21 = 136315394;
        v22 = "MIDICIMessageEmitter.cpp";
        v23 = 1024;
        v24 = 52;
        v10 = "%25s:%-5d [!] MIDICIMessageEmitter::CreateCIMessage() can't continue message (kMIDINotPermitted)";
        v11 = v9;
        v12 = 18;
LABEL_32:
        _os_log_impl(&dword_2371C2000, v11, OS_LOG_TYPE_ERROR, v10, &v21, v12);
      }

LABEL_33:
      *(v3 + 16) = *(v3 + 8);
      return (*(**(this + 15) + 24))(*(this + 15));
    }

    v21 = 0;
    goto LABEL_21;
  }

  *(v3 + 176) = v4;
  *(v3 + 180) = 0xFFFFFFF;
  *(v3 + 184) = 32638;
  __src = 226459376;
  v40 = 382;
  v41 = 0;
  if (!(v4 >> 28))
  {
    v13 = vrev64_s16(vand_s8(vmovn_s32(vshlq_u32(vdupq_n_s32(v4), xmmword_23726C400)), 0x7F007F007F007FLL));
    LODWORD(v41) = vuzp1_s8(v13, v13).u32[0];
  }

  HIDWORD(v41) = 2139062143;
  gCIMsgEmitter();
  if (os_log_type_enabled(gCIMsgEmitter(void)::ciemit, OS_LOG_TYPE_DEBUG))
  {
    operator new();
  }

  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v6, *(v3 + 16), &__src, v42, 14);
  v14 = *(v3 + 184);
  if ((v14 & 0xFE) != 0x70)
  {
    v21 = 0;
    if ((v14 - 112) < 2)
    {
      std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v6, *(v3 + 16), (v3 + 161), (v3 + 172), 11);
    }

    else
    {
      if (v14 == 126)
      {
LABEL_21:
        v15 = *(v3 + 176);
        if (!(v15 >> 28))
        {
          v16 = vrev64_s16(vand_s8(vmovn_s32(vshlq_u32(vdupq_n_s32(v15), xmmword_23726C400)), 0x7F007F007F007FLL));
          v21 = vuzp1_s8(v16, v16).u32[0];
        }

        std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v6, *(v3 + 16), &v21, &v22, 4);
        goto LABEL_24;
      }

      if (v14 == 127)
      {
LABEL_24:
        LOBYTE(__src) = -9;
        std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v6, *(v3 + 16), &__src, &__src + 1, 1);
        v17 = 0;
        goto LABEL_27;
      }
    }
  }

  v17 = -10844;
LABEL_27:
  gCIMsgEmitter();
  v18 = gCIMsgEmitter(void)::ciemit;
  if (os_log_type_enabled(gCIMsgEmitter(void)::ciemit, OS_LOG_TYPE_DEBUG))
  {
    v21 = 136317442;
    v22 = "MIDICIMessageEmitter.cpp";
    v23 = 1024;
    v24 = 80;
    v25 = 1024;
    *v26 = 127;
    *&v26[4] = 1024;
    *&v26[6] = v4;
    v27 = 1024;
    v28 = v5;
    v29 = 1024;
    v30 = 126;
    v31 = 2080;
    v32 = "Invalidate MUID";
    v33 = 2048;
    v34 = 0;
    v35 = 2048;
    v36 = 0;
    v37 = 1024;
    v38 = v17;
    _os_log_impl(&dword_2371C2000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] MIDICIMessageEmitter::CreateCIMessage(channel:0x%x, sourceMUID:0x%08x, destMUID:0x%08x, msgIndex:0x%x (%s), data:%p, length:%lu) = %d", &v21, 0x4Eu);
  }

  if (v17)
  {
    gCIMsgEmitter();
    v19 = gCIMsgEmitter(void)::ciemit;
    if (os_log_type_enabled(gCIMsgEmitter(void)::ciemit, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315650;
      v22 = "MIDICIMessageEmitter.cpp";
      v23 = 1024;
      v24 = 83;
      v25 = 1024;
      *v26 = v17;
      v10 = "%25s:%-5d [!] MIDICIMessageEmitter::CreateCIMessage() failed with error %d (message will not be sent)";
      v11 = v19;
      v12 = 24;
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  return (*(**(this + 15) + 24))(*(this + 15));
}

void sub_2371F0FD4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void MIDICIMUIDList::MIDICIMUIDList(MIDICIMUIDList *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  CADeprecated::CAMutex::CAMutex((this + 24), "MIDICIMUIDList");
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
}

void sub_2371F1030(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIDICIMUIDList::Add(MIDICIMUIDList *this, int a2)
{
  v4 = (this + 24);
  v5 = (*(*(this + 3) + 16))(this + 24);
  v6 = v5;
  v7 = v4[11];
  v8 = v4[12];
  if (v7 != v8)
  {
    v9 = v4[11];
    while (*v9 != a2)
    {
      v9 += 4;
      if (v9 == v8)
      {
        goto LABEL_9;
      }
    }

    if (v8 != v9)
    {
      v10 = 0;
      if (!v5)
      {
        return v10;
      }

      goto LABEL_22;
    }
  }

LABEL_9:
  v11 = *(this + 16);
  if (v8 >= v11)
  {
    v13 = v8 - v7;
    v14 = (v8 - v7) >> 2;
    v15 = v14 + 1;
    if ((v14 + 1) >> 62)
    {
      std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
    }

    v16 = v11 - v7;
    if (v16 >> 1 > v15)
    {
      v15 = v16 >> 1;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v17 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(v17);
    }

    v18 = (v8 - v7) >> 2;
    v19 = (4 * v14);
    v20 = (4 * v14 - 4 * v18);
    *v19 = a2;
    v12 = v19 + 1;
    memcpy(v20, v7, v13);
    v21 = *(this + 14);
    *(this + 14) = v20;
    *(this + 15) = v12;
    *(this + 16) = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v8 = a2;
    v12 = v8 + 4;
  }

  *(this + 15) = v12;
  v10 = 1;
  if (v6)
  {
LABEL_22:
    (*(*v4 + 24))(v4);
  }

  return v10;
}

void MIDICIPeerList::~MIDICIPeerList(MIDICIPeerList *this)
{
  *this = &unk_284A467B0;
  v2 = (this + 24);
  if (*(this + 3))
  {
    std::vector<std::shared_ptr<LocalMIDIClient>>::clear[abi:ne200100](this + 3);
    operator delete(*v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void MIDICIResponderManager::~MIDICIResponderManager(MIDICIResponderManager *this)
{
  *this = &unk_284A46768;
  v2 = (this + 24);
  if (*(this + 3))
  {
    std::vector<std::shared_ptr<LocalMIDIClient>>::clear[abi:ne200100](this + 3);
    operator delete(*v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void std::__shared_ptr_emplace<std::recursive_mutex>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A46200;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383C8250);
}

void MIDICISessionManager::MIDICISessionManager(MIDICISessionManager *this)
{
  v2 = *MEMORY[0x277D85DE8];
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_284A46860;
  CADeprecated::CAMutex::CAMutex((this + 32), "MIDICISessionList");
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = &unk_284A46A10;
  *(this + 18) = 0;
  *(this + 19) = &unk_284A46768;
  _ZNSt3__115allocate_sharedB8ne200100INS_15recursive_mutexENS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_2371F16B4(_Unwind_Exception *a1)
{
  MIDICIMUIDList::~MIDICIMUIDList((v1 + 472));
  MIDICIMUIDList::~MIDICIMUIDList((v1 + 336));
  MIDICIMUIDList::~MIDICIMUIDList((v1 + 200));
  MIDICIResponderManager::~MIDICIResponderManager(v2);
  MIDICISessionList::~MIDICISessionList(v1);
  _Unwind_Resume(a1);
}

uint64_t CADeprecated::CAGuard::NotifyAll(CADeprecated::CAGuard *this)
{
  v8 = *MEMORY[0x277D85DE8];
  result = pthread_cond_broadcast((this + 88));
  if (result)
  {
    v3 = result;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v5 = "CAGuard.cpp";
      v6 = 1024;
      v7 = 320;
      _os_log_impl(&dword_2371C2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAGuard::NotifyAll: failed", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_284A46E20;
    exception[2] = v3;
  }

  return result;
}

uint64_t CADeprecated::CAGuard::Notify(CADeprecated::CAGuard *this)
{
  v8 = *MEMORY[0x277D85DE8];
  result = pthread_cond_signal((this + 88));
  if (result)
  {
    v3 = result;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v5 = "CAGuard.cpp";
      v6 = 1024;
      v7 = 302;
      _os_log_impl(&dword_2371C2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAGuard::Notify: failed", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_284A46E20;
    exception[2] = v3;
  }

  return result;
}

uint64_t CADeprecated::CAGuard::WaitUntil(CADeprecated::CAGuard *this, unint64_t a2)
{
  mach_absolute_time();
  v4 = __udivti3();
  if (a2 <= v4)
  {
    return 1;
  }

  v5 = *(*this + 64);

  return v5(this, a2 - v4);
}

BOOL CADeprecated::CAGuard::WaitFor(CADeprecated::CAGuard *this, unint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = pthread_self();
  v5 = atomic_load(this + 2);
  if (!pthread_equal(v4, v5))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "CAGuard.cpp";
      v15 = 1024;
      v16 = 130;
      _os_log_impl(&dword_2371C2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAGuard::WaitFor: A thread has to have locked a guard be for it can wait", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_284A46E20;
    exception[2] = 1;
LABEL_13:
  }

  v6 = a2 / 0x3B9ACA00;
  v7 = a2 % 0x3B9ACA00;
  if (a2 < 0x3B9ACA00)
  {
    v6 = 0;
    v7 = a2;
  }

  v12.tv_sec = v6;
  v12.tv_nsec = v7;
  atomic_store(0, this + 2);
  v8 = pthread_cond_timedwait_relative_np((this + 88), (this + 24), &v12);
  v9 = v8;
  if (v8 && v8 != 60)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "CAGuard.cpp";
      v15 = 1024;
      v16 = 169;
      _os_log_impl(&dword_2371C2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAGuard::WaitFor: Wait got an error", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_284A46E20;
    exception[2] = v9;
    goto LABEL_13;
  }

  atomic_store(pthread_self(), this + 2);
  return v9 == 60;
}

pthread_t CADeprecated::CAGuard::Wait(CADeprecated::CAGuard *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = pthread_self();
  v3 = atomic_load(this + 2);
  if (!pthread_equal(v2, v3))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "CAGuard.cpp";
      v10 = 1024;
      v11 = 88;
      _os_log_impl(&dword_2371C2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAGuard::Wait: A thread has to have locked a guard before it can wait", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_284A46E20;
    exception[2] = 1;
LABEL_10:
  }

  atomic_store(0, this + 2);
  v4 = pthread_cond_wait((this + 88), (this + 24));
  if (v4)
  {
    v7 = v4;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "CAGuard.cpp";
      v10 = 1024;
      v11 = 97;
      _os_log_impl(&dword_2371C2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAGuard::Wait: Could not wait for a signal", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_284A46E20;
    exception[2] = v7;
    goto LABEL_10;
  }

  result = pthread_self();
  atomic_store(result, this + 2);
  return result;
}

void CADeprecated::CAGuard::~CAGuard(CADeprecated::CAGuard *this)
{
  CADeprecated::CAGuard::~CAGuard(this);

  JUMPOUT(0x2383C8250);
}

{
  *this = &unk_284A464A8;
  pthread_cond_destroy((this + 88));

  CADeprecated::CAMutex::~CAMutex(this);
}

CADeprecated::CAGuard *CADeprecated::CAGuard::CAGuard(CADeprecated::CAGuard *this, const char *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = CADeprecated::CAMutex::CAMutex(this, a2);
  *v3 = &unk_284A464A8;
  v4 = pthread_cond_init((v3 + 88), 0);
  if (v4)
  {
    v6 = v4;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "CAGuard.cpp";
      v10 = 1024;
      v11 = 66;
      _os_log_impl(&dword_2371C2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAGuard::CAGuard: Could not init the cond var", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_284A46E20;
    exception[2] = v6;
  }

  return this;
}

void sub_2371F248C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2371F25E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 6);

  _Unwind_Resume(a1);
}

void sub_2371F3714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, const void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef((v17 + 216));
  applesauce::CF::TypeRef::~TypeRef(v16);
  while (v16 != &a16)
  {
    v16 -= 2;
    applesauce::CF::TypeRefPair::~TypeRefPair(v16);
  }

  applesauce::CF::ArrayRef::~ArrayRef(&a10);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a11);
  _Unwind_Resume(a1);
}

void MIDI2::DeviceInfo::serialize(MIDI2::DeviceInfo *this, uint64_t a2)
{
  v2[11] = *MEMORY[0x277D85DE8];
  memset(v2, 0, 24);
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v2, a2, a2 + 3, 3uLL);
}

void sub_2371F397C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char a20)
{
  v22 = (v20 + 48);
  v23 = -64;
  do
  {
    applesauce::CF::TypeRefPair::~TypeRefPair(v22);
    v22 = (v24 - 16);
    v23 += 16;
  }

  while (v23);
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned int>(applesauce::CF::TypeRef *a1, char *a2, int *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  return a1;
}

void sub_2371F3AA4(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,std::string const&>(applesauce::CF::TypeRef *a1, char *a2, uint64_t a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  v5 = *(a3 + 23);
  if (v5 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  if (v5 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = *(a3 + 8);
  }

  v8 = CFStringCreateWithBytes(0, v6, v7, 0x8000100u, 0);
  *(a1 + 1) = v8;
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  return a1;
}

void sub_2371F3B7C(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,int>(applesauce::CF::TypeRef *a1, char *a2, int *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  return a1;
}

void sub_2371F3C48(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned int const&>(applesauce::CF::TypeRef *a1, char *a2, int *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  return a1;
}

void sub_2371F3D14(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,UMPCIObjectType>(applesauce::CF::TypeRef *a1, char *a2, int *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  return a1;
}

void sub_2371F3DE0(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(applesauce::CF::TypeRef *a1, char *a2, uint64_t *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  return a1;
}

void sub_2371F3EAC(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned char const&>(applesauce::CF::TypeRef *a1, char *a2, char *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  return a1;
}

void sub_2371F3F78(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

void sub_2371F4008(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,std::vector<unsigned long long> const&>(applesauce::CF::TypeRef *a1, char *a2, uint64_t **a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  v5 = a3[1] - *a3;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  std::vector<applesauce::CF::NumberRef>::reserve(&v15, v5);
  v6 = *a3;
  v7 = a3[1];
  if (*a3 != v7)
  {
    v8 = v16;
    do
    {
      v9 = *v6;
      if (v8 >= v17)
      {
        v10 = (v8 - v15) >> 3;
        if ((v10 + 1) >> 61)
        {
          std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
        }

        v11 = (v17 - v15) >> 2;
        if (v11 <= v10 + 1)
        {
          v11 = v10 + 1;
        }

        if (v17 - v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        v21 = &v15;
        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::DictionaryRef>>(v12);
        }

        v18[0] = 0;
        v18[1] = (8 * v10);
        v19 = 8 * v10;
        v20 = 0;
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned long long,void,0>((8 * v10), v9);
        v19 += 8;
        std::vector<applesauce::CF::NumberRef>::__swap_out_circular_buffer(&v15, v18);
        v8 = v16;
        std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(v18);
      }

      else
      {
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned long long,void,0>(v8++, *v6);
      }

      v16 = v8;
      ++v6;
    }

    while (v6 != v7);
  }

  v13 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(&v15);
  v18[0] = &v15;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](v18);
  *(a1 + 1) = v13;
  return a1;
}

void sub_2371F4188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](&a13);
  applesauce::CF::TypeRef::~TypeRef(v13);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long>(applesauce::CF::TypeRef *a1, char *a2, uint64_t *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  return a1;
}

void sub_2371F4268(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

void *std::vector<applesauce::CF::NumberRef>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::DictionaryRef>>(a2);
    }

    std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(const void ***a1)
{
  std::vector<void const*>::vector[abi:ne200100](&__p, a1[1] - *a1);
  v2 = *a1;
  v3 = a1[1];
  v4 = __p;
  if (*a1 != v3)
  {
    do
    {
      v5 = *v2++;
      *v4++ = v5;
    }

    while (v2 != v3);
    v4 = __p;
  }

  CFArray = applesauce::CF::details::make_CFArrayRef<void const*>(v4, v9);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return CFArray;
}

void sub_2371F439C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFNumberRef std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned long long,void,0>(CFNumberRef *a1, uint64_t a2)
{
  valuePtr = a2;
  result = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  return result;
}

void std::vector<applesauce::CF::NumberRef>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      v9 = *v4++;
      std::__destroy_at[abi:ne200100]<applesauce::CF::NumberRef,0>(v9);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<applesauce::CF::NumberRef,0>(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::__destroy_at[abi:ne200100]<applesauce::CF::NumberRef,0>(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<applesauce::CF::NumberRef,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void UMPStream::EndpointPair::deserialize(std::string *this@<X0>, const __CFDictionary **a2@<X1>, void *a3@<X8>)
{
  a3[1] = 0;
  a3[2] = 0;
  *a3 = a3 + 1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "name");
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  applesauce::CF::details::find_at_key_or_optional<std::string,std::string const&>(&__str, *a2, &__p);
  if (LOBYTE(__str.length) == 1)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__p);
  }

  else
  {
    LOBYTE(__str.isa) = 0;
    LOBYTE(__str.length) = 0;
  }

  if (v77 < 0)
  {
    operator delete(__p);
  }

  if (LOBYTE(__str.length) == 1)
  {
    std::string::operator=(this + 3, &__str);
    if ((__str.length & 1) != 0 && SHIBYTE(__str.data) < 0)
    {
      operator delete(__str.isa);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "protocol");
  if (!*a2)
  {
    v56 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v56, "Could not construct");
  }

  v6 = applesauce::CF::details::at_key<std::string const&>(*a2, &__str);
  if (v6)
  {
    v7 = applesauce::CF::convert_as<int,0>(v6);
    v8 = v7;
    if ((v7 & 0x100000000) != 0)
    {
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__str.isa);
      v9 = 0;
      v10 = v8;
      goto LABEL_17;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = 0;
  v9 = 1;
LABEL_17:
  if ((SHIBYTE(__str.data) & 0x80000000) == 0)
  {
    if (v9)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  operator delete(__str.isa);
  if ((v9 & 1) == 0)
  {
LABEL_19:
    LODWORD(this[4].__r_.__value_.__l.__data_) = v10 | v8 & 0xFFFFFF00;
  }

LABEL_20:
  std::string::basic_string[abi:ne200100]<0>(&__str, "source");
  if (!*a2)
  {
    v57 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v57, "Could not construct");
  }

  v11 = applesauce::CF::details::at_key<std::string const&>(*a2, &__str);
  if (v11)
  {
    v12 = applesauce::CF::convert_as<unsigned int,0>(v11);
    v13 = v12;
    if ((v12 & 0x100000000) != 0)
    {
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__str.isa);
      v14 = 0;
      v15 = v13;
      goto LABEL_28;
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = 0;
  v14 = 1;
LABEL_28:
  if ((SHIBYTE(__str.data) & 0x80000000) == 0)
  {
    if (v14)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  operator delete(__str.isa);
  if ((v14 & 1) == 0)
  {
LABEL_30:
    HIDWORD(this[4].__r_.__value_.__r.__words[0]) = v15 | v13 & 0xFFFFFF00;
  }

LABEL_31:
  std::string::basic_string[abi:ne200100]<0>(&__str, "destination");
  if (!*a2)
  {
    v58 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v58, "Could not construct");
  }

  v16 = applesauce::CF::details::at_key<std::string const&>(*a2, &__str);
  if (v16)
  {
    v17 = applesauce::CF::convert_as<unsigned int,0>(v16);
    v18 = v17;
    if ((v17 & 0x100000000) != 0)
    {
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__str.isa);
      v19 = 0;
      v20 = v18;
      goto LABEL_39;
    }
  }

  else
  {
    v18 = 0;
  }

  v20 = 0;
  v19 = 1;
LABEL_39:
  if ((SHIBYTE(__str.data) & 0x80000000) == 0)
  {
    if (v19)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  operator delete(__str.isa);
  if ((v19 & 1) == 0)
  {
LABEL_41:
    LODWORD(this[4].__r_.__value_.__r.__words[1]) = v20 | v18 & 0xFFFFFF00;
  }

LABEL_42:
  std::string::basic_string[abi:ne200100]<0>(&__str, "device_info");
  if (!*a2)
  {
    v59 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v59, "Could not construct");
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,std::string const&>(&__p, *a2, &__str);
  if (v76 == 1)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__str.isa);
  }

  else
  {
    LOBYTE(__p) = 0;
    v76 = 0;
  }

  if (SHIBYTE(__str.data) < 0)
  {
    operator delete(__str.isa);
  }

  if (v76 == 1)
  {
    MIDI2::DeviceInfo::deserialize(v73, (&this[4].__r_.__value_.__r.__words[1] + 4), &__p);
    std::__tree<std::string>::destroy(v74);
    if (v76)
    {
      if (__p)
      {
        CFRelease(__p);
      }
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "product_instance");
  if (!*a2)
  {
    v60 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v60, "Could not construct");
  }

  applesauce::CF::details::find_at_key_or_optional<std::string,std::string const&>(&__str, *a2, &__p);
  if (LOBYTE(__str.length) == 1)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__p);
  }

  else
  {
    LOBYTE(__str.isa) = 0;
    LOBYTE(__str.length) = 0;
  }

  if (v77 < 0)
  {
    operator delete(__p);
  }

  if (LOBYTE(__str.length) == 1)
  {
    std::string::operator=(this + 5, &__str);
    if ((__str.length & 1) != 0 && SHIBYTE(__str.data) < 0)
    {
      operator delete(__str.isa);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "has_static_function_blocks");
  if (!*a2)
  {
    v61 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v61, "Could not construct");
  }

  v21 = applesauce::CF::details::find_at_key_or_optional<BOOL,std::string const&>(*a2, &__str);
  if (v21 >= 0x100u)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__str.isa);
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (SHIBYTE(__str.data) < 0)
  {
    operator delete(__str.isa);
  }

  if (v21 >= 0x100u)
  {
    this[6].__r_.__value_.__s.__data_[0] = v22;
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "jrts_receive_capability");
  if (!*a2)
  {
    v62 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v62, "Could not construct");
  }

  v23 = applesauce::CF::details::find_at_key_or_optional<BOOL,std::string const&>(*a2, &__str);
  if (v23 >= 0x100u)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__str.isa);
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (SHIBYTE(__str.data) < 0)
  {
    operator delete(__str.isa);
  }

  if (v23 >= 0x100u)
  {
    this[6].__r_.__value_.__s.__data_[1] = v24;
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "jrts_transmit_capability");
  if (!*a2)
  {
    v63 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v63, "Could not construct");
  }

  v25 = applesauce::CF::details::find_at_key_or_optional<BOOL,std::string const&>(*a2, &__str);
  if (v25 >= 0x100u)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__str.isa);
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (SHIBYTE(__str.data) < 0)
  {
    operator delete(__str.isa);
  }

  if (v25 >= 0x100u)
  {
    this[6].__r_.__value_.__s.__data_[2] = v26;
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "client_owned");
  if (!*a2)
  {
    v64 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v64, "Could not construct");
  }

  v27 = applesauce::CF::details::find_at_key_or_optional<BOOL,std::string const&>(*a2, &__str);
  if (v27 >= 0x100u)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__str.isa);
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  if (SHIBYTE(__str.data) < 0)
  {
    operator delete(__str.isa);
  }

  if (v27 >= 0x100u)
  {
    this[6].__r_.__value_.__s.__data_[4] = v28;
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "enabled");
  if (!*a2)
  {
    v65 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v65, "Could not construct");
  }

  v29 = applesauce::CF::details::find_at_key_or_optional<BOOL,std::string const&>(*a2, &__str);
  if (v29 >= 0x100u)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__str.isa);
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  if (SHIBYTE(__str.data) < 0)
  {
    operator delete(__str.isa);
  }

  if (v29 >= 0x100u)
  {
    this[6].__r_.__value_.__s.__data_[3] = v30;
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "function_blocks");
  if (!*a2)
  {
    v66 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v66, "Could not construct");
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,std::string const&>(&__p, *a2, &__str);
  if (v76 == 1)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__str.isa);
  }

  else
  {
    LOBYTE(__p) = 0;
    v76 = 0;
  }

  if (SHIBYTE(__str.data) < 0)
  {
    operator delete(__str.isa);
  }

  if (v76 == 1)
  {
    v31 = __p;
    if (__p)
    {
      Count = CFArrayGetCount(__p);
      v33 = Count;
      v34 = __p;
      if (__p)
      {
        v35 = CFArrayGetCount(__p);
        if (!v33)
        {
          goto LABEL_134;
        }
      }

      else
      {
        v35 = 0;
        if (!Count)
        {
          goto LABEL_134;
        }
      }

      v36 = 0;
      do
      {
        if (v31 == v34 && v36 == v35)
        {
          break;
        }

        applesauce::CF::details::at_to<applesauce::CF::TypeRef>(&__str, v31, v36);
        applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&cf, &__str.isa);
        if (!cf)
        {
          v54 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383C7ED0](v54, "Could not construct");
        }

        v37 = applesauce::CF::details::find_at_key_or_optional<unsigned char,char const* const&>(cf, "id");
        if (v37 >= 0x100u)
        {
          size = this[6].__r_.__value_.__l.__size_;
          v39 = this[6].__r_.__value_.__r.__words[2];
          if (size != v39)
          {
            while ((*size)[4].__r_.__value_.__s.__data_[0] != v37)
            {
              if (++size == v39)
              {
                goto LABEL_128;
              }
            }
          }

          if (size == v39 || !*size)
          {
LABEL_128:
            operator new();
          }

          UMPStream::FunctionBlock::deserialize(*size, &cf, v71);
          std::__tree<std::string>::destroy(v71[1]);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (__str.isa)
        {
          CFRelease(__str.isa);
        }

        ++v36;
      }

      while (v36 != v33);
    }
  }

LABEL_134:
  if (v76 == 1 && __p)
  {
    CFRelease(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "timestamp");
  if (!*a2)
  {
    v67 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v67, "Could not construct");
  }

  v40 = applesauce::CF::details::find_at_key_or_optional<unsigned long long,std::string const&>(*a2, &__str);
  v42 = v41;
  if (v41)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__str.isa);
    v43 = v40;
  }

  else
  {
    v43 = 0;
  }

  if ((SHIBYTE(__str.data) & 0x80000000) == 0)
  {
    if ((v42 & 1) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_143;
  }

  operator delete(__str.isa);
  if (v42)
  {
LABEL_143:
    this[2].__r_.__value_.__l.__size_ = v43 | v40 & 0xFFFFFFFFFFFFFF00;
  }

LABEL_144:
  std::string::basic_string[abi:ne200100]<0>(&__str, "endpoint_type");
  if (!*a2)
  {
    v68 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v68, "Could not construct");
  }

  v44 = applesauce::CF::details::at_key<std::string const&>(*a2, &__str);
  if (v44)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v44))
    {
      LOBYTE(__p) = 0;
      if (CFNumberGetValue(v44, kCFNumberCharType, &__p))
      {
        LOBYTE(v44) = __p;
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__str.isa);
        v46 = 0;
        goto LABEL_151;
      }
    }

    LOBYTE(v44) = 0;
  }

  v46 = 1;
LABEL_151:
  if ((SHIBYTE(__str.data) & 0x80000000) == 0)
  {
    if (v46)
    {
      goto LABEL_154;
    }

    goto LABEL_153;
  }

  operator delete(__str.isa);
  if ((v46 & 1) == 0)
  {
LABEL_153:
    this[7].__r_.__value_.__s.__data_[9] = v44;
  }

LABEL_154:
  std::string::basic_string[abi:ne200100]<0>(&__str, "supported_protocols");
  if (!*a2)
  {
    v69 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v69, "Could not construct");
  }

  v47 = applesauce::CF::details::find_at_key_or_optional<unsigned char,std::string const&>(*a2, &__str);
  if (v47 >= 0x100u)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__str.isa);
    v48 = v47;
  }

  else
  {
    v48 = 0;
  }

  if (SHIBYTE(__str.data) < 0)
  {
    operator delete(__str.isa);
  }

  if (v47 >= 0x100u)
  {
    this[7].__r_.__value_.__s.__data_[10] = v48;
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "owner_client_ref");
  if (!*a2)
  {
    v70 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v70, "Could not construct");
  }

  v49 = applesauce::CF::details::at_key<std::string const&>(*a2, &__str);
  if (v49)
  {
    v50 = applesauce::CF::convert_as<unsigned int,0>(v49);
    v51 = v50;
    if ((v50 & 0x100000000) != 0)
    {
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a3, &__str.isa);
      v52 = 0;
      v53 = v51;
      goto LABEL_172;
    }
  }

  else
  {
    v51 = 0;
  }

  v53 = 0;
  v52 = 1;
LABEL_172:
  if ((SHIBYTE(__str.data) & 0x80000000) == 0)
  {
    if (v52)
    {
      return;
    }

    goto LABEL_174;
  }

  operator delete(__str.isa);
  if ((v52 & 1) == 0)
  {
LABEL_174:
    HIDWORD(this[2].__r_.__value_.__r.__words[0]) = v53 | v51 & 0xFFFFFF00;
  }
}

void sub_2371F5424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char **a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, const void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  applesauce::CF::DictionaryRef::~DictionaryRef(&a17);
  applesauce::CF::TypeRef::~TypeRef(&__p);
  std::optional<applesauce::CF::ArrayRef>::~optional(&a21);
  std::__tree<std::string>::destroy(*a9);
  _Unwind_Resume(a1);
}

double applesauce::CF::details::find_at_key_or_optional<std::string,std::string const&>(uint64_t a1, const __CFDictionary *a2, const __CFString *a3)
{
  v4 = applesauce::CF::details::at_key<std::string const&>(a2, a3);
  if (v4 && (v6 = v4, TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(v6)))
  {
    CStringPtr = CFStringGetCStringPtr(v6, 0x8000100u);
    if (CStringPtr)
    {
      std::string::basic_string[abi:ne200100]<0>(&v12, CStringPtr);
    }

    else
    {
      Length = CFStringGetLength(v6);
      maxBufLen = 0;
      v15.location = 0;
      v15.length = Length;
      CFStringGetBytes(v6, v15, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
      v10 = maxBufLen;
      if (maxBufLen >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (maxBufLen >= 0x17)
      {
        operator new();
      }

      HIBYTE(v13) = maxBufLen;
      if (maxBufLen)
      {
        bzero(&v12, maxBufLen);
      }

      *(&v12 + v10) = 0;
      if (v13 >= 0)
      {
        v11 = &v12;
      }

      else
      {
        v11 = v12;
      }

      v16.location = 0;
      v16.length = Length;
      CFStringGetBytes(v6, v16, 0x8000100u, 0, 0, v11, maxBufLen, &maxBufLen);
    }

    result = *&v12;
    *a1 = v12;
    *(a1 + 16) = v13;
    *(a1 + 24) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t a1, void **a2)
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
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v2 + 32)) & 0x80) == 0)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v4 + 4, a2);
    if ((result & 0x80) == 0)
    {
      return result;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,std::string const&>(_BYTE *a1, const __CFDictionary *a2, const __CFString *a3)
{
  v4 = applesauce::CF::details::at_key<std::string const&>(a2, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFDictionaryGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

uint64_t std::optional<applesauce::CF::DictionaryRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void MIDI2::DeviceInfo::deserialize(MIDI2::DeviceInfo *this, const applesauce::CF::DictionaryRef *a2, const __CFDictionary **a3)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = this + 8;
  std::string::basic_string[abi:ne200100]<0>(&__p, "manufacturer_id");
  if (!*a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  applesauce::CF::details::find_at_key_or_optional<std::vector<unsigned long long>,std::string const&>(&__p.length, *a3, &__p);
  v6 = v28;
  if (v28 == 1)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(this, &__p.isa);
  }

  else
  {
    LOBYTE(__p.length) = 0;
  }

  if (SHIBYTE(__p.data) < 0)
  {
    operator delete(__p.isa);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else if (!v6)
  {
    goto LABEL_13;
  }

  length = __p.length;
  v8 = __p.length + 24;
  v9 = a2;
  v10 = __p.length;
  do
  {
    v11 = *v10++;
    *v9 = v11;
    v9 = (v9 + 1);
  }

  while (v10 != v8);
  if (length)
  {
    operator delete(length);
  }

LABEL_13:
  std::string::basic_string[abi:ne200100]<0>(&__p.length, "family");
  if (!*a3)
  {
    v23 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v23, "Could not construct");
  }

  v12 = applesauce::CF::details::find_at_key_or_optional<unsigned short,std::string const&>(*a3, &__p.length);
  if (v12 >= 0x10000)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(this, &__p.length);
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v27 < 0)
  {
    operator delete(__p.length);
  }

  if (v12 >= 0x10000)
  {
    *(a2 + 2) = v13 | v12 & 0xFF00;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p.length, "model_number");
  if (!*a3)
  {
    v24 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v24, "Could not construct");
  }

  v14 = applesauce::CF::details::find_at_key_or_optional<unsigned short,std::string const&>(*a3, &__p.length);
  if (v14 >= 0x10000)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(this, &__p.length);
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v27 < 0)
  {
    operator delete(__p.length);
  }

  if (v14 >= 0x10000)
  {
    *(a2 + 3) = v15 | v14 & 0xFF00;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "revision_level");
  if (!*a3)
  {
    v25 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v25, "Could not construct");
  }

  applesauce::CF::details::find_at_key_or_optional<std::vector<unsigned long long>,std::string const&>(&__p.length, *a3, &__p);
  v16 = v28;
  if (v28 == 1)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(this, &__p.isa);
  }

  else
  {
    LOBYTE(__p.length) = 0;
  }

  if (SHIBYTE(__p.data) < 0)
  {
    operator delete(__p.isa);
    if (!v16)
    {
      return;
    }
  }

  else if (!v16)
  {
    return;
  }

  v17 = __p.length;
  v18 = a2 + 8;
  v19 = __p.length + 32;
  v20 = __p.length;
  do
  {
    v21 = *v20++;
    *v18++ = v21;
  }

  while (v20 != v19);
  if (v17)
  {
    operator delete(v17);
  }
}

void sub_2371F5CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  std::__tree<std::string>::destroy(*v21);
  _Unwind_Resume(a1);
}

uint64_t applesauce::CF::details::find_at_key_or_optional<BOOL,std::string const&>(const __CFDictionary *a1, const __CFString *a2)
{
  v2 = applesauce::CF::details::at_key<std::string const&>(a1, a2);
  if (v2)
  {
    LOWORD(v2) = applesauce::CF::convert_as<BOOL,0>(v2);
    v3 = BYTE1(v2);
  }

  else
  {
    v3 = 0;
  }

  return v2 | (v3 << 8);
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,std::string const&>(_BYTE *a1, const __CFDictionary *a2, const __CFString *a3)
{
  v4 = applesauce::CF::details::at_key<std::string const&>(a2, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFArrayGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

uint64_t std::optional<applesauce::CF::ArrayRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

CFTypeRef applesauce::CF::details::at_to<applesauce::CF::TypeRef>(void *a1, CFArrayRef theArray, unint64_t a3)
{
  if (CFArrayGetCount(theArray) <= a3 || (ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3), (v7 = ValueAtIndex) == 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  result = CFRetain(ValueAtIndex);
  *a1 = v7;
  return result;
}

const void *applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(void *a1, const void **a2)
{
  result = *a2;
  if (!*a2)
  {
    goto LABEL_6;
  }

  v5 = CFGetTypeID(result);
  result = CFDictionaryGetTypeID();
  if (v5 != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v6 = *a2;
  if (v6)
  {
    CFRetain(v6);
    *a1 = v6;
    v7 = CFGetTypeID(v6);
    result = CFDictionaryGetTypeID();
    if (v7 != result)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](v8, "Could not construct");
    }
  }

  else
  {
LABEL_6:
    *a1 = 0;
  }

  return result;
}

void sub_2371F6014(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

uint64_t applesauce::CF::details::find_at_key_or_optional<unsigned char,char const* const&>(const __CFDictionary *a1, char *a2)
{
  v2 = applesauce::CF::details::at_key<char const* const&>(a1, a2);
  if (v2)
  {
    LOWORD(v2) = applesauce::CF::convert_as<unsigned char,0>(v2);
    v3 = BYTE1(v2);
  }

  else
  {
    v3 = 0;
  }

  return v2 | (v3 << 8);
}

void std::vector<std::unique_ptr<UMPStream::FunctionBlock>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v7;
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

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (8 * (v8 >> 3));
    v13 = *a2;
    *a2 = 0;
    *v12 = v13;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = v4 + 1;
  }

  *(a1 + 8) = v6;
}

uint64_t *std::unique_ptr<UMPStream::FunctionBlock>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 95) < 0)
    {
      operator delete(*(v2 + 72));
    }

    *v2 = &unk_284A46EC0;
    XCFObject<__CFDictionary const*>::~XCFObject(v2 + 24);
    BaseOpaqueObject::~BaseOpaqueObject(v2);

    JUMPOUT(0x2383C8250);
  }

  return result;
}

const __CFNumber *applesauce::CF::details::find_at_key_or_optional<unsigned long long,std::string const&>(const __CFDictionary *a1, const __CFString *a2)
{
  result = applesauce::CF::details::at_key<std::string const&>(a1, a2);
  if (result)
  {
    return applesauce::CF::convert_as<unsigned long long,0>(result);
  }

  return result;
}

uint64_t applesauce::CF::details::find_at_key_or_optional<unsigned char,std::string const&>(const __CFDictionary *a1, const __CFString *a2)
{
  v2 = applesauce::CF::details::at_key<std::string const&>(a1, a2);
  if (v2)
  {
    LOWORD(v2) = applesauce::CF::convert_as<unsigned char,0>(v2);
    v3 = BYTE1(v2);
  }

  else
  {
    v3 = 0;
  }

  return v2 | (v3 << 8);
}

const void *applesauce::CF::details::at_key<std::string const&>(const __CFDictionary *a1, CFStringRef a2)
{
  v2 = a2;
  data_high = HIBYTE(a2->data);
  if ((data_high & 0x80u) != 0)
  {
    a2 = a2->isa;
  }

  if (a2)
  {
    info = v2->info;
    if ((data_high & 0x80u) == 0)
    {
      v6 = data_high;
    }

    else
    {
      v6 = info;
    }

    a2 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
    cf = a2;
    if (!a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](exception, "Could not construct");
    }
  }

  else
  {
    cf = 0;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (cf)
  {
    CFRelease(cf);
  }

  return Value;
}

void sub_2371F6350(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2371F633CLL);
}

uint64_t applesauce::CF::convert_as<unsigned char,0>(const __CFNumber *a1)
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
        Value = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
        goto LABEL_23;
      case kCFNumberSInt32Type:
        LODWORD(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_23;
      case kCFNumberSInt64Type:
        valuePtr = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
        goto LABEL_23;
      case kCFNumberFloat32Type:
        v5 = applesauce::CF::details::handle_case<float,unsigned char>(a1, kCFNumberFloat32Type);
        goto LABEL_18;
      case kCFNumberFloat64Type:
        v5 = applesauce::CF::details::handle_case<double,unsigned char>(a1, kCFNumberFloat64Type);
        goto LABEL_18;
      case kCFNumberCharType:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
        goto LABEL_23;
      case kCFNumberShortType:
        LOWORD(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
        goto LABEL_23;
      case kCFNumberIntType:
        LODWORD(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
        goto LABEL_23;
      case kCFNumberLongType:
        valuePtr = 0;
        Value = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
        goto LABEL_23;
      case kCFNumberLongLongType:
        valuePtr = 0;
        Value = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
        goto LABEL_23;
      case kCFNumberFloatType:
        v5 = applesauce::CF::details::handle_case<float,unsigned char>(a1, kCFNumberFloatType);
        goto LABEL_18;
      case kCFNumberDoubleType:
        v5 = applesauce::CF::details::handle_case<double,unsigned char>(a1, kCFNumberDoubleType);
        goto LABEL_18;
      case kCFNumberCFIndexType:
        valuePtr = 0;
        Value = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
        goto LABEL_23;
      case kCFNumberNSIntegerType:
        valuePtr = 0;
        Value = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_23:
        v6 = Value != 0;
        if (Value)
        {
          LOBYTE(v5) = valuePtr;
        }

        else
        {
          LOBYTE(v5) = 0;
        }

        break;
      case kCFNumberCGFloatType:
        v5 = applesauce::CF::details::handle_case<double,unsigned char>(a1, kCFNumberCGFloatType);
LABEL_18:
        v6 = HIBYTE(v5);
        break;
      default:
        goto LABEL_6;
    }
  }

  else
  {
    v4 = CFBooleanGetTypeID();
    if (v4 == CFGetTypeID(a1))
    {
      LOBYTE(v5) = CFBooleanGetValue(a1);
      v6 = 1;
    }

    else
    {
LABEL_6:
      v6 = 0;
      LOBYTE(v5) = 0;
    }
  }

  return v5 | (v6 << 8);
}

uint64_t applesauce::CF::details::handle_case<float,unsigned char>(const __CFNumber *a1, CFNumberType a2)
{
  valuePtr = 0.0;
  Value = CFNumberGetValue(a1, a2, &valuePtr);
  v3 = valuePtr;
  if (!Value)
  {
    v3 = 0;
  }

  return v3 | ((Value != 0) << 8);
}

uint64_t applesauce::CF::details::handle_case<double,unsigned char>(const __CFNumber *a1, CFNumberType a2)
{
  valuePtr = 0.0;
  Value = CFNumberGetValue(a1, a2, &valuePtr);
  v3 = valuePtr;
  if (!Value)
  {
    v3 = 0;
  }

  return v3 | ((Value != 0) << 8);
}

void applesauce::CF::details::find_at_key_or_optional<std::vector<unsigned long long>,std::string const&>(_BYTE *a1, const __CFDictionary *a2, const __CFString *a3)
{
  v4 = applesauce::CF::details::at_key<std::string const&>(a2, a3);
  if (v4)
  {

    applesauce::CF::convert_as<std::vector<unsigned long long>,0>(a1, v4);
  }

  else
  {
    *a1 = 0;
    a1[24] = 0;
  }
}

const __CFNumber *applesauce::CF::details::find_at_key_or_optional<unsigned short,std::string const&>(const __CFDictionary *a1, const __CFString *a2)
{
  result = applesauce::CF::details::at_key<std::string const&>(a1, a2);
  if (result)
  {
    v3 = result;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v3))
    {
      switch(CFNumberGetType(v3))
      {
        case kCFNumberSInt8Type:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v3, kCFNumberSInt8Type, &valuePtr);
          goto LABEL_24;
        case kCFNumberSInt16Type:
          LOWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(v3, kCFNumberSInt16Type, &valuePtr);
          goto LABEL_28;
        case kCFNumberSInt32Type:
          LODWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(v3, kCFNumberSInt32Type, &valuePtr);
          goto LABEL_28;
        case kCFNumberSInt64Type:
          valuePtr = 0.0;
          v10 = CFNumberGetValue(v3, kCFNumberSInt64Type, &valuePtr);
          goto LABEL_28;
        case kCFNumberFloat32Type:
          LODWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(v3, kCFNumberFloat32Type, &valuePtr);
          goto LABEL_12;
        case kCFNumberFloat64Type:
          valuePtr = 0.0;
          v10 = CFNumberGetValue(v3, kCFNumberFloat64Type, &valuePtr);
          goto LABEL_21;
        case kCFNumberCharType:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v3, kCFNumberCharType, &valuePtr);
LABEL_24:
          v12 = Value != 0;
          LOBYTE(v13) = LOBYTE(valuePtr);
          v5 = SLOBYTE(valuePtr) >> 7;
          if (!Value)
          {
            LOBYTE(v13) = 0;
          }

          return ((v12 << 16) | (v5 << 8) | v13);
        case kCFNumberShortType:
          LOWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(v3, kCFNumberShortType, &valuePtr);
          goto LABEL_28;
        case kCFNumberIntType:
          LODWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(v3, kCFNumberIntType, &valuePtr);
          goto LABEL_28;
        case kCFNumberLongType:
          valuePtr = 0.0;
          v10 = CFNumberGetValue(v3, kCFNumberLongType, &valuePtr);
          goto LABEL_28;
        case kCFNumberLongLongType:
          valuePtr = 0.0;
          v10 = CFNumberGetValue(v3, kCFNumberLongLongType, &valuePtr);
          goto LABEL_28;
        case kCFNumberFloatType:
          LODWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(v3, kCFNumberFloatType, &valuePtr);
LABEL_12:
          v11 = *&valuePtr;
          goto LABEL_29;
        case kCFNumberDoubleType:
          valuePtr = 0.0;
          v10 = CFNumberGetValue(v3, kCFNumberDoubleType, &valuePtr);
          goto LABEL_21;
        case kCFNumberCFIndexType:
          valuePtr = 0.0;
          v10 = CFNumberGetValue(v3, kCFNumberCFIndexType, &valuePtr);
          goto LABEL_28;
        case kCFNumberNSIntegerType:
          valuePtr = 0.0;
          v10 = CFNumberGetValue(v3, kCFNumberNSIntegerType, &valuePtr);
LABEL_28:
          v11 = LOWORD(valuePtr);
          goto LABEL_29;
        case kCFNumberCGFloatType:
          valuePtr = 0.0;
          v10 = CFNumberGetValue(v3, kCFNumberCGFloatType, &valuePtr);
LABEL_21:
          v11 = valuePtr;
LABEL_29:
          v13 = v11 | 0x10000;
          if (!v10)
          {
            v13 = 0;
          }

          v5 = v13 >> 8;
          v12 = HIWORD(v13);
          break;
        default:
          v12 = 0;
          LOBYTE(v13) = 0;
          break;
      }

      return ((v12 << 16) | (v5 << 8) | v13);
    }

    else
    {
      v7 = CFBooleanGetTypeID();
      if (v7 == CFGetTypeID(v3))
      {
        v8 = CFBooleanGetValue(v3);
        v9 = 0x10000;
      }

      else
      {
        v8 = 0;
        v9 = 0;
      }

      return (v9 | v8);
    }
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

void UMPStream::EndpointPair::~EndpointPair(void **this)
{
  v2 = this + 19;
  std::vector<std::unique_ptr<UMPStream::FunctionBlock>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  *this = &unk_284A46EC0;
  XCFObject<__CFDictionary const*>::~XCFObject((this + 3));
  BaseOpaqueObject::~BaseOpaqueObject(this);

  JUMPOUT(0x2383C8250);
}

{
  v2 = this + 19;
  std::vector<std::unique_ptr<UMPStream::FunctionBlock>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  *this = &unk_284A46EC0;
  XCFObject<__CFDictionary const*>::~XCFObject((this + 3));

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

uint64_t *std::__introsort<std::_RangeAlgPolicy,UMPStream::EndpointPair::addFunctionBlock(std::unique_ptr<UMPStream::FunctionBlock>)::$_1 &,std::unique_ptr<UMPStream::FunctionBlock>*,false>(uint64_t *result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = a2 - v9;
    v11 = v10 - 2;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v80 = *v7;
        if (*(*v8 + 96) < *(*v7 + 96))
        {
          *v7 = *v8;
          *v8 = v80;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      v87 = v7 + 1;
      v88 = v7[1];
      v89 = v7 + 2;
      v90 = v7[2];
      v91 = *(v88 + 96);
      v92 = *v7;
      v93 = *(*v7 + 96);
      v94 = *(v90 + 96);
      if (v91 >= v93)
      {
        if (v94 >= v91)
        {
          goto LABEL_191;
        }

        *v87 = v90;
        *v89 = v88;
        v95 = v7;
        v96 = (v7 + 1);
        result = v88;
        if (v94 < v93)
        {
          goto LABEL_183;
        }
      }

      else
      {
        v95 = v7;
        v96 = (v7 + 2);
        result = *v7;
        if (v94 >= v91)
        {
          *v7 = v88;
          v7[1] = v92;
          v95 = v7 + 1;
          v96 = (v7 + 2);
          result = v92;
          if (v94 >= v93)
          {
LABEL_191:
            v88 = v90;
            goto LABEL_192;
          }
        }

LABEL_183:
        *v95 = v90;
        *v96 = v92;
        v88 = result;
      }

LABEL_192:
      if (*(*v8 + 96) < *(v88 + 96))
      {
        *v89 = *v8;
        *v8 = v88;
        v154 = *v89;
        v155 = *(v154 + 96);
        v156 = *v87;
        if (v155 < *(v156 + 96))
        {
          v7[1] = v154;
          v7[2] = v156;
          v157 = *v7;
          if (v155 < *(*v7 + 96))
          {
            *v7 = v154;
            v7[1] = v157;
          }
        }
      }

      return result;
    }

    if (v10 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_RangeAlgPolicy,UMPStream::EndpointPair::addFunctionBlock(std::unique_ptr<UMPStream::FunctionBlock>)::$_1 &,std::unique_ptr<UMPStream::FunctionBlock>*,0>(v7, v7 + 1, v7 + 2, v7 + 3, a2 - 1);
    }

LABEL_10:
    if (v10 <= 23)
    {
      v97 = v7 + 1;
      v99 = v7 == a2 || v97 == a2;
      if (a4)
      {
        if (!v99)
        {
          v100 = 0;
          v101 = v7;
          do
          {
            v102 = v97;
            v103 = v101[1];
            if (*(v103 + 96) < *(*v101 + 96))
            {
              *v102 = 0;
              v159 = v103;
              v104 = *v101;
              v105 = v100;
              while (1)
              {
                *(v7 + v105) = 0;
                std::unique_ptr<UMPStream::FunctionBlock>::reset[abi:ne200100]((v7 + v105 + 8), v104);
                v106 = v159;
                if (!v105)
                {
                  break;
                }

                v104 = *(v7 + v105 - 8);
                v105 -= 8;
                if (*(v159 + 96) >= *(v104 + 96))
                {
                  v107 = (v7 + v105 + 8);
                  goto LABEL_129;
                }
              }

              v107 = v7;
LABEL_129:
              v159 = 0;
              std::unique_ptr<UMPStream::FunctionBlock>::reset[abi:ne200100](v107, v106);
              result = std::unique_ptr<UMPStream::FunctionBlock>::reset[abi:ne200100](&v159, 0);
            }

            v97 = v102 + 1;
            v100 += 8;
            v101 = v102;
          }

          while (v102 + 1 != a2);
        }
      }

      else if (!v99)
      {
        do
        {
          v148 = v97;
          v149 = v7[1];
          if (*(v149 + 96) < *(*v7 + 96))
          {
            *v148 = 0;
            v159 = v149;
            v150 = *v7;
            v151 = v148;
            v152 = v148;
            do
            {
              *--v152 = 0;
              std::unique_ptr<UMPStream::FunctionBlock>::reset[abi:ne200100](v151, v150);
              v153 = v159;
              v150 = *(v151 - 2);
              v151 = v152;
            }

            while (*(v159 + 96) < *(v150 + 96));
            v159 = 0;
            std::unique_ptr<UMPStream::FunctionBlock>::reset[abi:ne200100](v152, v153);
            result = std::unique_ptr<UMPStream::FunctionBlock>::reset[abi:ne200100](&v159, 0);
          }

          v97 = v148 + 1;
          v7 = v148;
        }

        while (v148 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v7 == a2)
      {
        return result;
      }

      v108 = v11 >> 1;
      v109 = v11 >> 1;
      do
      {
        v110 = v109;
        if (v108 >= v109)
        {
          v111 = (2 * v109) | 1;
          v112 = &v7[v111];
          if (2 * v109 + 2 >= v10)
          {
            v113 = *v112;
          }

          else
          {
            v113 = *v112;
            if (*(*v112 + 96) < *(v112[1] + 96))
            {
              v113 = v112[1];
              ++v112;
              v111 = 2 * v110 + 2;
            }
          }

          v114 = &v7[v110];
          v115 = *(v113 + 96);
          v116 = *v114;
          if (v115 >= *(*v114 + 96))
          {
            *v114 = 0;
            v159 = v116;
            v117 = *v112;
            while (1)
            {
              v118 = v112;
              *v112 = 0;
              std::unique_ptr<UMPStream::FunctionBlock>::reset[abi:ne200100](v114, v117);
              if (v108 < v111)
              {
                break;
              }

              v112 = &v7[(2 * v111) | 1];
              if (2 * v111 + 2 >= v10)
              {
                v117 = *v112;
                v111 = (2 * v111) | 1;
              }

              else
              {
                v119 = *(*v112 + 96);
                v120 = *(v112[1] + 96);
                if (v119 >= v120)
                {
                  v117 = *v112;
                }

                else
                {
                  v117 = v112[1];
                }

                if (v119 >= v120)
                {
                  v111 = (2 * v111) | 1;
                }

                else
                {
                  ++v112;
                  v111 = 2 * v111 + 2;
                }
              }

              v121 = v159;
              v114 = v118;
              if (*(v117 + 96) < *(v159 + 96))
              {
                goto LABEL_154;
              }
            }

            v121 = v159;
LABEL_154:
            v159 = 0;
            std::unique_ptr<UMPStream::FunctionBlock>::reset[abi:ne200100](v118, v121);
            std::unique_ptr<UMPStream::FunctionBlock>::reset[abi:ne200100](&v159, 0);
          }
        }

        v109 = v110 - 1;
      }

      while (v110);
      while (2)
      {
        v122 = 0;
        v123 = *v7;
        *v7 = 0;
        v158 = v123;
        v124 = v7;
        do
        {
          v125 = &v124[v122];
          v126 = v125 + 1;
          if (2 * v122 + 2 >= v10)
          {
            v132 = *v126;
            v122 = (2 * v122) | 1;
          }

          else
          {
            v129 = v125[2];
            v127 = v125 + 2;
            v128 = v129;
            v130 = *(*(v127 - 1) + 96);
            v131 = *(v129 + 96);
            if (v130 >= v131)
            {
              v132 = *(v127 - 1);
            }

            else
            {
              v132 = v128;
            }

            if (v130 >= v131)
            {
              v122 = (2 * v122) | 1;
            }

            else
            {
              v126 = v127;
              v122 = 2 * v122 + 2;
            }
          }

          *v126 = 0;
          std::unique_ptr<UMPStream::FunctionBlock>::reset[abi:ne200100](v124, v132);
          v124 = v126;
        }

        while (v122 <= ((v10 - 2) >> 1));
        if (v126 != --a2)
        {
          v133 = *a2;
          *a2 = 0;
          std::unique_ptr<UMPStream::FunctionBlock>::reset[abi:ne200100](v126, v133);
          v134 = v158;
          v158 = 0;
          std::unique_ptr<UMPStream::FunctionBlock>::reset[abi:ne200100](a2, v134);
          v135 = (v126 - v7 + 8) >> 3;
          v136 = v135 < 2;
          v137 = v135 - 2;
          if (!v136)
          {
            v138 = v137 >> 1;
            v139 = &v7[v137 >> 1];
            v140 = *v126;
            if (*(*v139 + 96) < *(*v126 + 96))
            {
              *v126 = 0;
              v159 = v140;
              v141 = *v139;
              do
              {
                v142 = v139;
                *v139 = 0;
                std::unique_ptr<UMPStream::FunctionBlock>::reset[abi:ne200100](v126, v141);
                v143 = v159;
                if (!v138)
                {
                  break;
                }

                v138 = (v138 - 1) >> 1;
                v139 = &v7[v138];
                v141 = *v139;
                v126 = v142;
              }

              while (*(*v139 + 96) < *(v159 + 96));
              v159 = 0;
              std::unique_ptr<UMPStream::FunctionBlock>::reset[abi:ne200100](v142, v143);
              v144 = &v159;
              v145 = 0;
LABEL_174:
              std::unique_ptr<UMPStream::FunctionBlock>::reset[abi:ne200100](v144, v145);
            }
          }

          result = std::unique_ptr<UMPStream::FunctionBlock>::reset[abi:ne200100](&v158, 0);
          v136 = v10-- <= 2;
          if (v136)
          {
            return result;
          }

          continue;
        }

        break;
      }

      v145 = v158;
      v158 = 0;
      v144 = v126;
      goto LABEL_174;
    }

    v12 = &v7[v10 >> 1];
    v13 = v12;
    v14 = *v8;
    v15 = *(*v8 + 96);
    if (v10 >= 0x81)
    {
      v16 = *v12;
      v17 = *(*v12 + 96);
      v18 = *v7;
      v19 = *(*v7 + 96);
      if (v17 >= v19)
      {
        if (v15 < v17)
        {
          *v12 = v14;
          *v8 = v16;
          v24 = *v7;
          if (*(*v12 + 96) < *(*v7 + 96))
          {
            *v7 = *v12;
            *v12 = v24;
          }
        }
      }

      else
      {
        if (v15 < v17)
        {
          *v7 = v14;
          goto LABEL_27;
        }

        *v7 = v16;
        *v12 = v18;
        if (*(*v8 + 96) < v19)
        {
          *v12 = *v8;
LABEL_27:
          *v8 = v18;
        }
      }

      v26 = v12 - 1;
      v27 = *(v12 - 1);
      v28 = *(v27 + 96);
      v29 = v7[1];
      v30 = *(v29 + 96);
      v31 = *(a2 - 2);
      v32 = *(v31 + 96);
      if (v28 >= v30)
      {
        if (v32 < v28)
        {
          *v26 = v31;
          *(a2 - 2) = v27;
          v33 = v7[1];
          if (*(*v26 + 96) < *(v33 + 96))
          {
            v7[1] = *v26;
            *v26 = v33;
          }
        }
      }

      else
      {
        if (v32 < v28)
        {
          v7[1] = v31;
          goto LABEL_39;
        }

        v7[1] = v27;
        *v26 = v29;
        v34 = *(a2 - 2);
        if (*(v34 + 96) < v30)
        {
          *v26 = v34;
LABEL_39:
          *(a2 - 2) = v29;
        }
      }

      v37 = v12[1];
      v35 = v12 + 1;
      v36 = v37;
      v38 = *(v37 + 96);
      v39 = v7[2];
      v40 = *(v39 + 96);
      v41 = *(a2 - 3);
      v42 = *(v41 + 96);
      if (v38 >= v40)
      {
        if (v42 < v38)
        {
          *v35 = v41;
          *(a2 - 3) = v36;
          v43 = v7[2];
          if (*(*v35 + 96) < *(v43 + 96))
          {
            v7[2] = *v35;
            *v35 = v43;
          }
        }
      }

      else
      {
        if (v42 < v38)
        {
          v7[2] = v41;
          goto LABEL_48;
        }

        v7[2] = v36;
        *v35 = v39;
        v44 = *(a2 - 3);
        if (*(v44 + 96) < v40)
        {
          *v35 = v44;
LABEL_48:
          *(a2 - 3) = v39;
        }
      }

      v45 = *v13;
      v46 = *(*v13 + 96);
      v47 = *v26;
      v48 = *(*v26 + 96);
      v49 = *v35;
      v50 = *(*v35 + 96);
      if (v46 >= v48)
      {
        if (v50 >= v46)
        {
          goto LABEL_56;
        }

        *v13 = v49;
        *v35 = v45;
        v35 = &v7[v10 >> 1];
        v45 = v47;
        if (v50 >= v48)
        {
          v45 = v49;
          goto LABEL_56;
        }
      }

      else if (v50 >= v46)
      {
        *v26 = v45;
        *v13 = v47;
        v26 = &v7[v10 >> 1];
        v45 = v49;
        if (v50 >= v48)
        {
          v45 = v47;
LABEL_56:
          v51 = *v7;
          *v7 = v45;
          *v13 = v51;
          goto LABEL_57;
        }
      }

      *v26 = v49;
      *v35 = v47;
      goto LABEL_56;
    }

    v20 = *v7;
    v21 = *(*v7 + 96);
    v22 = *v12;
    v23 = *(*v13 + 96);
    if (v21 >= v23)
    {
      if (v15 < v21)
      {
        *v7 = v14;
        *v8 = v20;
        v25 = *v13;
        if (*(*v7 + 96) < *(*v13 + 96))
        {
          *v13 = *v7;
          *v7 = v25;
        }
      }

      goto LABEL_57;
    }

    if (v15 < v21)
    {
      *v13 = v14;
LABEL_36:
      *v8 = v22;
      goto LABEL_57;
    }

    *v13 = v20;
    *v7 = v22;
    if (*(*v8 + 96) < v23)
    {
      *v7 = *v8;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v52 = *v7;
    if (a4)
    {
      v53 = *(v52 + 96);
LABEL_60:
      *v7 = 0;
      v159 = v52;
      v54 = v7;
      do
      {
        v55 = v54;
        v57 = v54[1];
        ++v54;
        v56 = v57;
      }

      while (*(v57 + 96) < v53);
      v58 = a2;
      if (v55 == v7)
      {
        v58 = a2;
        do
        {
          if (v54 >= v58)
          {
            break;
          }

          v60 = *--v58;
        }

        while (*(v60 + 96) >= v53);
      }

      else
      {
        do
        {
          v59 = *--v58;
        }

        while (*(v59 + 96) >= v53);
      }

      if (v54 < v58)
      {
        v61 = *v58;
        v62 = v54;
        v63 = v58;
        do
        {
          *v62 = v61;
          *v63 = v56;
          v52 = v159;
          v64 = *(v159 + 96);
          do
          {
            v55 = v62;
            v65 = v62[1];
            ++v62;
            v56 = v65;
          }

          while (*(v65 + 96) < v64);
          do
          {
            v66 = *--v63;
            v61 = v66;
          }

          while (*(v66 + 96) >= v64);
        }

        while (v62 < v63);
      }

      if (v55 != v7)
      {
        v67 = *v55;
        *v55 = 0;
        std::unique_ptr<UMPStream::FunctionBlock>::reset[abi:ne200100](v7, v67);
        v52 = v159;
      }

      v159 = 0;
      std::unique_ptr<UMPStream::FunctionBlock>::reset[abi:ne200100](v55, v52);
      std::unique_ptr<UMPStream::FunctionBlock>::reset[abi:ne200100](&v159, 0);
      if (v54 < v58)
      {
        goto LABEL_79;
      }

      v68 = std::__insertion_sort_incomplete[abi:ne200100]<std::_RangeAlgPolicy,UMPStream::EndpointPair::addFunctionBlock(std::unique_ptr<UMPStream::FunctionBlock>)::$_1 &,std::unique_ptr<UMPStream::FunctionBlock>*>(v7, v55);
      v9 = v55 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_RangeAlgPolicy,UMPStream::EndpointPair::addFunctionBlock(std::unique_ptr<UMPStream::FunctionBlock>)::$_1 &,std::unique_ptr<UMPStream::FunctionBlock>*>(v55 + 1, a2);
      if (result)
      {
        a2 = v55;
        if (v68)
        {
          return result;
        }

        goto LABEL_2;
      }

      if ((v68 & 1) == 0)
      {
LABEL_79:
        result = std::__introsort<std::_RangeAlgPolicy,UMPStream::EndpointPair::addFunctionBlock(std::unique_ptr<UMPStream::FunctionBlock>)::$_1 &,std::unique_ptr<UMPStream::FunctionBlock>*,false>(v7, v55, a3, a4 & 1);
        a4 = 0;
        v9 = v55 + 1;
      }
    }

    else
    {
      v53 = *(v52 + 96);
      if (*(*(v7 - 1) + 96) < v53)
      {
        goto LABEL_60;
      }

      *v7 = 0;
      v159 = v52;
      if (v53 >= *(*v8 + 96))
      {
        v70 = v7 + 1;
        do
        {
          v9 = v70;
          if (v70 >= a2)
          {
            break;
          }

          ++v70;
        }

        while (v53 >= *(*v9 + 96));
      }

      else
      {
        v9 = v7;
        do
        {
          v69 = v9[1];
          ++v9;
        }

        while (v53 >= *(v69 + 96));
      }

      v71 = a2;
      if (v9 < a2)
      {
        v71 = a2;
        do
        {
          v72 = *--v71;
        }

        while (v53 < *(v72 + 96));
      }

      if (v9 < v71)
      {
        v73 = *v9;
        v74 = *v71;
        do
        {
          *v9 = v74;
          *v71 = v73;
          v52 = v159;
          v75 = *(v159 + 96);
          do
          {
            v76 = v9[1];
            ++v9;
            v73 = v76;
          }

          while (v75 >= *(v76 + 96));
          do
          {
            v77 = *--v71;
            v74 = v77;
          }

          while (v75 < *(v77 + 96));
        }

        while (v9 < v71);
      }

      v78 = v9 - 1;
      if (v9 - 1 != v7)
      {
        v79 = *v78;
        *v78 = 0;
        std::unique_ptr<UMPStream::FunctionBlock>::reset[abi:ne200100](v7, v79);
        v52 = v159;
      }

      v159 = 0;
      std::unique_ptr<UMPStream::FunctionBlock>::reset[abi:ne200100](v9 - 1, v52);
      result = std::unique_ptr<UMPStream::FunctionBlock>::reset[abi:ne200100](&v159, 0);
      a4 = 0;
    }
  }

  v81 = *v7;
  v82 = v7[1];
  v83 = *(v82 + 96);
  v84 = *(*v7 + 96);
  v85 = *v8;
  v86 = *(*v8 + 96);
  if (v83 >= v84)
  {
    if (v86 < v83)
    {
      v7[1] = v85;
      *v8 = v82;
      v147 = *v7;
      v146 = v7[1];
      if (*(v146 + 96) < *(*v7 + 96))
      {
        *v7 = v146;
        v7[1] = v147;
      }
    }
  }

  else
  {
    if (v86 >= v83)
    {
      *v7 = v82;
      v7[1] = v81;
      if (*(*v8 + 96) >= v84)
      {
        return result;
      }

      v7[1] = *v8;
    }

    else
    {
      *v7 = v85;
    }

    *v8 = v81;
  }

  return result;
}

uint64_t *std::__sort5[abi:ne200100]<std::_RangeAlgPolicy,UMPStream::EndpointPair::addFunctionBlock(std::unique_ptr<UMPStream::FunctionBlock>)::$_1 &,std::unique_ptr<UMPStream::FunctionBlock>*,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *(*a2 + 96);
  v7 = *result;
  v8 = *(*result + 96);
  v9 = *a3;
  v10 = *(*a3 + 96);
  if (v6 >= v8)
  {
    if (v10 >= v6)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (*(*a2 + 96) < *(*result + 96))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v10 < v6)
    {
      *result = v9;
LABEL_9:
      *a3 = v7;
      v5 = v7;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v7;
    v5 = *a3;
    if (*(*a3 + 96) < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 96) < *(v5 + 96))
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*(*a3 + 96) < *(*a2 + 96))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(*a2 + 96) < *(*result + 96))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(*a5 + 96) < *(*a4 + 96))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(*a4 + 96) < *(*a3 + 96))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(*a3 + 96) < *(*a2 + 96))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(*a2 + 96) < *(*result + 96))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_RangeAlgPolicy,UMPStream::EndpointPair::addFunctionBlock(std::unique_ptr<UMPStream::FunctionBlock>)::$_1 &,std::unique_ptr<UMPStream::FunctionBlock>*>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v7 = *a1;
      v8 = a1[1];
      v9 = *(v8 + 96);
      v10 = *(*a1 + 96);
      v11 = *(a2 - 1);
      v12 = *(v11 + 96);
      if (v9 >= v10)
      {
        if (v12 < v9)
        {
          a1[1] = v11;
          *(a2 - 1) = v8;
          v34 = *a1;
          v33 = a1[1];
          if (*(v33 + 96) < *(*a1 + 96))
          {
            *a1 = v33;
            a1[1] = v34;
          }
        }

        return 1;
      }

      if (v12 >= v9)
      {
        *a1 = v8;
        a1[1] = v7;
        v48 = *(a2 - 1);
        if (*(v48 + 96) >= v10)
        {
          return 1;
        }

        a1[1] = v48;
      }

      else
      {
        *a1 = v11;
      }

      *(a2 - 1) = v7;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        std::__sort5[abi:ne200100]<std::_RangeAlgPolicy,UMPStream::EndpointPair::addFunctionBlock(std::unique_ptr<UMPStream::FunctionBlock>)::$_1 &,std::unique_ptr<UMPStream::FunctionBlock>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
      }

      goto LABEL_13;
    }

    v22 = a1 + 1;
    v23 = a1[1];
    v24 = a1 + 2;
    v25 = a1[2];
    v26 = *(v23 + 96);
    v27 = *a1;
    v28 = *(*a1 + 96);
    v29 = *(v25 + 96);
    if (v26 >= v28)
    {
      if (v29 >= v26)
      {
LABEL_42:
        v23 = v25;
        goto LABEL_43;
      }

      *v22 = v25;
      *v24 = v23;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v23;
      if (v29 >= v28)
      {
LABEL_43:
        v43 = *(a2 - 1);
        if (*(v43 + 96) < *(v23 + 96))
        {
          *v24 = v43;
          *(a2 - 1) = v23;
          v44 = *v24;
          v45 = *(v44 + 96);
          v46 = *v22;
          if (v45 < *(v46 + 96))
          {
            a1[1] = v44;
            a1[2] = v46;
            v47 = *a1;
            if (v45 < *(*a1 + 96))
            {
              *a1 = v44;
              a1[1] = v47;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v29 >= v26)
      {
        *a1 = v23;
        a1[1] = v27;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v27;
        if (v29 >= v28)
        {
          goto LABEL_42;
        }
      }
    }

    *v30 = v25;
    *v31 = v27;
    v23 = v32;
    goto LABEL_43;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    if (*(v5 + 96) < *(*a1 + 96))
    {
      *a1 = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v14 = a1[2];
  v15 = a1[1];
  v16 = *(v15 + 96);
  v17 = *a1;
  v18 = *(*a1 + 96);
  v19 = *(v14 + 96);
  if (v16 >= v18)
  {
    if (v19 >= v16)
    {
      goto LABEL_27;
    }

    a1[1] = v14;
    *v13 = v15;
    v20 = a1;
    v21 = a1 + 1;
LABEL_25:
    if (v19 >= v18)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v20 = a1;
  v21 = a1 + 2;
  if (v19 >= v16)
  {
    *a1 = v15;
    a1[1] = v17;
    v20 = a1 + 1;
    v21 = a1 + 2;
    goto LABEL_25;
  }

LABEL_26:
  *v20 = v14;
  *v21 = v17;
LABEL_27:
  v35 = a1 + 3;
  if (a1 + 3 != a2)
  {
    v36 = 0;
    v37 = 0;
    do
    {
      v38 = *v35;
      if (*(*v35 + 96) < *(*v13 + 96))
      {
        *v35 = 0;
        v51 = v38;
        v39 = *v13;
        v40 = v36;
        while (1)
        {
          *(a1 + v40 + 16) = 0;
          std::unique_ptr<UMPStream::FunctionBlock>::reset[abi:ne200100]((a1 + v40 + 24), v39);
          v41 = v51;
          if (v40 == -16)
          {
            break;
          }

          v39 = *(a1 + v40 + 8);
          v40 -= 8;
          if (*(v51 + 96) >= *(v39 + 96))
          {
            v42 = (a1 + v40 + 24);
            goto LABEL_35;
          }
        }

        v42 = a1;
LABEL_35:
        v51 = 0;
        std::unique_ptr<UMPStream::FunctionBlock>::reset[abi:ne200100](v42, v41);
        if (++v37 == 8)
        {
          v49 = v35 + 1 == a2;
          std::unique_ptr<UMPStream::FunctionBlock>::reset[abi:ne200100](&v51, 0);
          return v49;
        }

        std::unique_ptr<UMPStream::FunctionBlock>::reset[abi:ne200100](&v51, 0);
      }

      v13 = v35;
      v36 += 8;
      ++v35;
    }

    while (v35 != a2);
  }

  return 1;
}

void *std::__list_imp<MergeQueueElem>::clear(void *result)
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
    while (result != v1)
    {
      v4 = result[1];
      std::__list_imp<MergeQueueElem>::__delete_node[abi:ne200100](result);
      result = v4;
    }
  }

  return result;
}

void std::__list_imp<MergeQueueElem>::__delete_node[abi:ne200100](void *__p)
{
  v2 = __p[2];
  __p[2] = 0;
  if (v2)
  {
    (__p[3])();
  }

  operator delete(__p);
}

void gSysExUtilitiesLog(void)
{
  {
    gSysExUtilitiesLog(void)::sysexu = os_log_create("com.apple.coremidi", "sysexu");
  }
}

MIDIEventPacket *MIDI::sendOrDeferEventsOnActiveSysExGroups(MIDIEventPacket *result, uint64_t a2, uint64_t a3, void (***a4)(uint64_t, void *), uint64_t (***a5)(uint64_t, int *, void *))
{
  v45 = a5;
  v49 = a4;
  v47 = a2;
  v55[1] = *MEMORY[0x277D85DE8];
  timeStamp_high = HIDWORD(result->timeStamp);
  *&v53.protocol = LODWORD(result->timeStamp);
  if (timeStamp_high)
  {
    v50 = result;
    p_wordCount = &result->wordCount;
    packet = v53.packet;
    v7 = v53.packet;
    do
    {
      v44 = timeStamp_high;
      v8 = 0;
      v9 = p_wordCount + 3;
      v10 = p_wordCount + 3;
      v51 = p_wordCount;
      for (i = p_wordCount + 3; ; v10 = &i[v8])
      {
        v11 = *v10;
        v12 = *v10 >> 28;
        if (v12)
        {
          v13 = v12 == 15;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          std::terminate();
        }

        if (BYTE2(v11) - 248 <= 7 && ((1 << (BYTE2(v11) + 8)) & 0xDD) != 0)
        {
          goto LABEL_12;
        }

        v29 = HIBYTE(v11) & 0xF;
        if (v12 == 15)
        {
          v29 = 255;
        }

        if (*(v47 + v29) == 1)
        {
          v15 = 0;
          v30 = &v9[v8];
          v31 = &v30[p_wordCount[2] - v8];
          LOBYTE(v32) = -1;
          do
          {
            v33 = *v30;
            if (v32 == 0xFF)
            {
              if (BYTE2(v33) > 0xF7u && ((0xDDu >> (BYTE2(v33) + 8)) & 1) != 0)
              {
                LOBYTE(v32) = -1;
              }

              else
              {
                if (v33 >> 28)
                {
                  v34 = v33 >> 28 == 15;
                }

                else
                {
                  v34 = 1;
                }

                v32 = BYTE3(v33) & 0xF;
                if (v34)
                {
                  LOBYTE(v32) = -1;
                }
              }
            }

            if (BYTE2(v33) - 248 <= 7 && ((1 << (BYTE2(v33) + 8)) & 0xDD) != 0)
            {
              break;
            }

            v36 = v33 >> 28;
            v37 = !(*v30 >> 28) || v36 == 15;
            if (v37 || (BYTE3(v33) & 0xF) != v32)
            {
              v38 = BYTE2(v33) - 248;
              if (v38 > 7 || ((1 << v38) & 0xC1) == 0)
              {
                break;
              }
            }

            v15 += MIDI::UniversalPacket::word_sizes[v36];
            v30 += MIDI::UniversalPacket::word_sizes[v36];
          }

          while (v30 < v31);
          v46 = v7;
          MEMORY[0x28223BE20]();
          v41 = &v43 - v40;
          *v41 = *v42;
          *(v41 + 2) = v15;
          if (v15)
          {
            memcpy(v41 + 12, v10, v39);
          }

          timeStamp = v50->timeStamp;
          v55[0] = v41;
          result = (**v45)((v45 + 1), &timeStamp, v55);
          v27 = v51;
          v7 = v46;
        }

        else
        {
LABEL_12:
          v15 = 0;
          v16 = &v9[v8];
          v17 = &v16[p_wordCount[2] - v8];
          LOBYTE(v18) = -1;
          do
          {
            v19 = *v16;
            if (v18 == 0xFF)
            {
              if (BYTE2(v19) > 0xF7u && ((0xDDu >> (BYTE2(v19) + 8)) & 1) != 0)
              {
                LOBYTE(v18) = -1;
              }

              else
              {
                if (v19 >> 28)
                {
                  v20 = v19 >> 28 == 15;
                }

                else
                {
                  v20 = 1;
                }

                v18 = BYTE3(v19) & 0xF;
                if (v20)
                {
                  LOBYTE(v18) = -1;
                }
              }
            }

            v21 = v19 >> 28;
            if (*v16 >> 28)
            {
              v22 = v21 == 15;
            }

            else
            {
              v22 = 1;
            }

            if (v22 || (BYTE3(v19) & 0xF) != v18)
            {
              v23 = BYTE2(v19) - 248;
              v24 = v23 > 7;
              v25 = (1 << v23) & 0xDD;
              if (v24 || v25 == 0)
              {
                break;
              }
            }

            v15 += MIDI::UniversalPacket::word_sizes[v21];
            v16 += MIDI::UniversalPacket::word_sizes[v21];
          }

          while (v16 < v17);
          result = MIDIEventListAdd(&v53, 0x114uLL, v7, *p_wordCount, v15, v10);
          if (result)
          {
            v7 = result;
            v27 = v51;
          }

          else
          {
            v55[0] = &v53;
            (**v49)((v49 + 1), v55);
            v27 = v51;
            *&v53.protocol = LODWORD(v50->timeStamp);
            result = MIDIEventListAdd(&v53, 0x114uLL, packet, *v51, v15, v10);
            v7 = result;
          }
        }

        v8 += v15;
        v28 = *(v27 + 2);
        if (v8 >= v28)
        {
          break;
        }

        p_wordCount = v27;
        v9 = i;
      }

      p_wordCount = &i[v28];
      timeStamp_high = v44 - 1;
    }

    while (v44 != 1);
    if (v53.numPackets)
    {
      v55[0] = &v53;
      return (**v49)(v49 + 1, v55, v7);
    }
  }

  return result;
}

void SetupManager::SetupManager(SetupManager *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 6) = 0;
  *(this + 7) = this + 56;
  *(this + 8) = this + 56;
  *(this + 9) = 0;
  *(this + 20) = 1;
  context.version = 0;
  context.info = this;
  memset(&context.retain, 0, 24);
  *(this + 11) = CFRunLoopTimerCreate(0, 0.0, 1000000.0, 0, 0, SetupManager::NotificationTimerCallback, &context);
  Current = CFRunLoopGetCurrent();
  v3 = *MEMORY[0x277CBF058];
  CFRunLoopAddTimer(Current, *(this + 11), *MEMORY[0x277CBF058]);
  *(this + 12) = CFRunLoopTimerCreate(0, 0.0, 1000000.0, 0, 0, SetupManager::PrefSaverTimerCallback, &context);
  v4 = CFRunLoopGetCurrent();
  CFRunLoopAddTimer(v4, *(this + 12), v3);
}

void sub_2371F81BC(_Unwind_Exception *a1)
{
  NotificationQueue::~NotificationQueue(v2);
  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
  }

  v5 = v1[1];
  if (v5)
  {
    v1[2] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void NotificationQueue::~NotificationQueue(NotificationQueue *this)
{
  NotificationQueue::eraseall(this);
  if (*(this + 2))
  {
    v2 = *(this + 1);
    v3 = *(*this + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(this + 2) = 0;
    if (v2 != this)
    {
      do
      {
        v5 = *(v2 + 1);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != this);
    }
  }
}

void *NotificationQueue::eraseall(void *this)
{
  v1 = this[1];
  if (v1 == this)
  {
    return this;
  }

  v2 = this;
  do
  {
    v3 = *(v1 + 16);
    if (v3 > 4099)
    {
      if (v3 == 4100 || v3 == 4101)
      {
        v4 = *(v1 + 40);
        if (v4)
        {
          goto LABEL_10;
        }
      }
    }

    else if ((v3 - 4096) < 3 || v3 == 4)
    {
      v4 = *(v1 + 32);
LABEL_10:
      CFRelease(v4);
    }

    v1 = *(v1 + 8);
  }

  while (v1 != v2);
  this = v2[1];
  if (this != v2)
  {
    v5 = *(*v2 + 8);
    v6 = *this;
    *(v6 + 8) = v5;
    *v5 = v6;
    do
    {
      v7 = this[1];
      --v2[2];
      operator delete(this);
      this = v7;
    }

    while (v7 != v2);
  }

  return this;
}

uint64_t SetupManager::instance(SetupManager *this)
{
  {
    operator new();
  }

  return SetupManager::instance(void)::gSetupManager;
}

void sub_2371F83A8(_Unwind_Exception *a1)
{
  MEMORY[0x2383C8250](v1, 0x10A0C40369D21D1);
  _Unwind_Resume(a1);
}

void SetupManager::Install(SetupManager *this, MIDISetup *a2, char a3)
{
  v5 = this;
  v6 = *this;
  if (*this)
  {
    v8 = *(v6 + 64);
    v7 = *(v6 + 72);
    while (v8 != v7)
    {
      v9 = *v8;
      v11 = *(*v8 + 80);
      v10 = *(*v8 + 88);
      if (v11 != v10)
      {
        do
        {
          v12 = *v11;
          v13 = *(*v11 + 72);
          if (v13 != *(*v11 + 80))
          {
            do
            {
              v14 = *v13++;
              this = MIDISource::CloseInputConnections(v14);
            }

            while (v13 != *(v12 + 80));
            v10 = *(v9 + 88);
          }

          ++v11;
        }

        while (v11 != v10);
        v7 = *(v6 + 72);
      }

      ++v8;
    }

    v15 = MIDIServer::defaultInstance(this);
    MIDIDriverMgr::StopMIDI(v15[33]);
    MIDISetup::CheckWritePrefFile(*v5);
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }
  }

  else
  {
    v16 = MIDIServer::defaultInstance(this);
    MIDIDriverMgr::StopMIDI(v16[33]);
  }

  *v5 = a2;
  MIDISetup::CreationEffects(a2);
  MIDISetup::ScanForDriverDevices(a2);
  MIDIServer::startMIDI(v17, v18);
  if ((a3 & 1) == 0)
  {
    *(v5 + 81) = 1;

    SetupManager::SchedulePrefSaver(v5);
  }
}

void SetupManager::PropertyDirty(SetupManager *this, MIDIObject *a2, const __CFString *a3)
{
  v6 = *this;
  if (*this && (*(v6 + 218) & 1) == 0)
  {
    *(v6 + 217) = 1;
    v7 = SetupManager::instance(this);
    SetupManager::SchedulePrefSaver(v7);
  }

  (*(*a2 + 72))(a2);
  CFRetain(a3);
  SetupManager::AddNotification(this);
  if (CFEqual(a3, kMIDIPropertyOffline))
  {
    v8 = *this;
    v67 = 0;
    IntegerProperty = MIDIObject::GetIntegerProperty(a2, kMIDIPropertyOffline, &v67);
    if (!IntegerProperty)
    {
      v10 = MIDIServer::defaultInstance(IntegerProperty);
      v12 = *(v8 + 11);
      v11 = *(v8 + 12);
      if (v12 != v11)
      {
        v65 = *v10[33];
        v13 = &unk_27DE98000;
        do
        {
          v14 = *v12;
          if (*(*(*v12 + 9) + 48) == a2)
          {
            if (v67)
            {
              MIDISetup::ObjectRemoved(v8, *v12);
            }

            else
            {
              MIDISetup::ObjectAdded(v8, v14);
            }

            v16 = MIDIServer::defaultInstance(v15);
            v17 = v67;
            PairedEndpoint = MIDIEndpoint::GetPairedEndpoint(v14);
            v69[0] = 0;
            v19 = MIDIObject::GetIntegerProperty(v14, v13[158], v69);
            if (!v19 && (LOWORD(v69[0]) ^ (LOWORD(v69[0]) - 1)) <= LOWORD(v69[0]) - 1 && PairedEndpoint)
            {
              v27 = v16 + 110;
              if (v17)
              {
                v28 = *(v14 + 2);
                std::mutex::lock((v16 + 114));
                *v69 = 0;
                v70 = 0;
                v71 = 0;
                v29 = v16[111];
                v30 = v16[112];
                v66 = (v16 + 114);
                if (v29 != v30)
                {
                  while (1)
                  {
                    v31 = *v29;
                    if (*(*v29 + 100) == v28 || !v28 && !*(v31 + 104))
                    {
                      break;
                    }

                    if (++v29 == v30)
                    {
                      v29 = v16[112];
                      goto LABEL_87;
                    }
                  }

                  LODWORD(cf) = *(v31 + 8);
                  std::vector<unsigned int>::push_back[abi:ne200100](v69, &cf);
                  if (v29 != v30)
                  {
                    for (i = v29 + 1; i != v30; ++i)
                    {
                      v54 = *i;
                      if (*(*i + 100) != v28 && (v28 || *(v54 + 104)))
                      {
                        *i = 0;
                        std::unique_ptr<UMPStream::EndpointPair>::reset[abi:ne200100](v29++, v54);
                      }

                      else
                      {
                        LODWORD(cf) = *(v54 + 8);
                        std::vector<unsigned int>::push_back[abi:ne200100](v69, &cf);
                      }
                    }
                  }
                }

LABEL_87:
                std::vector<std::unique_ptr<UMPStream::EndpointPair>>::erase((v16 + 111), v29, v16[112]);
                v56 = *v69;
                v55 = v70;
                for (j = *v69; j != v55; ++j)
                {
                  v58 = *v27;
                  v59 = *j;
                  cf = 0;
                  UMPCIServerContext::sendNotificationForObject(v58, 2, v59, &cf);
                  if (cf)
                  {
                    CFRelease(cf);
                  }
                }

                if (v56)
                {
                  operator delete(v56);
                }

                std::mutex::unlock(v66);
                v13 = &unk_27DE98000;
              }

              else if (v65)
              {
                UMPStream::EndpointManager::sendEndpointDiscoveryMessage((v16 + 110), PairedEndpoint);
              }

              else
              {
                v60 = v16[123];
                if (!v60)
                {
LABEL_106:
                  operator new();
                }

                while (1)
                {
                  while (1)
                  {
                    v61 = v60;
                    v62 = *(v60 + 28);
                    if (PairedEndpoint >= v62)
                    {
                      break;
                    }

                    v60 = *v61;
                    if (!*v61)
                    {
                      goto LABEL_106;
                    }
                  }

                  if (v62 >= PairedEndpoint)
                  {
                    break;
                  }

                  v60 = v61[1];
                  if (!v60)
                  {
                    goto LABEL_106;
                  }
                }
              }
            }

            v20 = MIDIServer::defaultInstance(v19);
            if ((*(v14 + 97) & 1) == 0)
            {
              if ((v21 = v20, v22 = v67, MIDIEndpoint::IsPartOfLegacyDevice(v14)) && MIDIEndpoint::GetPairedEndpoint(v14) || MIDIEndpoint::IsPartOfUMPDevice(v14) && (MIDIEndpoint::IsPartOfPhantomEntity(*(v14 + 9)) & 1) != 0 || *(v14 + 7))
              {
                if (v22)
                {
                  v23 = *(v14 + 2);
                  std::mutex::lock((v21 + 90));
                  *v69 = 0;
                  v70 = 0;
                  v71 = 0;
                  v24 = v21[87];
                  v25 = v21[88];
                  if (v24 != v25)
                  {
                    while (1)
                    {
                      v26 = *v24;
                      if (*(*v24 + 18) == v23 || !v23 && !*(v26 + 19))
                      {
                        break;
                      }

                      if (++v24 == v25)
                      {
                        v24 = v21[88];
                        goto LABEL_53;
                      }
                    }

                    LODWORD(cf) = *(v26 + 2);
                    std::vector<unsigned int>::push_back[abi:ne200100](v69, &cf);
                    if (v24 != v25)
                    {
                      for (k = v24 + 1; k != v25; ++k)
                      {
                        v37 = *k;
                        if (*(*k + 18) != v23 && (v23 || *(v37 + 19)))
                        {
                          *k = 0;
                          std::unique_ptr<MIDICI::Device>::reset[abi:ne200100](v24++, v37);
                        }

                        else
                        {
                          LODWORD(cf) = *(v37 + 2);
                          std::vector<unsigned int>::push_back[abi:ne200100](v69, &cf);
                        }
                      }
                    }
                  }

LABEL_53:
                  std::vector<std::unique_ptr<MIDICI::Device>>::erase((v21 + 87), v24, v21[88]);
                  v38 = v21[100];
                  if (v38)
                  {
                    v39 = v21 + 100;
                    v40 = v21[100];
                    do
                    {
                      v41 = *(v40 + 32);
                      v42 = v41 >= v23;
                      v43 = v41 < v23;
                      if (v42)
                      {
                        v39 = v40;
                      }

                      v40 = *(v40 + 8 * v43);
                    }

                    while (v40);
                    if (v39 != v21 + 100 && v23 >= *(v39 + 8))
                    {
                      v44 = v39[1];
                      v45 = v39;
                      if (v44)
                      {
                        do
                        {
                          v46 = v44;
                          v44 = *v44;
                        }

                        while (v44);
                      }

                      else
                      {
                        do
                        {
                          v46 = v45[2];
                          v47 = *v46 == v45;
                          v45 = v46;
                        }

                        while (!v47);
                      }

                      if (v21[99] == v39)
                      {
                        v21[99] = v46;
                      }

                      --v21[101];
                      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v38, v39);
                      std::__tree<std::__value_type<unsigned int,std::unique_ptr<MIDICI::CIRetrier>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unique_ptr<MIDICI::CIRetrier>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unique_ptr<MIDICI::CIRetrier>>>>::destroy(v39[7]);
                      std::unique_ptr<MIDICI::SysexCollector>::reset[abi:ne200100](v39 + 5, 0);
                      operator delete(v39);
                    }
                  }

                  v49 = *v69;
                  v48 = v70;
                  for (m = *v69; m != v48; ++m)
                  {
                    v51 = v21[86];
                    v52 = *m;
                    cf = 0;
                    UMPCIServerContext::sendNotificationForObject(v51, 2, v52, &cf);
                    if (cf)
                    {
                      CFRelease(cf);
                    }
                  }

                  if (v49)
                  {
                    operator delete(v49);
                  }

                  std::mutex::unlock((v21 + 90));
                  v13 = &unk_27DE98000;
                }

                else if (MIDIEndpoint::IsPartOfLegacyDevice(v14))
                {
                  v32 = MIDIEndpoint::GetPairedEndpoint(v14);
                  v33 = v21[103];
                  if (!v33)
                  {
LABEL_101:
                    operator new();
                  }

                  while (1)
                  {
                    while (1)
                    {
                      v34 = v33;
                      v35 = *(v33 + 28);
                      if (v32 >= v35)
                      {
                        break;
                      }

                      v33 = *v34;
                      if (!*v34)
                      {
                        goto LABEL_101;
                      }
                    }

                    if (v35 >= v32)
                    {
                      break;
                    }

                    v33 = v34[1];
                    if (!v33)
                    {
                      goto LABEL_101;
                    }
                  }

                  MIDICI::DeviceManager::setMIDIRunning((v21 + 86), v65);
                }
              }
            }

            v11 = *(v8 + 12);
          }

          ++v12;
        }

        while (v12 != v11);
      }

      for (n = *(v8 + 14); n != *(v8 + 15); ++n)
      {
        v64 = *n;
        if (*(*(*n + 9) + 48) == a2)
        {
          if (v67)
          {
            MIDISetup::ObjectRemoved(v8, v64);
          }

          else
          {
            MIDISetup::ObjectAdded(v8, v64);
          }
        }
      }
    }
  }
}

void sub_2371F8BE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::mutex::unlock(a10);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<unsigned short,unsigned short>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,unsigned short>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,unsigned short>>>::erase(uint64_t **a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = v4[1];
      v7 = v4;
      if (v6)
      {
        do
        {
          v8 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v8 = v7[2];
          v9 = *v8 == v7;
          v7 = v8;
        }

        while (!v9);
      }

      if (*a1 == v4)
      {
        *a1 = v8;
      }

      v10 = a1[1];
      a1[2] = (a1[2] - 1);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v10, v4);
      operator delete(v4);
      v4 = v8;
    }

    while (v8 != a3);
  }

  return a3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (v18 && (v18[3] & 1) == 0)
      {
LABEL_58:
        v17 = v7;
      }

      else
      {
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_71;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_67;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v23 && (v23[3] & 1) == 0)
  {
LABEL_67:
    v24 = v7;
    goto LABEL_68;
  }

  *(v24 + 24) = 1;
  *(v7 + 24) = 0;
  v32 = *v24;
  v7[1] = *v24;
  if (v32)
  {
    *(v32 + 16) = v7;
  }

  v33 = v7[2];
  v24[2] = v33;
  v33[*v33 != v7] = v24;
  *v24 = v7;
  v7[2] = v24;
  v23 = v7;
LABEL_68:
  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_71:
  *(v28 + 16) = v29;
  return result;
}

uint64_t _MIDIObjectGetIntegerProperty(MIDIServer *a1, const __CFString *a2, int *a3)
{
  v5 = a1;
  v6 = MIDIServer::defaultInstance(a1, a2) + 16;
  v7 = (*(*v6 + 16))(v6);
  v8 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIObject>::sRTTI, v5);
  IntegerProperty = 0;
  IntegerOrDataProperty = 4294967246;
  if (!a3)
  {
    v12 = 0;
LABEL_7:
    if (!v7)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v11 = v8;
  v12 = 0;
  if (!v8)
  {
    goto LABEL_7;
  }

  if (CFEqual(a2, kMIDIPropertyConnectionUniqueID))
  {
    IntegerOrDataProperty = MIDIObject::GetIntegerOrDataProperty(v11, a2, 0, a3);
    IntegerProperty = 0;
    v12 = 0;
    if (!v7)
    {
      goto LABEL_9;
    }

LABEL_8:
    (*(*v6 + 24))(v6);
    goto LABEL_9;
  }

  v12 = 1;
  IntegerProperty = MIDIObject::GetIntegerProperty(v11, a2, a3);
  if (v7)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (v12)
  {
    return IntegerProperty;
  }

  return IntegerOrDataProperty;
}

void sub_2371F91C0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  CADeprecated::CAMutex::Locker::~Locker(&a9);
  if (a2 == 3)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
  }

  else
  {
    if (a2 == 2)
    {
      __cxa_get_exception_ptr(a1);
      a9 = MEMORY[0x277D82910] + 16;
      __cxa_begin_catch(a1);
      std::exception::~exception(&a9);
    }

    else
    {
      __cxa_begin_catch(a1);
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x2371F9174);
}

uint64_t _MIDIObjectSetIntegerProperty(MIDIServer *a1, const __CFString *a2, int a3)
{
  v5 = a1;
  v6 = MIDIServer::defaultInstance(a1) + 2;
  v7 = (*(*v6 + 16))(v6);
  v8 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIObject>::sRTTI, v5);
  if (!v8)
  {
    v12 = 0;
    v13 = 4294967246;
    if (!v7)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v9 = v8;
  v10 = CFEqual(a2, kMIDIPropertyUniqueID);
  if (v10)
  {
    v11 = SetupManager::instance(v10);
    if (MIDISetup::FindObjectByUniqueID(*v11, a3, v9))
    {
      v12 = 0;
      v13 = 4294956453;
      if (!v7)
      {
        goto LABEL_12;
      }

LABEL_11:
      (*(*v6 + 24))(v6);
      goto LABEL_12;
    }
  }

  v14 = MIDIObject::SetProperty(v9, a2, a3);
  if (v14)
  {
    v15 = SetupManager::instance(v14);
    SetupManager::PropertyDirty(v15, v9, a2);
  }

  v13 = 4294956453;
  v12 = 1;
  if (v7)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (v12)
  {
    return 0;
  }

  return v13;
}

void sub_2371F939C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  CADeprecated::CAMutex::Locker::~Locker(&a9);
  if (a2 == 3)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
  }

  else
  {
    if (a2 == 2)
    {
      __cxa_get_exception_ptr(a1);
      a9 = MEMORY[0x277D82910] + 16;
      __cxa_begin_catch(a1);
      std::exception::~exception(&a9);
    }

    else
    {
      __cxa_begin_catch(a1);
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x2371F9380);
}

uint64_t _MIDIObjectGetStringProperty(MIDIServer *a1, const __CFString *a2, const __CFString **StringProperty)
{
  v5 = a1;
  v6 = MIDIServer::defaultInstance(a1) + 2;
  v7 = (*(*v6 + 16))(v6);
  v8 = v7;
  if (StringProperty)
  {
    v9 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIObject>::sRTTI, v5);
    if (v9)
    {
      StringProperty = MIDIObject::GetStringProperty(v9, a2, StringProperty);
      v10 = 1;
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v10 = 0;
      StringProperty = 0;
      if (!v8)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    (*(*v6 + 24))(v6);
    goto LABEL_9;
  }

  v10 = 0;
  if (v7)
  {
    goto LABEL_8;
  }

LABEL_9:
  if ((v10 & 1) == 0)
  {
    return 4294967246;
  }

  return StringProperty;
}

void sub_2371F953C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  CADeprecated::CAMutex::Locker::~Locker(&a9);
  if (a2 == 2)
  {
    __cxa_get_exception_ptr(a1);
    a9 = MEMORY[0x277D82910] + 16;
    __cxa_begin_catch(a1);
    std::exception::~exception(&a9);
    __cxa_end_catch();
    JUMPOUT(0x2371F951CLL);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2371F9520);
}

uint64_t _MIDIObjectSetStringProperty(MIDIServer *a1, const __CFString *a2, uint64_t a3)
{
  v5 = a1;
  v6 = MIDIServer::defaultInstance(a1) + 2;
  v7 = (*(*v6 + 16))(v6);
  v8 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIObject>::sRTTI, v5);
  if (v8 && (v9 = v8, !CFEqual(a2, kMIDIPropertyDisplayName)))
  {
    v11 = (*(*v9 + 40))(v9, a2, a3);
    if (v11)
    {
      v12 = SetupManager::instance(v11);
      SetupManager::PropertyDirty(v12, v9, a2);
    }

    if (v7)
    {
      (*(*v6 + 24))(v6);
    }

    return 0;
  }

  else
  {
    if (v7)
    {
      (*(*v6 + 24))(v6);
    }

    return 4294967246;
  }
}

void sub_2371F9730(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  CADeprecated::CAMutex::Locker::~Locker(&a9);
  if (a2 == 2)
  {
    __cxa_get_exception_ptr(a1);
    a9 = MEMORY[0x277D82910] + 16;
    __cxa_begin_catch(a1);
    std::exception::~exception(&a9);
    __cxa_end_catch();
    JUMPOUT(0x2371F9690);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2371F970CLL);
}

uint64_t _MIDIObjectGetDataProperty(MIDIServer *a1, const __CFString *a2, const __CFData **a3)
{
  v5 = a1;
  v6 = MIDIServer::defaultInstance(a1) + 2;
  v7 = (*(*v6 + 16))(v6);
  v8 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIObject>::sRTTI, v5);
  if (a3)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (v9)
  {
    IntegerOrDataProperty = 0;
  }

  else
  {
    v11 = v8;
    if (CFEqual(a2, kMIDIPropertyConnectionUniqueID))
    {
      IntegerOrDataProperty = MIDIObject::GetIntegerOrDataProperty(v11, a2, a3, 0);
    }

    else
    {
      cf = 0;
      IntegerOrDataProperty = (*(*v11 + 32))(v11, a2, &cf, 1);
      if (!IntegerOrDataProperty)
      {
        v14 = CFGetTypeID(cf);
        if (v14 == CFDataGetTypeID())
        {
          IntegerOrDataProperty = 0;
          *a3 = cf;
        }

        else
        {
          CFRelease(cf);
          IntegerOrDataProperty = 4294956460;
        }
      }
    }
  }

  if (v7)
  {
    (*(*v6 + 24))(v6);
  }

  if ((v10 & 1) == 0)
  {
    return 4294967246;
  }

  return IntegerOrDataProperty;
}

void sub_2371F994C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception a10)
{
  CADeprecated::CAMutex::Locker::~Locker(&a10);
  if (a2 == 2)
  {
    __cxa_get_exception_ptr(a1);
    a10.__vftable = (MEMORY[0x277D82910] + 16);
    __cxa_begin_catch(a1);
    std::exception::~exception(&a10);
    __cxa_end_catch();
    JUMPOUT(0x2371F98B0);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2371F98B4);
}

uint64_t _MIDIObjectSetDataProperty(MIDIServer *a1, const __CFString *a2, uint64_t a3)
{
  v5 = a1;
  v6 = MIDIServer::defaultInstance(a1) + 2;
  v7 = (*(*v6 + 16))(v6);
  v8 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIObject>::sRTTI, v5);
  if (v8)
  {
    v9 = v8;
    v10 = (*(*v8 + 40))(v8, a2, a3);
    if (v10)
    {
      v11 = SetupManager::instance(v10);
      SetupManager::PropertyDirty(v11, v9, a2);
    }

    if (v7)
    {
      (*(*v6 + 24))(v6);
    }

    return 0;
  }

  else
  {
    if (v7)
    {
      (*(*v6 + 24))(v6);
    }

    return 4294967246;
  }
}

void sub_2371F9B24(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  CADeprecated::CAMutex::Locker::~Locker(&a9);
  if (a2 == 2)
  {
    __cxa_get_exception_ptr(a1);
    a9 = MEMORY[0x277D82910] + 16;
    __cxa_begin_catch(a1);
    std::exception::~exception(&a9);
    __cxa_end_catch();
    JUMPOUT(0x2371F9AFCLL);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2371F9B00);
}

uint64_t _MIDIObjectGetDictionaryProperty(MIDIServer *a1, const __CFString *a2, CFTypeRef *a3)
{
  v5 = a1;
  v6 = MIDIServer::defaultInstance(a1) + 2;
  v7 = (*(*v6 + 16))(v6);
  if (a3)
  {
    v8 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIObject>::sRTTI, v5);
    if (v8)
    {
      v9 = v8;
      cf = 0;
      if (CFEqual(a2, kMIDIPropertyDisplayName))
      {
        v10 = kMIDIPropertyName;
      }

      else
      {
        v10 = a2;
      }

      v11 = (*(*v9 + 32))(v9, v10, &cf, 1);
      if (!v11)
      {
        v12 = CFGetTypeID(cf);
        if (v12 == CFDictionaryGetTypeID())
        {
          v11 = 0;
          *a3 = cf;
        }

        else
        {
          CFRelease(cf);
          v11 = 4294956460;
        }
      }

      LOBYTE(a3) = 1;
      if (v7)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

    LOBYTE(a3) = 0;
  }

  v11 = 0;
  if (v7)
  {
LABEL_14:
    (*(*v6 + 24))(v6);
  }

LABEL_15:
  if ((a3 & 1) == 0)
  {
    return 4294967246;
  }

  return v11;
}

void sub_2371F9D30(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception a10)
{
  CADeprecated::CAMutex::Locker::~Locker(&a10);
  if (a2 == 2)
  {
    __cxa_get_exception_ptr(a1);
    a10.__vftable = (MEMORY[0x277D82910] + 16);
    __cxa_begin_catch(a1);
    std::exception::~exception(&a10);
    __cxa_end_catch();
    JUMPOUT(0x2371F9D0CLL);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2371F9D10);
}

uint64_t _MIDIObjectSetDictionaryProperty(MIDIServer *a1, const __CFString *a2, uint64_t a3)
{
  v5 = a1;
  v6 = MIDIServer::defaultInstance(a1) + 2;
  v7 = (*(*v6 + 16))(v6);
  v8 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIObject>::sRTTI, v5);
  if (v8)
  {
    v9 = v8;
    v10 = (*(*v8 + 40))(v8, a2, a3);
    if (v10)
    {
      v11 = SetupManager::instance(v10);
      SetupManager::PropertyDirty(v11, v9, a2);
    }

    if (v7)
    {
      (*(*v6 + 24))(v6);
    }

    return 0;
  }

  else
  {
    if (v7)
    {
      (*(*v6 + 24))(v6);
    }

    return 4294967246;
  }
}

void sub_2371F9F08(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  CADeprecated::CAMutex::Locker::~Locker(&a9);
  if (a2 == 2)
  {
    __cxa_get_exception_ptr(a1);
    a9 = MEMORY[0x277D82910] + 16;
    __cxa_begin_catch(a1);
    std::exception::~exception(&a9);
    __cxa_end_catch();
    JUMPOUT(0x2371F9EE0);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2371F9EE4);
}

uint64_t _MIDIObjectRemoveProperty(MIDIServer *a1, const __CFString *a2)
{
  v3 = a1;
  v4 = MIDIServer::defaultInstance(a1) + 2;
  v5 = (*(*v4 + 16))(v4);
  v6 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIObject>::sRTTI, v3);
  if (v6)
  {
    v7 = v6;
    v8 = (*(*v6 + 48))(v6, a2);
    if (v8)
    {
      v9 = SetupManager::instance(v8);
      SetupManager::PropertyDirty(v9, v7, a2);
    }

    if (v5)
    {
      (*(*v4 + 24))(v4);
    }

    return 0;
  }

  else
  {
    if (v5)
    {
      (*(*v4 + 24))(v4);
    }

    return 4294967246;
  }
}

void sub_2371FA0D0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  CADeprecated::CAMutex::Locker::~Locker(&a9);
  if (a2 == 2)
  {
    __cxa_get_exception_ptr(a1);
    a9 = MEMORY[0x277D82910] + 16;
    __cxa_begin_catch(a1);
    std::exception::~exception(&a9);
    __cxa_end_catch();
    JUMPOUT(0x2371FA0ACLL);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2371FA0B0);
}

ItemCount MIDIDeviceListGetNumberOfDevices(MIDIDeviceListRef devList)
{
  if (gInMIDIServer != 1)
  {
    return -50;
  }

  result = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<DeviceList>::sRTTI, devList);
  if (result)
  {
    return (*(result + 24) - *(result + 16)) >> 3;
  }

  return result;
}

MIDIDeviceRef MIDIDeviceListGetDevice(MIDIDeviceListRef devList, ItemCount index0)
{
  if (gInMIDIServer == 1)
  {
    v3 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<DeviceList>::sRTTI, devList);
    if (v3)
    {
      v4 = *(v3 + 16);
      if (index0 >= (*(v3 + 24) - v4) >> 3)
      {
        LODWORD(v3) = 0;
      }

      else
      {
        LODWORD(v3) = *(*(v4 + 8 * index0) + 8);
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  return v3;
}

OSStatus MIDIDeviceListAddDevice(MIDIDeviceListRef devList, MIDIDeviceRef dev)
{
  if (gInMIDIServer != 1)
  {
    return -50;
  }

  v4 = MIDIServer::defaultInstance(*&devList) + 2;
  v5 = (*(*v4 + 16))(v4);
  v6 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<DeviceList>::sRTTI, devList);
  if (!v6)
  {
    if (v5)
    {
      goto LABEL_9;
    }

    return -50;
  }

  v7 = v6;
  v8 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIDevice>::sRTTI, dev);
  if (!v8)
  {
    if (v5)
    {
LABEL_9:
      (*(*v4 + 24))(v4);
    }

    return -50;
  }

  v9 = v8;
  v11 = v7[3];
  v10 = v7[4];
  if (v11 >= v10)
  {
    v15 = v7[2];
    v16 = (v11 - v15) >> 3;
    if ((v16 + 1) >> 61)
    {
      std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
    }

    v17 = v10 - v15;
    v18 = v17 >> 2;
    if (v17 >> 2 <= (v16 + 1))
    {
      v18 = v16 + 1;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      v19 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v18;
    }

    if (v19)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ClientProcess *>>(v19);
    }

    v20 = (8 * v16);
    *v20 = v9;
    v12 = 8 * v16 + 8;
    v21 = v7[2];
    v22 = v7[3] - v21;
    v23 = v20 - v22;
    memcpy(v20 - v22, v21, v22);
    v24 = v7[2];
    v7[2] = v23;
    v7[3] = v12;
    v7[4] = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    *v11 = v8;
    v12 = (v11 + 1);
  }

  v7[3] = v12;
  if (v5)
  {
    (*(*v4 + 24))(v4);
  }

  return 0;
}

void sub_2371FA420(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  CADeprecated::CAMutex::Locker::~Locker(&a9);
  if (a2 == 2)
  {
    __cxa_get_exception_ptr(a1);
    a9 = MEMORY[0x277D82910] + 16;
    __cxa_begin_catch(a1);
    std::exception::~exception(&a9);
    __cxa_end_catch();
    JUMPOUT(0x2371FA334);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2371FA338);
}

OSStatus MIDIDeviceCreate(MIDIDriverRef owner, CFStringRef name, CFStringRef manufacturer, CFStringRef model, MIDIDeviceRef *outDevice)
{
  if (gInMIDIServer == 1)
  {
    v7 = MIDIServer::defaultInstance(owner) + 2;
    v8 = (*(*v7 + 16))(v7);
    if (outDevice)
    {
      driverRefToPlugin(owner);
      operator new();
    }

    if (v8)
    {
      (*(*v7 + 24))(v7);
    }
  }

  return -50;
}

void sub_2371FA608(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception a9)
{
  MEMORY[0x2383C8250](v9, 0x10E1C400F55952ELL);
  CADeprecated::CAMutex::Locker::~Locker(&a9);
  if (a2 == 2)
  {
    __cxa_get_exception_ptr(a1);
    a9.__vftable = (MEMORY[0x277D82910] + 16);
    __cxa_begin_catch(a1);
    std::exception::~exception(&a9);
    __cxa_end_catch();
    JUMPOUT(0x2371FA5DCLL);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2371FA5E0);
}

OSStatus MIDIDeviceDispose(MIDIDeviceRef device)
{
  if (gInMIDIServer != 1)
  {
    return -50;
  }

  v2 = MIDIServer::defaultInstance(*&device) + 2;
  v3 = (*(*v2 + 16))(v2);
  v4 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIDevice>::sRTTI, device);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (v3)
  {
    (*(*v2 + 24))(v2);
  }

  return 0;
}

uint64_t _MIDIDeviceAddEntity(MIDIServer *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a1;
  v8 = MIDIServer::defaultInstance(a1) + 2;
  v11 = (*(*v8 + 16))(v8);
  v9 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIDevice>::sRTTI, v7);
  if (a7 && v9)
  {
    operator new();
  }

  if (v11)
  {
    (*(*v8 + 24))(v8);
  }

  return 4294967246;
}

void sub_2371FAC50(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::exception a14)
{
  MEMORY[0x2383C8250](v14, 0x10E1C40CE33DE92);
  CADeprecated::CAMutex::Locker::~Locker(&a14);
  if (a2 == 2)
  {
    __cxa_get_exception_ptr(a1);
    a14.__vftable = (MEMORY[0x277D82910] + 16);
    __cxa_begin_catch(a1);
    std::exception::~exception(&a14);
    __cxa_end_catch();
    JUMPOUT(0x2371FAAA8);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2371FAC1CLL);
}

uint64_t _MIDIDeviceGetNumberOfEntities(MIDIServer *a1)
{
  v1 = a1;
  v2 = MIDIServer::defaultInstance(a1) + 2;
  v3 = (*(*v2 + 16))(v2);
  v4 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIDevice>::sRTTI, v1);
  if (v4)
  {
    v5 = (*(v4 + 88) - *(v4 + 80)) >> 3;
    if (!v3)
    {
      return v5;
    }

    goto LABEL_5;
  }

  v5 = 0;
  if (v3)
  {
LABEL_5:
    (*(*v2 + 24))(v2);
  }

  return v5;
}

uint64_t _MIDIDeviceGetEntity(MIDIServer *a1, unint64_t a2)
{
  v3 = a1;
  v4 = MIDIServer::defaultInstance(a1) + 2;
  v5 = (*(*v4 + 16))(v4);
  v6 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIDevice>::sRTTI, v3);
  if (v6)
  {
    v7 = *(v6 + 80);
    if (a2 < (*(v6 + 88) - v7) >> 3)
    {
      v8 = *(*(v7 + 8 * a2) + 8);
      if (!v5)
      {
        return v8;
      }

      goto LABEL_6;
    }
  }

  v8 = 0;
  if (v5)
  {
LABEL_6:
    (*(*v4 + 24))(v4);
  }

  return v8;
}

uint64_t _MIDIEntityGetNumberOfSources(MIDIServer *a1)
{
  v1 = a1;
  v2 = MIDIServer::defaultInstance(a1) + 2;
  v3 = (*(*v2 + 16))(v2);
  v4 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEntity>::sRTTI, v1);
  if (v4)
  {
    v5 = (*(v4 + 80) - *(v4 + 72)) >> 3;
    if (!v3)
    {
      return v5;
    }

    goto LABEL_5;
  }

  v5 = 0;
  if (v3)
  {
LABEL_5:
    (*(*v2 + 24))(v2);
  }

  return v5;
}

uint64_t _MIDIEntityGetSource(MIDIServer *a1, unint64_t a2)
{
  v3 = a1;
  v4 = MIDIServer::defaultInstance(a1) + 2;
  v5 = (*(*v4 + 16))(v4);
  v6 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEntity>::sRTTI, v3);
  if (v6)
  {
    v7 = *(v6 + 72);
    if (a2 < (*(v6 + 80) - v7) >> 3)
    {
      v8 = *(*(v7 + 8 * a2) + 8);
      if (!v5)
      {
        return v8;
      }

      goto LABEL_6;
    }
  }

  v8 = 0;
  if (v5)
  {
LABEL_6:
    (*(*v4 + 24))(v4);
  }

  return v8;
}

uint64_t _MIDIEntityGetNumberOfDestinations(MIDIServer *a1)
{
  v1 = a1;
  v2 = MIDIServer::defaultInstance(a1) + 2;
  v3 = (*(*v2 + 16))(v2);
  v4 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEntity>::sRTTI, v1);
  if (v4)
  {
    v5 = (*(v4 + 112) - *(v4 + 104)) >> 3;
    if (!v3)
    {
      return v5;
    }

    goto LABEL_5;
  }

  v5 = 0;
  if (v3)
  {
LABEL_5:
    (*(*v2 + 24))(v2);
  }

  return v5;
}

uint64_t _MIDIEntityGetDestination(MIDIServer *a1, unint64_t a2)
{
  v3 = a1;
  v4 = MIDIServer::defaultInstance(a1) + 2;
  v5 = (*(*v4 + 16))(v4);
  v6 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEntity>::sRTTI, v3);
  if (v6)
  {
    v7 = *(v6 + 104);
    if (a2 < (*(v6 + 112) - v7) >> 3)
    {
      v8 = *(*(v7 + 8 * a2) + 8);
      if (!v5)
      {
        return v8;
      }

      goto LABEL_6;
    }
  }

  v8 = 0;
  if (v5)
  {
LABEL_6:
    (*(*v4 + 24))(v4);
  }

  return v8;
}

OSStatus MIDIEndpointSetRefCons(MIDIEndpointRef endpt, void *ref1, void *ref2)
{
  if (gInMIDIServer != 1)
  {
    return -50;
  }

  v6 = MIDIServer::defaultInstance(*&endpt) + 2;
  v7 = (*(*v6 + 16))(v6);
  v8 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEndpoint>::sRTTI, endpt);
  if (!v8)
  {
    if (v7)
    {
      (*(*v6 + 24))(v6);
    }

    return -50;
  }

  *(v8 + 80) = ref1;
  *(v8 + 88) = ref2;
  if (v7)
  {
    (*(*v6 + 24))(v6);
  }

  return 0;
}

OSStatus MIDIEndpointGetRefCons(MIDIEndpointRef endpt, void **ref1, void **ref2)
{
  if (gInMIDIServer != 1)
  {
    return -50;
  }

  v6 = MIDIServer::defaultInstance(*&endpt) + 2;
  v7 = (*(*v6 + 16))(v6);
  v8 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEndpoint>::sRTTI, endpt);
  if (!v8)
  {
    if (v7)
    {
      (*(*v6 + 24))(v6);
    }

    return -50;
  }

  *ref1 = *(v8 + 80);
  *ref2 = *(v8 + 88);
  if (v7)
  {
    (*(*v6 + 24))(v6);
  }

  return 0;
}

uint64_t _MIDIClientCreate(MIDIServer *a1, uint64_t a2, _DWORD *a3)
{
  v4 = a1;
  v5 = MIDIServer::defaultInstance(a1) + 2;
  v6 = (*(*v5 + 16))(v5);
  v7 = v6;
  if (a3)
  {
    v8 = MIDIServer::defaultInstance(v6);
    v9 = gMIDIIOThread;
    if (gMIDIIOThread && *(gMIDIIOThread + 140))
    {
      *a3 = 0;
      v10 = *(v9 + 140);
      if (!v7)
      {
        return v10;
      }

      goto LABEL_14;
    }

    if (!v4)
    {
LABEL_13:
      operator new();
    }

    v11 = MIDIServer::defaultInstance(v8);
    for (i = v11[29]; i != v11[30]; i += 8)
    {
      if (*(*i + 8) == v4)
      {
        goto LABEL_13;
      }
    }
  }

  v10 = 4294967246;
  if (!v7)
  {
    return v10;
  }

LABEL_14:
  (*(*v5 + 24))(v5);
  return v10;
}

void sub_2371FBA48(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception a9)
{
  OwnedPtrVector<MIDIPort *>::~OwnedPtrVector(v10);
  MIDIObject::~MIDIObject(v9);
  MEMORY[0x2383C8250](v9, 0x10E1C4070F630E7);
  CADeprecated::CAMutex::Locker::~Locker(&a9);
  if (a2 == 3)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
  }

  else
  {
    if (a2 == 2)
    {
      __cxa_get_exception_ptr(a1);
      a9.__vftable = (MEMORY[0x277D82910] + 16);
      __cxa_begin_catch(a1);
      std::exception::~exception(&a9);
    }

    else
    {
      __cxa_begin_catch(a1);
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x2371FBA14);
}

uint64_t _MIDIClientDispose(MIDIServer *a1)
{
  v1 = a1;
  v14 = MIDIServer::defaultInstance(a1) + 13;
  v2 = (*(*v14 + 16))();
  v15 = v2;
  v3 = MIDIServer::defaultInstance(v2) + 2;
  v4 = (*(*v3 + 16))(v3);
  v5 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIClient>::sRTTI, v1);
  if (v5)
  {
    v6 = v5;
    v7 = MIDIServer::defaultInstance(v5);
    v8 = MIDIServer::defaultInstance(v7);
    v9 = v8[25];
    v10 = v8[26];
    if (v9 != v10)
    {
      while (*v9 != v6)
      {
        if (++v9 == v10)
        {
          goto LABEL_11;
        }
      }
    }

    if (v9 == v10)
    {
LABEL_11:
      v12 = 4294956466;
      if (!v4)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v11 = OwnedPtrVector<MIDIClient *>::erase((v8 + 24), v9);
      ScheduleCheckServerShutdown(v11);
      v12 = 0;
      if (!v4)
      {
        goto LABEL_13;
      }
    }

LABEL_12:
    (*(*v3 + 24))(v3);
    goto LABEL_13;
  }

  v12 = 4294967246;
  if (v4)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v15 == 1)
  {
    (*(*v14 + 24))(v14);
  }

  return v12;
}

void sub_2371FBCA8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  CADeprecated::CAMutex::Locker::~Locker(&a9);
  if (a2 == 3)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
  }

  else
  {
    if (a2 == 2)
    {
      __cxa_get_exception_ptr(a1);
      a9 = MEMORY[0x277D82910] + 16;
      __cxa_begin_catch(a1);
      std::exception::~exception(&a9);
    }

    else
    {
      __cxa_begin_catch(a1);
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x2371FBC54);
}

void sub_2371FBD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CADeprecated::CAMutex::Locker::~Locker(va);
  _Unwind_Resume(a1);
}

void *OwnedPtrVector<MIDIClient *>::erase(uint64_t a1, uint64_t *__dst)
{
  result = *__dst;
  if (*__dst)
  {
    result = (*(*result + 8))(result);
  }

  v5 = *(a1 + 16);
  v6 = v5 - (__dst + 1);
  if (v5 != __dst + 1)
  {
    result = memmove(__dst, __dst + 1, v5 - (__dst + 1));
  }

  *(a1 + 16) = __dst + v6;
  return result;
}

uint64_t _MIDICapabilityGetDiscoveryMUID(MIDIServer *a1)
{
  v1 = MIDIServer::defaultInstance(a1) + 2;
  v2 = (*(*v1 + 16))(v1);
  v3 = v2;
  v4 = MIDIServer::defaultInstance(v2);
  v5 = *(MIDICISessionManager::Instance(v4) + 664);
  if (v3)
  {
    (*(*v1 + 24))(v1);
  }

  return v5;
}

void sub_2371FBE7C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  CADeprecated::CAMutex::Locker::~Locker(&a9);
  if (a2 == 2)
  {
    __cxa_get_exception_ptr(a1);
    a9 = MEMORY[0x277D82910] + 16;
    __cxa_begin_catch(a1);
    std::exception::~exception(&a9);
  }

  else
  {
    __cxa_begin_catch(a1);
  }

  __cxa_end_catch();
  JUMPOUT(0x2371FBE60);
}

uint64_t _MIDICapabilityMUIDCollides(MIDIServer *a1)
{
  v1 = a1;
  v2 = MIDIServer::defaultInstance(a1) + 2;
  v3 = (*(*v2 + 16))(v2);
  v4 = v3;
  v5 = MIDIServer::defaultInstance(v3);
  v6 = MIDICISessionManager::Instance(v5);
  v7 = MIDICIMUIDList::Add((v6 + 200), v1);
  if (v4)
  {
    (*(*v2 + 24))(v2);
  }

  return v7 ^ 1u;
}

void sub_2371FBFB0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 2)
  {
    __cxa_get_exception_ptr(a1);
    a9 = MEMORY[0x277D82910] + 16;
    __cxa_begin_catch(a1);
    std::exception::~exception(&a9);
  }

  else
  {
    __cxa_begin_catch(a1);
  }

  __cxa_end_catch();
  JUMPOUT(0x2371FBF98);
}

uint64_t _UMPCIObjectCreate(MIDIServer *a1, int a2, const void *a3, _DWORD *a4)
{
  v7 = a1;
  v9 = MIDIServer::defaultInstance(a1) + 2;
  v8 = *v9;
  v20[1] = v9;
  v10 = (*(v8 + 16))(v9);
  v11 = v10;
  v21 = v10;
  if (a3)
  {
    v12 = a4 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (v12)
  {
    v16 = 0;
  }

  else
  {
    MIDIServer::defaultInstance(v10);
    v14 = applesauce::CF::DictionaryRef::from_get(v20, a3);
    if ((a2 - 1) < 2)
    {
      v17 = MIDIServer::defaultInstance(v14);
      std::mutex::lock((v17 + 114));
      operator new();
    }

    if ((a2 - 3) < 2)
    {
      v15 = MIDIServer::defaultInstance(v14);
      std::mutex::lock((v15 + 90));
      operator new();
    }

    v16 = 4294956452;
    v18 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<UMPCIObject>::sRTTI, 0);
    if (v18)
    {
      v16 = 0;
      *(v18 + 44) = v7;
      *(v18 + 48) = 1;
      *a4 = 0;
    }

    if (v20[0])
    {
      CFRelease(v20[0]);
    }
  }

  if (v11)
  {
    (*(*v9 + 24))(v9);
  }

  if ((v13 & 1) == 0)
  {
    return 4294967246;
  }

  return v16;
}

void sub_2371FC434(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, std::exception a12, uint64_t a13, uint64_t a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  applesauce::CF::DictionaryRef::~DictionaryRef(&a20);
  std::unique_ptr<UMPStream::EndpointPair>::reset[abi:ne200100](&a14, 0);
  std::mutex::unlock((v20 + 912));
  applesauce::CF::DictionaryRef::~DictionaryRef(&a11);
  CADeprecated::CAMutex::Locker::~Locker(&a12);
  if (a2 == 2)
  {
    __cxa_get_exception_ptr(a1);
    a12.__vftable = (MEMORY[0x277D82910] + 16);
    __cxa_begin_catch(a1);
    std::exception::~exception(&a12);
    __cxa_end_catch();
    JUMPOUT(0x2371FC400);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2371FC404);
}

void *applesauce::CF::DictionaryRef::from_get(void *this, CFTypeRef cf)
{
  v2 = this;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    this = CFDictionaryGetTypeID();
    if (v4 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](exception, "Could not construct");
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

void sub_2371FC6F0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

uint64_t _UMPCIObjectDispose(MIDIServer *a1)
{
  v1 = a1;
  v2 = MIDIServer::defaultInstance(a1) + 2;
  v3 = (*(*v2 + 16))(v2);
  v4 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<UMPCIObject>::sRTTI, v1);
  if (!v4)
  {
    v14 = 4294967246;
    if (!v3)
    {
      return v14;
    }

    goto LABEL_55;
  }

  v5 = v4;
  MIDIServer::defaultInstance(v4);
  v6 = (*(*v5 + 96))(v5);
  if ((v6 - 1) < 2)
  {
    v15 = MIDIServer::defaultInstance(v6);
    std::mutex::lock((v15 + 114));
    v16 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<UMPCIObject>::sRTTI, v1);
    if (!v16 || *(v16 + 148) != 1)
    {
      goto LABEL_52;
    }

    v17 = v15[111];
    v18 = v15[112];
    if (v17 != v18)
    {
      v19 = *(v16 + 100);
      v20 = *(v16 + 104);
      while (1)
      {
        v21 = *v17;
        if (!v20 && *(v21 + 100) == v19)
        {
          break;
        }

        if (!v19 && *(v21 + 104) == v20 || *(v21 + 100) == v19 && *(v21 + 104) == v20)
        {
          break;
        }

        if (++v17 == v18)
        {
          goto LABEL_52;
        }
      }
    }

    if (v17 != v18)
    {
      v27 = v17 + 1;
      if (v17 + 1 != v18)
      {
        do
        {
          v17 = v27;
          v28 = v27 - 1;
          v29 = *v27;
          *v27++ = 0;
          std::unique_ptr<UMPStream::EndpointPair>::reset[abi:ne200100](v28, v29);
        }

        while (v27 != v18);
        v18 = v15[112];
      }

      while (v18 != v17)
      {
        std::unique_ptr<UMPStream::EndpointPair>::reset[abi:ne200100](--v18, 0);
      }

      v15[112] = v17;
      v30 = v15[110];
      cf = 0;
      UMPCIServerContext::sendNotificationForObject(v30, 2, v1, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      v14 = 0;
    }

    else
    {
LABEL_52:
      v14 = 4294956454;
    }

    v26 = (v15 + 114);
  }

  else
  {
    if ((v6 - 3) >= 2)
    {
      v14 = 4294956452;
      if (!v3)
      {
        return v14;
      }

      goto LABEL_55;
    }

    v7 = MIDIServer::defaultInstance(v6);
    std::mutex::lock((v7 + 90));
    v8 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<UMPCIObject>::sRTTI, v1);
    if (!v8 || *(v8 + 113) != 1)
    {
      goto LABEL_41;
    }

    v9 = v7[87];
    v10 = v7[88];
    if (v9 != v10)
    {
      v11 = *(v8 + 72);
      v12 = *(v8 + 76);
      while (1)
      {
        v13 = *v9;
        if (!v12 && *(v13 + 18) == v11)
        {
          break;
        }

        if (!v11 && *(v13 + 19) == v12 || *(v13 + 18) == v11 && *(v13 + 19) == v12)
        {
          break;
        }

        if (++v9 == v10)
        {
          goto LABEL_41;
        }
      }
    }

    if (v9 != v10)
    {
      v22 = v9 + 1;
      if (v9 + 1 != v10)
      {
        do
        {
          v9 = v22;
          v23 = v22 - 1;
          v24 = *v22;
          *v22++ = 0;
          std::unique_ptr<MIDICI::Device>::reset[abi:ne200100](v23, v24);
        }

        while (v22 != v10);
        v10 = v7[88];
      }

      while (v10 != v9)
      {
        std::unique_ptr<MIDICI::Device>::reset[abi:ne200100](--v10, 0);
      }

      v7[88] = v9;
      v25 = v7[86];
      cf = 0;
      UMPCIServerContext::sendNotificationForObject(v25, 2, v1, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      v14 = 0;
    }

    else
    {
LABEL_41:
      v14 = 4294956454;
    }

    v26 = (v7 + 90);
  }

  std::mutex::unlock(v26);
  if (v3)
  {
LABEL_55:
    (*(*v2 + 24))(v2);
  }

  return v14;
}

void sub_2371FCA80(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception a10, uint64_t a11, const void *a12)
{
  applesauce::CF::DictionaryRef::~DictionaryRef(&a12);
  std::mutex::unlock((v12 + 912));
  CADeprecated::CAMutex::Locker::~Locker(&a10);
  if (a2 == 2)
  {
    __cxa_get_exception_ptr(a1);
    a10.__vftable = (MEMORY[0x277D82910] + 16);
    __cxa_begin_catch(a1);
    std::exception::~exception(&a10);
  }

  else
  {
    __cxa_begin_catch(a1);
  }

  __cxa_end_catch();
  JUMPOUT(0x2371FCA58);
}

uint64_t _UMPCIObjectSetDescription(MIDIServer *a1, const void *a2)
{
  v3 = a1;
  v5 = MIDIServer::defaultInstance(a1) + 2;
  v4 = *v5;
  cf[1] = v5;
  v6 = (*(v4 + 16))(v5);
  v36 = v6;
  if (!BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<UMPCIObject>::sRTTI, v3) || (v7 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<UMPCIObject>::sRTTI, v3)) == 0)
  {
    v17 = 4294967246;
    goto LABEL_52;
  }

  v8 = v7;
  MIDIServer::defaultInstance(v7);
  applesauce::CF::DictionaryRef::from_get(cf, a2);
  v9 = (*(*v8 + 96))(v8);
  if ((v9 - 1) < 2)
  {
    v18 = MIDIServer::defaultInstance(v9);
    std::mutex::lock((v18 + 114));
    v19 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<UMPCIObject>::sRTTI, v3);
    if (v19)
    {
      v20 = v19;
      v21 = cf[0];
      if (cf[0])
      {
        CFRetain(cf[0]);
      }

      v38 = v21;
      UMPCIObject::updateDescription(&v39, v20, &v38);
      if (v38)
      {
        CFRelease(v38);
      }

      if (v41 != 1)
      {
        goto LABEL_45;
      }

      v22 = v18[110];
      v37 = 0;
      UMPCIServerContext::sendNotificationForObject(v22, 1, v3, &v37);
      v23 = v37;
      if (!v37)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v30 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<UMPCIObject>::sRTTI, v3);
      if (!v30)
      {
        v17 = 4294956454;
LABEL_48:
        v29 = (v18 + 114);
        goto LABEL_49;
      }

      v31 = v30;
      v32 = cf[0];
      if (cf[0])
      {
        CFRetain(cf[0]);
      }

      v38 = v32;
      UMPCIObject::updateDescription(&v39, v31, &v38);
      if (v38)
      {
        CFRelease(v38);
      }

      if (v41 != 1 || (v33 = v18[110], v37 = 0, UMPCIServerContext::sendNotificationForObject(v33, 1, v3, &v37), (v23 = v37) == 0))
      {
LABEL_45:
        if (v41 == 1)
        {
          std::__tree<std::string>::destroy(v40);
        }

        v17 = 0;
        goto LABEL_48;
      }
    }

    CFRelease(v23);
    goto LABEL_45;
  }

  if ((v9 - 3) >= 2)
  {
    v17 = 4294956452;
    goto LABEL_50;
  }

  v10 = MIDIServer::defaultInstance(v9);
  std::mutex::lock((v10 + 90));
  v11 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<UMPCIObject>::sRTTI, v3);
  if (v11)
  {
    v12 = v11;
    v13 = cf[0];
    if (cf[0])
    {
      CFRetain(cf[0]);
    }

    v38 = v13;
    UMPCIObject::updateDescription(&v39, v12, &v38);
    v14 = v41;
    if (v41 == 1)
    {
      std::__tree<std::string>::destroy(v40);
    }

    if (v38)
    {
      CFRelease(v38);
    }

    if (!v14)
    {
      goto LABEL_35;
    }

    v15 = v10[86];
    v39 = 0;
    UMPCIServerContext::sendNotificationForObject(v15, 1, v3, &v39);
    v16 = v39;
    if (!v39)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v24 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<UMPCIObject>::sRTTI, v3);
  if (!v24)
  {
    v17 = 4294956454;
    goto LABEL_36;
  }

  v25 = v24;
  v26 = cf[0];
  if (cf[0])
  {
    CFRetain(cf[0]);
  }

  v38 = v26;
  UMPCIObject::updateDescription(&v39, v25, &v38);
  v27 = v41;
  if (v41 == 1)
  {
    std::__tree<std::string>::destroy(v40);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v27)
  {
    v28 = v10[86];
    v39 = 0;
    UMPCIServerContext::sendNotificationForObject(v28, 1, v3, &v39);
    v16 = v39;
    if (v39)
    {
LABEL_34:
      CFRelease(v16);
    }
  }

LABEL_35:
  v17 = 0;
LABEL_36:
  v29 = (v10 + 90);
LABEL_49:
  std::mutex::unlock(v29);
LABEL_50:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

LABEL_52:
  if (v6)
  {
    (*(*v5 + 24))(v5);
  }

  return v17;
}

void sub_2371FCEDC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, std::exception a11, uint64_t a12, const void *a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, char *a21, uint64_t a22, char a23)
{
  applesauce::CF::DictionaryRef::~DictionaryRef(&a13);
  if (a23 == 1)
  {
    std::__tree<std::string>::destroy(a21);
  }

  std::mutex::unlock((v23 + 912));
  applesauce::CF::DictionaryRef::~DictionaryRef(&a10);
  CADeprecated::CAMutex::Locker::~Locker(&a11);
  if (a2 == 3)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
  }

  else
  {
    if (a2 == 2)
    {
      __cxa_get_exception_ptr(a1);
      a11.__vftable = (MEMORY[0x277D82910] + 16);
      __cxa_begin_catch(a1);
      std::exception::~exception(&a11);
    }

    else
    {
      __cxa_begin_catch(a1);
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x2371FCEA8);
}

uint64_t _UMPCIObjectSetEnableState(MIDIServer *a1, int a2)
{
  v3 = a1;
  v4 = MIDIServer::defaultInstance(a1) + 2;
  v5 = (*(*v4 + 16))(v4);
  v6 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<UMPCIObject>::sRTTI, v3);
  if (!v6 || (MIDIServer::defaultInstance(v6), (v7 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<UMPCIObject>::sRTTI, v3)) == 0))
  {
    v13 = 4294967246;
    if (!v5)
    {
      return v13;
    }

    goto LABEL_26;
  }

  v8 = (*(*v7 + 96))(v7);
  if ((v8 - 3) >= 2)
  {
    if ((v8 - 1) > 1)
    {
      v13 = 4294956452;
      if (!v5)
      {
        return v13;
      }

      goto LABEL_26;
    }

    v9 = MIDIServer::defaultInstance(v8);
    std::mutex::lock((v9 + 114));
    v10 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<UMPCIObject>::sRTTI, v3);
    if (v10)
    {
      *(v10 + 147) = a2 != 0;
      v11 = v9[110];
      cf = 0;
      UMPCIServerContext::sendNotificationForObject(v11, 1, v3, &cf);
      v12 = cf;
      if (cf)
      {
LABEL_17:
        CFRelease(v12);
      }
    }

    else
    {
      v18 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<UMPCIObject>::sRTTI, v3);
      if (!v18)
      {
        v13 = 4294956454;
        goto LABEL_19;
      }

      *(v18 + 64) = a2 != 0;
      v19 = v9[110];
      cf = 0;
      UMPCIServerContext::sendNotificationForObject(v19, 1, v3, &cf);
      v12 = cf;
      if (cf)
      {
        goto LABEL_17;
      }
    }

    v13 = 0;
LABEL_19:
    v20 = (v9 + 114);
    goto LABEL_25;
  }

  v14 = MIDIServer::defaultInstance(v8);
  std::mutex::lock((v14 + 90));
  v15 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<UMPCIObject>::sRTTI, v3);
  if (v15)
  {
    *(v15 + 112) = a2 != 0;
    v16 = v14[86];
    cf = 0;
    UMPCIServerContext::sendNotificationForObject(v16, 1, v3, &cf);
    v17 = cf;
    if (cf)
    {
LABEL_22:
      CFRelease(v17);
    }
  }

  else
  {
    v21 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<UMPCIObject>::sRTTI, v3);
    if (!v21)
    {
      v13 = 4294956454;
      goto LABEL_24;
    }

    *(v21 + 116) = a2 != 0;
    v22 = v14[86];
    cf = 0;
    UMPCIServerContext::sendNotificationForObject(v22, 1, v3, &cf);
    v17 = cf;
    if (cf)
    {
      goto LABEL_22;
    }
  }

  v13 = 0;
LABEL_24:
  v20 = (v14 + 90);
LABEL_25:
  std::mutex::unlock(v20);
  if (v5)
  {
LABEL_26:
    (*(*v4 + 24))(v4);
  }

  return v13;
}

void sub_2371FD2CC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception a10, uint64_t a11, const void *a12)
{
  applesauce::CF::DictionaryRef::~DictionaryRef(&a12);
  std::mutex::unlock((v12 + 720));
  CADeprecated::CAMutex::Locker::~Locker(&a10);
  if (a2 == 3)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
  }

  else
  {
    if (a2 == 2)
    {
      __cxa_get_exception_ptr(a1);
      a10.__vftable = (MEMORY[0x277D82910] + 16);
      __cxa_begin_catch(a1);
      std::exception::~exception(&a10);
    }

    else
    {
      __cxa_begin_catch(a1);
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x2371FD298);
}

uint64_t _UMPCIGlobalState(MIDIServer *a1)
{
  v2 = MIDIServer::defaultInstance(a1) + 2;
  v3 = (*(*v2 + 16))(v2);
  v4 = v3;
  if (!a1)
  {
    v10 = 4294967246;
    if (!v3)
    {
      return v10;
    }

    goto LABEL_16;
  }

  MIDIServer::defaultInstance(v3);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  v6 = MIDIServer::defaultInstance(Mutable);
  if (Mutable)
  {
    v7 = v6;
    CFRetain(Mutable);
    std::mutex::lock((v7 + 114));
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v8 = v7[111];
    if (v8 != v7[112])
    {
      UMPStream::EndpointPair::serialize(*v8);
    }

    v9 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::DictionaryRef>(&v18);
    cf = v9;
    CFDictionaryAddValue(Mutable, @"ump_endpoints", v9);
    CFRelease(v9);
    cf = &v18;
    std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](&cf);
    std::mutex::unlock((v7 + 114));
    CFRelease(Mutable);
  }

  v11 = MIDIServer::defaultInstance(v6);
  if (Mutable)
  {
    v12 = v11;
    CFRetain(Mutable);
    std::mutex::lock((v12 + 90));
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v13 = v12[87];
    if (v13 != v12[88])
    {
      MIDICI::Device::serialize(*v13);
    }

    v14 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::DictionaryRef>(&v18);
    cf = v14;
    CFDictionaryAddValue(Mutable, @"midi_ci_devices", v14);
    CFRelease(v14);
    LODWORD(valuePtr) = *(v12 + 196);
    v15 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    cf = v15;
    if (!v15)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](exception, "Could not construct");
    }

    CFDictionaryAddValue(Mutable, @"device_manager_muid", v15);
    if (cf)
    {
      CFRelease(cf);
    }

    cf = &v18;
    std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](&cf);
    std::mutex::unlock((v12 + 90));
    CFRelease(Mutable);
  }

  v10 = 0;
  *a1 = Mutable;
  if (v4)
  {
LABEL_16:
    (*(*v2 + 24))(v2);
  }

  return v10;
}

void sub_2371FD7D0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, __int16 a11, char a12, char a13, int a14, const void *a15, __int16 a16, char a17, char a18, uint64_t a19, std::exception a20, uint64_t a21, uint64_t a22, char a23, int a24, const void *a25)
{
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(&a25);
  *(v26 - 88) = &a20;
  std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100]((v26 - 88));
  std::mutex::unlock((v25 + 720));
  applesauce::CF::ObjectRef<__CFDictionary *>::~ObjectRef(&a10);
  applesauce::CF::ObjectRef<__CFDictionary *>::~ObjectRef(&a15);
  CADeprecated::CAMutex::Locker::~Locker(&a16);
  if (a2 == 3)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
  }

  else
  {
    if (a2 == 2)
    {
      __cxa_get_exception_ptr(a1);
      a20.__vftable = (MEMORY[0x277D82910] + 16);
      __cxa_begin_catch(a1);
      std::exception::~exception(&a20);
    }

    else
    {
      __cxa_begin_catch(a1);
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x2371FD760);
}

const void **applesauce::CF::ObjectRef<__CFDictionary *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t _UMPCIDiscover(MIDIServer *a1)
{
  v1 = MIDIServer::defaultInstance(a1) + 2;
  v2 = (*(*v1 + 16))(v1);
  v3 = v2;
  v4 = *SetupManager::instance(v2);
  if (!v4)
  {
    v17 = 4294956452;
    if (!v3)
    {
      return v17;
    }

    goto LABEL_42;
  }

  __src = 0;
  v41 = 0;
  v42 = 0;
  std::vector<MIDISource *>::__init_with_size[abi:ne200100]<MIDISource **,MIDISource **>(&__src, *(v4 + 88), *(v4 + 96), (*(v4 + 96) - *(v4 + 88)) >> 3);
  v6 = SetupManager::instance(v5);
  __p = 0;
  v38 = 0;
  v39 = 0;
  std::vector<MIDISource *>::__init_with_size[abi:ne200100]<MIDISource **,MIDISource **>(&__p, *(v6 + 8), *(v6 + 16), (*(v6 + 16) - *(v6 + 8)) >> 3);
  v9 = __p;
  v8 = v38;
  v10 = v38 - __p;
  v11 = (v38 - __p) >> 3;
  v13 = __src;
  v12 = v41;
  if (v11 < 1)
  {
    v18 = v41;
  }

  else if (v42 - v41 >= v10)
  {
    while (v9 != v8)
    {
      v16 = *v9++;
      *v12 = v16;
      v12 += 8;
    }

    v18 = v12;
    v41 = v12;
  }

  else
  {
    v14 = v11 + ((v41 - __src) >> 3);
    if (v14 >> 61)
    {
      std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
    }

    if ((v42 - __src) >> 2 > v14)
    {
      v14 = (v42 - __src) >> 2;
    }

    if ((v42 - __src) >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ClientProcess *>>(v15);
    }

    v19 = 8 * ((v41 - __src) >> 3);
    v18 = v19 + v10;
    v20 = v19;
    do
    {
      v21 = *v9++;
      *v20++ = v21;
      v10 -= 8;
    }

    while (v10);
    v22 = __src;
    v13 = (v19 - (v12 - __src));
    v7 = memcpy(v13, __src, v12 - __src);
    __src = v13;
    v41 = v18;
    v42 = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  v33 = v3;
  v23 = MIDIServer::defaultInstance(v7);
  v34 = 0;
  v35 = 0;
  v36 = 0;
  std::vector<MIDISource *>::__init_with_size[abi:ne200100]<MIDISource **,MIDISource **>(&v34, v13, v18, (v18 - v13) >> 3);
  v24 = v34;
  v25 = v35;
  if (v34 != v35)
  {
    v26 = kMIDIPropertyAssociatedEndpoint;
    v27 = v34;
    do
    {
      v28 = *v27;
      if ((*(*v27 + 97) & 1) == 0 && (MIDIEndpoint::IsPartOfLegacyDevice(*v27) && MIDIEndpoint::GetPairedEndpoint(v28) || MIDIEndpoint::IsPartOfUMPDevice(v28) && (MIDIEndpoint::IsPartOfPhantomEntity(*(v28 + 9)) & 1) != 0 || *(v28 + 7)))
      {
        PairedEndpoint = MIDIEndpoint::GetPairedEndpoint(v28);
        if (!PairedEndpoint)
        {
          outValue = 0;
          MIDIObjectGetIntegerProperty(*(v28 + 2), v26, &outValue);
          outObject = 0;
          outObjectType = kMIDIObjectType_Other;
          MIDIObjectFindByUniqueID(outValue, &outObject, &outObjectType);
          PairedEndpoint = outObject;
        }

        v30 = 0;
        do
        {
          v31 = v30;
          MIDICI::DeviceManager::sendDiscoveryInquiry((v23 + 86), *(v28 + 2), PairedEndpoint, v30++);
        }

        while (v31 < 0xF);
      }

      ++v27;
    }

    while (v27 != v25);
  }

  if (v24)
  {
    operator delete(v24);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (__src)
  {
    operator delete(__src);
  }

  v17 = 0;
  if (v33)
  {
LABEL_42:
    (*(*v1 + 24))(v1);
  }

  return v17;
}

void sub_2371FDCF4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  CADeprecated::CAMutex::Locker::~Locker(&a10);
  if (a2 == 3)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
  }

  else
  {
    if (a2 == 2)
    {
      __cxa_get_exception_ptr(a1);
      __p = (MEMORY[0x277D82910] + 16);
      __cxa_begin_catch(a1);
      std::exception::~exception(&__p);
    }

    else
    {
      __cxa_begin_catch(a1);
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x2371FDCC8);
}

uint64_t _UMPCIServerSideMIDICITransaction(MIDIServer *a1, MIDIServer **a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = MIDIServer::defaultInstance(a1) + 2;
  v4 = *v5;
  v19[1] = v5;
  v6 = (*(v4 + 16))(v5);
  v7 = v6;
  v20 = v6;
  if (!a1)
  {
    v14 = 4294967246;
    if (!v6)
    {
      return v14;
    }

    goto LABEL_27;
  }

  applesauce::CF::DictionaryRef::from_get(v19, a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  v9 = MIDIServer::defaultInstance(Mutable);
  v10 = MIDIServer::defaultInstance(v9);
  if (Mutable)
  {
    CFRetain(Mutable);
  }

  v11 = Mutable;
  if (v19[0])
  {
    std::mutex::lock((v10 + 90));
    if (!v19[0])
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](exception, "Could not construct");
    }

    v12 = applesauce::CF::details::find_at_key_or_optional<unsigned long long,char const* const&>(v19[0], "transaction_type");
    if ((v13 & 1) == 0)
    {
      __assert_rtn("performTransaction", "CIDeviceManager.cpp", 658, "transactionType");
    }

    if (v12 == 2)
    {
      if (Mutable)
      {
        CFRetain(Mutable);
      }

      v21 = Mutable;
      if (!v19[0])
      {
        v18 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383C7ED0](v18, "Could not construct");
      }

      applesauce::CF::details::find_at_key_or_optional<unsigned long long,char const* const&>(v19[0], "destination_muid");
      if (v15)
      {
        operator new();
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    else if (v12 == 1)
    {
      if (Mutable)
      {
        CFRetain(Mutable);
      }

      v21 = Mutable;
      operator new();
    }

    std::mutex::unlock((v10 + 90));
    v11 = Mutable;
  }

  if (v11)
  {
    CFRelease(v11);
  }

  *a2 = Mutable;
  if (v19[0])
  {
    CFRelease(v19[0]);
  }

  v14 = 0;
  if (v7)
  {
LABEL_27:
    (*(*v5 + 24))(v5);
  }

  return v14;
}

void sub_2371FEA08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, const void *a22, const void *a23, std::exception a24, uint64_t a25, const void *a26)
{
  if (a2)
  {
    v29 = *(v26 - 120);
    if (v29)
    {
      operator delete(v29);
    }

    applesauce::CF::ObjectRef<__CFDictionary *>::~ObjectRef(&a26);
    std::mutex::unlock((a19 + 720));
    applesauce::CF::ObjectRef<__CFDictionary *>::~ObjectRef(&a21);
    applesauce::CF::ObjectRef<__CFDictionary *>::~ObjectRef(&a22);
    applesauce::CF::DictionaryRef::~DictionaryRef(&a23);
    CADeprecated::CAMutex::Locker::~Locker(&a24);
    if (a2 == 3)
    {
      __cxa_begin_catch(exception_object);
      __cxa_end_catch();
    }

    else
    {
      if (a2 == 2)
      {
        __cxa_get_exception_ptr(exception_object);
        a24.__vftable = (MEMORY[0x277D82910] + 16);
        __cxa_begin_catch(exception_object);
        std::exception::~exception(&a24);
      }

      else
      {
        __cxa_begin_catch(exception_object);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x2371FE6C4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _MIDIInputPortCreate(MIDIServer *a1)
{
  v1 = a1;
  v2 = MIDIServer::defaultInstance(a1) + 2;
  v3 = (*(*v2 + 16))(v2);
  if (BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIClient>::sRTTI, v1))
  {
    operator new();
  }

  if (v3)
  {
    (*(*v2 + 24))(v2);
  }

  return 4294967246;
}

void sub_2371FEF3C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception a10, uint64_t a11, uint64_t a12)
{
  MEMORY[0x2383C8250](v12, 0x10E1C40D52198E0);
  CADeprecated::CAMutex::Locker::~Locker(&a10);
  if (a2 == 3)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
  }

  else
  {
    if (a2 == 2)
    {
      __cxa_get_exception_ptr(a1);
      a10.__vftable = (MEMORY[0x277D82910] + 16);
      __cxa_begin_catch(a1);
      std::exception::~exception(&a10);
    }

    else
    {
      __cxa_begin_catch(a1);
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x2371FEF14);
}

uint64_t _MIDIOutputPortCreate(MIDIServer *a1)
{
  v1 = a1;
  v2 = MIDIServer::defaultInstance(a1) + 2;
  v3 = (*(*v2 + 16))(v2);
  if (BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIClient>::sRTTI, v1))
  {
    operator new();
  }

  if (v3)
  {
    (*(*v2 + 24))(v2);
  }

  return 4294967246;
}

void sub_2371FF14C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception a9)
{
  MEMORY[0x2383C8250](v9, 0x10E1C403A02A5B8);
  CADeprecated::CAMutex::Locker::~Locker(&a9);
  if (a2 == 3)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
  }

  else
  {
    if (a2 == 2)
    {
      __cxa_get_exception_ptr(a1);
      a9.__vftable = (MEMORY[0x277D82910] + 16);
      __cxa_begin_catch(a1);
      std::exception::~exception(&a9);
    }

    else
    {
      __cxa_begin_catch(a1);
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x2371FF12CLL);
}

uint64_t _MIDIPortDispose(MIDIServer *a1)
{
  v1 = a1;
  v13 = MIDIServer::defaultInstance(a1) + 13;
  v2 = (*(*v13 + 16))();
  v3 = v2;
  v4 = MIDIServer::defaultInstance(v2) + 2;
  v5 = (*(*v4 + 16))(v4);
  v6 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIPort>::sRTTI, v1);
  if (!v6)
  {
    v11 = 4294967246;
    if (!v5)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v7 = *(v6 + 48);
  v9 = *(v7 + 72);
  v8 = *(v7 + 80);
  if (v9 != v8)
  {
    while (*v9 != v6)
    {
      v9 += 8;
      if (v9 == v8)
      {
        goto LABEL_15;
      }
    }
  }

  if (v9 == v8)
  {
LABEL_15:
    v11 = 4294956465;
    if (!v5)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (*v9)
  {
    (*(**v9 + 8))(*v9);
    v8 = *(v7 + 80);
  }

  v10 = v8 - (v9 + 8);
  if (v8 != v9 + 8)
  {
    memmove(v9, v9 + 8, v8 - (v9 + 8));
  }

  v11 = 0;
  *(v7 + 80) = &v9[v10];
  if (v5)
  {
LABEL_16:
    (*(*v4 + 24))(v4);
  }

LABEL_17:
  if (v3)
  {
    (*(*v13 + 24))(v13);
  }

  return v11;
}

uint64_t _MIDIPortConnectSource(MIDIServer *a1, unsigned int a2, uint64_t a3)
{
  v5 = a1;
  v62 = *MEMORY[0x277D85DE8];
  v6 = MIDIServer::defaultInstance(a1) + 2;
  v7 = (*(*v6 + 16))(v6);
  v8 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIPort>::sRTTI, v5);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v8;
  v10 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEndpoint>::sRTTI, a2);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = (*(*v10 + 80))(v10);
  if (!v11)
  {
    v20 = 4294956464;
    goto LABEL_10;
  }

  v12 = (*(*v9 + 80))(v9);
  v13 = v12;
  if (!v12)
  {
LABEL_9:
    v20 = 4294967246;
    goto LABEL_10;
  }

  v14 = MIDIServer::defaultInstance(v12) + 13;
  v15 = (*(*v14 + 16))(v14);
  v16 = v15;
  v17 = *(v11 + 104);
  v18 = *(v11 + 112);
  v19 = v17;
  if (v17 != v18)
  {
    while (*v19 != v13)
    {
      if (++v19 == v18)
      {
        goto LABEL_15;
      }
    }
  }

  if (v19 == v18)
  {
LABEL_15:
    v22 = *(v11 + 120);
    if (v18 >= v22)
    {
      v24 = v18 - v17;
      if ((v24 + 1) >> 61)
      {
        std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
      }

      v25 = v22 - v17;
      v26 = v25 >> 2;
      if (v25 >> 2 <= (v24 + 1))
      {
        v26 = v24 + 1;
      }

      if (v25 >= 0x7FFFFFFFFFFFFFF8)
      {
        v27 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v26;
      }

      if (v27)
      {
        if (!(v27 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v28 = v15;
      *(8 * v24) = v13;
      v23 = 8 * v24 + 8;
      v29 = *(v11 + 104);
      v30 = *(v11 + 112) - v29;
      v31 = (8 * v24 - v30);
      memcpy(v31, v29, v30);
      v32 = *(v11 + 104);
      *(v11 + 104) = v31;
      *(v11 + 112) = v23;
      *(v11 + 120) = 0;
      if (v32)
      {
        operator delete(v32);
      }

      v16 = v28;
    }

    else
    {
      *v18 = v13;
      v23 = (v18 + 1);
    }

    *(v11 + 112) = v23;
    v33 = *(v13 + 10);
    v34 = (v13 + 80);
    if (v33 == *(v13 + 11) && (*(v13 + 12) - v33) <= 0xFF)
    {
      v61 = v13 + 80;
      operator new();
    }

    v35 = *(v13 + 8);
    if (v35)
    {
      v55 = caulk::inplace_function<void ()(MIDI::LegacyPacketList const*),48ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<MIDIInputPort::AddConnectedSource(MIDISource *,void *)::$_0>;
      v56 = v35;
      v57 = a3;
      operator new();
    }

    v36 = *(v13 + 9);
    if (v36)
    {
      v37 = *(v13 + 14);
      v58 = caulk::inplace_function<void ()(MIDI::EventList const*),48ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<MIDIInputPort::AddConnectedSource(MIDISource *,void *)::$_1>;
      v59 = v36;
      v60 = a3;
      MIDI::EventListDeliverer::create(&v51, v37);
    }

    v38 = *(v13 + 11);
    v39 = *(v13 + 12);
    if (v38 >= v39)
    {
      v41 = *v34;
      v42 = (v38 - *v34) >> 4;
      v43 = v42 + 1;
      if ((v42 + 1) >> 60)
      {
        std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
      }

      v44 = v39 - v41;
      if (v44 >> 3 > v43)
      {
        v43 = v44 >> 3;
      }

      if (v44 >= 0x7FFFFFFFFFFFFFF0)
      {
        v45 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v45 = v43;
      }

      v54 = v13 + 80;
      if (v45)
      {
        if (!(v45 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v46 = (16 * v42);
      v51 = 0;
      v52 = v46;
      *v46 = v11;
      v46[1] = 0;
      v53 = (16 * v42 + 16);
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MIDIInputPort::ConnectedSource>,MIDIInputPort::ConnectedSource*>(v13 + 80, v41, v38, 0);
      v47 = *(v13 + 10);
      *(v13 + 10) = 0;
      v48 = *(v13 + 12);
      v50 = v53;
      *(v13 + 88) = v53;
      *&v53 = v47;
      *(&v53 + 1) = v48;
      v51 = v47;
      v52 = v47;
      std::__split_buffer<MIDIInputPort::ConnectedSource>::~__split_buffer(&v51);
      v40 = v50;
    }

    else
    {
      *v38 = v11;
      *(v38 + 8) = 0;
      v40 = v38 + 16;
    }

    *(v13 + 11) = v40;
    if (*(v11 + 112) - *(v11 + 104) == 8)
    {
      v49 = *(v11 + 64);
      if (v49)
      {
        (*(*v49 + 112))(v49, *(v11 + 8), 1);
      }
    }
  }

  if (v16)
  {
    (*(*v14 + 24))(v14);
  }

  v20 = 0;
LABEL_10:
  if (v7)
  {
    (*(*v6 + 24))(v6);
  }

  return v20;
}

void sub_2371FFA34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::exception a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (a2)
  {
    std::__split_buffer<MIDIInputPort::ConnectedSource>::~__split_buffer(&a28);
    CADeprecated::CAMutex::Locker::~Locker(&a14);
    CADeprecated::CAMutex::Locker::~Locker(&a12);
    if (a2 == 3)
    {
      __cxa_begin_catch(exception_object);
      __cxa_end_catch();
    }

    else
    {
      if (a2 == 2)
      {
        __cxa_get_exception_ptr(exception_object);
        a12.__vftable = (MEMORY[0x277D82910] + 16);
        __cxa_begin_catch(exception_object);
        std::exception::~exception(&a12);
      }

      else
      {
        __cxa_begin_catch(exception_object);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x2371FF60CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _MIDIPortDisconnectSource(MIDIServer *a1, unsigned int a2)
{
  v3 = a1;
  v4 = MIDIServer::defaultInstance(a1) + 2;
  v5 = (*(*v4 + 16))(v4);
  v6 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIPort>::sRTTI, v3);
  if (v6)
  {
    v7 = v6;
    v8 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEndpoint>::sRTTI, a2);
    if (v8)
    {
      v9 = (*(*v8 + 80))(v8);
      if (!v9)
      {
        v11 = 4294956464;
        if (!v5)
        {
          return v11;
        }

        goto LABEL_8;
      }

      v10 = (*(*v7 + 80))(v7);
      if (v10)
      {
        v11 = MIDISource::DisconnectPort(v9, v10);
        if (!v5)
        {
          return v11;
        }

        goto LABEL_8;
      }
    }
  }

  v11 = 4294967246;
  if (v5)
  {
LABEL_8:
    (*(*v4 + 24))(v4);
  }

  return v11;
}

void sub_2371FFD48(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  CADeprecated::CAMutex::Locker::~Locker(&a9);
  if (a2 == 3)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
  }

  else
  {
    if (a2 == 2)
    {
      __cxa_get_exception_ptr(a1);
      a9 = MEMORY[0x277D82910] + 16;
      __cxa_begin_catch(a1);
      std::exception::~exception(&a9);
    }

    else
    {
      __cxa_begin_catch(a1);
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x2371FFD24);
}

void _MIDISetupCreate(MIDIServer *a1)
{
  v3 = MIDIServer::defaultInstance(a1) + 2;
  (*(*v3 + 16))(v3);
  Scheduler::FlushAllOutput(gScheduler);
  v2 = MIDIServer::defaultInstance(v1);
  MIDIDriverMgr::StopMIDI(v2[33]);
  operator new();
}

void sub_2371FFED8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception a9)
{
  MEMORY[0x2383C8250](v9, 0x10E1C4053490D92);
  CADeprecated::CAMutex::Locker::~Locker(&a9);
  if (a2 == 3)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
  }

  else
  {
    if (a2 == 2)
    {
      __cxa_get_exception_ptr(a1);
      a9.__vftable = (MEMORY[0x277D82910] + 16);
      __cxa_begin_catch(a1);
      std::exception::~exception(&a9);
    }

    else
    {
      __cxa_begin_catch(a1);
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x2371FFEBCLL);
}

uint64_t _MIDISetupInstall(MIDIServer *a1)
{
  v1 = a1;
  v2 = MIDIServer::defaultInstance(a1) + 2;
  v3 = (*(*v2 + 16))(v2);
  v4 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDISetup>::sRTTI, v1);
  v5 = v4;
  if (v4)
  {
    v6 = SetupManager::instance(v4);
    SetupManager::Install(v6, v5, 0);
  }

  if (v3)
  {
    (*(*v2 + 24))(v2);
  }

  if (v5)
  {
    return 0;
  }

  else
  {
    return 4294967246;
  }
}

uint64_t _MIDISetupGetCurrent(MIDIServer *a1)
{
  v2 = MIDIServer::defaultInstance(a1) + 2;
  v3 = (*(*v2 + 16))(v2);
  v4 = v3;
  if (a1)
  {
    v5 = SetupManager::instance(v3);
    if (*v5)
    {
      *a1 = *(*v5 + 8);
      v6 = 4294956459;
      v7 = 1;
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = 0;
      v6 = 4294956459;
      if (!v4)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    (*(*v2 + 24))(v2);
    goto LABEL_9;
  }

  v7 = 0;
  v6 = 4294967246;
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (v7)
  {
    return 0;
  }

  return v6;
}

void sub_2372001E8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  CADeprecated::CAMutex::Locker::~Locker(&a9);
  if (a2 == 3)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
  }

  else
  {
    if (a2 == 2)
    {
      __cxa_get_exception_ptr(a1);
      a9 = MEMORY[0x277D82910] + 16;
      __cxa_begin_catch(a1);
      std::exception::~exception(&a9);
    }

    else
    {
      __cxa_begin_catch(a1);
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x2372001CCLL);
}

uint64_t _MIDISetupFromData(MIDIServer *a1, uint64_t a2)
{
  v4 = MIDIServer::defaultInstance(a1) + 2;
  v5 = (*(*v4 + 16))(v4);
  if (a1)
  {
    v6 = a2 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (!v6)
  {
    operator new();
  }

  v8 = 0;
  if (v5)
  {
    (*(*v4 + 24))(v4);
  }

  if ((v7 & 1) == 0)
  {
    return 4294967246;
  }

  return v8;
}

void sub_2372003BC(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception a9)
{
  MEMORY[0x2383C8250](v9, 0x10E1C4053490D92);
  CADeprecated::CAMutex::Locker::~Locker(&a9);
  if (a2 == 2)
  {
    __cxa_get_exception_ptr(a1);
    a9.__vftable = (MEMORY[0x277D82910] + 16);
    __cxa_begin_catch(a1);
    std::exception::~exception(&a9);
    __cxa_end_catch();
    JUMPOUT(0x237200398);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23720039CLL);
}

uint64_t _MIDIGetNumberOfDevices(MIDIServer *a1)
{
  v1 = MIDIServer::defaultInstance(a1) + 2;
  v2 = (*(*v1 + 16))(v1);
  v3 = v2;
  v4 = *SetupManager::instance(v2);
  if (!v4 || (v5 = *(v4 + 64), v6 = *(v4 + 72), v5 == v6))
  {
    v7 = 0;
    if (!v3)
    {
      return v7;
    }

LABEL_10:
    (*(*v1 + 24))(v1);
    return v7;
  }

  v7 = 0;
  do
  {
    v8 = *v5;
    v10 = 0;
    MIDIObject::GetIntegerProperty(v8, kMIDIPropertyPrivate, &v10);
    if (!v10)
    {
      ++v7;
    }

    ++v5;
  }

  while (v5 != v6);
  if (v3)
  {
    goto LABEL_10;
  }

  return v7;
}

void sub_237200574(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception a10)
{
  CADeprecated::CAMutex::Locker::~Locker(&a10);
  if (a2 == 2)
  {
    __cxa_get_exception_ptr(a1);
    a10.__vftable = (MEMORY[0x277D82910] + 16);
    __cxa_begin_catch(a1);
    std::exception::~exception(&a10);
  }

  else
  {
    __cxa_begin_catch(a1);
  }

  __cxa_end_catch();
  JUMPOUT(0x237200554);
}

uint64_t _MIDIGetDevice(MIDIServer *a1)
{
  v1 = a1;
  v2 = MIDIServer::defaultInstance(a1) + 2;
  v3 = (*(*v2 + 16))(v2);
  v4 = v3;
  v5 = SetupManager::instance(v3);
  v6 = *(*v5 + 64);
  v7 = *(*v5 + 72);
  if (v6 == v7)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v8 = *v6;
    v11 = 0;
    MIDIObject::GetIntegerProperty(v8, kMIDIPropertyPrivate, &v11);
    if (!v11)
    {
      break;
    }

LABEL_5:
    if (++v6 == v7)
    {
      goto LABEL_6;
    }
  }

  if (v1)
  {
    v1 = (v1 - 1);
    goto LABEL_5;
  }

  if (!v8)
  {
LABEL_6:
    v9 = 0;
    if (v4)
    {
      goto LABEL_7;
    }

    return v9;
  }

  v9 = v8[2];
  if (!v4)
  {
    return v9;
  }

LABEL_7:
  (*(*v2 + 24))(v2);
  return v9;
}

void sub_237200708(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception a10)
{
  CADeprecated::CAMutex::Locker::~Locker(&a10);
  if (a2 == 2)
  {
    __cxa_get_exception_ptr(a1);
    a10.__vftable = (MEMORY[0x277D82910] + 16);
    __cxa_begin_catch(a1);
    std::exception::~exception(&a10);
  }

  else
  {
    __cxa_begin_catch(a1);
  }

  __cxa_end_catch();
  JUMPOUT(0x2372006D4);
}

uint64_t _MIDIGetNumberOfSources(MIDIServer *a1)
{
  v1 = MIDIServer::defaultInstance(a1) + 2;
  v2 = (*(*v1 + 16))(v1);
  v3 = v2;
  IntegerProperty = SetupManager::instance(v2);
  v5 = *IntegerProperty;
  if (!*IntegerProperty)
  {
    v10 = 0;
    if (!v3)
    {
      return v10;
    }

    goto LABEL_21;
  }

  v6 = *(v5 + 88);
  v7 = *(v5 + 96);
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = *v6;
      v17 = 0;
      IntegerProperty = MIDIObject::GetIntegerProperty(v9, kMIDIPropertyOffline, &v17);
      if (!v17)
      {
        v17 = 0;
        IntegerProperty = MIDIObject::GetIntegerProperty(v9, kMIDIPropertyPrivate, &v17);
        if (!v17)
        {
          ++v8;
        }
      }

      ++v6;
    }

    while (v6 != v7);
  }

  v11 = SetupManager::instance(IntegerProperty);
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  if (v12 == v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0;
    do
    {
      v15 = *v12;
      v17 = 0;
      MIDIObject::GetIntegerProperty(v15, kMIDIPropertyOffline, &v17);
      if (!v17)
      {
        v17 = 0;
        MIDIObject::GetIntegerProperty(v15, kMIDIPropertyPrivate, &v17);
        if (!v17)
        {
          ++v14;
        }
      }

      ++v12;
    }

    while (v12 != v13);
  }

  v10 = v14 + v8;
  if (v3)
  {
LABEL_21:
    (*(*v1 + 24))(v1);
  }

  return v10;
}

void sub_23720093C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception a10)
{
  CADeprecated::CAMutex::Locker::~Locker(&a10);
  if (a2 == 2)
  {
    __cxa_get_exception_ptr(a1);
    a10.__vftable = (MEMORY[0x277D82910] + 16);
    __cxa_begin_catch(a1);
    std::exception::~exception(&a10);
  }

  else
  {
    __cxa_begin_catch(a1);
  }

  __cxa_end_catch();
  JUMPOUT(0x237200914);
}

uint64_t _MIDIGetSource(MIDIServer *a1)
{
  v1 = a1;
  v2 = MIDIServer::defaultInstance(a1) + 2;
  v3 = (*(*v2 + 16))(v2);
  v4 = v3;
  IntegerProperty = SetupManager::instance(v3);
  v6 = *(*IntegerProperty + 88);
  v7 = *(*IntegerProperty + 96);
  while (1)
  {
    if (v6 == v7)
    {
      goto LABEL_10;
    }

    v8 = *v6;
    v14 = 0;
    IntegerProperty = MIDIObject::GetIntegerProperty(v8, kMIDIPropertyOffline, &v14);
    if (!v14)
    {
      v14 = 0;
      IntegerProperty = MIDIObject::GetIntegerProperty(v8, kMIDIPropertyPrivate, &v14);
      if (!v14)
      {
        break;
      }
    }

LABEL_7:
    ++v6;
  }

  if (v1)
  {
    --v1;
    goto LABEL_7;
  }

  if (v8)
  {
LABEL_18:
    v12 = v8[2];
    if (!v4)
    {
      return v12;
    }

    goto LABEL_21;
  }

  v1 = -1;
LABEL_10:
  v9 = SetupManager::instance(IntegerProperty);
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  while (v10 != v11)
  {
    v8 = *v10;
    v14 = 0;
    MIDIObject::GetIntegerProperty(v8, kMIDIPropertyOffline, &v14);
    if (!v14)
    {
      v14 = 0;
      MIDIObject::GetIntegerProperty(v8, kMIDIPropertyPrivate, &v14);
      if (!v14)
      {
        if (!v1)
        {
          if (v8)
          {
            goto LABEL_18;
          }

          break;
        }

        --v1;
      }
    }

    ++v10;
  }

  v12 = 0;
  if (v4)
  {
LABEL_21:
    (*(*v2 + 24))(v2);
  }

  return v12;
}

void sub_237200B60(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception a10)
{
  CADeprecated::CAMutex::Locker::~Locker(&a10);
  if (a2 == 2)
  {
    __cxa_get_exception_ptr(a1);
    a10.__vftable = (MEMORY[0x277D82910] + 16);
    __cxa_begin_catch(a1);
    std::exception::~exception(&a10);
  }

  else
  {
    __cxa_begin_catch(a1);
  }

  __cxa_end_catch();
  JUMPOUT(0x237200B3CLL);
}

uint64_t _MIDIGetNumberOfDestinations(MIDIServer *a1)
{
  v1 = MIDIServer::defaultInstance(a1) + 2;
  v2 = (*(*v1 + 16))(v1);
  v3 = v2;
  IntegerProperty = SetupManager::instance(v2);
  v5 = *IntegerProperty;
  if (!*IntegerProperty)
  {
    v10 = 0;
    if (!v3)
    {
      return v10;
    }

    goto LABEL_21;
  }

  v6 = *(v5 + 112);
  v7 = *(v5 + 120);
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = *v6;
      v17 = 0;
      IntegerProperty = MIDIObject::GetIntegerProperty(v9, kMIDIPropertyOffline, &v17);
      if (!v17)
      {
        v17 = 0;
        IntegerProperty = MIDIObject::GetIntegerProperty(v9, kMIDIPropertyPrivate, &v17);
        if (!v17)
        {
          ++v8;
        }
      }

      ++v6;
    }

    while (v6 != v7);
  }

  v11 = SetupManager::instance(IntegerProperty);
  v12 = *(v11 + 32);
  v13 = *(v11 + 40);
  if (v12 == v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0;
    do
    {
      v15 = *v12;
      v17 = 0;
      MIDIObject::GetIntegerProperty(v15, kMIDIPropertyOffline, &v17);
      if (!v17)
      {
        v17 = 0;
        MIDIObject::GetIntegerProperty(v15, kMIDIPropertyPrivate, &v17);
        if (!v17)
        {
          ++v14;
        }
      }

      ++v12;
    }

    while (v12 != v13);
  }

  v10 = v14 + v8;
  if (v3)
  {
LABEL_21:
    (*(*v1 + 24))(v1);
  }

  return v10;
}
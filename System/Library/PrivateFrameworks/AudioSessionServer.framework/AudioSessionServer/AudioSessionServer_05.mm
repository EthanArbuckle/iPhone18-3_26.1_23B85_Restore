void sub_24176872C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38, id location)
{
  if (a38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a38);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  objc_destroyWeak(&location);
  if (__p)
  {
    operator delete(__p);
  }

  *(v40 - 208) = v40 - 240;
  std::vector<std::weak_ptr<avas::server::AudioSessionInfo>>::__destroy_vector::operator()[abi:ne200100]((v40 - 208));

  _Unwind_Resume(a1);
}

void *avas::server::LegacySessionManager::FindSessionAndVerifyOwnershipPriv<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,std::__tree_node<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,void *> *,long>>>(uint64_t a1, void *a2, void *a3, unsigned int a4, __int128 *a5, uint64_t a6)
{
  v6 = a3;
  v13 = a4;
  v7 = a5[1];
  v14 = *a5;
  v15 = v7;
  v16 = *(a5 + 4);
  v17 = a6;
  if (a2 != a3)
  {
    v8 = a2;
    while (!avas::server::LegacySessionManager::FindSessionAndVerifyOwnershipPriv<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,std::__tree_node<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,void *> *,long>>>(std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,std::__tree_node<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,void *> *,long>>,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,std::__tree_node<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,void *> *,long>>,unsigned int,avas::server::ProcessIdentity const&,std::optional<avas::server::LegacySessionManager::EntitlementExceptionType> const&)const::{lambda(std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,std::__tree_node<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,void *> *,long>> const&)#1}::operator()<std::pair<unsigned int const,std::shared_ptr<avas::server::AudioSessionInfo>>>(&v13, (v8 + 4)))
    {
      v9 = v8[1];
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
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      v8 = v10;
      if (v10 == v6)
      {
        return v6;
      }
    }

    return v8;
  }

  return v6;
}

void avas::server::AudioSessionInfo::GetSiblingSessions(avas::server::AudioSessionInfo *this@<X0>, void *a2@<X8>)
{
  os_unfair_lock_lock(this + 102);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::weak_ptr<avas::server::AudioSessionInfo>>::__init_with_size[abi:ne200100]<std::weak_ptr<avas::server::AudioSessionInfo>*,std::weak_ptr<avas::server::AudioSessionInfo>*>(a2, *(this + 52), *(this + 53), (*(this + 53) - *(this + 52)) >> 4);

  os_unfair_lock_unlock(this + 102);
}

void avas::server::LegacySessionManager::RemoveSessionFromMicrophoneInjectionModeMap(avas::server::LegacySessionManager *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  os_unfair_lock_lock(this + 56);
  v6 = *(this + 30);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = this + 240;
  do
  {
    v8 = *(v6 + 8);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *&v6[8 * v10];
  }

  while (v6);
  if (v7 != this + 240 && (v11 = *(v7 + 8), v11 <= a2))
  {
    v13 = *(v7 + 5);
    std::__tree<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>::__remove_node_pointer(this + 29, v7);
    operator delete(v7);
    *a3 = v11;
    *(a3 + 8) = v13;
    v12 = 1;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v12;

  os_unfair_lock_unlock(this + 56);
}

void avas::server::LegacySessionManager::PrivateRemoveSessionFromApplication(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  SessionType = avas::server::ConstAudioSessionInfo::GetSessionType(*a3);
  if ((avas::server::AudioApplicationInfo::IsSessionTypeIgnored(SessionType) & 1) == 0)
  {
    v6 = std::__tree<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::__map_value_compare<avas::server::ProcessIdentity,std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::less<avas::server::ProcessIdentity>,true>,std::allocator<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>>>::find<avas::server::ProcessIdentity>(a1 + 64, *a3 + 48);
    if (a1 + 72 != v6)
    {
      v7 = v6;
      v8 = *(v6 + 72);
      v9 = *(a3 + 8);
      v16 = *a3;
      v17 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      avas::server::AudioApplicationInfo::RemoveSession(v8, &v16);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      if (!avas::server::AudioApplicationInfo::HasStrongClientOwner(*(v7 + 72)))
      {
        avas::server::AudioApplicationInfo::GetSessions(*(v7 + 72), buf);
        v11 = *buf;
        v10 = *&buf[8];
        v18 = buf;
        std::vector<std::shared_ptr<avas::server::AudioSessionInfo>>::__destroy_vector::operator()[abi:ne200100](&v18);
        if (v10 == v11)
        {
          v13 = *avas::server::gSessionServerLog(v12);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = avas::server::AudioApplicationInfo::DebugString(*(v7 + 72));
            *buf = 136315650;
            *&buf[4] = "ServerSessionManager.mm";
            *&buf[12] = 1024;
            *&buf[14] = 1086;
            v20 = 2080;
            v21 = v14;
            _os_log_impl(&dword_241701000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d destroy audio app instance since was created implicitly by session creation and all sessions now gone (audio app: %s)", buf, 0x1Cu);
          }

          std::__tree<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::__map_value_compare<avas::server::ProcessIdentity,std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::less<avas::server::ProcessIdentity>,true>,std::allocator<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>>>::erase((a1 + 64), v7);
        }
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void ___ZN4avas6server20LegacySessionManager20PrivateRemoveSessionERN5caulk10sync_guardINS0_17SessionCollectionENS2_4mach11unfair_lockEEEjRKNS0_15ProcessIdentityEP19NSMutableDictionary_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained updateMicrophoneInjectionPreference:0 forSession:*(a1 + 40)];
  }
}

void avas::server::LegacySessionManager::RemoveProxyClientsForInvalidatedXPCConnection(os_unfair_lock_s *this, NSXPCConnection *a2)
{
  v3 = a2;
  __src = 0;
  v35 = 0;
  v36 = 0;
  os_unfair_lock_lock(this + 2);
  *lock.val = this + 2;
  *&lock.val[2] = this + 4;
  caulk::sync_guard<avas::server::SessionCollection,caulk::mach::unfair_lock>::get(&lock, &v32);
  if (*lock.val)
  {
    os_unfair_lock_unlock(*lock.val);
  }

  v4 = *v32.val;
  v30 = v3;
  v5 = v3;
  v6 = v5;
  if (v4 != &v32.val[2])
  {
    v31 = v5;
    do
    {
      v7 = v4[1].val[0];
      v8 = *&v4[1].val[2];
      v9 = *&v4[1].val[4];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = *(v8 + 96);
      if (!v10)
      {
        v29 = _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:v29 process:? delegate:?];
      }

      v11 = *(v8 + 104);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      avas::server::AudioSessionRemoteClientManager::GetRemoteClient(v10, v7, &lock);
      if (*lock.val && *(*lock.val + 176) == v6 && *(*lock.val + 168) == 1886550137)
      {
        v12 = v35;
        if (v35 >= v36)
        {
          v14 = __src;
          v15 = v35 - __src;
          v16 = (v35 - __src) >> 2;
          v17 = v16 + 1;
          if ((v16 + 1) >> 62)
          {
            std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
          }

          v18 = v36 - __src;
          if ((v36 - __src) >> 1 > v17)
          {
            v17 = v18 >> 1;
          }

          v19 = v18 >= 0x7FFFFFFFFFFFFFFCLL;
          v20 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v19)
          {
            v20 = v17;
          }

          if (v20)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&__src, v20);
          }

          *(4 * v16) = v7;
          v13 = 4 * v16 + 4;
          memcpy(0, v14, v15);
          v21 = __src;
          __src = 0;
          v35 = v13;
          v36 = 0;
          if (v21)
          {
            operator delete(v21);
          }

          v6 = v31;
        }

        else
        {
          *v35 = v7;
          v13 = (v12 + 4);
        }

        v35 = v13;
      }

      if (*&lock.val[2])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&lock.val[2]);
      }

      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v22 = *&v4->val[2];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22->val;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = *&v4->val[4];
          v24 = *v23->val == v4;
          v4 = v23;
        }

        while (!v24);
      }

      v4 = v23;
    }

    while (v23 != &v32.val[2]);
  }

  std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>>>::destroy(&v32.val[6], v33);
  std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>>>::destroy(&v32, *&v32.val[2]);
  v25 = __src;
  v26 = v35;
  for (i = v6; v25 != v26; ++v25)
  {
    v28 = *v25;
    if (i)
    {
      [(NSXPCConnection *)i auditToken];
    }

    else
    {
      memset(&v37, 0, sizeof(v37));
    }

    v32 = v37;
    LOBYTE(v33) = 1;
    lock = v37;
    HIDWORD(v33) = audit_token_to_pid(&lock);
    avas::server::LegacySessionManager::RemoveSession(this, v28, &v32);
  }

  if (__src)
  {
    v35 = __src;
    operator delete(__src);
  }
}

void sub_241769030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, os_unfair_lock_t lock, std::__shared_weak_count *a26)
{
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  avas::server::SessionCollection::~SessionCollection(&a11);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void avas::server::LegacySessionManager::RemoveSessionsForInvalidatedXPCConnection(os_unfair_lock_s *this, NSXPCConnection *a2)
{
  v3 = a2;
  avas::server::LegacySessionManager::FindSessionsForConnection(this, v3, v12);
  v4 = v12[0];
  v5 = v12[1];
  for (i = v3; v4 != v5; v4 += 2)
  {
    v8 = *v4;
    v7 = v4[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v8 + 72))(&v13, v8);
    v9 = v13[22];
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    if (v9 == i)
    {
      v10 = (*(*v8 + 16))(v8);
      v11 = (*(*v8 + 80))(v8);
      avas::server::LegacySessionManager::RemoveSession(this, v10, v11);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  v13 = v12;
  std::vector<std::shared_ptr<avas::server::AudioSessionInfo>>::__destroy_vector::operator()[abi:ne200100](&v13);
}

void avas::server::LegacySessionManager::GetSessionIDsForToken(avas::server::LegacySessionManager *this@<X0>, const audit_token_t *a2@<X1>, const void **a3@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = *&a2->val[4];
  *v36.val = *a2->val;
  *&v36.val[4] = v5;
  v6 = *&a2->val[4];
  *atoken.val = *a2->val;
  *&atoken.val[4] = v6;
  v7 = audit_token_to_pid(&atoken);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  os_unfair_lock_lock(this + 2);
  avas::server::SessionCollection::SessionPresentingIterator::SessionPresentingIterator(v32, *(this + 2), this + 24, *(this + 5), this + 48);
  avas::server::SessionCollection::SessionPresentingIterator::SessionPresentingIterator(v28, this + 24, this + 24, this + 48, this + 48);
  atoken = v36;
  v25 = 1;
  v26 = v7;
  v27 = a3;
  while (v32[0] != v28[0] || v32[2] != v28[2])
  {
    v9 = v32[5];
    v8 = v33;
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = (*(*v9 + 80))(v9);
    if (avas::server::ProcessIdentity::operator==(v10, &atoken))
    {
      v11 = v27;
      v12 = (*(*v9 + 16))(v9);
      v14 = v11[1];
      v13 = v11[2];
      if (v14 >= v13)
      {
        v16 = *v11;
        v17 = v14 - *v11;
        v18 = v17 >> 2;
        v19 = (v17 >> 2) + 1;
        if (v19 >> 62)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        v20 = v13 - v16;
        if (v20 >> 1 > v19)
        {
          v19 = v20 >> 1;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v21 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(v11, v21);
        }

        *(4 * v18) = v12;
        v15 = 4 * v18 + 4;
        memcpy(0, v16, v17);
        v22 = *v11;
        *v11 = 0;
        v11[1] = v15;
        v11[2] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v14 = v12;
        v15 = (v14 + 4);
      }

      v11[1] = v15;
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    avas::server::SessionCollection::SessionPresentingIterator::operator++(v32);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  os_unfair_lock_unlock(this + 2);
  v23 = *MEMORY[0x277D85DE8];
}

void sub_241769538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  avas::server::SessionCollection::SessionPresentingIterator::~SessionPresentingIterator(&a30);
  os_unfair_lock_unlock(v30 + 2);
  v32 = *a10;
  if (*a10)
  {
    *(a10 + 8) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

id avas::server::LegacySessionManager::GetAllSessionInformation(os_unfair_lock_s *this, int a2, const avas::server::ProcessIdentity *a3)
{
  v5 = this + 2;
  v6 = this + 4;
  os_unfair_lock_lock(this + 2);
  lock[0] = v5;
  lock[1] = v6;
  v8 = avas::server::LegacySessionManager::PrivateGetAllSessionInformation(v7, a2, lock, a3);
  if (lock[0])
  {
    os_unfair_lock_unlock(lock[0]);
  }

  return v8;
}

void sub_241769624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, os_unfair_lock_t lock)
{
  if (lock)
  {
    os_unfair_lock_unlock(lock);
  }

  _Unwind_Resume(exception_object);
}

id avas::server::LegacySessionManager::PrivateGetAllSessionInformation(uint64_t a1, int a2, uint64_t a3, avas::server::ProcessIdentity *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = objc_opt_new();
  memset(v36, 0, sizeof(v36));
  v37 = 1065353216;
  HasEntitlement = avas::server::ProcessIdentity::ProcessHasEntitlement(a4, "com.apple.private.coreaudio.audiohud");
  if (HasEntitlement)
  {
    v9 = *(a3 + 8);
    v10 = *v9;
    v34 = v7;
    v35 = v9 + 1;
    if (*v9 != v9 + 1)
    {
      do
      {
        v11 = v10[5];
        v12 = v10[6];
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v13 = *(v11 + 96);
        if (!v13)
        {
          v33 = _os_crash();
          [AVAudioSessionRemoteXPCClient initWithServer:v33 process:? delegate:?];
        }

        v14 = *(v11 + 104);
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        avas::server::AudioSessionRemoteClientManager::GetRemoteClients(v13, v38);
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        v15 = v38[0];
        v16 = v38[1];
        while (v15 != v16)
        {
          v17 = v15[1];
          if (v17)
          {
            v18 = std::__shared_weak_count::lock(v17);
            if (v18)
            {
              v19 = v18;
              v20 = *v15;
              if (*v15)
              {
                v39 = *(v20 + 8);
                if (!std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(v36, &v39))
                {
                  *buf = &v39;
                  if ((*(std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v36, &v39) + 20) & 1) == 0)
                  {
                    v42[0] = @"AudioHUD_SessionID";
                    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v39];
                    *buf = v21;
                    v42[1] = @"AudioHUD_SessionType";
                    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v20 + 168)];
                    *&buf[8] = v22;
                    v42[2] = @"AudioHUD_ClientProcessName";
                    v23 = (v20 + 184);
                    if (*(v20 + 207) < 0)
                    {
                      v23 = *v23;
                    }

                    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:v23];
                    *&buf[16] = v24;
                    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v42 count:3];

                    [v34 addObject:v25];
                    v40 = v39;
                    v41 = 1;
                    std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,BOOL>>(v36, &v40);
                  }
                }
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
            }
          }

          v15 += 2;
        }

        *buf = v38;
        std::vector<std::weak_ptr<avas::server::AudioSessionInfo>>::__destroy_vector::operator()[abi:ne200100](buf);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        v26 = v10[1];
        if (v26)
        {
          do
          {
            v27 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v27 = v10[2];
            v28 = *v27 == v10;
            v10 = v27;
          }

          while (!v28);
        }

        v10 = v27;
      }

      while (v27 != v35);
    }

    v7 = v34;
    v29 = v34;
  }

  else
  {
    v30 = *avas::server::gSessionServerLog(HasEntitlement);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "ServerSessionManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 748;
      *&buf[18] = 1024;
      *&buf[20] = a2;
      _os_log_impl(&dword_241701000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d Session 0x%x does not have the appropriate audiohud entitlement", buf, 0x18u);
    }

    v29 = 0;
  }

  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(v36);

  v31 = *MEMORY[0x277D85DE8];

  return v29;
}

void sub_2417699D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(va);

  _Unwind_Resume(a1);
}

void *avas::server::LegacySessionManager::GenerateIOControllerEventForSessions(avas::server::LegacySessionManager *this, uint64_t a2, int **a3)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v3 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    do
    {
      avas::server::LegacySessionManager::FindSession(this, *v3, &v19);
      if (v19)
      {
        (*(*v19 + 72))(&v24);
        v8 = *(v24 + 176);
        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        v18 = [v8 processIdentifier];
        boost::container::dtl::flat_tree<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>,boost::container::dtl::select1st<int>,std::less<int>,boost::container::new_allocator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>>::find(&v21, &v18, &v17);
        if (!v21 && v22)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        if (v17 == v21 + 16 * v22)
        {
          v15 = v18;
          v16 = v8;
          boost::container::dtl::flat_tree<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>,boost::container::dtl::select1st<int>,std::less<int>,boost::container::new_allocator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>>::insert_unique(&v21, &v15, &v24);
        }
      }

      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      ++v3;
    }

    while (v3 != v4);
    if (v22)
    {
      v9 = [MEMORY[0x277CBEA90] dataWithBytes:*a3 length:a3[1] - *a3];
      v10 = v21;
      if (!v21 && v22)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (v22)
      {
        v11 = v21 + 16 * v22;
        do
        {
          if (!v10)
          {
            __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
          }

          v12 = *(v10 + 8);
          v13 = [v12 remoteObjectProxy];
          [v13 IOControllerEvent:a2 sessions:v9 isDecoupledInput:*(a3 + 24)];

          v10 += 16;
        }

        while (v10 != v11);
      }
    }
  }

  return boost::container::vector<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>,boost::container::new_allocator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>,void>::~vector(&v21);
}

void sub_241769CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  boost::container::vector<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>,boost::container::new_allocator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>,void>::~vector(va);
  _Unwind_Resume(a1);
}

void avas::server::LegacySessionManager::CreateAudioApplication(os_unfair_lock_s *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *&v23[5] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = v7;
  if ((*(a2 + 88) & 1) == 0)
  {
    v10 = *avas::server::gSessionServerLog(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a2 + 92);
      v12 = *(a2 + 8);
      *buf = 136315906;
      *&buf[4] = "ServerSessionManager.mm";
      v20 = 1024;
      v21 = 832;
      v22 = 1024;
      v23[0] = v11;
      LOWORD(v23[1]) = 2112;
      *(&v23[1] + 2) = v12;
      _os_log_impl(&dword_241701000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Error - cannot create audio app since audit token invalid (pid: %d, bundle: %@)", buf, 0x22u);
    }

    goto LABEL_22;
  }

  v9 = *(a2 + 96);
  if (v9 == 1684825972)
  {
    avas::server::LegacySessionManager::PrivateCreateDelegateAudioApp(a1, a2, v7, a4);
    goto LABEL_23;
  }

  if (v9 == 1886547832)
  {
    avas::server::LegacySessionManager::PrivateCreateProxyAudioApp(a1, a2, v7, a4);
    goto LABEL_23;
  }

  if (v9 != 1886546285)
  {
    v13 = *avas::server::gSessionServerLog(v7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a2 + 96);
      v15 = bswap32(v14);
      *&buf[1] = v15;
      if ((v15 - 32) > 0x5E || ((v15 >> 8) - 32) > 0x5E || ((v15 << 8 >> 24) - 32) > 0x5E || ((v15 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v18, v14);
      }

      else
      {
        strcpy(&buf[5], "'");
        buf[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v18, buf);
      }

      v16 = &v18;
      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v16 = v18.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = "ServerSessionManager.mm";
      v20 = 1024;
      v21 = 844;
      v22 = 2080;
      *v23 = v16;
      _os_log_impl(&dword_241701000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Error - cannot create unknown application type: %s", buf, 0x1Cu);
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }
    }

LABEL_22:
    *a4 = 0u;
    *(a4 + 16) = 0u;
    goto LABEL_23;
  }

  avas::server::LegacySessionManager::PrivateExplicitCreatePrimaryAudioApp(a1, a2, v7, a4);
LABEL_23:

  v17 = *MEMORY[0x277D85DE8];
}

void sub_241769FA8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void avas::server::LegacySessionManager::PrivateExplicitCreatePrimaryAudioApp(os_unfair_lock_s *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *&v26[5] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = avas::server::ProcessIdentity::operator==(a2 + 16, a2 + 56);
  if (v8)
  {
    os_unfair_lock_lock(a1 + 2);
    lock[0] = a1 + 2;
    lock[1] = a1 + 4;
    avas::server::LegacySessionManager::PrivateFindOrCreatePrimaryApplication(a1, lock, a2, v7, &v20);
    v9 = v20;
    if ((v22 & 1) == 0)
    {
      v10 = avas::server::AudioApplicationInfo::SetPrimaryClient(v20, a2, v7);
      if (!v10)
      {
        v18 = *avas::server::gSessionServerLog(v10);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = avas::server::AudioApplicationInfo::DebugString(v9);
          *buf = 136315650;
          *&buf[4] = "ServerSessionManager.mm";
          *&buf[12] = 1024;
          *&buf[14] = 868;
          v25 = 2080;
          *v26 = v19;
          _os_log_impl(&dword_241701000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create primary client (app: %s)", buf, 0x1Cu);
        }

        *a4 = 0u;
        *(a4 + 16) = 0u;
        v13 = v21;
        if (!v21)
        {
          goto LABEL_11;
        }

LABEL_10:
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
LABEL_11:
        if (lock[0])
        {
          os_unfair_lock_unlock(lock[0]);
        }

        goto LABEL_16;
      }

      v11 = *avas::server::gSessionServerLog(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = avas::server::AudioApplicationInfo::DebugString(v9);
        *buf = 136315650;
        *&buf[4] = "ServerSessionManager.mm";
        *&buf[12] = 1024;
        *&buf[14] = 872;
        v25 = 2080;
        *v26 = v12;
        _os_log_impl(&dword_241701000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Explicitly created audio app from implicitly-created instance (app: %s)", buf, 0x1Cu);
      }
    }

    avas::server::AudioApplicationInfo::GetPrimaryClient(v9, buf);
    v13 = v21;
    *a4 = v9;
    *(a4 + 8) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *(a4 + 16) = *buf;
    if (!v13)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v14 = *avas::server::gSessionServerLog(v8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = *(a2 + 52);
    v16 = *(a2 + 92);
    *buf = 136315906;
    *&buf[4] = "ServerSessionManager.mm";
    *&buf[12] = 1024;
    *&buf[14] = 855;
    v25 = 1024;
    v26[0] = v15;
    LOWORD(v26[1]) = 1024;
    *(&v26[1] + 2) = v16;
    _os_log_impl(&dword_241701000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Error - primary application instances should have matching source\t\t\t\t\t   and creator process ids (source: %d, creator: %d)", buf, 0x1Eu);
  }

  *a4 = 0u;
  *(a4 + 16) = 0u;
LABEL_16:

  v17 = *MEMORY[0x277D85DE8];
}

void sub_24176A294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, os_unfair_lock_t lock)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (lock)
  {
    os_unfair_lock_unlock(lock);
  }

  _Unwind_Resume(a1);
}

void avas::server::LegacySessionManager::PrivateCreateProxyAudioApp(os_unfair_lock_s *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = avas::server::ProcessIdentity::operator==(a2 + 16, a2 + 56);
  if (v8)
  {
    v9 = *avas::server::gSessionServerLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a2 + 92);
      v11 = *(a2 + 52);
      *v19 = 136315906;
      *&v19[4] = "ServerSessionManager.mm";
      *&v19[12] = 1024;
      *&v19[14] = 908;
      v20 = 1024;
      v21 = v10;
      v22 = 1024;
      v23 = v11;
      _os_log_impl(&dword_241701000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Error - proxy application instances must not have matching source\t\t\t\t\t   and creator process ids (source: %d, creator: %d)", v19, 0x1Eu);
    }

    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else
  {
    os_unfair_lock_lock(a1 + 2);
    v12 = std::__tree<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::__map_value_compare<avas::server::ProcessIdentity,std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::less<avas::server::ProcessIdentity>,true>,std::allocator<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>>>::find<avas::server::ProcessIdentity>(&a1[16], a2 + 56);
    v13 = v12;
    if (&a1[18] == v12)
    {
      v16 = *avas::server::gSessionServerLog(v12);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a2 + 92);
        *v19 = 136315650;
        *&v19[4] = "ServerSessionManager.mm";
        *&v19[12] = 1024;
        *&v19[14] = 916;
        v20 = 1024;
        v21 = v17;
        _os_log_impl(&dword_241701000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d Error - cannot create proxy instance - primary app instance (pid:%d) not found", v19, 0x18u);
      }

      *a4 = 0u;
      *(a4 + 16) = 0u;
    }

    else
    {
      avas::server::AudioApplicationInfo::AddProxyAudioApp(v12[9], a2, v7, v19);
      v14 = v13[10];
      *a4 = v13[9];
      *(a4 + 8) = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14[2], 1uLL, memory_order_relaxed);
      }

      v15 = *&v19[8];
      *(a4 + 16) = *v19;
      *(a4 + 24) = v15;
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        if (*&v19[8])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&v19[8]);
        }
      }
    }

    os_unfair_lock_unlock(a1 + 2);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_24176A50C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 2);

  _Unwind_Resume(a1);
}

void avas::server::LegacySessionManager::PrivateCreateDelegateAudioApp(os_unfair_lock_s *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, os_unfair_lock_s **a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = avas::server::ProcessIdentity::operator==(a2 + 16, a2 + 56);
  if (v8)
  {
    v9 = *avas::server::gSessionServerLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a2 + 92);
      v11 = *(a2 + 52);
      *buf = 136315906;
      *&buf[4] = "ServerSessionManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 930;
      v22 = 1024;
      v23 = v10;
      v24 = 1024;
      v25 = v11;
      _os_log_impl(&dword_241701000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Warning - delegate application instances not expected to have matching source\t\t\t\t   and creator process ids (source: %d, creator: %d)", buf, 0x1Eu);
    }
  }

  os_unfair_lock_lock(a1 + 2);
  lock[0] = a1 + 2;
  lock[1] = a1 + 4;
  v12 = std::__tree<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::__map_value_compare<avas::server::ProcessIdentity,std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::less<avas::server::ProcessIdentity>,true>,std::allocator<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>>>::find<avas::server::ProcessIdentity>(&a1[16], a2 + 56);
  if (&a1[18] == v12)
  {
    v15 = *avas::server::gSessionServerLog(v12);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a2 + 92);
      *buf = 136315650;
      *&buf[4] = "ServerSessionManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 939;
      v22 = 1024;
      v23 = v16;
      _os_log_impl(&dword_241701000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Warning - source app instance (pid:%d) not found, will create delegate for this audit token anyway", buf, 0x18u);
    }

    avas::server::LegacySessionManager::PrivateCreateAudioAppImpl(a1, lock, a2, v7);
  }

  v14 = *(v12 + 9);
  v13 = *(v12 + 10);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v14)
  {
    v19 = _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:v19 process:? delegate:?];
  }

  avas::server::AudioApplicationInfo::AddDelegateAudioApp(v14, a2, v7, buf);
  *a4 = v14;
  a4[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *&buf[8];
  a4[2] = *buf;
  a4[3] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (lock[0])
  {
    os_unfair_lock_unlock(lock[0]);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_24176A798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, os_unfair_lock_t lock)
{
  if (lock)
  {
    os_unfair_lock_unlock(lock);
  }

  _Unwind_Resume(a1);
}

void avas::server::LegacySessionManager::FindAudioApplicationAndVerifyOwnership(os_unfair_lock_s *a1@<X0>, uint64_t a2@<X1>, avas::server::ProcessIdentity *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  if (avas::server::LegacySessionManager::VerifyAudioAppPermission(a1, a2, a3, a5))
  {
    os_unfair_lock_lock(a1 + 2);
    v11 = std::__tree<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::__map_value_compare<avas::server::ProcessIdentity,std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::less<avas::server::ProcessIdentity>,true>,std::allocator<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>>>::find<avas::server::ProcessIdentity>(&a1[16], a2);
    if (&a1[18] == v11)
    {
      v17 = *avas::server::gSessionServerLog(v11);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a2 + 36);
        *buf = 136315650;
        v27 = "ServerSessionManager.mm";
        v28 = 1024;
        v29 = 961;
        v30 = 1024;
        v31 = v18;
        _os_log_impl(&dword_241701000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Error - app (pid:%d) not found!", buf, 0x18u);
      }

      *a6 = 0u;
      *(a6 + 16) = 0u;
    }

    else
    {
      v13 = *(v11 + 9);
      v12 = *(v11 + 10);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!v13)
      {
        v23 = _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:v23 process:? delegate:?];
      }

      avas::server::AudioApplicationInfo::FindAudioAppClient(v13, a4, &v24);
      v15 = v24;
      if (v24)
      {
        *a6 = v13;
        *(a6 + 8) = v12;
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v16 = v25;
        *(a6 + 16) = v15;
        *(a6 + 24) = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v19 = *avas::server::gSessionServerLog(v14);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(a2 + 36);
          v21 = *(a3 + 9);
          *buf = 136316162;
          v27 = "ServerSessionManager.mm";
          v28 = 1024;
          v29 = 971;
          v30 = 1024;
          v31 = v20;
          v32 = 1024;
          v33 = a4;
          v34 = 1024;
          v35 = v21;
          _os_log_impl(&dword_241701000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Error - app (pid:%d) found but audio app client (id: %u) not found (caller pid: %d)", buf, 0x24u);
        }

        *a6 = 0u;
        *(a6 + 16) = 0u;
      }

      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }
    }

    os_unfair_lock_unlock(a1 + 2);
  }

  else
  {
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_24176AA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  os_unfair_lock_unlock(v10 + 2);
  _Unwind_Resume(a1);
}

BOOL avas::server::LegacySessionManager::VerifyAudioAppPermission(uint64_t a1, uint64_t a2, avas::server::ProcessIdentity *a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = avas::server::ProcessIdentity::operator==(a2, a3);
  if (v7)
  {
    goto LABEL_2;
  }

  if (*(a4 + 4) != 1 || *a4 != 0)
  {
    v10 = *avas::server::gSessionServerLog(v7);
    result = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      goto LABEL_13;
    }

    v11 = *(a2 + 36);
    v12 = *(a3 + 9);
    v21 = 136315906;
    v22 = "ServerSessionManager.mm";
    v23 = 1024;
    v24 = 999;
    v25 = 1024;
    v26 = v11;
    v27 = 1024;
    v28 = v12;
    v13 = "%25s:%-5d Failed to verify access to application with pid: %d from caller with pid:%d";
    v14 = v10;
    v15 = OS_LOG_TYPE_DEFAULT;
LABEL_12:
    _os_log_impl(&dword_241701000, v14, v15, v13, &v21, 0x1Eu);
    result = 0;
    goto LABEL_13;
  }

  HasEntitlement = avas::server::ProcessIdentity::ProcessHasEntitlement(a3, "com.apple.private.coreaudio.borrowaudioapplication.allow");
  if (!HasEntitlement)
  {
    v17 = *avas::server::gSessionServerLog(HasEntitlement);
    result = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (!result)
    {
      goto LABEL_13;
    }

    v18 = *(a2 + 36);
    v19 = *(a3 + 9);
    v21 = 136315906;
    v22 = "ServerSessionManager.mm";
    v23 = 1024;
    v24 = 993;
    v25 = 1024;
    v26 = v18;
    v27 = 1024;
    v28 = v19;
    v13 = "%25s:%-5d Lookup of audio app (pid:%d) succeeded, but calling client (pid:%d) does not have entitlement to use it";
    v14 = v17;
    v15 = OS_LOG_TYPE_INFO;
    goto LABEL_12;
  }

LABEL_2:
  result = 1;
LABEL_13:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void avas::server::LegacySessionManager::RemoveApplicationForInvalidatedXPCConnection(avas::server::LegacySessionManager *this, NSXPCConnection *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  os_unfair_lock_lock(this + 2);
  v4 = *(this + 8);
  v5 = this + 72;
  if (v4 != (this + 72))
  {
    while (1)
    {
      v6 = avas::server::AudioApplicationInfo::HandleXPCConnectionInvalidated(v4[9], v3);
      if (v6)
      {
        break;
      }

      v7 = v4[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v4[2];
          v9 = *v8 == v4;
          v4 = v8;
        }

        while (!v9);
      }

      v4 = v8;
      if (v8 == v5)
      {
        goto LABEL_14;
      }
    }

    if (v4 != v5)
    {
      v10 = *avas::server::gSessionServerLog(v6);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = avas::server::AudioApplicationInfo::DebugString(v4[9]);
        v13 = 136315650;
        v14 = "ServerSessionManager.mm";
        v15 = 1024;
        v16 = 1129;
        v17 = 2080;
        v18 = v11;
        _os_log_impl(&dword_241701000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Removing audio application since all owning remote clients gone (app: %s)", &v13, 0x1Cu);
      }

      std::__tree<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::__map_value_compare<avas::server::ProcessIdentity,std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::less<avas::server::ProcessIdentity>,true>,std::allocator<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>>>::erase(this + 8, v4);
    }
  }

LABEL_14:
  os_unfair_lock_unlock(this + 2);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_24176ADA8(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 2);

  _Unwind_Resume(a1);
}

void avas::server::LegacySessionManager::RemoveApplicationUponAppTermination(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(*a2 + 64);
  v23[0] = *(*a2 + 48);
  v23[1] = v5;
  v24 = *(v4 + 80);
  os_unfair_lock_lock((a1 + 8));
  v6 = std::__tree<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::__map_value_compare<avas::server::ProcessIdentity,std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::less<avas::server::ProcessIdentity>,true>,std::allocator<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>>>::find<avas::server::ProcessIdentity>(a1 + 64, v23);
  v7 = v6;
  if ((a1 + 72) == v6)
  {
    v15 = *avas::server::gSessionServerLog(v6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v20 = HIDWORD(v24);
      v21 = (*(**a2 + 16))(*a2, v16, v17, v18, v19);
      *buf = 136315906;
      v26 = "ServerSessionManager.mm";
      v27 = 1024;
      v28 = 1143;
      v29 = 1024;
      v30 = v20;
      v31 = 1024;
      LODWORD(v32) = v21;
      _os_log_impl(&dword_241701000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Warning - app (pid:%d) not found for sessionID: 0x%x", buf, 0x1Eu);
    }
  }

  else
  {
    v8 = *avas::server::gSessionServerLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = (*(**a2 + 16))(*a2, v9, v10, v11, v12);
      v14 = avas::server::AudioApplicationInfo::DebugString(*(v7 + 9));
      *buf = 136315906;
      v26 = "ServerSessionManager.mm";
      v27 = 1024;
      v28 = 1147;
      v29 = 1024;
      v30 = v13;
      v31 = 2080;
      v32 = v14;
      _os_log_impl(&dword_241701000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Removing application due to session (0x%x) received app state terminated (app: %s)", buf, 0x22u);
    }

    std::__tree<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::__map_value_compare<avas::server::ProcessIdentity,std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::less<avas::server::ProcessIdentity>,true>,std::allocator<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>>>::erase((a1 + 64), v7);
  }

  os_unfair_lock_unlock((a1 + 8));
  v22 = *MEMORY[0x277D85DE8];
}

id avas::server::LegacySessionManager::ToggleInputMuteForRecordingApplication(avas::server::LegacySessionManager *this, const audit_token_t *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = *avas::server::forbid_acq::SystemController::Instance(this);
  v5 = v4;
  if (!v4)
  {
    v11 = *avas::server::gSessionServerLog(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v29 = 136315650;
      *&v29[4] = "ServerSessionManager.mm";
      *&v29[12] = 1024;
      *&v29[14] = 1189;
      *&v29[18] = 2112;
      *&v29[20] = @"Failed to get the MXSystemController instance";
      _os_log_impl(&dword_241701000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", v29, 0x1Cu);
    }

    v12 = NSErrorWithString(&cfstr_FailedToGetThe.isa);
    goto LABEL_13;
  }

  {
    if (v4)
    {
      avas::AudioSessionMuteEnabled(void)::enabled = _os_feature_enabled_impl();
    }
  }

  if ((avas::AudioSessionMuteEnabled(void)::enabled & 1) == 0)
  {
    if (![v5 toggleInputMute])
    {
      v10 = 0;
      goto LABEL_17;
    }

    v12 = NSErrorWithString(&cfstr_Mxsystemcontro.isa);
LABEL_13:
    v10 = v12;
    goto LABEL_17;
  }

  *v29 = 0;
  *&v29[8] = v29;
  *&v29[16] = 0x3032000000;
  *&v29[24] = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = 0;
  v6 = avas::server::GetAudioControlQueue(v4);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = ___ZN4avas6server20LegacySessionManager38ToggleInputMuteForRecordingApplicationERK13audit_token_t_block_invoke;
  v18 = &unk_278CEAF70;
  v21 = this;
  v19 = v5;
  v20 = v29;
  v22 = a2;
  avas::server::DispatchBlock(v6, &v15, 1, "ToggleInputMuteForRecordingApplication", "ServerSessionManager.mm", 1259, 0, 0);

  if (*(*&v29[8] + 40))
  {
    v8 = *avas::server::gSessionServerLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(*&v29[8] + 40) description];
      *buf = 136315650;
      v24 = "ServerSessionManager.mm";
      v25 = 1024;
      v26 = 1261;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_241701000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", buf, 0x1Cu);
    }

    v10 = *(*&v29[8] + 40);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(v29, 8);
LABEL_17:

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

void sub_24176B374(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN4avas6server20LegacySessionManager38ToggleInputMuteForRecordingApplicationERK13audit_token_t_block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v53 = 1;
  v52 = 0;
  if ([*(a1 + 32) copySessionIDsWithMuteValue:&v52 muteValue:&v53])
  {
    v3 = NSErrorWithString(&cfstr_FailedToGetSes.isa);
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  else
  {
    __p = 0;
    v50 = 0;
    v51 = 0;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v6 = v52;
    v7 = [v6 countByEnumeratingWithState:&v45 objects:v61 count:16];
    if (v7)
    {
      v8 = *v46;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v46 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v45 + 1) + 8 * i);
          LODWORD(v43) = [v10 unsignedIntegerValue];
          boost::container::dtl::flat_tree<unsigned int,boost::move_detail::identity<unsigned int>,std::less<unsigned int>,void>::insert_unique(&__p, &v43, buf);
        }

        v7 = [v6 countByEnumeratingWithState:&v45 objects:v61 count:16];
      }

      while (v7);
    }

    v12 = *avas::server::gSessionServerLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "ServerSessionManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1218;
      v55 = 2048;
      v56 = v50;
      _os_log_impl(&dword_241701000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d MX identified %lu sessions to mute", buf, 0x1Cu);
    }

    if (v50)
    {
      v13 = __p;
      if (!__p)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      v14 = 0;
      v15 = 4 * v50;
      do
      {
        avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(buf, *v13);
        if (*buf)
        {
          v41 = *buf;
          v42 = *&buf[8];
          if (*&buf[8])
          {
            atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
          }

          avas::server::LegacySessionManager::FindAudioApplicationForSession(v2, &v41, 0, &v43);
          v17 = v43;
          v16 = v44;
          v43 = 0;
          v44 = 0;
          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
            if (v44)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v44);
            }
          }

          if (v42)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v42);
          }

          if (*&buf[8])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
          }

          v14 = v16;
          if (v17)
          {
            goto LABEL_31;
          }
        }

        else if (*&buf[8])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
        }

        ++v13;
        v15 -= 4;
      }

      while (v15);
      v17 = 0;
      v16 = v14;
LABEL_31:
      v39 = v17;
      v40 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = avas::server::require_acq::MuteAudioSessions(&v39, v53, &__p, *(a1 + 56));
      v19 = v40;
      if (v40)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v40);
      }

      if (v18)
      {
        v20 = MEMORY[0x277CCACA8];
        v21 = v53;
        v22 = [v52 description];
        v23 = v22;
        v24 = @"UNMUTED";
        if (v21)
        {
          v24 = @"MUTED";
        }

        v25 = [v20 stringWithFormat:@"Cannot toggle input mute, setting %@ failed {%@}", v24, v22, v39];
        v26 = NSErrorWithString(v25);
        v27 = *(*(a1 + 40) + 8);
        v28 = *(v27 + 40);
        *(v27 + 40) = v26;
      }

      else if (v17)
      {
        v32 = v53;
        v33 = *avas::server::gSessionServerLog(v19);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = avas::server::AudioApplicationInfo::DebugString(v17);
          *&buf[4] = "ServerSessionManager.mm";
          *&buf[12] = 1024;
          v35 = "UNMUTED";
          *&buf[14] = 1245;
          *buf = 136316162;
          v55 = 2080;
          if (v32)
          {
            v35 = "MUTED";
          }

          v56 = v35;
          v57 = 2080;
          v58 = v35;
          v59 = 2080;
          v60 = v34;
          _os_log_impl(&dword_241701000, v33, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioApp input mute toggle explicitly set %s, new sessions will be created %s (app: %s)", buf, 0x30u);
        }

        v36 = [MEMORY[0x277CCABB0] numberWithBool:v53];
        avas::server::AudioApplicationInfo::SetProperty(v17, @"NewSessionsShouldBeInputMuted", v36);
      }

      else
      {
        v37 = *avas::server::gSessionServerLog(v19);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "ServerSessionManager.mm";
          *&buf[12] = 1024;
          *&buf[14] = 1250;
        }
      }

      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }
    }

    else
    {
      v29 = NSErrorWithString(&cfstr_CannotToggleIn.isa);
      v30 = *(*(a1 + 40) + 8);
      v31 = *(v30 + 40);
      *(v30 + 40) = v29;
    }

    if (v51)
    {
      operator delete(__p);
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

void sub_24176B938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (a28)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t avas::server::LegacySessionManager::MuteInputsForRecordingApplications@<X0>(uint64_t a1@<X8>)
{
  result = NSErrorWithString(&cfstr_UnsupportedPla.isa);
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

void ___ZN4avas6server20LegacySessionManager22StartProcessMonitoringEi_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = *avas::server::gSessionServerLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = [v5 name];
      v12 = 136315906;
      v13 = "ServerSessionManager.mm";
      v14 = 1024;
      v15 = 1327;
      v16 = 1024;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_241701000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Monitored process died, pid = %d, name = %@", &v12, 0x22u);
    }
  }

  avas::server::LegacySessionManager::Instance(v6);
  avas::server::LegacySessionManager::HandleProcessDeath(&avas::server::LegacySessionManager::Instance(void)::sManager, *(a1 + 32));

  v11 = *MEMORY[0x277D85DE8];
}

void avas::server::LegacySessionManager::HandleProcessDeath(avas::server::LegacySessionManager *this, signed int a2)
{
  os_unfair_lock_lock(this + 26);
  v4 = *(this + 15);
  if (v4)
  {
    v5 = (this + 120);
    do
    {
      if (v4[8] >= a2)
      {
        v5 = v4;
      }

      v4 = *&v4[2 * (v4[8] < a2)];
    }

    while (v4);
    if (v5 != (this + 120) && v5[8] <= a2)
    {
      std::__tree<std::__value_type<int,RBSProcessHandle * {__strong}>,std::__map_value_compare<int,std::__value_type<int,RBSProcessHandle * {__strong}>,std::less<int>,true>,std::allocator<std::__value_type<int,RBSProcessHandle * {__strong}>>>::erase(this + 14, v5);
    }
  }

  os_unfair_lock_unlock(this + 26);
  __src = 0;
  v33 = 0;
  v34 = 0;
  os_unfair_lock_lock(this + 2);
  v6 = *(this + 2);
  if (v6 != (this + 24))
  {
    do
    {
      v7 = *(v6 + 40);
      v31 = v7;
      v8 = *(v6 + 6);
      if (*(&v7 + 1))
      {
        atomic_fetch_add_explicit((*(&v7 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      if (*((*(*v7 + 80))(v7) + 36) == a2)
      {
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = v33;
        if (v33 >= v34)
        {
          v11 = __src;
          v12 = v33 - __src;
          v13 = (v33 - __src) >> 4;
          v14 = v13 + 1;
          if ((v13 + 1) >> 60)
          {
            std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
          }

          v15 = v34 - __src;
          if ((v34 - __src) >> 3 > v14)
          {
            v14 = v15 >> 3;
          }

          v16 = v15 >= 0x7FFFFFFFFFFFFFF0;
          v17 = 0xFFFFFFFFFFFFFFFLL;
          if (!v16)
          {
            v17 = v14;
          }

          v35[4] = &__src;
          if (v17)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::weak_ptr<avas::server::AudioSessionInfo>>>(&__src, v17);
          }

          *(16 * v13) = v31;
          v10 = 16 * v13 + 16;
          memcpy(0, v11, v12);
          v18 = __src;
          v19 = v34;
          __src = 0;
          v33 = v10;
          v34 = 0;
          v35[0] = v18;
          v35[2] = v18;
          v35[3] = v19;
          v35[1] = v18;
          std::__split_buffer<std::weak_ptr<avas::server::AudioSessionInfo>>::~__split_buffer(v35);
        }

        else
        {
          *v33 = v31;
          *(v9 + 1) = v8;
          v10 = (v9 + 16);
        }

        v33 = v10;
      }

      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v20 = *(v6 + 1);
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = *(v6 + 2);
          v22 = *v21 == v6;
          v6 = v21;
        }

        while (!v22);
      }

      v6 = v21;
    }

    while (v21 != (this + 24));
  }

  os_unfair_lock_unlock(this + 2);
  v23 = __src;
  v24 = v33;
  while (v23 != v24)
  {
    v25 = *(v23 + 1);
    if (v25)
    {
      v26 = std::__shared_weak_count::lock(v25);
      if (v26)
      {
        v27 = v26;
        v28 = *v23;
        if (*v23)
        {
          v29 = (*(*v28 + 16))(*v23);
          v30 = (*(*v28 + 80))(v28);
          avas::server::LegacySessionManager::RemoveSession(this, v29, v30);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }
    }

    v23 += 16;
  }

  avas::server::LegacySessionManager::RemoveProcessFromMicrophoneInjectionNotificationSubscription(this, a2);
  v35[0] = &__src;
  std::vector<std::weak_ptr<avas::server::AudioSessionInfo>>::__destroy_vector::operator()[abi:ne200100](v35);
}

void avas::server::LegacySessionManager::RemoveProcessFromMicrophoneInjectionNotificationSubscription(avas::server::LegacySessionManager *this, unsigned int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 56);
  v5 = *(this + 33);
  v6 = this + 272;
  if (v5 != (this + 272))
  {
    while (1)
    {
      v7 = *(v5 + 56);
      *v13.val = *(v5 + 40);
      *&v13.val[4] = v7;
      v4 = audit_token_to_pid(&v13);
      if (v4 == a2)
      {
        break;
      }

      v8 = *(v5 + 8);
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
        do
        {
          v9 = *(v5 + 16);
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
      if (v9 == v6)
      {
        goto LABEL_14;
      }
    }
  }

  if (v5 != v6)
  {
    v11 = *avas::server::gSessionServerLog(v4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13.val[0] = 136315650;
      *&v13.val[1] = "ServerSessionManager.mm";
      LOWORD(v13.val[3]) = 1024;
      *(&v13.val[3] + 2) = 1548;
      HIWORD(v13.val[4]) = 1024;
      v13.val[5] = a2;
      _os_log_impl(&dword_241701000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Removing process with PID:%d from MicrophoneInjectionNotificationSubscription", &v13, 0x18u);
    }

    std::__tree<std::__value_type<NSString * {__strong},audit_token_t>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},audit_token_t>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},audit_token_t>>>::erase(this + 33, v5);
  }

LABEL_14:
  os_unfair_lock_unlock(this + 56);
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t avas::server::LegacySessionManager::GetPreferredMicrophoneInjectionMode(os_unfair_lock_s *this, unsigned int a2)
{
  if (avas::server::LegacySessionManager::SessionIDIsValid(this, a2))
  {
    os_unfair_lock_lock(this + 56);
    v4 = *&this[60]._os_unfair_lock_opaque;
    if (v4)
    {
      v5 = this + 60;
      do
      {
        os_unfair_lock_opaque = v4[8]._os_unfair_lock_opaque;
        v7 = os_unfair_lock_opaque >= a2;
        v8 = os_unfair_lock_opaque < a2;
        if (v7)
        {
          v5 = v4;
        }

        v4 = *&v4[2 * v8]._os_unfair_lock_opaque;
      }

      while (v4);
      if (v5 != &this[60] && v5[8]._os_unfair_lock_opaque <= a2)
      {
        v9 = *&v5[10]._os_unfair_lock_opaque;
        os_unfair_lock_unlock(this + 56);
        return v9;
      }
    }

    os_unfair_lock_unlock(this + 56);
  }

  else
  {
    avas::server::LegacySessionManager::RemoveSessionFromMicrophoneInjectionModeMap(this, a2, v11);
  }

  return 0;
}

BOOL avas::server::LegacySessionManager::SetPreferredMicrophoneInjectionMode(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v10 = a3;
  v5 = avas::server::LegacySessionManager::SessionIDIsValid(a1, a3);
  if (v5)
  {
    os_unfair_lock_lock((a1 + 224));
    v6 = std::map<unsigned int,AVAudioSessionMicrophoneInjectionMode>::insert_or_assign[abi:ne200100]<AVAudioSessionMicrophoneInjectionMode&>((a1 + 232), &v10, &v11);
    v7 = *avas::server::gSessionServerLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v13 = "ServerSessionManager.mm";
      v14 = 1024;
      v15 = 1443;
      v16 = 2048;
      v17 = v11;
      v18 = 1024;
      v19 = v10;
      _os_log_impl(&dword_241701000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d Setting for PreferredMicrophoneInjectionMode to %ld for session: 0x%x", buf, 0x22u);
    }

    os_unfair_lock_unlock((a1 + 224));
  }

  else
  {
    avas::server::LegacySessionManager::RemoveSessionFromMicrophoneInjectionModeMap(a1, a3, buf);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t std::map<unsigned int,AVAudioSessionMicrophoneInjectionMode>::insert_or_assign[abi:ne200100]<AVAudioSessionMicrophoneInjectionMode&>(void *a1, unsigned int *a2, uint64_t *a3)
{
  v5 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    v7 = *a2;
    v8 = a1 + 1;
    do
    {
      v9 = *(v6 + 32);
      v10 = v9 >= v7;
      v11 = v9 < v7;
      if (v10)
      {
        v8 = v6;
      }

      v6 = *(v6 + 8 * v11);
    }

    while (v6);
    if (v8 != v5 && v7 >= *(v8 + 8))
    {
      v8[5] = *a3;
      return v8;
    }

    v5 = v8;
  }

  return std::__tree<std::__value_type<unsigned int,AVAudioSessionMicrophoneInjectionMode>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AVAudioSessionMicrophoneInjectionMode>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AVAudioSessionMicrophoneInjectionMode>>>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&,AVAudioSessionMicrophoneInjectionMode&>(a1, v5, a2);
}

uint64_t avas::server::LegacySessionManager::MicrophoneInjectionIsEnabled(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 56);
  os_unfair_lock_opaque_low = LOBYTE(this[64]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(this + 56);
  return os_unfair_lock_opaque_low;
}

void avas::server::LegacySessionManager::SetMicrophoneInjectionIsEnabled(os_unfair_lock_s *this, uint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 56);
  os_unfair_lock_opaque_low = LOBYTE(this[64]._os_unfair_lock_opaque);
  LOBYTE(this[64]._os_unfair_lock_opaque) = a2;
  os_unfair_lock_unlock(this + 56);
  if (os_unfair_lock_opaque_low != a2)
  {
    v9 = @"AVAudioSessionMicrophoneInjectionIsAvailableKey";
    v5 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v10[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

    avas::server::HandleMicrophoneInjectionCapabilityChangeNotification(v6, v7);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_24176C440(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void avas::server::LegacySessionManager::SubscribeToMicrophoneInjectionCapabilityChangeNotification(os_unfair_lock_s *this, audit_token_t *a2, NSString *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  os_unfair_lock_lock(this + 56);
  v7 = *&this[66]._os_unfair_lock_opaque;
  v8 = &this[68];
  if (v7 != &this[68])
  {
    while (1)
    {
      v6 = [*(v7 + 4) isEqualToString:v5];
      if (v6)
      {
        break;
      }

      v9 = *(v7 + 1);
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
          v10 = *(v7 + 2);
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      v7 = v10;
      if (v10 == v8)
      {
        goto LABEL_12;
      }
    }
  }

  if (v7 == v8)
  {
LABEL_12:
    *v16 = v5;
    v13 = *&a2->val[4];
    *&v16[8] = *a2->val;
    *&v16[24] = v13;
    std::__tree<std::__value_type<NSString * {__strong},audit_token_t>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},audit_token_t>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},audit_token_t>>>::__emplace_unique_key_args<NSString * {__strong},std::pair<NSString * const {__strong},audit_token_t>>(&this[66], v16);
  }

  else
  {
    v12 = *a2->val;
    *(v7 + 56) = *&a2->val[4];
    *(v7 + 40) = v12;
  }

  v14 = *avas::server::gSessionServerLog(v6);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 136315650;
    *&v16[4] = "ServerSessionManager.mm";
    *&v16[12] = 1024;
    *&v16[14] = 1515;
    *&v16[18] = 2112;
    *&v16[20] = v5;
    _os_log_impl(&dword_241701000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Process :%@ has subscribed for MicrophoneInjectionCapabilityChangeNotification", v16, 0x1Cu);
  }

  os_unfair_lock_unlock(this + 56);

  v15 = *MEMORY[0x277D85DE8];
}

void sub_24176C5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  os_unfair_lock_unlock(v10 + 56);

  _Unwind_Resume(a1);
}

void avas::server::LegacySessionManager::GetMicrophoneInjectionSubscribersList(os_unfair_lock_s *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  os_unfair_lock_lock(this + 56);
  if (&v8 != &this[66])
  {
    std::__tree<std::__value_type<NSString * {__strong},audit_token_t>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},audit_token_t>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},audit_token_t>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<NSString * {__strong},audit_token_t>,std::__tree_node<std::__value_type<NSString * {__strong},audit_token_t>,void *> *,long>>(&v8, *&this[66]._os_unfair_lock_opaque, &this[68]._os_unfair_lock_opaque);
  }

  os_unfair_lock_unlock(this + 56);
  v4 = v8;
  if (v8 != v9)
  {
    do
    {
      avas::server::LegacySessionManager::GetSessionIDsForToken(this, (v4 + 5), &__p);
      std::vector<unsigned int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>>(a2, *(a2 + 8), __p, v11, (v11 - __p) >> 2);
      if (__p)
      {
        v11 = __p;
        operator delete(__p);
      }

      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != v9);
  }

  std::__tree<std::__value_type<NSString * {__strong},audit_token_t>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},audit_token_t>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},audit_token_t>>>::destroy(&v8, v9[0]);
}

void sub_24176C72C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13)
{
  os_unfair_lock_unlock(v14 + 56);
  std::__tree<std::__value_type<NSString * {__strong},audit_token_t>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},audit_token_t>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},audit_token_t>>>::destroy(&a9, a10);
  v16 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

CFDictionaryRef avas::server::LegacySessionManager::GetSessionsWithMicrophoneInjectionPreference(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 56);
  CFDictionary = applesauce::CF::details::make_CFDictionaryRef<unsigned int,AVAudioSessionMicrophoneInjectionMode>(&this[58]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(this + 56);

  return CFDictionary;
}

void avas::server::LegacySessionManager::FindIONodeSession(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  os_unfair_lock_lock((a1 + 8));
  v8 = *(a1 + 48);
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = a1 + 48;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == a1 + 48 || *(v9 + 32) > a2)
  {
    goto LABEL_14;
  }

  (*(**(v9 + 40) + 72))(&v15);
  v13 = avas::server::ProcessIdentity::operator==(v15 + 232, a3);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v13)
  {
    v14 = *(v9 + 48);
    *a4 = *(v9 + 40);
    a4[1] = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_14:
    *a4 = 0;
    a4[1] = 0;
  }

  os_unfair_lock_unlock((a1 + 8));
}

void sub_24176C900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  os_unfair_lock_unlock(v10 + 2);
  _Unwind_Resume(a1);
}

void avas::server::LegacySessionManager::FindIONodeSession(os_unfair_lock_s *this@<X0>, uint32_t a2@<W1>, void *a3@<X8>)
{
  os_unfair_lock_lock(this + 2);
  v6 = *&this[12]._os_unfair_lock_opaque;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = this + 12;
  do
  {
    os_unfair_lock_opaque = v6[8]._os_unfair_lock_opaque;
    v9 = os_unfair_lock_opaque >= a2;
    v10 = os_unfair_lock_opaque < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *&v6[2 * v10]._os_unfair_lock_opaque;
  }

  while (v6);
  if (v7 != &this[12] && v7[8]._os_unfair_lock_opaque <= a2)
  {
    v12 = *&v7[10]._os_unfair_lock_opaque;
    v11 = *&v7[12]._os_unfair_lock_opaque;
    *a3 = v12;
    a3[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_9:
    *a3 = 0;
    a3[1] = 0;
  }

  os_unfair_lock_unlock(this + 2);
}

void avas::server::LegacySessionManager::CreateIONodeSession(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v7 = a4;
  v6 = a5;
  std::allocate_shared[abi:ne200100]<avas::server::IONodeSessionInfo,std::allocator<avas::server::IONodeSessionInfo>,std::shared_ptr<avas::server::AudioSessionInfo> &,AVAudioSessionClientPlayerType &,NSXPCConnection * {__strong}&,objc_object  {objcproto28AVAudioSessionServerDelegate}* {__strong}&,std::shared_ptr<avas::server::SpatialManager> &,0>();
}

void sub_24176CBE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  os_unfair_lock_unlock(v19);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(a1);
}

uint64_t *avas::server::SessionCollection::InsertIONode(avas::server *a1, unsigned int *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  if (v4)
  {
    v5 = *a2;
    v6 = (a1 + 8);
    do
    {
      v7 = *(v4 + 32);
      v8 = v7 >= v5;
      v9 = v7 < v5;
      if (v8)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * v9);
    }

    while (v4);
    if (v6 != (a1 + 8) && v5 >= *(v6 + 8))
    {
      v10 = *avas::server::gSessionServerLog(a1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *a2;
        v14 = 136315650;
        v15 = "SessionCollection.h";
        v16 = 1024;
        v17 = 93;
        v18 = 1024;
        v19 = v11;
        _os_log_impl(&dword_241701000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d IONode ID 0x%x conflicts with existing session", &v14, 0x18u);
      }

      std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>>>::erase(a1, v6);
    }
  }

  result = std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,std::shared_ptr<avas::server::AudioSessionInfo>> const&>(a1 + 24, a2);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t avas::server::LegacySessionManager::ReconfigureIONodeSession(uint64_t a1, os_unfair_lock_s **a2, uint64_t *a3, int a4, void *a5, void *a6)
{
  v32 = *MEMORY[0x277D85DE8];
  v11 = a5;
  v12 = a6;
  v13 = (*(*&(*a2)->_os_unfair_lock_opaque + 16))();
  v14 = *a2;
  v15 = a3[1];
  v26 = *a3;
  v27 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  avas::server::IONodeSessionInfo::Reconfigure(v14, &v26, a4, v11, v12);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v16 = (*(*&(*a2)->_os_unfair_lock_opaque + 16))();
  os_unfair_lock_lock((a1 + 8));
  *buf = v13;
  std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::IONodeSessionInfo>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::IONodeSessionInfo>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::IONodeSessionInfo>>>>::__erase_unique<unsigned int>(a1 + 40, buf);
  *buf = v16;
  v17 = a2[1];
  *&v29[4] = *a2;
  *&v29[12] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17[2], 1uLL, memory_order_relaxed);
  }

  avas::server::SessionCollection::InsertIONode((a1 + 16), buf);
  v18 = *&v29[12];
  if (*&v29[12])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v29[12]);
  }

  v19 = *avas::server::gSessionServerLog(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *v29 = "ServerSessionManager.mm";
    *&v29[8] = 1024;
    *&v29[10] = 1638;
    *&v29[14] = 1024;
    *&v29[16] = v13;
    v30 = 1024;
    v31 = v16;
    _os_log_impl(&dword_241701000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Reconfigured IONodeSession. old ID: 0x%x, new ID: 0x%x", buf, 0x1Eu);
  }

  v20 = *(a1 + 296);
  if (v20)
  {
    os_unfair_lock_lock(*(a1 + 296));
    v21 = a2[1];
    v24 = *a2;
    v25 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    avas::server::DeviceTimeObserver::addNodeSession(&v20[2], &v24);
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    os_unfair_lock_unlock(v20);
  }

  os_unfair_lock_unlock((a1 + 8));

  v22 = *MEMORY[0x277D85DE8];
  return v16;
}

void sub_24176CFD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  os_unfair_lock_unlock(v18);
  os_unfair_lock_unlock(v17 + 2);

  _Unwind_Resume(a1);
}

void avas::server::LegacySessionManager::CreateIONodeSessionInSentinel(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v8 = *MEMORY[0x277D85DE8];
  a3;
  a5;
  a6;
  std::allocate_shared[abi:ne200100]<avas::server::IONodeSessionInfo,std::allocator<avas::server::IONodeSessionInfo>,unsigned int &,NSNumber * {__strong}&,AVAudioSessionClientPlayerType &,NSXPCConnection * {__strong}&,objc_object  {objcproto28AVAudioSessionServerDelegate}* {__strong}&,std::shared_ptr<avas::server::SpatialManager> &,0>();
}

void sub_24176D228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *a12, void *a13, uint64_t a14, void *a15)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

void avas::server::LegacySessionManager::ReconfigureIONodeSessionInSentinel(uint64_t a1, os_unfair_lock_s **a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a6;
  v14 = a7;
  (*(*&(*a2)->_os_unfair_lock_opaque + 16))();
  avas::server::IONodeSessionInfo::ReconfigureInSentinel(*a2, a3, v12, a5, v13, v14);
}

void sub_24176D474(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v4 + 2);

  _Unwind_Resume(a1);
}

uint64_t avas::server::LegacySessionManager::RemoveIONodeSession(avas::server::LegacySessionManager *this, unsigned int a2)
{
  os_unfair_lock_lock(this + 2);
  v4 = *(this + 37);
  if (v4)
  {
    os_unfair_lock_lock(*(this + 37));
    avas::server::DeviceTimeObserver::removeSession(&v4[2], a2);
    os_unfair_lock_unlock(v4);
  }

  v5 = *(this + 5);
  v6 = *(this + 7);
  if (v5 == (this + 48))
  {
    v13 = *(this + 7);
  }

  else
  {
    do
    {
      v7 = v5[5];
      v8 = v5[6];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = (*(*v7 + 16))(v7);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      if (v9 == a2)
      {
        v10 = std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>>>::erase(this + 5, v5);
      }

      else
      {
        v11 = v5[1];
        if (v11)
        {
          do
          {
            v10 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v10 = v5[2];
            v12 = *v10 == v5;
            v5 = v10;
          }

          while (!v12);
        }
      }

      v5 = v10;
    }

    while (v10 != (this + 48));
    v13 = *(this + 7);
  }

  v14 = v6 - v13;
  os_unfair_lock_unlock(this + 2);
  return v14;
}

void sub_24176D5FC(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2);
  os_unfair_lock_unlock(v1 + 2);
  _Unwind_Resume(a1);
}

void avas::server::LegacySessionManager::RemoveIONodeSessionsForInvalidatedXPCConnection(avas::server::LegacySessionManager *this, NSXPCConnection *a2)
{
  v3 = a2;
  os_unfair_lock_lock(this + 2);
  v4 = v3;
  v5 = *(this + 5);
  if (v5 != (this + 48))
  {
    do
    {
      v6 = v5[5];
      v7 = v5[6];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v6 + 72))(&v12);
      v8 = *(v12 + 176);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      if (v8 == v4)
      {
        v10 = std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>>>::erase(this + 5, v5);
      }

      else
      {
        v9 = v5[1];
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
            v10 = v5[2];
            v11 = *v10 == v5;
            v5 = v10;
          }

          while (!v11);
        }
      }

      v5 = v10;
    }

    while (v10 != (this + 48));
  }

  os_unfair_lock_unlock(this + 2);
}

void sub_24176D760(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 2);

  _Unwind_Resume(a1);
}

void avas::server::LegacySessionManager::~LegacySessionManager(avas::server::LegacySessionManager *this)
{
  avas::server::LegacySessionManager::~LegacySessionManager(this);

  JUMPOUT(0x245CEEB60);
}

{
  *this = &unk_28535B3F0;

  std::unique_ptr<caulk::synchronized<avas::server::DeviceTimeObserver,caulk::mach::unfair_lock,caulk::empty_atomic_interface<avas::server::DeviceTimeObserver>>>::reset[abi:ne200100](this + 37, 0);
  std::__tree<std::__value_type<NSString * {__strong},audit_token_t>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},audit_token_t>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},audit_token_t>>>::destroy(this + 264, *(this + 34));
  std::__tree<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>::destroy(this + 232, *(this + 30));
  std::mutex::~mutex((this + 160));
  std::__tree<std::__value_type<NSString * {__strong},std::shared_ptr<avas::server::BackgroundActivationInfo>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::shared_ptr<avas::server::BackgroundActivationInfo>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::shared_ptr<avas::server::BackgroundActivationInfo>>>>::destroy(this + 136, *(this + 18));
  std::__tree<std::__value_type<int,RBSProcessHandle * {__strong}>,std::__map_value_compare<int,std::__value_type<int,RBSProcessHandle * {__strong}>,std::less<int>,true>,std::allocator<std::__value_type<int,RBSProcessHandle * {__strong}>>>::destroy(this + 112, *(this + 15));
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__tree<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::__map_value_compare<avas::server::ProcessIdentity,std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::less<avas::server::ProcessIdentity>,true>,std::allocator<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>>>::destroy(this + 64, *(this + 9));
  std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>>>::destroy(this + 40, *(this + 6));
  std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>>>::destroy(this + 16, *(this + 3));
}

void avas::server::LegacySessionManager::LockSessionCollection(os_unfair_lock_s *this@<X0>, os_unfair_lock_s **a2@<X8>)
{
  v3 = this + 2;
  v4 = this + 4;
  os_unfair_lock_lock(this + 2);
  *a2 = v3;
  a2[1] = v4;
}

uint64_t caulk::synchronized<avas::server::LegacySessionManager::MicrophoneInjectionManager,caulk::mach::unfair_lock,caulk::empty_atomic_interface<avas::server::LegacySessionManager::MicrophoneInjectionManager>>::~synchronized(uint64_t a1)
{
  std::__tree<std::__value_type<NSString * {__strong},audit_token_t>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},audit_token_t>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},audit_token_t>>>::destroy(a1 + 40, *(a1 + 48));
  std::__tree<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>::destroy(a1 + 8, *(a1 + 16));
  return a1;
}

void std::__tree<std::__value_type<int,RBSProcessHandle * {__strong}>,std::__map_value_compare<int,std::__value_type<int,RBSProcessHandle * {__strong}>,std::less<int>,true>,std::allocator<std::__value_type<int,RBSProcessHandle * {__strong}>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,RBSProcessHandle * {__strong}>,std::__map_value_compare<int,std::__value_type<int,RBSProcessHandle * {__strong}>,std::less<int>,true>,std::allocator<std::__value_type<int,RBSProcessHandle * {__strong}>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,RBSProcessHandle * {__strong}>,std::__map_value_compare<int,std::__value_type<int,RBSProcessHandle * {__strong}>,std::less<int>,true>,std::allocator<std::__value_type<int,RBSProcessHandle * {__strong}>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t caulk::synchronized<avas::server::SessionCollection,caulk::mach::unfair_lock,caulk::empty_atomic_interface<avas::server::SessionCollection>>::~synchronized(uint64_t a1)
{
  std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>>>::destroy(a1 + 32, *(a1 + 40));
  std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>>>::destroy(a1 + 8, *(a1 + 16));
  return a1;
}

uint64_t std::vector<std::weak_ptr<avas::server::AudioSessionInfo>>::__init_with_size[abi:ne200100]<std::weak_ptr<avas::server::AudioSessionInfo>*,std::weak_ptr<avas::server::AudioSessionInfo>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::weak_ptr<avas::server::AudioSessionRemoteClient>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_24176D97C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::weak_ptr<avas::server::AudioSessionInfo>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::weak_ptr<avas::server::AudioSessionInfo>>,std::weak_ptr<avas::server::AudioSessionInfo>*,std::weak_ptr<avas::server::AudioSessionInfo>*,std::weak_ptr<avas::server::AudioSessionInfo>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::weak_ptr<avas::server::AudioSessionInfo>>,std::weak_ptr<avas::server::AudioSessionInfo>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::weak_ptr<avas::server::AudioSessionInfo>>,std::weak_ptr<avas::server::AudioSessionInfo>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::weak_ptr<avas::server::AudioSessionRemoteClient>>,std::weak_ptr<avas::server::AudioSessionRemoteClient>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::vector<std::weak_ptr<avas::server::AudioSessionInfo>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::weak_ptr<avas::server::AudioSessionInfo>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,BOOL>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *boost::container::vector<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>,boost::container::new_allocator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>,void>::~vector(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (*a1 + 8);
    do
    {
      --v2;
      v4 = *v3;
      v3 += 2;
    }

    while (v2);
  }

  if (a1[2])
  {
    operator delete(*a1);
  }

  return a1;
}

char *std::vector<unsigned int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = (v10 - __dst) >> 2;
  if (v17 >= a5)
  {
    v22 = &__dst[4 * a5];
    v23 = &v10[-4 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 4;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v22);
    }

    v30 = 4 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 4;
    *v20 = v21;
    v20 += 4;
    v19 += 4;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[4 * a5];
    v27 = &v19[-4 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 4;
      *v28 = v29;
      v28 += 4;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[4 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

uint64_t std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::IONodeSessionInfo>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::IONodeSessionInfo>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::IONodeSessionInfo>>>>::__erase_unique<unsigned int>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>>>::erase(a1, v4);
  return 1;
}

void std::__tree<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::__map_value_compare<avas::server::ProcessIdentity,std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::less<avas::server::ProcessIdentity>,true>,std::allocator<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::__map_value_compare<avas::server::ProcessIdentity,std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::less<avas::server::ProcessIdentity>,true>,std::allocator<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::__map_value_compare<avas::server::ProcessIdentity,std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::less<avas::server::ProcessIdentity>,true>,std::allocator<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>>>::destroy(a1, a2[1]);
    v4 = a2[10];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<NSString * {__strong},std::shared_ptr<avas::server::BackgroundActivationInfo>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::shared_ptr<avas::server::BackgroundActivationInfo>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::shared_ptr<avas::server::BackgroundActivationInfo>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<NSString * {__strong},std::shared_ptr<avas::server::BackgroundActivationInfo>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::shared_ptr<avas::server::BackgroundActivationInfo>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::shared_ptr<avas::server::BackgroundActivationInfo>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<NSString * {__strong},std::shared_ptr<avas::server::BackgroundActivationInfo>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::shared_ptr<avas::server::BackgroundActivationInfo>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::shared_ptr<avas::server::BackgroundActivationInfo>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},std::shared_ptr<avas::server::BackgroundActivationInfo>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},std::shared_ptr<avas::server::BackgroundActivationInfo>>,0>(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *a1;
}

void std::__tree<std::__value_type<NSString * {__strong},audit_token_t>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},audit_token_t>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},audit_token_t>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<NSString * {__strong},audit_token_t>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},audit_token_t>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},audit_token_t>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<NSString * {__strong},audit_token_t>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},audit_token_t>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},audit_token_t>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *std::unique_ptr<caulk::synchronized<avas::server::DeviceTimeObserver,caulk::mach::unfair_lock,caulk::empty_atomic_interface<avas::server::DeviceTimeObserver>>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(v2 + 80);
    v3 = (v2 + 56);
    std::vector<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>::__destroy_vector::operator()[abi:ne200100](&v3);
    boost::container::vector<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,void>::~vector((v2 + 32));
    v3 = (v2 + 8);
    std::vector<avas::server::DeviceTimeObserver::SharedBlockOwner>::__destroy_vector::operator()[abi:ne200100](&v3);
    return MEMORY[0x245CEEB60](v2, 0x10A0C402F24600CLL);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::vector<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 96)
  {
    v4 = *(i - 8);
    *(i - 8) = 0;
    if (v4)
    {
      std::default_delete<avas::server::BTPresentationTimePoll>::operator()[abi:ne200100](i - 8, v4);
    }

    v5 = *(i - 16);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    if (*(i - 32))
    {
      operator delete(*(i - 48));
    }

    if (*(i - 56))
    {
      operator delete(*(i - 72));
    }

    v6 = *(i - 88);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  a1[1] = v2;
}

void *boost::container::vector<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,void>::~vector(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (*a1 + 16);
    do
    {
      if (*v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*v3);
      }

      v3 += 4;
      --v2;
    }

    while (v2);
  }

  if (a1[2])
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<avas::server::DeviceTimeObserver::SharedBlockOwner>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        avas::server::DeviceTimeObserver::SharedBlockOwner::~SharedBlockOwner((v4 - 128));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<avas::server::AudioSessionInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28535B418;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CEEB60);
}

BOOL avas::server::LegacySessionManager::FindSessionAndVerifyOwnershipPriv<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,std::__tree_node<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,void *> *,long>>>(std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,std::__tree_node<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,void *> *,long>>,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,std::__tree_node<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,void *> *,long>>,unsigned int,avas::server::ProcessIdentity const&,std::optional<avas::server::LegacySessionManager::EntitlementExceptionType> const&)const::{lambda(std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,std::__tree_node<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,void *> *,long>> const&)#1}::operator()<std::pair<unsigned int const,std::shared_ptr<avas::server::AudioSessionInfo>>>(unsigned int *a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*a2 != *a1)
  {
    HasEntitlement = 0;
    goto LABEL_19;
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *a1;
  }

  (*(*v3 + 64))(&v16);
  if (!v16)
  {
    goto LABEL_14;
  }

  v6 = avas::server::ProcessIdentity::operator==((a1 + 1), v16 + 232);
  if (!v6)
  {
    v8 = *(a1 + 6);
    if (*(v8 + 4) == 1)
    {
      v9 = *v8;
      if (!v9)
      {
        v10 = "com.apple.private.coreaudio.borrowaudioapplication.allow";
        goto LABEL_21;
      }

      if (v9 == 1)
      {
        v10 = "com.apple.private.coreaudio.borrowaudiosession.allow";
LABEL_21:
        HasEntitlement = avas::server::ProcessIdentity::ProcessHasEntitlement((a1 + 1), v10);
        goto LABEL_15;
      }
    }

    else
    {
      v11 = *avas::server::gSessionServerLog(v6);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *a1;
        v13 = a1[10];
        *buf = 136315906;
        v19 = "ServerSessionManager.mm";
        v20 = 1024;
        v21 = 423;
        v22 = 1024;
        v23 = v12;
        v24 = 1024;
        v25 = v13;
        _os_log_impl(&dword_241701000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d Lookup of sessionID:0x%x succeeded, but the provided process PID or audit token does not match the owner of the session. Provided PID: %d", buf, 0x1Eu);
      }
    }

LABEL_14:
    HasEntitlement = 0;
    goto LABEL_15;
  }

  HasEntitlement = 1;
LABEL_15:
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

LABEL_19:
  v14 = *MEMORY[0x277D85DE8];
  return HasEntitlement;
}

void sub_24176E81C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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

void boost::container::dtl::flat_tree<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>,boost::container::dtl::select1st<int>,std::less<int>,boost::container::new_allocator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>>::find(uint64_t *a1@<X0>, int *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v14 = v4;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v13 = v4 + 16 * v5;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>,boost::container::dtl::select1st<int>,std::less<int>,boost::container::new_allocator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>*,false>,int>(&v14, &v13, a2, a3);
  v9 = a1[1];
  if (*a1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (!v10)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v11 = *a1 + 16 * v9;
  v12 = *a3;
  if (*a3 != v11)
  {
    if (!v12)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (*a2 < *v12)
    {
      *a3 = v11;
    }
  }
}

void boost::container::dtl::flat_tree<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>,boost::container::dtl::select1st<int>,std::less<int>,boost::container::new_allocator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>*,false>,int>(void *a1@<X1>, void *a2@<X2>, int *a3@<X3>, void *a4@<X8>)
{
  v4 = *a1;
  if (*a2 != *a1)
  {
    v5 = (*a2 - *a1) >> 4;
    v6 = *a3;
    do
    {
      if (v5 != 1 && !v4)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v4)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v7 = v5 >> 1;
      v8 = &v4[4 * (v5 >> 1)];
      if (*v8 < v6)
      {
        v4 = v8 + 4;
        *a1 = v8 + 4;
        v7 = v5 + ~v7;
      }

      v5 = v7;
    }

    while (v7);
  }

  *a4 = v4;
}

void boost::container::dtl::flat_tree<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>,boost::container::dtl::select1st<int>,std::less<int>,boost::container::new_allocator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>>::insert_unique(uint64_t *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  v11 = 0;
  v4 = *a1;
  v5 = a1[1];
  v13 = v4;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v12 = (v4 + 16 * v5);
  inserted = boost::container::dtl::flat_tree<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>,boost::container::dtl::select1st<int>,std::less<int>,boost::container::new_allocator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>>::priv_insert_unique_prepare(a1, &v13, &v12, a2, &v11);
  *(a3 + 8) = inserted;
  if (inserted)
  {
    v13 = v11;
    boost::container::vector<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>,boost::container::new_allocator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>,void>::emplace<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>(a1, &v13, a2, &v12);
    v10 = v12;
  }

  else
  {
    v10 = v11;
    if (!*a1 && v11)
    {
      __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
    }
  }

  *a3 = v10;
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>,boost::container::dtl::select1st<int>,std::less<int>,boost::container::new_allocator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>>::priv_insert_unique_prepare(uint64_t a1, uint64_t *a2, int **a3, int *a4, int **a5)
{
  v8 = *a2;
  v11 = *a3;
  v12 = v8;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>,boost::container::dtl::select1st<int>,std::less<int>,boost::container::new_allocator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>*,true>,int>(&v12, &v11, a4, &v13);
  v9 = v13;
  *a5 = v13;
  if (v9 == *a3)
  {
    return 1;
  }

  if (!v9)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return *a4 < *v9;
}

void boost::container::dtl::flat_tree<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>,boost::container::dtl::select1st<int>,std::less<int>,boost::container::new_allocator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>*,true>,int>(void *a1@<X1>, void *a2@<X2>, int *a3@<X3>, void *a4@<X8>)
{
  v4 = *a1;
  if (*a2 != *a1)
  {
    v5 = (*a2 - *a1) >> 4;
    v6 = *a3;
    do
    {
      if (v5 != 1 && !v4)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v4)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v7 = v5 >> 1;
      v8 = &v4[4 * (v5 >> 1)];
      if (*v8 < v6)
      {
        v4 = v8 + 4;
        *a1 = v8 + 4;
        v7 = v5 + ~v7;
      }

      v5 = v7;
    }

    while (v7);
  }

  *a4 = v4;
}

void boost::container::vector<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>,boost::container::new_allocator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>,void>::emplace<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a2;
  v6 = *a1;
  if (*a1 > *a2)
  {
    goto LABEL_17;
  }

  v7 = a1[1];
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (!v8)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v9 = v6 + 16 * v7;
  if (v5 > v9)
  {
LABEL_17:
    boost::container::vector<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,void>::emplace<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>();
  }

  v10 = a1[2];
  if (v10 < v7)
  {
    boost::container::vector<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,void>::emplace<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>();
  }

  if (v10 == v7)
  {
    v22 = *a2;

    boost::container::vector<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>,boost::container::new_allocator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>,boost::container::dtl::pair<int,NSXPCConnection * {__strong}>*,boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>>(a1, v22, 1, a3, a4);
  }

  else
  {
    if (v9 == v5)
    {
      *v9 = *a3;
      v21 = *(a3 + 8);
      *(a3 + 8) = 0;
      *(v9 + 8) = v21;
      ++a1[1];
    }

    else
    {
      v13 = v9 - 16;
      *v9 = *(v9 - 16);
      v14 = *(v9 - 8);
      *(v9 - 8) = 0;
      *(v9 + 8) = v14;
      ++a1[1];
      if (v9 - 16 != v5)
      {
        v15 = v9 - 16;
        do
        {
          v16 = *(v15 - 16);
          v15 -= 16;
          *v13 = v16;
          v17 = *(v13 - 8);
          *(v13 - 8) = 0;
          v18 = *(v13 + 8);
          *(v13 + 8) = v17;

          v13 = v15;
        }

        while (v15 != v5);
      }

      *v5 = *a3;
      v19 = *(a3 + 8);
      *(a3 + 8) = 0;
      v20 = *(v5 + 8);
      *(v5 + 8) = v19;
    }

    *a4 = *a2;
  }
}

void boost::container::vector<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>,boost::container::new_allocator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>,boost::container::dtl::pair<int,NSXPCConnection * {__strong}>*,boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = boost::container::vector_alloc_holder<boost::container::new_allocator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(a1, a3);
  if (v11 >> 59)
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v12);
  }

  v13 = v11;
  v14 = operator new(16 * v11);
  boost::container::vector<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>,boost::container::new_allocator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>,boost::container::dtl::pair<int,NSXPCConnection * {__strong}>*,boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>>(a1, v14, v13, a2, a3, a4);
  *a5 = *a1 + a2 - v10;
}

unint64_t boost::container::vector_alloc_holder<boost::container::new_allocator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 - v2 >= a2)
  {
    boost::container::vector_alloc_holder<boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>();
  }

  v4 = 0x7FFFFFFFFFFFFFFLL;
  if (0x7FFFFFFFFFFFFFFLL - v3 < &a2[v2 - v3])
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v5 = v3 >> 61;
  v6 = 8 * v3;
  if (v5 > 4)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  v8 = v6 / 5;
  if (v5)
  {
    v8 = v7;
  }

  v9 = &a2[v2];
  if (v8 < 0x7FFFFFFFFFFFFFFLL)
  {
    v4 = v8;
  }

  if (v9 <= v4)
  {
    return v4;
  }

  else
  {
    return v9;
  }
}

void boost::container::vector<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>,boost::container::new_allocator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>,boost::container::dtl::pair<int,NSXPCConnection * {__strong}>*,boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  boost::container::uninitialized_move_and_insert_alloc<boost::container::new_allocator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>,boost::container::dtl::pair<int,NSXPCConnection * {__strong}>*,boost::container::dtl::pair<int,NSXPCConnection * {__strong}>*,boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>,boost::container::dtl::pair<int,NSXPCConnection * {__strong}>*,boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>>(a1, *a1, a4, *a1 + 16 * a1[1], a2, a5, a6);
  if (v10)
  {
    v11 = a1[1];
    if (v11)
    {
      v12 = (v10 + 8);
      do
      {
        --v11;
        v13 = *v12;
        v12 += 2;
      }

      while (v11);
    }

    operator delete(*a1);
  }

  v14 = a1[1] + a5;
  *a1 = a2;
  a1[1] = v14;
  a1[2] = a3;
}

void sub_24176EFCC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void boost::container::uninitialized_move_and_insert_alloc<boost::container::new_allocator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>,boost::container::dtl::pair<int,NSXPCConnection * {__strong}>*,boost::container::dtl::pair<int,NSXPCConnection * {__strong}>*,boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>,boost::container::dtl::pair<int,NSXPCConnection * {__strong}>*,boost::container::dtl::pair<int,NSXPCConnection * {__strong}>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a5;
  if (a2 != a3)
  {
    v7 = a5;
    do
    {
      *v7 = *a2;
      v8 = *(a2 + 8);
      *(a2 + 8) = 0;
      *(v7 + 8) = v8;
      a2 += 16;
      v7 += 16;
    }

    while (a2 != a3);
  }

  if (a6 != 1)
  {
    __assert_rtn("uninitialized_copy_n_and_update", "advanced_insert_int.hpp", 209, "n == 1");
  }

  *v7 = *a7;
  v9 = *(a7 + 8);
  *(a7 + 8) = 0;
  *(v7 + 8) = v9;
  if (a3 != a4)
  {
    v10 = (v7 + 24);
    do
    {
      *(v10 - 2) = *a3;
      v11 = *(a3 + 8);
      *(a3 + 8) = 0;
      *v10 = v11;
      v10 += 2;
      a3 += 16;
    }

    while (a3 != a4);
  }
}

void std::__shared_ptr_emplace<avas::server::AudioApplicationInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28535B450;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CEEB60);
}

void avas::server::AudioApplicationInfo::~AudioApplicationInfo(id *this)
{
  avas::server::AudioAppInfoImpl::~AudioAppInfoImpl(this + 3);
  v2 = this[1];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void avas::server::AudioAppInfoImpl::~AudioAppInfoImpl(id *this)
{
  v2 = this[18];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>>>::destroy((this + 14), this[15]);
  std::__tree<std::__value_type<unsigned int,avas::server::AudioAppSessionStates::SessionDetails>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,avas::server::AudioAppSessionStates::SessionDetails>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,avas::server::AudioAppSessionStates::SessionDetails>>>::destroy((this + 11), this[12]);
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }
}

uint64_t *std::__tree<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::__map_value_compare<avas::server::ProcessIdentity,std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::less<avas::server::ProcessIdentity>,true>,std::allocator<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = std::__tree<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>::__remove_node_pointer(a1, a2);
  v4 = a2[10];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  operator delete(a2);
  return v3;
}

uint64_t *std::__tree<std::__value_type<int,RBSProcessHandle * {__strong}>,std::__map_value_compare<int,std::__value_type<int,RBSProcessHandle * {__strong}>,std::less<int>,true>,std::allocator<std::__value_type<int,RBSProcessHandle * {__strong}>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>::__remove_node_pointer(a1, a2);

  operator delete(a2);
  return v3;
}

uint64_t std::__tree<std::__value_type<unsigned int,AVAudioSessionMicrophoneInjectionMode>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AVAudioSessionMicrophoneInjectionMode>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AVAudioSessionMicrophoneInjectionMode>>>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&,AVAudioSessionMicrophoneInjectionMode&>(void *a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>>>::__find_equal<unsigned int>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<std::__value_type<NSString * {__strong},audit_token_t>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},audit_token_t>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},audit_token_t>>>::__emplace_unique_key_args<NSString * {__strong},std::pair<NSString * const {__strong},audit_token_t>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<NSString * {__strong},audit_token_t>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<NSString * {__strong},audit_token_t>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
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

uint64_t **std::__tree<std::__value_type<NSString * {__strong},audit_token_t>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},audit_token_t>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},audit_token_t>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<NSString * {__strong},audit_token_t>,std::__tree_node<std::__value_type<NSString * {__strong},audit_token_t>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = std::__tree<std::__value_type<NSString * {__strong},audit_token_t>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},audit_token_t>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},audit_token_t>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          objc_storeStrong(v8 + 4, v9[4]);
          v10 = *(v9 + 5);
          *(v8 + 7) = *(v9 + 7);
          *(v8 + 5) = v10;
          std::__tree<std::__value_type<NSString * {__strong},audit_token_t>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},audit_token_t>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},audit_token_t>>>::__node_insert_multi(v5, v8);
          v8 = v14;
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<std::__value_type<NSString * {__strong},audit_token_t>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},audit_token_t>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},audit_token_t>>>::_DetachedTreeCache::__detach_next(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::__value_type<NSString * {__strong},audit_token_t>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},audit_token_t>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},audit_token_t>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<NSString * {__strong},audit_token_t>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},audit_token_t>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},audit_token_t>>>::__emplace_multi<std::pair<NSString * const {__strong},audit_token_t> const&>();
  }

  return result;
}

void sub_24176F79C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<NSString * {__strong},audit_token_t>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},audit_token_t>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},audit_token_t>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<NSString * {__strong},audit_token_t>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},audit_token_t>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},audit_token_t>>>::__node_insert_multi(uint64_t **a1, uint64_t *a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (a2[4] >= v4[4])
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

void *std::__tree<std::__value_type<NSString * {__strong},audit_token_t>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},audit_token_t>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},audit_token_t>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<NSString * {__strong},audit_token_t>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},audit_token_t>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},audit_token_t>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<NSString * {__strong},audit_token_t>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},audit_token_t>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},audit_token_t>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<NSString * {__strong},audit_token_t>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},audit_token_t>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},audit_token_t>>>::destroy(*a1, v2);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<NSString * {__strong},audit_token_t>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},audit_token_t>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},audit_token_t>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>::__remove_node_pointer(a1, a2);

  operator delete(a2);
  return v3;
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef<unsigned int,AVAudioSessionMicrophoneInjectionMode>(void *a1)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  std::vector<applesauce::CF::TypeRefPair>::reserve(&v11, a1[2]);
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 != v2)
  {
    v5 = v12;
    do
    {
      if (v5 >= v13)
      {
        v5 = std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<unsigned int const&,AVAudioSessionMicrophoneInjectionMode const&>(&v11, v3 + 8, v3 + 5);
      }

      else
      {
        applesauce::CF::TypeRefPair::TypeRefPair<unsigned int const&,AVAudioSessionMicrophoneInjectionMode const&>(v5, v3 + 8, v3 + 5);
        v5 += 2;
      }

      v12 = v5;
      v6 = v3[1];
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
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v2);
  }

  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v11);
  v14 = &v11;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&v14);
  return CFDictionaryRef;
}

void sub_24176FAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void *std::vector<applesauce::CF::TypeRefPair>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>>(result, a2);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_24176FB94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef(uint64_t **a1)
{
  v2 = (a1[1] - *a1) >> 4;
  __p = 0;
  v31 = 0;
  v32 = 0;
  std::vector<void const*>::reserve(&__p, v2);
  values = 0;
  v28 = 0;
  v29 = 0;
  std::vector<void const*>::reserve(&values, v2);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = *v3;
      if (!*v3 || !v3[1])
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x245CEE8B0](exception, "Could not construct");
      }

      v6 = v31;
      if (v31 >= v32)
      {
        v8 = (v31 - __p) >> 3;
        if ((v8 + 1) >> 61)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        v9 = (v32 - __p) >> 2;
        if (v9 <= v8 + 1)
        {
          v9 = v8 + 1;
        }

        if (v32 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (v10)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(&__p, v10);
        }

        v11 = (8 * v8);
        *v11 = v5;
        v7 = 8 * v8 + 8;
        v12 = v11 - (v31 - __p);
        memcpy(v12, __p, v31 - __p);
        v13 = __p;
        __p = v12;
        v31 = v7;
        v32 = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v31 = v5;
        v7 = (v6 + 8);
      }

      v31 = v7;
      v14 = v3[1];
      v15 = v28;
      if (v28 >= v29)
      {
        v17 = v28 - values;
        if ((v17 + 1) >> 61)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        v18 = (v29 - values) >> 2;
        if (v18 <= v17 + 1)
        {
          v18 = v17 + 1;
        }

        if (v29 - values >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v18;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(&values, v19);
        }

        v20 = (8 * v17);
        *v20 = v14;
        v16 = 8 * v17 + 8;
        v21 = v20 - (v28 - values);
        memcpy(v21, values, v28 - values);
        v22 = values;
        values = v21;
        v28 = v16;
        v29 = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v28 = v14;
        v16 = (v15 + 1);
      }

      v28 = v16;
      v3 += 2;
    }

    while (v3 != v4);
  }

  v23 = CFDictionaryCreate(0, __p, values, v2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v23)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEE8B0](v26, "Could not construct");
  }

  if (values)
  {
    v28 = values;
    operator delete(values);
  }

  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  return v23;
}

void sub_24176FE50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  __cxa_free_exception(v13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      *v7 = 0;
      a4[1] = v7[1];
      v7[1] = 0;
      v7 += 2;
      a4 += 2;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(a1, v5);
      v5 += 16;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 16;
      std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<applesauce::CF::TypeRefPair>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<applesauce::CF::TypeRefPair>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 16;
    std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(v5, v4 - 16);
  }
}

uint64_t std::vector<applesauce::CF::TypeRefPair>::__emplace_back_slow_path<unsigned int const&,AVAudioSessionMicrophoneInjectionMode const&>(uint64_t a1, int *a2, uint64_t *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v7 = *(a1 + 16) - *a1;
  if (v7 >> 3 > v4)
  {
    v4 = v7 >> 3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v8 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>>(a1, v8);
  }

  v15 = 0;
  v16 = 16 * v3;
  applesauce::CF::TypeRefPair::TypeRefPair<unsigned int const&,AVAudioSessionMicrophoneInjectionMode const&>((16 * v3), a2, a3);
  v17 = (16 * v3 + 16);
  v9 = *(a1 + 8);
  v10 = (16 * v3 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(&v15);
  return v14;
}

void sub_241770214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

CFNumberRef *applesauce::CF::TypeRefPair::TypeRefPair<unsigned int const&,AVAudioSessionMicrophoneInjectionMode const&>(CFNumberRef *a1, int *a2, uint64_t *a3)
{
  valuePtr = *a2;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *a1 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEE8B0](exception, "Could not construct");
  }

  v11 = *a3;
  v6 = CFNumberCreate(0, kCFNumberLongType, &v11);
  a1[1] = v6;
  if (!v6)
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEE8B0](v9, "Could not construct");
  }

  return a1;
}

void sub_241770318(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

void std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<applesauce::CF::TypeRefPair>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<applesauce::CF::TypeRefPair>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(a1, i))
  {
    i -= 16;
  }

  *(a1 + 8) = a2;
}

void *std::__shared_ptr_emplace<avas::server::IONodeSessionInfo>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<avas::server::AudioSessionInfo> &,AVAudioSessionClientPlayerType &,NSXPCConnection * {__strong}&,objc_object  {objcproto28AVAudioSessionServerDelegate}* {__strong}&,std::shared_ptr<avas::server::SpatialManager> &,std::allocator<avas::server::IONodeSessionInfo>,0>(void *a1, uint64_t *a2, unsigned int *a3, void *a4, void *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28535B488;
  std::construct_at[abi:ne200100]<avas::server::IONodeSessionInfo,std::shared_ptr<avas::server::AudioSessionInfo> &,AVAudioSessionClientPlayerType &,NSXPCConnection * {__strong}&,objc_object  {objcproto28AVAudioSessionServerDelegate}* {__strong}&,std::shared_ptr<avas::server::SpatialManager> &,avas::server::IONodeSessionInfo*>((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void std::__shared_ptr_emplace<avas::server::IONodeSessionInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28535B488;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CEEB60);
}

uint64_t std::construct_at[abi:ne200100]<avas::server::IONodeSessionInfo,std::shared_ptr<avas::server::AudioSessionInfo> &,AVAudioSessionClientPlayerType &,NSXPCConnection * {__strong}&,objc_object  {objcproto28AVAudioSessionServerDelegate}* {__strong}&,std::shared_ptr<avas::server::SpatialManager> &,avas::server::IONodeSessionInfo*>(uint64_t a1, uint64_t *a2, unsigned int *a3, void *a4, void *a5)
{
  v6 = a2[1];
  v8 = *a2;
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  avas::server::IONodeSessionInfo::IONodeSessionInfo(a1, &v8, *a3, *a4, *a5);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return a1;
}

void sub_241770610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<avas::server::IONodeSessionInfo>::__shared_ptr_emplace[abi:ne200100]<unsigned int &,NSNumber * {__strong}&,AVAudioSessionClientPlayerType &,NSXPCConnection * {__strong}&,objc_object  {objcproto28AVAudioSessionServerDelegate}* {__strong}&,std::shared_ptr<avas::server::SpatialManager> &,std::allocator<avas::server::IONodeSessionInfo>,0>(void *a1, unsigned int *a2, void *a3, unsigned int *a4, void *a5, void *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28535B488;
  avas::server::IONodeSessionInfo::IONodeSessionInfo(a1 + 3, *a2, *a3, *a4, *a5, *a6);
  return a1;
}

uint64_t avas::server::IONodeSessionInfo::IONodeSessionInfo(uint64_t a1, uint64_t *a2, int a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  *a1 = &unk_28535B4C0;
  *(a1 + 8) = xmmword_241782B90;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v11 = *a2;
  v12 = a2[1];
  v14[0] = v11;
  v14[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  avas::server::IONodeSessionInfo::Reconfigure(a1, v14, a3, v9, v10);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  return a1;
}

void sub_2417708E0(_Unwind_Exception *a1)
{
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  avas::server::IONodeSessionInfo::IONodeSessionInfo(v4, v2);

  _Unwind_Resume(a1);
}

void avas::server::IONodeSessionInfo::Reconfigure(os_unfair_lock_s *a1, void *a2, int a3, void *a4, void *a5)
{
  v46 = *MEMORY[0x277D85DE8];
  v44 = a4;
  v9 = a5;
  v43[2] = v9;
  os_unfair_lock_opaque = a1[2]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque != (*(**a2 + 16))() || a1[5]._os_unfair_lock_opaque != a3)
  {
    avas::server::IONodeSessionInfo::GetSiblingSession(a1, v43);
    v11 = a1[2]._os_unfair_lock_opaque;
    v12 = a1[4]._os_unfair_lock_opaque;
    v13 = a1[5]._os_unfair_lock_opaque;
    if (v44)
    {
      [v44 auditToken];
    }

    else
    {
      memset(&v29, 0, sizeof(v29));
    }

    v30 = *v29.val;
    *v31 = *&v29.val[4];
    v31[16] = 1;
    atoken = v29;
    *&v31[20] = audit_token_to_pid(&atoken);
    *&v31[24] = 1935830119;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v14 = a2[1];
    v38 = *a2;
    v39 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(v14 + 1, 1uLL, memory_order_relaxed);
      v14 = v32;
    }

    v40 = 0;
    v41 = 0;
    v42 = 0;
    v16 = v30;
    v17[0] = *v31;
    *(v17 + 12) = *&v31[12];
    v18 = v14;
    v19 = v33;
    v20 = v34;
    v21 = v35;
    v22 = v36;
    v23 = v37;
    v24 = v38;
    v25 = v39;
    if (v39)
    {
      atomic_fetch_add_explicit(v39 + 1, 1uLL, memory_order_relaxed);
    }

    v26 = v40;
    v27 = v41;
    v28 = v42;
    avas::server::IONodeSessionInfo::SetRemoteClient(a1, &v16, v44);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_241771190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, os_unfair_lock_s *a41, uint64_t a42, uint64_t a43, uint64_t a44, id a45)
{
  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&a41);

  avas::server::SessionCreationDescription::~SessionCreationDescription(&a45);
  v47 = *(v45 - 184);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  _Unwind_Resume(a1);
}

void avas::server::IONodeSessionInfo::IONodeSessionInfo(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  *a1 = &unk_28535B4C0;
  *(a1 + 8) = xmmword_241782B90;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  avas::server::IONodeSessionInfo::ReconfigureInSentinel(a1, a2, v11, a4, v12, v13);
}

void sub_241771580(_Unwind_Exception *a1)
{
  v6 = *(v2 + 56);
  *(v2 + 56) = 0;
  if (v6)
  {
    avas::server::IONodeSessionInfo::IONodeSessionInfo(v6);
  }

  v7 = *(v2 + 48);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  _Unwind_Resume(a1);
}

void avas::server::IONodeSessionInfo::ReconfigureInSentinel(os_unfair_lock_s *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v35[3] = a5;
  v35[2] = a6;
  avas::server::IONodeSessionInfo::GetSiblingSession(a1, v35);
  os_unfair_lock_opaque = a1[2]._os_unfair_lock_opaque;
  v11 = a1[4]._os_unfair_lock_opaque;
  v12 = a1[5]._os_unfair_lock_opaque;
  LOBYTE(v24) = 0;
  v25[16] = 0;
  *&v25[20] = [v9 longLongValue];
  *&v25[24] = 1937012066;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  v13 = v24;
  v14[0] = *v25;
  *(v14 + 12) = *&v25[12];
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  avas::server::IONodeSessionInfo::SetRemoteClient(a1, &v13, 0);
}

void sub_241771A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  avas::server::SessionCreationDescription::~SessionCreationDescription(&a33);
  v36 = *(v34 - 192);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  _Unwind_Resume(a1);
}

uint64_t avas::server::IONodeSessionInfo::GetMXSessionID(os_unfair_lock_s *this)
{
  avas::server::IONodeSessionInfo::GetSiblingSession(this, &v3);
  if (v3)
  {
    v1 = (*(*v3 + 32))(v3);
  }

  else
  {
    v1 = 0;
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v1;
}

void sub_241771B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::server::IONodeSessionInfo::GetSourceSessionID(os_unfair_lock_s *this)
{
  avas::server::IONodeSessionInfo::GetSiblingSession(this, &v3);
  if (v3)
  {
    v1 = (*(*v3 + 24))(v3);
  }

  else
  {
    v1 = 0;
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v1;
}

void sub_241771BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL avas::server::IONodeSessionInfo::BelongsToSessionID(os_unfair_lock_s *this, uint64_t a2)
{
  if (this[4]._os_unfair_lock_opaque == a2)
  {
    return 1;
  }

  avas::server::IONodeSessionInfo::GetSiblingSession(this, &v5);
  v2 = v5 && ((*(*v5 + 40))(v5, a2) & 1) != 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v2;
}

void sub_241771CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::server::IONodeSessionInfo::IsBackedByMXSession(os_unfair_lock_s *this, const void *a2)
{
  avas::server::IONodeSessionInfo::GetSiblingSession(this, &v5);
  if (v5)
  {
    v3 = (*(*v5 + 48))(v5, a2);
  }

  else
  {
    v3 = 0;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v3;
}

void sub_241771D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::server::IONodeSessionInfo::IsBackedByMXSessionID(os_unfair_lock_s *this, uint64_t a2)
{
  avas::server::IONodeSessionInfo::GetSiblingSession(this, &v5);
  if (v5)
  {
    v3 = (*(*v5 + 56))(v5, a2);
  }

  else
  {
    v3 = 0;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v3;
}

void sub_241771DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::server::IONodeSessionInfo::SetPlayState(os_unfair_lock_s *a1, int a2, int a3)
{
  avas::server::IONodeSessionInfo::GetSiblingSession(a1, &v10);
  if (v10)
  {
    v6 = v11;
    v9[0] = v10;
    v9[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = avas::server::IONodeSessionInfo::SetPlayStateInner(v9, a1[4]._os_unfair_lock_opaque, a1[5]._os_unfair_lock_opaque, a2, a3);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    if (!v7)
    {
      a1[6]._os_unfair_lock_opaque = a2;
      a1[7]._os_unfair_lock_opaque = a3;
    }
  }

  else
  {
    v7 = 561210739;
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return v7;
}

void sub_241771E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::server::IONodeSessionInfo::SetPlayStateInner(void *a1, unsigned int a2, int a3, int a4, int a5)
{
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = 1;
  v6 = avas::server::require_acq::AudioSessionServerSetClientPlayState(v8, a3, a2, a5, a4, 0, 0);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
  return v6;
}

void sub_241771F38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void avas::server::IONodeSessionInfo::SetProperties(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = a2;
  avas::server::IONodeSessionInfo::LockSession(a1, &v19);
  v8 = v19;
  if (!v19)
  {
    v15 = -50;
LABEL_13:
    *a4 = v15;
    *(a4 + 8) = 0;
    goto LABEL_14;
  }

  if (a3)
  {
    v9 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_lock((a1 + 32));
    v10 = *(a1 + 40);
    v11 = *(v10 + 248);
    v16[0] = *(v10 + 232);
    v16[1] = v11;
    v17 = *(v10 + 264);
    os_unfair_lock_unlock((a1 + 32));
    v12 = v16;
    if (!v17)
    {
      v12 = &unk_241782BA0;
    }

    v13 = v12[1];
    *v18.val = *v12;
    *&v18.val[4] = v13;
    HasMXPropertyPipeEntitlement = avas::server::ConstAudioSessionInfo::HasMXPropertyPipeEntitlement(v8, &v18);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (!HasMXPropertyPipeEntitlement)
    {
      v15 = 1701737535;
      goto LABEL_13;
    }
  }

  avas::server::IONodeSessionInfo::SetPropertiesInner(&v19, v7, a4);
LABEL_14:
  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&v19);
}

void sub_241772060(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor((v3 - 72));

  _Unwind_Resume(a1);
}

void avas::server::IONodeSessionInfo::LockSession(os_unfair_lock_s *this@<X0>, uint64_t a2@<X8>)
{
  avas::server::IONodeSessionInfo::GetSiblingSession(this, &v3);
  avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(a2, &v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_2417720DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void avas::server::IONodeSessionInfo::SetPropertiesInner(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2;
  v6 = *a1;
  if (!*a1)
  {
    v10 = _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:v10 process:? delegate:?];
  }

  v7 = a1[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = 0;
  v8 = avas::server::mx::MXAccessor::SetMXProperties(*(v6 + 120), v5, &v11);
  v9 = v11;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  *a3 = v8;
  *(a3 + 8) = v9;
}

void sub_2417721A0(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void avas::server::IONodeSessionInfo::GetProperties(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a2;
  avas::server::IONodeSessionInfo::LockSession(a1, &v21);
  v10 = v21;
  if (!v21)
  {
    v17 = -50;
LABEL_13:
    *a5 = v17;
    *(a5 + 8) = 0;
    goto LABEL_14;
  }

  if (a3)
  {
    v11 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_lock((a1 + 32));
    v12 = *(a1 + 40);
    v13 = *(v12 + 248);
    v18[0] = *(v12 + 232);
    v18[1] = v13;
    v19 = *(v12 + 264);
    os_unfair_lock_unlock((a1 + 32));
    v14 = v18;
    if (!v19)
    {
      v14 = &unk_241782BA0;
    }

    v15 = v14[1];
    *v20.val = *v14;
    *&v20.val[4] = v15;
    HasMXPropertyPipeEntitlement = avas::server::ConstAudioSessionInfo::HasMXPropertyPipeEntitlement(v10, &v20);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (!HasMXPropertyPipeEntitlement)
    {
      v17 = 1701737535;
      goto LABEL_13;
    }
  }

  avas::server::IONodeSessionInfo::GetPropertiesInner(&v21, v9, a4, a5);
LABEL_14:
  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&v21);
}

void sub_2417722E0(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor((v3 - 72));

  _Unwind_Resume(a1);
}

void avas::server::IONodeSessionInfo::GetPropertiesInner(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = *a1;
  if (!*a1)
  {
    v19 = _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:v19 process:? delegate:?];
  }

  v9 = a1[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v25 = 0;
  v20 = avas::server::ConstAudioSessionInfo::GetMXProperties(v8, v7, &v25);
  v10 = v25;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (!v10)
  {
    v16 = 0;
    if (!a3)
    {
      goto LABEL_20;
    }

LABEL_19:
    v17 = v10;
    *a3 = v10;
    goto LABEL_20;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v12)
  {
    v13 = *v22;
LABEL_9:
    v14 = 0;
    while (1)
    {
      if (*v22 != v13)
      {
        objc_enumerationMutation(v11);
      }

      v15 = [v11 objectForKeyedSubscript:*(*(&v21 + 1) + 8 * v14)];
      v16 = [v15 intValue];

      if (v16)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v12)
        {
          goto LABEL_9;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:
    v16 = 0;
  }

  if (a3)
  {
    goto LABEL_19;
  }

LABEL_20:
  *a4 = v16;
  *(a4 + 8) = v20;

  v18 = *MEMORY[0x277D85DE8];
}

void avas::server::IONodeSessionInfo::SetRemoteClient(os_unfair_lock_s *a1, uint64_t a2, void *a3)
{
  a3;
  os_unfair_lock_lock(a1 + 8);
  std::allocate_shared[abi:ne200100]<avas::server::AudioSessionRemoteClient,std::allocator<avas::server::AudioSessionRemoteClient>,avas::server::SessionCreationDescription &,NSXPCConnection * {__strong}&,0>();
}

void sub_2417725B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  os_unfair_lock_unlock(v11 + 8);

  _Unwind_Resume(a1);
}

void avas::server::IONodeSessionInfo::SetContainerBinding(uint64_t a1, uint64_t *a2)
{
  os_unfair_lock_lock((a1 + 32));
  v4 = *a2;
  *a2 = 0;
  v5 = *(a1 + 56);
  *(a1 + 56) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  os_unfair_lock_unlock((a1 + 32));
}

void avas::server::IONodeSessionInfo::SetInvalidated(os_unfair_lock_s *this)
{
  v9 = *MEMORY[0x277D85DE8];
  BindingType = avas::server::IONodeSessionInfo::GetBindingType(this);
  if (BindingType != 1651733091)
  {
    v3 = *avas::server::gSessionServerLog(BindingType);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "IONodeSessionInfo.mm";
      v7 = 1024;
      v8 = 314;
      _os_log_impl(&dword_241701000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Error - only IONodeSessions with 'source' binding should be invalidated", &v5, 0x12u);
    }
  }

  avas::server::IONodeSessionInfo::ResetBinding(this);
  v4 = *MEMORY[0x277D85DE8];
}

void avas::server::IONodeSessionInfo::ResetBinding(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 8);
  v2 = *&this[14]._os_unfair_lock_opaque;
  *&this[14]._os_unfair_lock_opaque = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  os_unfair_lock_unlock(this + 8);
}

void avas::server::IONodeSessionInfo::~IONodeSessionInfo(avas::server::IONodeSessionInfo *this)
{
  *this = &unk_28535B4C0;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  *this = &unk_28535B4C0;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x245CEEB60);
}

uint64_t avas::server::IONodeSessionInfo::GetSessionID(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 8);
  v2 = *(*&this[10]._os_unfair_lock_opaque + 8);
  os_unfair_lock_unlock(this + 8);
  return v2;
}

void avas::server::IONodeSessionInfo::GetRemoteClient(os_unfair_lock_s *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  os_unfair_lock_lock(this + 8);
  if (this[4]._os_unfair_lock_opaque == a2)
  {
    v6 = *&this[12]._os_unfair_lock_opaque;
    *a3 = *&this[10]._os_unfair_lock_opaque;
    a3[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  os_unfair_lock_unlock(this + 8);
}

void avas::server::IONodeSessionInfo::GetOwningClient(os_unfair_lock_s *this@<X0>, void *a2@<X8>)
{
  os_unfair_lock_lock(this + 8);
  v4 = *&this[12]._os_unfair_lock_opaque;
  *a2 = *&this[10]._os_unfair_lock_opaque;
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(this + 8);
}

uint64_t avas::server::IONodeSessionInfo::GetCreatorProcessIdentity(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 8);
  v2 = *&this[10]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(this + 8);
  return v2 + 232;
}

void *avas::server::IONodeSessionInfo::DebugString(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 8);
  v2 = *&this[10]._os_unfair_lock_opaque;
  v3 = (v2 + 272);
  if (*(v2 + 295) < 0)
  {
    v3 = *v3;
  }

  os_unfair_lock_unlock(this + 8);
  return v3;
}

void avas::server::IONodeSessionInfo::DebugStateStrings(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void *std::__shared_ptr_emplace<avas::server::AudioSessionRemoteClient>::__shared_ptr_emplace[abi:ne200100]<avas::server::SessionCreationDescription &,NSXPCConnection * {__strong}&,std::allocator<avas::server::AudioSessionRemoteClient>,0>(void *a1, const avas::server::SessionCreationDescription *a2, NSXPCConnection **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28535B130;
  avas::server::AudioSessionRemoteClient::AudioSessionRemoteClient((a1 + 3), a2, *a3);
  return a1;
}

void avas::server::IONodeSessionInfo::SiblingBinding::~SiblingBinding(avas::server::IONodeSessionInfo::SiblingBinding *this)
{
  *this = &unk_28535B540;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  *this = &unk_28535B540;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CEEB60);
}

std::__shared_weak_count *avas::server::IONodeSessionInfo::SiblingBinding::GetSiblingSession@<X0>(avas::server::IONodeSessionInfo::SiblingBinding *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  result = *(this + 3);
  if (result)
  {
    result = std::__shared_weak_count::lock(result);
    a2[1] = result;
    if (result)
    {
      *a2 = *(this + 2);
    }
  }

  return result;
}

void *std::__shared_ptr_emplace<avas::server::AudioSessionInfo>::__shared_ptr_emplace[abi:ne200100]<avas::server::SessionCreationDescription &,NSXPCConnection * {__strong}&,objc_object  {objcproto28AVAudioSessionServerDelegate}* {__strong}&,std::shared_ptr<avas::server::SpatialManager> &,avas::server::mx::MXAccessorFactory *,std::allocator<avas::server::AudioSessionInfo>,0>(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28535B418;
  avas::server::AudioSessionInfo::AudioSessionInfo(a1 + 3, a2, *a3, *a4, a5, *a6);
  return a1;
}

void avas::server::IONodeSessionInfo::SourceBinding::~SourceBinding(avas::server::IONodeSessionInfo::SourceBinding *this)
{
  *this = &unk_28535B570;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_28535B570;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x245CEEB60);
}

uint64_t avas::server::IONodeSessionInfo::SourceBinding::GetSiblingSession@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 24);
  *a2 = *(this + 16);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void sub_241773048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(va);
  _Unwind_Resume(a1);
}

void sub_241773360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_unfair_lock_s *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&a15);
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  _Unwind_Resume(a1);
}

void sub_241773720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(a1);
}

void sub_241773904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(a1);
}

void sub_241773B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(a1);
}

void avas::server::HandleMXNotification(void **a1, uint64_t a2, void *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v6 = OUTLINED_FUNCTION_3(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_241701000, v7, v8, "%25s:%-5d %s", v9, v10, v11, v12, 2u);
  }

  *a3 = a2;
  v13 = *MEMORY[0x277D85DE8];
}

{
  v5 = *MEMORY[0x277D85DE8];
  v6 = OUTLINED_FUNCTION_3(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_241701000, v7, v8, "%25s:%-5d %s", v9, v10, v11, v12, 2u);
  }

  *a3 = a2;
  v13 = *MEMORY[0x277D85DE8];
}

{
  v5 = *MEMORY[0x277D85DE8];
  v6 = OUTLINED_FUNCTION_3(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_241701000, v7, v8, "%25s:%-5d %s", v9, v10, v11, v12, 2u);
  }

  *a3 = a2;
  v13 = *MEMORY[0x277D85DE8];
}

void ___ZN12_GLOBAL__N_130HandleInterruptionNotificationEjP12NSDictionary_block_invoke_cold_8(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4(&dword_241701000, v1, v2, "%25s:%-5d Unexpected null session reference", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void ___ZN12_GLOBAL__N_130HandleInterruptionNotificationEjP12NSDictionary_block_invoke_105_cold_12(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4(&dword_241701000, v1, v2, "%25s:%-5d Unexpected null session reference", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump()
{
  __assert_rtn("dump", "serializer.hpp", 229, "not val.m_value.array->empty()");
}

{
  __assert_rtn("dump", "serializer.hpp", 208, "not val.m_value.array->empty()");
}

{
  __assert_rtn("dump", "serializer.hpp", 167, "std::next(i) == val.m_value.object->cend()");
}

{
  __assert_rtn("dump", "serializer.hpp", 166, "i != val.m_value.object->cend()");
}

{
  __assert_rtn("dump", "serializer.hpp", 139, "std::next(i) == val.m_value.object->cend()");
}

{
  __assert_rtn("dump", "serializer.hpp", 138, "i != val.m_value.object->cend()");
}

{
  __assert_rtn("dump", "serializer.hpp", 363, "false");
}

void nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped()
{
  __assert_rtn("dump_escaped", "serializer.hpp", 562, "false");
}

{
  __assert_rtn("dump_escaped", "serializer.hpp", 625, "false");
}

void nlohmann::detail::to_chars<double>()
{
  __assert_rtn("to_chars", "to_chars.hpp", 1101, "last - first >= std::numeric_limits<FloatType>::max_digits10 + 6");
}

{
  __assert_rtn("to_chars", "to_chars.hpp", 1100, "last - first >= 2 + (-kMinExp - 1) + std::numeric_limits<FloatType>::max_digits10");
}

{
  __assert_rtn("to_chars", "to_chars.hpp", 1092, "len <= std::numeric_limits<FloatType>::max_digits10");
}

{
  __assert_rtn("to_chars", "to_chars.hpp", 1082, "last - first >= std::numeric_limits<FloatType>::max_digits10");
}

{
  __assert_rtn("to_chars", "to_chars.hpp", 1064, "std::isfinite(value)");
}

void nlohmann::detail::dtoa_impl::grisu2<double>()
{
  __assert_rtn("grisu2", "to_chars.hpp", 890, "value > 0");
}

{
  __assert_rtn("grisu2", "to_chars.hpp", 889, "std::isfinite(value)");
}

void nlohmann::detail::dtoa_impl::format_buffer()
{
  __assert_rtn("format_buffer", "to_chars.hpp", 1006, "k > n");
}

{
  __assert_rtn("append_exponent", "to_chars.hpp", 927, "e < 1000");
}

{
  __assert_rtn("append_exponent", "to_chars.hpp", 926, "e > -1000");
}

{
  __assert_rtn("format_buffer", "to_chars.hpp", 980, "max_exp > 0");
}

{
  __assert_rtn("format_buffer", "to_chars.hpp", 979, "min_exp < 0");
}

void nlohmann::detail::dtoa_impl::compute_boundaries<double>()
{
  __assert_rtn("compute_boundaries", "to_chars.hpp", 186, "value > 0");
}

{
  __assert_rtn("compute_boundaries", "to_chars.hpp", 185, "std::isfinite(value)");
}

void nlohmann::detail::dtoa_impl::grisu2()
{
  __assert_rtn("grisu2", "to_chars.hpp", 827, "m_plus.e == m_minus.e");
}

{
  __assert_rtn("grisu2", "to_chars.hpp", 828, "m_plus.e == v.e");
}

void nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent()
{
  __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 473, "static_cast<std::size_t>(index) < kCachedPowers.size()");
}

{
  __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 477, "kGamma >= cached.e + e + 64");
}

{
  __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 476, "kAlpha <= cached.e + e + 64");
}

{
  __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 472, "index >= 0");
}

{
  __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 467, "e <= 1500");
}

{
  __assert_rtn("get_cached_power_for_binary_exponent", "to_chars.hpp", 466, "e >= -1500");
}

void nlohmann::detail::dtoa_impl::grisu2_digit_gen()
{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 746, "p2 > delta");
}

{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 766, "d <= 9");
}

{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 757, "p2 <= (std::numeric_limits<std::uint64_t>::max)() / 10");
}

{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 659, "d <= 9");
}

{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 623, "p1 > 0");
}

{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 602, "M_plus.e <= kGamma");
}

{
  __assert_rtn("grisu2_digit_gen", "to_chars.hpp", 601, "M_plus.e >= kAlpha");
}

void nlohmann::detail::dtoa_impl::grisu2_round()
{
  __assert_rtn("grisu2_round", "to_chars.hpp", 573, "buf[len - 1] != '0'");
}

{
  __assert_rtn("grisu2_round", "to_chars.hpp", 548, "ten_k > 0");
}

{
  __assert_rtn("grisu2_round", "to_chars.hpp", 547, "rest <= delta");
}

{
  __assert_rtn("grisu2_round", "to_chars.hpp", 546, "dist <= delta");
}

{
  __assert_rtn("grisu2_round", "to_chars.hpp", 545, "len >= 1");
}

void anonymous namespace::MergeChangedHardwareObject()
{
  _os_crash();
  __break(1u);
}

{
  _os_crash();
  __break(1u);
}

void avas::server::AudioSessionInfo::SetSiblingPlayerState()
{
  _os_crash();
  __break(1u);
}

{
  _os_crash();
  __break(1u);
}

void avas::server::require_acq::MuteAudioSessions(avas::server *a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *avas::server::gSessionServerLog(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *a1;
    v6 = 136315906;
    v7 = "AudioSessionServerImp_iOS.mm";
    v8 = 1024;
    v9 = 244;
    v10 = 1024;
    v11 = v5;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_241701000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to input mute session 0x%x, err: %d", &v6, 0x1Eu);
  }

  _os_crash();
  __break(1u);
}

void boost::container::uninitialized_move_and_insert_alloc<boost::container::new_allocator<unsigned int>,unsigned int *,unsigned int *,boost::container::dtl::insert_range_proxy<boost::container::new_allocator<unsigned int>,boost::container::vec_iterator<unsigned int *,false>,unsigned int *>>(int a1, char *a2, char *__src, char *a4, char *__dst, uint64_t a6, const void **a7)
{
  v9 = __dst;
  if (a2 && a2 != __src && __dst)
  {
    v12 = (__src - a2);
    memmove(__dst, a2, __src - a2);
    v9 = &v12[v9];
  }

  v13 = *a7;
  if (a6)
  {
    memmove(v9, *a7, 4 * a6);
    if (!v13)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v13 += 4 * a6;
  }

  *a7 = v13;
  if (__src && __src != a4 && v9)
  {

    memmove(&v9[4 * a6], __src, a4 - __src);
  }
}

void boost::container::uninitialized_move_and_insert_alloc<boost::container::new_allocator<unsigned int>,unsigned int *,unsigned int *,boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<unsigned int>,unsigned int *,unsigned int const&>>(int a1, char *a2, char *__src, char *a4, char *__dst, uint64_t a6, _DWORD *a7)
{
  v9 = __dst;
  if (a2 && a2 != __src && __dst)
  {
    v12 = (__src - a2);
    memmove(__dst, a2, __src - a2);
    v9 = &v12[v9];
  }

  if (a6 != 1)
  {
    __assert_rtn("uninitialized_copy_n_and_update", "advanced_insert_int.hpp", 181, "n == 1");
  }

  *v9 = *a7;
  if (__src && __src != a4)
  {

    memmove(v9 + 4, __src, a4 - __src);
  }
}

void avas::server::DeviceTimeObserver::DeviceSlot::updateMinimalTimestamp()
{
  _os_crash();
  __break(1u);
}

{
  _os_crash();
  __break(1u);
}

void avas::server::DeviceTimeObserver::unmapSessionToDevice()
{
  _os_crash();
  __break(1u);
}

{
  _os_crash();
  __break(1u);
}

void avas::server::DeviceTimeObserver::xpcSharedMemoryObject(void *a1, void *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = (*a1 - *a2) >> 7;
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_fault_impl(&dword_241701000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "DeviceTimeObserver: expected exactly 1 shared block, have %d", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

void boost::container::vector<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,void>::emplace<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>()
{
  __assert_rtn("priv_insert_forward_range", "vector.hpp", 2821, "this->m_holder.capacity() >= this->m_holder.m_size");
}

{
  __assert_rtn("emplace", "vector.hpp", 1862, "this->priv_in_range_or_end(position)");
}

void boost::container::vector<unsigned int,boost::container::new_allocator<unsigned int>,void>::erase()
{
  __assert_rtn("erase", "vector.hpp", 2118, "first <= last");
}

{
  __assert_rtn("erase", "vector.hpp", 2117, "this->priv_in_range_or_end(last)");
}

{
  __assert_rtn("erase", "vector.hpp", 2116, "this->priv_in_range_or_end(first)");
}

void boost::movelib::detail_adaptive::lblock_for_combine<unsigned long>()
{
  __assert_rtn("lblock_for_combine", "adaptive_sort_merge.hpp", 588, "n_keys >= 4");
}

{
  __assert_rtn("lblock_for_combine", "adaptive_sort_merge.hpp", 577, "l_data > 1");
}

void boost::movelib::detail_adaptive::adaptive_merge_combine_blocks<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>>()
{
  __assert_rtn("adaptive_merge_combine_blocks", "adaptive_merge.hpp", 56, "xbuf.size() >= l_block");
}

{
  __assert_rtn("adaptive_merge_combine_blocks", "adaptive_merge.hpp", 94, "xbuf.size() >= l_block");
}

void boost::movelib::op_merge_with_right_placed<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,unsigned int *,boost::movelib::move_op>()
{
  __assert_rtn("op_merge_with_right_placed", "merge.hpp", 688, "(last - first) == (r_first - dest_first)");
}

{
  __assert_rtn("op_merge_with_right_placed", "merge.hpp", 692, "end == r_last");
}

void boost::movelib::op_merge_with_left_placed<boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op,unsigned int *,unsigned int *>()
{
  __assert_rtn("op_merge_with_left_placed", "merge.hpp", 725, "(dest_last - last) == (r_last - r_first)");
}

{
  __assert_rtn("op_merge_with_left_placed", "merge.hpp", 729, "last == res");
}

void boost::movelib::detail_adaptive::combine_params<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned long,boost::movelib::adaptive_xbuf<unsigned int,unsigned int *,unsigned long>>()
{
  __assert_rtn("combine_params", "adaptive_sort_merge.hpp", 713, "((l_combined-l_irreg1-l_irreg2)%l_block) == 0");
}

{
  __assert_rtn("combine_params", "adaptive_sort_merge.hpp", 717, "n_reg_block>=n_block_a");
}

void boost::movelib::detail_adaptive::op_merge_blocks_with_buf<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>,boost::movelib::move_op,unsigned int *>()
{
  __assert_rtn("op_merge_blocks_with_buf", "adaptive_sort_merge.hpp", 1317, "buffer_empty || res == last1");
}

{
  __assert_rtn("op_merge_blocks_with_buf", "adaptive_sort_merge.hpp", 1331, "is_range_1_empty || (buffer_end-buffer) == (last1+l_block-unmerged)");
}

{
  __assert_rtn("op_merge_blocks_with_buf", "adaptive_sort_merge.hpp", 1350, "(is_range2_A && n_block_a_left) || (!is_range2_A && n_block_b_left)");
}

{
  __assert_rtn("op_merge_blocks_with_buf", "adaptive_sort_merge.hpp", 1383, "(dest-last1) == (buffer_end-buffer)");
}

void boost::container::uninitialized_move_and_insert_alloc<boost::container::new_allocator<unsigned int>,unsigned int *,unsigned int *,boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<unsigned int>,unsigned int *,unsigned int>>(int a1, char *a2, char *__src, char *a4, char *__dst, uint64_t a6, _DWORD *a7)
{
  v9 = __dst;
  if (a2 && a2 != __src && __dst)
  {
    v12 = (__src - a2);
    memmove(__dst, a2, __src - a2);
    v9 = &v12[v9];
  }

  if (a6 != 1)
  {
    __assert_rtn("uninitialized_copy_n_and_update", "advanced_insert_int.hpp", 209, "n == 1");
  }

  *v9 = *a7;
  if (__src && __src != a4)
  {

    memmove(v9 + 4, __src, a4 - __src);
  }
}

void avas::server::mx::MXObjectBase::SetClientPID(id *a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "MXObjectBase.mm";
    v7 = 1024;
    v8 = 262;
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&dword_241701000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Set of kMXSessionProperty_CoreSessionID failed: %d", &v5, 0x18u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::element_t::release()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void avas::server::AudioAppInfoImpl::AudioAppInfoImpl()
{
  dispatch_once(&avas::server::DefaultAudioAppState(void)::onceToken, &__block_literal_global);
}

{
  dispatch_once(&avas::server::DefaultMXState(void)::onceToken, &__block_literal_global_118);
}

void avas::server::SessionCollection::SessionPresentingIterator::SessionPresentingIterator(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void avas::server::IONodeSessionInfo::IONodeSessionInfo(uint64_t **a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_0_0(v4);
    (*(v6 + 8))(v5);
  }

  v7 = *(a2 + 48);
  if (v7)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return MEMORY[0x2821F7478](this, a2);
}

{
  return MEMORY[0x2821F7490](this, a2);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E0]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, unint64_t __val)
{
  return MEMORY[0x2821F7F28](retstr, __val);
}

{
  return MEMORY[0x2821F7F38](retstr, __val);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}
id caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},objc_object  {objcproto14NSSecureCoding}* {__strong},unsigned int>(caulk::xpc::reply_watchdog_factory *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*a1 == 1)
  {
    v5 = MEMORY[0x245CEF0E0](v3);
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3321888768;
    v10[2] = ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongPU25objcproto14NSSecureCoding11objc_objectjEEEU13block_pointerFvDpT_ESC_i_block_invoke;
    v10[3] = &__block_descriptor_48_ea8_32c177_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongPU25objcproto14NSSecureCoding11objc_objectjEEEU13block_pointerFvDpT_ESC_iEUlS4_S7_jE__e41_v28__0__NSError_8___NSSecureCoding__16I24l;
    caulk::xpc::reply_watchdog_factory::make_timer(a1);
    v9 = MEMORY[0x245CEF0E0](v4);
    v11 = v8;
    v12 = MEMORY[0x245CEF0E0](v9);
    v5 = MEMORY[0x245CEF0E0](v10);

    v6 = v11;
    v11 = 0;
  }

  return v5;
}

BOOL VerifySessionOwnership(avas::server::LegacySessionManager *a1, audit_token_t *a2, int a3)
{
  v5 = a1;
  v6 = avas::server::LegacySessionManager::Instance(a1);
  if (a3)
  {
    v12 = 1;
    v11 = 1;
  }

  else
  {
    LOBYTE(v11) = 0;
    v12 = 0;
  }

  avas::server::LegacySessionManager::FindSessionAndVerifyOwnership(v6, v5, a2, &v11, &v9);
  v7 = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return v7 != 0;
}

uint64_t __copy_helper_block_ea8_32c177_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongPU25objcproto14NSSecureCoding11objc_objectjEEEU13block_pointerFvDpT_ESC_iEUlS4_S7_jE_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = MEMORY[0x245CEF0E0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *avas::server::LegacySessionManager::Instance(avas::server::LegacySessionManager *this)
{
  {
    avas::server::LegacySessionManager::LegacySessionManager(&avas::server::LegacySessionManager::Instance(void)::sManager, 0);
  }

  if (avas::server::LegacySessionManager::Instance(void)::onceToken != -1)
  {
    avas::server::LegacySessionManager::Instance();
  }

  return &avas::server::LegacySessionManager::Instance(void)::sManager;
}

void avas::server::LegacySessionManager::FindSessionAndVerifyOwnership(uint64_t a1@<X0>, unsigned int a2@<W1>, __int128 *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  os_unfair_lock_lock((a1 + 8));
  avas::server::SessionCollection::SessionPresentingIterator::SessionPresentingIterator(v25, *(a1 + 16), a1 + 24, *(a1 + 40), a1 + 48);
  avas::server::SessionCollection::SessionPresentingIterator::SessionPresentingIterator(v21, a1 + 24, a1 + 24, a1 + 48, a1 + 48);
  v10 = a3[1];
  v14 = *a3;
  v15 = v10;
  v16 = 1;
  v11 = a3[1];
  *atoken.val = *a3;
  *&atoken.val[4] = v11;
  v17 = audit_token_to_pid(&atoken);
  avas::server::LegacySessionManager::FindSessionAndVerifyOwnershipPriv<avas::server::SessionCollection::SessionPresentingIterator>(v25, v21, a2, &v14, a4, v29);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  avas::server::SessionCollection::SessionPresentingIterator::SessionPresentingIterator(&v14, a1 + 24, a1 + 24, a1 + 48, a1 + 48);
  v13 = v29[0] == v14 && v29[2] == v15;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v13)
  {
    *a5 = 0;
    a5[1] = 0;
  }

  else
  {
    avas::server::SessionCollection::SessionPresentingIterator::GetAudioSessionInfo(v29, a5);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  os_unfair_lock_unlock((a1 + 8));
}

void sub_241702A88(_Unwind_Exception *a1)
{
  avas::server::SessionCollection::SessionPresentingIterator::~SessionPresentingIterator((v2 - 184));
  os_unfair_lock_unlock(v1 + 2);
  _Unwind_Resume(a1);
}

uint64_t avas::server::SessionCollection::SessionPresentingIterator::SessionPresentingIterator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  avas::server::SessionCollection::SessionPresentingIterator::EvaluateCurrent(a1);
  return a1;
}

void sub_241702B14(_Unwind_Exception *a1)
{
  v3 = *(v1 + 96);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  avas::server::SessionCollection::SessionPresentingIterator::SessionPresentingIterator(v1);
  _Unwind_Resume(a1);
}

void avas::server::LegacySessionManager::FindSessionAndVerifyOwnershipPriv<avas::server::SessionCollection::SessionPresentingIterator>(__int128 *a1@<X1>, __int128 *a2@<X2>, unsigned int a3@<W3>, __int128 *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v7 = a1[1];
  v35 = *a1;
  v36 = v7;
  v37 = *(a1 + 8);
  v8 = *(a1 + 6);
  *&v38 = *(a1 + 5);
  *(&v38 + 1) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v39 = *(a1 + 14);
  v9 = *(a1 + 9);
  *&v40 = *(a1 + 8);
  *(&v40 + 1) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v41 = *(a1 + 20);
  v10 = *(a1 + 12);
  *&v42 = *(a1 + 11);
  *(&v42 + 1) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a2[1];
  v24 = *a2;
  v25 = v11;
  v26 = *(a2 + 8);
  v12 = *(a2 + 6);
  v27 = *(a2 + 5);
  v28 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v29 = *(a2 + 14);
  v13 = *(a2 + 9);
  v30 = *(a2 + 8);
  v31 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v32 = *(a2 + 20);
  v14 = *(a2 + 12);
  v33 = *(a2 + 11);
  v34 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = a3;
  v15 = a4[1];
  v20 = *a4;
  v21 = v15;
  v22 = *(a4 + 4);
  v23 = a5;
  v16 = v24;
  while ((v35 != v16 || v36 != v25) && !avas::server::LegacySessionManager::FindSessionAndVerifyOwnershipPriv<avas::server::SessionCollection::SessionPresentingIterator>(avas::server::SessionCollection::SessionPresentingIterator,avas::server::SessionCollection::SessionPresentingIterator,unsigned int,avas::server::ProcessIdentity const&,std::optional<avas::server::LegacySessionManager::EntitlementExceptionType> const&)const::{lambda(avas::server::SessionCollection::SessionPresentingIterator const&)#1}::operator()<std::pair<unsigned int,std::shared_ptr<avas::server::ISessionPresenting>>>(&v19, &v37))
  {
    avas::server::SessionCollection::SessionPresentingIterator::operator++(&v35);
  }

  v17 = v39;
  *(a6 + 32) = v37;
  v18 = v36;
  *a6 = v35;
  *(a6 + 16) = v18;
  *(a6 + 40) = v38;
  v38 = 0uLL;
  *(a6 + 56) = v17;
  *(a6 + 64) = v40;
  v40 = 0uLL;
  *(a6 + 80) = v41;
  *(a6 + 88) = v42;
  v42 = 0uLL;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (*(&v42 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v42 + 1));
  }

  if (*(&v40 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v40 + 1));
  }

  if (*(&v38 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v38 + 1));
  }
}

void sub_241702D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  avas::server::SessionCollection::SessionPresentingIterator::~SessionPresentingIterator(&a17);
  avas::server::SessionCollection::SessionPresentingIterator::~SessionPresentingIterator(&a31);
  _Unwind_Resume(a1);
}

BOOL avas::server::LegacySessionManager::FindSessionAndVerifyOwnershipPriv<avas::server::SessionCollection::SessionPresentingIterator>(avas::server::SessionCollection::SessionPresentingIterator,avas::server::SessionCollection::SessionPresentingIterator,unsigned int,avas::server::ProcessIdentity const&,std::optional<avas::server::LegacySessionManager::EntitlementExceptionType> const&)const::{lambda(avas::server::SessionCollection::SessionPresentingIterator const&)#1}::operator()<std::pair<unsigned int,std::shared_ptr<avas::server::ISessionPresenting>>>(unsigned int *a1, uint64_t a2)
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

void sub_241702F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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

void avas::server::SessionCollection::SessionPresentingIterator::EvaluateCurrent(avas::server::SessionCollection::SessionPresentingIterator *this)
{
  v2 = *this;
  if (*this != *(this + 1))
  {
    v3 = *(v2 + 32);
    v5 = *(v2 + 40);
    v4 = *(v2 + 48);
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    *(this + 14) = v3;
    v6 = *(this + 9);
    *(this + 8) = v5;
    *(this + 9) = v4;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    *(this + 20) = 0;
    v7 = *(this + 12);
    *(this + 11) = 0;
    *(this + 12) = 0;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    v8 = this + 32;
    v9 = this + 56;

LABEL_10:
    std::pair<unsigned int,std::shared_ptr<avas::server::ISessionPresenting>>::operator=[abi:ne200100]<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>,0>(v8, v9);
    return;
  }

  v10 = *(this + 2);
  v11 = *(this + 3);
  *(this + 14) = 0;
  v12 = *(this + 9);
  *(this + 8) = 0;
  *(this + 9) = 0;
  if (v10 != v11)
  {
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      v10 = *(this + 2);
    }

    v13 = *(v10 + 32);
    v15 = *(v10 + 40);
    v14 = *(v10 + 48);
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    *(this + 20) = v13;
    v16 = *(this + 12);
    *(this + 11) = v15;
    *(this + 12) = v14;
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    v8 = this + 32;
    v9 = this + 80;

    goto LABEL_10;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  *(this + 20) = 0;
  v17 = *(this + 12);
  *(this + 11) = 0;
  *(this + 12) = 0;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  *(this + 8) = 0;
  v18 = *(this + 6);
  *(this + 5) = 0;
  *(this + 6) = 0;
  if (v18)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }
}

void avas::server::ConstAudioSessionInfo::GetRemoteClient(avas::server::ConstAudioSessionInfo *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v4 = *(this + 12);
  if (!v4)
  {
    avas::server::ConstAudioSessionInfo::JSONFormattedDescription();
  }

  v5 = *(this + 13);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  avas::server::AudioSessionRemoteClientManager::GetRemoteClient(v4, a2, a3);
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_2417030F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void avas::server::AudioSessionRemoteClientManager::GetRemoteClient(os_unfair_lock_s *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  os_unfair_lock_lock(this);
  v6 = *&this[2]._os_unfair_lock_opaque;
  if (*(v6 + 8) == a2)
  {
    v7 = *&this[4]._os_unfair_lock_opaque;
    *a3 = v6;
    a3[1] = v7;
    if (!v7)
    {
      goto LABEL_13;
    }

    v8 = (v7 + 8);
LABEL_11:
    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
    goto LABEL_13;
  }

  v9 = *&this[6]._os_unfair_lock_opaque;
  v10 = *&this[8]._os_unfair_lock_opaque;
  if (v9 != v10)
  {
    while (*(*v9 + 8) != a2)
    {
      v9 += 2;
      if (v9 == v10)
      {
        goto LABEL_12;
      }
    }
  }

  if (v9 != v10)
  {
    v12 = *v9;
    v11 = v9[1];
    *a3 = v12;
    a3[1] = v11;
    if (!v11)
    {
      goto LABEL_13;
    }

    v8 = (v11 + 8);
    goto LABEL_11;
  }

LABEL_12:
  *a3 = 0;
  a3[1] = 0;
LABEL_13:

  os_unfair_lock_unlock(this);
}

uint64_t std::pair<unsigned int,std::shared_ptr<avas::server::ISessionPresenting>>::operator=[abi:ne200100]<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>,0>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

void avas::server::mx::MXAccessor::GetMXProperty(avas::server::mx::MXAccessor *this@<X0>, NSString *a2@<X1>, uint64_t a3@<X8>)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *this;
  v43[0] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
  v33 = 0;
  v8 = (*(*v6 + 16))(v6, v7, &v33);
  v9 = v33;

  v10 = [v9 objectForKey:v5];
  v11 = [v10 intValue] == 0;

  if (v11)
  {
    v26 = [v8 objectForKeyedSubscript:v5];
    *a3 = 0;
    *(a3 + 8) = v26;
  }

  else
  {
    v12 = [v9 objectForKeyedSubscript:v5];
    v13 = [v12 intValue];

    if (v13 == -15684 || v13 == -12984)
    {
      v14 = (*(**(this + 1) + 80))(&v31);
      if (v31)
      {
        v15 = *(this + 2);
        v34 = v5;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
        v30 = 0;
        v17 = (*(*v15 + 16))(v15, v16, &v30);
        v18 = v30;

        if (v18)
        {
          v20 = [v18 objectForKey:v5];
          v21 = [v20 intValue] == 0;

          if (!v21)
          {
            v22 = *avas::server::gSessionServerLog(v19);
            v19 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
            if (v19)
            {
              *buf = 136315650;
              v36 = "MXAccessor.mm";
              v37 = 1024;
              v38 = 60;
              v39 = 2112;
              v40 = v18;
              _os_log_impl(&dword_241701000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d Error in postProcessor GetProperty: %@", buf, 0x1Cu);
            }
          }
        }

        v23 = *avas::server::gSessionServerLog(v19);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v36 = "MXAccessor.mm";
          v37 = 1024;
          v38 = 62;
          v39 = 2112;
          v40 = v5;
          v41 = 2112;
          v42 = v17;
          _os_log_impl(&dword_241701000, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d GetProperty in postProcessor for property %@: %@", buf, 0x26u);
        }

        if (v18)
        {
          v24 = [v18 objectForKeyedSubscript:v5];
          v25 = [v24 intValue];
        }

        else
        {
          v25 = 0;
        }

        v28 = [v17 objectForKeyedSubscript:v5];
        *a3 = v25;
        *(a3 + 8) = v28;
      }

      else
      {
        v27 = *avas::server::gSessionServerLog(v14);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v36 = "MXAccessor.mm";
          v37 = 1024;
          v38 = 51;
          v39 = 2112;
          v40 = v5;
          v41 = 2112;
          v42 = v32;
          _os_log_impl(&dword_241701000, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d GetProperty in mainProcessor for property %@: %@", buf, 0x26u);
        }

        *a3 = v31;
        *(a3 + 8) = v32;
      }
    }

    else
    {
      *a3 = -50;
      *(a3 + 8) = 0;
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

avas::server::SessionCollection::SessionPresentingIterator *avas::server::SessionCollection::SessionPresentingIterator::operator++(avas::server::SessionCollection::SessionPresentingIterator *this)
{
  v2 = *this;
  if (*this == *(this + 1))
  {
    v6 = *(this + 2);
    v7 = v6[1];
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
        v8 = v6[2];
        v5 = *v8 == v6;
        v6 = v8;
      }

      while (!v5);
    }

    *(this + 2) = v8;
  }

  else
  {
    v3 = v2[1];
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = v2[2];
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    *this = v4;
  }

  avas::server::SessionCollection::SessionPresentingIterator::EvaluateCurrent(this);
  return this;
}

avas::server::ConstAudioSessionInfoAccessor *avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(avas::server::ConstAudioSessionInfoAccessor *this, unsigned int a2, audit_token_t *a3, int a4)
{
  *this = 0;
  *(this + 1) = 0;
  v8 = avas::server::LegacySessionManager::Instance(this);
  if (a4)
  {
    v13 = 1;
    v12 = 1;
  }

  else
  {
    LOBYTE(v12) = 0;
    v13 = 0;
  }

  avas::server::LegacySessionManager::FindSessionAndVerifyOwnership(v8, a2, a3, &v12, &v14);
  v9 = v14;
  v14 = 0uLL;
  v10 = *(this + 1);
  *this = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    if (*(&v14 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14 + 1));
    }
  }

  return this;
}

void sub_241703838(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL avas::server::ProcessIdentity::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 36) != *(a2 + 36))
  {
    return 0;
  }

  if (*(a1 + 32) != 1)
  {
    return 1;
  }

  v10 = v2;
  v11 = v3;
  if (*(a2 + 32) != 1)
  {
    return 1;
  }

  v5 = *(a1 + 16);
  *v9.val = *a1;
  *&v9.val[4] = v5;
  v6 = audit_token_to_pidversion(&v9);
  v7 = *(a2 + 16);
  *v9.val = *a2;
  *&v9.val[4] = v7;
  return v6 == audit_token_to_pidversion(&v9);
}

uint64_t avas::server::ConstAudioSessionInfo::HasMXPropertyPipeEntitlement(avas::server::ConstAudioSessionInfo *this, audit_token_t *a2)
{
  if (avas::server::ProcessIdentity::operator==(this + 8, a2))
  {
    return *(this + 147);
  }

  v5 = *&a2->val[4];
  *v12.val = *a2->val;
  *&v12.val[4] = v5;
  v6 = SecTaskCreateWithAuditToken(0, &v12);
  v13 = v6;
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = SecTaskCopyValueForEntitlement(v6, @"com.apple.private.coreaudio.mxsessionPropertyPipe", 0);
  v9 = MEMORY[0x277CBED28];
  if (!v8)
  {
    v9 = MEMORY[0x277CBED10];
  }

  v10 = *v9;
  *v12.val = v10;
  v4 = CFBooleanGetValue(v10) != 0;
  if (v10)
  {
    CFRelease(v10);
  }

  CFRelease(v7);
  return v4;
}

void sub_2417039BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14)
{
  applesauce::CF::BooleanRef::~BooleanRef(&a9);
  applesauce::CF::ObjectRef<__SecTask *>::~ObjectRef(&a14);
  _Unwind_Resume(a1);
}

BOOL avas::server::ProcessIdentity::operator==(uint64_t a1, _OWORD *a2)
{
  if (*(a1 + 32) != 1)
  {
    return 0;
  }

  v14 = v2;
  v15 = v3;
  v6 = *(a1 + 16);
  *v13.val = *a1;
  *&v13.val[4] = v6;
  v7 = audit_token_to_pid(&v13);
  v8 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v8;
  if (v7 != audit_token_to_pid(&v13))
  {
    return 0;
  }

  v9 = *(a1 + 16);
  *v13.val = *a1;
  *&v13.val[4] = v9;
  v10 = audit_token_to_pidversion(&v13);
  v11 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v11;
  return v10 == audit_token_to_pidversion(&v13);
}

void avas::server::forbid_acq::GetPropertyMX(avas::server::forbid_acq *this@<X0>, audit_token_t *a2@<X2>, NSString *a3@<X3>, audit_token_t *a4@<X1>, uint64_t a5@<X8>)
{
  v5 = a3;
  v37 = *MEMORY[0x277D85DE8];
  v9 = a2;
  avas::server::ForbidAudioControlQueue(v9);
  avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v25, this, a4, 1);
  v10 = v25;
  if (v25)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    v11 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HasMXPropertyPipeEntitlement = avas::server::ConstAudioSessionInfo::HasMXPropertyPipeEntitlement(v10, a4);
    v13 = HasMXPropertyPipeEntitlement;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v13)
    {
      v10 = v25;
      if (!v25)
      {
        v21 = _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:v21 process:? delegate:?];
      }

LABEL_9:
      v14 = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      avas::server::ConstAudioSessionInfo::JSONFormattedDescription(v10, this, &v24);
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      strcpy(v36, "get_property");
      v15 = v25;
      if (v25)
      {
        v16 = v26;
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        avas::server::mx::MXAccessor::GetMXProperty(*(v15 + 15), v9, &v23);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        if (v23)
        {
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[4],char [4],0>(__p);
        }

        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[4],char [4],0>(__p);
      }

      v22 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v22 process:? delegate:?];
    }

    v19 = *avas::server::gSessionServerLog(HasMXPropertyPipeEntitlement);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v29 = "AudioSessionServerImpCommon.mm";
      v30 = 1024;
      v31 = 288;
      v32 = 2112;
      v33 = v9;
      v34 = 1024;
      v35 = this;
      _os_log_impl(&dword_241701000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to get MXProperty: %@ on generic pipe for session: 0x%x due to missing entitlement.", buf, 0x22u);
    }

    v18 = 1701737535;
  }

  else
  {
    v17 = *avas::server::gSessionServerLog(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v29 = "AudioSessionServerImpCommon.mm";
      v30 = 1024;
      v31 = 280;
      v32 = 1024;
      LODWORD(v33) = this;
      _os_log_impl(&dword_241701000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cannot get session info for session ID: 0x%x", buf, 0x18u);
    }

    v18 = 561210739;
  }

  *a5 = v18;
  *(a5 + 8) = 0;
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_241704274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::__shared_weak_count *a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(&a12);

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  _Unwind_Resume(a1);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void avas::server::ConstAudioSessionInfo::JSONFormattedDescription(avas::server::ConstAudioSessionInfo *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 12);
  if (!v4)
  {
    avas::server::ConstAudioSessionInfo::JSONFormattedDescription();
  }

  v5 = *(this + 13);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  avas::server::AudioSessionRemoteClientManager::JSONFormattedDescription(v4, a2, a3);
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_24170458C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void avas::server::ForbidAudioControlQueue(avas::server *this)
{
  v7 = *MEMORY[0x277D85DE8];
  {
    avas::ACQContextAssertionEnabled(void)::enabled = _os_feature_enabled_impl();
  }

  if (avas::ACQContextAssertionEnabled(void)::enabled == 1)
  {
    *v4 = 0;
    pthread_threadid_np(0, v4);
    if (*v4 == GetACQThreadID())
    {
      avas::server::ForbidAudioControlQueue();
    }
  }

  else
  {
    *v4 = 0;
    pthread_threadid_np(0, v4);
    ACQThreadID = GetACQThreadID();
    if (*v4 == ACQThreadID)
    {
      v2 = *avas::server::gSessionServerLog(ACQThreadID);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        *v4 = 136315394;
        *&v4[4] = "AudioSessionServerImpCommon.h";
        v5 = 1024;
        v6 = 77;
        _os_log_impl(&dword_241701000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d ForbidACQ check within ACQ context. This may be a serious bug. Please file a radar to Audio - Session | All component", v4, 0x12u);
      }
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

void avas::server::SessionCollection::SessionPresentingIterator::GetAudioSessionInfo(avas::server::SessionCollection::SessionPresentingIterator *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 8);
  if (v3)
  {
    v4 = *(this + 9);
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v5 = *(this + 11);
    if (v5)
    {
      v6 = (*(*v5 + 104))(v5);

      avas::server::IONodeSessionInfo::GetSiblingSession(v6, a2);
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
    }
  }
}

void avas::server::AudioSessionRemoteClientManager::JSONFormattedDescription(os_unfair_lock_s *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  avas::server::AudioSessionRemoteClientManager::GetRemoteClient(this, a2, &v11);
  if (v11)
  {
    if (*(v11 + 319) < 0)
    {
      std::string::__init_copy_ctor_external(a3, *(v11 + 296), *(v11 + 304));
    }

    else
    {
      v5 = *(v11 + 296);
      *(a3 + 16) = *(v11 + 312);
      *a3 = v5;
    }
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Remote client with sessionID 0x%x not found", a2];
    v7 = [v6 UTF8String];
    v8 = strlen(v7);
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v9 = v8;
    if (v8 >= 0x17)
    {
      operator new();
    }

    *(a3 + 23) = v8;
    if (v8)
    {
      memmove(a3, v7, v8);
    }

    *(a3 + v9) = 0;
  }

  v10 = v12;
  if (v12)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_241704908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

unsigned __int8 *OS::CF::ToJSON@<X0>(unsigned __int8 *__return_ptr a1@<X8>, __CFString *this@<X0>)
{
  v15 = *MEMORY[0x277D85DE8];
  if (this)
  {
    v5 = CFGetTypeID(this);
    if (v5 == CFBooleanGetTypeID())
    {
      v6 = *MEMORY[0x277D85DE8];

      return OS::CF::ToJSON(this, a1);
    }

    else if (v5 == CFNumberGetTypeID())
    {
      v9 = *MEMORY[0x277D85DE8];

      return OS::CF::ToJSON(this, a1);
    }

    else if (v5 == CFStringGetTypeID())
    {
      v10 = *MEMORY[0x277D85DE8];

      return OS::CF::ToJSON(this, a1);
    }

    else if (v5 == CFArrayGetTypeID())
    {
      v11 = *MEMORY[0x277D85DE8];

      return OS::CF::ToJSON(this, a1);
    }

    else
    {
      if (v5 != CFDictionaryGetTypeID())
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[32],char [32],0>(v14);
      }

      v13 = *MEMORY[0x277D85DE8];

      return OS::CF::ToJSON(this, v12);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
    v8 = *MEMORY[0x277D85DE8];

    return nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  }
}

void sub_241704CCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(va1);
  for (i = 32; i != -32; i -= 32)
  {
    nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(va + i);
  }

  _Unwind_Resume(a1);
}

unsigned __int8 *nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::moved_or_copied@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (*(a1 + 24) == 1)
  {
    *a2 = *v3;
    *(a2 + 8) = *(v3 + 8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v3);
    *v3 = 0;
    *(v3 + 8) = 0;

    return nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  }

  else
  {

    return nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(a2, v3);
  }
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(uint64_t *a1, int a2)
{
  v33 = 0;
  v34 = 0;
  v35 = 0;
  if (a2 == 1)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(&v33, *(*a1 + 16));
    v6 = *a1 + 8;
    v7 = **a1;
    if (v7 != v6)
    {
      v8 = v34;
      do
      {
        if (v8 >= v35)
        {
          v8 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(&v33, (v7 + 7));
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

        v34 = v8;
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
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(&v33, (*(*a1 + 8) - **a1) >> 4);
    v4 = **a1;
    v5 = *(*a1 + 8);
    while (v4 != v5)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](&v33, v4);
      v4 += 16;
    }
  }

  for (i = v34; v33 != v34; i = v34)
  {
    v14 = *(i - 16);
    v13 = i - 16;
    LOBYTE(v31) = v14;
    v32 = *(v13 + 8);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v13);
    *v13 = 0;
    *(v13 + 8) = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v31);
    v15 = v34;
    v16 = v34 - 16;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant((v34 - 16));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v15 - 8, *(v15 - 16));
    v34 = v16;
    if (v31 == 1)
    {
      v23 = v32;
      v24 = v32 + 1;
      v25 = *v32;
      if (*v32 != v32 + 1)
      {
        do
        {
          if (v16 >= v35)
          {
            v16 = std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(&v33, (v25 + 7));
          }

          else
          {
            *v16 = *(v25 + 56);
            *(v16 + 8) = v25[8];
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v25 + 56);
            *(v25 + 56) = 0;
            v25[8] = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v16);
            v16 += 16;
          }

          v34 = v16;
          v26 = v25[1];
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
              v27 = v25[2];
              v11 = *v27 == v25;
              v25 = v27;
            }

            while (!v11);
          }

          v25 = v27;
        }

        while (v27 != v24);
        v23 = v32;
      }

      std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(v23, *(v23 + 8));
      *v23 = v23 + 8;
      *(v23 + 16) = 0;
      *(v23 + 8) = 0;
    }

    else if (v31 == 2)
    {
      v17 = v32;
      v18 = *v32;
      v19 = v32[1];
      if (*v32 != v19)
      {
        do
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](&v33, v18);
          v18 += 16;
        }

        while (v18 != v19);
        v17 = v32;
        v18 = *v32;
        v19 = v32[1];
      }

      if (v19 != v18)
      {
        v20 = (v19 - 16);
        v21 = v20;
        do
        {
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v20);
          v22 = *v21;
          v21 -= 16;
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(v20 + 8, v22);
          v11 = v20 == v18;
          v20 = v21;
        }

        while (!v11);
      }

      v17[1] = v18;
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v31);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v32, v31);
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v28 = *a1;
      if (*(*a1 + 23) < 0)
      {
        v30 = *v28;
        goto LABEL_52;
      }
    }

    else
    {
      if (a2 != 8)
      {
        goto LABEL_55;
      }

      v28 = *a1;
      v29 = **a1;
      if (v29)
      {
        v28[1] = v29;
        v30 = v29;
LABEL_52:
        operator delete(v30);
        goto LABEL_53;
      }
    }

LABEL_54:
    operator delete(v28);
    goto LABEL_55;
  }

  if (a2 == 1)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(*a1, *(*a1 + 8));
    goto LABEL_53;
  }

  if (a2 == 2)
  {
    v31 = *a1;
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v31);
LABEL_53:
    v28 = *a1;
    goto LABEL_54;
  }

LABEL_55:
  v31 = &v33;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v31);
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

void *avas::server::gSessionServerLog(avas::server *this)
{
  {
    caulk::log_category::log_category(&avas::server::gSessionServerLog(void)::sLogCat, "com.apple.coreaudio", "as_server");
  }

  return &avas::server::gSessionServerLog(void)::sLogCat;
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

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>(uint64_t a1, uint64_t a2)
{
  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::moved_or_copied(a2, v4);
  *a1 = v4[0];
  *(a1 + 8) = v5;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
  v4[0] = 0;
  v5 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v5, v4[0]);
  return a1;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const*,char const*,0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const* const&>();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a3)
  {
    v9 = 32 * a3;
    v10 = (a2 + 16);
    while (1)
    {
      v11 = *v10;
      if (**v10 != 2 || *(*(v11 + 1) + 8) - **(v11 + 1) != 32 || *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v11, 0) != 3)
      {
        break;
      }

      v10 += 4;
      v9 -= 32;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    v12 = 0;
    if ((a4 & 1) == 0)
    {
LABEL_11:
      if (a5 == 2)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }

      if (a5 != 1)
      {
        LOBYTE(v12) = 1;
      }

      if ((v12 & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(&v15, "cannot create object from initializer list");
        nlohmann::detail::type_error::create(301, &v15, exception);
      }

      if (!v13)
      {
LABEL_18:
        *a1 = 2;
        v15 = a2;
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const*,nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const*>();
      }

LABEL_9:
      *a1 = 1;
      operator new();
    }
  }

  else
  {
LABEL_7:
    v12 = 1;
    if ((a4 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (!v12)
  {
    goto LABEL_18;
  }

  goto LABEL_9;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[6],char [6],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const(&)[6]>();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[4],char [4],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const(&)[4]>();
}

void avas::server::mx::MXObjectBase::GetMXProperty(avas::server::mx::MXObjectBase *this@<X0>, NSString *a2@<X1>, uint64_t a3@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  *v13 = 0;
  pthread_threadid_np(0, v13);
  ACQThreadID = GetACQThreadID();
  v7 = *(this + 2);
  if (*v13 == ACQThreadID)
  {
    v8 = _MXSessionCopyProperty();
    v9 = v8;
    if (v8)
    {
      v10 = *avas::server::gSessionServerLog(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *v13 = 136315906;
        *&v13[4] = "MXObjectBase.mm";
        v14 = 1024;
        v15 = 301;
        v16 = 2112;
        v17 = v5;
        v18 = 1024;
        v19 = v9;
LABEL_8:
        _os_log_impl(&dword_241701000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Error getting property %@ with an error %d", v13, 0x22u);
      }
    }
  }

  else
  {
    v11 = MXSessionCopyProperty();
    v9 = v11;
    if (v11)
    {
      v10 = *avas::server::gSessionServerLog(v11);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *v13 = 136315906;
        *&v13[4] = "MXObjectBase.mm";
        v14 = 1024;
        v15 = 307;
        v16 = 2112;
        v17 = v5;
        v18 = 1024;
        v19 = v9;
        goto LABEL_8;
      }
    }
  }

  *a3 = v9;
  *(a3 + 8) = 0;

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(uint64_t a1, void **a2)
{
  result = *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__construct_node<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>();
  }

  return result;
}

uint64_t avas::server::StubbedBehaviorUnit::GetMXProperties(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [v5 setObject:&unk_28535D278 forKey:{*(*(&v13 + 1) + 8 * v9++), v13}];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (a3)
  {
    v10 = v5;
    *a3 = v5;
  }

  v11 = *MEMORY[0x277D85DE8];
  return MEMORY[0x277CBEC10];
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const*,nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_241705D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, a2);
  }

  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const*,nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>> const*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>(v4, v6);
      v6 += 32;
      v4 = v11 + 16;
      v11 += 16;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
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

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::reverse_iterator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>,std::reverse_iterator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](uint64_t a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v5 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    std::string::basic_string[abi:ne200100]<0>(&v6, v5);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("cannot use operator[] with a numeric argument with ", &v6, &v7);
    nlohmann::detail::type_error::create(305, &v7, exception);
  }

  return **(a1 + 8) + 16 * a2;
}

void sub_241706004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

double ___ZN4avas6server18DeviceTimeObserver10DeviceSlot15timestampWriterEv_block_invoke(uint64_t a1, uint64_t a2, double result)
{
  v3 = atomic_load((*(a1 + 32) + 256));
  if ((v3 & 1) == 0)
  {
    v6 = *(a2 + 56);
    if (v6)
    {
      if ((v6 & 3) != 0)
      {
        v21 = 0;
        v19 = 0u;
        v20 = 0u;
        v18 = 0u;
        caulk::concurrent::atomic_value<avas::MinimalTimeStamp,2,3>::load(*(a1 + 48), &v18);
        v7 = *(a2 + 56);
        v8 = *(a1 + 32);
        v9 = *(a1 + 40);
        v15 = v8;
        v16 = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          v8 = *(a1 + 32);
        }

        v10 = atomic_load((v8 + 16));
        v11 = 1.0;
        if ((v7 & 4) != 0)
        {
          v11 = *(a2 + 16);
        }

        avas::server::DeviceTimeObserver::DeviceSlot::updateMinimalTimestamp(&v18, &v15, *(a2 + 8), *a2, v10, 0, v11);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        *&result = caulk::concurrent::atomic_value<avas::MinimalTimeStamp,2,3>::store(*(a1 + 48), &v18).n128_u64[0];
      }
    }

    else
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      caulk::concurrent::atomic_value<avas::MinimalTimeStamp,2,3>::load(*(a1 + 48), &v18);
      LOWORD(v18) = 0;
      v21 = 0x3FF0000000000000;
      v12 = atomic_load((*(a1 + 32) + 16));
      *&v20 = v12;
      v13 = atomic_load((*(a1 + 32) + 8));
      *(&v19 + 1) = v13;
      caulk::concurrent::atomic_value<avas::MinimalTimeStamp,2,3>::store(*(a1 + 48), &v18);
      v14 = *(a1 + 32);
      v17[0] = 0;
      v17[24] = 0;
      *&result = caulk::concurrent::atomic_value<std::optional<avas::server::DeviceTimeObserver::AnchorInfo>,2,6>::store((v14 + 64), v17).n128_u64[0];
    }
  }

  return result;
}

void sub_2417061B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *caulk::concurrent::atomic_value<std::optional<avas::server::DeviceTimeObserver::AnchorInfo>,2,6>::load@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  v10 = 0;
  v3 = atomic_load(result);
  if ((v3 & 2) != 0)
  {
    v4 = result;
    v5 = result + 16;
    while (1)
    {
      v6 = (v3 >> 2) & 1;
      v7 = &v5[16 * ((v3 & 4) == 0)];
      explicit = atomic_load_explicit(v7, memory_order_acquire);
      if ((explicit & 1) == 0 || (v7 = &v5[16 * v6], explicit = atomic_load_explicit(v7, memory_order_acquire), (explicit & 1) == 0))
      {
        __dmb(9u);
        v9 = *(v7 + 6);
        *a2 = *(v7 + 2);
        *(a2 + 16) = v9;
        __dmb(9u);
        if (explicit == atomic_load_explicit(v7, memory_order_acquire))
        {
          break;
        }
      }

      result = caulk::concurrent::details::spinloop::spin(&v10);
      v3 = atomic_load(v4);
      if ((v3 & 2) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

double caulk::concurrent::atomic_value<avas::MinimalTimeStamp,2,3>::load@<D0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = 0;
  v3 = atomic_load(a1);
  if ((v3 & 2) != 0)
  {
    v5 = a1 + 2;
    while (1)
    {
      v6 = (v3 >> 2) & 1;
      v7 = &v5[16 * ((v3 & 4) == 0)];
      explicit = atomic_load_explicit(v7, memory_order_acquire);
      if ((explicit & 1) == 0 || (v7 = &v5[16 * v6], explicit = atomic_load_explicit(v7, memory_order_acquire), (explicit & 1) == 0))
      {
        __dmb(9u);
        v9 = *(v7 + 6);
        *a2 = *(v7 + 2);
        *(a2 + 16) = v9;
        v10 = *(v7 + 10);
        *(a2 + 32) = v10;
        *(a2 + 48) = *(v7 + 7);
        __dmb(9u);
        if (explicit == atomic_load_explicit(v7, memory_order_acquire))
        {
          break;
        }
      }

      caulk::concurrent::details::spinloop::spin(&v12);
      v3 = atomic_load(a1);
      if ((v3 & 2) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    *(a2 + 48) = 0;
    *&v10 = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return *&v10;
}

__n128 caulk::concurrent::atomic_value<avas::MinimalTimeStamp,2,3>::store(unsigned int *a1, uint64_t a2)
{
  for (i = 0; ; caulk::concurrent::details::spinloop::spin(&i))
  {
    v4 = atomic_load(a1);
    if ((v4 & 1) == 0)
    {
      v5 = v4;
      atomic_compare_exchange_strong(a1, &v5, v4 | 1);
      if (v5 == v4)
      {
        break;
      }
    }
  }

  v6 = v4 >> 2;
  v7 = v4 & 0xFFFFFFFC;
  v8 = &a1[16 * ((v4 >> 2) & 1)];
  atomic_store((2 * (v6 & 0x3FFFFFFF)) | 1, v8 + 2);
  result = *a2;
  v10 = *(a2 + 16);
  v11 = *(a2 + 32);
  *(v8 + 8) = *(a2 + 48);
  *(v8 + 2) = v10;
  *(v8 + 3) = v11;
  *(v8 + 1) = result;
  __dmb(0xBu);
  atomic_store(2 * v6, v8 + 2);
  atomic_store((v7 + 5) & 0xFFFFFFFC | 2, a1);
  return result;
}

__n128 caulk::concurrent::atomic_value<std::optional<avas::server::DeviceTimeObserver::AnchorInfo>,2,6>::store(unsigned int *a1, uint64_t a2)
{
  for (i = 0; ; caulk::concurrent::details::spinloop::spin(&i))
  {
    v4 = atomic_load(a1);
    if ((v4 & 1) == 0)
    {
      v5 = v4;
      atomic_compare_exchange_strong(a1, &v5, v4 | 1);
      if (v5 == v4)
      {
        break;
      }
    }
  }

  v6 = v4 >> 2;
  v7 = (v4 & 0xFFFFFFFC) + 5;
  v8 = &a1[16 * ((v4 >> 2) & 1)];
  atomic_store((2 * (v6 & 0x3FFFFFFF)) | 1, v8 + 16);
  result = *a2;
  *(v8 + 81) = *(a2 + 9);
  *(v8 + 18) = result;
  __dmb(0xBu);
  atomic_store(2 * v6, v8 + 16);
  atomic_store(v7 & 0xFFFFFFFC | 2, a1);
  return result;
}

void avas::CreateFixedPriorityDispatchQueue(const void **a1@<X0>, dispatch_qos_class_t a2@<W2>, id *a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = a1[1];
  }

  std::string::basic_string[abi:ne200100](__p, v6 + 5);
  if (v17 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if (v6)
  {
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    memmove(v7, v8, v6);
  }

  strcpy(v7 + v6, " (WL)");
  if (v17 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  inactive = dispatch_workloop_create_inactive(v9);
  dispatch_workloop_set_scheduler_priority();
  dispatch_activate(inactive);
  v11 = dispatch_queue_attr_make_initially_inactive(0);
  v12 = dispatch_queue_attr_make_with_autorelease_frequency(v11, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

  if (*(a1 + 23) >= 0)
  {
    v13 = a1;
  }

  else
  {
    v13 = *a1;
  }

  *a3 = dispatch_queue_create_with_target_V2(v13, v12, inactive);
  v14 = applesauce::dispatch::v1::queue::operator*(a3);
  dispatch_set_qos_class_floor(v14, a2, 0);

  v15 = applesauce::dispatch::v1::queue::operator*(a3);
  dispatch_activate(v15);

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2417065E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  applesauce::dispatch::v1::queue::~queue(v14);

  if (a14 < 0)
  {
    operator delete(__p);
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

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void avas::ScopedTrace::~ScopedTrace(avas::ScopedTrace *this)
{
  if (*this == 1)
  {
    v1 = *(this + 1);
    v2 = *(this + 1);
    v3 = *(this + 2);
    v4 = *(this + 3);
    v5 = *(this + 4);
    kdebug_trace();
  }
}

void caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},objc_object  {objcproto14NSSecureCoding}* {__strong},unsigned int>(void ()(NSError * {__strong},objc_object  {objcproto14NSSecureCoding}* {__strong},unsigned int),int)::{lambda(NSError *,objc_object  {objcproto14NSSecureCoding},unsigned int)#1}::operator()(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = a2;
  v6 = applesauce::dispatch::v1::queue::operator*(a1);
  dispatch_source_cancel(v6);

  (*(*(a1 + 8) + 16))();
}

void __destroy_helper_block_ea8_32c177_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongPU25objcproto14NSSecureCoding11objc_objectjEEEU13block_pointerFvDpT_ESC_iEUlS4_S7_jE_(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

void *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void *std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(result, a2);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_241706A74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
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
    if (v6 != a3)
    {
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

void std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::destroy(a1, *(a2 + 1));
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2 + 56);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(a2 + 64, a2[56]);
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl::findSlotForKey(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8);
  v3 = a2 % v2;
  if ((a2 % v2) >= 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(result + 8);
  }

  v5 = (v3 + v4 - 3);
  v6 = 0xFFFFFFFFLL;
  v7 = 1;
  v8 = a2 % v2;
  do
  {
    v9 = v5;
    v10 = atomic_load((result + 16 + 8 * v8));
    if (v10 == -1)
    {
      if (v6 >= 0)
      {
        v6 = v6;
      }

      else
      {
        v6 = v8;
      }
    }

    else
    {
      if (!v10)
      {
        v7 = 0;
        if (v6 >= 0)
        {
          v8 = v6;
        }

        else
        {
          v8 = v8;
        }

        return v7 | (v8 << 32);
      }

      if (*(v10 + 4) == a2)
      {
        return v7 | (v8 << 32);
      }
    }

    if (v9 >= 3)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(result + 8);
    }

    v5 = (v9 + v11 - 3);
    v8 = v9;
  }

  while (v9 != v3);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = 0;
    v8 = v6;
    return v7 | (v8 << 32);
  }

  __break(1u);
  return result;
}

BOOL caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl::addOrReplace(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  SlotForKey = caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl::findSlotForKey(a1, a2);
  if ((SlotForKey & 1) == 0)
  {
    operator new();
  }

  if (a4)
  {
    *(v7 + 8) = a3;
  }

  return (SlotForKey & 1) == 0;
}

uint64_t OpaqueObjectMgrInstance(void)
{
  if (atomic_load_explicit(&OpaqueObjectMgrInstance(void)::onceflag, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&OpaqueObjectMgrInstance(void)::onceflag, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<OpaqueObjectMgrInstance(void)::$_0 &&>>);
  }

  return OpaqueObjectMgr::sInstance;
}

BOOL caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::_addOrReplace(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  std::mutex::lock((a1 + 48));
  v8 = atomic_load((a1 + 8));
  v9 = *a1 + 1;
  *a1 = v9;
  if (v8)
  {
    v10 = 16 * v9;
    v11 = *(v8 + 8);
    if (v10 / v11 < 0xB)
    {
      goto LABEL_6;
    }

    v12 = 2 * v11;
  }

  else
  {
    v12 = 8;
  }

  v8 = caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::rehash(a1, v12);
LABEL_6:
  v13 = caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl::addOrReplace(v8, a2, a3, a4);
  if (v13)
  {
    v14 = atomic_load((a1 + 16));
    if (v14 <= 0)
    {
      std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl>>>::__base_destruct_at_end[abi:ne200100](a1 + 24, *(a1 + 24));
    }
  }

  else
  {
    --*a1;
  }

  std::mutex::unlock((a1 + 48));
  return v13;
}

uint64_t std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl>>>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t *a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = std::allocator_traits<std::allocator<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl>>>>::destroy[abi:ne200100]<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl>>,void,0>(v3, i))
  {
    --i;
  }

  *(v3 + 8) = a2;
  return result;
}

_BYTE *avas::server::SessionCreationDescription::GetClientProcessNameString@<X0>(avas::server::SessionCreationDescription *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 6);
  if (v4)
  {
    v5 = [v4 UTF8String];

    return std::string::basic_string[abi:ne200100]<0>(a2, v5);
  }

  else
  {
    v7 = *(this + 9);

    return caulk::platform::process_name(v7);
  }
}

_BYTE *AudioSession::FormatSessionIDAsHex@<X0>(AudioSession *this@<X0>, _BYTE *a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x20uLL, "0x%x", this);
  result = std::string::basic_string[abi:ne200100]<0>(a2, __str);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2417074A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  avas::server::SessionCreationDescription::~SessionCreationDescription(&a9);

  _Unwind_Resume(a1);
}

void avas::server::LegacySessionManager::CreateSession(const os_unfair_lock *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v10 = a3;
  v9 = a4;
  if (*(a2 + 40) != 1886546285)
  {
    os_unfair_lock_lock(&a1[72]);
    avas::server::LegacySessionManager::CreateSessionPriv(a1, a2, v10, v9);
  }

  avas::server::LegacySessionManager::FindOrCreatePrimarySession(a1, a2, v10, v9, 1, a5);
}

void sub_241707588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v11 + 72);

  _Unwind_Resume(a1);
}

void sub_241707888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::mutex::~mutex((v13 + 224));
  std::__list_imp<NSDictionary * {__strong}>::clear(v14);
  a10 = (v13 + 168);
  std::vector<std::weak_ptr<avas::server::AudioSessionInfo>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::__tree<std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::vector<avas::server::AudioSessionInfo::PlayerState>>>>::destroy(v13 + 136, *v15);
  v17 = *(v11 + 360);
  if (v17)
  {
    *(v11 + 368) = v17;
    operator delete(v17);
  }

  if (*(v11 + 352) == 1)
  {
  }

  avas::server::AudioSessionInfo::DebugState::~DebugState((v13 + 8));
  std::unique_ptr<avas::server::PickableRoute>::reset[abi:ne200100](v13, 0);

  avas::server::ConstAudioSessionInfo::~ConstAudioSessionInfo(v11);
  _Unwind_Resume(a1);
}

void avas::server::LegacySessionManager::FindOrCreatePrimarySession(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  v58 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  if (*(a2 + 40) != 1886546285)
  {
    v34 = _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:v34 process:? delegate:?];
  }

  os_unfair_lock_lock((a1 + 288));
  os_unfair_lock_lock((a1 + 8));
  v13 = *(a1 + 16);
  v14 = *(a2 + 16);
  v39 = *a2;
  v40[0] = v14;
  *(v40 + 12) = *(a2 + 28);
  v41 = *(a2 + 48);
  v42 = *(a2 + 56);
  v43 = *(a2 + 64);
  v44 = *(a2 + 72);
  v45 = *(a2 + 80);
  v46 = *(a2 + 88);
  v15 = *(a2 + 104);
  v47 = *(a2 + 96);
  v48 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = (a1 + 24);
  v17 = *(a2 + 120);
  v49 = *(a2 + 112);
  v50 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(a2 + 128);
  v51 = v18;
  if (v13 == v16)
  {
    goto LABEL_24;
  }

  v35 = v11;
  do
  {
    v20 = v13[5];
    v19 = v13[6];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = (*(*v20 + 80))(v20);
    if (!avas::server::ProcessIdentity::operator==(v21, &v39))
    {
      v22 = 0;
      if (!v19)
      {
        goto LABEL_15;
      }

LABEL_14:
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      goto LABEL_15;
    }

    v22 = avas::server::ConstAudioSessionInfo::GetSessionType(v20) == 1886546285;
    if (v19)
    {
      goto LABEL_14;
    }

LABEL_15:
    if (v22)
    {
      goto LABEL_23;
    }

    v23 = v13[1];
    if (v23)
    {
      do
      {
        v24 = v23;
        v23 = *v23;
      }

      while (v23);
    }

    else
    {
      do
      {
        v24 = v13[2];
        v25 = *v24 == v13;
        v13 = v24;
      }

      while (!v25);
    }

    v13 = v24;
  }

  while (v24 != v16);
  v13 = (a1 + 24);
LABEL_23:
  v18 = v51;
  v11 = v35;
LABEL_24:

  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if (v13 == v16)
  {
    os_unfair_lock_unlock((a1 + 8));
    if (a5 == 1)
    {
      avas::server::LegacySessionManager::CreateSessionPriv(a1, a2, v11, v12);
    }

    *a6 = 0;
    a6[1] = 0;
  }

  else
  {
    v26 = v13[5];
    *a6 = v26;
    v27 = v13[6];
    a6[1] = v27;
    if (v27)
    {
      atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
    }

    v28 = (*(*v26 + 72))(&v37, v26);
    v29 = *avas::server::gSessionServerLog(v28);
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
    if (v30)
    {
      *buf = 136315394;
      v53 = "ServerSessionManager.mm";
      v54 = 1024;
      v55 = 695;
      _os_log_impl(&dword_241701000, v29, OS_LOG_TYPE_INFO, "%25s:%-5d Found an existing primary session for the client process.", buf, 0x12u);
    }

    if (a5 == 1 && !*(v37 + 176))
    {
      v31 = *avas::server::gSessionServerLog(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = (*(*v26 + 88))(v26);
        *buf = 136315650;
        v53 = "ServerSessionManager.mm";
        v54 = 1024;
        v55 = 697;
        v56 = 2080;
        v57 = v32;
        _os_log_impl(&dword_241701000, v31, OS_LOG_TYPE_INFO, "%25s:%-5d Setting the XPC connection for %s", buf, 0x1Cu);
      }

      objc_storeStrong((v37 + 176), a3);
    }

    if (v38)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
    }

    os_unfair_lock_unlock((a1 + 8));
  }

  os_unfair_lock_unlock((a1 + 288));

  v33 = *MEMORY[0x277D85DE8];
}

{
  v6 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v6;
  v8 = *(a2 + 32);
  v9 = 1886546285;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  avas::server::LegacySessionManager::FindOrCreatePrimarySession(a1, v7, a3, a4, a5, a6);

  if (*(&v17 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v17 + 1));
  }

  if (*(&v16 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
  }
}

void sub_241707DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  os_unfair_lock_unlock(v15 + 2);
  os_unfair_lock_unlock(v15 + 72);

  _Unwind_Resume(a1);
}

void avas::server::ConstAudioSessionInfo::ConstAudioSessionInfo(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  a3;
  a4;
  *a1 = &unk_28535AA40;
  v8 = *a2;
  v7 = *(a2 + 16);
  *(a1 + 40) = *(a2 + 32);
  *(a1 + 8) = v8;
  *(a1 + 24) = v7;
  v9 = avas::server::SessionCreationDescription::SelectSourceProcessIdentity(a2);
  v10 = *v9;
  v11 = *(v9 + 16);
  *(a1 + 80) = *(v9 + 32);
  *(a1 + 48) = v10;
  *(a1 + 64) = v11;
  v12 = *(a2 + 96);
  if (v12)
  {
    *(a1 + 88) = (*(*v12 + 16))(v12);
    v13 = 1;
  }

  else
  {
    v13 = 0;
    *(a1 + 88) = 0;
  }

  *(a1 + 92) = v13;
  std::allocate_shared[abi:ne200100]<avas::server::AudioSessionRemoteClientManager,std::allocator<avas::server::AudioSessionRemoteClientManager>,avas::server::SessionCreationDescription const&,NSXPCConnection * {__strong}&,0>();
}

void sub_24170841C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, const void *a18, const void *a19, id a20)
{
  applesauce::CF::ObjectRef<__SecTask *>::~ObjectRef(&a18);
  applesauce::CF::ObjectRef<__SecTask *>::~ObjectRef(&a19);

  v23 = *(v20 + 136);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  std::unique_ptr<avas::server::mx::MXAccessor>::reset[abi:ne200100](v21, 0);

  v24 = *(v20 + 104);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::lookup<(caulk::concurrent::guarded_lookup_hash_table_options)0,void>(uint64_t a1, unsigned int a2)
{
  v2 = (a1 + 16);
  atomic_fetch_add((a1 + 16), 1u);
  result = atomic_load((a1 + 8));
  if (result)
  {
    caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl::findSlotForKey(result, a2);
    if (v4)
    {
      result = *(v4 + 8);
    }

    else
    {
      result = 0;
    }
  }

  atomic_fetch_add(v2, 0xFFFFFFFF);
  return result;
}

void avas::server::LegacySessionManager::CreateSessionPriv(const os_unfair_lock *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *MEMORY[0x277D85DE8];
  a3;
  a4;
  os_unfair_lock_assert_owner(a1 + 72);
  std::allocate_shared[abi:ne200100]<avas::server::AudioSessionInfo,std::allocator<avas::server::AudioSessionInfo>,avas::server::SessionCreationDescription const&,NSXPCConnection * {__strong}&,objc_object  {objcproto28AVAudioSessionServerDelegate}* {__strong}&,std::shared_ptr<avas::server::SpatialManager> &,avas::server::mx::MXAccessorFactory *,0>();
}

void sub_241708C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, const void *a22, uint64_t a23, std::__shared_weak_count *a24, void *a25, void *a26, uint8_t buf, int a28, int a29, __int16 a30, uint64_t a31)
{
  os_unfair_lock_unlock(v33);

  applesauce::CF::ObjectRef<void const*>::~ObjectRef(&a22);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  _Unwind_Resume(a1);
}

uint64_t avas::server::SessionCreationDescription::SelectSourceProcessIdentity(uint64_t this)
{
  if (*(this + 40) == 1935830119)
  {
    v1 = *(this + 96);
    if (v1)
    {
      return v1 + 48;
    }
  }

  return this;
}

void *std::__shared_ptr_emplace<avas::server::AudioSessionInfo>::__shared_ptr_emplace[abi:ne200100]<avas::server::SessionCreationDescription const&,NSXPCConnection * {__strong}&,objc_object  {objcproto28AVAudioSessionServerDelegate}* {__strong}&,std::shared_ptr<avas::server::SpatialManager> &,avas::server::mx::MXAccessorFactory *,std::allocator<avas::server::AudioSessionInfo>,0>(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28535B418;
  avas::server::AudioSessionInfo::AudioSessionInfo(a1 + 3, a2, *a3, *a4, a5, *a6);
  return a1;
}

void *std::__shared_ptr_emplace<avas::server::AudioSessionRemoteClientManager>::__shared_ptr_emplace[abi:ne200100]<avas::server::SessionCreationDescription const&,NSXPCConnection * {__strong}&,std::allocator<avas::server::AudioSessionRemoteClientManager>,0>(void *a1, const avas::server::SessionCreationDescription *a2, NSXPCConnection **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28535ABD0;
  avas::server::AudioSessionRemoteClientManager::AudioSessionRemoteClientManager((a1 + 3), a2, *a3);
  return a1;
}

void avas::server::AudioSessionRemoteClientManager::AudioSessionRemoteClientManager(avas::server::AudioSessionRemoteClientManager *this, const avas::server::SessionCreationDescription *a2, NSXPCConnection *a3)
{
  a3;
  *this = 0;
  std::allocate_shared[abi:ne200100]<avas::server::AudioSessionRemoteClient,std::allocator<avas::server::AudioSessionRemoteClient>,avas::server::SessionCreationDescription const&,NSXPCConnection * {__strong}&,0>();
}

void avas::server::AudioSessionRemoteClient::AudioSessionRemoteClient(avas::server::AudioSessionRemoteClient *this, const avas::server::SessionCreationDescription *a2, NSXPCConnection *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  BaseOpaqueObject::BaseOpaqueObject(this);
  *this = &unk_28535B168;
  *(this + 2) = this + 16;
  *(this + 3) = this + 16;
  *(this + 2) = xmmword_241782540;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
  *(this + 13) = 850045863;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 20) = 0;
  *(this + 42) = *(a2 + 10);
  *(this + 22) = v5;
  avas::server::SessionCreationDescription::GetClientProcessNameString(a2, this + 184);
  avas::server::SessionCreationDescription::GetClientBundleIDString(a2, this + 208);
  v6 = *a2;
  v7 = *(a2 + 1);
  *(this + 33) = *(a2 + 4);
  *(this + 248) = v7;
  *(this + 232) = v6;
  v8 = *(this + 2);
  avas::server::SessionCreationDescription::BuildStringRepresentation(a2, this + 272);
  v9 = *(this + 2);
  avas::server::SessionCreationDescription::BuildJSONRepresentation(a2);
}

void BaseOpaqueObject::BaseOpaqueObject(BaseOpaqueObject *this)
{
  *this = &unk_28535AEE8;
  v2 = OpaqueObjectMgrInstance();
  *(this + 2) = OpaqueObjectMgr::add(v2, this);
}

void *std::__shared_ptr_emplace<avas::server::AudioSessionRemoteClient>::__shared_ptr_emplace[abi:ne200100]<avas::server::SessionCreationDescription const&,NSXPCConnection * {__strong}&,std::allocator<avas::server::AudioSessionRemoteClient>,0>(void *a1, const avas::server::SessionCreationDescription *a2, NSXPCConnection **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28535B130;
  avas::server::AudioSessionRemoteClient::AudioSessionRemoteClient((a1 + 3), a2, *a3);
  return a1;
}

uint64_t OpaqueObjectMgr::add(atomic_uint *this, BaseOpaqueObject *a2)
{
  do
  {
    add = atomic_fetch_add(this + 28, 1u);
    if ((add & 0x80000000) != 0)
    {
      v5 = (add & 0x7FFFFFFF) + 4096;
      atomic_compare_exchange_strong(this + 28, &add, v5);
      add = v5;
    }

    v6 = caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::lookup<(caulk::concurrent::guarded_lookup_hash_table_options)0,void>(this, add);
  }

  while ((v7 & 1) != 0 && v6);
  caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::_addOrReplace(this, add, a2, 0);
  return add;
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string,std::string,0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[3],char [3],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const(&)[3]>();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[5],char [5],0>(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const(&)[5]>();
}

_BYTE *avas::server::SessionCreationDescription::GetClientBundleIDString@<X0>(avas::server::SessionCreationDescription *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(this + 7);
  if (v3)
  {
    v4 = [v3 UTF8String];
  }

  else
  {
    v4 = "";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v4);
}

void avas::server::SessionCreationDescription::BuildStringRepresentation(avas::server::ConstAudioSessionInfo **this@<X0>, _BYTE *a2@<X8>)
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = *(this + 9);
  avas::server::SessionCreationDescription::GetClientProcessNameString(this, v39);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v30);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "sid:0x", 6);
  *(v5 + *(*v5 - 24) + 8) = *(v5 + *(*v5 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x245CEE9C0]();
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, ", ", 2);
  if ((v40 & 0x80u) == 0)
  {
    v7 = v39;
  }

  else
  {
    v7 = v39[0];
  }

  if ((v40 & 0x80u) == 0)
  {
    v8 = v40;
  }

  else
  {
    v8 = v39[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "(", 1);
  *(v9 + *(*v9 - 24) + 8) = *(v9 + *(*v9 - 24) + 8) & 0xFFFFFFB5 | 2;
  v10 = MEMORY[0x245CEE9B0]();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ")", 1);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, ", ", 2);
  v12 = *(this + 10);
  v13 = bswap32(v12);
  v42 = v13;
  if ((v13 - 32) > 0x5E || ((v13 >> 8) - 32) > 0x5E || ((v13 << 8 >> 24) - 32) > 0x5E || ((v13 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v29, v12);
  }

  else
  {
    v43 = 39;
    __s = 39;
    std::string::basic_string[abi:ne200100]<0>(&v29, &__s);
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v29;
  }

  else
  {
    v14 = v29.__r_.__value_.__r.__words[0];
  }

  v15 = strlen(v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v14, v15);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  v16 = this[12];
  if (v16)
  {
    v17 = *(v16 + 21);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "; srcid:0x", 10);
    *(v18 + *(*v18 - 24) + 8) = *(v18 + *(*v18 - 24) + 8) & 0xFFFFFFB5 | 8;
    v19 = (*(*this[12] + 16))(this[12]);
    MEMORY[0x245CEE9C0](v18, v19);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, ", ", 2);
    v21 = avas::server::ConstAudioSessionInfo::ClientProcessName(this[12]);
    v22 = strlen(v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v21, v22);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "(", 1);
    *(v23 + *(*v23 - 24) + 8) = *(v23 + *(*v23 - 24) + 8) & 0xFFFFFFB5 | 2;
    v24 = MEMORY[0x245CEE9B0]();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ")", 1);
  }

  if ((v37 & 0x10) != 0)
  {
    v26 = v36;
    if (v36 < v33)
    {
      v36 = v33;
      v26 = v33;
    }

    locale = v32[4].__locale_;
  }

  else
  {
    if ((v37 & 8) == 0)
    {
      v25 = 0;
      a2[23] = 0;
      goto LABEL_33;
    }

    locale = v32[1].__locale_;
    v26 = v32[3].__locale_;
  }

  v25 = v26 - locale;
  if ((v26 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v25 >= 0x17)
  {
    operator new();
  }

  a2[23] = v25;
  if (v25)
  {
    memmove(a2, locale, v25);
  }

LABEL_33:
  a2[v25] = 0;
  v30 = *MEMORY[0x277D82828];
  *(&v30 + *(v30 - 24)) = *(MEMORY[0x277D82828] + 24);
  v31 = MEMORY[0x277D82878] + 16;
  if (v35 < 0)
  {
    operator delete(__p);
  }

  v31 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v32);
  std::ostream::~ostream();
  MEMORY[0x245CEEAC0](&v38);
  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_241709BB8(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (a8 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a9, MEMORY[0x277D82828]);
  MEMORY[0x245CEEAC0](va);
  if (*(v22 - 65) < 0)
  {
    operator delete(*(v22 - 88));
  }

  _Unwind_Resume(a1);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_241709D70(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x245CEEAC0](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x245CEEA50](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_241709E2C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x245CEE970](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x245CEE980](v13);
  return a1;
}

void sub_24170A09C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x245CEE980](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x24170A07CLL);
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
      std::string::basic_string[abi:ne200100](__p, v12, __c);
      v13 = v18 >= 0 ? __p : __p[0];
      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_24170A270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void avas::server::SessionCreationDescription::BuildJSONRepresentation(avas::server::SessionCreationDescription *this)
{
  v1 = *(this + 9);
  ClientProcessNameString = avas::server::SessionCreationDescription::GetClientProcessNameString(this, __p);
  avas::server::SessionCreationDescription::JSONFormattedIdentity(ClientProcessNameString, v1, __p);
}

void sub_24170A4AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(&a9);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref((v24 - 48));
  _Unwind_Resume(a1);
}

void avas::server::SessionCreationDescription::JSONFormattedIdentity(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  [MEMORY[0x277CCACA8] stringWithCString:a3 encoding:1];
  [MEMORY[0x277CCACA8] stringWithFormat:@"%@(%d)", objc_claimAutoreleasedReturnValue(), a2];
  objc_claimAutoreleasedReturnValue();
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[3],char [3],0>(v4);
}

void sub_24170A78C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v35 = -64;
  v36 = v33;
  do
  {
    v36 = nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(v36) - 32;
    v35 += 32;
  }

  while (v35);
  v37 = &a23;
  v38 = -64;
  do
  {
    v37 = nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(v37) - 32;
    v38 += 32;
  }

  while (v38);
  v39 = &a31;
  v40 = -64;
  do
  {
    v39 = nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(v39) - 32;
    v40 += 32;
  }

  while (v40);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24170A9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  MEMORY[0x245CEEB60](v12, 0x20C40960023A9);
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(a1);
}

void avas::server::ProcessIdentity::SecurityTask(avas::server::ProcessIdentity *this@<X0>, SecTaskRef *a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  if (*(this + 32) == 1)
  {
    v2 = *(this + 1);
    *v5.val = *this;
    *&v5.val[4] = v2;
    *a2 = SecTaskCreateWithAuditToken(0, &v5);
  }

  else
  {
    v3 = *avas::server::gSessionServerLog(this);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5.val[0] = 136315394;
      *&v5.val[1] = "ProcessIdentityServer.h";
      LOWORD(v5.val[3]) = 1024;
      *(&v5.val[3] + 2) = 46;
      _os_log_impl(&dword_241701000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Error while getting SecTask: token not valid", &v5, 0x12u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(void (****a1)(void), uint64_t **a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a2;
  if (v10 <= 4)
  {
    if (*a2 > 1u)
    {
      if (v10 != 2)
      {
        if (v10 != 3)
        {
          if (v10 == 4)
          {
            v12 = *a1;
            v13 = (**a1)[1];
            *(a2 + 8);
            goto LABEL_71;
          }

LABEL_148:
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
        }

        v25 = *a1;
        (***a1)();
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, a2[1], a4);
        v13 = ***a1;
LABEL_134:

        return v13();
      }

      v33 = *a1;
      v34 = **a1;
      if (*a2[1] != a2[1][1])
      {
        if (!a3)
        {
          (*v34)();
          v56 = a2[1];
          v58 = *v56;
          v57 = v56[1];
          if (v58 != v57 - 16)
          {
            do
            {
              nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v58, 0, a4, a5, a6);
              (***a1)();
              v58 += 16;
              v59 = a2[1];
              v57 = v59[1];
            }

            while (v58 != v57 - 16);
            v58 = *v59;
          }

          if (v58 == v57)
          {
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
          }

          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v57 - 16, 0, a4, a5, a6);
          goto LABEL_117;
        }

        v34[1]();
        v35 = a6 + a5;
        v36 = a1 + 76;
        v37 = *(a1 + 631);
        if ((v37 & 0x80000000) != 0)
        {
          v38 = a1[77];
          if (v38 < v35)
          {
            goto LABEL_144;
          }
        }

        else if (v35 > v37)
        {
          v38 = *(a1 + 631);
LABEL_144:
          std::string::resize((a1 + 76), 2 * v38, 32);
        }

        v78 = a2[1];
        v80 = *v78;
        v79 = v78[1];
        if (v80 != v79 - 16)
        {
          do
          {
            v81 = a1 + 76;
            if (*(a1 + 631) < 0)
            {
              v81 = *v36;
            }

            ((**a1)[1])(*a1, v81, (a6 + a5));
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v80, 1, a4, a5, (a6 + a5));
            ((**a1)[1])(*a1, ",\n", 2);
            v80 += 16;
            v82 = a2[1];
            v79 = v82[1];
          }

          while (v80 != v79 - 16);
          v80 = *v82;
        }

        if (v80 == v79)
        {
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
        }

        v83 = a1 + 76;
        if (*(a1 + 631) < 0)
        {
          v83 = *v36;
        }

        ((**a1)[1])(*a1, v83, (a6 + a5));
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, a2[1][1] - 16, 1, a4, a5, (a6 + a5));
        (***a1)();
        if (*(a1 + 631) < 0)
        {
          v36 = *v36;
        }

        ((**a1)[1])(*a1, v36, a6);
LABEL_117:
        v13 = ***a1;
        goto LABEL_134;
      }

      v44 = v34[1];
      goto LABEL_45;
    }

    if (*a2)
    {
      v15 = *a1;
      v16 = **a1;
      if (!a2[1][2])
      {
        v44 = v16[1];
LABEL_45:

        return v44();
      }

      if (!a3)
      {
        (*v16)();
        v47 = a2[1];
        v48 = *v47;
        if (v47[2] != 1)
        {
          v49 = 0;
          do
          {
            (***a1)(*a1, 34);
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v48 + 4, a4);
            ((**a1)[1])(*a1, ":", 2);
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v48 + 7, 0, a4, a5, a6);
            (***a1)();
            v50 = v48[1];
            v51 = v48;
            if (v50)
            {
              do
              {
                v48 = v50;
                v50 = *v50;
              }

              while (v50);
            }

            else
            {
              do
              {
                v48 = v51[2];
                v52 = *v48 == v51;
                v51 = v48;
              }

              while (!v52);
            }

            ++v49;
            v47 = a2[1];
          }

          while (v49 < v47[2] - 1);
        }

        v53 = v47 + 1;
        if (v48 == v53)
        {
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
        }

        v54 = v48[1];
        if (v54)
        {
          do
          {
            v55 = v54;
            v54 = *v54;
          }

          while (v54);
        }

        else
        {
          v84 = v48;
          do
          {
            v55 = v84[2];
            v52 = *v55 == v84;
            v84 = v55;
          }

          while (!v52);
        }

        if (v55 != v53)
        {
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
        }

        (***a1)(*a1, 34);
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v48 + 4, a4);
        ((**a1)[1])(*a1, ":", 2);
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v48 + 7, 0, a4, a5, a6);
        goto LABEL_133;
      }

      v16[1]();
      v17 = a6 + a5;
      v18 = a1 + 76;
      v19 = *(a1 + 631);
      if ((v19 & 0x80000000) != 0)
      {
        v20 = a1[77];
        if (v20 < v17)
        {
          goto LABEL_142;
        }
      }

      else if (v17 > v19)
      {
        v20 = *(a1 + 631);
LABEL_142:
        std::string::resize((a1 + 76), 2 * v20, 32);
      }

      v69 = a2[1];
      v70 = *v69;
      if (v69[2] == 1)
      {
        v71 = *v69;
      }

      else
      {
        v72 = 0;
        do
        {
          v73 = a1 + 76;
          if (*(a1 + 631) < 0)
          {
            v73 = *v18;
          }

          ((**a1)[1])(*a1, v73, (a6 + a5));
          (***a1)();
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v70 + 4, a4);
          ((**a1)[1])(*a1, ": ", 3);
          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v70 + 7, 1, a4, a5, (a6 + a5));
          ((**a1)[1])(*a1, ",\n", 2);
          v74 = v70[1];
          if (v74)
          {
            do
            {
              v71 = v74;
              v74 = *v74;
            }

            while (v74);
          }

          else
          {
            do
            {
              v71 = v70[2];
              v52 = *v71 == v70;
              v70 = v71;
            }

            while (!v52);
          }

          ++v72;
          v69 = a2[1];
          v70 = v71;
        }

        while (v72 < v69[2] - 1);
      }

      v75 = v69 + 1;
      if (v71 == v75)
      {
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
      }

      v76 = v71[1];
      if (v76)
      {
        do
        {
          v77 = v76;
          v76 = *v76;
        }

        while (v76);
      }

      else
      {
        v85 = v71;
        do
        {
          v77 = v85[2];
          v52 = *v77 == v85;
          v85 = v77;
        }

        while (!v52);
      }

      if (v77 != v75)
      {
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump();
      }

      v86 = a1 + 76;
      if (*(a1 + 631) < 0)
      {
        v86 = *v18;
      }

      ((**a1)[1])(*a1, v86, (a6 + a5));
      (***a1)();
      nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(a1, v71 + 4, a4);
      ((**a1)[1])(*a1, ": ", 3);
      nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump(a1, v71 + 7, 1, a4, a5, (a6 + a5));
      (***a1)();
      if (*(a1 + 631) < 0)
      {
        v87 = *v18;
      }

      v68 = (**a1)[1];
LABEL_132:
      v68();
LABEL_133:
      v13 = ***a1;
      goto LABEL_134;
    }

    v23 = *a1;
    v13 = (**a1)[1];
LABEL_71:

    return v13();
  }

  if (*a2 <= 6u)
  {
    if (v10 == 5)
    {
      v24 = a2[1];

      return nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<long long,0>(a1, v24);
    }

    else
    {
      if (v10 != 6)
      {
        goto LABEL_148;
      }

      v21 = a2[1];

      return nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned long long,0>(a1, v21);
    }
  }

  else
  {
    switch(v10)
    {
      case 7u:
        v39 = *(a2 + 1);

        return nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_float(a1, v39);
      case 8u:
        v26 = *a1;
        v27 = (**a1)[1];
        if (a3)
        {
          v27();
          v28 = (a6 + a5);
          v29 = a1 + 76;
          v30 = *(a1 + 631);
          if ((v30 & 0x80000000) != 0)
          {
            v60 = a1[77];
            if (v60 >= v28)
            {
              v31 = *a1;
LABEL_76:
              v32 = *v29;
              goto LABEL_77;
            }
          }

          else
          {
            if (v28 <= v30)
            {
              v31 = *a1;
              v32 = a1 + 76;
LABEL_77:
              ((*v31)[1])(v31, v32, v28);
              ((**a1)[1])(*a1, "bytes: [", 10);
              v61 = *a2[1];
              v62 = a2[1][1];
              v63 = *a2[1];
              if (v63 != v62)
              {
                for (; v63 != v62 - 1; v62 = a2[1][1])
                {
                  v64 = *v63++;
                  nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, v64);
                  ((**a1)[1])(*a1, ", ", 2);
                }

                nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v62 - 1));
              }

              ((**a1)[1])(*a1, "],\n", 3);
              v65 = a1 + 76;
              if (*(a1 + 631) < 0)
              {
                v65 = *v29;
              }

              ((**a1)[1])(*a1, v65, v28);
              ((**a1)[1])(*a1, "subtype: ", 11);
              v66 = a2[1];
              if (*(v66 + 25) == 1)
              {
                nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v66 + 24));
              }

              else
              {
                ((**a1)[1])(*a1, "null", 4);
              }

              (***a1)(*a1, 10);
              if (*(a1 + 631) < 0)
              {
                v67 = *v29;
              }

              v68 = (**a1)[1];
              goto LABEL_132;
            }

            v60 = *(a1 + 631);
          }

          std::string::resize((a1 + 76), 2 * v60, 32);
          v31 = *a1;
          v32 = a1 + 76;
          if ((*(a1 + 631) & 0x80000000) == 0)
          {
            goto LABEL_77;
          }

          goto LABEL_76;
        }

        v27();
        v40 = *a2[1];
        v41 = a2[1][1];
        v42 = *a2[1];
        if (v42 != v41)
        {
          while (v42 != v41 - 1)
          {
            v43 = *v42++;
            nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, v43);
            (***a1)(*a1, 44);
            v41 = a2[1][1];
          }

          nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v41 - 1));
        }

        ((**a1)[1])(*a1, "],subtype:", 12);
        v45 = a2[1];
        if (*(v45 + 25) != 1)
        {
          v13 = (**a1)[1];
          goto LABEL_71;
        }

        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<unsigned char,0>(a1, *(v45 + 24));
        v46 = ***a1;

        return v46();
      case 9u:
        v14 = *a1;
        v13 = (**a1)[1];
        goto LABEL_71;
      default:
        goto LABEL_148;
    }
  }
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::dump(void *a1@<X8>)
{
  v1 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_24170BD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~serializer(va);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  _Unwind_Resume(a1);
}

void **std::vector<std::shared_ptr<avas::server::AudioSessionInfo>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::weak_ptr<avas::server::AudioSessionInfo>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<avas::server::AudioSessionInfo>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void std::__split_buffer<std::shared_ptr<avas::server::AudioSessionInfo>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void **std::__split_buffer<std::shared_ptr<avas::server::AudioSessionInfo>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<avas::server::AudioSessionInfo>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t avas::server::PropertyStorage::PropertyStorage(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v3];

  return a1;
}

void *std::__shared_ptr_emplace<avas::server::PropertyStorage>::__shared_ptr_emplace[abi:ne200100]<NSDictionary<NSString *,objc_object  {objcproto14NSSecureCoding}*> * {__strong},std::allocator<avas::server::PropertyStorage>,0>(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28535AC08;
  avas::server::PropertyStorage::PropertyStorage(a1 + 3, *a2);
  return a1;
}

void avas::server::mx::MXAccessorFactory::CreateMXObject(avas::server::mx::MXAccessorFactory *this, uint64_t a2, const avas::server::SessionCreationDescription *a3)
{
  v3 = *(a2 + 40);
  if (v3 == 1935897189)
  {
    operator new();
  }

  if (*(a2 + 88) == 1)
  {
    operator new();
  }

  if (v3 == 1937012066)
  {
    operator new();
  }

  operator new();
}

avas::server::mx::MXObjectStandard *avas::server::mx::MXObjectStandard::MXObjectStandard(avas::server::mx::MXObjectStandard *this, uint64_t a2, const avas::server::SessionCreationDescription *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_28535AC80;
  v6 = *(a3 + 12);
  v7 = *(a3 + 10) != 1935830119 || v6 == 0;
  v8 = !v7;
  if (v7)
  {
    if ((*(a3 + 88) & 1) == 0)
    {
      CoreSession = avas::server::mx::MXObjectBase::CreateCoreSession(this, a3);
      if (CoreSession)
      {
        v29 = *avas::server::gSessionServerLog(CoreSession);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          __p.val[0] = 136315394;
          *&__p.val[1] = "MXObjectStandard.mm";
          LOWORD(__p.val[3]) = 1024;
          *(&__p.val[3] + 2) = 37;
          _os_log_impl(&dword_241701000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create core session", &__p, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x245CEE8B0](exception, "Failed to create core session");
      }

      v13 = *(this + 3);
      *(this + 3) = v12;
      if (v13)
      {
        CFRelease(v13);
      }
    }

    v10 = 2;
  }

  else
  {
    (*(**(*(v6 + 120) + 8) + 72))(&__p);
    v9 = *(this + 3);
    *(this + 3) = *__p.val;
    *__p.val = v9;
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = 1;
  }

  MXSessionRef = avas::server::mx::MXObjectBase::CreateMXSessionRef(this, a3);
  if (!MXSessionRef)
  {
    v28 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEE8B0](v28, "CMSession already exists");
  }

  cf = MXSessionRef;
  avas::server::mx::MXObjectBase::SetMXSessionRef(this, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  avas::server::mx::MXObjectBase::SetClientType(this, v10);
  if (*(a3 + 10) == 1886546285)
  {
    avas::server::mx::MXObjectBase::SetIsSharedAVAudioSessionInstance(this, 1);
  }

  if ((v8 & 1) == 0)
  {
    avas::server::SessionCreationDescription::BuildStringRepresentation(a3, &__p);
    if ((__p.val[5] & 0x80000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = *__p.val;
    }

    v16 = strlen(p_p);
    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v17 = v16;
    if (v16 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v16;
    if (v16)
    {
      memmove(&__dst, p_p, v16);
    }

    __dst.__r_.__value_.__s.__data_[v17] = 0;
    if (SHIBYTE(__p.val[5]) < 0)
    {
      operator delete(*__p.val);
    }

    v18 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v32, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      v32 = __dst;
    }

    v19 = avas::server::mx::MXObjectBase::buildClientNameString(this, &v32);
    avas::server::mx::MXObjectBase::SetClientName(this, v19);

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    avas::server::mx::MXObjectBase::SetCoreSessionID(this, a2);
    avas::server::mx::MXObjectBase::SetClientPID(this, *(a3 + 9));
    avas::server::ProcessIdentity::SecurityTask(a3, &v31);
    v21 = v31;
    if (!v31)
    {
      v22 = *avas::server::gSessionServerLog(v20);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a3 + 9);
        __p.val[0] = 136315650;
        *&__p.val[1] = "MXObjectStandard.mm";
        LOWORD(__p.val[3]) = 1024;
        *(&__p.val[3] + 2) = 74;
        HIWORD(__p.val[4]) = 1024;
        __p.val[5] = v23;
        _os_log_impl(&dword_241701000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d PID %d of description has an invalid audit token", &__p, 0x18u);
      }

      v21 = v31;
    }

    avas::server::mx::MXObjectBase::SetSecurityTask(this, v21);
    v24 = *(a3 + 1);
    *__p.val = *a3;
    *&__p.val[4] = v24;
    v36 = *(a3 + 8);
    if ((v36 & 1) == 0)
    {
      v27 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v27 process:? delegate:?];
    }

    avas::server::mx::MXObjectBase::SetAuditToken(this, &__p);
    if (v31)
    {
      CFRelease(v31);
    }

    if (v18 < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return this;
}

void avas::server::HandleMXNotification(uint64_t IsValid, AudioSession *a2, void *a3, uint64_t a4, CFPropertyListRef plist)
{
  v16 = *MEMORY[0x277D85DE8];
  if (plist)
  {
    IsValid = CFPropertyListIsValid(plist, kCFPropertyListXMLFormat_v1_0);
    if (!IsValid)
    {
      v8 = *avas::server::gSessionServerLog(IsValid);
      IsValid = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      if (IsValid)
      {
        *buf = 136315650;
        v11 = "AudioSessionServerImpNotificationHandlers.mm";
        v12 = 1024;
        v13 = 736;
        v14 = 2112;
        v15 = a3;
        _os_log_impl(&dword_241701000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid notification payload for %@", buf, 0x1Cu);
      }
    }
  }

  avas::server::HandleMXNotificationCallback(IsValid, a2, a3, a4, plist);
  v9 = *MEMORY[0x277D85DE8];
}

id avas::server::GetASCallbackQueue(avas::server *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.coreaudio.ASCallbackQueue");
    avas::CreateFixedPriorityDispatchQueue(__p, QOS_CLASS_USER_INTERACTIVE, &avas::server::GetASCallbackQueue(void)::callbackQueue);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v1 = applesauce::dispatch::v1::queue::operator*(&avas::server::GetASCallbackQueue(void)::callbackQueue);

  return v1;
}

void sub_24170CAB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void avas::server::AudioSessionInfo::DeferPropertyChangeCallback(avas::server::AudioSessionInfo *this, NSString *a2, NSDictionary *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(this + 12);
  if (!v9)
  {
    v14 = _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:v14 process:? delegate:?];
  }

  v10 = *(this + 13);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  avas::server::AudioSessionRemoteClientManager::GetRemoteClients(v9, &v19);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v12 = avas::server::GetASCallbackQueue(v11);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3321888768;
  v15[2] = ___ZN4avas6server16AudioSessionInfo27DeferPropertyChangeCallbackEPK8NSStringP12NSDictionaryb_block_invoke;
  v15[3] = &unk_28535AB38;
  memset(v17, 0, sizeof(v17));
  std::vector<std::weak_ptr<avas::server::AudioSessionRemoteClient>>::__init_with_size[abi:ne200100]<std::weak_ptr<avas::server::AudioSessionRemoteClient>*,std::weak_ptr<avas::server::AudioSessionRemoteClient>*>(v17, v19, v20, (v20 - v19) >> 4);
  v15[4] = v7;
  v16 = v8;
  v18 = a4;
  v13 = v8;
  dispatch_async(v12, v15);

  v21 = v17;
  std::vector<std::weak_ptr<avas::server::AudioSessionInfo>>::__destroy_vector::operator()[abi:ne200100](&v21);
  v21 = &v19;
  std::vector<std::weak_ptr<avas::server::AudioSessionInfo>>::__destroy_vector::operator()[abi:ne200100](&v21);
}

void sub_24170CC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v22 - 56) = &a19;
  std::vector<std::weak_ptr<avas::server::AudioSessionInfo>>::__destroy_vector::operator()[abi:ne200100]((v22 - 56));

  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<avas::server::AudioSessionInfo>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<avas::server::AudioSessionInfo>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

avas::server::AudioSessionInfoAccessor *avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(avas::server::AudioSessionInfoAccessor *this, int a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 16) = 0;
  v4 = avas::server::LegacySessionManager::Instance(this);
  avas::server::LegacySessionManager::FindSession(v4, a2, &v9);
  v5 = v9;
  v9 = 0uLL;
  v6 = *(this + 1);
  *this = v5;
  if (!v6)
  {
    v7 = v5;
    if (!v5)
    {
      return this;
    }

    goto LABEL_5;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  if (*(&v9 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
  }

  v7 = *this;
  if (*this)
  {
LABEL_5:
    os_unfair_lock_lock(v7 + 134);
    *(this + 16) = 1;
  }

  return this;
}

void sub_24170CD64(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void avas::server::LegacySessionManager::FindSession(avas::server::LegacySessionManager *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  os_unfair_lock_lock(this + 2);
  avas::server::SessionCollection::SessionPresentingIterator::SessionPresentingIterator(&v16, *(this + 2), this + 24, *(this + 5), this + 48);
  avas::server::SessionCollection::SessionPresentingIterator::SessionPresentingIterator(v12, this + 24, this + 24, this + 48, this + 48);
  while ((v16 != v12[0] || v17 != v12[2]) && (*(*v19 + 16))(v19) != a2)
  {
    avas::server::SessionCollection::SessionPresentingIterator::operator++(&v16);
  }

  v24 = v16;
  v25 = v17;
  v27 = v19;
  v19 = 0uLL;
  v26 = v18;
  v28 = v20;
  v29 = v21;
  v21 = 0uLL;
  v30 = v22;
  v31 = v23;
  v23 = 0uLL;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (*(&v23 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v23 + 1));
  }

  if (*(&v21 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v21 + 1));
  }

  if (*(&v19 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
  }

  avas::server::SessionCollection::SessionPresentingIterator::SessionPresentingIterator(v8, this + 24, this + 24, this + 48, this + 48);
  v7 = v24 == v8[0] && v25 == v8[2];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v7)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    avas::server::SessionCollection::SessionPresentingIterator::GetAudioSessionInfo(&v24, a3);
  }

  if (*(&v31 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v31 + 1));
  }

  if (*(&v29 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v29 + 1));
  }

  if (*(&v27 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v27 + 1));
  }

  os_unfair_lock_unlock(this + 2);
}

void sub_24170CF90(_Unwind_Exception *a1)
{
  avas::server::SessionCollection::SessionPresentingIterator::~SessionPresentingIterator((v2 - 160));
  os_unfair_lock_unlock(v1 + 2);
  _Unwind_Resume(a1);
}

void avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(os_unfair_lock_s **this)
{
  if (*(this + 16) == 1 && *this)
  {
    os_unfair_lock_unlock(*this + 134);
    *(this + 16) = 0;
  }

  v2 = this[1];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void avas::server::AudioSessionRemoteClient::DeferPropertyChangeCallback(avas::server::AudioSessionRemoteClient *this, NSString *a2, NSDictionary *a3, int a4)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (*(this + 22))
  {
    if ([(NSString *)v7 isEqualToString:*MEMORY[0x277D27188]]&& !avas::server::ProcessIdentity::ProcessHasEntitlement((this + 232), "com.apple.private.coreaudio.mutenotificationincludecontextkey"))
    {
      v9 = *MEMORY[0x277D27138];
      v10 = [(NSDictionary *)v8 objectForKeyedSubscript:v9];

      v11 = v9;
      v29 = v11;
      v30[0] = v10;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];

      v8 = v12;
    }

    std::mutex::lock((this + 40));
    v13 = this + 16;
    v14 = *(this + 4);
    if (a4)
    {
      v15 = *(this + 3);
      v16 = v7;
      v17 = (this + 16);
      if (v15 == v13)
      {
        goto LABEL_16;
      }

      while (1)
      {
        v18 = [*(v15 + 16) objectForKey:v16];
        v19 = v18 == 0;

        if (!v19)
        {
          break;
        }

        v15 = *(v15 + 8);
        if (v15 == v13)
        {
          v17 = (this + 16);
          goto LABEL_16;
        }
      }

      v17 = (this + 16);
      if (v15 != v13)
      {
        v20 = *(v15 + 8);
        v17 = v15;
        while (v20 != v13)
        {
          v21 = [*(v20 + 16) objectForKey:v16];
          v22 = v21 == 0;

          if (v22)
          {
            v23 = *(v20 + 16);
            *(v20 + 16) = 0;
            v24 = v17[2];
            v17[2] = v23;

            v17 = v17[1];
          }

          v20 = *(v20 + 8);
        }
      }

LABEL_16:

      std::list<NSDictionary * {__strong}>::erase(this + 16, v17, this + 2);
    }

    if (v8)
    {
      v25 = v8;
    }

    else
    {
      v25 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    }

    v27 = v7;
    v28 = v25;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    objc_claimAutoreleasedReturnValue();
    operator new();
  }

  v26 = *MEMORY[0x277D85DE8];
}

void sub_24170D2CC(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

id caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSArray * {__strong}>(caulk::xpc::reply_watchdog_factory *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*a1 == 1)
  {
    v5 = MEMORY[0x245CEF0E0](v3);
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3321888768;
    v10[2] = ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP7NSArrayEEEU13block_pointerFvDpT_ESC_i_block_invoke;
    v10[3] = &__block_descriptor_48_ea8_32c142_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP7NSArrayEEEU13block_pointerFvDpT_ESC_iEUlS4_S7_E__e29_v24__0__NSError_8__NSArray_16l;
    caulk::xpc::reply_watchdog_factory::make_timer(a1);
    v9 = MEMORY[0x245CEF0E0](v4);
    v11 = v8;
    v12 = MEMORY[0x245CEF0E0](v9);
    v5 = MEMORY[0x245CEF0E0](v10);

    v6 = v11;
    v11 = 0;
  }

  return v5;
}

uint64_t __copy_helper_block_ea8_32c142_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP7NSArrayEEEU13block_pointerFvDpT_ESC_iEUlS4_S7_E_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = MEMORY[0x245CEF0E0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void std::__list_imp<NSDictionary * {__strong}>::clear(uint64_t *a1)
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
}

void avas::server::AudioSessionRemoteClient::GetDeferredMessages(avas::server::AudioSessionRemoteClient *this@<X0>, void *a2@<X8>)
{
  std::mutex::lock((this + 40));
  std::list<NSDictionary * {__strong}>::list(a2, this + 16);
  std::__list_imp<NSDictionary * {__strong}>::clear(this + 2);

  std::mutex::unlock((this + 40));
}

void *std::list<NSDictionary * {__strong}>::list(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    std::list<NSDictionary * {__strong}>::push_back();
  }

  return result;
}

void caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSArray * {__strong}>(void({block_pointer})(NSError * {__strong},NSArray * {__strong}),int)::{lambda(NSError *,NSArray *)#1}::operator()(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = a2;
  v6 = applesauce::dispatch::v1::queue::operator*(a1);
  dispatch_source_cancel(v6);

  (*(*(a1 + 8) + 16))();
}

void __destroy_helper_block_ea8_32c142_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP7NSArrayEEEU13block_pointerFvDpT_ESC_iEUlS4_S7_E_(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

void std::vector<std::shared_ptr<avas::server::AudioSessionInfo>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void *std::list<NSDictionary * {__strong}>::erase(uint64_t a1, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v6 = *(*a3 + 8);
    v7 = *a2;
    *(v7 + 8) = v6;
    *v6 = v7;
    do
    {
      --*(a1 + 16);
      v8 = v4[1];

      operator delete(v4);
      v4 = v8;
    }

    while (v8 != a3);
  }

  return a3;
}

uint64_t MediaSafetyNetLibraryCore(char **a1)
{
  v3 = *MEMORY[0x277D85DE8];
  if (!MediaSafetyNetLibraryCore(char **)::frameworkLibrary)
  {
    MediaSafetyNetLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  result = MediaSafetyNetLibraryCore(char **)::frameworkLibrary;
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__tree<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>::find<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>(uint64_t a1, uint64_t *a2)
{
  v3 = a1 + 8;
  result = std::__tree<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>::__lower_bound<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>(a1, a2, *(a1 + 8), a1 + 8);
  if (v3 == result)
  {
    return v3;
  }

  v5 = *(result + 32);
  if (*a2 >= v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

  if (*a2 == v5)
  {
    v7 = a2[1];
    v8 = *(result + 40);
    v9 = v7 >= v8;
    v10 = v7 == v8;
    v6 = -1;
    if (v9)
    {
      v6 = 1;
    }

    if (v10)
    {
      v6 = 0;
    }
  }

  if (v6 < 0)
  {
    return v3;
  }

  return result;
}

uint64_t std::__tree<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>::__lower_bound<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = a4;
  if (a3)
  {
    v5 = *a2;
    v6 = a2[1];
    do
    {
      v7 = *(a3 + 32);
      v8 = v7 == v5;
      if (v7 >= v5)
      {
        v9 = 1;
      }

      else
      {
        v9 = -1;
      }

      if (v8)
      {
        v10 = *(a3 + 40);
        v11 = v10 == v6;
        v9 = v10 >= v6 ? 1 : -1;
        if (v11)
        {
          v9 = 0;
        }
      }

      v12 = v9 & 0x80;
      v8 = v12 == 0;
      v13 = v12 >> 4;
      if (v8)
      {
        result = a3;
      }

      a3 = *(a3 + v13);
    }

    while (a3);
  }

  return result;
}

BOOL avas::server::ProcessIdentity::ProcessHasEntitlement(avas::server::ProcessIdentity *this, const char *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    goto LABEL_12;
  }

  avas::server::ProcessIdentity::SecurityTask(this, &cf);
  v5 = cf;
  if (cf)
  {
    goto LABEL_6;
  }

  v6 = *avas::server::gSessionServerLog(v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = *(this + 9);
    *buf = 136315650;
    *&buf[4] = "ProcessIdentityServer.mm";
    v17 = 1024;
    v18 = 21;
    v19 = 1024;
    v20 = v7;
    _os_log_impl(&dword_241701000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Entitlements could not be checked for PID %d. No audit token provided.", buf, 0x18u);
  }

  v5 = cf;
  if (cf)
  {
LABEL_6:
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
    v9 = SecTaskCopyValueForEntitlement(v5, v8, 0);
    v10 = MEMORY[0x277CBED28];
    if (!v9)
    {
      v10 = MEMORY[0x277CBED10];
    }

    v11 = *v10;
    *buf = v11;
    v12 = CFBooleanGetValue(v11) != 0;
    if (v11)
    {
      CFRelease(v11);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
LABEL_12:
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_24170DBD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__SecTask *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>>::find(uint64_t *a1@<X0>, unsigned int *a2@<X1>, uint64_t *a3@<X8>)
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

  v13 = v4 + 32 * v5;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>*,false>,unsigned int>(&v14, &v13, a2, a3);
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

  v11 = *a1 + 32 * v9;
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

void boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>*,false>,unsigned int>(void *a1@<X1>, void *a2@<X2>, unsigned int *a3@<X3>, void *a4@<X8>)
{
  v4 = *a1;
  if (*a2 != *a1)
  {
    v5 = (*a2 - *a1) >> 5;
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
      v8 = &v4[8 * (v5 >> 1)];
      if (*v8 < v6)
      {
        v4 = v8 + 8;
        *a1 = v8 + 8;
        v7 = v5 + ~v7;
      }

      v5 = v7;
    }

    while (v7);
  }

  *a4 = v4;
}

void avas::server::ConstAudioSessionInfo::GetOwningClient(avas::server::ConstAudioSessionInfo *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 12);
  if (!v3)
  {
    avas::server::ConstAudioSessionInfo::JSONFormattedDescription();
  }

  v4 = *(this + 13);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(v3 + 8);
  v5 = *(v3 + 16);
  *a2 = v6;
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t avas::server::ConstAudioSessionInfo::GetSessionID(avas::server::ConstAudioSessionInfo *this)
{
  (*(*this + 72))(&v3);
  v1 = *(v3 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::weak_ptr<avas::server::AudioSessionInfo>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::serializer(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v5 = localeconv();
  *(a1 + 80) = v5;
  thousands_sep = v5->thousands_sep;
  if (thousands_sep)
  {
    LOBYTE(thousands_sep) = *thousands_sep;
  }

  *(a1 + 88) = thousands_sep;
  decimal_point = v5->decimal_point;
  if (v5->decimal_point)
  {
    LOBYTE(decimal_point) = *decimal_point;
  }

  *(a1 + 90) = 0u;
  *(a1 + 89) = decimal_point;
  *(a1 + 106) = 0u;
  *(a1 + 122) = 0u;
  *(a1 + 138) = 0u;
  *(a1 + 154) = 0u;
  *(a1 + 170) = 0u;
  *(a1 + 186) = 0u;
  *(a1 + 202) = 0u;
  *(a1 + 218) = 0u;
  *(a1 + 234) = 0u;
  *(a1 + 250) = 0u;
  *(a1 + 266) = 0u;
  *(a1 + 282) = 0u;
  *(a1 + 298) = 0u;
  *(a1 + 314) = 0u;
  *(a1 + 330) = 0u;
  *(a1 + 346) = 0u;
  *(a1 + 362) = 0u;
  *(a1 + 378) = 0u;
  *(a1 + 394) = 0u;
  *(a1 + 410) = 0u;
  *(a1 + 426) = 0u;
  *(a1 + 442) = 0u;
  *(a1 + 458) = 0u;
  *(a1 + 474) = 0u;
  *(a1 + 490) = 0u;
  *(a1 + 506) = 0u;
  *(a1 + 522) = 0u;
  *(a1 + 538) = 0u;
  *(a1 + 554) = 0u;
  *(a1 + 570) = 0u;
  *(a1 + 586) = 0u;
  *(a1 + 602) = a3;
  operator new();
}

void sub_24170E05C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped(uint64_t result, uint64_t *a2, int a3)
{
  v42 = 0;
  v3 = *(a2 + 23);
  v4 = a2[1];
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(a2 + 23);
  }

  if (!v4)
  {
    return result;
  }

  v7 = result;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = v3 >> 63;
  v43[0] = 0;
  v13 = result + 90;
  do
  {
    v14 = *a2;
    if ((v12 & 1) == 0)
    {
      v14 = a2;
    }

    v15 = *(v14 + v9);
    result = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(&v42, v43, v15);
    if (result == 1)
    {
      v17 = *(v7 + 158);
      if ((v17 - 1) >= 2)
      {
        if (!v17)
        {
          v41 = 3;
          *__str = 0;
          snprintf(__str, 3uLL, "%.2X", v15);
          exception = __cxa_allocate_exception(0x20uLL);
          std::to_string(&v34, v9);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("invalid UTF-8 byte at index ", &v34, &v35);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(": 0x", &v35, &v36);
          if (v41 >= 0)
          {
            v28 = __str;
          }

          else
          {
            v28 = *__str;
          }

          if (v41 >= 0)
          {
            v29 = v41;
          }

          else
          {
            v29 = v40;
          }

          v30 = std::string::append(&v36, v28, v29);
          v31 = *&v30->__r_.__value_.__l.__data_;
          v38 = v30->__r_.__value_.__r.__words[2];
          v37 = v31;
          v30->__r_.__value_.__l.__size_ = 0;
          v30->__r_.__value_.__r.__words[2] = 0;
          v30->__r_.__value_.__r.__words[0] = 0;
          nlohmann::detail::type_error::create(316, &v37, exception);
        }

        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped();
      }

      v18 = v10 != 0;
      if (v17 == 1)
      {
        v19 = v13 + v11;
        if (a3)
        {
          *v19 = 1717990748;
          *(v19 + 4) = 25702;
          v11 += 6;
        }

        else
        {
          v11 += 3;
          *v19 = -16401;
          *(v19 + 2) = -67;
        }

        if ((v11 - 500) <= 0xC)
        {
          result = (*(**v7 + 8))(*v7, v13, v11);
          v11 = 0;
        }
      }

      v10 = 0;
      v9 -= v18;
      v42 = 0;
LABEL_52:
      v8 = v11;
      goto LABEL_53;
    }

    if (!result)
    {
      if (v43[0] <= 11)
      {
        switch(v43[0])
        {
          case 8u:
            v16 = 25180;
            goto LABEL_48;
          case 9u:
            v16 = 29788;
            goto LABEL_48;
          case 0xAu:
            v16 = 28252;
            goto LABEL_48;
        }
      }

      else if (v43[0] > 33)
      {
        if (v43[0] == 34)
        {
          v16 = 8796;
          goto LABEL_48;
        }

        if (v43[0] == 92)
        {
          v16 = 23644;
          goto LABEL_48;
        }
      }

      else
      {
        if (v43[0] == 12)
        {
          v16 = 26204;
          goto LABEL_48;
        }

        if (v43[0] == 13)
        {
          v16 = 29276;
LABEL_48:
          *(v13 + v8) = v16;
          v11 = v8 + 2;
LABEL_49:
          if ((v11 - 500) <= 0xC)
          {
            result = (*(**v7 + 8))(*v7, v13, v11);
            v11 = 0;
            v10 = 0;
            v8 = 0;
            goto LABEL_53;
          }

          v10 = 0;
          goto LABEL_52;
        }
      }

      if (v43[0] > 0x7E)
      {
        v21 = a3;
      }

      else
      {
        v21 = 0;
      }

      if (v43[0] < 0x20 || v21)
      {
        if (HIWORD(v43[0]))
        {
          result = snprintf((v13 + v8), 0xDuLL, "\\u%04x\\u%04x", ((v43[0] >> 10) - 10304), v43[0] & 0x3FF | 0xDC00);
          v11 = v8 + 12;
        }

        else
        {
          result = snprintf((v13 + v8), 7uLL, "\\u%04x", v43[0]);
          v11 = v8 + 6;
        }
      }

      else
      {
        if (*(a2 + 23) >= 0)
        {
          v22 = a2;
        }

        else
        {
          v22 = *a2;
        }

        v11 = v8 + 1;
        *(v13 + v8) = *(v22 + v9);
      }

      goto LABEL_49;
    }

    if ((a3 & 1) == 0)
    {
      if (*(a2 + 23) >= 0)
      {
        v20 = a2;
      }

      else
      {
        v20 = *a2;
      }

      *(v13 + v8++) = *(v20 + v9);
    }

    ++v10;
LABEL_53:
    ++v9;
    v23 = *(a2 + 23);
    v12 = v23 >> 63;
    v24 = a2[1];
    if ((v23 & 0x80000000) == 0)
    {
      v24 = *(a2 + 23);
    }
  }

  while (v9 < v24);
  if (v42)
  {
    v26 = *(v7 + 158);
    switch(v26)
    {
      case 1:
        (*(**v7 + 8))(*v7, v13, v11);
        v25 = *(**v7 + 8);
        break;
      case 2:
        v25 = *(**v7 + 8);
        break;
      case 0:
        v41 = 3;
        *__str = 0;
        if ((v23 & 0x80000000) == 0)
        {
          v32 = a2;
        }

        else
        {
          v32 = *a2;
        }

        snprintf(__str, 3uLL, "%.2X", *(v32 + v24 - 1));
        v33 = __cxa_allocate_exception(0x20uLL);
        std::operator+<char>();
        nlohmann::detail::type_error::create(316, &v37, v33);
      default:
        nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_escaped();
    }

    return v25();
  }

  else if (v8)
  {
    v25 = *(**v7 + 8);
    return v25();
  }

  return result;
}

void sub_24170E5F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
    if ((v38 & 1) == 0)
    {
LABEL_6:
      if (*(v39 - 97) < 0)
      {
        operator delete(*(v39 - 120));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v38)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v37);
  goto LABEL_6;
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(_BYTE *a1, unsigned int *a2, int a3)
{
  v3 = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(unsigned char &,unsigned int &,unsigned char)::utf8d[a3];
  if (*a1)
  {
    v4 = a3 & 0x3F | (*a2 << 6);
  }

  else
  {
    v4 = (0xFFu >> v3) & a3;
  }

  *a2 = v4;
  v5 = 16 * *a1 + v3 + 256;
  if (v5 >= 0x190)
  {
    __assert_rtn("decode", "serializer.hpp", 892, "index < 400");
  }

  v6 = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::decode(unsigned char &,unsigned int &,unsigned char)::utf8d[v5];
  *a1 = v6;
  return v6;
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

uint64_t avas::server::mx::MXObjectBase::CreateMXSessionRef(avas::server::mx::MXObjectBase *this, const avas::server::SessionCreationDescription *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a2 + 88) == 1)
  {
    v2 = *(a2 + 1);
    *buf = *a2;
    *&buf[16] = v2;
    v17 = *(a2 + 8);
    if ((v17 & 1) == 0)
    {
      avas::server::mx::MXObjectBase::CreateMXSessionRef();
    }

    v3 = *MEMORY[0x277D270E0];
    v14[0] = v3;
    v15[0] = &unk_28535D218;
    v4 = *MEMORY[0x277D270D0];
    v14[1] = v4;
    v5 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:32];
    v15[1] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

    v7 = MXSessionCreateWithOptions();
  }

  else
  {
    v9 = *(this + 3);
    v8 = MXSessionCreate();
    v7 = v8;
  }

  if (v7)
  {
    v12 = *avas::server::gSessionServerLog(v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "MXObjectBase.mm";
      *&buf[12] = 1024;
      *&buf[14] = 140;
      *&buf[18] = 1024;
      *&buf[20] = v7;
      _os_log_impl(&dword_241701000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d MXSessionCreate failed: %d", buf, 0x18u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEE8B0](exception, "Failed to create independent session");
  }

  result = 0;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void avas::server::mx::MXObjectBase::SetMXSessionRef(uint64_t a1, const void **a2)
{
  v4 = *(a1 + 16);
  v5 = *a2;
  *(a1 + 16) = *a2;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v6 = *a2;
  v7 = *MEMORY[0x277D27278];
  if (MXSessionCopyProperty())
  {
    *(a1 + 32) = 0;
  }

  else
  {
    CFNumberGetValue(0, kCFNumberSInt64Type, (a1 + 32));
    CFRelease(0);
  }
}

uint64_t std::__tree<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::__map_value_compare<avas::server::ProcessIdentity,std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::less<avas::server::ProcessIdentity>,true>,std::allocator<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>>>::find<avas::server::ProcessIdentity>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = avas::server::ProcessIdentity::operator<(v3 + 32, a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || avas::server::ProcessIdentity::operator<(a2, v5 + 32))
  {
    return v2;
  }

  return v5;
}

BOOL avas::server::ProcessIdentity::operator<(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 36);
  v3 = *(a2 + 36);
  if (v2 == v3 && *(a1 + 32) == 1 && *(a2 + 32) == 1)
  {
    v5 = *(a1 + 16);
    *v10.val = *a1;
    *&v10.val[4] = v5;
    v6 = audit_token_to_pidversion(&v10);
    v7 = *(a2 + 16);
    *v10.val = *a2;
    *&v10.val[4] = v7;
    return v6 < audit_token_to_pidversion(&v10);
  }

  else
  {
    return v2 < v3;
  }
}

uint64_t *std::__tree<std::__value_type<unsigned int,avas::server::AudioAppSessionStates::SessionDetails>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,avas::server::AudioAppSessionStates::SessionDetails>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,avas::server::AudioAppSessionStates::SessionDetails>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,avas::server::AudioAppSessionStates::SessionDetails>>(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 32);
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

void avas::server::AudioAppSessionStates::AddSession(avas::server::AudioAppSessionStates *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = avas::server::AudioAppSessionStates::AppState(a1);
  v7 = (*(**a2 + 16))();
  SessionType = avas::server::ConstAudioSessionInfo::GetSessionType(*a2);
  {
    avas::AudioSessionMuteEnabled(void)::enabled = _os_feature_enabled_impl();
  }

  v9 = avas::AudioSessionMuteEnabled(void)::enabled == 1 && avas::server::AudioSessionInfo::IsSessionInputMuted(*a2) != 0;
  v10 = *a2;
  v11 = *(a2 + 8);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v20 = v11;
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v20 = 0;
  }

  v18 = v7;
  v19 = v10;
  v21 = SessionType;
  v22 = v9;
  v23 = 0;
  v24 = SessionType == 1886546285;
  std::__tree<std::__value_type<unsigned int,avas::server::AudioAppSessionStates::SessionDetails>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,avas::server::AudioAppSessionStates::SessionDetails>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,avas::server::AudioAppSessionStates::SessionDetails>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,avas::server::AudioAppSessionStates::SessionDetails>>(a1, &v18);
  v13 = v12;
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  if (v13)
  {
    v14 = avas::server::AudioAppSessionStates::AppState(a1);
    if (HIBYTE(v6) == HIBYTE(v14) && (v6 & 0x100) != 0)
    {
      if (v6 != v14)
      {
LABEL_14:
        *a3 = v14 | 0x10000;
        goto LABEL_19;
      }
    }

    else if (HIBYTE(v6) != HIBYTE(v14))
    {
      goto LABEL_14;
    }

    *a3 = 0;
LABEL_19:
    *(a3 + 8) = 1;
    if (!v11)
    {
      return;
    }

    goto LABEL_20;
  }

  v15 = MEMORY[0x277CCACA8];
  v16 = avas::server::AudioAppSessionStates::DebugString(a1);
  v17 = [v15 stringWithFormat:@"SessionID 0x%x already present (%@)", v7, v16];

  *a3 = NSErrorWithString(v17);
  *(a3 + 8) = 0;

  if (!v11)
  {
    return;
  }

LABEL_20:
  std::__shared_weak_count::__release_weak(v11);
}

id avas::AudioAppState::getMXPropertiesExplicitlySet(id *this)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = this[3];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [this[1] valueForKey:{v7, v11}];
        [v2 setValue:v8 forKey:v7];
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

os_unfair_lock_s *avas::server::AudioApplicationInfo::DebugString(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 4);
  v2 = this + 22;
  if (SHIBYTE(this[27]._os_unfair_lock_opaque) < 0)
  {
    v2 = *&v2->_os_unfair_lock_opaque;
  }

  os_unfair_lock_unlock(this + 4);
  return v2;
}

void avas::server::LegacySessionManager::FindSourceSessionForSibling(avas::server::LegacySessionManager *a1@<X0>, __int128 *a2@<X1>, unsigned int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = a4;
  if (a3 == -1)
  {
    v10 = a2[1];
    *buf = *a2;
    *&buf[16] = v10;
    buf[32] = 1;
    v11 = a2[1];
    *atoken.val = *a2;
    *&atoken.val[4] = v11;
    v25 = audit_token_to_pid(&atoken);
    avas::server::LegacySessionManager::FindOrCreatePrimarySession(a1, buf, 0, v9, 1, &v21);
    a3 = v21 ? (*(*v21 + 16))(v21) : -1;
    if (*(&v21 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v21 + 1));
    }
  }

  *buf = 1;
  buf[4] = 1;
  avas::server::LegacySessionManager::FindSessionAndVerifyOwnership(a1, a3, a2, buf, &v21);
  if (v21)
  {
    v13 = *avas::server::gSessionServerLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *&buf[4] = "ServerSessionManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 186;
      *&buf[18] = 1024;
      *&buf[20] = a3;
      _os_log_impl(&dword_241701000, v13, OS_LOG_TYPE_INFO, "%25s:%-5d Found source session with ID 0x%x. Proceeding to create sibling session.", buf, 0x18u);
    }

    *a5 = v21;
  }

  else
  {
    v14 = avas::server::LegacySessionManager::SessionIDIsValid(a1, a3);
    v15 = v14;
    v16 = *avas::server::gSessionServerLog(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = a2[1];
      *atoken.val = *a2;
      *&atoken.val[4] = v17;
      v18 = audit_token_to_pid(&atoken);
      v19 = "not valid";
      *buf = 136316162;
      *&buf[4] = "ServerSessionManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 181;
      if (v15)
      {
        v19 = "valid";
      }

      *&buf[18] = 1024;
      *&buf[20] = a3;
      *&buf[24] = 2080;
      *&buf[26] = v19;
      v24 = 1024;
      v25 = v18;
      _os_log_impl(&dword_241701000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d Sibling session creation failed. Source sessionID: 0x%x. SessionID is %s. Source PID: %d", buf, 0x28u);
    }

    *a5 = 0;
    *(a5 + 8) = 0;
    if (*(&v21 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v21 + 1));
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_24170F364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

_BYTE *AudioSession::GetSessionTypeName@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 > 1886546284)
  {
    if (a1 <= 1935830118)
    {
      if (a1 == 1886546285)
      {
        v2 = "Primary";
        return std::string::basic_string[abi:ne200100]<0>(a2, v2);
      }

      if (a1 == 1886550137)
      {
        goto LABEL_18;
      }
    }

    else
    {
      switch(a1)
      {
        case 1935830119:
          v2 = "Sibling";
          return std::string::basic_string[abi:ne200100]<0>(a2, v2);
        case 1935897189:
          v2 = "Secure";
          return std::string::basic_string[abi:ne200100]<0>(a2, v2);
        case 1936286827:
          v2 = "Sidekick";
          return std::string::basic_string[abi:ne200100]<0>(a2, v2);
      }
    }

LABEL_24:
    v2 = "Unknown session type";
    return std::string::basic_string[abi:ne200100]<0>(a2, v2);
  }

  if (a1 <= 1668314225)
  {
    if (a1 == 1635088489)
    {
      v2 = "Auxiliary";
      return std::string::basic_string[abi:ne200100]<0>(a2, v2);
    }

    if (a1 == 1635148646)
    {
      v2 = "AV Conference";
      return std::string::basic_string[abi:ne200100]<0>(a2, v2);
    }

    goto LABEL_24;
  }

  if (a1 == 1668314226)
  {
    v2 = "Fig Capture";
    return std::string::basic_string[abi:ne200100]<0>(a2, v2);
  }

  if (a1 == 1702392942)
  {
LABEL_18:
    v2 = "Proxy";
    return std::string::basic_string[abi:ne200100]<0>(a2, v2);
  }

  if (a1 != 1718183795)
  {
    goto LABEL_24;
  }

  v2 = "Fig Player";
  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(uint64_t a1, char *__s)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    std::string::basic_string[abi:ne200100]<0>(&v8, v7);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("cannot use operator[] with a string argument with ", &v8, &__p);
    nlohmann::detail::type_error::create(305, &__p, exception);
  }

  v3 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  v8.__r_.__value_.__r.__words[0] = &__p;
  v4 = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v3, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4 + 56;
}

void sub_24170F6F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, void **a2)
{
  result = *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>();
  }

  return result;
}

void avas::server::SessionCreationDescription::AsJSON(avas::server::SessionCreationDescription *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  AudioSession::GetSessionTypeName(*(this + 10), &v4);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string,std::string,0>(v5);
}

void sub_24170FB6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(va);
  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(v2);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_float(_BYTE *a1, double a2)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    nlohmann::detail::to_chars<double>(a1 + 16, (a1 + 80), a2);
  }

  else
  {
    v3 = *a1;
  }

  v4 = *(**a1 + 8);

  return v4();
}

void avas::server::LegacySessionManager::PrivateAddSessionToApplication(uint64_t a1, uint64_t a2, avas::server::ConstAudioSessionInfo **a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v7 = *(*a3 + 4);
  v42 = *(*a3 + 3);
  v43 = v7;
  v44 = *(v6 + 10);
  v8 = avas::server::ConstAudioSessionInfo::ClientProcessName(v6);
  if (v8)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
    v10 = @"(non-UTF8)";
    if (v9)
    {
      v10 = v9;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"[implicit] %@", v10];
  }

  else
  {
    v11 = @"[implicit] (?)";
  }

  v32 = 0;
  v12 = v11;
  v33 = v12;
  v34 = v42;
  v35 = v43;
  v36 = v44;
  v37 = v42;
  v38 = v43;
  v39 = v44;
  v40 = 1886546285;
  v41 = 1;
  avas::server::LegacySessionManager::PrivateFindOrCreatePrimaryApplication(a1, a2, &v32, 0, &v29);
  v13 = v29;
  if (!v29)
  {
    v26 = _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:v26 process:? delegate:?];
  }

  if ((v31 & 1) == 0)
  {
    v14 = a3[1];
    v27 = *a3;
    v28 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = avas::server::AudioApplicationInfo::AddSession(v13, &v27);
    v16 = v28;
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    if (v15)
    {
      v17 = *avas::server::gSessionServerLog(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = (*(**a3 + 88))();
        v19 = avas::server::AudioApplicationInfo::DebugString(v13);
        *buf = 136315906;
        v46 = "ServerSessionManager.mm";
        v47 = 1024;
        v48 = 1062;
        v49 = 2080;
        v50 = v18;
        v51 = 2080;
        v52 = v19;
        v20 = "%25s:%-5d Success - added newly-created session (%s) to app instance (%s)";
        v21 = v17;
        v22 = OS_LOG_TYPE_DEFAULT;
LABEL_17:
        _os_log_impl(&dword_241701000, v21, v22, v20, buf, 0x26u);
      }
    }

    else
    {
      v17 = *avas::server::gSessionServerLog(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v23 = (*(**a3 + 88))();
        v24 = avas::server::AudioApplicationInfo::DebugString(v13);
        *buf = 136315906;
        v46 = "ServerSessionManager.mm";
        v47 = 1024;
        v48 = 1059;
        v49 = 2080;
        v50 = v23;
        v51 = 2080;
        v52 = v24;
        v20 = "%25s:%-5d Error - failed to add newly-created session (%s) to app instance (%s)";
        v21 = v17;
        v22 = OS_LOG_TYPE_ERROR;
        goto LABEL_17;
      }
    }
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_24170FFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, void *a15, void *a16)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(a1);
}

uint64_t avas::server::AudioApplicationInfo::AddSession(os_unfair_lock_s *a1, std::__shared_weak_count **a2)
{
  os_unfair_lock_lock(a1 + 4);
  v4 = a2[1];
  v7 = *a2;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = avas::server::AudioAppInfoImpl::AddSession(&a1[6], &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  os_unfair_lock_unlock(a1 + 4);
  return v5;
}

void sub_2417100B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  os_unfair_lock_unlock(v10 + 4);
  _Unwind_Resume(a1);
}

uint64_t avas::server::AudioAppInfoImpl::AddSession(uint64_t a1, std::__shared_weak_count **a2)
{
  v71 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *&(*a2)[2].__shared_weak_owners_;
  v63[0] = (*a2)[2].std::__shared_count;
  v63[1] = v5;
  shared_owners = v4[3].__shared_owners_;
  v6 = avas::server::ProcessIdentity::operator==(v63, a1 + 16);
  if (v6)
  {
    v7 = ((*a2)->__on_zero_shared)();
    v8 = a2[1];
    v59 = *a2;
    v60 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    avas::server::AudioAppSessionStates::AddSession((a1 + 88), &v59, &v61);
    v9 = v60;
    if (v60)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v60);
    }

    v10 = v62;
    if ((v62 & 1) == 0)
    {
      v15 = *avas::server::gSessionServerLog(v9);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v19 = (a1 + 64);
        if (*(a1 + 87) < 0)
        {
          v19 = *v19;
        }

        *buf = 136316162;
        *&buf[4] = "AudioApplicationInfoImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 601;
        *&buf[18] = 1024;
        *&buf[20] = v7;
        *v66 = 2112;
        *&v66[2] = v61;
        *&v66[10] = 2080;
        *&v66[12] = v19;
        v20 = v61;
        _os_log_impl(&dword_241701000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to add session 0x%x to AudioApp, error: %@. (app: %s)", buf, 0x2Cu);
      }

      goto LABEL_109;
    }

    v11 = avas::AudioAppState::getMXPropertiesExplicitlySet((a1 + 152));
    v13 = *a2;
    v12 = a2[1];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = (a1 + 64);
    if (*(a1 + 87) < 0)
    {
      v14 = *(a1 + 64);
    }

    v54 = (a1 + 64);
    std::string::basic_string[abi:ne200100]<0>(v57, v14);
    v15 = v11;
    if ([v15 count])
    {
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = dispatch_get_global_queue(33, 0);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3321888768;
      *&buf[16] = ___ZN4avas6serverL24PrivateApplyMXPropertiesENSt3__110shared_ptrINS0_16AudioSessionInfoEEEP12NSDictionaryIP8NSStringPU25objcproto14NSSecureCoding11objc_objectENS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke;
      *v66 = &unk_28535B290;
      *&v66[16] = v13;
      v67 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        *&v66[8] = v15;
        v68 = v13;
        v69.__r_.__value_.__r.__words[0] = v12;
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        *&v66[8] = v15;
        v68 = v13;
        v69.__r_.__value_.__r.__words[0] = 0;
      }

      if (SHIBYTE(v58) < 0)
      {
        std::string::__init_copy_ctor_external(&v69.__r_.__value_.__r.__words[1], v57[0], v57[1]);
      }

      else
      {
        *&v69.__r_.__value_.__r.__words[1] = *v57;
        v70 = v58;
      }

      dispatch_async(v16, buf);

      if (SHIBYTE(v70) < 0)
      {
        operator delete(v69.__r_.__value_.__l.__size_);
      }

      if (v69.__r_.__value_.__r.__words[0])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v69.__r_.__value_.__l.__data_);
      }

      if (v67)
      {
        std::__shared_weak_count::__release_weak(v67);
      }

      if (v12)
      {
        std::__shared_weak_count::__release_weak(v12);
      }
    }

    if (SHIBYTE(v58) < 0)
    {
      operator delete(v57[0]);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    v53 = avas::AudioAppState::getAppPropertiesExplicitlySet((a1 + 152));
    std::shared_ptr<avas::server::AudioApplicationInfo>::shared_ptr[abi:ne200100]<avas::server::AudioApplicationInfo,0>(buf, *a1);
    v22 = *buf;
    v21 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = *a2;
    v24 = a2[1];
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v25 = (a1 + 64);
    if (*(a1 + 87) < 0)
    {
      v25 = *v54;
    }

    std::string::basic_string[abi:ne200100]<0>(&v56, v25);
    v26 = v53;
    v55 = v26;
    if (v26)
    {
      if (![v26 count])
      {
        goto LABEL_63;
      }

      {
        avas::AudioSessionMuteEnabled(void)::enabled = _os_feature_enabled_impl();
      }

      if (avas::AudioSessionMuteEnabled(void)::enabled == 1)
      {
        v52 = (v23->__on_zero_shared)(v23);
        v27 = [v55 objectForKey:@"NewSessionsShouldBeInputMuted"];
        v28 = v27;
        if (v27 && (v27 = [v27 BOOLValue], (v27 & 1) != 0))
        {
          log = *avas::server::gSessionServerLog(v27);
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            v29 = &v56;
            if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v29 = v56.__r_.__value_.__r.__words[0];
            }

            *buf = 136315906;
            *&buf[4] = "AudioApplicationInfoImpl.mm";
            *&buf[12] = 1024;
            *&buf[14] = 100;
            *&buf[18] = 1024;
            *&buf[20] = v52;
            *v66 = 2080;
            *&v66[2] = v29;
            _os_log_impl(&dword_241701000, log, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Audio app is in explicitly-set input MUTED state, setting MUTED on newly session 0x%x (app:%s)", buf, 0x22u);
          }

          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3321888768;
          *&buf[16] = ___ZN4avas6serverL25PrivateApplyAppPropertiesENSt3__18weak_ptrINS0_20AudioApplicationInfoEEENS1_10shared_ptrINS0_16AudioSessionInfoEEEP12NSDictionaryIP8NSStringPU25objcproto14NSSecureCoding11objc_objectENS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke;
          *v66 = &__block_descriptor_92_ea8_32c59_ZTSNSt3__18weak_ptrIN4avas6server20AudioApplicationInfoEEE48c55_ZTSNSt3__18weak_ptrIN4avas6server16AudioSessionInfoEEE64c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_e5_v8__0l;
          *&v66[8] = v22;
          *&v66[16] = v21;
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v67 = v23;
          v68 = v24;
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          LODWORD(v70) = v52;
          if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v69, v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
          }

          else
          {
            v69 = v56;
          }

          v33 = MEMORY[0x245CEF0E0](buf);
          v34 = avas::server::GetAudioControlQueue(v33);
          avas::server::DispatchBlock(v34, v33, 0, "PrivateApplyAppProperties", "AudioApplicationInfoImpl.mm", 127, 0, 0);

          if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v69.__r_.__value_.__l.__data_);
          }

          if (v68)
          {
            std::__shared_weak_count::__release_weak(v68);
          }

          if (*&v66[16])
          {
            std::__shared_weak_count::__release_weak(*&v66[16]);
          }

          if (v24)
          {
            std::__shared_weak_count::__release_weak(v24);
          }

          v30 = 1;
        }

        else
        {
          v31 = *avas::server::gSessionServerLog(v27);
          v30 = 0;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = &v56;
            if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v32 = v56.__r_.__value_.__r.__words[0];
            }

            *buf = 136315906;
            *&buf[4] = "AudioApplicationInfoImpl.mm";
            *&buf[12] = 1024;
            *&buf[14] = 93;
            *&buf[18] = 1024;
            *&buf[20] = v52;
            *v66 = 2080;
            *&v66[2] = v32;
            _os_log_impl(&dword_241701000, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d New session 0x%x will have default input mute state of UNMUTED (app:%s)", buf, 0x22u);
            v30 = 0;
          }
        }
      }

      else
      {
LABEL_63:
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_weak(v21);
    }

    v35 = v7;
    v36 = caulk::expected<std::optional<avas::server::AudioAppSessionStates::AudioAppState>,NSError * {__strong}>::value(&v61);
    v37 = *v36;
    if ((*v36 & 0x10000) != 0)
    {
      if ((v37 & 0x100) != 0)
      {
        v40 = *avas::server::gSessionServerLog(v36);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = (a1 + 64);
          if (*(a1 + 87) < 0)
          {
            v41 = *v54;
          }

          v42 = avas::server::AudioAppSessionStates::DebugString((a1 + 88));
          *buf = 136316162;
          *&buf[4] = "AudioApplicationInfoImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 634;
          *&buf[18] = 1024;
          *&buf[20] = v35;
          *v66 = 2080;
          *&v66[2] = v41;
          *&v66[10] = 2112;
          *&v66[12] = v42;
          _os_log_impl(&dword_241701000, v40, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Successfully added session 0x%x to AudioApp\n\tapp: %s\n%@", buf, 0x2Cu);
        }

        if (v30)
        {
          goto LABEL_106;
        }

        v43 = [MEMORY[0x277CCABB0] numberWithBool:v37 & 1];
        updated = avas::server::AudioAppInfoImpl::UpdateInputMuteState(a1, v43, 0);

        if (!updated)
        {
          goto LABEL_106;
        }

        v38 = *avas::server::gSessionServerLog(v45);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v46 = avas::server::AudioAppSessionStates::DebugString((a1 + 88));
          v47 = v46;
          if (*(a1 + 87) < 0)
          {
            v48 = *v54;
          }

          else
          {
            v48 = (a1 + 64);
          }

          *buf = 136316162;
          *&buf[4] = "AudioApplicationInfoImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 642;
          *&buf[18] = 1024;
          *&buf[20] = updated;
          *v66 = 2112;
          *&v66[2] = v46;
          *&v66[10] = 2080;
          *&v66[12] = v48;
          _os_log_impl(&dword_241701000, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to update input mute state, err: %d, state: %@ {%s}", buf, 0x2Cu);
        }
      }

      else
      {
        v38 = *avas::server::gSessionServerLog(v36);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "AudioApplicationInfoImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 631;
          _os_log_impl(&dword_241701000, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d Error - AudioApp input mute state should never be nullopt after adding session", buf, 0x12u);
        }
      }
    }

    else
    {
      v38 = *avas::server::gSessionServerLog(v36);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 87) < 0)
        {
          v54 = *v54;
        }

        v39 = avas::server::AudioAppSessionStates::DebugString((a1 + 88));
        *buf = 136316162;
        *&buf[4] = "AudioApplicationInfoImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 648;
        *&buf[18] = 1024;
        *&buf[20] = v35;
        *v66 = 2080;
        *&v66[2] = v54;
        *&v66[10] = 2112;
        *&v66[12] = v39;
        _os_log_impl(&dword_241701000, v38, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Successfully added session 0x%x to AudioApp, state unchanged\n\tapp: %s\n%@", buf, 0x2Cu);
      }
    }

LABEL_106:
    if (v21)
    {
      std::__shared_weak_count::__release_weak(v21);
    }

LABEL_109:
    if ((v62 & 1) == 0)
    {
    }

    goto LABEL_111;
  }

  v17 = *avas::server::gSessionServerLog(v6);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = *(a1 + 52);
    *buf = 136315906;
    *&buf[4] = "AudioApplicationInfoImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 594;
    *&buf[18] = 1024;
    *&buf[20] = HIDWORD(shared_owners);
    *v66 = 1024;
    *&v66[2] = v18;
    _os_log_impl(&dword_241701000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Error - session (source pid:%d) does not match that of app (pid:%d) being added to", buf, 0x1Eu);
  }

  v10 = 0;
LABEL_111:
  v49 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_241710BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, void *a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42, std::__shared_weak_count *a43, std::__shared_weak_count *a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{

  if (a20 < 0)
  {
    operator delete(__p);
    if (v51)
    {
LABEL_7:
      std::__shared_weak_count::__release_shared[abi:ne200100](v51);
      if (!v50)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if (v51)
  {
    goto LABEL_7;
  }

  if (!v50)
  {
LABEL_9:

    if ((a30 & 1) == 0)
    {
    }

    _Unwind_Resume(a1);
  }

LABEL_8:
  std::__shared_weak_count::__release_weak(v50);
  std::__shared_weak_count::__release_weak(v50);
  goto LABEL_9;
}

id avas::AudioAppState::getAppPropertiesExplicitlySet(id *this)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = this[2];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [*this valueForKey:{v7, v11}];
        [v2 setValue:v8 forKey:v7];
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

void *std::shared_ptr<avas::server::AudioApplicationInfo>::shared_ptr[abi:ne200100]<avas::server::AudioApplicationInfo,0>(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

uint64_t caulk::expected<std::optional<avas::server::AudioAppSessionStates::AudioAppState>,NSError * {__strong}>::value(uint64_t result)
{
  if (*(result + 8) != 1)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    caulk::bad_expected_access<NSError * {__strong}>::bad_expected_access(exception, *v1);
  }

  return result;
}

id avas::server::AudioAppSessionStates::DebugString(avas::server::AudioAppSessionStates *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v40);
  v2 = avas::server::AudioAppSessionStates::AppState(this);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "\tAudioApp.isInputMuted: ", 24);
  v4 = "UNMUTED";
  if (v2)
  {
    v4 = "MUTED";
  }

  if ((v2 & 0x100) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = "Undetermined (0 sessions)";
  }

  v6 = strlen(v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "\n[ ", 3);
  v9 = *this;
  v7 = this + 8;
  v8 = v9;
  if (v9 != v7)
  {
    while (1)
    {
      v10 = *(v8 + 8);
      v11 = *(v8 + 6);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = *(v8 + 7);
      v13 = v8[64];
      v14 = v8[65];
      v15 = v8[66];
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "\n\t{ sessionID: 0x", 17);
      *(v16 + *(*v16 - 24) + 8) = *(v16 + *(*v16 - 24) + 8) & 0xFFFFFFB5 | 8;
      v17 = MEMORY[0x245CEE9C0]();
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ", sessionType: ", 15);
      caulk::string_from_4cc(v12, 1, __p);
      v19 = (v39 & 0x80u) == 0 ? __p : __p[0];
      v20 = (v39 & 0x80u) == 0 ? v39 : __p[1];
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v20);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", isRecording: ", 15);
      *(v22 + *(*v22 - 24) + 8) |= 1u;
      v23 = MEMORY[0x245CEE9A0]();
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ", isInputMuted: ", 16);
      *(v24 + *(*v24 - 24) + 8) |= 1u;
      v25 = MEMORY[0x245CEE9A0]();
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ", isConsideredInAppMuteState: ", 30);
      v27 = MEMORY[0x245CEE9A0](v26, v15 & 1);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, " }, ", 4);
      if (v39 < 0)
      {
        break;
      }

      if (v11)
      {
        goto LABEL_17;
      }

LABEL_18:
      v28 = *(v8 + 1);
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = *(v8 + 2);
          v30 = *v29 == v8;
          v8 = v29;
        }

        while (!v30);
      }

      v8 = v29;
      if (v29 == v7)
      {
        goto LABEL_27;
      }
    }

    operator delete(__p[0]);
    if (!v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    std::__shared_weak_count::__release_weak(v11);
    goto LABEL_18;
  }

LABEL_27:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "\n]", 2);
  v31 = MEMORY[0x277CCACA8];
  if ((v47 & 0x10) != 0)
  {
    v33 = v46;
    if (v46 < v43)
    {
      v46 = v43;
      v33 = v43;
    }

    locale = v42[4].__locale_;
  }

  else
  {
    if ((v47 & 8) == 0)
    {
      v32 = 0;
      v39 = 0;
      goto LABEL_40;
    }

    locale = v42[1].__locale_;
    v33 = v42[3].__locale_;
  }

  v32 = v33 - locale;
  if ((v33 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v32 >= 0x17)
  {
    operator new();
  }

  v39 = v33 - locale;
  if (v32)
  {
    memmove(__p, locale, v32);
  }

LABEL_40:
  *(__p + v32) = 0;
  if ((v39 & 0x80u) == 0)
  {
    v35 = __p;
  }

  else
  {
    v35 = __p[0];
  }

  v36 = [v31 stringWithUTF8String:v35];
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  v40 = *MEMORY[0x277D82828];
  *(&v40 + *(v40 - 24)) = *(MEMORY[0x277D82828] + 24);
  v41 = MEMORY[0x277D82878] + 16;
  if (v45 < 0)
  {
    operator delete(v44);
  }

  v41 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v42);
  std::ostream::~ostream();
  MEMORY[0x245CEEAC0](&v48);

  return v36;
}

void sub_2417114A8(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (a8 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a9, MEMORY[0x277D82828]);
  MEMORY[0x245CEEAC0](va);
  _Unwind_Resume(a1);
}

void *avas::server::ConstAudioSessionInfo::DebugString(avas::server::ConstAudioSessionInfo *this)
{
  v1 = *(this + 12);
  if (!v1)
  {
    avas::server::ConstAudioSessionInfo::JSONFormattedDescription();
  }

  v2 = *(this + 13);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = (v4 + 272);
  if (*(v4 + 295) < 0)
  {
    v5 = *v5;
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return v5;
}

void AudioSession::PropertyValueToJSON(void *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 doubleValue];
      v7[0] = 7;
      v8 = v4;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v7);
      v9 = v7;
      v10 = 1;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(a2, v7, 1, 1, 2);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v3 UTF8String];
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const*,char const*,0>(v7);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      OS::CF::ToJSON(v3, a2);
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[7],char [7],0>(v7);
        }

        v5 = objc_opt_class();
        NSStringFromClass(v5);
        objc_claimAutoreleasedReturnValue();
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[22],char [22],0>(v7);
      }

      OS::CF::ToJSON(v3, a2);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_2417118D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(va1);
  va_copy(v9, va);
  v10 = -64;
  do
  {
    v9 = nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(v9) - 32;
    v10 += 32;
  }

  while (v10);

  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::dtoa_impl::compute_boundaries<double>@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    nlohmann::detail::dtoa_impl::compute_boundaries<double>();
  }

  if (a2 <= 0.0)
  {
    nlohmann::detail::dtoa_impl::compute_boundaries<double>();
  }

  v3 = 4294966221;
  v4 = *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!(*&a2 >> 52))
  {
    v5 = 2 * *&a2;
    v6 = (2 * (*&a2 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
    v7 = 4294966222;
    v8 = -1075;
LABEL_9:
    v9 = v5 - 1;
    goto LABEL_10;
  }

  v7 = (*&a2 >> 52) - 1075;
  v5 = 2 * (v4 | 0x10000000000000);
  v6 = (2 * (*&a2 & 0xFFFFFFFFFFFFFLL | 0x10000000000000)) | 1;
  v3 = (*&a2 >> 52) - 1076;
  v8 = (*&a2 >> 52) - 1076;
  if (!(*&a2 >> 53) || v4)
  {
    v4 |= 0x10000000000000uLL;
    goto LABEL_9;
  }

  v8 = (*&a2 >> 52) - 1077;
  v4 = 0x10000000000000;
  v9 = 0x3FFFFFFFFFFFFFLL;
LABEL_10:
  v18 = v9;
  v19 = v8;
  v10 = nlohmann::detail::dtoa_impl::diyfp::normalize(v6, v3);
  v12 = v11;
  v13 = nlohmann::detail::dtoa_impl::diyfp::normalize_to(&v18, v11);
  v15 = v14;
  result = nlohmann::detail::dtoa_impl::diyfp::normalize(v4, v7);
  *a1 = result;
  *(a1 + 8) = v17;
  *(a1 + 16) = v13;
  *(a1 + 24) = v15;
  *(a1 + 32) = v10;
  *(a1 + 40) = v12;
  return result;
}

avas::server *avas::server::mx::MXObjectBase::SetSecurityTask(avas::server *this, __SecTask *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = this;
    v4 = *avas::server::gSessionServerLog(this);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315650;
      v9 = "MXObjectBase.mm";
      v10 = 1024;
      v11 = 200;
      v12 = 2112;
      v13 = a2;
      _os_log_impl(&dword_241701000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d setting SecTaskRef: %@", &v8, 0x1Cu);
    }

    v5 = *(v3 + 2);
    v6 = *MEMORY[0x277D271F8];
    this = MXSessionSetProperty();
    if (this)
    {
      avas::server::mx::MXObjectBase::SetSecurityTask();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return this;
}

void avas::server::mx::MXObjectBase::SetAuditToken(avas::server::mx::MXObjectBase *this, const audit_token_t *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  TypeID = CFDataCreate(0, a2, 32);
  cf = TypeID;
  if (!TypeID)
  {
    goto LABEL_6;
  }

  v4 = CFGetTypeID(TypeID);
  TypeID = CFDataGetTypeID();
  if (v4 != TypeID)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEE8B0](exception, "Could not construct");
  }

  if (cf)
  {
    v5 = *(this + 2);
    v6 = *MEMORY[0x277D271C8];
    if (MXSessionSetProperty())
    {
      v7 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v7 process:? delegate:?];
    }
  }

  else
  {
LABEL_6:
    v8 = *avas::server::gSessionServerLog(TypeID);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "MXObjectBase.mm";
      v14 = 1024;
      v15 = 218;
      _os_log_impl(&dword_241701000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid client token", buf, 0x12u);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_241711D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(&a10);
  _Unwind_Resume(a1);
}

void avas::server::mx::MXObjectBase::SetClientType(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a2];
  v4 = *(a1 + 16);
  v5 = *MEMORY[0x277D27200];
  v6 = MXSessionSetProperty();
  v7 = v6;
  if (v6)
  {
    v8 = *avas::server::gSessionServerLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315650;
      v11 = "MXObjectBase.mm";
      v12 = 1024;
      v13 = 272;
      v14 = 1024;
      v15 = v7;
      _os_log_impl(&dword_241701000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d MXSessionSetProperty for ClientType failed: %d", &v10, 0x18u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void avas::server::mx::MXObjectBase::SetIsSharedAVAudioSessionInstance(avas::server::mx::MXObjectBase *this, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(this + 2);
  v3 = MEMORY[0x277CBED28];
  v4 = *MEMORY[0x277D272D0];
  if (!a2)
  {
    v3 = MEMORY[0x277CBED10];
  }

  v5 = *v3;
  v6 = *MEMORY[0x277D272D0];
  v7 = MXSessionSetProperty();
  if (v7)
  {
    v8 = v7;
    v9 = *avas::server::gSessionServerLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315650;
      v12 = "MXObjectBase.mm";
      v13 = 1024;
      v14 = 281;
      v15 = 1024;
      v16 = v8;
      _os_log_impl(&dword_241701000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d MXSessionSetProperty for IsSharedAVAudioSessionInstance failed: %d", &v11, 0x18u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

id avas::server::mx::MXObjectBase::buildClientNameString(uint64_t a1, const char *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  snprintf(__str, 0x100uLL, "%s", a2);
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:__str];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

void avas::server::mx::MXObjectBase::SetClientName(avas::server::mx::MXObjectBase *this, NSString *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(this + 2);
    v5 = *MEMORY[0x277D271E0];
    v6 = MXSessionSetProperty();
    v7 = v6;
    if (v6)
    {
      v8 = *avas::server::gSessionServerLog(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315650;
        v15 = "MXObjectBase.mm";
        v16 = 1024;
        v17 = 241;
        v18 = 1024;
        v19 = v7;
        v9 = "%25s:%-5d MXSessionSetProperty for ClientName failed: %d";
        v10 = v8;
        v11 = 24;
LABEL_7:
        _os_log_impl(&dword_241701000, v10, OS_LOG_TYPE_ERROR, v9, &v14, v11);
      }
    }
  }

  else
  {
    v12 = *avas::server::gSessionServerLog(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "MXObjectBase.mm";
      v16 = 1024;
      v17 = 243;
      v9 = "%25s:%-5d Invalid client name";
      v10 = v12;
      v11 = 18;
      goto LABEL_7;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void avas::server::mx::MXObjectBase::SetCoreSessionID(avas::server::mx::MXObjectBase *this, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  v4 = *(this + 2);
  v5 = *MEMORY[0x277D27208];
  v6 = MXSessionSetProperty();
  v7 = v6;
  if (v6)
  {
    v8 = *avas::server::gSessionServerLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315650;
      v11 = "MXObjectBase.mm";
      v12 = 1024;
      v13 = 253;
      v14 = 1024;
      v15 = v7;
      _os_log_impl(&dword_241701000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Set of kMXSessionProperty_CoreSessionID failed: %d", &v10, 0x18u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void avas::server::mx::MXObjectBase::SetClientPID(avas::server::mx::MXObjectBase *this, uint64_t a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  v4 = *(this + 2);
  v5 = *MEMORY[0x277D271E8];
  v10 = v3;
  v6 = MXSessionSetProperty();
  v7 = v6;
  if (v6)
  {
    v8 = avas::server::gSessionServerLog(v6);
    avas::server::mx::MXObjectBase::SetClientPID(v8, v7);
    v9 = _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:v9 process:? delegate:?];
  }
}

uint64_t nlohmann::detail::to_chars<double>(_BYTE *a1, uint64_t a2, double a3)
{
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    nlohmann::detail::to_chars<double>();
  }

  v3 = a1;
  if ((*&a3 & 0x8000000000000000) != 0)
  {
    a3 = -a3;
    *a1 = 45;
    v3 = (a1 + 1);
  }

  if (a3 == 0.0)
  {
    *v3 = 11824;
    result = v3 + 3;
    *(v3 + 2) = 48;
  }

  else
  {
    v5 = a2 - v3;
    if (a2 - v3 <= 16)
    {
      nlohmann::detail::to_chars<double>();
    }

    v6 = 0;
    nlohmann::detail::dtoa_impl::grisu2<double>(v3, &v6 + 1, &v6, a3);
    if (SHIDWORD(v6) >= 18)
    {
      nlohmann::detail::to_chars<double>();
    }

    if (v5 <= 0x15)
    {
      nlohmann::detail::to_chars<double>();
    }

    if (v5 == 22)
    {
      nlohmann::detail::to_chars<double>();
    }

    return nlohmann::detail::dtoa_impl::format_buffer(v3, HIDWORD(v6), v6, -4, 15);
  }

  return result;
}

avas::server::mx::IBehaviorUnit **std::unique_ptr<avas::server::mx::MXObjectStub>::~unique_ptr[abi:ne200100](avas::server::mx::IBehaviorUnit **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    avas::server::mx::IBehaviorUnit::~IBehaviorUnit(v2);
    MEMORY[0x245CEEB60]();
  }

  return a1;
}

uint64_t nlohmann::detail::dtoa_impl::grisu2<double>(uint64_t a1, unsigned int *a2, _DWORD *a3, double a4)
{
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    nlohmann::detail::dtoa_impl::grisu2<double>();
  }

  if (a4 <= 0.0)
  {
    nlohmann::detail::dtoa_impl::grisu2<double>();
  }

  nlohmann::detail::dtoa_impl::compute_boundaries<double>(v9, a4);
  return nlohmann::detail::dtoa_impl::grisu2(a1, a2, a3, v9[2], v9[3], v9[0], v9[1], v7, v9[4], v9[5]);
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

unint64_t nlohmann::detail::dtoa_impl::diyfp::normalize_to(uint64_t *a1, int a2)
{
  v2 = *(a1 + 2) - a2;
  if (v2 < 0)
  {
    v5 = "delta >= 0";
    v6 = 162;
    goto LABEL_6;
  }

  v3 = *a1;
  result = *a1 << v2;
  if (result >> v2 != v3)
  {
    v5 = "((x.f << delta) >> delta) == x.f";
    v6 = 163;
LABEL_6:
    __assert_rtn("normalize_to", "to_chars.hpp", v6, v5);
  }

  return result;
}

void *avas::server::mx::MXAccessor::MXAccessor(void *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  *a3 = 0;
  *result = v4;
  result[1] = v5;
  v6 = *a4;
  *a4 = 0;
  result[2] = v6;
  return result;
}

uint64_t nlohmann::detail::dtoa_impl::grisu2_digit_gen(uint64_t a1, unsigned int *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  v47[0] = a4;
  v47[1] = a5;
  v46[0] = a6;
  v46[1] = a7;
  v44 = a9;
  v45 = a10;
  if (a10 <= -61)
  {
    nlohmann::detail::dtoa_impl::grisu2_digit_gen();
  }

  if (a10 >= -31)
  {
    nlohmann::detail::dtoa_impl::grisu2_digit_gen();
  }

  v13 = nlohmann::detail::dtoa_impl::diyfp::sub(&v44, v47);
  v14 = nlohmann::detail::dtoa_impl::diyfp::sub(&v44, v46);
  v15 = -v45;
  v16 = v44 >> -v45;
  if (!v16)
  {
    nlohmann::detail::dtoa_impl::grisu2_digit_gen();
  }

  v17 = v14;
  v18 = 1 << v15;
  v19 = (1 << v15) - 1;
  v20 = v19 & v44;
  if (v16 <= 0x3B9AC9FF)
  {
    if (v16 <= 0x5F5E0FF)
    {
      if (v16 <= 0x98967F)
      {
        if (v16 <= 0xF423F)
        {
          v23 = v16 >> 5;
          v24 = v16 >> 4;
          if (v16 <= 9)
          {
            v25 = 1;
          }

          else
          {
            v25 = 10;
          }

          if (v16 <= 9)
          {
            v26 = 1;
          }

          else
          {
            v26 = 2;
          }

          if (v16 <= 0x63)
          {
            v27 = v26;
          }

          else
          {
            v27 = 3;
          }

          if (v16 <= 0x63)
          {
            v28 = v25;
          }

          else
          {
            v28 = 100;
          }

          if (v16 <= 0x3E7)
          {
            v29 = v27;
          }

          else
          {
            v29 = 4;
          }

          if (v16 <= 0x3E7)
          {
            v30 = v28;
          }

          else
          {
            v30 = 1000;
          }

          if (v24 <= 0x270)
          {
            v31 = v29;
          }

          else
          {
            v31 = 5;
          }

          if (v24 <= 0x270)
          {
            v32 = v30;
          }

          else
          {
            v32 = 10000;
          }

          if (v23 <= 0xC34)
          {
            v22 = v31;
          }

          else
          {
            v22 = 6;
          }

          if (v23 > 0xC34)
          {
            v21 = 100000;
          }

          else
          {
            v21 = v32;
          }
        }

        else
        {
          v21 = 1000000;
          v22 = 7;
        }
      }

      else
      {
        v21 = 10000000;
        v22 = 8;
      }
    }

    else
    {
      v21 = 100000000;
      v22 = 9;
    }
  }

  else
  {
    v21 = 1000000000;
    v22 = 10;
  }

  v33 = v22 + 1;
  do
  {
    v34 = v16 / v21;
    if (v16 / v21 >= 0xA)
    {
      nlohmann::detail::dtoa_impl::grisu2_digit_gen();
    }

    v16 = v16 % v21;
    v35 = *a2;
    *a2 = v35 + 1;
    *(a1 + v35) = v34 | 0x30;
    if ((v16 << v15) + v20 <= v13)
    {
      *a3 = *a3 + v33 - 2;
      v18 = v21 << v15;
      v40 = *a2;
      v41 = a1;
      v42 = v13;
      v20 += v16 << v15;
      return nlohmann::detail::dtoa_impl::grisu2_round(v41, v40, v17, v42, v20, v18);
    }

    v21 /= 0xAu;
    --v33;
  }

  while (v33 > 1);
  if (v20 <= v13)
  {
    nlohmann::detail::dtoa_impl::grisu2_digit_gen();
  }

  v36 = 0;
  do
  {
    if (v20 >= 0x199999999999999ALL)
    {
      nlohmann::detail::dtoa_impl::grisu2_digit_gen();
    }

    v37 = (10 * v20) >> v15;
    if (v37 >= 0xA)
    {
      nlohmann::detail::dtoa_impl::grisu2_digit_gen();
    }

    v38 = *a2;
    *a2 = v38 + 1;
    *(a1 + v38) = v37 | 0x30;
    v39 = 5 * v13;
    v20 = (10 * v20) & v19;
    v13 *= 10;
    v17 *= 10;
    --v36;
  }

  while (v20 > 2 * v39);
  *a3 += v36;
  v40 = *a2;
  v41 = a1;
  v42 = v13;
  return nlohmann::detail::dtoa_impl::grisu2_round(v41, v40, v17, v42, v20, v18);
}

avas::server::mx::MXAccessor *std::unique_ptr<avas::server::mx::MXAccessor>::reset[abi:ne200100](avas::server::mx::MXAccessor **a1, avas::server::mx::MXAccessor *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    avas::server::mx::MXAccessor::~MXAccessor(result);

    JUMPOUT(0x245CEEB60);
  }

  return result;
}

CFTypeRef avas::server::mx::MXObjectBase::GetMXSessionRef@<X0>(CFTypeRef this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 2);
  if (v3)
  {
    this = CFRetain(*(this + 2));
  }

  *a2 = v3;
  return this;
}

uint64_t nlohmann::detail::dtoa_impl::grisu2(uint64_t a1, unsigned int *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, nlohmann::detail::dtoa_impl *a10)
{
  v31[0] = a4;
  v31[1] = a5;
  v30[0] = a6;
  v30[1] = a7;
  v29[0] = a9;
  v29[1] = a10;
  if (a10 != a5)
  {
    nlohmann::detail::dtoa_impl::grisu2();
  }

  if (a10 != a7)
  {
    nlohmann::detail::dtoa_impl::grisu2();
  }

  cached_power_for_binary_exponent = nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent(a10);
  v15 = v14;
  v27 = cached_power_for_binary_exponent;
  v28 = v16;
  v17 = nlohmann::detail::dtoa_impl::diyfp::mul(v30, &v27);
  v19 = v18;
  v20 = nlohmann::detail::dtoa_impl::diyfp::mul(v31, &v27);
  v22 = v21;
  v23 = nlohmann::detail::dtoa_impl::diyfp::mul(v29, &v27);
  *a3 = -v15;
  return nlohmann::detail::dtoa_impl::grisu2_digit_gen(a1, a2, a3, v20 + 1, v22, v17, v19, v25, v23 - 1, v24);
}

uint64_t nlohmann::detail::dtoa_impl::diyfp::sub(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    v4 = "x.e == y.e";
    v5 = 66;
LABEL_6:
    __assert_rtn("sub", "to_chars.hpp", v5, v4);
  }

  v2 = *a1 >= *a2;
  result = *a1 - *a2;
  if (!v2)
  {
    v4 = "x.f >= y.f";
    v5 = 67;
    goto LABEL_6;
  }

  return result;
}

uint64_t avas::server::AudioSessionInfo::AddMXNotificationListener(uint64_t **this, NSString *a2, int a3)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v26[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    v8 = *avas::server::gSessionServerLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = ((*this)[2])(this);
      *cf = 136315906;
      *&cf[4] = "AudioSessionInfo.mm";
      v20 = 1024;
      v21 = 681;
      v22 = 1024;
      *v23 = v9;
      *&v23[4] = 2112;
      *&v23[6] = v7;
      _os_log_impl(&dword_241701000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Session 0x%x setting kMXSessionProperty_SubscribeToNotifications for notification: %@", cf, 0x22u);
    }

    v10 = avas::server::mx::MXAccessor::SetMXProperty(this[15], *MEMORY[0x277D27350], v7);
    v11 = v10;
    if (v10)
    {
      v12 = *avas::server::gSessionServerLog(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = ((*this)[2])(this);
        *cf = 136316162;
        *&cf[4] = "AudioSessionInfo.mm";
        v20 = 1024;
        v21 = 686;
        v22 = 1024;
        *v23 = v13;
        *&v23[4] = 2112;
        *&v23[6] = v7;
        v24 = 1024;
        v25 = v11;
        _os_log_impl(&dword_241701000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Session 0x%x failed to set SubscribeToNotifications for: %@ with a status: %d", cf, 0x28u);
      }
    }
  }

  CMNotificationCenterGetDefaultLocalCenter();
  avas::server::ConstAudioSessionInfo::ToOpaqueRef(this);
  (*(*this[15][1] + 64))(cf);
  v14 = CMNotificationCenterAddListener();
  v15 = *cf;
  if (*cf)
  {
    CFRelease(*cf);
  }

  if (v14)
  {
    v16 = *avas::server::gSessionServerLog(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *cf = 136315650;
      *&cf[4] = "AudioSessionInfo.mm";
      v20 = 1024;
      v21 = 693;
      v22 = 2112;
      *v23 = v6;
      _os_log_impl(&dword_241701000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d AddMXNotificationListener failed for %@", cf, 0x1Cu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t avas::server::ConstAudioSessionInfo::ToOpaqueRef(avas::server::ConstAudioSessionInfo *this)
{
  (*(*this + 72))(&v3);
  v1 = *(v3 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v1;
}

unint64_t nlohmann::detail::dtoa_impl::diyfp::mul(uint64_t a1, uint64_t a2)
{
  v2 = HIDWORD(*a1);
  v3 = HIDWORD(*a2);
  v4 = v3 * *a1;
  v5 = *a2 * v2;
  v6 = ((*a2 * *a1) >> 32) + v4 + v5;
  v7 = (*(a1 + 8) + *(a2 + 8) + 64);
  return HIDWORD(v5) + v3 * v2 + HIDWORD(v4) + ((v6 + 0x80000000) >> 32);
}

void avas::server::LegacySessionManager::PrivateFindOrCreatePrimaryApplication(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = v9;
  {
    if (v9)
    {
      *algn_281338ED0 = 0u;
      byte_281338EE0 = 1;
      memset(buf, 0, 32);
      dword_281338EE4 = audit_token_to_pid(buf);
    }
  }

  {
    if (v9)
    {
      *&v20 = -1;
      *(&v20 + 1) = -1;
      unk_281338EA8 = v20;
      byte_281338EB8 = 1;
      *buf = v20;
      *&buf[16] = v20;
      dword_281338EBC = audit_token_to_pid(buf);
    }
  }

  if (*(a3 + 88))
  {
    v11 = *(a3 + 72);
    *buf = *(a3 + 56);
    *&buf[16] = v11;
    *&buf[32] = *(a3 + 88);
    if (v9)
    {
      goto LABEL_6;
    }

    v12 = *(a3 + 72);
    v21[0] = *(a3 + 56);
    v21[1] = v12;
    v22 = *(a3 + 88);
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else if (!*(a3 + 92))
  {
LABEL_6:
    v13 = *avas::server::gSessionServerLog(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "ServerSessionManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1097;
      _os_log_impl(&dword_241701000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d error - missing valid source process identity / audit token", buf, 0x12u);
    }

    *a5 = 0;
    *(a5 + 8) = 0;
    goto LABEL_13;
  }

  v14 = std::__tree<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::__map_value_compare<avas::server::ProcessIdentity,std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::less<avas::server::ProcessIdentity>,true>,std::allocator<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>>>::find<avas::server::ProcessIdentity>(a1 + 64, a3 + 56);
  if ((a1 + 72) == v14)
  {
    v17 = *avas::server::gSessionServerLog(v14);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a3 + 92);
      if (*(a3 + 104))
      {
        v19 = "implicit";
      }

      else
      {
        v19 = "explicit";
      }

      *buf = 136315906;
      *&buf[4] = "ServerSessionManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1106;
      *&buf[18] = 2080;
      *&buf[20] = v19;
      *&buf[28] = 1024;
      *&buf[30] = v18;
      _os_log_impl(&dword_241701000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating %s audio app instance for %d", buf, 0x22u);
    }

    avas::server::LegacySessionManager::PrivateCreateAudioAppImpl(a1, a2, a3, v10);
  }

  v15 = *(v14 + 10);
  *a5 = *(v14 + 9);
  *(a5 + 8) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_13:
  *(a5 + 16) = 0;

  v16 = *MEMORY[0x277D85DE8];
}

void sub_241713344(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

void avas::server::AudioSessionInfo::AddCFNotificationListener(avas::server::AudioSessionInfo *this, const __CFString *a2)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  v5 = avas::server::ConstAudioSessionInfo::ToOpaqueRef(this);

  CFNotificationCenterAddObserver(LocalCenter, v5, avas::server::HandleCFNotification, a2, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

uint64_t nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent(nlohmann::detail::dtoa_impl *this)
{
  if (this <= -1501)
  {
    nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent();
  }

  if (this >= 1501)
  {
    nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent();
  }

  v1 = 78913 * (-61 - this) / 0x40000;
  if (this < -61)
  {
    ++v1;
  }

  if (v1 <= -315)
  {
    nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent();
  }

  v2 = ((v1 + 307 + (((v1 + 307) >> 28) & 7)) << 16) >> 19;
  if (v2 >= 0x4F)
  {
    nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent();
  }

  v3 = (&nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent(int)::kCachedPowers + 16 * v2);
  v4 = v3[1] + this;
  if (v4 <= -125)
  {
    nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent();
  }

  if (v4 >= -95)
  {
    nlohmann::detail::dtoa_impl::get_cached_power_for_binary_exponent();
  }

  return *v3;
}

uint64_t nlohmann::detail::dtoa_impl::format_buffer(nlohmann::detail::dtoa_impl *this, char *a2, int a3, int a4, int a5)
{
  if ((a4 & 0x80000000) == 0)
  {
    nlohmann::detail::dtoa_impl::format_buffer();
  }

  if (a5 <= 0)
  {
    nlohmann::detail::dtoa_impl::format_buffer();
  }

  v5 = this;
  v6 = a2;
  v7 = a3 + a2;
  if ((a3 & 0x80000000) == 0 && v7 <= a5)
  {
    memset(this + a2, 48, a3);
    *(v5 + v7) = 12334;
    return v5 + v7 + 2;
  }

  if (v7 < 1 || v7 > a5)
  {
    if (v7 > a4 && v7 <= 0)
    {
      v10 = -v7;
      memmove(this + v10 + 2, this, a2);
      *v5 = 11824;
      memset(v5 + 2, 48, v10);
      return v5 + v10 + v6 + 2;
    }

    if (a2 != 1)
    {
      memmove(this + 2, this + 1, a2 - 1);
      *(v5 + 1) = 46;
      v5 = (v5 + v6);
    }

    *(v5 + 1) = 101;
    if (v7 <= -999)
    {
      nlohmann::detail::dtoa_impl::format_buffer();
    }

    if (v7 >= 1001)
    {
      nlohmann::detail::dtoa_impl::format_buffer();
    }

    if (v7 >= 1)
    {
      v11 = 43;
    }

    else
    {
      v11 = 45;
    }

    if (v7 - 1 >= 0)
    {
      v12 = v7 - 1;
    }

    else
    {
      v12 = 1 - v7;
    }

    *(v5 + 2) = v11;
    if (v12 > 9)
    {
      if (v12 > 0x63)
      {
        *(v5 + 3) = v12 / 0x64u + 48;
        v15 = v12 % 0x64u;
        v13 = v5 + 5;
        *(v5 + 4) = (v15 / 0xAu) | 0x30;
        LOBYTE(v12) = v15 % 0xAu;
        v14 = 4;
        goto LABEL_29;
      }

      v13 = v5 + 4;
      *(v5 + 3) = (v12 / 0xAu) | 0x30;
      LOBYTE(v12) = v12 % 0xAu;
    }

    else
    {
      v13 = v5 + 4;
      *(v5 + 3) = 48;
    }

    v14 = 3;
LABEL_29:
    result = v5 + v14 + 2;
    *v13 = v12 | 0x30;
    return result;
  }

  if ((a3 & 0x80000000) == 0)
  {
    nlohmann::detail::dtoa_impl::format_buffer();
  }

  v9 = this + v7;
  memmove(v9 + 1, v9, a2 - v7);
  *v9 = 46;
  return v5 + v6 + 1;
}

void anonymous namespace::GetCFNotificationNames(_anonymous_namespace_ *this)
{
  v3 = *MEMORY[0x277D85DE8];
  {
    v2 = *MEMORY[0x277CEFD10];
    qword_281338FB8 = 0;
    unk_281338FC0 = 0;
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t nlohmann::detail::dtoa_impl::grisu2_round(uint64_t this, char *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a2 <= 0)
  {
    nlohmann::detail::dtoa_impl::grisu2_round();
  }

  if (a3 > a4)
  {
    nlohmann::detail::dtoa_impl::grisu2_round();
  }

  if (a4 < a5)
  {
    nlohmann::detail::dtoa_impl::grisu2_round();
  }

  if (!a6)
  {
    nlohmann::detail::dtoa_impl::grisu2_round();
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
        nlohmann::detail::dtoa_impl::grisu2_round();
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

uint64_t *std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,std::shared_ptr<avas::server::AudioSessionInfo>> const&>(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 32);
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

uint64_t avas::server::forbid_acq::SetPropertiesOnMXSession(uint64_t a1, const audit_token_t *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v21 = a3;
  avas::server::ForbidAudioControlQueue(v21);
  avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v24, a1, a2, 1);
  v5 = v24;
  if (v24)
  {
    if (v21)
    {
      v6 = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      avas::server::ConstAudioSessionInfo::JSONFormattedDescription(v5, a1, __p);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      v7 = v24;
      if (!v24)
      {
        v18 = _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:v18 process:? delegate:?];
      }

      v8 = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = (*(**(*(v7 + 15) + 8) + 64))(cf);
      v10 = *cf;
      if (*cf)
      {
        CFRelease(*cf);
      }

      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      if (v10)
      {
        strcpy(v26, "set_property");
        if ([(avas::server *)v21 count]== 1)
        {
          v11 = [(avas::server *)v21 allKeys];
          v19 = [v11 objectAtIndexedSubscript:0];

          [(avas::server *)v21 objectForKeyedSubscript:v19];
          objc_claimAutoreleasedReturnValue();
        }

        else
        {
          v21;
        }

        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[4],char [4],0>(&v32);
      }

      v20 = 2003329396;
      v14 = *avas::server::gSessionServerLog(v9);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = __p;
        if (v23 < 0)
        {
          v15 = __p[0];
        }

        *cf = 136315650;
        *&cf[4] = "AudioSessionServerImpCommon.mm";
        v28 = 1024;
        v29 = 426;
        v30 = 2080;
        v31 = v15;
        _os_log_impl(&dword_241701000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cannot get MXSessionRef for session: %s", cf, 0x1Cu);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v13 = *avas::server::gSessionServerLog(v24);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *cf = 136315394;
        *&cf[4] = "AudioSessionServerImpCommon.mm";
        v28 = 1024;
        v29 = 419;
        _os_log_impl(&dword_241701000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Invalid propertiesToSet", cf, 0x12u);
      }

      v20 = -50;
    }
  }

  else
  {
    v20 = 561210739;
    v12 = *avas::server::gSessionServerLog(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *cf = 136315650;
      *&cf[4] = "AudioSessionServerImpCommon.mm";
      v28 = 1024;
      v29 = 414;
      v30 = 1024;
      LODWORD(v31) = a1;
      _os_log_impl(&dword_241701000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cannot get session info for session ID: 0x%x", cf, 0x18u);
    }
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_241714858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, uint64_t a61)
{
  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(&a52);

  if (a59 < 0)
  {
    operator delete(__p);
  }

  if (a61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a61);
  }

  _Unwind_Resume(a1);
}

uint64_t *avas::server::SessionCollection::insert(uint64_t **a1, unsigned int *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  if (v4)
  {
    v5 = a1 + 3;
    v6 = *a2;
    v7 = (a1 + 4);
    do
    {
      v8 = *(v4 + 8);
      v9 = v8 >= v6;
      v10 = v8 < v6;
      if (v9)
      {
        v7 = v4;
      }

      v4 = v4[v10];
    }

    while (v4);
    if (v7 != (a1 + 4) && v6 >= *(v7 + 8))
    {
      v11 = *avas::server::gSessionServerLog(a1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *a2;
        v15 = 136315650;
        v16 = "SessionCollection.h";
        v17 = 1024;
        v18 = 53;
        v19 = 1024;
        v20 = v12;
        _os_log_impl(&dword_241701000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Session ID 0x%x conflicts with existing IONode", &v15, 0x18u);
      }

      std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>>>::erase(v5, v7);
    }
  }

  result = std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,std::shared_ptr<avas::server::AudioSessionInfo>> const&>(a1, a2);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void avas::server::GetSpatialPreferences(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a3;
  v20 = v8;
  if (!v7)
  {
    v19 = _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:v19 process:? delegate:?];
  }

  if ([v8 isEqualToString:*MEMORY[0x277D270B8]])
  {
    v9 = 1836019574;
  }

  else
  {
    v9 = 1936684398;
  }

  v10 = [v7 spatialPreferencesForSession:a2 contentType:v9];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [v10 spatialAudioSources];
  v12 = 0;
  v13 = [v11 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v13)
  {
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        if ([*(*(&v21 + 1) + 8 * i) unsignedIntValue] == 1835824233)
        {
          v12 = 1;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v13);
  }

  v17 = *avas::server::gSessionServerLog(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v26 = "AudioSessionServerImpNotificationHandlers.mm";
    v27 = 1024;
    v28 = 920;
    v29 = 1024;
    v30 = v12;
    v31 = 1024;
    v32 = a2;
    _os_log_impl(&dword_241701000, v17, OS_LOG_TYPE_INFO, "%25s:%-5d spatialEnabled is %d SessionID is 0x%x", buf, 0x1Eu);
  }

  *a4 = v10;
  *(a4 + 8) = v12;

  v18 = *MEMORY[0x277D85DE8];
}

avas::server::ConstAudioSessionInfoAccessor *avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(avas::server::ConstAudioSessionInfoAccessor *this, int a2)
{
  *this = 0;
  *(this + 1) = 0;
  v4 = avas::server::LegacySessionManager::Instance(this);
  avas::server::LegacySessionManager::FindSession(v4, a2, &v8);
  v5 = v8;
  v8 = 0uLL;
  v6 = *(this + 1);
  *this = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    if (*(&v8 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
    }
  }

  return this;
}

void sub_241714FEC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::server::ConstAudioSessionInfo::SetAVASProperty(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 128);
  if (v7)
  {
    v8 = avas::server::PropertyStorage::SetProperty(v7, v5, v6);
  }

  else
  {
    v8 = 2003329396;
    v9 = *avas::server::gSessionServerLog(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "AudioSessionInfo.mm";
      v14 = 1024;
      v15 = 258;
      _os_log_impl(&dword_241701000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Bad error - invalid property store!", &v12, 0x12u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t avas::server::PropertyStorage::SetProperty(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  os_unfair_lock_lock((a1 + 8));
  v7 = [*(a1 + 16) valueWithNilHandlingForKey:v5];

  if (v7)
  {
    [*(a1 + 16) setValueWithNilHandling:v6 forKey:v5];
    v9 = 0;
  }

  else
  {
    v10 = *avas::server::gSessionServerLog(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315650;
      v14 = "PropertyStorage.mm";
      v15 = 1024;
      v16 = 83;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_241701000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Error setting property - property key %@ not present in storage", &v13, 0x1Cu);
    }

    v9 = 4294967246;
  }

  os_unfair_lock_unlock((a1 + 8));

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_241715268(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 2);

  _Unwind_Resume(a1);
}

void avas::server::AudioSessionInfo::SetSpatialPreferences(uint64_t a1, void *a2)
{
  v3 = a2;
  std::optional<AVAudioSessionSpatialPreferences * {__strong}>::operator=[abi:ne200100]<AVAudioSessionSpatialPreferences * {__strong}&,void>(a1 + 344, &v3);
}

void avas::server::DeviceTimeObserver::createSession(uint64_t *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a2;
  avas::server::DeviceTimeObserver::findSessionSlot(a1, a2, v28);
  if (v29 == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEE8B0](exception, "DeviceTimeObserver: duplicate sessionID");
  }

  if ((a3 & 0x100000000) == 0)
  {
    v8 = *a1;
    v9 = a1[1];
    if (*a1 == v9)
    {
      goto LABEL_9;
    }

    v10 = *a1;
    do
    {
      v11 = 0;
      v12 = (v10 + 56);
      do
      {
        v13 = v12[v11 >> 6];
        if (((1 << v11) & v13) == 0)
        {
          v12[v11 >> 6] = (1 << v11) | v13;
          goto LABEL_32;
        }

        ++v11;
      }

      while (v11 != 543);
      v10 = (v10 + 128);
    }

    while (v10 != v9);
LABEL_9:
    v28[0] = (v9 - v8) >> 7;
    v35[0] = a1;
    if (v9 >= a1[2])
    {
      v7 = std::vector<avas::server::DeviceTimeObserver::SharedBlockOwner>::__emplace_back_slow_path<avas::server::DeviceTimeObserver*,unsigned long const&>(a1, v35, v28);
    }

    else
    {
      avas::server::DeviceTimeObserver::SharedBlockOwner::SharedBlockOwner(v9, a1, (v9 - v8) >> 7);
      v7 = (v9 + 128);
      a1[1] = v9 + 128;
    }

    v11 = 0;
    a1[1] = v7;
    v10 = (v7 - 128);
    v21 = v7 - 72;
    while (1)
    {
      v22 = *&v21[8 * (v11 >> 6)];
      if (((1 << v11) & v22) == 0)
      {
        break;
      }

      if (++v11 == 543)
      {
        avas::server::DeviceTimeObserver::createDevice();
      }
    }

    *&v21[8 * (v11 >> 6)] = (1 << v11) | v22;
LABEL_32:
    *&v32 = v10;
    DWORD2(v32) = v11;
    LOBYTE(v33) = 1;
    if (!((543 * *(v10 + 1) + v11) >> 32))
    {
      operator new();
    }

LABEL_49:
    v28[0] = &unk_28535A5C0;
    gsl::details::terminate(v7);
  }

  avas::server::DeviceTimeObserver::findSessionSlot(a1, a3, &v32);
  if (v33)
  {
    LODWORD(v28[0]) = a3;
    boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>>::find(a1 + 3, v28, v35);
    v14 = a1[3];
    v15 = a1[4];
    if (!v14 && v15)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    if (v35[0] == (v14 + 32 * v15))
    {
      avas::server::DeviceTimeObserver::createSession();
    }

    v17 = *(v35[0] + 1);
    v16 = *(v35[0] + 2);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v17)
    {
      v24 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v24 process:? delegate:?];
    }

    if ((*(v17 + 4) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v18 = DWORD2(v32) + 543 * *(v32 + 8);
    if (HIDWORD(v18))
    {
      goto LABEL_49;
    }

    if (*v17 != v18)
    {
      v25 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v25 process:? delegate:?];
    }

    std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(v17 + 16, &v34);
    if ((v19 & 1) == 0)
    {
      v26 = _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:v26 process:? delegate:?];
    }

    if (v16)
    {
      v20 = 0;
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v20 = 1;
    }

    v23 = a3 & 0x100000000;
    LODWORD(v28[0]) = v34;
    v28[1] = v17;
    v29 = v16;
    v30 = 0;
    v31 = BYTE4(v23);
    boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>>::insert_unique(a1 + 3, v28, v35);
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    if (v23)
    {
      if ((v33 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      avas::server::DeviceTimeObserver::addSiblingToSameReferringSessionListsAsSource(a1, v34, &v32);
    }

    *a4 = v32;
    *(a4 + 16) = v33;
    if ((v20 & 1) == 0)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  else
  {
    *a4 = 0;
    *(a4 + 16) = 0;
  }
}
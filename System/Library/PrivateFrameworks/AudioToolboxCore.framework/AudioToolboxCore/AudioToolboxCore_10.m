void CAX4CCString::CAX4CCString(CAX4CCString *this, unsigned int a2)
{
  v4 = bswap32(a2);
  *(this + 1) = v4;
  v5 = MEMORY[0x1E69E9830];
  if ((v4 & 0x80) != 0)
  {
    if (!__maskrune(v4, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v6 = *(this + 2);
  if ((v6 & 0x80000000) != 0)
  {
    if (!__maskrune(v6, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v5 + 4 * v6 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v7 = *(this + 3);
  if ((v7 & 0x80000000) != 0)
  {
    if (!__maskrune(v7, 0x40000uLL))
    {
      goto LABEL_17;
    }

LABEL_13:
    v8 = *(this + 4);
    if ((v8 & 0x80000000) != 0)
    {
      if (!__maskrune(v8, 0x40000uLL))
      {
        goto LABEL_17;
      }
    }

    else if ((*(v5 + 4 * v8 + 60) & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    *(this + 5) = 39;
    *this = 39;
    return;
  }

  if ((*(v5 + 4 * v7 + 60) & 0x40000) != 0)
  {
    goto LABEL_13;
  }

LABEL_17:
  if (a2 + 199999 > 0x61A7E)
  {
    snprintf(this, 0x10uLL, "0x%x");
  }

  else
  {
    snprintf(this, 0x10uLL, "%d");
  }
}

std::runtime_error *std::overflow_error::overflow_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55C0] + 16);
  return result;
}

uint64_t IPCAUClient::RemoteAUServer::ServerPortDied(IPCAUClient::RemoteAUServer *this)
{
  v14 = *MEMORY[0x1E69E9840];
  CADeprecated::TSingleton<IPCAUClient>::instance();
  os_unfair_recursive_lock_lock_with_options();
  if (kInterAppAudioScope)
  {
    v2 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315650;
    v9 = "IPCAUClient.cpp";
    v10 = 1024;
    v11 = 400;
    v12 = 2048;
    v13 = this;
    _os_log_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d %p", &v8, 0x1Cu);
  }

LABEL_7:
  v4 = *(this + 22);
  v3 = *(this + 23);
  while (v4 != v3)
  {
    v5 = *(*v4 + 72);
    RemoteAUPropertyListeners::Notify(*(*v4 + 104), *(*v4 + 112));
    v4 += 8;
  }

  result = os_unfair_recursive_lock_unlock();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CADeprecated::TSingleton<IPCAUClient>::instance()
{
  if (atomic_load_explicit(&CADeprecated::TSingleton<IPCAUClient>::sOnce, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&CADeprecated::TSingleton<IPCAUClient>::sOnce, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<CADeprecated::TSingleton<IPCAUClient>::instance(void)::{lambda(void)#1} &&>>);
  }

  return CADeprecated::TSingleton<IPCAUClient>::sInstance;
}

OpaqueAudioComponentInstance *RemoteAUPropertyListeners::Notify(OpaqueAudioComponentInstance *this, OpaqueAudioComponentInstance *a2)
{
  if (a2 != this)
  {
    v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - this) >> 3);
    if (v2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::allocator<RemoteAUPropertyListeners::AUPropertyListener>::allocate_at_least[abi:ne200100](v2);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  return this;
}

void sub_18F6862B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<RemoteAUPropertyListeners::AUPropertyListener>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_18F686794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, dispatch_object_t object)
{
  std::__split_buffer<std::function<void ()(void)>>::~__split_buffer(&object);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&a11);
  v21 = *v19;
  if (*v19)
  {
    *(v15 + 264) = v21;
    operator delete(v21);
  }

  CADeprecated::XBasicMIGServer::~XBasicMIGServer(v17);
  MEMORY[0x193ADE240](v15 + 8);
  MEMORY[0x193ADF220](v15, v16);
  _Unwind_Resume(a1);
}

uint64_t CADeprecated::TSingleton<AURegistrationServerConnection>::instance()
{
  if (atomic_load_explicit(CADeprecated::TSingleton<AURegistrationServerConnection>::sOnce, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(CADeprecated::TSingleton<AURegistrationServerConnection>::sOnce, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<CADeprecated::TSingleton<AURegistrationServerConnection>::instance(void)::{lambda(void)#1} &&>>);
  }

  return CADeprecated::TSingleton<AURegistrationServerConnection>::sInstance;
}

uint64_t IPCAUClient::ConnectToRegistrationServer(atomic_uint *volatile *this)
{
  v29 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  MainBundle = CFBundleGetMainBundle();
  v3 = MainBundle;
  if (MainBundle)
  {
    Identifier = CFBundleGetIdentifier(MainBundle);
    ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(v3, *MEMORY[0x1E695E120]);
    v20 = ValueForInfoDictionaryKey;
    if (Identifier)
    {
      if (ValueForInfoDictionaryKey)
      {
        CASerializer::CASerializer(&theData, 0);
        operator<<();
        operator<<();
        v5 = *(CADeprecated::TSingleton<AURegistrationServerConnection>::instance() + 48);
        explicit = atomic_load_explicit(this[24], memory_order_acquire);
        Length = theData;
        if (theData)
        {
          BytePtr = CFDataGetBytePtr(theData);
          Length = theData;
          if (theData)
          {
            Length = CFDataGetLength(theData);
          }
        }

        else
        {
          BytePtr = 0;
        }

        memset(reply_port, 0, 32);
        reply_port[5] = 2;
        reply_port[6] = explicit;
        reply_port[8] = 1245184;
        v24 = BytePtr;
        v25 = 16777472;
        v26 = Length;
        v27 = *MEMORY[0x1E69E99E0];
        v28 = Length;
        v11 = mig_get_reply_port();
        reply_port[1] = v5;
        reply_port[2] = v11;
        *buf = -2147478253;
        *&reply_port[3] = 0x15F9600000000;
        if (MEMORY[0x1EEE9AC50])
        {
          voucher_mach_msg_set(buf);
          v12 = reply_port[2];
        }

        else
        {
          v12 = v11;
        }

        v13 = mach_msg(buf, 275, 0x44u, 0x2Cu, v12, gMediaServerTimeout, 0);
        v14 = v13;
        if ((v13 - 268435458) <= 0xE && ((1 << (v13 - 2)) & 0x4003) != 0)
        {
          mig_put_reply_port(reply_port[2]);
        }

        else
        {
          if (!v13)
          {
            if (reply_port[4] == 71)
            {
              v15 = -308;
            }

            else if (reply_port[4] == 90106)
            {
              v15 = -300;
              if ((*buf & 0x80000000) == 0 && reply_port[0] == 36 && !reply_port[1])
              {
                v15 = reply_port[7];
                if (!reply_port[7])
                {
                  goto LABEL_41;
                }
              }
            }

            else
            {
              v15 = -301;
            }

LABEL_44:
            mach_msg_destroy(buf);
            v14 = v15;
LABEL_45:
            if (kInterAppAudioScope)
            {
              v16 = *kInterAppAudioScope;
              if (!*kInterAppAudioScope)
              {
                goto LABEL_51;
              }
            }

            else
            {
              v16 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *reply_port = "IPCAUClient.cpp";
              LOWORD(reply_port[2]) = 1024;
              *(&reply_port[2] + 2) = 139;
              HIWORD(reply_port[3]) = 1024;
              reply_port[4] = v14;
              _os_log_impl(&dword_18F5DF000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d IPCAUClient: can't connect to server (%d)", buf, 0x18u);
            }

            goto LABEL_51;
          }

          mig_dealloc_reply_port(reply_port[2]);
        }

        v15 = 268435460;
        if (v14 == 268435460)
        {
          if ((*buf & 0x1F00) == 0x1100)
          {
            mach_port_deallocate(*MEMORY[0x1E69E9A60], reply_port[2]);
          }

          goto LABEL_44;
        }

        if (v14)
        {
          goto LABEL_45;
        }

LABEL_41:
        IPCAUClient::RefreshRemoteAUList(this);
LABEL_51:
        MEMORY[0x193ADE2A0](&theData);
        goto LABEL_52;
      }

      if (kInterAppAudioScope)
      {
        v9 = *kInterAppAudioScope;
        if (!*kInterAppAudioScope)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *reply_port = "IPCAUClient.cpp";
        LOWORD(reply_port[2]) = 1024;
        *(&reply_port[2] + 2) = 129;
        v10 = "%25s:%-5d IPCAUClient: bundle display name is nil";
        goto LABEL_14;
      }

      goto LABEL_52;
    }
  }

  else
  {
    v20 = 0;
    Identifier = 0;
  }

  if (kInterAppAudioScope)
  {
    v9 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *reply_port = "IPCAUClient.cpp";
    LOWORD(reply_port[2]) = 1024;
    *(&reply_port[2] + 2) = 125;
    v10 = "%25s:%-5d IPCAUClient: main bundle ID is nil";
LABEL_14:
    _os_log_impl(&dword_18F5DF000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0x12u);
  }

LABEL_52:
  result = os_unfair_recursive_lock_unlock();
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void AudioToolboxSoftLink::instance(AudioToolboxSoftLink *this)
{
  {
    if (v1)
    {
      AudioToolboxSoftLink::AudioToolboxSoftLink(v1);
    }
  }
}

void CADeprecated::XBasicMIGServer::~XBasicMIGServer(CADeprecated::XBasicMIGServer *this)
{
  *this = &unk_1F0336D90;
  v2 = *(this + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

{
  CADeprecated::XBasicMIGServer::~XBasicMIGServer(this);

  JUMPOUT(0x193ADF220);
}

uint64_t IPCAUClient::InterruptionListener(uint64_t this, void *a2, unsigned int a3, _DWORD *a4, const void *a5)
{
  if (*a4 == 1)
  {
    v5 = this;
    os_unfair_recursive_lock_lock_with_options();
    v6 = *(v5 + 232);
    if (v6 != (v5 + 240))
    {
      do
      {
        v7 = v6[5];
        if (*(v7 + 84) == 1)
        {
          IPCAUClient::AUInstance::Uninitialize(v7);
        }

        v8 = v6[1];
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
            v9 = v6[2];
            v10 = *v9 == v6;
            v6 = v9;
          }

          while (!v10);
        }

        v6 = v9;
      }

      while (v9 != (v5 + 240));
    }

    return os_unfair_recursive_lock_unlock();
  }

  return this;
}

void IPCAUClient::AUInstance::Uninitialize(IPCAUClient::AUInstance *this)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(this + 84) == 1)
  {
    *(this + 84) = 0;
    *(this + 49) = 0;
    mach_port_deallocate(*MEMORY[0x1E69E9A60], *(this + 6));
    *(this + 6) = 0;
    v2 = *(this + 2);
    if (*(v2 + 48))
    {
      v12 = 0;
      IPCAUClient::RemoteAUServer::TransientWaker::TransientWaker(&v10, v2, &v12);
      if (v12)
      {
LABEL_16:
        IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v10);
        goto LABEL_17;
      }

      if (v11)
      {
        v3 = 0x7FFFFFFF;
      }

      else
      {
        v3 = 10000;
      }

      v4 = IPCAUClient_Uninitialize(*(*(this + 2) + 48), v3, *(this + 20));
      v5 = v4;
      if (v4 == 268435459 || v4 == -308)
      {
        if (kInterAppAudioScope)
        {
          v6 = *kInterAppAudioScope;
          if (!*kInterAppAudioScope)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v6 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v14 = "IPCAUClient.cpp";
          v15 = 1024;
          v16 = 433;
          v17 = 1024;
          v18 = v5;
          v19 = 1024;
          v20 = -66749;
          _os_log_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d converting result %d -> %d", buf, 0x1Eu);
        }
      }

LABEL_15:
      v7 = *(this + 2);
      v8 = CADeprecated::TSingleton<AURegistrationServerConnection>::instance();
      IPCAURegClient_SetProcessWakeState(*(v8 + 48), *(v7 + 52), 3, buf);
      goto LABEL_16;
    }
  }

LABEL_17:
  v9 = *MEMORY[0x1E69E9840];
}

void sub_18F68704C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(va);
  _Unwind_Resume(a1);
}

uint64_t *IPCAUClient::RemoteAUServer::TransientWaker::TransientWaker(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  *a1 = a2;
  CADeprecated::TSingleton<IPCAUClient>::instance();
  os_unfair_recursive_lock_lock_with_options();
  v5 = *a1;
  *(a1 + 8) = 0;
  v6 = CADeprecated::TSingleton<AURegistrationServerConnection>::instance();
  v9 = 0;
  v7 = IPCAURegClient_SetProcessWakeState(*(v6 + 48), *(v5 + 52), 0, &v9);
  *(a1 + 8) = v9 != 0;
  *a3 = v7;
  os_unfair_recursive_lock_unlock();
  return a1;
}

void IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(IPCAUClient::RemoteAUServer::TransientWaker *this)
{
  CADeprecated::TSingleton<IPCAUClient>::instance();
  os_unfair_recursive_lock_lock_with_options();
  v2 = *this;
  v3 = CADeprecated::TSingleton<AURegistrationServerConnection>::instance();
  IPCAURegClient_SetProcessWakeState(*(v3 + 48), *(v2 + 52), 1, &v4);
  os_unfair_recursive_lock_unlock();
}

void AudioToolboxSoftLink::AudioToolboxSoftLink(AudioToolboxSoftLink *this)
{
  AudioToolboxSoftLink::instance(void)::global = 0;
  off_1EAD2D910 = 0;
  v1 = dlopen("/System/Library/Frameworks/AudioToolbox.framework/AudioToolbox", 1);
  if (!v1)
  {
    __assert_rtn("AudioToolboxSoftLink", "AudioToolboxSoftLink.h", 27, "lib != nullptr");
  }

  v2 = v1;
  AudioToolboxSoftLink::instance(void)::global = dlsym(v1, "AudioSessionAddInterruptionListenerOnPrimarySession");
  if (!AudioToolboxSoftLink::instance(void)::global || (off_1EAD2D910 = dlsym(v2, "AudioSessionCheckActive")) == 0)
  {
    __assert_rtn("init", "DLSymbol.h", 23, "mImpl != nullptr");
  }
}

uint64_t IPCAUClient::RefreshRemoteAUList(IPCAUClient *this)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = 268435460;
  os_unfair_recursive_lock_lock_with_options();
  v2 = 5;
  do
  {
    v3 = CADeprecated::TSingleton<AURegistrationServerConnection>::instance();
    v4 = MEMORY[0x1EEE9AC50];
    v5 = *(v3 + 48);
    memset(&msg[4] + 4, 0, 28);
    memset(msg + 4, 0, 32);
    reply_port = mig_get_reply_port();
    msg[1] = __PAIR64__(reply_port, v5);
    LODWORD(msg[0]) = 5395;
    msg[2] = 0x15F9700000000;
    if (v4)
    {
      voucher_mach_msg_set(msg);
      v7 = HIDWORD(msg[1]);
    }

    else
    {
      v7 = reply_port;
    }

    v8 = mach_msg(msg, 275, 0x18u, 0x40u, v7, gMediaServerTimeout, 0);
    v9 = v8;
    if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(HIDWORD(msg[1]));
      goto LABEL_20;
    }

    if (!v8)
    {
      if (HIDWORD(msg[2]) == 71)
      {
        v9 = -308;
      }

      else if (HIDWORD(msg[2]) == 90107)
      {
        if ((msg[0] & 0x80000000) != 0)
        {
          v9 = -300;
          if (LODWORD(msg[3]) != 1 || *(msg + 4) != 56 || HIBYTE(msg[4]) != 1)
          {
            goto LABEL_29;
          }

          v11 = LODWORD(msg[5]);
          if (LODWORD(msg[5]) == HIDWORD(msg[6]))
          {
            v13 = *(&msg[3] + 4);
            goto LABEL_35;
          }
        }

        else if (HIDWORD(msg[0]) == 36 && LODWORD(msg[4]))
        {
          if (LODWORD(msg[1]))
          {
            v9 = -300;
          }

          else
          {
            v9 = msg[4];
          }

          goto LABEL_29;
        }

        v9 = -300;
      }

      else
      {
        v9 = -301;
      }

LABEL_29:
      mach_msg_destroy(msg);
      goto LABEL_30;
    }

    mig_dealloc_reply_port(HIDWORD(msg[1]));
LABEL_20:
    if (v9 == 268435460)
    {
      if ((msg[0] & 0x1F00) == 0x1100)
      {
        mach_port_deallocate(*MEMORY[0x1E69E9A60], HIDWORD(msg[1]));
      }

      mach_msg_destroy(msg);
      goto LABEL_45;
    }

LABEL_30:
    if (v9 != 268435459)
    {
      v1 = v9;
      if (v9)
      {
        goto LABEL_45;
      }

      v13 = 0;
      v11 = 0;
LABEL_35:
      CADeserializer::CADeserializer(msg, v13);
      __p = 0;
      v26 = 0;
      v27 = 0;
      v24 = &unk_1F03257B0;
      LODWORD(v23[0]) = 0;
      CADeserializer::Read(msg, v23);
      if (LODWORD(v23[0]) > ((v27 - __p) >> 3))
      {
        std::allocator<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> *>::allocate_at_least[abi:ne200100](LODWORD(v23[0]));
      }

      if (LODWORD(v23[0]))
      {
        LODWORD(v31) = 0;
        cf.__begin_ = 0;
        v28.__begin_ = 0;
        LODWORD(v29) = 0;
        CADeserializer::Read(msg, &v31);
        operator>>();
        CADeserializer::Read(msg, &buf);
        CADeserializer::Read(msg, &buf.__begin_ + 4);
        CADeserializer::Read(msg, &buf.__end_);
        CADeserializer::Read(msg, &buf.__end_ + 4);
        CADeserializer::Read(msg, &buf.__cap_);
        operator>>();
        CADeserializer::Read(msg, &v29);
        operator new();
      }

      mig_deallocate(v13, v11);
      if (kInterAppAudioScope)
      {
        v14 = *kInterAppAudioScope;
        if (!*kInterAppAudioScope)
        {
LABEL_54:
          GlobalComponentPluginMgr(v23);
          v16 = v23[1];
          memset(&cf, 0, 24);
          cf.mSorted = 1;
          v17 = __p;
          v18 = v26;
          if (__p != v26)
          {
            do
            {
              v19 = *(*v17 + 8);
              if (v19 != getpid())
              {
                applesauce::CF::StringRef::from_get(&v31, *(*v17 + 16));
                applesauce::CF::StringRef::from_get(&v29, *(*v17 + 48));
                v20 = *(*v17 + 56);
                operator new();
              }

              v17 += 8;
            }

            while (v17 != v18);
          }

          AudioComponentVector::subtract(&buf, &cf, &v16->__m_.__opaque[40]);
          AudioComponentVector::subtract(&v28, &v16->__m_.__opaque[40], &cf);
          AudioComponentMgr_Base::addAndRemoveComponents(v16, &buf, v28.__begin_, v28.__end_);
          if (&v16->__m_.__opaque[40] != &cf)
          {
            std::vector<std::shared_ptr<APComponent>>::__assign_with_size[abi:ne200100]<std::shared_ptr<APComponent>*,std::shared_ptr<APComponent>*>(&v16->__m_.__opaque[40], cf.__begin_, cf.__end_, (cf.__end_ - cf.__begin_) >> 4);
          }

          v16[1].__m_.__opaque[0] = cf.mSorted;
          v31 = &v28;
          std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v31);
          v28.__begin_ = &buf;
          std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v28);
          buf.__begin_ = &cf;
          std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&buf);
          if (v23[0])
          {
            std::recursive_mutex::unlock(v23[0]);
          }

          dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_486);
          OwnedPtrVector<PublishedAU *>::~OwnedPtrVector(&v24);
          MEMORY[0x193ADE3E0](msg);
          goto LABEL_63;
        }
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf.__begin_) = 136315650;
        *(&buf.__begin_ + 4) = "IPCAUClient.cpp";
        WORD2(buf.__end_) = 1024;
        *(&buf.__end_ + 6) = 175;
        WORD1(buf.__cap_) = 1024;
        HIDWORD(buf.__cap_) = (v26 - __p) >> 3;
        _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Fetched %d remote AU's", &buf, 0x18u);
      }

      goto LABEL_54;
    }

    sleep(1u);
    v12 = CADeprecated::TSingleton<AURegistrationServerConnection>::instance();
    AURegistrationServerConnection::Connect(v12);
    --v2;
  }

  while (v2);
  v1 = 268435459;
LABEL_45:
  if (kInterAppAudioScope)
  {
    v15 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      goto LABEL_63;
    }
  }

  else
  {
    v15 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LODWORD(msg[0]) = 136315650;
    *(msg + 4) = "IPCAUClient.cpp";
    WORD2(msg[1]) = 1024;
    *(&msg[1] + 6) = 165;
    WORD1(msg[2]) = 1024;
    HIDWORD(msg[2]) = v1;
    _os_log_impl(&dword_18F5DF000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d IPCAUClient: error fetching list (%d)", msg, 0x18u);
  }

LABEL_63:
  result = os_unfair_recursive_lock_unlock();
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F687B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::recursive_mutex *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int16 *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  a17 = (v30 - 160);
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&a17);
  a17 = &a23;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&a17);
  if (a11)
  {
    std::recursive_mutex::unlock(a11);
  }

  OwnedPtrVector<PublishedAU *>::~OwnedPtrVector(&a13);
  MEMORY[0x193ADE3E0](&a30);
  os_unfair_recursive_lock_unlock();
  _Unwind_Resume(a1);
}

void *OwnedPtrVector<PublishedAU *>::~OwnedPtrVector(void *a1)
{
  *a1 = &unk_1F03257B0;
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    v4 = a1[1];
    do
    {
      if (*v4)
      {
        (*(**v4 + 8))(*v4);
      }

      v4 += 8;
    }

    while (v4 != v3);
    v5 = a1[2];
    v6 = v5 - v3;
    if (v5 != v3)
    {
      memmove(v2, v3, v5 - v3);
    }

    v7 = a1[1];
    a1[2] = &v2[v6];
    v2 = v7;
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void ___ZN11IPCAUClient19RefreshRemoteAUListEv_block_invoke()
{
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, @"com.apple.coreaudio.AudioComponentRegistrationsChanged", 0, 0, 1u);
}

void OwnedPtrVector<PublishedAU *>::~OwnedPtrVector(void *a1)
{
  OwnedPtrVector<PublishedAU *>::~OwnedPtrVector(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t std::__split_buffer<std::function<void ()(void)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__func<IPCAUClient::IPCAUClient(void)::$_0,std::allocator<IPCAUClient::IPCAUClient(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F0325830;
  a2[1] = v2;
  return result;
}

void sub_18F688054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  MEMORY[0x193ADE1B0](v9 + 192);
  std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:ne200100](&object);
  CADeprecated::XRemoteMachServer::~XRemoteMachServer(v9);
  MEMORY[0x193ADF220](v9, v10);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<CADeprecated::XMachReceivePort>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0325778;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void IPCAUClient::RemoteAUServer::~RemoteAUServer(IPCAUClient::RemoteAUServer *this)
{
  IPCAUClient::RemoteAUServer::~RemoteAUServer(this);

  JUMPOUT(0x193ADF220);
}

{
  v13 = *MEMORY[0x1E69E9840];
  *this = &unk_1F0325710;
  if (kInterAppAudioScope)
  {
    v2 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315650;
    v8 = "IPCAUClient.cpp";
    v9 = 1024;
    v10 = 392;
    v11 = 2048;
    v12 = this;
    _os_log_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d destruct %p", &v7, 0x1Cu);
  }

LABEL_7:
  v3 = *(this + 21);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 25);
  if (v4)
  {
    *(this + 26) = v4;
    operator delete(v4);
  }

  v5 = *(this + 22);
  if (v5)
  {
    *(this + 23) = v5;
    operator delete(v5);
  }

  CADeprecated::XRemoteMachServer::~XRemoteMachServer(this);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_18F6882D4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void IPCAUClient::AUInstance::~AUInstance(IPCAUClient::AUInstance *this)
{
  IPCAUClient::AUInstance::~AUInstance(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0325748;
  v2 = *(this + 55);
  if (v2)
  {
    _Block_release(v2);
  }

  *(this + 35) = &unk_1F0336E90;
  v7 = (this + 344);
  std::vector<IPCAUSharedMemoryBase::Element>::__destroy_vector::operator()[abi:ne200100](&v7);
  SharableMemoryBlock::~SharableMemoryBlock(this + 35);
  while (1)
  {
    v3 = *(this + 16);
    if (!v3)
    {
      break;
    }

    *(this + 16) = *v3;
    MEMORY[0x193ADF220]();
  }

  while (1)
  {
    v4 = *(this + 17);
    if (!v4)
    {
      break;
    }

    *(this + 17) = *v4;
    MEMORY[0x193ADF220]();
  }

  while (1)
  {
    v5 = *(this + 18);
    if (!v5)
    {
      break;
    }

    *(this + 18) = *v5;
    MEMORY[0x193ADF220]();
  }

  v6 = *(this + 13);
  if (v6)
  {
    *(this + 14) = v6;
    operator delete(v6);
  }

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

void std::vector<IPCAUSharedMemoryBase::Element>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<IPCAUSharedMemoryBase::Element>>::destroy[abi:ne200100]<IPCAUSharedMemoryBase::Element,void,0>(i))
    {
      i -= 56;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void SharableMemoryBlock::~SharableMemoryBlock(xpc_object_t *this)
{
  *this = (MEMORY[0x1E69E5068] + 16);
  (*(MEMORY[0x1E69E5068] + 32))();
  xpc_release(this[6]);
  this[6] = 0;
}

void std::allocator_traits<std::allocator<IPCAUSharedMemoryBase::Element>>::destroy[abi:ne200100]<IPCAUSharedMemoryBase::Element,void,0>(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    std::default_delete<CADeprecated::CABufferList>::operator()[abi:ne200100](v2);
  }

  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v3)
  {

    std::default_delete<CADeprecated::CABufferList>::operator()[abi:ne200100](v3);
  }
}

void std::default_delete<CADeprecated::CABufferList>::operator()[abi:ne200100](void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    MEMORY[0x193ADF1F0](v2, 0x1000C8077774924);
  }

  operator delete(__p);
}

void IPCAUSharedMemoryBase::Free(IPCAUSharedMemoryBase *this)
{
  SharableMemoryBlock::Free(this);
  if ((*(this + 92) & 1) == 0)
  {
    v3 = *(this + 8);
    for (i = *(this + 9); i != v3; std::allocator_traits<std::allocator<IPCAUSharedMemoryBase::Element>>::destroy[abi:ne200100]<IPCAUSharedMemoryBase::Element,void,0>(i))
    {
      i -= 56;
    }

    *(this + 9) = v3;
  }
}

void IPCAUSharedMemoryBase::~IPCAUSharedMemoryBase(xpc_object_t *this)
{
  *this = &unk_1F0336E90;
  v2 = this + 8;
  std::vector<IPCAUSharedMemoryBase::Element>::__destroy_vector::operator()[abi:ne200100](&v2);
  SharableMemoryBlock::~SharableMemoryBlock(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0336E90;
  v2 = this + 8;
  std::vector<IPCAUSharedMemoryBase::Element>::__destroy_vector::operator()[abi:ne200100](&v2);

  SharableMemoryBlock::~SharableMemoryBlock(this);
}

void CADeprecated::CAGuard::Locker::~Locker(CADeprecated::CAGuard::Locker *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    (*(**this + 24))();
  }
}

IPCAUClient::RemoteAUServer *IPCAUClient::RemoteAUServer::RemoteAUServer(IPCAUClient::RemoteAUServer *this, uint64_t a2, int a3, const __CFString *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = CADeprecated::XRemoteMachServer::XRemoteMachServer(this, "RemoteAUServer", 0);
  *(v6 + 168) = 0u;
  v7 = (v6 + 168);
  *v6 = &unk_1F0325710;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 212) = 0u;
  if (kInterAppAudioScope)
  {
    v8 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 0;
    *&object[4] = 0;
    v9 = MEMORY[0x1E69E9A60];
    MEMORY[0x193ADFB80](*MEMORY[0x1E69E9A60], a2, 0, &object[4]);
    MEMORY[0x193ADFB80](*v9, a2, 1, &object[8]);
    MEMORY[0x193ADFB80](*v9, a2, 2, &v15 + 4);
    MEMORY[0x193ADFB80](*v9, a2, 4, &v15);
    v16[0] = 0;
    snprintf(v16, 0x80uLL, "port 0x%x: %d send, %d rcv, %d sendonce, %d dead name refs", a2, *&object[4], *&object[8], HIDWORD(v15), v15);
    *buf = 136316162;
    v18 = "IPCAUClient.cpp";
    v19 = 1024;
    v20 = 384;
    v21 = 2048;
    v22 = this;
    v23 = 1024;
    v24 = a2;
    v25 = 2080;
    v26 = v16;
    _os_log_impl(&dword_18F5DF000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %p new host port 0x%x %s", buf, 0x2Cu);
  }

LABEL_7:
  CADeprecated::XRemoteMachServer::SetServerPort(this);
  global_queue = dispatch_get_global_queue(0, 0);
  v11 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  *object = v11;
  CADeprecated::XMachPortDeathListener::SetDeathNotificationDispatchQueue();
  if (*object)
  {
    dispatch_release(*object);
  }

  if (*v7)
  {
    CFRetain(*v7);
  }

  v12 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_18F688A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  v16 = *(v14 + 25);
  if (v16)
  {
    *(v14 + 26) = v16;
    operator delete(v16);
  }

  v17 = *(v14 + 22);
  if (v17)
  {
    *(v14 + 23) = v17;
    operator delete(v17);
  }

  CADeprecated::XRemoteMachServer::~XRemoteMachServer(v14);
  _Unwind_Resume(a1);
}

uint64_t IPCAUClient::AUInstance::CloseMethod(IPCAUClient::AUInstance *this, void *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = *(this + 4);
  v4 = *(v3 + 16);
  v5 = CADeprecated::TSingleton<AURegistrationServerConnection>::instance();
  v6 = IPCAURegClient_SetProcessWakeState(*(v5 + 48), *(v4 + 52), 3, buf);
  if (!kInterAppAudioScope)
  {
    v7 = MEMORY[0x1E69E9C10];
LABEL_5:
    v6 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (v6)
    {
      v8 = *(v3 + 72);
      *buf = 136316162;
      *&buf[4] = "IPCAUClient.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 500;
      *&buf[18] = 2048;
      *&buf[20] = this;
      *&buf[28] = 2048;
      *&buf[30] = v3;
      *&buf[38] = 2048;
      *&buf[40] = v8;
      _os_log_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d self %p This %p instance %p", buf, 0x30u);
    }

    goto LABEL_7;
  }

  v7 = *kInterAppAudioScope;
  if (*kInterAppAudioScope)
  {
    goto LABEL_5;
  }

LABEL_7:
  v9 = CADeprecated::TSingleton<IPCAUClient>::instance(v6);
  os_unfair_recursive_lock_lock_with_options();
  v10 = v9[30];
  if (v10)
  {
    v11 = *(v3 + 72);
    v12 = v9 + 30;
    v13 = v9[30];
    do
    {
      v14 = v13[4];
      v15 = v14 >= v11;
      v16 = v14 < v11;
      if (v15)
      {
        v12 = v13;
      }

      v13 = v13[v16];
    }

    while (v13);
    if (v12 != v9 + 30 && v11 >= v12[4])
    {
      v17 = v12[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        v19 = v12;
        do
        {
          v18 = v19[2];
          v20 = *v18 == v19;
          v19 = v18;
        }

        while (!v20);
      }

      if (v9[29] == v12)
      {
        v9[29] = v18;
      }

      --v9[31];
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v10, v12);
      operator delete(v12);
    }
  }

  v21 = *(v3 + 16);
  v23 = *(v21 + 176);
  v22 = *(v21 + 184);
  while (v23 != v22)
  {
    if (*v23 == v3)
    {
      v24 = v22 - (v23 + 8);
      if (v22 != v23 + 8)
      {
        memmove(v23, v23 + 8, v22 - (v23 + 8));
      }

      *(v21 + 184) = &v23[v24];
      break;
    }

    v23 += 8;
  }

  os_unfair_recursive_lock_unlock();
  v58 = 0;
  IPCAUClient::RemoteAUServer::TransientWaker::TransientWaker(&v56, *(v3 + 16), &v58);
  v25 = v58;
  v26 = MEMORY[0x1E69E99E0];
  if (v58)
  {
    goto LABEL_32;
  }

  v44 = *(*(v3 + 16) + 48);
  if (v57)
  {
    v45 = 0x7FFFFFFF;
  }

  else
  {
    v45 = 10000;
  }

  v46 = *(v3 + 80);
  memset(&buf[4], 0, 40);
  *&buf[24] = *MEMORY[0x1E69E99E0];
  *&buf[32] = v46;
  reply_port = mig_get_reply_port();
  *&buf[8] = v44;
  *&buf[12] = reply_port;
  *buf = 5395;
  *&buf[16] = 0x1605900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(buf);
    v48 = *&buf[12];
  }

  else
  {
    v48 = reply_port;
  }

  v53 = mach_msg(buf, 275, 0x24u, 0x2Cu, v48, v45, 0);
  v54 = v53;
  if ((v53 - 268435458) <= 0xE && ((1 << (v53 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&buf[12]);
  }

  else
  {
    if (!v53)
    {
      if (*&buf[20] == 71)
      {
        v54 = 4294966988;
      }

      else if (*&buf[20] == 90301)
      {
        v54 = 4294966996;
        if ((*buf & 0x80000000) == 0 && *&buf[4] == 36 && !*&buf[8])
        {
          v54 = *&buf[32];
          if (!*&buf[32])
          {
            v25 = 0;
            goto LABEL_32;
          }
        }
      }

      else
      {
        v54 = 4294966995;
      }

      goto LABEL_81;
    }

    mig_dealloc_reply_port(*&buf[12]);
  }

  if (v54 != 268435460)
  {
    goto LABEL_82;
  }

  if ((*buf & 0x1F00) == 0x1100)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], *&buf[12]);
  }

  v54 = 268435460;
LABEL_81:
  mach_msg_destroy(buf);
LABEL_82:
  if (v54 != 268435459 && v54 != -308)
  {
    v25 = v54;
    goto LABEL_32;
  }

  v25 = 4294900547;
  if (kInterAppAudioScope)
  {
    v55 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v55 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "IPCAUClient.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 433;
    *&buf[18] = 1024;
    *&buf[20] = v54;
    *&buf[24] = 1024;
    *&buf[26] = -66749;
    _os_log_impl(&dword_18F5DF000, v55, OS_LOG_TYPE_DEFAULT, "%25s:%-5d converting result %d -> %d", buf, 0x1Eu);
  }

LABEL_32:
  v27 = sleep(1u);
  v28 = CADeprecated::TSingleton<IPCAUClient>::instance(v27);
  v29 = *(v28 + 264) - *(v28 + 256);
  if ((v29 >> 3) >= 1)
  {
    v30 = (v29 >> 3) & 0x7FFFFFFF;
    v31 = v30 + 1;
    v32 = 8 * v30;
    v33 = -8 * v30;
    do
    {
      v34 = *(v28 + 256);
      v35 = *(v34 + v32 - 8);
      if (v35[22] == v35[23] && v35[25] == v35[26])
      {
        v36 = (v34 + v32);
        v37 = v34 + v32 - 8;
        v38 = *(v28 + 264);
        v39 = &v38[-v34];
        v40 = &v39[v33];
        if (v36 != v38)
        {
          memmove(v37, v36, &v39[v33]);
        }

        *(v28 + 264) = &v40[v37];
        (*(*v35 + 8))(v35);
      }

      --v31;
      v32 -= 8;
      v33 += 8;
    }

    while (v31 > 1);
  }

  v41 = *(CADeprecated::TSingleton<AURegistrationServerConnection>::instance() + 48);
  *&buf[24] = *v26;
  *&buf[32] = *(v3 + 56);
  v42 = mig_get_reply_port();
  *buf = 5395;
  *&buf[8] = v41;
  *&buf[12] = v42;
  *&buf[16] = 0x15F9A00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(buf);
    v43 = *&buf[12];
  }

  else
  {
    v43 = v42;
  }

  v49 = mach_msg(buf, 275, 0x30u, 0x2Cu, v43, gMediaServerTimeout, 0);
  v50 = v49;
  if ((v49 - 268435458) <= 0xE && ((1 << (v49 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&buf[12]);
    goto LABEL_59;
  }

  if (v49)
  {
    mig_dealloc_reply_port(*&buf[12]);
LABEL_59:
    if (v50 == 268435460)
    {
      if ((*buf & 0x1F00) == 0x1100)
      {
        mach_port_deallocate(*MEMORY[0x1E69E9A60], *&buf[12]);
      }

      goto LABEL_62;
    }

    goto LABEL_63;
  }

  if (*&buf[20] != 90110 || (*buf & 0x80000000) != 0 || *&buf[4] != 36 || *&buf[8] || *&buf[32])
  {
LABEL_62:
    mach_msg_destroy(buf);
  }

LABEL_63:
  IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v56);
  v51 = *MEMORY[0x1E69E9840];
  return v25;
}

uint64_t IPCAUClient::AUInstance::OpenMethod(IPCAUClient::AUInstance *this, const UInt8 *a2, OpaqueAudioComponentInstance *a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = 4294900547;
  v4 = *(this + 4);
  if (*(*(v4 + 16) + 48))
  {
    MainBundle = CFBundleGetMainBundle();
    if (MainBundle)
    {
      v8 = MainBundle;
      v51 = 0;
      IPCAUClient::RemoteAUServer::TransientWaker::TransientWaker(&v49, *(v4 + 16), &v51);
      v9 = v51;
      if (v51)
      {
LABEL_84:
        IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v49);
        v3 = v9;
        goto LABEL_85;
      }

      theData[1] = CFBundleGetIdentifier(v8);
      CASerializer::CASerializer(theData, 0);
      v10 = operator<<();
      v11 = *(*(v4 + 16) + 48);
      if (v50)
      {
        v12 = 0x7FFFFFFF;
      }

      else
      {
        v12 = 10000;
      }

      explicit = atomic_load_explicit(*(CADeprecated::TSingleton<IPCAUClient>::instance(v10) + 192), memory_order_acquire);
      v14 = *(v4 + 8);
      v46 = *(v4 + 28);
      v47 = *(v4 + 44);
      Length = theData[0];
      if (theData[0])
      {
        BytePtr = CFDataGetBytePtr(theData[0]);
        Length = theData[0];
        if (theData[0])
        {
          Length = CFDataGetLength(theData[0]);
        }
      }

      else
      {
        BytePtr = 0;
      }

      v18 = *(v4 + 56);
      memset(reply_port, 0, 32);
      *&reply_port[20] = 2;
      *&reply_port[24] = explicit;
      *&reply_port[32] = 1245184;
      v54 = BytePtr;
      LODWORD(v55) = 16777472;
      HIDWORD(v55) = Length;
      v56 = *MEMORY[0x1E69E99E0];
      v58 = v46;
      v57 = v14;
      v59 = v47;
      v60 = Length;
      v61 = v18;
      v19 = mig_get_reply_port();
      *&reply_port[4] = v11;
      *&reply_port[8] = v19;
      *buf = -2147478253;
      *&reply_port[12] = 0x1605800000000;
      if (MEMORY[0x1EEE9AC50])
      {
        voucher_mach_msg_set(buf);
        v20 = *&reply_port[8];
      }

      else
      {
        v20 = v19;
      }

      v21 = mach_msg(buf, 275, 0x6Cu, 0x30u, v20, v12, 0);
      v22 = v21;
      if ((v21 - 268435458) <= 0xE && ((1 << (v21 - 2)) & 0x4003) != 0)
      {
        mig_put_reply_port(*&reply_port[8]);
        goto LABEL_37;
      }

      if (v21)
      {
        mig_dealloc_reply_port(*&reply_port[8]);
LABEL_37:
        if (v22 == 268435460)
        {
          if ((*buf & 0x1F00) == 0x1100)
          {
            mach_port_deallocate(*MEMORY[0x1E69E9A60], *&reply_port[8]);
          }

          mach_msg_destroy(buf);
          v3 = 268435460;
          goto LABEL_55;
        }

LABEL_46:
        if (v22 == 268435459 || v22 == -308)
        {
          if (kInterAppAudioScope)
          {
            v24 = *kInterAppAudioScope;
            if (!*kInterAppAudioScope)
            {
LABEL_83:
              MEMORY[0x193ADE2A0](theData);
              v9 = v3;
              goto LABEL_84;
            }
          }

          else
          {
            v24 = MEMORY[0x1E69E9C10];
          }

          v21 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
          if (v21)
          {
            *buf = 136315906;
            *reply_port = "IPCAUClient.cpp";
            *&reply_port[8] = 1024;
            *&reply_port[10] = 433;
            *&reply_port[14] = 1024;
            *&reply_port[16] = v22;
            *&reply_port[20] = 1024;
            *&reply_port[22] = -66749;
            _os_log_impl(&dword_18F5DF000, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d converting result %d -> %d", buf, 0x1Eu);
          }
        }

        else
        {
          v3 = v22;
        }

LABEL_55:
        if (kInterAppAudioScope)
        {
          v25 = *kInterAppAudioScope;
          if (!*kInterAppAudioScope)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v25 = MEMORY[0x1E69E9C10];
        }

        v21 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);
        if (v21)
        {
          *buf = 136316418;
          *reply_port = "IPCAUClient.cpp";
          *&reply_port[8] = 1024;
          *&reply_port[10] = 487;
          *&reply_port[14] = 2048;
          *&reply_port[16] = this;
          *&reply_port[24] = 2048;
          *&reply_port[26] = v4;
          *&reply_port[34] = 2048;
          v54 = a2;
          LOWORD(v55) = 1024;
          *(&v55 + 2) = v3;
          _os_log_impl(&dword_18F5DF000, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d self %p This %p instance %p err %d", buf, 0x36u);
        }

LABEL_61:
        if (!v3)
        {
          *(v4 + 72) = a2;
          v26 = CADeprecated::TSingleton<IPCAUClient>::instance(v21);
          os_unfair_recursive_lock_lock_with_options();
          v27 = *(v4 + 72);
          v28 = *(v26 + 240);
          if (!v28)
          {
LABEL_68:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v29 = v28;
              v30 = v28[4];
              if (v27 >= v30)
              {
                break;
              }

              v28 = *v29;
              if (!*v29)
              {
                goto LABEL_68;
              }
            }

            if (v30 >= v27)
            {
              break;
            }

            v28 = v29[1];
            if (!v28)
            {
              goto LABEL_68;
            }
          }

          v31 = *(v4 + 16);
          v33 = v31[23];
          v32 = v31[24];
          if (v33 >= v32)
          {
            v35 = v31[22];
            v36 = v33 - v35;
            v37 = (v33 - v35) >> 3;
            v38 = v37 + 1;
            if ((v37 + 1) >> 61)
            {
              std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
            }

            v39 = v32 - v35;
            if (v39 >> 2 > v38)
            {
              v38 = v39 >> 2;
            }

            if (v39 >= 0x7FFFFFFFFFFFFFF8)
            {
              v40 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v40 = v38;
            }

            if (v40)
            {
              if (!(v40 >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v41 = (v33 - v35) >> 3;
            v42 = (8 * v37);
            v43 = (8 * v37 - 8 * v41);
            *v42 = v4;
            v34 = v42 + 1;
            memcpy(v43, v35, v36);
            v31[22] = v43;
            v31[23] = v34;
            v31[24] = 0;
            if (v35)
            {
              operator delete(v35);
            }
          }

          else
          {
            *v33 = v4;
            v34 = v33 + 8;
          }

          v31[23] = v34;
          os_unfair_recursive_lock_unlock();
          v3 = 0;
        }

        goto LABEL_83;
      }

      if (*&reply_port[16] == 71)
      {
        v22 = 4294966988;
      }

      else if (*&reply_port[16] == 90300)
      {
        if ((*buf & 0x80000000) == 0)
        {
          if (*reply_port == 40)
          {
            if (!*&reply_port[4])
            {
              v22 = *&reply_port[28];
              if (!*&reply_port[28])
              {
                v3 = 0;
                *(v4 + 80) = *&reply_port[32];
                goto LABEL_55;
              }

              goto LABEL_45;
            }
          }

          else if (*reply_port == 36)
          {
            if (*&reply_port[4])
            {
              v23 = 1;
            }

            else
            {
              v23 = *&reply_port[28] == 0;
            }

            if (v23)
            {
              v22 = 4294966996;
            }

            else
            {
              v22 = *&reply_port[28];
            }

            goto LABEL_45;
          }
        }

        v22 = 4294966996;
      }

      else
      {
        v22 = 4294966995;
      }

LABEL_45:
      mach_msg_destroy(buf);
      goto LABEL_46;
    }

    if (kInterAppAudioScope)
    {
      v17 = *kInterAppAudioScope;
      if (!*kInterAppAudioScope)
      {
LABEL_16:
        v3 = 4294967246;
        goto LABEL_85;
      }
    }

    else
    {
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *reply_port = "IPCAUClient.cpp";
      *&reply_port[8] = 1024;
      *&reply_port[10] = 474;
      _os_log_impl(&dword_18F5DF000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d IPCAUClient: main bundle is nil", buf, 0x12u);
    }

    goto LABEL_16;
  }

LABEL_85:
  v44 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_18F6897B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  os_unfair_recursive_lock_unlock();
  MEMORY[0x193ADE2A0](va);
  IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(va1);
  _Unwind_Resume(a1);
}

uint64_t IPCAUSharedMemory::RecomputeHeaderSize(uint64_t this, int a2)
{
  v2 = 4 * a2 + 2275;
  if (!a2)
  {
    v2 = 2279;
  }

  *(this + 56) = (v2 + *(this + 96)) & 0xFFFFFFF0;
  return this;
}

void IPCAUSharedMemory::~IPCAUSharedMemory(xpc_object_t *this)
{
  *this = &unk_1F0336E90;
  v2 = this + 8;
  std::vector<IPCAUSharedMemoryBase::Element>::__destroy_vector::operator()[abi:ne200100](&v2);
  SharableMemoryBlock::~SharableMemoryBlock(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0336E90;
  v2 = this + 8;
  std::vector<IPCAUSharedMemoryBase::Element>::__destroy_vector::operator()[abi:ne200100](&v2);

  SharableMemoryBlock::~SharableMemoryBlock(this);
}

uint64_t (*IPCAUClient::AUInstance::LookupMethod(IPCAUClient::AUInstance *this))(void *)
{
  if ((this - 1) > 0x13)
  {
    return 0;
  }

  else
  {
    return off_1F0325888[(this - 1)];
  }
}

uint64_t IPCAU_Process(IPCAUClient::AUInstance **a1, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4, AudioBufferList *a5)
{
  if (a2 && a3 && a5)
  {
    return IPCAUClient::AUInstance::RenderOrProcess(a1[4], 1, a2, a3, 0, a4, a5);
  }

  else
  {
    return 4294967246;
  }
}

uint64_t IPCAUClient::AUInstance::RenderOrProcess(IPCAUClient::AUInstance *this, char a2, unsigned int *a3, const AudioTimeStamp *a4, uint64_t a5, uint64_t a6, AudioBufferList *a7)
{
  v96 = *MEMORY[0x1E69E9840];
  if (*(this + 84) == 1)
  {
    if (!*(this + 49))
    {
      *(this + 49) = pthread_self();
    }

    os_unfair_recursive_lock_lock_with_options();
    i = 0;
    v14 = IPCAUSharedMemoryBase::mutableAudioBufferList((this + 280), *(this + 23), a6);
    if (!v14)
    {
      goto LABEL_77;
    }

    v15 = v14;
    if (a7->mNumberBuffers != *v14)
    {
      v18 = 4294967246;
      goto LABEL_78;
    }

    v16 = *(this + 38);
    if (!v16)
    {
LABEL_33:
      if (a2)
      {
        v18 = 4294967292;
LABEL_79:
        os_unfair_recursive_lock_unlock();
        goto LABEL_80;
      }

      if (*(this + 152) == 1)
      {
        v27 = this + 128;
        while (1)
        {
          v28 = *(this + 17);
          if (!v28)
          {
            break;
          }

          v29 = *(this + 17);
          atomic_compare_exchange_strong(this + 17, &v29, 0);
          if (v29 == v28)
          {
            v30 = 0;
            do
            {
              v31 = v30;
              v30 = v28;
              v28 = *v28;
              *v30 = v31;
            }

            while (v28);
            while (1)
            {
              v32 = v31;
              v33 = *(v30 + 8);
              if (v33)
              {
                if (v33 == 2)
                {
                  v37 = *v27;
                  if (*v27)
                  {
                    do
                    {
                      v38 = *v37;
                      do
                      {
                        v39 = *(this + 18);
                        *v37 = v39;
                        v40 = v39;
                        atomic_compare_exchange_strong(this + 18, &v40, v37);
                      }

                      while (v40 != v39);
                      v37 = v38;
                    }

                    while (v38);
                  }

                  do
                  {
                    v41 = *(this + 18);
                    *v30 = v41;
                    v42 = v41;
                    atomic_compare_exchange_strong(this + 18, &v42, v30);
                  }

                  while (v42 != v41);
                }

                else if (v33 == 1)
                {
                  v34 = *v27;
                  if (*v27)
                  {
                    v35 = (this + 128);
                    while (1)
                    {
                      v36 = v34;
                      if (v34[2] == *(v30 + 16) && v34[3] == *(v30 + 24))
                      {
                        break;
                      }

                      v34 = *v34;
                      v35 = v36;
                      if (!*v36)
                      {
                        goto LABEL_67;
                      }
                    }

                    *v35 = *v34;
                    do
                    {
                      v47 = *(this + 18);
                      *v36 = v47;
                      v48 = v47;
                      atomic_compare_exchange_strong(this + 18, &v48, v36);
                    }

                    while (v48 != v47);
                  }

                  do
                  {
LABEL_67:
                    v49 = *(this + 18);
                    *v30 = v49;
                    v50 = v49;
                    atomic_compare_exchange_strong(this + 18, &v50, v30);
                  }

                  while (v50 != v49);
                }
              }

              else
              {
                v43 = *v27;
                v44 = (this + 128);
                if (*v27)
                {
                  while (1)
                  {
                    v44 = v43;
                    if (v43[2] == *(v30 + 16) && v43[3] == *(v30 + 24))
                    {
                      break;
                    }

                    v43 = *v43;
                    if (!*v44)
                    {
                      goto LABEL_62;
                    }
                  }

                  do
                  {
                    v45 = *(this + 18);
                    *v30 = v45;
                    v46 = v45;
                    atomic_compare_exchange_strong(this + 18, &v46, v30);
                  }

                  while (v46 != v45);
                }

                else
                {
LABEL_62:
                  *v44 = v30;
                  *v30 = 0;
                }
              }

              if (!v32)
              {
                goto LABEL_69;
              }

              v31 = *v32;
              v30 = v32;
            }
          }
        }

LABEL_69:
        for (i = *a3 | 4; ; (*(v27 + 2))(*(v27 + 3), &i, a4, a5, a6, a7))
        {
          v27 = *v27;
          if (!v27)
          {
            break;
          }
        }
      }

      if (!*(this + 23))
      {
        goto LABEL_84;
      }

      if (!*(this + 40))
      {
        v18 = 4294956420;
        goto LABEL_78;
      }

      v51 = IPCAUSharedMemoryBase::mutableAudioBufferList((this + 280), 0, a6);
      if (v51)
      {
        if (*(this + 40) == 2)
        {
          v52 = (*(this + 21))(*(this + 22), a3, a4, 0, a6, v51);
        }

        else
        {
          v52 = AudioUnitRender(*(this + 23), a3, a4, *(this + 48), a6, v51);
        }

        v18 = v52;
        if (v52)
        {
          goto LABEL_78;
        }

LABEL_84:
        if (*(this + 153))
        {
          v55 = 0;
          v56 = 0;
        }

        else
        {
          v57 = pthread_self();
          ScheduledPriority = CADeprecated::CAPThread::GetScheduledPriority(v57, v58);
          v55 = ScheduledPriority;
          auoop::gWorkgroupManager(ScheduledPriority);
          v56 = *auoop::tlsWorkgroupPort();
          *(this + 153) = 1;
        }

        v60 = *(this + 6);
        v61 = *(this + 20);
        mSampleTime = a4->mSampleTime;
        mHostTime = a4->mHostTime;
        mRateScalar = a4->mRateScalar;
        v65 = a4->mFlags & 7;
        memset(&msg[4], 0, 32);
        *&msg[24] = 1;
        *&msg[28] = v56;
        v84 = 1245184;
        v85 = *MEMORY[0x1E69E99E0];
        v66 = *a3;
        v86 = v61;
        v87 = v66;
        v88 = mSampleTime;
        v89 = mHostTime;
        v90 = mRateScalar;
        v91 = v65;
        v92 = 0;
        v93 = a5;
        v94 = a6;
        v95 = v55;
        reply_port = mig_get_reply_port();
        *&msg[8] = v60;
        *&msg[12] = reply_port;
        *msg = -2147478253;
        *&msg[16] = 0x1606600000000;
        if (MEMORY[0x1EEE9AC50])
        {
          voucher_mach_msg_set(msg);
          v68 = *&msg[12];
        }

        else
        {
          v68 = reply_port;
        }

        v69 = mach_msg(msg, 275, 0x64u, 0x30u, v68, gMediaServerTimeout, 0);
        v70 = v69;
        if ((v69 - 268435458) <= 0xE && ((1 << (v69 - 2)) & 0x4003) != 0)
        {
          mig_put_reply_port(*&msg[12]);
          goto LABEL_106;
        }

        if (v69)
        {
          mig_dealloc_reply_port(*&msg[12]);
LABEL_106:
          v18 = 268435460;
          if (v70 == 268435460)
          {
            if ((*msg & 0x1F00) == 0x1100)
            {
              mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
            }

            mach_msg_destroy(msg);
            goto LABEL_78;
          }

          goto LABEL_115;
        }

        if (*&msg[20] == 71)
        {
          v70 = 4294966988;
        }

        else if (*&msg[20] == 90314)
        {
          if ((*msg & 0x80000000) == 0)
          {
            if (*&msg[4] == 40)
            {
              if (!*&msg[8])
              {
                v70 = *&msg[32];
                if (!*&msg[32])
                {
                  *a3 = v84;
                  goto LABEL_127;
                }

                goto LABEL_114;
              }
            }

            else if (*&msg[4] == 36)
            {
              if (*&msg[8])
              {
                v71 = 1;
              }

              else
              {
                v71 = *&msg[32] == 0;
              }

              if (v71)
              {
                v70 = 4294966996;
              }

              else
              {
                v70 = *&msg[32];
              }

              goto LABEL_114;
            }
          }

          v70 = 4294966996;
        }

        else
        {
          v70 = 4294966995;
        }

LABEL_114:
        mach_msg_destroy(msg);
LABEL_115:
        if (v70 == 268435459)
        {
          goto LABEL_118;
        }

        if (v70)
        {
          if (v70 != -308)
          {
            v18 = v70;
            goto LABEL_78;
          }

LABEL_118:
          v18 = 4294900547;
          if (kInterAppAudioScope)
          {
            v72 = *kInterAppAudioScope;
            if (!*kInterAppAudioScope)
            {
              goto LABEL_78;
            }
          }

          else
          {
            v72 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            *msg = 136315906;
            *&msg[4] = "IPCAUClient.cpp";
            *&msg[12] = 1024;
            *&msg[14] = 433;
            *&msg[18] = 1024;
            *&msg[20] = v70;
            *&msg[24] = 1024;
            *&msg[26] = -66749;
            _os_log_impl(&dword_18F5DF000, v72, OS_LOG_TYPE_DEFAULT, "%25s:%-5d converting result %d -> %d", msg, 0x1Eu);
          }

          goto LABEL_78;
        }

LABEL_127:
        if (*(this + 152) == 1)
        {
          i = *a3 | 8;
          for (j = this + 128; ; (*(j + 2))(*(j + 3), &i, a4, a5, a6, v15))
          {
            j = *j;
            if (!j)
            {
              break;
            }
          }
        }

        v74 = *v15;
        if (v74)
        {
          v75 = 0;
          p_mData = &a7->mBuffers[0].mData;
          v77 = (v15 + 4);
          do
          {
            v78 = *(v77 - 1);
            *(p_mData - 1) = v78;
            v79 = *v77;
            if (*p_mData)
            {
              memcpy(*p_mData, v79, v78);
              v74 = *v15;
            }

            else
            {
              *p_mData = v79;
            }

            v18 = 0;
            ++v75;
            p_mData += 2;
            v77 += 2;
          }

          while (v75 < v74);
        }

        else
        {
          v18 = 0;
        }

        goto LABEL_78;
      }

LABEL_77:
      v18 = 4294956421;
      goto LABEL_78;
    }

    v17 = v16 + *(this + 94);
    if (*(v17 + 2176))
    {
      v18 = 4294900549;
LABEL_78:
      **(this + 38) = 0;
      goto LABEL_79;
    }

    v19 = v17 + 2048;
    *(v17 + 2120) = 0;
    v20 = *(this + 51);
    if (v20 && !v20(*(this + 50), v17 + 2104, v17 + 2112))
    {
      *(v19 + 72) |= 0x100u;
    }

    v21 = *(this + 52);
    if (v21 && !v21(*(this + 50), v19 + 76, v19 + 80, v19 + 84, v19 + 88))
    {
      *(v19 + 72) |= 0x200u;
    }

    msg[0] = 0;
    v81 = 0;
    v80 = 0;
    v22 = *(this + 54);
    if (v22 && !v22(*(this + 50), msg, &v81 + 1, &v81, v19 + 96, &v80, v19 + 104, v19 + 112))
    {
      v26 = *(v19 + 72);
      v25 = v26 | 0x400;
      *(v19 + 72) = v26 | 0x400;
      if (msg[0])
      {
        v25 = v26 | 0x402;
        *(v19 + 72) = v26 | 0x402;
      }

      if (!HIBYTE(v81))
      {
        goto LABEL_28;
      }

      v25 |= 4u;
    }

    else
    {
      v23 = *(this + 53);
      if (!v23 || v23(*(this + 50), msg, &v81, v19 + 96, &v80, v19 + 104, v19 + 112))
      {
LABEL_32:
        *(v19 + 120) = mach_absolute_time();
        goto LABEL_33;
      }

      v24 = *(v19 + 72);
      v25 = v24 | 0x400;
      *(v19 + 72) = v24 | 0x400;
      if (!msg[0])
      {
LABEL_28:
        if (v81)
        {
          v25 |= 1u;
          *(v19 + 72) = v25;
        }

        if (v80)
        {
          *(v19 + 72) = v25 | 8;
        }

        goto LABEL_32;
      }

      v25 = v24 | 0x402;
    }

    *(v19 + 72) = v25;
    goto LABEL_28;
  }

  v18 = 4294956429;
LABEL_80:
  v53 = *MEMORY[0x1E69E9840];
  return v18;
}

void *IPCAUSharedMemoryBase::mutableAudioBufferList(IPCAUSharedMemoryBase *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 8);
  if (0x6DB6DB6DB6DB6DB7 * ((*(this + 9) - v3) >> 3) <= a2)
  {
    return 0;
  }

  v5 = v3 + 56 * a2;
  v6 = *(this + 22);
  if (v6 >= a3)
  {
    v6 = a3;
  }

  v7 = v6 * *(v5 + 24);
  v8 = *(v5 + 40);
  v9 = v8[4];
  if (v9)
  {
    v10 = v9 >= v7;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = v8 + 6;
    v12 = v8[6];
    if (v12)
    {
      v13 = 0;
      v14 = vdupq_n_s64(v12 - 1);
      v15 = v8 + 21;
      do
      {
        v16 = vdupq_n_s64(v13);
        v17 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v16, xmmword_18F9016C0)));
        if (vuzp1_s16(v17, *v14.i8).u8[0])
        {
          *(v15 - 12) = v7;
        }

        if (vuzp1_s16(v17, *&v14).i8[2])
        {
          *(v15 - 8) = v7;
        }

        if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v16, xmmword_18F9016B0)))).i32[1])
        {
          *(v15 - 4) = v7;
          *v15 = v7;
        }

        v13 += 4;
        v15 += 16;
      }

      while (((v12 + 3) & 0x1FFFFFFFCLL) != v13);
    }

    v18 = (*(v3 + 56 * a2 + 48) + 24);

    return memcpy(v18, v11, (16 * v12) | 8);
  }

  else
  {
    v19 = CAAssertRtn();
    return IPCAU_RemovePropertyListenerWithUserData(v19, v20, v21, v22);
  }
}

uint64_t IPCAUClient::AUInstance::RemovePropertyListener(IPCAUClient::AUInstance *this, int a2, void (*a3)(void *, OpaqueAudioComponentInstance *, unsigned int, unsigned int, unsigned int), void *a4, int a5)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(*(this + 2) + 48))
  {
    v8 = *(this + 13);
    v7 = *(this + 14);
    if (v8 != v7)
    {
      v9 = *(this + 13);
      while (*v9 != a2 || *(v9 + 8) != a3 || a5 && *(v9 + 16) != a4)
      {
        v9 += 24;
        if (v9 == v7)
        {
          goto LABEL_14;
        }
      }

      v11 = v7 - (v9 + 24);
      if (v7 != v9 + 24)
      {
        memmove(v9, (v9 + 24), v7 - (v9 + 24));
        v8 = *(this + 13);
      }

      v7 = v9 + v11;
      *(this + 14) = v9 + v11;
    }

LABEL_14:
    if (v8 == v7)
    {
      v14 = 1;
    }

    else
    {
      v12 = v8 + 24;
      do
      {
        v13 = *(v12 - 24);
        v15 = v13 == a2;
        v14 = v13 != a2;
        v15 = v15 || v12 == v7;
        v12 += 24;
      }

      while (!v15);
    }

    v10 = 0;
    if ((a2 & 0xFFFFFFFE) != 0x64 && v14)
    {
      v29 = 0;
      IPCAUClient::RemoteAUServer::TransientWaker::TransientWaker(&v27, *(this + 2), &v29);
      v10 = v29;
      if (v29)
      {
        IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v27);
        goto LABEL_60;
      }

      v16 = *(*(this + 2) + 48);
      if (v28)
      {
        v17 = 0x7FFFFFFF;
      }

      else
      {
        v17 = 10000;
      }

      v18 = *(this + 20);
      v31 = 0;
      memset(&msg[4], 0, 32);
      *&msg[24] = *MEMORY[0x1E69E99E0];
      *&msg[32] = v18;
      LODWORD(v31) = a2;
      reply_port = mig_get_reply_port();
      *&msg[8] = v16;
      *&msg[12] = reply_port;
      *msg = 5395;
      *&msg[16] = 0x1606100000000;
      if (MEMORY[0x1EEE9AC50])
      {
        voucher_mach_msg_set(msg);
        v20 = *&msg[12];
      }

      else
      {
        v20 = reply_port;
      }

      v21 = mach_msg(msg, 275, 0x28u, 0x2Cu, v20, v17, 0);
      v22 = v21;
      if ((v21 - 268435458) <= 0xE && ((1 << (v21 - 2)) & 0x4003) != 0)
      {
        mig_put_reply_port(*&msg[12]);
      }

      else
      {
        if (!v21)
        {
          if (*&msg[20] == 71)
          {
            v23 = -308;
          }

          else if (*&msg[20] == 90309)
          {
            v23 = -300;
            if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
            {
              v23 = *&msg[32];
              if (!*&msg[32])
              {
                goto LABEL_59;
              }
            }
          }

          else
          {
            v23 = -301;
          }

          goto LABEL_50;
        }

        mig_dealloc_reply_port(*&msg[12]);
      }

      v23 = 268435460;
      if (v22 != 268435460)
      {
LABEL_51:
        if (v22 != 268435459 && v22 != -308)
        {
          goto LABEL_59;
        }

        if (kInterAppAudioScope)
        {
          v24 = *kInterAppAudioScope;
          if (!*kInterAppAudioScope)
          {
LABEL_59:
            IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v27);
            v10 = 0;
            goto LABEL_60;
          }
        }

        else
        {
          v24 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *msg = 136315906;
          *&msg[4] = "IPCAUClient.cpp";
          *&msg[12] = 1024;
          *&msg[14] = 433;
          *&msg[18] = 1024;
          *&msg[20] = v22;
          *&msg[24] = 1024;
          *&msg[26] = -66749;
          _os_log_impl(&dword_18F5DF000, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d converting result %d -> %d", msg, 0x1Eu);
        }

        goto LABEL_59;
      }

      if ((*msg & 0x1F00) == 0x1100)
      {
        mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
      }

LABEL_50:
      mach_msg_destroy(msg);
      v22 = v23;
      goto LABEL_51;
    }
  }

  else
  {
    v10 = 4294900547;
  }

LABEL_60:
  v25 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t IPCAU_RemoveRenderNotify(void *a1, int (*a2)(void *, unsigned int *, const AudioTimeStamp *, unsigned int, unsigned int, AudioBufferList *), unint64_t a3)
{
  v5 = a1[4];
  v6 = TThreadSafeList<IPCAUClient::RenderCallback>::AllocNode(v5 + 128);
  *(v6 + 2) = 1;
  v6[2] = a2;
  v6[3] = a3;
  do
  {
    v7 = *(v5 + 136);
    *v6 = v7;
    v8 = v7;
    atomic_compare_exchange_strong((v5 + 136), &v8, v6);
  }

  while (v8 != v7);
  return 0;
}

unint64_t *TThreadSafeList<IPCAUClient::RenderCallback>::AllocNode(uint64_t a1)
{
  do
  {
    v1 = *(a1 + 16);
    if (!v1)
    {
      operator new();
    }

    v2 = *(a1 + 16);
    atomic_compare_exchange_strong((a1 + 16), &v2, 0);
  }

  while (v2 != v1);
  v3 = *v1;
  if (*v1)
  {
    v4 = *v1;
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
    do
    {
      v6 = *(a1 + 16);
      *v5 = v6;
      v7 = v6;
      atomic_compare_exchange_strong((a1 + 16), &v7, v3);
    }

    while (v7 != v6);
  }

  return v1;
}

uint64_t IPCAU_AddRenderNotify(void *a1, int (*a2)(void *, unsigned int *, const AudioTimeStamp *, unsigned int, unsigned int, AudioBufferList *), unint64_t a3)
{
  v5 = a1[4];
  *(v5 + 152) = 1;
  v6 = TThreadSafeList<IPCAUClient::RenderCallback>::AllocNode(v5 + 128);
  *(v6 + 2) = 0;
  v6[2] = a2;
  v6[3] = a3;
  do
  {
    v7 = *(v5 + 136);
    *v6 = v7;
    v8 = v7;
    atomic_compare_exchange_strong((v5 + 136), &v8, v6);
  }

  while (v8 != v7);
  return 0;
}

uint64_t IPCAU_Render(IPCAUClient::AUInstance **a1, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4, uint64_t a5, AudioBufferList *a6)
{
  if (a2 && a3 && a6)
  {
    return IPCAUClient::AUInstance::RenderOrProcess(a1[4], 0, a2, a3, a4, a5, a6);
  }

  else
  {
    return 4294967246;
  }
}

uint64_t IPCAU_AddPropertyListener(void *a1, int a2, void (*a3)(void *, OpaqueAudioComponentInstance *, unsigned int, unsigned int, unsigned int), void *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = 4294900547;
  v5 = a1[4];
  if (*(*(v5 + 16) + 48))
  {
    v7 = *(v5 + 104);
    v8 = *(v5 + 112);
    if (v7 == v8)
    {
      v11 = 1;
    }

    else
    {
      v9 = v7 + 24;
      do
      {
        v10 = *(v9 - 24);
        v11 = v10 != a2;
        v12 = v10 == a2 || v9 == v8;
        v9 += 24;
      }

      while (!v12);
    }

    v13 = *(v5 + 120);
    if (v8 >= v13)
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3);
      v16 = v15 + 1;
      if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v17 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v7) >> 3);
      if (2 * v17 > v16)
      {
        v16 = 2 * v17;
      }

      if (v17 >= 0x555555555555555)
      {
        v18 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        std::allocator<RemoteAUPropertyListeners::AUPropertyListener>::allocate_at_least[abi:ne200100](v18);
      }

      v19 = 24 * v15;
      *v19 = a2;
      *(v19 + 8) = a3;
      *(v19 + 16) = a4;
      v14 = 24 * v15 + 24;
      v20 = *(v5 + 104);
      v21 = *(v5 + 112) - v20;
      v22 = v19 - v21;
      memcpy((v19 - v21), v20, v21);
      v23 = *(v5 + 104);
      *(v5 + 104) = v22;
      *(v5 + 112) = v14;
      *(v5 + 120) = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      *v8 = a2;
      v14 = v8 + 24;
      *(v8 + 8) = a3;
      *(v8 + 16) = a4;
    }

    *(v5 + 112) = v14;
    v24 = !v11;
    if ((a2 & 0xFFFFFFFE) == 0x64)
    {
      v24 = 1;
    }

    if (v24)
    {
      goto LABEL_61;
    }

    v39 = 0;
    IPCAUClient::RemoteAUServer::TransientWaker::TransientWaker(&v37, *(v5 + 16), &v39);
    v25 = v39;
    if (v39)
    {
      IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v37);
      v4 = v25;
      goto LABEL_62;
    }

    v26 = *(*(v5 + 16) + 48);
    if (v38)
    {
      v27 = 0x7FFFFFFF;
    }

    else
    {
      v27 = 10000;
    }

    v28 = *(v5 + 80);
    v41 = 0;
    memset(&msg[4], 0, 32);
    *&msg[24] = *MEMORY[0x1E69E99E0];
    *&msg[32] = v28;
    LODWORD(v41) = a2;
    reply_port = mig_get_reply_port();
    *&msg[8] = v26;
    *&msg[12] = reply_port;
    *msg = 5395;
    *&msg[16] = 0x1606000000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(msg);
      v30 = *&msg[12];
    }

    else
    {
      v30 = reply_port;
    }

    v31 = mach_msg(msg, 275, 0x28u, 0x2Cu, v30, v27, 0);
    v32 = v31;
    if ((v31 - 268435458) <= 0xE && ((1 << (v31 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(*&msg[12]);
    }

    else
    {
      if (!v31)
      {
        if (*&msg[20] == 71)
        {
          v33 = -308;
        }

        else if (*&msg[20] == 90308)
        {
          v33 = -300;
          if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
          {
            v33 = *&msg[32];
            if (!*&msg[32])
            {
              goto LABEL_60;
            }
          }
        }

        else
        {
          v33 = -301;
        }

        goto LABEL_51;
      }

      mig_dealloc_reply_port(*&msg[12]);
    }

    v33 = 268435460;
    if (v32 != 268435460)
    {
LABEL_52:
      if (v32 != 268435459 && v32 != -308)
      {
        goto LABEL_60;
      }

      if (kInterAppAudioScope)
      {
        v34 = *kInterAppAudioScope;
        if (!*kInterAppAudioScope)
        {
LABEL_60:
          IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v37);
LABEL_61:
          v4 = 0;
          goto LABEL_62;
        }
      }

      else
      {
        v34 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *msg = 136315906;
        *&msg[4] = "IPCAUClient.cpp";
        *&msg[12] = 1024;
        *&msg[14] = 433;
        *&msg[18] = 1024;
        *&msg[20] = v32;
        *&msg[24] = 1024;
        *&msg[26] = -66749;
        _os_log_impl(&dword_18F5DF000, v34, OS_LOG_TYPE_DEFAULT, "%25s:%-5d converting result %d -> %d", msg, 0x1Eu);
      }

      goto LABEL_60;
    }

    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

LABEL_51:
    mach_msg_destroy(msg);
    v32 = v33;
    goto LABEL_52;
  }

LABEL_62:
  v35 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t IPCAU_Reset(void *a1, int a2, int a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a1[4];
  if (kInterAppAudioScope)
  {
    v6 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "IPCAUClient.cpp";
    *reply_port = 1024;
    *&reply_port[2] = 1001;
    *&reply_port[6] = 2048;
    *&reply_port[8] = v5;
    _os_log_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d %p", buf, 0x1Cu);
  }

LABEL_7:
  v7 = 4294900547;
  v8 = *(v5 + 16);
  if (*(v8 + 48))
  {
    v23 = 0;
    IPCAUClient::RemoteAUServer::TransientWaker::TransientWaker(&v21, v8, &v23);
    v9 = v23;
    if (v23)
    {
LABEL_45:
      IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v21);
      v7 = v9;
      goto LABEL_46;
    }

    v10 = *(*(v5 + 16) + 48);
    if (v22)
    {
      v11 = 0x7FFFFFFF;
    }

    else
    {
      v11 = 10000;
    }

    v12 = *(v5 + 80);
    *&reply_port[12] = *MEMORY[0x1E69E99E0];
    v26 = v12;
    v27 = a2;
    v28 = a3;
    v13 = mig_get_reply_port();
    *buf = 5395;
    *&buf[8] = v10;
    *reply_port = v13;
    *&reply_port[4] = 0x1605C00000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(buf);
      v14 = *reply_port;
    }

    else
    {
      v14 = v13;
    }

    v15 = mach_msg(buf, 275, 0x2Cu, 0x2Cu, v14, v11, 0);
    v16 = v15;
    if ((v15 - 268435458) <= 0xE && ((1 << (v15 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(*reply_port);
    }

    else
    {
      if (!v15)
      {
        if (*&reply_port[8] == 71)
        {
          v17 = 4294966988;
        }

        else if (*&reply_port[8] == 90304)
        {
          v17 = 4294966996;
          if ((*buf & 0x80000000) == 0 && *&buf[4] == 36 && !*&buf[8])
          {
            v17 = v26;
            if (!v26)
            {
              v7 = 0;
              goto LABEL_42;
            }
          }
        }

        else
        {
          v17 = 4294966995;
        }

        goto LABEL_32;
      }

      mig_dealloc_reply_port(*reply_port);
    }

    v17 = 268435460;
    if (v16 != 268435460)
    {
      goto LABEL_33;
    }

    if ((*buf & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *reply_port);
    }

LABEL_32:
    mach_msg_destroy(buf);
    v16 = v17;
LABEL_33:
    if (v16 == 268435459 || v16 == -308)
    {
      if (kInterAppAudioScope)
      {
        v18 = *kInterAppAudioScope;
        if (!*kInterAppAudioScope)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v18 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = "IPCAUClient.cpp";
        *reply_port = 1024;
        *&reply_port[2] = 433;
        *&reply_port[6] = 1024;
        *&reply_port[8] = v16;
        *&reply_port[12] = 1024;
        *&reply_port[14] = -66749;
        _os_log_impl(&dword_18F5DF000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d converting result %d -> %d", buf, 0x1Eu);
      }

      goto LABEL_42;
    }

    v7 = v16;
LABEL_42:
    if (*(v5 + 84) == 1)
    {
      os_unfair_recursive_lock_lock_with_options();
      **(v5 + 304) = 0;
      os_unfair_recursive_lock_unlock();
    }

    v9 = v7;
    goto LABEL_45;
  }

LABEL_46:
  v19 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t IPCAU_SetParameter(void *a1, mach_msg_size_t a2, int a3, int a4, float a5, mach_port_t a6)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = 4294900547;
  v8 = a1[4];
  v9 = *(v8 + 16);
  if (*(v9 + 48))
  {
    v14 = *(v8 + 392);
    if (!v14)
    {
      goto LABEL_5;
    }

    if (v14 != pthread_self())
    {
      v9 = *(v8 + 16);
LABEL_5:
      v28 = 0;
      IPCAUClient::RemoteAUServer::TransientWaker::TransientWaker(&v26, v9, &v28);
      v15 = v28;
      if (!v28)
      {
        v16 = *(*(v8 + 16) + 48);
        if (v27)
        {
          v17 = 0x7FFFFFFF;
        }

        else
        {
          v17 = 10000;
        }

        v18 = *(v8 + 80);
        v30 = *MEMORY[0x1E69E99E0];
        v31 = v18;
        v32 = a2;
        v33 = a3;
        v34 = a4;
        v35 = a5;
        v36 = a6;
        reply_port = mig_get_reply_port();
        *&msg.msgh_bits = 5395;
        msg.msgh_remote_port = v16;
        msg.msgh_local_port = reply_port;
        *&msg.msgh_voucher_port = 0x1606400000000;
        if (MEMORY[0x1EEE9AC50])
        {
          voucher_mach_msg_set(&msg);
          msgh_local_port = msg.msgh_local_port;
        }

        else
        {
          msgh_local_port = reply_port;
        }

        v21 = mach_msg(&msg, 275, 0x38u, 0x2Cu, msgh_local_port, v17, 0);
        v15 = v21;
        if ((v21 - 268435458) <= 0xE && ((1 << (v21 - 2)) & 0x4003) != 0)
        {
          mig_put_reply_port(msg.msgh_local_port);
LABEL_25:
          v22 = 268435460;
          if (v15 != 268435460)
          {
LABEL_31:
            if (v15 != 268435459 && v15 != -308)
            {
              goto LABEL_40;
            }

            if (kInterAppAudioScope)
            {
              v23 = *kInterAppAudioScope;
              if (!*kInterAppAudioScope)
              {
LABEL_39:
                v15 = 4294900547;
                goto LABEL_40;
              }
            }

            else
            {
              v23 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              msg.msgh_bits = 136315906;
              *&msg.msgh_size = "IPCAUClient.cpp";
              LOWORD(msg.msgh_local_port) = 1024;
              *(&msg.msgh_local_port + 2) = 433;
              HIWORD(msg.msgh_voucher_port) = 1024;
              msg.msgh_id = v15;
              LOWORD(v30) = 1024;
              *(&v30 + 2) = -66749;
              _os_log_impl(&dword_18F5DF000, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d converting result %d -> %d", &msg, 0x1Eu);
            }

            goto LABEL_39;
          }

          if ((msg.msgh_bits & 0x1F00) == 0x1100)
          {
            mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
          }

LABEL_30:
          mach_msg_destroy(&msg);
          v15 = v22;
          goto LABEL_31;
        }

        if (v21)
        {
          mig_dealloc_reply_port(msg.msgh_local_port);
          goto LABEL_25;
        }

        if (msg.msgh_id == 71)
        {
          v22 = 4294966988;
          goto LABEL_30;
        }

        if (msg.msgh_id != 90312)
        {
          v22 = 4294966995;
          goto LABEL_30;
        }

        v22 = 4294966996;
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          goto LABEL_30;
        }

        if (msg.msgh_size != 36)
        {
          goto LABEL_30;
        }

        if (msg.msgh_remote_port)
        {
          goto LABEL_30;
        }

        v22 = v31;
        if (v31)
        {
          goto LABEL_30;
        }

        v15 = 0;
      }

LABEL_40:
      IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v26);
      v7 = v15;
      goto LABEL_41;
    }

    LOBYTE(msg.msgh_bits) = 2;
    BYTE1(msg.msgh_bits) = a3;
    HIWORD(msg.msgh_bits) = a4;
    msg.msgh_size = a2;
    *&msg.msgh_remote_port = a5;
    msg.msgh_local_port = a6;
    v7 = IPCAUClient::AUInstance::ControlMessage(v8, &msg, 0x10uLL, 0, 0);
  }

LABEL_41:
  v24 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t IPCAUClient::AUInstance::ControlMessage(IPCAUClient::AUInstance *this, const void *a2, size_t a3, const void *a4, size_t a5)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(this + 84) == 1)
  {
    os_unfair_recursive_lock_lock_with_options();
    v10 = *(this + 38);
    v11 = 2044;
    if (v10)
    {
      v11 = 2044 - *v10;
    }

    if (v11 >= a5 + a3)
    {
      goto LABEL_31;
    }

    v12 = *(this + 6);
    v13 = *(this + 20);
    *&reply_port[16] = 0u;
    v27 = 0;
    *reply_port = 0u;
    *&reply_port[20] = *MEMORY[0x1E69E99E0];
    *&reply_port[28] = v13;
    v14 = mig_get_reply_port();
    *&reply_port[4] = v12;
    *&reply_port[8] = v14;
    v25 = 5395;
    *&reply_port[12] = 0x1606700000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&v25);
      v15 = *&reply_port[8];
    }

    else
    {
      v15 = v14;
    }

    v17 = mach_msg(&v25, 275, 0x24u, 0x2Cu, v15, gMediaServerTimeout, 0);
    v16 = v17;
    if ((v17 - 268435458) <= 0xE && ((1 << (v17 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(*&reply_port[8]);
    }

    else
    {
      if (!v17)
      {
        if (*&reply_port[16] == 71)
        {
          v18 = 4294966988;
        }

        else if (*&reply_port[16] == 90315)
        {
          v18 = 4294966996;
          if ((v25 & 0x80000000) == 0 && *reply_port == 36 && !*&reply_port[4])
          {
            v18 = *&reply_port[28];
            if (!*&reply_port[28])
            {
              goto LABEL_30;
            }
          }
        }

        else
        {
          v18 = 4294966995;
        }

        goto LABEL_26;
      }

      mig_dealloc_reply_port(*&reply_port[8]);
    }

    v18 = 268435460;
    if (v16 != 268435460)
    {
LABEL_27:
      if (v16 != -308 && v16 != 268435459)
      {
        if (!v16)
        {
LABEL_30:
          v10 = *(this + 38);
LABEL_31:
          if (v10)
          {
            v19 = *v10;
          }

          else
          {
            v19 = 0;
          }

          if (v10)
          {
            v21 = v10 + 1;
          }

          else
          {
            v21 = 0;
          }

          v22 = v21 + v19;
          memcpy(v22, a2, a3);
          if (a4)
          {
            memcpy(&v22[a3], a4, a5);
          }

          v16 = 0;
          **(this + 38) = v19 + a5 + a3;
        }

LABEL_47:
        os_unfair_recursive_lock_unlock();
        goto LABEL_48;
      }

      if (kInterAppAudioScope)
      {
        v20 = *kInterAppAudioScope;
        if (!*kInterAppAudioScope)
        {
LABEL_46:
          v16 = 4294900547;
          goto LABEL_47;
        }
      }

      else
      {
        v20 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 136315906;
        *reply_port = "IPCAUClient.cpp";
        *&reply_port[8] = 1024;
        *&reply_port[10] = 433;
        *&reply_port[14] = 1024;
        *&reply_port[16] = v16;
        *&reply_port[20] = 1024;
        *&reply_port[22] = -66749;
        _os_log_impl(&dword_18F5DF000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d converting result %d -> %d", &v25, 0x1Eu);
      }

      goto LABEL_46;
    }

    if ((v25 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&reply_port[8]);
    }

LABEL_26:
    mach_msg_destroy(&v25);
    v16 = v18;
    goto LABEL_27;
  }

  v16 = 4294956429;
LABEL_48:
  v23 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t IPCAU_GetParameter(void *a1, int a2, int a3, int a4, float *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    v6 = 4294967246;
    goto LABEL_6;
  }

  v6 = 4294900547;
  v7 = a1[4];
  v8 = *(v7 + 16);
  if (*(v8 + 48))
  {
    v25 = 0;
    IPCAUClient::RemoteAUServer::TransientWaker::TransientWaker(&v23, v8, &v25);
    v12 = v25;
    if (v25)
    {
LABEL_4:
      IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v23);
      v6 = v12;
      goto LABEL_6;
    }

    v15 = *(*(v7 + 16) + 48);
    if (v24)
    {
      v16 = 0x7FFFFFFF;
    }

    else
    {
      v16 = 10000;
    }

    v17 = *(v7 + 80);
    v27 = *MEMORY[0x1E69E99E0];
    v28 = v17;
    v29 = a2;
    v30 = a3;
    v31 = a4;
    reply_port = mig_get_reply_port();
    *&msg.msgh_bits = 5395;
    msg.msgh_remote_port = v15;
    msg.msgh_local_port = reply_port;
    *&msg.msgh_voucher_port = 0x1606300000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&msg);
      msgh_local_port = msg.msgh_local_port;
    }

    else
    {
      msgh_local_port = reply_port;
    }

    v20 = mach_msg(&msg, 275, 0x30u, 0x30u, msgh_local_port, v16, 0);
    v12 = v20;
    if ((v20 - 268435458) <= 0xE && ((1 << (v20 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(msg.msgh_local_port);
      goto LABEL_29;
    }

    if (v20)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
LABEL_29:
      if (v12 == 268435460)
      {
        if ((msg.msgh_bits & 0x1F00) == 0x1100)
        {
          mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
        }

        mach_msg_destroy(&msg);
        v12 = 268435460;
        goto LABEL_4;
      }

LABEL_38:
      if (v12 != 268435459 && v12 != -308)
      {
        goto LABEL_4;
      }

      if (kInterAppAudioScope)
      {
        v22 = *kInterAppAudioScope;
        if (!*kInterAppAudioScope)
        {
LABEL_46:
          v12 = 4294900547;
          goto LABEL_4;
        }
      }

      else
      {
        v22 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        msg.msgh_bits = 136315906;
        *&msg.msgh_size = "IPCAUClient.cpp";
        LOWORD(msg.msgh_local_port) = 1024;
        *(&msg.msgh_local_port + 2) = 433;
        HIWORD(msg.msgh_voucher_port) = 1024;
        msg.msgh_id = v12;
        LOWORD(v27) = 1024;
        *(&v27 + 2) = -66749;
        _os_log_impl(&dword_18F5DF000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d converting result %d -> %d", &msg, 0x1Eu);
      }

      goto LABEL_46;
    }

    if (msg.msgh_id == 71)
    {
      v12 = 4294966988;
    }

    else if (msg.msgh_id == 90311)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 40)
        {
          if (!msg.msgh_remote_port)
          {
            v12 = v28;
            if (!v28)
            {
              *a5 = v29;
              goto LABEL_4;
            }

            goto LABEL_37;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v21 = 1;
          }

          else
          {
            v21 = v28 == 0;
          }

          if (v21)
          {
            v12 = 4294966996;
          }

          else
          {
            v12 = v28;
          }

          goto LABEL_37;
        }
      }

      v12 = 4294966996;
    }

    else
    {
      v12 = 4294966995;
    }

LABEL_37:
    mach_msg_destroy(&msg);
    goto LABEL_38;
  }

LABEL_6:
  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t IPCAU_SetProperty(void *a1, int a2, unsigned int a3, int a4, const AudioStreamBasicDescription *__src, size_t __n)
{
  v6 = __n;
  v38 = *MEMORY[0x1E69E9840];
  v11 = a1[4];
  if (kInterAppAudioScope)
  {
    v12 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    AUPropertyValueFormatter::AUPropertyValueFormatter(outData, a2, a3, a4, __src, v6);
    *buf = 136315906;
    *&buf[4] = "IPCAUClient.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1128;
    *&buf[18] = 2048;
    *&buf[20] = v11;
    *&buf[28] = 2080;
    *&buf[30] = outData[0];
    _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d -> %p: %s", buf, 0x26u);
    if (outData[0])
    {
      free(outData[0]);
    }
  }

LABEL_8:
  v37 = 0;
  *outData = 0u;
  v36 = 0u;
  v13 = *(v11 + 16);
  if (!*(v13 + 48))
  {
    Property = 4294900547;
    goto LABEL_50;
  }

  v33 = 0;
  if (a2 > 26)
  {
    if (a2 == 27)
    {
      if (*(v11 + 84))
      {
        goto LABEL_35;
      }

      if (v6 < 0x28)
      {
        goto LABEL_37;
      }

      memcpy((v11 + 400), __src, v6);
    }

    else
    {
      if (a2 != 100)
      {
        goto LABEL_29;
      }

      if (v6 != 8)
      {
        goto LABEL_37;
      }

      v20 = *(v11 + 440);
      if (v20)
      {
        _Block_release(v20);
      }

      mSampleRate = __src->mSampleRate;
      *(v11 + 440) = __src->mSampleRate;
      if (mSampleRate != 0.0)
      {
        Property = 0;
        *(v11 + 440) = _Block_copy(*&mSampleRate);
        goto LABEL_50;
      }
    }

    Property = 0;
    goto LABEL_50;
  }

  if (a2 != 1)
  {
    if (a2 == 23)
    {
      if ((*(v11 + 84) & 1) == 0)
      {
        if (v6 >= 0x10)
        {
          if (!a4)
          {
            IPCAUClient::RemoteAUServer::TransientWaker::TransientWaker(&v31, v13, &v33);
            Property = v33;
            if (!v33)
            {
              v15 = *(*(v11 + 16) + 48);
              v16 = v32 ? 0x7FFFFFFF : 10000;
              v17 = *(v11 + 80);
              v18 = *&__src->mSampleRate != 0;
              *buf = *outData;
              *&buf[16] = v36;
              *&buf[32] = v37;
              v19 = IPCAUClient_ConnectInput(v15, v16, v17, v18, buf);
              Property = SanitizeResult(v19);
              if (!Property)
              {
                *(v11 + 160) = 2 * (*&__src->mSampleRate != 0);
                *(v11 + 168) = *&__src->mSampleRate;
              }
            }

            goto LABEL_49;
          }

LABEL_33:
          Property = 4294956419;
          goto LABEL_50;
        }

LABEL_37:
        Property = 4294956445;
        goto LABEL_50;
      }

LABEL_35:
      Property = 4294956447;
      goto LABEL_50;
    }

LABEL_29:
    PropertyMarshaller::PropertyMarshaller(buf, 0);
  }

  if (*(v11 + 84))
  {
    goto LABEL_35;
  }

  if (v6 < 0x10)
  {
    goto LABEL_37;
  }

  if (a4)
  {
    goto LABEL_33;
  }

  v22 = *&__src->mSampleRate;
  if (*&__src->mSampleRate)
  {
    *buf = 40;
    Property = AudioUnitGetProperty(v22, 8u, 2u, __src->mFormatID, outData, buf);
    v33 = Property;
    if (Property)
    {
      goto LABEL_50;
    }

    v13 = *(v11 + 16);
  }

  IPCAUClient::RemoteAUServer::TransientWaker::TransientWaker(&v31, v13, &v33);
  Property = v33;
  if (!v33)
  {
    v23 = *(*(v11 + 16) + 48);
    v24 = v32 ? 0x7FFFFFFF : 10000;
    v25 = *(v11 + 80);
    v26 = *&__src->mSampleRate != 0;
    *buf = *outData;
    *&buf[16] = v36;
    *&buf[32] = v37;
    v27 = IPCAUClient_ConnectInput(v23, v24, v25, v26, buf);
    Property = SanitizeResult(v27);
    if (!Property)
    {
      *(v11 + 160) = *&__src->mSampleRate != 0;
      *(v11 + 184) = *&__src->mSampleRate;
    }
  }

LABEL_49:
  IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v31);
LABEL_50:
  if (kInterAppAudioScope)
  {
    v28 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v28 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    CAX4CCString::CAX4CCString(outData, Property);
    *buf = 136315906;
    *&buf[4] = "IPCAUClient.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1130;
    *&buf[18] = 2048;
    *&buf[20] = v11;
    *&buf[28] = 2080;
    *&buf[30] = outData;
    _os_log_impl(&dword_18F5DF000, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d <- %p (%s)", buf, 0x26u);
  }

LABEL_56:
  v29 = *MEMORY[0x1E69E9840];
  return Property;
}

void sub_18F68BED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(va);
  PropertyMarshaller::~PropertyMarshaller(va1);
  _Unwind_Resume(a1);
}

void AUPropertyValueFormatter::AUPropertyValueFormatter(AUPropertyValueFormatter *this, int a2, unsigned int a3, int a4, const AudioStreamBasicDescription *a5, int a6)
{
  *this = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v12 = funopen(&v16, 0, CAMemoryStream::Write, 0, 0);
  v13 = v12;
  v16 = v12;
  if (a3 > 7)
  {
    fprintf(v12, "scope %d", a3);
  }

  else
  {
    fputs(gScopeNames[a3], v12);
  }

  fprintf(v13, ", el %d: ", a4);
  if (a2 == 8)
  {
    CAFormatter::CAFormatter(&v15, a5);
    fprintf(v13, "stream format: %s", v15);
    if (v15)
    {
      free(v15);
    }
  }

  else
  {
    fprintf(v13, "prop %d, %d bytes @ %p", a2, a6, a5);
  }

  v14 = CAMemoryStream::cstr(&v16);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  *this = v14;
  fclose(v16);
  free(v17);
}

void sub_18F68C05C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, FILE *a13, void *a14)
{
  fclose(a13);
  free(a14);
  if (*v14)
  {
    free(*v14);
  }

  _Unwind_Resume(a1);
}

uint64_t SanitizeResult(uint64_t a1)
{
  v1 = a1;
  v14 = *MEMORY[0x1E69E9840];
  if (a1 == 268435459 || a1 == -308)
  {
    v2 = 4294900547;
    if (kInterAppAudioScope)
    {
      v3 = *kInterAppAudioScope;
      if (!*kInterAppAudioScope)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = "IPCAUClient.cpp";
      v8 = 1024;
      v9 = 433;
      v10 = 1024;
      v11 = v1;
      v12 = 1024;
      v13 = -66749;
      _os_log_impl(&dword_18F5DF000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d converting result %d -> %d", &v6, 0x1Eu);
    }
  }

  else
  {
    v2 = a1;
  }

LABEL_10:
  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

void AudioUnitPropertyMarshaller::~AudioUnitPropertyMarshaller(AudioUnitPropertyMarshaller *this)
{
  PropertyMarshaller::~PropertyMarshaller(this);

  JUMPOUT(0x193ADF220);
}

uint64_t IPCAU_GetProperty(void *a1, int a2, unsigned int a3, int a4, CFURLRef *a5, unsigned int *a6)
{
  v65 = *MEMORY[0x1E69E9840];
  v52 = a5;
  if (!a6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "IPCAUClient.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1079;
      v54 = 2080;
      *v55 = "AudioUnitGetProperty: null size pointer";
      v20 = MEMORY[0x1E69E9C10];
LABEL_16:
      _os_log_impl(&dword_18F5DF000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d  ca_debug_string: %s", buf, 0x1Cu);
    }

LABEL_17:
    v23 = 4294967246;
    goto LABEL_18;
  }

  if (a5)
  {
    v11 = *a6;
    if (*a6)
    {
      v12 = a1[4];
      v51 = 0;
      if (a2 == 102)
      {
        v13 = CFUUIDCreateFromUUIDBytes(0, *(v12 + 56));
        if (v13)
        {
          v14 = v13;
          v15 = CFUUIDCreateString(0, v13);
          if (v15)
          {
            v16 = v15;
            v17 = CFStringCreateWithFormat(0, 0, @"com-apple-audiounit:%@/%c", v15, 78);
            if (v17)
            {
              v18 = v17;
              v19 = CFURLCreateWithString(0, v17, 0);
              CFRelease(v18);
            }

            else
            {
              v19 = 0;
            }

            CFRelease(v16);
          }

          else
          {
            v19 = 0;
          }

          CFRelease(v14);
        }

        else
        {
          v19 = 0;
        }

        *a5 = v19;
        if (v19)
        {
          v23 = 0;
        }

        else
        {
          v23 = 4294967246;
        }

LABEL_41:
        if (kInterAppAudioScope)
        {
          v33 = *kInterAppAudioScope;
          if (!*kInterAppAudioScope)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v33 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          AUPropertyValueFormatter::AUPropertyValueFormatter(&v49, a2, a3, a4, v52, *a6);
          v34 = v49;
          CAX4CCString::CAX4CCString(v62, v23);
          *buf = 136316162;
          *&buf[4] = "IPCAUClient.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1121;
          v54 = 2048;
          *v55 = v12;
          *&v55[8] = 2080;
          *&v55[10] = v34;
          *&v55[18] = 2080;
          v56 = v62;
          _os_log_impl(&dword_18F5DF000, v33, OS_LOG_TYPE_DEBUG, "%25s:%-5d <- %p %s (%s)", buf, 0x30u);
          if (v49)
          {
            free(v49);
          }
        }

        goto LABEL_18;
      }

      v23 = 4294900547;
      v25 = *(v12 + 16);
      if (*(v25 + 48))
      {
        buf[16] = 1;
        *buf = &unk_1F0325878;
        *&buf[8] = 256;
        *&v55[4] = &v58;
        *&v55[12] = &v59;
        v56 = &v60;
        v57 = &v61;
        v59 = 0;
        v60 = 0;
        v61 = 0;
        if (kInterAppAudioScope)
        {
          v26 = *kInterAppAudioScope;
          if (!*kInterAppAudioScope)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v26 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v62[0] = 136315650;
          *&v62[1] = "IPCAUClient.cpp";
          LOWORD(v62[3]) = 1024;
          *(&v62[3] + 2) = 1108;
          HIWORD(v62[4]) = 2048;
          *&v62[5] = v12;
          _os_log_impl(&dword_18F5DF000, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d -> %p", v62, 0x1Cu);
          v25 = *(v12 + 16);
        }

LABEL_28:
        IPCAUClient::RemoteAUServer::TransientWaker::TransientWaker(&v49, v25, &v51);
        v27 = v51;
        if (v51)
        {
          IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v49);
          MIGVariableLengthRefs::~MIGVariableLengthRefs(buf);
          v23 = v27;
          goto LABEL_18;
        }

        v28 = *(*(v12 + 16) + 48);
        if (v50)
        {
          v29 = 0x7FFFFFFF;
        }

        else
        {
          v29 = 10000;
        }

        v30 = *(v12 + 80);
        __dst = *&v55[4];
        v46 = *&v55[12];
        v47 = v56;
        v48 = v57;
        memset(__n, 0, sizeof(__n));
        v63 = 0u;
        memset(&v62[1], 0, 32);
        *&v62[6] = *MEMORY[0x1E69E99E0];
        v62[8] = v30;
        *&v63 = __PAIR64__(a3, a2);
        *(&v63 + 1) = __PAIR64__(v11, a4);
        reply_port = mig_get_reply_port();
        v62[3] = reply_port;
        v62[0] = 5395;
        v62[2] = v28;
        *&v62[4] = 0x1605E00000000;
        if (MEMORY[0x1EEE9AC50])
        {
          voucher_mach_msg_set(v62);
          v32 = v62[3];
        }

        else
        {
          v32 = reply_port;
        }

        v35 = mach_msg(v62, 275, 0x34u, 0x144u, v32, v29, 0);
        v36 = v35;
        if ((v35 - 268435458) <= 0xE && ((1 << (v35 - 2)) & 0x4003) != 0)
        {
          mig_put_reply_port(v62[3]);
        }

        else
        {
          if (!v35)
          {
            if (v62[5] == 71)
            {
              v36 = 4294966988;
            }

            else if (v62[5] == 90306)
            {
              if ((v62[0] & 0x80000000) != 0)
              {
                v36 = 4294966996;
                if (v62[6] == 1 && (v62[1] - 60) <= 0x100 && !v62[2] && BYTE3(v63) == 1 && LODWORD(__n[0]) <= 0x100 && (v62[1] - 60) >= LODWORD(__n[0]))
                {
                  v37 = (LODWORD(__n[0]) + 3) & 0xFFFFFFFC;
                  if (v62[1] == v37 + 60)
                  {
                    v38 = v62 + v37;
                    if (DWORD1(v63) == *(v38 + 14))
                    {
                      v39 = v38 - 256;
                      v40 = __n[0];
                      memcpy(__dst, __n + 4, LODWORD(__n[0]));
                      v36 = 0;
                      *v46 = v40;
                      *v47 = *&v62[7];
                      *v48 = *(v39 + 78);
                      goto LABEL_84;
                    }
                  }
                }
              }

              else if (v62[1] == 36)
              {
                v36 = 4294966996;
                if (v62[8])
                {
                  if (v62[2])
                  {
                    v36 = 4294966996;
                  }

                  else
                  {
                    v36 = v62[8];
                  }
                }
              }

              else
              {
                v36 = 4294966996;
              }
            }

            else
            {
              v36 = 4294966995;
            }

            mach_msg_destroy(v62);
LABEL_79:
            if (v36 == 268435459 || v36 == -308)
            {
              if (kInterAppAudioScope)
              {
                v41 = *kInterAppAudioScope;
                if (!*kInterAppAudioScope)
                {
LABEL_94:
                  IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v49);
                  MIGVariableLengthRefs::~MIGVariableLengthRefs(buf);
                  goto LABEL_41;
                }
              }

              else
              {
                v41 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                v62[0] = 136315906;
                *&v62[1] = "IPCAUClient.cpp";
                LOWORD(v62[3]) = 1024;
                *(&v62[3] + 2) = 433;
                HIWORD(v62[4]) = 1024;
                v62[5] = v36;
                LOWORD(v62[6]) = 1024;
                *(&v62[6] + 2) = -66749;
                _os_log_impl(&dword_18F5DF000, v41, OS_LOG_TYPE_DEFAULT, "%25s:%-5d converting result %d -> %d", v62, 0x1Eu);
              }

              goto LABEL_94;
            }

LABEL_84:
            v23 = v36;
            if (!v36)
            {
              if (*v56)
              {
                v42 = *v56;
              }

              else
              {
                v42 = *&v55[4];
              }

              v43 = &v57;
              if (!*v56)
              {
                v43 = &v55[12];
              }

              v44 = **v43;
              PropertyMarshaller::PropertyMarshaller(v62, v42);
            }

            goto LABEL_94;
          }

          mig_dealloc_reply_port(v62[3]);
        }

        if (v36 == 268435460)
        {
          if ((v62[0] & 0x1F00) == 0x1100)
          {
            mach_port_deallocate(*MEMORY[0x1E69E9A60], v62[3]);
          }

          mach_msg_destroy(v62);
          v36 = 268435460;
          goto LABEL_84;
        }

        goto LABEL_79;
      }

LABEL_18:
      v24 = *MEMORY[0x1E69E9840];
      return v23;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "IPCAUClient.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1086;
      v54 = 2080;
      *v55 = "AudioUnitGetProperty: zero size on entry";
      v20 = MEMORY[0x1E69E9C10];
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v21 = *MEMORY[0x1E69E9840];

  return IPCAU_GetPropertyInfo(a1, a2, a3, a4, a6, 0);
}

void sub_18F68CA78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  PropertyMarshaller::~PropertyMarshaller(&a61);
  IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&a15);
  MIGVariableLengthRefs::~MIGVariableLengthRefs(&a19);
  _Unwind_Resume(a1);
}

uint64_t IPCAU_GetPropertyInfo(void *a1, int a2, unsigned int a3, int a4, unsigned int *a5, unsigned __int8 *a6)
{
  v33 = *MEMORY[0x1E69E9840];
  v30 = 0;
  if (a2 <= 26)
  {
    v11 = 0;
    v12 = 1;
    v13 = 16;
    if (a2 != 1 && a2 != 23)
    {
      goto LABEL_9;
    }

LABEL_13:
    if (!a5)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (a2 == 102)
  {
    v11 = 0;
    v12 = 0;
    v13 = 8;
    goto LABEL_13;
  }

  if (a2 == 27)
  {
    v11 = 0;
    v12 = 1;
    v13 = 40;
    if (!a5)
    {
      goto LABEL_15;
    }

LABEL_14:
    *a5 = v13;
    goto LABEL_15;
  }

LABEL_9:
  v11 = 4294900547;
  v14 = a1[4];
  v15 = *(v14 + 16);
  if (!*(v15 + 48))
  {
    goto LABEL_17;
  }

  IPCAUClient::RemoteAUServer::TransientWaker::TransientWaker(&v28, v15, &v30);
  v16 = v30;
  if (v30)
  {
    IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v28);
    v11 = v16;
    goto LABEL_17;
  }

  v19 = *(*(v14 + 16) + 48);
  if (v29)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = 10000;
  }

  v21 = *(v14 + 80);
  v32 = 0u;
  memset(&msg[4], 0, 32);
  *&msg[24] = *MEMORY[0x1E69E99E0];
  *&msg[32] = v21;
  *&v32 = __PAIR64__(a3, a2);
  DWORD2(v32) = a4;
  reply_port = mig_get_reply_port();
  *&msg[8] = v19;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x1605D00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v23 = *&msg[12];
  }

  else
  {
    v23 = reply_port;
  }

  v24 = mach_msg(msg, 275, 0x30u, 0x34u, v23, v20, 0);
  v25 = v24;
  if ((v24 - 268435458) <= 0xE && ((1 << (v24 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
    goto LABEL_40;
  }

  if (!v24)
  {
    if (*&msg[20] == 71)
    {
      v25 = 4294966988;
    }

    else if (*&msg[20] == 90305)
    {
      if ((*msg & 0x80000000) == 0)
      {
        if (*&msg[4] == 44)
        {
          if (!*&msg[8])
          {
            v25 = *&msg[32];
            if (!*&msg[32])
            {
              v13 = v32;
              v12 = BYTE4(v32);
              goto LABEL_59;
            }

            goto LABEL_48;
          }
        }

        else if (*&msg[4] == 36)
        {
          if (*&msg[8])
          {
            v26 = 1;
          }

          else
          {
            v26 = *&msg[32] == 0;
          }

          if (v26)
          {
            v25 = 4294966996;
          }

          else
          {
            v25 = *&msg[32];
          }

          goto LABEL_48;
        }
      }

      v25 = 4294966996;
    }

    else
    {
      v25 = 4294966995;
    }

LABEL_48:
    mach_msg_destroy(msg);
    goto LABEL_49;
  }

  mig_dealloc_reply_port(*&msg[12]);
LABEL_40:
  if (v25 != 268435460)
  {
LABEL_49:
    if (v25 != 268435459 && v25 != -308)
    {
      v13 = 0;
      v12 = 0;
      goto LABEL_59;
    }

    if (kInterAppAudioScope)
    {
      v27 = *kInterAppAudioScope;
      if (!*kInterAppAudioScope)
      {
LABEL_58:
        v13 = 0;
        v12 = 0;
        v25 = 4294900547;
        goto LABEL_59;
      }
    }

    else
    {
      v27 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *msg = 136315906;
      *&msg[4] = "IPCAUClient.cpp";
      *&msg[12] = 1024;
      *&msg[14] = 433;
      *&msg[18] = 1024;
      *&msg[20] = v25;
      *&msg[24] = 1024;
      *&msg[26] = -66749;
      _os_log_impl(&dword_18F5DF000, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d converting result %d -> %d", msg, 0x1Eu);
    }

    goto LABEL_58;
  }

  if ((*msg & 0x1F00) == 0x1100)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
  }

  mach_msg_destroy(msg);
  v13 = 0;
  v12 = 0;
  v25 = 268435460;
LABEL_59:
  IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v28);
  v11 = v25;
  if (a5)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (a6)
  {
    *a6 = v12;
  }

LABEL_17:
  v17 = *MEMORY[0x1E69E9840];
  return v11;
}

void MIGVariableLengthRefs::~MIGVariableLengthRefs(MIGVariableLengthRefs *this)
{
  *this = &unk_1F0336F70;
  if (*(this + 16) == 1)
  {
    v2 = *(this + 5);
    if (v2)
    {
      if (*v2)
      {
        MEMORY[0x193AE09A0](*MEMORY[0x1E69E9A60], *v2, **(this + 6));
        **(this + 5) = 0;
        **(this + 6) = 0;
      }
    }
  }
}

{
  MIGVariableLengthRefs::~MIGVariableLengthRefs(this);

  JUMPOUT(0x193ADF220);
}

void MIGVariableLengthVars2<unsigned char [256]>::~MIGVariableLengthVars2(MIGVariableLengthRefs *a1)
{
  MIGVariableLengthRefs::~MIGVariableLengthRefs(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t IPCAU_Uninitialize(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  if (kInterAppAudioScope)
  {
    v2 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315650;
    v6 = "IPCAUClient.cpp";
    v7 = 1024;
    v8 = 993;
    v9 = 2048;
    v10 = v1;
    _os_log_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d %p", &v5, 0x1Cu);
  }

LABEL_7:
  IPCAUClient::AUInstance::Uninitialize(v1);
  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t IPCAU_Initialize(_BOOL8 a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (kInterAppAudioScope)
  {
    v2 = *kInterAppAudioScope;
    if (!*kInterAppAudioScope)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  a1 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);
  if (a1)
  {
    *buf = 136315650;
    *&buf[4] = "IPCAUClient.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 986;
    *&buf[18] = 2048;
    v22 = v1;
    _os_log_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d %p", buf, 0x1Cu);
  }

LABEL_7:
  v19 = 0.0;
  AudioToolboxSoftLink::instance(a1);
  inited = off_1EAD2D910(&v19);
  if (!inited)
  {
    if (*(v1 + 84))
    {
      inited = 0;
    }

    else
    {
      v18 = 0;
      v4 = *(v1 + 16);
      if (*(v4 + 48))
      {
        v5 = CADeprecated::TSingleton<AURegistrationServerConnection>::instance();
        inited = IPCAURegClient_SetProcessWakeState(*(v5 + 48), *(v4 + 52), 2, buf);
        v20 = inited;
        if (!inited)
        {
          v17[0] = &v20;
          v17[1] = v1;
          v6 = *(v1 + 440) != 0;
          IPCAUClient::RemoteAUServer::TransientWaker::TransientWaker(&v15, *(v1 + 16), &v20);
          inited = v20;
          if (!v20)
          {
            *buf = &unk_1F03257D0;
            *&buf[8] = 0;
            *&buf[16] = 0;
            LOBYTE(v22) = 1;
            if (v16)
            {
              v7 = 0x7FFFFFFF;
            }

            else
            {
              v7 = 10000;
            }

            v8 = IPCAUClient_Initialize(*(*(v1 + 16) + 48), v7, *(v1 + 80), v6, (v1 + 88), (v1 + 92), (v1 + 96), (v1 + 200), &v18, &buf[16], (v1 + 24));
            inited = SanitizeResult(v8);
            v20 = inited;
            if (!inited)
            {
              v14[0] = &v20;
              v14[1] = v1;
              v14[2] = &v15;
              if (v18)
              {
                v9 = (v1 + 200);
                v10 = v18;
                while (*v9 == v19)
                {
                  v9 += 5;
                  if (!--v10)
                  {
                    goto LABEL_21;
                  }
                }

                inited = 4294900550;
              }

              else
              {
LABEL_21:
                inited = IPCAUSharedMemoryBase::InitClient(v1 + 280, (v1 + 200), v18, *(v1 + 88), buf);
                v20 = inited;
                if (!inited)
                {
                  os_unfair_recursive_lock_lock_with_options();
                  v11 = *(v1 + 304);
                  *v11 = 0;
                  *(v11 + *(v1 + 376) + 2176) = 0;
                  os_unfair_recursive_lock_unlock();
                  *(v1 + 84) = 1;
                  *(v1 + 153) = 0;
                  *(v1 + 392) = 0;
                  inited = v20;
                }
              }

              applesauce::raii::v1::detail::ScopeGuard<IPCAUClient::AUInstance::Initialize(void)::$_1,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(v14);
            }

            SharableMemoryBlock::MachClientToken::~MachClientToken(buf);
          }

          IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(&v15);
          applesauce::raii::v1::detail::ScopeGuard<IPCAUClient::AUInstance::Initialize(void)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(v17);
        }
      }

      else
      {
        inited = 4294900547;
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return inited;
}

void sub_18F68D35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  applesauce::raii::v1::detail::ScopeGuard<IPCAUClient::AUInstance::Initialize(void)::$_1,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(va);
  SharableMemoryBlock::MachClientToken::~MachClientToken((v5 - 96));
  IPCAUClient::RemoteAUServer::TransientWaker::~TransientWaker(va1);
  applesauce::raii::v1::detail::ScopeGuard<IPCAUClient::AUInstance::Initialize(void)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(va2);
  _Unwind_Resume(a1);
}

uint64_t IPCAUSharedMemoryBase::InitClient(uint64_t a1, const AudioStreamBasicDescription *a2, uint64_t a3, int a4, uint64_t a5)
{
  *(a5 + 12) = IPCAUSharedMemoryBase::InitPhase1(a1, a2, a3, a4);
  *(a1 + 92) = 1;
  inited = SharableMemoryBlock::InitClient();
  *(a1 + 92) = 0;
  if (inited)
  {
    v8 = *(a1 + 64);
    for (i = *(a1 + 72); i != v8; std::allocator_traits<std::allocator<IPCAUSharedMemoryBase::Element>>::destroy[abi:ne200100]<IPCAUSharedMemoryBase::Element,void,0>(i))
    {
      i -= 56;
    }

    *(a1 + 72) = v8;
  }

  else
  {
    IPCAUSharedMemoryBase::InitPhase2(a1);
  }

  return inited;
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<IPCAUClient::AUInstance::Initialize(void)::$_1,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(uint64_t a1)
{
  if (**a1)
  {
    if (*(*(a1 + 16) + 8))
    {
      v2 = 0x7FFFFFFF;
    }

    else
    {
      v2 = 10000;
    }

    IPCAUClient_Uninitialize(*(*(*(a1 + 8) + 16) + 48), v2, *(*(a1 + 8) + 80));
  }

  return a1;
}

void SharableMemoryBlock::MachClientToken::~MachClientToken(SharableMemoryBlock::MachClientToken *this)
{
  *this = &unk_1F03257D0;
  if (*(this + 20) == 1)
  {
    SharableMemoryBlock::MachClientToken::Reset(this);
  }
}

{
  SharableMemoryBlock::MachClientToken::~MachClientToken(this);

  JUMPOUT(0x193ADF220);
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<IPCAUClient::AUInstance::Initialize(void)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(uint64_t a1)
{
  if (**a1)
  {
    v2 = *(*(a1 + 8) + 16);
    v3 = CADeprecated::TSingleton<AURegistrationServerConnection>::instance();
    IPCAURegClient_SetProcessWakeState(*(v3 + 48), *(v2 + 52), 3, &v5);
  }

  return a1;
}

uint64_t IPCAUSharedMemoryBase::InitPhase1(IPCAUSharedMemoryBase *this, const AudioStreamBasicDescription *a2, uint64_t a3, int a4)
{
  v5 = a3;
  (*(*this + 24))(this, a3);
  *(this + 22) = a4;
  v8 = *(this + 8);
  v9 = *(this + 9);
  v10 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v8) >> 3);
  v11 = v5 - v10;
  if (v5 <= v10)
  {
    if (v5 < v10)
    {
      v16 = v8 + 56 * v5;
      while (v9 != v16)
      {
        v9 -= 56;
        std::allocator_traits<std::allocator<IPCAUSharedMemoryBase::Element>>::destroy[abi:ne200100]<IPCAUSharedMemoryBase::Element,void,0>(v9);
      }

      *(this + 9) = v16;
    }
  }

  else
  {
    v12 = *(this + 10);
    if (0x6DB6DB6DB6DB6DB7 * ((v12 - v9) >> 3) < v11)
    {
      v13 = 0x6DB6DB6DB6DB6DB7 * ((v12 - v8) >> 3);
      v14 = 2 * v13;
      if (2 * v13 <= v5)
      {
        v14 = v5;
      }

      if (v13 >= 0x249249249249249)
      {
        v15 = 0x492492492492492;
      }

      else
      {
        v15 = v14;
      }

      if (v15 <= 0x492492492492492)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    bzero(*(this + 9), 56 * ((56 * v11 - 56) / 0x38) + 56);
    *(this + 9) = v9 + 56 * ((56 * v11 - 56) / 0x38) + 56;
  }

  result = *(this + 14);
  if (v5)
  {
    v18 = 0;
    do
    {
      v19 = *(this + 8) + v18;
      v21 = *&a2->mSampleRate;
      v20 = *&a2->mBytesPerPacket;
      *(v19 + 32) = *&a2->mBitsPerChannel;
      *v19 = v21;
      *(v19 + 16) = v20;
      if ((*(v19 + 12) & 0x20) != 0)
      {
        v22 = *(v19 + 28);
      }

      else
      {
        v22 = 1;
      }

      result += ((*(this + 22) * *(v19 + 24) + 15) & 0xFFFFFFF0) * v22;
      v18 += 56;
      ++a2;
    }

    while (56 * v5 != v18);
  }

  return result;
}

void IPCAUSharedMemoryBase::InitPhase2(IPCAUSharedMemoryBase *this)
{
  v1 = *(this + 8);
  v2 = *(this + 9);
  if (v1 != v2)
  {
    v4 = *(this + 3) + *(this + 14);
    do
    {
      v5 = *(v1 + 12);
      v7 = *(v1 + 24);
      v6 = *(v1 + 28);
      if ((v5 & 0x20) != 0)
      {
        v8 = v6;
      }

      else
      {
        v8 = 1;
      }

      v9 = *(this + 22);
      v10 = CADeprecated::CABufferList::New("", v5, v6);
      v11 = *(v1 + 40);
      *(v1 + 40) = v10;
      if (v11)
      {
        std::default_delete<CADeprecated::CABufferList>::operator()[abi:ne200100](v11);
      }

      v12 = CADeprecated::CABufferList::New("", *(v1 + 12), *(v1 + 28));
      v13 = *(v1 + 48);
      *(v1 + 48) = v12;
      if (v13)
      {
        std::default_delete<CADeprecated::CABufferList>::operator()[abi:ne200100](v13);
      }

      v14 = *(v1 + 40);
      *(v14 + 24) = v8;
      if (v8)
      {
        v15 = (v9 * v7 + 15) & 0xFFFFFFF0;
        v16 = *(v1 + 12);
        v17 = (v14 + 40);
        do
        {
          v18 = *(v1 + 28);
          if ((v16 & 0x20) != 0)
          {
            v18 = 1;
          }

          *v17 = v4;
          *(v17 - 2) = v18;
          *(v17 - 1) = v15;
          v4 += v15;
          v17 += 2;
          --v8;
        }

        while (v8);
      }

      v1 += 56;
    }

    while (v1 != v2);
  }

  __dmb(0xBu);
}

void *CADeprecated::CABufferList::New(uint64_t a1, char a2, unsigned int a3)
{
  if ((a2 & 0x20) != 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = 1;
  }

  if ((a2 & 0x20) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = a3;
  }

  result = operator new(16 * v4 + 32);
  *result = a1;
  result[1] = 0;
  *(result + 4) = 0;
  *(result + 6) = v4;
  if (v4)
  {
    v7 = (result + 4);
    do
    {
      *v7 = v5;
      *(v7 + 1) = 0;
      *(v7 + 1) = 0;
      v7 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t (*IPCAUClient::AUInstance::LookupMethod_Music(IPCAUClient::AUInstance *this))(void *)
{
  v1 = IPCAU_MIDIEvent;
  if (this != 257)
  {
    if (this == 258)
    {
      return IPCAU_SysEx;
    }

    else if ((this - 1) > 0x13)
    {
      return 0;
    }

    else
    {
      return off_1F0325888[(this - 1)];
    }
  }

  return v1;
}

uint64_t IPCAU_MIDIEvent(void *a1, char a2, char a3, char a4, int a5)
{
  v5 = a1[4];
  v7[0] = 0;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = a4;
  v8 = a5;
  return IPCAUClient::AUInstance::ControlMessage(v5, v7, 8uLL, 0, 0);
}

uint64_t IPCAU_SysEx(void *a1, const unsigned __int8 *a2, unsigned int a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  if (*(v3 + 84) != 1)
  {
    v4 = 4294956429;
    goto LABEL_6;
  }

  v4 = 4294900547;
  v5 = *(*(v3 + 16) + 48);
  if (v5)
  {
    if (a3 <= 0x7F7)
    {
      LOWORD(v15.msgh_bits) = 1;
      HIWORD(v15.msgh_bits) = a3;
      v4 = IPCAUClient::AUInstance::ControlMessage(v3, &v15, 4uLL, a2, a3);
      goto LABEL_6;
    }

    v8 = *(v3 + 80);
    *v16 = 1;
    *&v16[4] = a2;
    v17 = 16777472;
    v18 = a3;
    v19 = *MEMORY[0x1E69E99E0];
    v20 = v8;
    v21 = a3;
    reply_port = mig_get_reply_port();
    *&v15.msgh_bits = 2147489043;
    v15.msgh_remote_port = v5;
    v15.msgh_local_port = reply_port;
    *&v15.msgh_voucher_port = 0x1606800000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&v15);
      msgh_local_port = v15.msgh_local_port;
    }

    else
    {
      msgh_local_port = reply_port;
    }

    v11 = mach_msg(&v15, 275, 0x3Cu, 0x2Cu, msgh_local_port, gMediaServerTimeout, 0);
    v12 = v11;
    if ((v11 - 268435458) <= 0xE && ((1 << (v11 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(v15.msgh_local_port);
    }

    else
    {
      if (!v11)
      {
        if (v15.msgh_id == 71)
        {
          v13 = 4294966988;
        }

        else if (v15.msgh_id == 90316)
        {
          v13 = 4294966996;
          if ((v15.msgh_bits & 0x80000000) == 0 && *&v15.msgh_size == 36)
          {
            v13 = *&v16[8];
            if (!*&v16[8])
            {
              v4 = 0;
              goto LABEL_6;
            }
          }
        }

        else
        {
          v13 = 4294966995;
        }

        goto LABEL_26;
      }

      mig_dealloc_reply_port(v15.msgh_local_port);
    }

    v13 = 268435460;
    if (v12 != 268435460)
    {
LABEL_27:
      if (v12 == 268435459 || v12 == -308)
      {
        if (kInterAppAudioScope)
        {
          v14 = *kInterAppAudioScope;
          if (!*kInterAppAudioScope)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v14 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15.msgh_bits = 136315906;
          *&v15.msgh_size = "IPCAUClient.cpp";
          LOWORD(v15.msgh_local_port) = 1024;
          *(&v15.msgh_local_port + 2) = 433;
          HIWORD(v15.msgh_voucher_port) = 1024;
          v15.msgh_id = v12;
          *v16 = 1024;
          *&v16[2] = -66749;
          _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d converting result %d -> %d", &v15, 0x1Eu);
        }
      }

      else
      {
        v4 = v12;
      }

      goto LABEL_6;
    }

    if ((v15.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v15.msgh_local_port);
    }

LABEL_26:
    mach_msg_destroy(&v15);
    v12 = v13;
    goto LABEL_27;
  }

LABEL_6:
  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t MP4::AudioSpecificConfig::Deserialize(_DWORD *a1, int *a2, unsigned int a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a2[2];
  v7 = *a2;
  v8 = a2[5];
  v17[2] = 0;
  v18 = 0;
  v19 = 0;
  v20[2] = 0;
  MP4AudioProgramConfig::Clear(v20);
  v22 = 0u;
  v21 = 0u;
  DecoderConfigDescr::cleanup(v17);
  bzero(v16, 0x5F0uLL);
  v9 = DecoderConfigDescr::DeserializeMPEG4AudioSpecificConfig(v17, a2, a3);
  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "LATMHeader.cpp";
      v14 = 1024;
      v15 = 86;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioSpecificConfig::Deserialize: cannot parse AudioSpecificConfig", &v12, 0x12u);
    }
  }

  else
  {
    *a1 = v8 - a2[5] + 8 * (*a2 - a2[2] + v6 - v7);
  }

  if (*(&v22 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v22 + 1));
  }

  if (*(&v21 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v21 + 1));
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_18F68DEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MP4AudioESDS::~MP4AudioESDS(va);
  _Unwind_Resume(a1);
}

uint64_t MP4::LATMHeader::PutVariableSizeValue(uint64_t a1, unsigned int a2)
{
  v6 = a2;
  if (HIBYTE(a2))
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if ((a2 & 0xFF00) != 0)
  {
    v3 = 1;
  }

  if ((a2 & 0xFF0000) != 0)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a1, v4, 2u);
  do
  {
    result = AT::TBitstreamWriter<unsigned int>::PutBits(a1, *(&v6 + v4--), 8u);
  }

  while (v4 != -1);
  return result;
}

uint64_t MP4::LATMHeader::GetVariableSizeValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v2 >> 30;
  v4 = *(a1 + 20) - 2;
  *(a1 + 20) = v4;
  if (v4 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a1, *a1);
    v7 = *(a1 + 16);
    v6 = *(a1 + 20);
    v4 = v6 + 32;
    v8 = v6 == -32;
    *a1 += 4;
    v3 |= v7 >> v6;
    v5 = v7 << -v6;
    if (v8)
    {
      v5 = 0;
    }

    *(a1 + 16) = v5;
    *(a1 + 20) = v4;
    if (v3 == -1)
    {
      return 0;
    }
  }

  else
  {
    v5 = 4 * v2;
    *(a1 + 16) = v5;
  }

  LODWORD(v9) = 0;
  v10 = v3 + 1;
  do
  {
    v11 = HIBYTE(v5);
    v4 -= 8;
    *(a1 + 20) = v4;
    if (v4 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a1, *a1);
      *a1 += 4;
      v13 = *(a1 + 16);
      v12 = *(a1 + 20);
      v11 |= v13 >> v12;
      v4 = v12 + 32;
      *(a1 + 20) = v12 + 32;
      if (v12 == -32)
      {
        v5 = 0;
      }

      else
      {
        v5 = v13 << -v12;
      }
    }

    else
    {
      v5 <<= 8;
    }

    *(a1 + 16) = v5;
    v9 = v11 + (v9 << 8);
    --v10;
  }

  while (v10);
  return v9;
}

uint64_t MP4::LATMHeader::StreamFormatInfo(uint64_t a1, unsigned __int8 *a2, int a3, std::vector<char> *a4, std::vector<char> *a5, AudioStreamBasicDescription *a6, unsigned int *a7)
{
  v58 = *MEMORY[0x1E69E9840];
  LODWORD(v51) = 0;
  v53 = 0;
  v54 = 0;
  v55[2] = 0;
  MP4AudioProgramConfig::Clear(v55);
  v57 = 0u;
  v56 = 0u;
  DecoderConfigDescr::cleanup(&v50);
  if (*(a1 + 1) & 1) != 0 || (*(a1 + 11))
  {
    goto LABEL_35;
  }

  v37 = a7;
  v14 = *(a1 + 28);
  v15 = *(a1 + 4);
  v16 = *(a1 + 20);
  v17 = v14 >> 3;
  if ((v14 & 7) != 0)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = v17;
  }

  begin = a4->__begin_;
  v20 = a4->__end_ - a4->__begin_;
  if (v18 <= v20)
  {
    if (v18 < v20)
    {
      a4->__end_ = &begin[v18];
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a4, v18 - v20);
    begin = a4->__begin_;
  }

  v40 = a2;
  v41 = &a2[a3];
  LOBYTE(v42) = 0;
  HIDWORD(v42) = 0;
  MP4::LATMHeader::CopyBitsToByteAlignedBuffer(&v40, v16 + v15, v14, begin);
  bzero(v49, 0x5F0uLL);
  v52 = 6144;
  v51 = 0x500000040;
  v21 = v18;
  if (!v18)
  {
    v21 = DecoderConfigDescr::MPEG4AudioSpecificPayloadSerializeByteCount(&v50);
  }

  v22 = (v21 + 37);
  v23 = a5->__begin_;
  v24 = a5->__end_ - a5->__begin_;
  if (v22 <= v24)
  {
    if (v22 < v24)
    {
      a5->__end_ = &v23[v22];
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a5, v22 - v24);
    v23 = a5->__begin_;
  }

  v40 = v23;
  v41 = v23;
  v25 = &v23[v22];
  v42 = &v23[v22];
  v43 = 0x2000000000;
  v44 = v23 & 3;
  v38[0] = v23;
  v38[1] = &v23[v22];
  v39 = 0;
  if ((v23 & 3) != 0)
  {
    v26 = 0;
    v27 = v23 + 1;
    v28 = -8;
    v29 = v27;
    do
    {
      HIDWORD(v39) = v28 + 16;
      v38[0] = v29;
      v26 = *(v29 - 1) | (v26 << 8);
      LODWORD(v39) = v26;
      v28 += 8;
      if ((v27 & 3) == 0)
      {
        break;
      }

      LOBYTE(v27) = v27 + 1;
    }

    while (v29++ < v25);
    LODWORD(v39) = v26 << (24 - v28);
  }

  if (MP4AudioESDS::Serialize(v49, &v40, v18, a4->__begin_))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v46 = "LATMHeader.cpp";
      v47 = 1024;
      v48 = 332;
      v31 = MEMORY[0x1E69E9C10];
      v32 = "%25s:%-5d  MP4AudioESDS::Serialize Failed";
LABEL_34:
      _os_log_impl(&dword_18F5DF000, v31, OS_LOG_TYPE_ERROR, v32, buf, 0x12u);
      goto LABEL_35;
    }

    goto LABEL_35;
  }

  if (MP4AudioESDS::Deserialize(v49, v38, 0, 0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v46 = "LATMHeader.cpp";
      v47 = 1024;
      v48 = 340;
      v31 = MEMORY[0x1E69E9C10];
      v32 = "%25s:%-5d  MP4AudioESDS::Deserialize Failed";
      goto LABEL_34;
    }

LABEL_35:
    v34 = 0;
    goto LABEL_36;
  }

  if (DecoderConfigDescr::MakeStreamDescription(&v50, a6, v33))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v46 = "LATMHeader.cpp";
      v47 = 1024;
      v48 = 343;
      v31 = MEMORY[0x1E69E9C10];
      v32 = "%25s:%-5d  MP4AudioESDS::DecoderConfigDescr::MakeStreamDescription Failed";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (DecoderConfigDescr::GetChannelLayoutTag(&v50, v37))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v46 = "LATMHeader.cpp";
      v47 = 1024;
      v48 = 346;
      v31 = MEMORY[0x1E69E9C10];
      v32 = "%25s:%-5d  MP4AudioESDS::DecoderConfigDescr::GetChannelLayoutTag Failed";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v34 = 1;
LABEL_36:
  if (*(&v57 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v57 + 1));
  }

  if (*(&v56 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v56 + 1));
  }

  v35 = *MEMORY[0x1E69E9840];
  return v34;
}

void sub_18F68E48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  MP4AudioESDS::~MP4AudioESDS(va);
  _Unwind_Resume(a1);
}

unsigned __int8 **MP4::LATMHeader::CopyBitsToByteAlignedBuffer(unsigned __int8 **result, int a2, unsigned int a3, _BYTE *a4)
{
  v4 = *(result + 5);
  v5 = a2 - v4;
  if (a2 > v4)
  {
    *(result + 5) = 0;
    *(result + 16) = 0;
    v4 = 0;
    if (v5 >= 8)
    {
      *result += v5 >> 3;
      a2 = v5 & 7;
    }

    else
    {
      a2 = v5;
    }
  }

  if ((a2 - 9) >= 0xFFFFFFF8)
  {
    v6 = *(result + 16);
    v7 = v4 - a2;
    *(result + 5) = v7;
    if (v7 < 0)
    {
      v9 = *result;
      if (result[1] - *result < 1)
      {
        v10 = 255;
      }

      else
      {
        v10 = *v9;
      }

      v11 = v10 << -v7;
      v12 = v7 + 8;
      *(result + 5) = v12;
      *result = v9 + 1;
      if (v12)
      {
        LOBYTE(v8) = v11;
      }

      else
      {
        LOBYTE(v8) = 0;
      }
    }

    else
    {
      v8 = v6 << a2;
    }

    *(result + 16) = v8;
  }

  if (a3 >= 8)
  {
    do
    {
      v13 = *(result + 16);
      v14 = *(result + 5);
      *(result + 5) = v14 - 8;
      if (v14 - 8 < 0)
      {
        v16 = *result;
        if (result[1] - *result < 1)
        {
          v17 = 255;
        }

        else
        {
          v17 = *v16;
        }

        *(result + 5) = v14;
        *result = v16 + 1;
        v13 |= v17 >> v14;
        if (v14)
        {
          v15 = v17 << (8 - v14);
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      *(result + 16) = v15;
      *a4++ = v13;
      a3 -= 8;
    }

    while (a3 > 7);
  }

  if (a3)
  {
    v18 = *(result + 16);
    v19 = v18 >> (8 - a3);
    v20 = *(result + 5) - a3;
    *(result + 5) = v20;
    if (v20 < 0)
    {
      v22 = *result;
      if (result[1] - *result < 1)
      {
        v23 = 255;
      }

      else
      {
        v23 = *v22;
      }

      v24 = v23 << -v20;
      v25 = v20 + 8;
      *(result + 5) = v25;
      *result = v22 + 1;
      v19 |= v23 >> v25;
      if (v25)
      {
        LOBYTE(v21) = v24;
      }

      else
      {
        LOBYTE(v21) = 0;
      }
    }

    else
    {
      v21 = v18 << a3;
    }

    *(result + 16) = v21;
    *a4 = v19 << (8 - a3);
  }

  return result;
}

uint64_t MP4::LOASHeader::Deserialize(unsigned int *a1, uint64_t a2)
{
  v95 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 8);
  v4 = *a2;
  v5 = v3 - v4;
  v6 = *(a2 + 20);
  if ((v6 + 8 * v5) < 0x18)
  {
    goto LABEL_10;
  }

  v8 = *(a2 + 16);
  v9 = v8 >> 21;
  v10 = v6 - 11;
  *(a2 + 20) = v10;
  if (v10 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v4);
    v4 = (*a2 + 4);
    *a2 = v4;
    v13 = *(a2 + 16);
    v12 = *(a2 + 20);
    v9 |= v13 >> v12;
    v10 = v12 + 32;
    *(a2 + 20) = v12 + 32;
    v11 = v12 == -32 ? 0 : v13 << -v12;
  }

  else
  {
    v11 = v8 << 11;
  }

  *(a2 + 16) = v11;
  if (v9 != 695)
  {
LABEL_10:
    v17 = 0xFFFFFFFFLL;
    goto LABEL_11;
  }

  v14 = v11 >> 19;
  v15 = v10 - 13;
  *(a2 + 20) = v15;
  if (v15 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v4);
    v4 = (*a2 + 4);
    *a2 = v4;
    v21 = *(a2 + 16);
    v20 = *(a2 + 20);
    v14 |= v21 >> v20;
    v15 = v20 + 32;
    *(a2 + 20) = v20 + 32;
    if (v20 == -32)
    {
      v16 = 0;
    }

    else
    {
      v16 = v21 << -v20;
    }
  }

  else
  {
    v16 = v11 << 13;
  }

  *(a2 + 16) = v16;
  *a1 = v14;
  v22 = v15 + 8 * (*(a2 + 8) - v4);
  if (*(a1 + 4) != 1 || (Bit = TBitstreamReader<unsigned int>::GetBit(a2), *(a1 + 5) = Bit != 0, Bit))
  {
    v24 = 0;
    goto LABEL_18;
  }

  v35 = *(a2 + 8);
  v36 = *a2;
  v37 = *(a2 + 20);
  a1[2] = v22 - v37 + 8 * (*a2 - v35);
  v38 = TBitstreamReader<unsigned int>::GetBit(a2);
  *(a1 + 12) = v38 != 0;
  if (v38)
  {
    v39 = TBitstreamReader<unsigned int>::GetBit(a2);
    *(a1 + 13) = v39 != 0;
    if (v39)
    {
      goto LABEL_40;
    }

    if (a1[3])
    {
      MP4::LATMHeader::GetVariableSizeValue(a2);
    }
  }

  else
  {
    *(a1 + 13) = 0;
  }

  v41 = TBitstreamReader<unsigned int>::GetBit(a2);
  *(a1 + 14) = v41 != 0;
  if (!v41)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v91 = 136315394;
      v92 = "LATMHeader.cpp";
      v93 = 1024;
      v94 = 150;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  allStreamsSameTimeFraming == false not supported", &v91, 0x12u);
    }

    v17 = 4294967293;
    goto LABEL_74;
  }

  v42 = *(a2 + 16);
  v43 = v42 >> 26;
  v44 = *(a2 + 20) - 6;
  *(a2 + 20) = v44;
  if (v44 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    *a2 += 4;
    v50 = *(a2 + 16);
    v49 = *(a2 + 20);
    v43 |= v50 >> v49;
    v44 = v49 + 32;
    *(a2 + 20) = v49 + 32;
    if (v49 == -32)
    {
      v45 = 0;
    }

    else
    {
      v45 = v50 << -v49;
    }
  }

  else
  {
    v45 = v42 << 6;
  }

  *(a2 + 16) = v45;
  *(a1 + 16) = v43;
  if (v43)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v91 = 136315394;
      v92 = "LATMHeader.cpp";
      v93 = 1024;
      v94 = 153;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  multiple subframes not supported", &v91, 0x12u);
    }

    v17 = 4294967292;
LABEL_74:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v91 = 136315394;
      v92 = "LATMHeader.cpp";
      v93 = 1024;
      v94 = 254;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Can't deserialize StreamMuxConfig", &v91, 0x12u);
    }

    goto LABEL_11;
  }

  v51 = v45 >> 28;
  v52 = v44 - 4;
  *(a2 + 20) = v52;
  if (v52 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    *a2 += 4;
    v55 = *(a2 + 16);
    v54 = *(a2 + 20);
    v51 |= v55 >> v54;
    v52 = v54 + 32;
    *(a2 + 20) = v54 + 32;
    if (v54 == -32)
    {
      v53 = 0;
    }

    else
    {
      v53 = v55 << -v54;
    }
  }

  else
  {
    v53 = 16 * v45;
  }

  *(a2 + 16) = v53;
  *(a1 + 17) = v51;
  if (v51)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v91 = 136315394;
      v92 = "LATMHeader.cpp";
      v93 = 1024;
      v94 = 156;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  multiple programs not supported", &v91, 0x12u);
    }

    v17 = 4294967291;
    goto LABEL_74;
  }

  v56 = v37 + 8 * (v35 - v36);
  v57 = -1;
  do
  {
    v58 = v53 >> 29;
    v59 = v52 - 3;
    *(a2 + 20) = v59;
    if (v59 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      *a2 += 4;
      v62 = *(a2 + 16);
      v61 = *(a2 + 20);
      v58 |= v62 >> v61;
      *(a2 + 20) = v61 + 32;
      if (v61 == -32)
      {
        v60 = 0;
      }

      else
      {
        v60 = v62 << -v61;
      }
    }

    else
    {
      v60 = 8 * v53;
    }

    *(a2 + 16) = v60;
    if (v58)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v91 = 136315394;
        v92 = "LATMHeader.cpp";
        v93 = 1024;
        v94 = 161;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  multiple layers not supported", &v91, 0x12u);
      }

      v17 = 4294967290;
      goto LABEL_74;
    }

    if (v57 == -1)
    {
      *(a1 + 15) = 0;
    }

    else
    {
      v63 = TBitstreamReader<unsigned int>::GetBit(a2);
      *(a1 + 15) = v63 != 0;
      if (v63)
      {
        goto LABEL_92;
      }
    }

    if ((a1[3] & 1) == 0)
    {
      a1[6] = v56 - *(a2 + 20) + 8 * (*a2 - *(a2 + 8));
      if (!MP4::AudioSpecificConfig::Deserialize(a1 + 8, a2, 0))
      {
        goto LABEL_92;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v91 = 136315394;
        v92 = "LATMHeader.cpp";
        v93 = 1024;
        v94 = 176;
        v79 = MEMORY[0x1E69E9C10];
        goto LABEL_136;
      }

LABEL_137:
      v17 = 4294967289;
      goto LABEL_74;
    }

    VariableSizeValue = MP4::LATMHeader::GetVariableSizeValue(a2);
    v65 = *(a2 + 20) + 8 * (*(a2 + 8) - *a2);
    a1[6] = v56 - v65;
    if (MP4::AudioSpecificConfig::Deserialize(a1 + 8, a2, VariableSizeValue))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v91 = 136315394;
        v92 = "LATMHeader.cpp";
        v93 = 1024;
        v94 = 185;
        v79 = MEMORY[0x1E69E9C10];
LABEL_136:
        _os_log_impl(&dword_18F5DF000, v79, OS_LOG_TYPE_ERROR, "%25s:%-5d  Can't deserialize AudioSpecificConfig", &v91, 0x12u);
        goto LABEL_137;
      }

      goto LABEL_137;
    }

    v66 = v65 - *(a2 + 20) + 8 * (*a2 - *(a2 + 8));
    if (VariableSizeValue < v66)
    {
      v17 = 4294967288;
      goto LABEL_74;
    }

    TBitstreamReader<unsigned int>::SkipBits(a2, VariableSizeValue - v66);
LABEL_92:
    v67 = *(a2 + 16);
    v68 = v67 >> 29;
    v69 = *(a2 + 20) - 3;
    *(a2 + 20) = v69;
    if (v69 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      *a2 += 4;
      v72 = *(a2 + 16);
      v71 = *(a2 + 20);
      v68 |= v72 >> v71;
      v69 = v71 + 32;
      *(a2 + 20) = v71 + 32;
      if (v71 == -32)
      {
        v70 = 0;
      }

      else
      {
        v70 = v72 << -v71;
      }
    }

    else
    {
      v70 = 8 * v67;
    }

    *(a2 + 16) = v70;
    if (v68 == 1)
    {
      *(a1 + 18) = 1;
      v73 = v70 >> 23;
      v52 = v69 - 9;
      *(a2 + 20) = v52;
      if (v52 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
        *a2 += 4;
        v75 = *(a2 + 16);
        v74 = *(a2 + 20);
        v73 |= v75 >> v74;
        v52 = v74 + 32;
        *(a2 + 20) = v74 + 32;
        if (v74 == -32)
        {
          v53 = 0;
        }

        else
        {
          v53 = v75 << -v74;
        }
      }

      else
      {
        v53 = v70 << 9;
      }

      *(a2 + 16) = v53;
      a1[5] = v73 + 20;
    }

    else
    {
      if (v68)
      {
        v17 = 4294967287;
        goto LABEL_74;
      }

      *(a1 + 18) = 0;
      v52 = v69 - 8;
      *(a2 + 20) = v52;
      if (v52 >= 0)
      {
        v53 = v70 << 8;
LABEL_107:
        *(a2 + 16) = v53;
        goto LABEL_110;
      }

      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      v76 = *(a2 + 20);
      *a2 += 4;
      v52 = v76 + 32;
      *(a2 + 20) = v76 + 32;
      if (v76 != -32)
      {
        v53 = *(a2 + 16) << -v76;
        goto LABEL_107;
      }

      v53 = 0;
      *(a2 + 16) = 0;
    }

LABEL_110:
    ++v57;
  }

  while (v57 < *(a1 + 17));
  if (TBitstreamReader<unsigned int>::GetBit(a2))
  {
    if (a1[3])
    {
      v78 = MP4::LATMHeader::GetVariableSizeValue(a2);
    }

    else
    {
      v80 = 0;
      v82 = *(a2 + 16);
      v81 = *(a2 + 20);
      v83 = 4;
      do
      {
        v84 = v82 >> 23;
        v81 -= 9;
        *(a2 + 20) = v81;
        if (v81 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
          *a2 += 4;
          v86 = *(a2 + 16);
          v85 = *(a2 + 20);
          v84 |= v86 >> v85;
          v81 = v85 + 32;
          *(a2 + 20) = v85 + 32;
          if (v85 == -32)
          {
            v82 = 0;
          }

          else
          {
            v82 = v86 << -v85;
          }
        }

        else
        {
          v82 <<= 9;
        }

        *(a2 + 16) = v82;
        v78 = v84 | (v80 << 8);
        v80 = v78;
        --v83;
      }

      while (v83);
    }

    a1[7] = v78;
  }

  if (TBitstreamReader<unsigned int>::GetBit(a2))
  {
    v87 = *(a2 + 16);
    v88 = *(a2 + 20) - 8;
    *(a2 + 20) = v88;
    if (v88 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      v90 = *(a2 + 20);
      *a2 += 4;
      *(a2 + 20) = v90 + 32;
      if (v90 == -32)
      {
        v89 = 0;
      }

      else
      {
        v89 = *(a2 + 16) << -v90;
      }
    }

    else
    {
      v89 = v87 << 8;
    }

    *(a2 + 16) = v89;
  }

LABEL_40:
  v24 = a1[7];
LABEL_18:
  if (*(a1 + 13))
  {
    v17 = 4294967294;
  }

  else
  {
    v25 = 0;
    do
    {
      a1[9] = 0;
      if (*(a1 + 18))
      {
        a1[9] = a1[5];
        v26 = *(a2 + 20);
      }

      else
      {
        v27 = *(a2 + 16);
        v26 = *(a2 + 20);
        do
        {
          v28 = HIBYTE(v27);
          v26 -= 8;
          *(a2 + 20) = v26;
          if (v26 < 0)
          {
            TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
            *a2 += 4;
            v30 = *(a2 + 16);
            v29 = *(a2 + 20);
            v28 |= v30 >> v29;
            v26 = v29 + 32;
            *(a2 + 20) = v29 + 32;
            if (v29 == -32)
            {
              v27 = 0;
            }

            else
            {
              v27 = v30 << -v29;
            }
          }

          else
          {
            v27 <<= 8;
          }

          *(a2 + 16) = v27;
          a1[9] += v28;
        }

        while (v28 == 255 && v26 + 8 * (*(a2 + 8) - *a2) > 8);
      }

      a1[10] = v22 - v26 + 8 * (*a2 - *(a2 + 8));
      if (v24)
      {
        TBitstreamReader<unsigned int>::SkipBits(a2, v24);
      }
    }

    while (v25++ < *(a1 + 16));
    v32 = *(a2 + 20);
    if ((v32 & 7) != 0)
    {
      v33 = *(a2 + 16);
      *(a2 + 20) = v32 & 0xFFFFFFF8;
      if (v32 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
        v40 = *(a2 + 20);
        *a2 += 4;
        *(a2 + 20) = v40 + 32;
        if (v40 == -32)
        {
          v34 = 0;
        }

        else
        {
          v34 = *(a2 + 16) << -v40;
        }
      }

      else
      {
        v34 = v33 << (v32 & 7);
      }

      *(a2 + 16) = v34;
    }

    v46 = a1[10];
    v47 = a1[9] + (v46 >> 3);
    v48 = *a1;
    if (v47 > *a1 || (v17 = 0, (v46 & 7) != 0) && v47 == v48)
    {
      v17 = 4294967285;
    }
  }

LABEL_11:
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t MP4::LOASHeader::IsLOASSyncWord(MP4::LOASHeader *this, const unsigned __int8 *a2, _DWORD *a3, unsigned int *a4)
{
  v5 = this;
  v16[0] = this;
  v16[1] = this + a2;
  v17 = 0;
  if ((this & 3) != 0 && a2)
  {
    v6 = 0;
    v7 = this + 1;
    v8 = -8;
    do
    {
      v9 = *v5;
      v5 = (v5 + 1);
      v6 = v9 | (v6 << 8);
      v8 += 8;
      if ((v7 & 3) == 0)
      {
        break;
      }

      ++v7;
    }

    while (v5 < (this + a2));
    v16[0] = v5;
    v10 = v6 << (24 - v8);
    LODWORD(v17) = v10;
    *a3 = 0;
    if (a2 <= 2)
    {
      return 0;
    }

    v11 = v8 - 3;
    v12 = v10 >> 21;
    HIDWORD(v17) = v8 - 3;
    if (((v8 - 3) & 0x80000000) == 0)
    {
      v13 = v10 << 11;
      goto LABEL_14;
    }
  }

  else
  {
    *a3 = 0;
    if (a2 < 3)
    {
      return 0;
    }

    v12 = 0;
    HIDWORD(v17) = -11;
  }

  TBitstreamReader<unsigned int>::FillCacheFrom(v16, v5);
  v5 = (v16[0] + 4);
  v16[0] += 4;
  v12 |= v17 >> SBYTE4(v17);
  v11 = HIDWORD(v17) + 32;
  if (HIDWORD(v17) == -32)
  {
    v13 = 0;
  }

  else
  {
    v13 = v17 << -BYTE4(v17);
  }

LABEL_14:
  LODWORD(v17) = v13;
  if (v12 != 695)
  {
    return 0;
  }

  v14 = v13 >> 19;
  HIDWORD(v17) = v11 - 13;
  if (v11 - 13 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(v16, v5);
    v14 |= v17 >> SBYTE4(v17);
  }

  *a3 = v14 + 3;
  return 1;
}

uint64_t MP4::LOASHeader::CopyByteAlignedAccessUnitsFromAudioSyncStream(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, unsigned int a6, unsigned int *a7)
{
  if (!*a1)
  {
    v9 = 0;
    LODWORD(v8) = 0;
    v23 = 0;
    goto LABEL_41;
  }

  v34 = a7;
  v8 = 0;
  v9 = 0;
  v37 = a3 + 1;
  v38 = a3;
  while (1)
  {
    v10 = (a2 + 16 * v8);
    v11 = *v10;
    v12 = *(v10 + 3);
    v13 = (a3 + *v10);
    v49 = 0;
    v50 = 1;
    memset(v51, 0, 11);
    v52 = 0;
    v54 = 0;
    v53 = 0;
    v14 = &v13[v12];
    v47[0] = v13;
    v47[1] = &v13[v12];
    v48 = 0;
    if ((v13 & 3) != 0 && v12 != 0)
    {
      v16 = 0;
      v17 = v37 + v11;
      v18 = -8;
      v19 = v13;
      do
      {
        v20 = v18;
        v21 = *v19++;
        v16 = v21 | (v16 << 8);
        v18 += 8;
        if ((v17 & 3) == 0)
        {
          break;
        }

        ++v17;
      }

      while (v19 < v14);
      v47[0] = v19;
      LODWORD(v48) = v16 << (24 - v18);
      HIDWORD(v48) = v20 + 16;
    }

    v22 = MP4::LOASHeader::Deserialize(&v49, v47);
    if (v22)
    {
      break;
    }

    if (a4 && (v50 & 0x100) == 0 && (v51[1] & 0x1000000) == 0)
    {
      v27 = HIDWORD(v53);
      v35 = HIDWORD(v52);
      v36 = v51[0];
      v28 = HIDWORD(v53) >> 3;
      memset(&v46, 0, sizeof(v46));
      if ((v53 & 0x700000000) != 0)
      {
        v29 = v28 + 1;
      }

      else
      {
        v29 = v28;
      }

      if (v29)
      {
        std::vector<unsigned char>::__append(&v46, v29);
        begin = v46.__begin_;
      }

      else
      {
        begin = 0;
      }

      v43[0] = v13;
      v43[1] = v14;
      v44 = 0;
      v45 = 0;
      MP4::LATMHeader::CopyBitsToByteAlignedBuffer(v43, v36 + v35 + 24, v27, begin);
      if (*(a4 + 8) - *a4 == v29)
      {
        v31 = memcmp(begin, *a4, v29);
        v32 = v31 == 0;
        if (v31)
        {
          v23 = 4294967288;
        }

        else
        {
          v23 = 0;
        }

        if (!begin)
        {
LABEL_36:
          if (!v32)
          {
            goto LABEL_40;
          }

          goto LABEL_16;
        }
      }

      else
      {
        v32 = 0;
        v23 = 4294967288;
        if (!begin)
        {
          goto LABEL_36;
        }
      }

      operator delete(begin);
      goto LABEL_36;
    }

    v23 = 0;
LABEL_16:
    v24 = v54;
    v25 = v54 + v9;
    if (v54 + v9 > a6)
    {
      goto LABEL_40;
    }

    v26 = HIDWORD(v54) + 24;
    if ((v54 & 0x700000000) != 0)
    {
      v46.__begin_ = v13;
      v46.__end_ = v14;
      LOBYTE(v46.__end_cap_.__value_) = 0;
      HIDWORD(v46.__end_cap_.__value_) = 0;
      MP4::LATMHeader::CopyBitsToByteAlignedBuffer(&v46, v26, 8 * v54, a5);
    }

    else
    {
      memcpy(a5, &v13[v26 >> 3], v54);
    }

    *v10 = v9;
    *(v10 + 2) = 0;
    *(v10 + 3) = v24;
    a5 += v24;
    ++v8;
    v9 += v24;
    a3 = v38;
    if (v8 >= *a1)
    {
      v9 = v25;
      goto LABEL_40;
    }
  }

  v23 = v22;
LABEL_40:
  a7 = v34;
LABEL_41:
  *a7 = v9;
  *a1 = v8;
  return v23;
}

void sub_18F68F518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SoundCheckAnalyzer::Finish(SoundCheckAnalyzer *this, CACFDictionary *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if ((*(this + 8) & 8) != 0)
  {
    v11 = MEMORY[0x1E695E9D8];
    v12 = MEMORY[0x1E695E9E8];
    *__str = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v24 = 257;
    Mutable = CFDictionaryCreateMutable(0, 0, v11, v12);
    v22 = 257;
    v19 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v20 = 257;
    if ((*(this + 8) & 2) != 0)
    {
      v13 = *(this + 7);
      if (v13)
      {
        computeItuLoudnessValue(v13);
        computeEbuLoudnessRange(*(this + 7));
        v14 = *(this + 7);
        if (*(v14 + 2148))
        {
          CACFDictionary::AddFloat32(&Mutable, @"aa itu loudness", *(v14 + 2144));
          v14 = *(this + 7);
        }

        if (*(v14 + 2156))
        {
          CACFDictionary::AddFloat32(&Mutable, @"aa ebu loudness range", *(v14 + 2152));
          v14 = *(this + 7);
        }

        if (*(v14 + 2164))
        {
          CACFDictionary::AddFloat32(&Mutable, @"aa ebu top of loudness range", *(v14 + 2160));
          v14 = *(this + 7);
        }

        if (*(v14 + 2172))
        {
          CACFDictionary::AddFloat32(&Mutable, @"aa ebu max momentary loudness", *(v14 + 2168));
          v14 = *(this + 7);
        }

        if (*(v14 + 2180))
        {
          CACFDictionary::AddFloat32(&Mutable, @"aa ebu max short-term loudness", *(v14 + 2176));
        }
      }
    }

    if ((*(this + 8) & 4) != 0 && TruePeakAnalyzer::PeakValue((this + 64)) >= *(this + 26))
    {
      v15 = TruePeakAnalyzer::PeakValue((this + 64));
      CACFDictionary::AddFloat32(&Mutable, @"aa itu true peak", v15);
      v16 = TruePeakAnalyzer::SamplePeakValue((this + 64));
      CACFDictionary::AddFloat32(&Mutable, @"aa itu sample peak", v16);
    }

    if (CACFDictionary::Size(__str))
    {
      CACFDictionary::AddDictionary(a2, @"sound check info", *__str);
    }

    if (CACFDictionary::Size(&Mutable))
    {
      CACFDictionary::AddDictionary(a2, @"main loudness parameters", Mutable);
    }

    if (CACFDictionary::Size(&v19))
    {
      CACFDictionary::AddDictionary(a2, @"additional loudness parameters", v19);
    }

    CACFDictionary::~CACFDictionary(&v19);
    CACFDictionary::~CACFDictionary(&Mutable);
    CACFDictionary::~CACFDictionary(__str);
  }

  else
  {
    snprintf(__str, 0x20uLL, "%u", 0);
    CACFDictionary::AddCString(a2, @"aa version", __str);
    if ((*(this + 8) & 2) != 0)
    {
      v4 = *(this + 7);
      if (v4)
      {
        computeItuLoudnessValue(v4);
        computeEbuLoudnessRange(*(this + 7));
        v6 = *(this + 7);
        if (*(v6 + 2148))
        {
          AddToDictionaryVA(a2, @"aa itu loudness", v5, *(v6 + 2144));
          v6 = *(this + 7);
        }

        if (*(v6 + 2156))
        {
          AddToDictionaryVA(a2, @"aa ebu loudness range", v5, *(v6 + 2152));
          v6 = *(this + 7);
        }

        if (*(v6 + 2164))
        {
          AddToDictionaryVA(a2, @"aa ebu top of loudness range", v5, *(v6 + 2160));
          v6 = *(this + 7);
        }

        if (*(v6 + 2172))
        {
          AddToDictionaryVA(a2, @"aa ebu max momentary loudness", v5, *(v6 + 2168));
          v6 = *(this + 7);
        }

        if (*(v6 + 2180))
        {
          AddToDictionaryVA(a2, @"aa ebu max short-term loudness", v5, *(v6 + 2176));
        }
      }
    }

    if ((*(this + 8) & 4) != 0 && TruePeakAnalyzer::PeakValue((this + 64)) >= *(this + 26))
    {
      v7 = TruePeakAnalyzer::PeakValue((this + 64));
      AddToDictionaryVA(a2, @"aa itu true peak", v8, v7);
      v9 = TruePeakAnalyzer::SamplePeakValue((this + 64));
      AddToDictionaryVA(a2, @"aa itu sample peak", v10, v9);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_18F68F908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  CACFDictionary::~CACFDictionary(va);
  CACFDictionary::~CACFDictionary(va1);
  _Unwind_Resume(a1);
}

uint64_t AddToDictionaryVA(CACFDictionary *a1, const __CFString *a2, const char *a3, ...)
{
  va_start(va, a3);
  v8 = *MEMORY[0x1E69E9840];
  result = vsnprintf(__str, 0x40uLL, "%6.2f", va);
  if ((result & 0x80000000) == 0)
  {
    result = CACFDictionary::AddCString(a1, a2, __str);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void SoundCheckAnalyzer::~SoundCheckAnalyzer(SoundCheckAnalyzer *this)
{
  SoundCheckAnalyzer::~SoundCheckAnalyzer(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0325938;
  removeGatedLoudness(this + 7);
  v2 = *(this + 11);
  if (v2)
  {
    v3 = *(this + 12);
    if (v3 != v2)
    {
      *(this + 12) = &v3[(v2 - v3 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v2);
    *(this + 11) = 0;
    *(this + 12) = 0;
  }

  v4 = *(this + 8);
  if (v4)
  {
    *(this + 9) = v4;
    operator delete(v4);
  }
}

uint64_t SoundCheckAnalyzer::Start(int32x2_t *this, const AudioStreamBasicDescription *a2, const AudioChannelLayout *a3)
{
  if ((a2->mFormatFlags & 0x23) != 1)
  {
    return 4294967246;
  }

  v5 = *&a2->mSampleRate;
  v6 = *&a2->mBytesPerPacket;
  this[6] = *&a2->mBitsPerChannel;
  *this[2].i8 = v5;
  *this[4].i8 = v6;
  v7 = this[1].i32[0];
  if ((v7 & 2) == 0)
  {
    goto LABEL_7;
  }

  if (a3)
  {
    mChannelLayoutTag = a3->mChannelLayoutTag;
    mChannelsPerFrame = a2->mChannelsPerFrame;
  }

  else
  {
    mChannelsPerFrame = a2->mChannelsPerFrame;
    if (mChannelsPerFrame == 1)
    {
      mChannelLayoutTag = 6553601;
    }

    else
    {
      if (mChannelsPerFrame != 2)
      {
        return 1718449215;
      }

      mChannelLayoutTag = 6619138;
    }
  }

  mSampleRate = a2->mSampleRate;
  *&mSampleRate = a2->mSampleRate;
  result = initGatedLoudness(mChannelsPerFrame, mChannelLayoutTag, &this[7], mSampleRate);
  if (!result)
  {
    v7 = this[1].i32[0];
LABEL_7:
    if ((v7 & 4) == 0)
    {
      return 0;
    }

    v12 = a2->mChannelsPerFrame;
    v13 = this[8];
    this[9] = v13;
    if (v12)
    {
      v14 = *&this[10] - v13;
      if (v12 > v14 >> 7)
      {
        if ((v12 & 0x80000000) == 0)
        {
          v15 = v14 >> 6;
          if (v14 >> 6 <= v12)
          {
            v15 = v12;
          }

          if (v14 >= 0x7FFFFFFFFFFFFF80)
          {
            v16 = 0x1FFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v15;
          }

          if (!(v16 >> 57))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v18 = v12 << 7;
      v17 = (v13 + 128 * v12);
      do
      {
        TruePeak::TruePeak(v13);
        v13 = (v13 + 128);
        v18 -= 128;
      }

      while (v18);
      this[9] = v17;
    }

    else
    {
      v17 = v13;
    }

    v19 = this[8];
    if (v17 != v19)
    {
      if (((v17 - *&v19) >> 7) <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = (v17 - *&v19) >> 7;
      }

      v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
      v22 = vdupq_n_s64(v20 - 1);
      v23 = xmmword_18F9016D0;
      v24 = xmmword_18F9016E0;
      v25 = xmmword_18F9016F0;
      v26 = xmmword_18F901700;
      v27 = xmmword_18F901710;
      v28 = xmmword_18F9016A0;
      v29 = xmmword_18F9016B0;
      v30 = xmmword_18F9016C0;
      v31 = vdupq_n_s64(0x10uLL);
      v32 = this[8];
      do
      {
        v33 = vmovn_s64(vcgeq_u64(v22, v30));
        if (vuzp1_s8(vuzp1_s16(v33, *v22.i8), *v22.i8).u8[0])
        {
          v32[112] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v33, *&v22), *&v22).i8[1])
        {
          v32[240] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, *&v29))), *&v22).i8[2])
        {
          v32[368] = 0;
          v32[496] = 0;
        }

        v34 = vmovn_s64(vcgeq_u64(v22, v28));
        if (vuzp1_s8(*&v22, vuzp1_s16(v34, *&v22)).i32[1])
        {
          v32[624] = 0;
        }

        if (vuzp1_s8(*&v22, vuzp1_s16(v34, *&v22)).i8[5])
        {
          v32[752] = 0;
        }

        if (vuzp1_s8(*&v22, vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, *&v27)))).i8[6])
        {
          v32[880] = 0;
          v32[1008] = 0;
        }

        v35 = vmovn_s64(vcgeq_u64(v22, v26));
        if (vuzp1_s8(vuzp1_s16(v35, *v22.i8), *v22.i8).u8[0])
        {
          v32[1136] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v35, *&v22), *&v22).i8[1])
        {
          v32[1264] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, *&v25))), *&v22).i8[2])
        {
          v32[1392] = 0;
          v32[1520] = 0;
        }

        v36 = vmovn_s64(vcgeq_u64(v22, v24));
        if (vuzp1_s8(*&v22, vuzp1_s16(v36, *&v22)).i32[1])
        {
          v32[1648] = 0;
        }

        if (vuzp1_s8(*&v22, vuzp1_s16(v36, *&v22)).i8[5])
        {
          v32[1776] = 0;
        }

        if (vuzp1_s8(*&v22, vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, *&v23)))).i8[6])
        {
          v32[1904] = 0;
          v32[2032] = 0;
        }

        v28 = vaddq_s64(v28, v31);
        v29 = vaddq_s64(v29, v31);
        v30 = vaddq_s64(v30, v31);
        v27 = vaddq_s64(v27, v31);
        v26 = vaddq_s64(v26, v31);
        v25 = vaddq_s64(v25, v31);
        v24 = vaddq_s64(v24, v31);
        v32 += 2048;
        v23 = vaddq_s64(v23, v31);
        v21 -= 16;
      }

      while (v21);
    }

    if (v12 >= 2)
    {
      std::valarray<float>::resize(&this[11], 0x8000);
      v19 = this[8];
      v17 = this[9];
    }

    if (v17 == v19)
    {
      return 0;
    }

    v37 = 0;
    v38 = 0;
    do
    {
      TruePeak::Reset((*&v19 + v37));
      ++v38;
      v19 = this[8];
      v39 = this[9];
      v37 += 128;
    }

    while (v38 < (*&v39 - *&v19) >> 7);
    if (*&v39 == *&v19)
    {
      return 0;
    }

    else
    {
      TruePeak::GetStats();
      result = 0;
      this[13] = vrev64_s32(v40);
    }
  }

  return result;
}

void parseInfoStringsChunk(unsigned __int8 *a1, uint64_t a2, CACFDictionary *a3)
{
  if (a2 >= 4 && *a1 && a2 >= 5)
  {
    v5 = 0;
    v6 = &a1[a2];
    v20 = bswap32(*a1);
    v7 = a1 + 4;
    v8 = *MEMORY[0x1E695E480];
    v9 = &a1[a2 - 1];
    v19 = &a1[a2 - 2];
    while (!*v7)
    {
      v10 = 0;
LABEL_14:
      v12 = CFStringCreateWithBytes(v8, v7, v10, 0x8000100u, 0);
      if (v12)
      {
        v13 = &v7[v10 + 1];
        if (v13 >= v6)
        {
          return;
        }

        v14 = v12;
        if (*v13)
        {
          v15 = 0;
          while (&v19[-v10] - v7 != v15)
          {
            if (!v7[v10 + 2 + v15++])
            {
              if (v15 < v6 - v13)
              {
                goto LABEL_23;
              }

              return;
            }
          }

          return;
        }

        v15 = 0;
LABEL_23:
        v17 = CFStringCreateWithBytes(v8, &v7[v10 + 1], v15, 0x8000100u, 0);
        if (v17)
        {
          v18 = v17;
          if (CFStringGetLength(v17) && CFStringGetLength(v14))
          {
            CACFDictionary::AddString(a3, v14, v18);
          }

          v13 += v15 + 1;
          CFRelease(v18);
        }

        CFRelease(v14);
        v7 = v13;
      }

      if (++v5 >= v20 || v7 >= v6)
      {
        return;
      }
    }

    v10 = 0;
    while (v9 - v7 != v10)
    {
      if (!v7[++v10])
      {
        if (v10 < v6 - v7)
        {
          goto LABEL_14;
        }

        return;
      }
    }
  }
}

uint64_t CAFtoAF_FormatListItem(uint64_t result, AudioFormatListItem *a2)
{
  *&a2->mASBD.mBitsPerChannel = 0;
  *&a2->mASBD.mSampleRate = 0u;
  *&a2->mASBD.mBytesPerPacket = 0u;
  a2->mASBD.mSampleRate = *result;
  v2 = *(result + 8);
  a2->mASBD.mFormatID = v2;
  v3 = *(result + 16);
  v4 = *(result + 20);
  a2->mASBD.mBytesPerPacket = v3;
  a2->mASBD.mFramesPerPacket = v4;
  v5 = *(result + 24);
  v6 = *(result + 28);
  a2->mASBD.mChannelsPerFrame = v5;
  a2->mASBD.mBitsPerChannel = v6;
  if (v4 == 1)
  {
    a2->mASBD.mBytesPerFrame = v3;
  }

  v7 = *(result + 12);
  if (v2 == 1819304813)
  {
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = 4;
    }

    v9 = (v8 | *(result + 12) & 2) ^ 2;
    if ((v6 & 7) != 0 || (v6 >> 3) * v5 != v3)
    {
      v10 = v9 | 0x10;
    }

    else
    {
      v10 = v9 | 8;
    }

    a2->mASBD.mFormatFlags = v10;
  }

  else
  {
    a2->mASBD.mFormatFlags = v7;
  }

  a2->mChannelLayoutTag = *(result + 32);
  return result;
}

BOOL CAFRegionChunk_BtoN(CAFRegionChunk *a1, unint64_t a2)
{
  mNumberRegions = a1->mNumberRegions;
  v3 = bswap32(mNumberRegions);
  a1->mSMPTE_TimeType = bswap32(a1->mSMPTE_TimeType);
  a1->mNumberRegions = v3;
  if (!mNumberRegions)
  {
    return 0;
  }

  v4 = 0;
  mRegions = a1->mRegions;
  while (1)
  {
    v6 = mRegions - a1 + 40 > a2;
    if (mRegions - a1 + 40 > a2)
    {
      break;
    }

    v7 = a2 - (mRegions - a1);
    v8 = v7 - 12;
    if (v7 < 0xC)
    {
      break;
    }

    *mRegions = vrev32_s8(*mRegions);
    v9 = mRegions[1].u32[0];
    v10 = bswap32(v9);
    mRegions[1].i32[0] = v10;
    if (v10 > (v8 / 0x1C))
    {
      break;
    }

    if (v9)
    {
      v11 = mRegions + 2;
      v12 = v10;
      do
      {
        v11[-1].i32[1] = bswap32(v11[-1].u32[1]);
        *v11 = bswap64(*v11);
        v11[1].i32[0] = bswap32(v11[1].u32[0]);
        v11[2] = vrev32_s8(v11[2]);
        v11 = (v11 + 28);
        --v12;
      }

      while (v12);
    }

    mRegions = (mRegions + 28 * v10 + 12);
    if (++v4 == v3)
    {
      return 0;
    }
  }

  a1->mNumberRegions = v4;
  return v6;
}

void std::vector<CAFStringsWrapper::CAFStringWrapper>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
        }

        v4 -= 4;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<CAFStringsWrapper::CAFStringWrapper>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = (v4 - *a1) >> 5;
    if ((v7 + 1) >> 59)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - *a1;
    v9 = v8 >> 4;
    if (v8 >> 4 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v26 = a1;
    if (v10)
    {
      if (!(v10 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 32 * v7;
    v23 = 0;
    v24 = 32 * v7;
    v25 = (32 * v7);
    *(32 * v7) = *a2;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((32 * v7 + 8), *(a2 + 8), *(a2 + 16));
      v12 = v24;
      v13 = v25;
    }

    else
    {
      *(32 * v7 + 8) = *(a2 + 8);
      *(32 * v7 + 0x18) = *(a2 + 24);
      v13 = 32 * v7;
    }

    *&v25 = v13 + 32;
    v15 = *a1;
    v14 = a1[1];
    v16 = v12 + *a1 - v14;
    if (*a1 != v14)
    {
      v17 = *a1;
      v18 = v16;
      do
      {
        *v18 = *v17;
        v19 = *(v17 + 8);
        *(v18 + 24) = *(v17 + 24);
        *(v18 + 8) = v19;
        *(v17 + 16) = 0;
        *(v17 + 24) = 0;
        *(v17 + 8) = 0;
        v17 += 32;
        v18 += 32;
      }

      while (v17 != v14);
      do
      {
        if (*(v15 + 31) < 0)
        {
          operator delete(*(v15 + 8));
        }

        v15 += 32;
      }

      while (v15 != v14);
    }

    v20 = *a1;
    *a1 = v16;
    v21 = a1[2];
    v22 = v25;
    *(a1 + 1) = v25;
    *&v25 = v20;
    *(&v25 + 1) = v21;
    v23 = v20;
    v24 = v20;
    std::__split_buffer<CAFStringsWrapper::CAFStringWrapper>::~__split_buffer(&v23);
    v11 = v22;
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 8);
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(v5, *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v6 = *(a2 + 8);
      *(v4 + 24) = *(a2 + 24);
      *&v5->__r_.__value_.__l.__data_ = v6;
    }

    v11 = v4 + 32;
    a1[1] = v4 + 32;
  }

  a1[1] = v11;
}

void sub_18F6904AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CAFStringsWrapper::CAFStringWrapper>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<CAFStringsWrapper::CAFStringWrapper>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 32;
      *(a1 + 16) = v2 - 32;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void CADeprecated::CAAutoFree<CAFStrings>::allocBytes(void **a1, size_t size)
{
  v4 = *a1;
  if (v4)
  {
    free(v4);
    *a1 = 0;
  }

  v5 = malloc_type_malloc(size, 0xB2C9138AuLL);
  v6 = v5;
  if (size && !v5)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = std::bad_alloc::bad_alloc(exception);
  }

  bzero(v5, size);
  *a1 = v6;
}

char *CAFStringsWrapper::Get(CAFStringsWrapper *this, uint64_t a2, int a3)
{
  if (((a2 - this) & 0x1FFFFFFFE0) == 0)
  {
    return 0;
  }

  v3 = 0;
  v4 = this;
  while (1)
  {
    v5 = *v4;
    v4 = (v4 + 32);
    if (v5 == a3)
    {
      break;
    }

    if (((a2 - this) >> 5) == ++v3)
    {
      return 0;
    }
  }

  v7 = this + 32 * v3;
  result = v7 + 8;
  if (v7[31] < 0)
  {
    return *result;
  }

  return result;
}

void CAFStringsWrapper::Put(CAFStringsWrapper *this, int a2, std::string::value_type *__s)
{
  memset(&__p, 0, sizeof(__p));
  v11 = a2;
  std::string::__assign_external(&__p, __s);
  v5 = *(this + 1) - *this;
  if ((v5 & 0x1FFFFFFFE0) != 0)
  {
    v6 = 0;
    v7 = (v5 >> 5);
    v8 = *this;
    while (1)
    {
      v9 = *v8;
      v8 += 8;
      if (v9 == a2)
      {
        break;
      }

      if (v7 == ++v6)
      {
        goto LABEL_5;
      }
    }

    v10 = *this + 32 * v6;
    *v10 = v11;
    std::string::operator=((v10 + 8), &__p);
  }

  else
  {
LABEL_5:
    std::vector<CAFStringsWrapper::CAFStringWrapper>::push_back[abi:ne200100](this, &v11);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_18F6906CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int32x4_t *UpmixMonoToStereoInterleaved32_ARM(int32x4_t *result, __int32 *a2, unsigned int a3)
{
  if ((a2 & 0xF) != 0 && a3)
  {
    v3 = a2 + 8;
    do
    {
      v4 = result->i32[0];
      result = (result + 4);
      v5 = (a2 + 2);
      *a2 = v4;
      a2[1] = v4;
      v6 = a3 - 1;
      if ((v3 & 0xF) == 0)
      {
        break;
      }

      v3 += 8;
      a2 += 2;
      --a3;
    }

    while (a3);
  }

  else
  {
    v5 = a2;
    v6 = a3;
  }

  if (v6 >= 4)
  {
    v7 = v6 >> 2;
    do
    {
      v8 = *result++;
      *v5 = vzip1q_s32(v8, v8);
      v5[1] = vzip2q_s32(v8, v8);
      v5 += 2;
      --v7;
    }

    while (v7);
  }

  for (i = v6 & 3; i; --i)
  {
    v10 = result->i32[0];
    result = (result + 4);
    v5->i32[0] = v10;
    v5->i32[1] = v10;
    v5 = (v5 + 8);
  }

  return result;
}

int16x8_t *UpmixMonoToStereoInterleaved16_ARM(int16x8_t *result, __int16 *a2, unsigned int a3)
{
  if ((a2 & 0xF) != 0 && a3)
  {
    v3 = a2 + 4;
    do
    {
      v4 = result->i16[0];
      result = (result + 2);
      *a2 = v4;
      v5 = (a2 + 2);
      a2[1] = v4;
      v6 = a3 - 1;
      if ((v3 & 0xF) == 0)
      {
        break;
      }

      v3 += 4;
      a2 += 2;
      --a3;
    }

    while (a3);
  }

  else
  {
    v5 = a2;
    v6 = a3;
  }

  if (v6 >= 8)
  {
    v7 = v6 >> 3;
    do
    {
      v8 = *result++;
      *v5 = vzip1q_s16(v8, v8);
      v5[1] = vzip2q_s16(v8, v8);
      v5 += 2;
      --v7;
    }

    while (v7);
  }

  for (i = v6 & 7; i; --i)
  {
    v10 = result->i16[0];
    result = (result + 2);
    v5->i16[0] = v10;
    v5->i16[1] = v10;
    v5 = (v5 + 4);
  }

  return result;
}

__int16 *DownmixStereoInterleavedInt16ToMono_ARM(__int16 *result, int16x8_t *a2, unsigned int a3)
{
  if ((a2 & 0xF) != 0 && a3)
  {
    v3 = a2 + 2;
    do
    {
      v4 = (result + 2);
      v5 = 23170 * (result[1] + *result);
      v6 = v5 >> 15;
      v7 = (v5 >> 31) ^ (v5 >> 15);
      if (v6 > 0)
      {
        v8 = 0x7FFF;
      }

      else
      {
        v8 = 0x8000;
      }

      if (v7 >= 0x8000)
      {
        v9 = v8;
      }

      else
      {
        v9 = v6;
      }

      a2->i16[0] = v9;
      a2 = (a2 + 2);
      v10 = a3 - 1;
      if ((v3 & 0xF) == 0)
      {
        break;
      }

      v3 += 2;
      result += 2;
      --a3;
    }

    while (a3);
  }

  else
  {
    v10 = a3;
    v4 = result;
  }

  if (v10 >= 8)
  {
    v11 = v10 >> 3;
    v12 = vdupq_n_s32(0x5A82u);
    do
    {
      v13 = *v4;
      v14 = v4[1];
      v4 += 2;
      *a2++ = vqrshrn_high_n_s32(vqrshrn_n_s32(vmulq_s32(vpaddlq_s16(v13), v12), 0xFuLL), vmulq_s32(vpaddlq_s16(v14), v12), 0xFuLL);
      --v11;
    }

    while (v11);
  }

  for (i = v10 & 7; i; --i)
  {
    v16 = 23170 * (v4->i16[1] + v4->i16[0]);
    v17 = v16 >> 15;
    v18 = (v16 >> 31) ^ (v16 >> 15);
    if (v17 > 0)
    {
      v19 = 0x7FFF;
    }

    else
    {
      v19 = 0x8000;
    }

    if (v18 >= 0x8000)
    {
      v20 = v19;
    }

    else
    {
      v20 = v17;
    }

    a2->i16[0] = v20;
    a2 = (a2 + 2);
    v4 = (v4 + 4);
  }

  return result;
}

int16x8_t *NativeInt16ToNativeInt32_ARM(int16x8_t *result, uint32x4_t *a2, unsigned int a3, char a4)
{
  if ((a2 & 0xF) != 0 && a3)
  {
    v4 = a2 + 4;
    do
    {
      v5 = result->i16[0];
      result = (result + 2);
      a2->i32[0] = v5 << a4;
      a2 = (a2 + 4);
      v6 = a3 - 1;
      if ((v4 & 0xF) == 0)
      {
        break;
      }

      v4 += 4;
      --a3;
    }

    while (a3);
  }

  else
  {
    v6 = a3;
  }

  if (v6 >= 8)
  {
    v7 = vdupq_n_s32(a4);
    v8 = v6 >> 3;
    do
    {
      v9 = *result++;
      *a2 = vshlq_u32(vmovl_s16(*v9.i8), v7);
      a2[1] = vshlq_u32(vmovl_high_s16(v9), v7);
      a2 += 2;
      --v8;
    }

    while (v8);
  }

  for (i = v6 & 7; i; --i)
  {
    v11 = result->i16[0];
    result = (result + 2);
    a2->i32[0] = v11 << a4;
    a2 = (a2 + 4);
  }

  return result;
}

int32x4_t *NativeInt32ToNativeInt16_ARM(int32x4_t *result, int16x8_t *a2, unsigned int a3, int a4)
{
  if ((a2 & 0xF) != 0 && a3)
  {
    v4 = a2 + 2;
    do
    {
      v5 = result->i32[0];
      result = (result + 4);
      v6 = (v5 >> (a4 - 1)) + 1;
      v7 = v6 >> 1;
      v8 = (v6 >> 31) ^ (v6 >> 1);
      if (v7 > 0)
      {
        v9 = 0x7FFF;
      }

      else
      {
        v9 = 0x8000;
      }

      if (v8 >= 0x8000)
      {
        v10 = v9;
      }

      else
      {
        v10 = v7;
      }

      a2->i16[0] = v10;
      a2 = (a2 + 2);
      v11 = a3 - 1;
      if ((v4 & 0xF) == 0)
      {
        break;
      }

      v4 += 2;
      --a3;
    }

    while (a3);
  }

  else
  {
    v11 = a3;
  }

  if (v11 >= 0x10)
  {
    v12 = vdupq_n_s32(-a4);
    v13 = v11 >> 4;
    do
    {
      v14 = vqmovn_high_s32(vqmovn_s32(vqrshlq_s32(result[2], v12)), vqrshlq_s32(result[3], v12));
      *a2 = vqmovn_high_s32(vqmovn_s32(vqrshlq_s32(*result, v12)), vqrshlq_s32(result[1], v12));
      a2[1] = v14;
      a2 += 2;
      result += 4;
      --v13;
    }

    while (v13);
  }

  for (i = v11 & 0xF; i; --i)
  {
    v16 = result->i32[0];
    result = (result + 4);
    v17 = (v16 >> (a4 - 1)) + 1;
    v18 = v17 >> 1;
    v19 = (v17 >> 31) ^ (v17 >> 1);
    if (v18 > 0)
    {
      v20 = 0x7FFF;
    }

    else
    {
      v20 = 0x8000;
    }

    if (v19 >= 0x8000)
    {
      v21 = v20;
    }

    else
    {
      v21 = v18;
    }

    a2->i16[0] = v21;
    a2 = (a2 + 2);
  }

  return result;
}

int32x4_t *NativeInt32ToNativeInt24_ARM(int32x4_t *result, uint64_t a2, unsigned int a3, int a4)
{
  if ((a2 & 0xF) != 0 && a3)
  {
    v4 = a2 + 3;
    do
    {
      v5 = result->i32[0];
      result = (result + 4);
      v6 = (v5 >> (a4 - 1)) + 1;
      v7 = v6 >> 1;
      v8 = (v6 >> 31) ^ (v6 >> 1);
      if (v7 > 0)
      {
        v9 = 0x7FFFFF;
      }

      else
      {
        v9 = -8388608;
      }

      if (v8 >= 0x800000)
      {
        v10 = v9;
      }

      else
      {
        v10 = v7;
      }

      *a2 = v10;
      v11 = HIWORD(v10);
      v12 = a2 + 3;
      *(a2 + 2) = v11;
      v13 = a3 - 1;
      if ((v4 & 0xF) == 0)
      {
        break;
      }

      v4 += 3;
      a2 += 3;
      --a3;
    }

    while (a3);
  }

  else
  {
    v13 = a3;
    v12 = a2;
  }

  if (v13 >= 8)
  {
    v14 = vdupq_n_s32(-a4);
    v15 = v13 >> 3;
    do
    {
      v16 = *result;
      v17 = result[1];
      result += 2;
      v18 = vqrshlq_s32(v16, v14);
      v19 = vqrshlq_s32(v17, v14);
      *v12 = ((v18.i32[1] & 0xFFFFFF) << 24) | (v18.i32[2] << 48) | v18.i32[0] & 0xFFFFFF;
      *(v12 + 8) = v18.u8[10] | ((((v19.i32[0] & 0xFFFFFF) << 24) | (v19.u32[1] << 48) | v18.i32[3] & 0xFFFFFF) << 8);
      *(v12 + 16) = (v19.u32[3] << 40) | ((v19.i32[2] & 0xFFFFFF) << 16) | (v19.i32[1] >> 8);
      v12 += 24;
      --v15;
    }

    while (v15);
  }

  for (i = v13 & 7; i; --i)
  {
    v21 = result->i32[0];
    result = (result + 4);
    v22 = (v21 >> (a4 - 1)) + 1;
    v23 = v22 >> 1;
    v24 = (v22 >> 31) ^ (v22 >> 1);
    if (v23 > 0)
    {
      v25 = 0x7FFFFF;
    }

    else
    {
      v25 = -8388608;
    }

    if (v24 >= 0x800000)
    {
      v26 = v25;
    }

    else
    {
      v26 = v23;
    }

    *v12 = v26;
    *(v12 + 2) = BYTE2(v26);
    v12 += 3;
  }

  return result;
}

unsigned __int8 *NativeInt24ToNativeInt32_ARM(unsigned __int8 *result, uint64_t a2, unsigned int a3, char a4)
{
  v4 = 8 - a4;
  if ((result & 7) != 0 && a3)
  {
    v5 = result + 3;
    do
    {
      v6 = (*result << 8) | (result[1] << 16) | (result[2] << 24);
      result += 3;
      *a2 = v6 >> v4;
      a2 += 4;
      v7 = a3 - 1;
      if ((v5 & 7) == 0)
      {
        break;
      }

      v5 += 3;
      --a3;
    }

    while (a3);
  }

  else
  {
    v7 = a3;
  }

  if (v7 >= 8)
  {
    v8 = v7 >> 3;
    v9 = vdup_n_s32(a4);
    do
    {
      v10 = *result;
      v11 = *(result + 1);
      v12 = *(result + 2);
      result += 24;
      *a2 = vshl_u32(vmovn_s64(vshrq_n_s64(vshlq_u64(vdupq_n_s64(v10), xmmword_18F901720), 0x28uLL)), v9);
      *(a2 + 8) = ((v11 << 16) | HIWORD(v10)) << a4;
      *(a2 + 12) = vshl_u32(vmovn_s64(vshrq_n_s64(vshlq_u64(vdupq_n_s64(v11), xmmword_18F901730), 0x28uLL)), v9);
      *(a2 + 20) = ((v12 << 8) | HIBYTE(v11)) << a4;
      *(a2 + 24) = (v12 >> 8) >> 8 << a4;
      *(a2 + 28) = (v12 >> 40) << a4;
      a2 += 32;
      --v8;
    }

    while (v8);
  }

  for (i = v7 & 7; i; --i)
  {
    v14 = (*result << 8) | (result[1] << 16) | (result[2] << 24);
    result += 3;
    *a2 = v14 >> v4;
    a2 += 4;
  }

  return result;
}

int32x4_t *NativeInt32ToNativeInt32_ARM(int32x4_t *result, int32x4_t *a2, unsigned int a3, signed int a4)
{
  if ((a2 & 0xF) != 0 && a3)
  {
    v4 = a2 + 4;
    do
    {
      v5 = result->i32[0];
      result = (result + 4);
      v6 = v5 >> -a4;
      v7 = v5 << a4;
      if (a4 < 0)
      {
        v7 = v6;
      }

      a2->i32[0] = v7;
      a2 = (a2 + 4);
      v8 = a3 - 1;
      if ((v4 & 0xF) == 0)
      {
        break;
      }

      v4 += 4;
      --a3;
    }

    while (a3);
  }

  else
  {
    v8 = a3;
  }

  if (v8 >= 8)
  {
    v9 = vdupq_n_s32(a4);
    v10 = v8 >> 3;
    do
    {
      v11 = *result;
      v12 = result[1];
      result += 2;
      *a2 = vshlq_s32(v11, v9);
      a2[1] = vshlq_s32(v12, v9);
      a2 += 2;
      --v10;
    }

    while (v10);
  }

  for (i = v8 & 7; i; --i)
  {
    v14 = result->i32[0];
    result = (result + 4);
    v15 = v14 >> -a4;
    v16 = v14 << a4;
    if (a4 < 0)
    {
      v16 = v15;
    }

    a2->i32[0] = v16;
    a2 = (a2 + 4);
  }

  return result;
}

int32x4_t *Native824FixedToLowAlignedInt32_ARM(int32x4_t *result, int8x16_t *a2, unsigned int a3, int a4)
{
  v4 = a4 - 25;
  v5 = ~(-1 << a4);
  v6 = 32 - a4;
  if (a3 >= 4)
  {
    v7 = vdupq_n_s32(v4);
    v8 = vdupq_n_s32(v5);
    v9 = vdupq_n_s32(v6);
    v10 = a3 >> 2;
    v11 = vnegq_s32(v9);
    do
    {
      v12 = *result++;
      *a2++ = vandq_s8(vshlq_s32(vqshlq_s32(vqrshlq_s32(v12, v7), v9), v11), v8);
      --v10;
    }

    while (v10);
  }

  v13 = a3 & 3;
  if ((a3 & 3) != 0)
  {
    do
    {
      v14 = result->i32[0];
      result = (result + 4);
      a2->i32[0] = (vqshls_s32(vqrshls_s32(v14, v4), v6) >> v6) & v5;
      a2 = (a2 + 4);
      --v13;
    }

    while (v13);
  }

  return result;
}

int16x8_t *NativeLowAlignedInt32ToInt16_ARM(int16x8_t *result, int16x8_t *a2, unsigned int a3)
{
  if ((a2 & 0xF) != 0 && a3)
  {
    v3 = a2 + 2;
    do
    {
      v4 = result->i32[0];
      result = (result + 4);
      a2->i16[0] = v4;
      a2 = (a2 + 2);
      v5 = a3 - 1;
      if ((v3 & 0xF) == 0)
      {
        break;
      }

      v3 += 2;
      --a3;
    }

    while (a3);
  }

  else
  {
    v5 = a3;
  }

  if (v5 >= 8)
  {
    v6 = v5 >> 3;
    do
    {
      v7 = *result;
      v8 = result[1];
      result += 2;
      *a2++ = vuzp1q_s16(v7, v8);
      --v6;
    }

    while (v6);
  }

  for (i = v5 & 7; i; --i)
  {
    v10 = result->i32[0];
    result = (result + 4);
    a2->i16[0] = v10;
    a2 = (a2 + 2);
  }

  return result;
}

_OWORD *NativeInt16ToLowAlignedInt32_ARM(_OWORD *result, uint32x4_t *a2, unsigned int a3)
{
  if ((a2 & 0xF) != 0 && a3)
  {
    v3 = a2 + 4;
    do
    {
      v4 = *result;
      result = (result + 2);
      a2->i32[0] = v4;
      a2 = (a2 + 4);
      v5 = a3 - 1;
      if ((v3 & 0xF) == 0)
      {
        break;
      }

      v3 += 4;
      --a3;
    }

    while (a3);
  }

  else
  {
    v5 = a3;
  }

  if (v5 >= 0x10)
  {
    v6 = v5 >> 4;
    do
    {
      v7 = *result;
      v8 = *(result + 1);
      result += 2;
      *a2 = vmovl_u16(*v7.i8);
      a2[1] = vmovl_high_u16(v7);
      a2[2] = vmovl_u16(*v8.i8);
      a2[3] = vmovl_high_u16(v8);
      a2 += 4;
      --v6;
    }

    while (v6);
  }

  for (i = v5 & 0xF; i; --i)
  {
    v10 = *result;
    result = (result + 2);
    a2->i32[0] = v10;
    a2 = (a2 + 4);
  }

  return result;
}

const __int16 *StereoDeinterleaveNativeInt16ToScaledFloat32_ARM(const __int16 *result, float32x4_t **a2, unsigned int a3, float a4)
{
  v4 = *a2;
  f32 = a2[1];
  if (((f32 ^ *a2) & 0xF) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = (*a2 & 0xF) == 0;
    *a2;
  }

  if (v6 || a3 == 0)
  {
    v8 = a3;
  }

  else
  {
    v12 = 0;
    do
    {
      v13 = result[v12 / 2 + 1] * a4;
      v4->f32[v12 / 4] = result[v12 / 2] * a4;
      f32[v12 / 4] = v13;
      v8 = a3 - 1;
      v14 = v4 + 4 + v12;
      v12 += 4;
      if ((v14 & 0xF) == 0)
      {
        break;
      }

      --a3;
    }

    while (a3);
    f32 = (f32 + v12);
    result = (result + v12);
    v4 = (v4 + v12);
    *a2 = v4;
    a2[1] = f32;
  }

  if (v8 >= 8)
  {
    v9 = v8 >> 3;
    do
    {
      v15 = vld2q_s16(result);
      result += 16;
      *v4 = vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v15.val[0].i8)), a4);
      (*a2)[1] = vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v15.val[0])), a4);
      *a2[1] = vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v15.val[1].i8)), a4);
      a2[1][1] = vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v15.val[1])), a4);
      v4 = *a2 + 2;
      f32 = a2[1][2].f32;
      *a2 = v4;
      a2[1] = f32;
      --v9;
    }

    while (v9);
  }

  v10 = v8 & 7;
  if (v10)
  {
    do
    {
      v11 = result[1] * a4;
      v4->f32[0] = *result * a4;
      v4 = (v4 + 4);
      *f32++ = v11;
      result += 2;
      --v10;
    }

    while (v10);
    *a2 = v4;
    a2[1] = f32;
  }

  return result;
}

float32_t StereoDeinterleaveInt824ToFloat32_ARM(int *a1, float32x4_t *a2, float32x4_t *a3, unsigned int a4)
{
  if (((a3 ^ a2) & 0xF) != 0 || (a2 & 0xF) == 0 || a4 == 0)
  {
    v6 = a4;
  }

  else
  {
    v13 = 0;
    do
    {
      v14 = a1 + 2;
      v9.f32[0] = vcvts_n_f32_s32(*a1, 0x18uLL);
      v15 = vcvts_n_f32_s32(a1[1], 0x18uLL);
      a2->i32[v13] = v9.i32[0];
      a3->f32[v13] = v15;
      v6 = a4 - 1;
      v16 = a2 + 4 + v13 * 4;
      ++v13;
      if ((v16 & 0xF) == 0)
      {
        break;
      }

      a1 += 2;
      --a4;
    }

    while (a4);
    a2 = (a2 + v13 * 4);
    a3 = (a3 + v13 * 4);
    a1 = v14;
  }

  if (v6 >= 4)
  {
    v7 = v6 >> 2;
    do
    {
      v18 = vld2q_f32(a1);
      a1 += 8;
      v8 = vcvtq_n_f32_s32(v18.val[0], 0x18uLL);
      v9 = vcvtq_n_f32_s32(v18.val[1], 0x18uLL);
      *a2++ = v8;
      *a3++ = v9;
      --v7;
    }

    while (v7);
  }

  for (i = v6 & 3; i; --i)
  {
    v11 = *a1;
    v12 = a1[1];
    a1 += 2;
    v9.f32[0] = vcvts_n_f32_s32(v11, 0x18uLL);
    a2->i32[0] = v9.i32[0];
    a2 = (a2 + 4);
    a3->f32[0] = vcvts_n_f32_s32(v12, 0x18uLL);
    a3 = (a3 + 4);
  }

  return v9.f32[0];
}

float32_t StereoInterleaveFloat32ToInt824_ARM(float32x4_t *a1, float32x4_t *a2, uint64_t a3, unsigned int a4)
{
  if ((a3 & 0xF) != 0 && a4)
  {
    v4 = 0;
    v5 = a3 + 8;
    do
    {
      v6.i32[0] = vcvts_n_s32_f32(a2->f32[v4], 0x18uLL);
      v7 = a3 + 8;
      *a3 = vcvts_n_s32_f32(a1->f32[v4], 0x18uLL);
      *(a3 + 4) = v6.i32[0];
      v8 = a4 - 1;
      ++v4;
      if ((v5 & 0xF) == 0)
      {
        break;
      }

      v5 += 8;
      a3 += 8;
      --a4;
    }

    while (a4);
    a1 = (a1 + v4 * 4);
    a2 = (a2 + v4 * 4);
    a3 = v7;
  }

  else
  {
    v8 = a4;
  }

  if (v8 >= 4)
  {
    v9 = v8 >> 2;
    do
    {
      v10 = *a1++;
      v6 = v10;
      v11 = *a2++;
      v18.val[0] = vcvtq_n_s32_f32(v6, 0x18uLL);
      v18.val[1] = vcvtq_n_s32_f32(v11, 0x18uLL);
      vst2q_f32(a3, v18);
      a3 += 32;
      --v9;
    }

    while (v9);
  }

  for (i = v8 & 3; i; --i)
  {
    v13 = a1->f32[0];
    a1 = (a1 + 4);
    v14 = v13;
    v15 = a2->f32[0];
    a2 = (a2 + 4);
    v16 = vcvts_n_s32_f32(v14, 0x18uLL);
    v6.i32[0] = vcvts_n_s32_f32(v15, 0x18uLL);
    *a3 = v16;
    *(a3 + 4) = v6.i32[0];
    a3 += 8;
  }

  return v6.f32[0];
}

_OWORD *StereoInterleaveInt824ToInt16_ARM(_OWORD *result, _OWORD *a2, __int16 *a3, unsigned int a4)
{
  if ((a3 & 0xF) != 0 && a4)
  {
    v4 = 0;
    do
    {
      v5 = &a3[v4 / 2];
      v6 = *(result + v4);
      v7 = v6 >> 9;
      v8 = (v6 >> 31) ^ (v6 >> 9);
      if (v7 > 0)
      {
        v9 = 0x7FFF;
      }

      else
      {
        v9 = 0x8000;
      }

      if (v8 >= 0x8000)
      {
        v10 = v9;
      }

      else
      {
        v10 = v7;
      }

      *v5 = v10;
      v11 = *(a2 + v4);
      v12 = v11 >> 9;
      v13 = (v11 >> 31) ^ (v11 >> 9);
      if (v12 > 0)
      {
        v14 = 0x7FFF;
      }

      else
      {
        v14 = 0x8000;
      }

      if (v13 >= 0x8000)
      {
        v15 = v14;
      }

      else
      {
        v15 = v12;
      }

      v5[1] = v15;
      v16 = a4 - 1;
      v17 = a3 + 4 + v4;
      v4 += 4;
      if ((v17 & 0xF) == 0)
      {
        break;
      }

      --a4;
    }

    while (a4);
    result = (result + v4);
    a2 = (a2 + v4);
    a3 = (a3 + v4);
  }

  else
  {
    v16 = a4;
  }

  if (v16 >= 8)
  {
    v18 = v16 >> 3;
    do
    {
      v19 = *result;
      v20 = *(result + 1);
      result += 2;
      v21 = *a2;
      v22 = *(a2 + 1);
      a2 += 2;
      v33.val[0] = vqshrn_high_n_s32(vqshrn_n_s32(v19, 9uLL), v20, 9uLL);
      v33.val[1] = vqshrn_high_n_s32(vqshrn_n_s32(v21, 9uLL), v22, 9uLL);
      vst2q_s16(a3, v33);
      a3 += 16;
      --v18;
    }

    while (v18);
  }

  for (i = v16 & 7; i; --i)
  {
    v24 = *result;
    result = (result + 4);
    v25 = v24 >> 9;
    v26 = (v24 >> 31) ^ (v24 >> 9);
    if (v24 >> 9 > 0)
    {
      v27 = 0x7FFF;
    }

    else
    {
      v27 = 0x8000;
    }

    if (v26 >= 0x8000)
    {
      v28 = v27;
    }

    else
    {
      v28 = v25;
    }

    v29 = *a2;
    a2 = (a2 + 4);
    *a3 = v28;
    v30 = v29 >> 9;
    v31 = (v29 >> 31) ^ (v29 >> 9);
    if (v29 >> 9 > 0)
    {
      v32 = 0x7FFF;
    }

    else
    {
      v32 = 0x8000;
    }

    if (v31 >= 0x8000)
    {
      LOWORD(v30) = v32;
    }

    a3[1] = v30;
    a3 += 2;
  }

  return result;
}

const __int16 *StereoDeinterleaveInt16ToInt824_ARM(const __int16 *result, int32x4_t *a2, int32x4_t *a3, unsigned int a4)
{
  if ((a2 & 0xF) != 0)
  {
    v4 = 0;
    do
    {
      if (((a3 + v4) & 0xF) == 0 || a4 == 0)
      {
        break;
      }

      v6 = result[v4 / 2 + 1];
      a2->i32[v4 / 4] = result[v4 / 2] << 9;
      a3->i32[v4 / 4] = v6 << 9;
      --a4;
      LOBYTE(v6) = a2 + 4 + v4;
      v4 += 4;
    }

    while ((v6 & 0xF) != 0);
    result = (result + v4);
    a2 = (a2 + v4);
    a3 = (a3 + v4);
  }

  if (a4 >= 8)
  {
    v7 = a4 >> 3;
    do
    {
      v9 = vld2q_s16(result);
      result += 16;
      *a2 = vshll_n_s16(*v9.val[0].i8, 9uLL);
      a2[1] = vshll_high_n_s16(v9.val[0], 9uLL);
      a2 += 2;
      *a3 = vshll_n_s16(*v9.val[1].i8, 9uLL);
      a3[1] = vshll_high_n_s16(v9.val[1], 9uLL);
      a3 += 2;
      --v7;
    }

    while (v7);
  }

  v8 = a4 & 7;
  if ((a4 & 7) != 0)
  {
    do
    {
      a2->i32[0] = *result << 9;
      a2 = (a2 + 4);
      a3->i32[0] = result[1] << 9;
      a3 = (a3 + 4);
      result += 2;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint32x4_t *NativeLowAlignedInt32To824Fixed_ARM(uint32x4_t *result, int32x4_t *a2, unsigned int a3, int a4)
{
  v4 = 32 - a4;
  v5 = a3 - 12;
  if (a3 >= 0xC)
  {
    v6 = vdupq_n_s32(v4);
    v7 = result + 3;
    a3 &= 3u;
    v8 = vshrq_n_s32(vshlq_u32(*result, v6), 7uLL);
    v9 = vshlq_u32(result[1], v6);
    v10 = result[2];
    if (v5 >= 4)
    {
      v12 = v5 >> 2;
      do
      {
        *a2++ = v8;
        v13 = *v7++;
        v11 = v13;
        v8 = vshrq_n_s32(v9, 7uLL);
        v9 = vshlq_u32(v10, v6);
        v10 = v13;
        --v12;
      }

      while (v12);
    }

    else
    {
      v11 = result[2];
    }

    *a2 = v8;
    a2[1] = vshrq_n_s32(v9, 7uLL);
    a2[2] = vshrq_n_s32(vshlq_u32(v11, v6), 7uLL);
    a2 += 3;
    result = v7;
  }

  for (; a3; --a3)
  {
    v14 = result->i32[0];
    result = (result + 4);
    a2->i32[0] = v14 << v4 >> 7;
    a2 = (a2 + 4);
  }

  return result;
}

int32x4_t *NativeInt32ToFloat32Scaled_ARM(int32x4_t *result, float32x4_t *a2, int a3, float a4)
{
  if (a3 >= 16)
  {
    v4 = vcvtq_f32_s32(result[1]);
    v5 = vmulq_n_f32(vcvtq_f32_s32(*result), a4);
    v6 = result[2];
    result += 3;
    v7 = a3 - 12;
    do
    {
      v8 = a2;
      *a2++ = v5;
      v5 = vmulq_n_f32(v4, a4);
      v4 = vcvtq_f32_s32(v6);
      v9 = *result++;
      v6 = v9;
      v7 -= 4;
    }

    while (v7 > 3);
    v10 = a3 & 3;
    *a2 = v5;
    a2[1] = vmulq_n_f32(v4, a4);
    a2[2] = vmulq_n_f32(vcvtq_f32_s32(v6), a4);
    a2 = v8 + 4;
    if ((a3 & 3) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (a3 < 4)
  {
    v10 = a3;
    if (!a3)
    {
      return result;
    }

    goto LABEL_9;
  }

  do
  {
    v11 = *result++;
    *a2++ = vmulq_n_f32(vcvtq_f32_s32(v11), a4);
    v10 = a3 - 4;
    v12 = a3 > 7;
    a3 -= 4;
  }

  while (v12);
  for (; v10; --v10)
  {
LABEL_9:
    v13 = result->i32[0];
    result = (result + 4);
    a2->f32[0] = llroundf(v13) * a4;
    a2 = (a2 + 4);
  }

  return result;
}

float32x4_t *Float32ToNativeInt32Scaled_ARM(float32x4_t *result, int32x4_t *a2, unsigned int a3, float a4)
{
  if ((a2 & 0xF) != 0 && a3)
  {
    v4 = a2 + 4;
    do
    {
      v5 = result->f32[0];
      result = (result + 4);
      a2->i32[0] = llroundf(v5 * a4);
      a2 = (a2 + 4);
      v6 = a3 - 1;
      if ((v4 & 0xF) == 0)
      {
        break;
      }

      v4 += 4;
      --a3;
    }

    while (a3);
  }

  else
  {
    v6 = a3;
  }

  if (v6 >= 8)
  {
    v7 = v6 >> 3;
    do
    {
      v8 = *result;
      v9 = result[1];
      result += 2;
      *a2 = vcvtaq_s32_f32(vmulq_n_f32(v8, a4));
      a2[1] = vcvtaq_s32_f32(vmulq_n_f32(v9, a4));
      a2 += 2;
      --v7;
    }

    while (v7);
  }

  for (i = v6 & 7; i; --i)
  {
    v11 = result->f32[0];
    result = (result + 4);
    a2->i32[0] = llroundf(v11 * a4);
    a2 = (a2 + 4);
  }

  return result;
}

float32x4_t *Float32ToNativeLowAlignedInt32_ARM(float32x4_t *result, uint32x4_t *a2, unsigned int a3, int a4, double a5)
{
  LODWORD(a5) = 1065353216 - (a4 << 23);
  v5 = vdupq_lane_s32(*&a5, 0);
  v6 = vdupq_n_s32(a4 - 32);
  if (a3 < 0x18)
  {
    if (a3 >= 4)
    {
      do
      {
        v19 = *result++;
        v20 = vcvtq_n_s32_f32(vaddq_f32(v5, v19), 0x1FuLL);
        *a2++ = vshlq_u32(vqaddq_s32(v20, vcltzq_s32(v20)), v6);
        a3 -= 4;
      }

      while (a3 > 3);
    }
  }

  else
  {
    a3 -= 20;
    v7 = vcvtq_n_s32_f32(vaddq_f32(v5, *result), 0x1FuLL);
    v8 = vcvtq_n_s32_f32(vaddq_f32(v5, result[1]), 0x1FuLL);
    v9 = vshlq_u32(vqaddq_s32(v7, vcltzq_s32(v7)), v6);
    v10 = vqaddq_s32(v8, vcltzq_s32(v8));
    v11 = vcvtq_n_s32_f32(vaddq_f32(v5, result[2]), 0x1FuLL);
    v12 = vaddq_f32(v5, result[3]);
    v13 = result[4];
    result += 5;
    v14 = vcltzq_s32(v11);
    do
    {
      v15 = a2;
      *a2++ = v9;
      v9 = vshlq_u32(v10, v6);
      v10 = vqaddq_s32(v11, v14);
      v11 = vcvtq_n_s32_f32(v12, 0x1FuLL);
      v12 = vaddq_f32(v5, v13);
      v16 = *result++;
      v13 = v16;
      v14 = vcltzq_s32(v11);
      a3 -= 4;
    }

    while (a3 > 3);
    v17 = vcvtq_n_s32_f32(v12, 0x1FuLL);
    *a2 = v9;
    a2[1] = vshlq_u32(v10, v6);
    v18 = vcvtq_n_s32_f32(vaddq_f32(v5, v13), 0x1FuLL);
    a2[2] = vshlq_u32(vqaddq_s32(v11, v14), v6);
    a2[3] = vshlq_u32(vqaddq_s32(v17, vcltzq_s32(v17)), v6);
    a2[4] = vshlq_u32(vqaddq_s32(v18, vcltzq_s32(v18)), v6);
    a2 = v15 + 6;
  }

  for (; a3; --a3)
  {
    v21 = result->f32[0];
    result = (result + 4);
    v22 = vcvts_n_s32_f32(v21 + *&a5, 0x1FuLL);
    a2->i32[0] = (v22 - (v22 > 0x80000000)) >> (32 - a4);
    a2 = (a2 + 4);
  }

  return result;
}

float NativeLowAlignedInt32ToFloat32_ARM(uint32x4_t *a1, uint64_t a2, unsigned int a3, int a4)
{
  v4 = vdupq_n_s32(32 - a4);
  if (a3 < 0x10)
  {
    if (a3 >= 4)
    {
      do
      {
        v10 = *a1++;
        *a2 = vcvtq_n_f32_s32(vshlq_u32(v10, v4), 0x1FuLL);
        a2 += 16;
        a3 -= 4;
      }

      while (a3 > 3);
    }
  }

  else
  {
    a3 -= 12;
    v5 = vcvtq_n_f32_s32(vshlq_u32(*a1, v4), 0x1FuLL);
    v6 = vshlq_u32(a1[1], v4);
    v7 = a1[2];
    a1 += 3;
    do
    {
      v8 = a2;
      *a2 = v5;
      a2 += 16;
      v5 = vcvtq_n_f32_s32(v6, 0x1FuLL);
      v6 = vshlq_u32(v7, v4);
      v9 = *a1++;
      v7 = v9;
      a3 -= 4;
    }

    while (a3 > 3);
    *a2 = v5;
    *(a2 + 16) = vcvtq_n_f32_s32(v6, 0x1FuLL);
    v4 = vcvtq_n_f32_s32(vshlq_u32(v7, v4), 0x1FuLL);
    *(a2 + 32) = v4;
    a2 = v8 + 64;
  }

  for (; a3; --a3)
  {
    v11 = a1->i32[0];
    a1 = (a1 + 4);
    *v4.i32 = vcvts_n_f32_s32(v11 << (32 - a4), 0x1FuLL);
    *a2 = v4.i32[0];
    a2 += 4;
  }

  return *v4.i32;
}

float32x4_t *MultiChannelInterleaveFloat32ToNativeLowAlignedInt32_ARM(float32x4_t *result, uint32x4_t *a2, unsigned int a3, int a4, double a5)
{
  v6 = a3;
  v7 = a2;
  v8 = result;
  v9 = result->u32[0];
  if (v9 == 1)
  {
    result = Float32ToNativeLowAlignedInt32_ARM(result[1].i64[0], a2, a3, a4, a5);
  }

  v10 = &v8->i64[1];
  LODWORD(a5) = 1065353216 - (a4 << 23);
  v11 = vdupq_lane_s32(*&a5, 0);
  v12 = vdupq_n_s32(a4 - 32);
  if (v9 < 4)
  {
    i = v9;
  }

  else
  {
    v13 = v9;
    for (i = v9; i > 3; i -= 4)
    {
      v15 = v10[1];
      v16 = v10[3];
      v17 = v7;
      v18 = v10[5];
      v19 = v6;
      result = v7;
      v20 = v10[7];
      if (v6 >= 4)
      {
        do
        {
          v21 = *v15++;
          v22 = v21;
          v23 = *v16++;
          v24 = v23;
          v25 = *v18++;
          v26 = v25;
          v27 = *v20++;
          v28 = vcvtq_n_s32_f32(vaddq_f32(v11, v22), 0x1FuLL);
          v29 = vcvtq_n_s32_f32(vaddq_f32(v11, v24), 0x1FuLL);
          v30 = vcvtq_n_s32_f32(vaddq_f32(v11, v26), 0x1FuLL);
          v31 = vcvtq_n_s32_f32(vaddq_f32(v11, v27), 0x1FuLL);
          v32 = vshlq_u32(vqaddq_s32(v28, vcltzq_s32(v28)), v12);
          v33 = vshlq_u32(vqaddq_s32(v29, vcltzq_s32(v29)), v12);
          v34 = vshlq_u32(vqaddq_s32(v30, vcltzq_s32(v30)), v12);
          v35 = vshlq_u32(vqaddq_s32(v31, vcltzq_s32(v31)), v12);
          result->i32[0] = v32.i32[0];
          result->i32[1] = v33.i32[0];
          result->i32[2] = v34.i32[0];
          result->i32[3] = v35.i32[0];
          v17 = &result[v9];
          v36 = (result + v13 * 4);
          *v36 = v32.i32[1];
          v36[1] = v33.i32[1];
          v36[2] = v34.i32[1];
          v36[3] = v35.i32[1];
          v37 = &v36[v13];
          *v37 = v32.i32[2];
          v37[1] = v33.i32[2];
          v37[2] = v34.i32[2];
          v37[3] = v35.i32[2];
          v38 = &v37[v13];
          *v38 = v32.i32[3];
          v38[1] = v33.i32[3];
          v38[2] = v34.i32[3];
          v38[3] = v35.i32[3];
          result = &v38[v13];
          v19 -= 4;
        }

        while (v19 > 3);
      }

      for (; v19; --v19)
      {
        v39 = v15->i32[0];
        v15 = (v15 + 4);
        v40.i32[0] = v39;
        v40.i32[1] = v16->i32[0];
        v16 = (v16 + 4);
        v40.i32[2] = v18->i32[0];
        v18 = (v18 + 4);
        v40.i32[3] = v20->i32[0];
        v20 = (v20 + 4);
        v41 = vcvtq_n_s32_f32(vaddq_f32(v11, v40), 0x1FuLL);
        *v17 = vqaddq_s32(v41, vcltzq_s32(v41));
        v17 = (v17 + v13 * 4);
      }

      v10 += 8;
      ++v7;
    }
  }

  if (i > 1)
  {
    v42 = v10[1];
    v43 = v10[3];
    v44 = v9;
    if (v6 < 4)
    {
      v56 = v7;
      j = v6;
      if (!v6)
      {
LABEL_21:
        i -= 2;
        v10 += 4;
        v7 = (v7 + 8);
        goto LABEL_22;
      }
    }

    else
    {
      v45 = v7;
      for (j = v6; j > 3; j -= 4)
      {
        v47 = *v42++;
        v48 = v47;
        v49 = *v43++;
        v50 = vcvtq_n_s32_f32(vaddq_f32(v11, v48), 0x1FuLL);
        v51 = vcvtq_n_s32_f32(vaddq_f32(v11, v49), 0x1FuLL);
        v52 = vshlq_u32(vqaddq_s32(v50, vcltzq_s32(v50)), v12);
        v53 = vshlq_u32(vqaddq_s32(v51, vcltzq_s32(v51)), v12);
        v54 = v45;
        v55 = &v45->i32[v44];
        v54->i32[0] = v52.i32[0];
        v54->i32[1] = v53.i32[0];
        v56 = &v54[v9];
        *v55 = v52.i32[1];
        v55[1] = v53.i32[1];
        v57 = &v55[v44];
        *v57 = v52.i32[2];
        v57[1] = v53.i32[2];
        v58 = &v57[v44];
        *v58 = v52.i32[3];
        v58[1] = v53.i32[3];
        v45 = &v58[v44];
      }

      if (!j)
      {
        goto LABEL_21;
      }
    }

    v59 = vdup_lane_s32(*&a5, 0);
    do
    {
      v60 = v42->i32[0];
      v42 = (v42 + 4);
      v61.i32[0] = v60;
      v61.i32[1] = v43->i32[0];
      v43 = (v43 + 4);
      v62 = vcvt_n_s32_f32(vadd_f32(v59, v61), 0x1FuLL);
      *v56 = vqadd_s32(v62, vcltz_s32(v62));
      v56 = (v56 + v44 * 4);
      --j;
    }

    while (j);
    goto LABEL_21;
  }

LABEL_22:
  if (i)
  {
    v63 = v10[1];
    v64 = v9;
    if (v6 >= 4)
    {
      do
      {
        v65 = v7;
        v66 = *v63++;
        v67 = vcvtq_n_s32_f32(vaddq_f32(v11, v66), 0x1FuLL);
        v68 = vshlq_u32(vqaddq_s32(v67, vcltzq_s32(v67)), v12);
        v7->i32[0] = v68.i32[0];
        v7->i32[v9] = v68.i32[1];
        v69 = &v7->i32[v64 + v64];
        *v69 = v68.i32[2];
        v70 = &v69[v64];
        *v70 = v68.i32[3];
        v6 -= 4;
        v7 = &v70[v64];
      }

      while (v6 > 3);
      v7 = &v65[v9];
    }

    for (; v6; --v6)
    {
      v71 = v63->f32[0];
      v63 = (v63 + 4);
      v72 = vcvts_n_s32_f32(v71 + *&a5, 0x1FuLL);
      if (v72 == 0x80000000)
      {
        v73 = 0x80000000;
      }

      else
      {
        v73 = v72 + (v72 >> 31);
      }

      v7->i32[0] = v73 >> (32 - a4);
      v7 = (v7 + v64 * 4);
    }
  }

  return result;
}
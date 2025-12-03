@interface ATServerDelegatePriv
- (ATServerDelegatePriv)init;
- (BOOL)dolbyDigitalEncoderAvailable;
- (BOOL)waitForConclaveLaunch;
- (id).cxx_construct;
- (id)setIOPropertiesForSession:(unsigned int)session values:(id)values;
- (int)refreshMicrophoneInjectionPermissions:(id *)permissions;
- (int)refreshRecordPermissions:(id *)permissions;
- (void)conclaveLaunched;
@end

@implementation ATServerDelegatePriv

- (id).cxx_construct
{
  *(self + 1) = 850045863;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 8) = 0;
  *(self + 9) = 1018212795;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 14) = 0;
  return self;
}

- (BOOL)waitForConclaveLaunch
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = MGGetBoolAnswer();
  if (!v4)
  {
    goto LABEL_20;
  }

  v14.__m_ = (self + 8);
  v2 = 1;
  v14.__owns_ = 1;
  std::mutex::lock((self + 8));
  if ((*(self + 120) & 1) == 0)
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "ATServerDelegatePriv.mm";
      v17 = 1024;
      v18 = 232;
      _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d waiting for conclave launch", buf, 0x12u);
    }

    v7.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v8.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v8.__d_.__rep_)
    {
      v9.__d_.__rep_ = 10000000000;
      goto LABEL_13;
    }

    if (v8.__d_.__rep_ < 1)
    {
      if (v8.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v9.__d_.__rep_ = 0x80000002540BE400;
        goto LABEL_13;
      }
    }

    else if (v8.__d_.__rep_ >= 0x20C49BA54ABD78)
    {
      v9.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_13;
    }

    v9.__d_.__rep_ = 1000 * v8.__d_.__rep_ + 10000000000;
LABEL_13:
    std::condition_variable::__do_timed_wait((self + 72), &v14, v9);
    if (std::chrono::steady_clock::now().__d_.__rep_ - v7.__d_.__rep_ <= 0x2540BE3FFLL)
    {
      v2 = 1;
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v16 = "ATServerDelegatePriv.mm";
        v17 = 1024;
        v18 = 236;
        _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d waiting for conclave launch timed out", buf, 0x12u);
      }

      v2 = 0;
    }
  }

  if (v14.__owns_)
  {
    std::mutex::unlock(v14.__m_);
  }

LABEL_20:
  v12 = *MEMORY[0x1E69E9840];
  return v2 & 1 | ((v4 & 1) == 0);
}

- (void)conclaveLaunched
{
  v10 = *MEMORY[0x1E69E9840];
  if (MGGetBoolAnswer())
  {
    std::mutex::lock((self + 8));
    *(self + 120) = 1;
    std::mutex::unlock((self + 8));
    std::condition_variable::notify_all((self + 72));
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "ATServerDelegatePriv.mm";
      v8 = 1024;
      v9 = 218;
      _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d conclave launched", &v6, 0x12u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)dolbyDigitalEncoderAvailable
{
  v19 = *MEMORY[0x1E69E9840];
  outPropertyDataSize = 0;
  inSpecifier = 1633889587;
  PropertyInfo = AudioFormatGetPropertyInfo(0x6176656Eu, 4u, &inSpecifier, &outPropertyDataSize);
  if (PropertyInfo)
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v14 = "ATServerDelegatePriv.mm";
      v15 = 1024;
      v16 = 145;
      v17 = 1024;
      v18 = PropertyInfo;
      _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d AudioFormatGetPropertyInfo kAudioFormatProperty_Encoders error %d", buf, 0x18u);
    }

LABEL_11:

    goto LABEL_12;
  }

  if (outPropertyDataSize >= 0xC)
  {
    operator new();
  }

  Property = AudioFormatGetProperty(0x6176656Eu, 4u, &inSpecifier, &outPropertyDataSize, 0);
  v6 = Property;
  if (Property)
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v14 = "ATServerDelegatePriv.mm";
      v15 = 1024;
      v16 = 156;
      v17 = 1024;
      v18 = v6;
      _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d AudioFormatGetProperty kAudioFormatProperty_Encoders error %d", buf, 0x18u);
    }

    goto LABEL_11;
  }

LABEL_12:
  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)setIOPropertiesForSession:(unsigned int)session values:(id)values
{
  v36 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  if (gAQMELogScope)
  {
    v5 = *gAQMELogScope;
    if (!*gAQMELogScope)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v29 = "AudioToolboxServers.mm";
    v30 = 1024;
    v31 = 864;
    v32 = 1024;
    sessionCopy = session;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioToolboxServerSetIOPropertiesForSession; session id: 0x%x", buf, 0x18u);
  }

LABEL_7:
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = valuesCopy;
  keyEnumerator = [v7 keyEnumerator];
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    v11 = *MEMORY[0x1E698D9C8];
    *&v10 = 136315906;
    v26 = v10;
    while (![nextObject isEqualToString:v11])
    {
      [v6 setObject:&unk_1F37D4168 forKeyedSubscript:nextObject];
LABEL_37:
      nextObject = [keyEnumerator nextObject];
      if (!nextObject)
      {
        goto LABEL_40;
      }
    }

    v12 = gAQME_TelephonyClientSession;
    if (gAQME_TelephonyClientSession || (v12 = gAQME_VPIOClientSession) != 0)
    {
      v13 = AQMESession::sessionID(v12);
    }

    else
    {
      v13 = 0;
    }

    if (v13 != session)
    {
      if (gAQMELogScope)
      {
        v14 = *gAQMELogScope;
        if (!*gAQMELogScope)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v26;
        v29 = "AudioToolboxServers.mm";
        v30 = 1024;
        v31 = 881;
        v32 = 1024;
        sessionCopy = v13;
        v34 = 1024;
        sessionCopy2 = session;
        _os_log_impl(&dword_1B9A08000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioToolboxServerSetIOPropertiesForSession; gAQME's call session=0x%x != inSessionID=0x%x", buf, 0x1Eu);
      }
    }

LABEL_21:
    v15 = [v7 objectForKey:{nextObject, v26}];
    if (v15)
    {
      v15 = CFRetain(v15);
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = AQIONodeManager::systemMixEngine(v15);
    v18 = *(*v17 + 32);
    os_unfair_recursive_lock_lock_with_options();
    buf[0] = 0;
    for (i = v17[1]; ; ++i)
    {
      if (i == v17[2])
      {
        v21 = 4294956433;
        goto LABEL_30;
      }

      v20 = (*(**i + 160))(*i, v16, buf);
      if (buf[0])
      {
        break;
      }
    }

    v21 = v20;
LABEL_30:
    os_unfair_recursive_lock_unlock();
    if (gAQMELogScope)
    {
      v22 = *gAQMELogScope;
      if (!*gAQMELogScope)
      {
LABEL_36:
        [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v21), nextObject}];
        goto LABEL_37;
      }
    }

    else
    {
      v22 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v29 = "AudioToolboxServers.mm";
      v30 = 1024;
      v31 = 887;
      v32 = 1024;
      sessionCopy = v21;
      _os_log_impl(&dword_1B9A08000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioToolboxServerSetIOPropertiesForSession; set call translation properties. status: %i", buf, 0x18u);
    }

    goto LABEL_36;
  }

LABEL_40:
  if (v6)
  {
    v23 = CFRetain(v6);
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (int)refreshMicrophoneInjectionPermissions:(id *)permissions
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = *permissions;
  *atoken.val = *permissions->var0;
  *&atoken.val[4] = *&v14.val[4];
  v3 = audit_token_to_pid(&atoken);
  v4 = v3;
  if (gAQMELogScope)
  {
    v5 = *gAQMELogScope;
    if (!*gAQMELogScope)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
  }

  v3 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    atoken.val[0] = 136315650;
    *&atoken.val[1] = "AudioToolboxServers.mm";
    LOWORD(atoken.val[3]) = 1024;
    *(&atoken.val[3] + 2) = 820;
    HIWORD(atoken.val[4]) = 1024;
    atoken.val[5] = v4;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d AudioToolboxServerRefreshMicrophoneInjectionPermissions for pid %d", &atoken, 0x18u);
  }

LABEL_7:
  v6 = AQIONodeManager::systemMixEngine(v3);
  v7 = *(*v6 + 32);
  os_unfair_recursive_lock_lock_with_options();
  v8 = v6[7];
  for (i = v6[8]; v8 != i; v8 += 2)
  {
    v10 = *v8;
    v11 = v8[1];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    atoken = v14;
    (*(*v10 + 152))(v10, &atoken);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  os_unfair_recursive_lock_unlock();
  v12 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int)refreshRecordPermissions:(id *)permissions
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = *&permissions->var0[4];
  v30 = *permissions->var0;
  v31 = v3;
  v4 = *&permissions->var0[4];
  *&atoken.mProcessID = *permissions->var0;
  *&atoken.mSubsessionRef.mCFObject = v4;
  v5 = audit_token_to_pid(&atoken);
  v6 = v5;
  if (gAQMELogScope)
  {
    v7 = *gAQMELogScope;
    if (!*gAQMELogScope)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
  }

  v5 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    atoken.mProcessID = 136315650;
    *&atoken.mSessionID = "AudioToolboxServers.mm";
    *&atoken.mSourceSessionID.__engaged_ = 1024;
    *(&atoken.mSourceSessionID.__engaged_ + 2) = 460;
    WORD1(atoken.mSubsessionRef.mCFObject) = 1024;
    HIDWORD(atoken.mSubsessionRef.mCFObject) = v6;
    _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d AudioToolboxServerRefreshRecordPermissions for pid %d", &atoken, 0x18u);
  }

LABEL_7:
  v8 = AQ::Server::global(v5);
  v20 = v30;
  v21 = v31;
  {
    CASIsDarwinOS(void)::global = os_variant_is_darwinos();
  }

  if ((CASIsDarwinOS(void)::global & 1) == 0)
  {
    *&atoken.mProcessID = v20;
    *&atoken.mSubsessionRef.mCFObject = v21;
    v9 = audit_token_to_pid(&atoken);
    if (gAQMELogScope)
    {
      v10 = *gAQMELogScope;
      if (!*gAQMELogScope)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      atoken.mProcessID = 136315650;
      *&atoken.mSessionID = "AQ_Server.cpp";
      *&atoken.mSourceSessionID.__engaged_ = 1024;
      *(&atoken.mSourceSessionID.__engaged_ + 2) = 176;
      WORD1(atoken.mSubsessionRef.mCFObject) = 1024;
      HIDWORD(atoken.mSubsessionRef.mCFObject) = v9;
      _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_INFO, "%25s:%-5d AQServer::RefreshRecordPermissionsForClients (pid = %d)", &atoken, 0x18u);
    }

LABEL_15:
    {
      CASIsDarwinOS(void)::global = os_variant_is_darwinos();
    }

    if (CASIsDarwinOS(void)::global != 1)
    {
      if (sSessionServer)
      {
        v11 = AudioSessionServerInstance();
        [v11 getSessionIDsForToken:&v20];

        v12 = v24;
LABEL_23:
        v16 = *(&v12 + 1);
        v15 = v12;
        if (v12 != *(&v12 + 1))
        {
          do
          {
            AQMESession::AQMESession(&atoken, *v15, 0);
            v22 = &v20;
            v23[0] = caulk::function_ref<void ()(QueueAccessor &)>::functor_invoker<AQ::Server::Base::RefreshRecordPermissionsForClients(audit_token_t)::$_0>;
            v23[1] = &v22;
            v26[0] = &atoken;
            v26[1] = v23;
            v27[0] = caulk::function_ref<void ()(QueueAccessor &)>::functor_invoker<AQ::Server::Base::forEachQueueInSession(AQMESession const&,caulk::function_ref<void ()(QueueAccessor &)> const&)::$_0>;
            v27[1] = v26;
            v28 = v27;
            v29[0] = caulk::function_ref<void ()>::functor_invoker<AQ::Server::Base::forEachQueue(BOOL,caulk::function_ref<void ()(QueueAccessor &)> const&)::$_0>;
            v29[1] = &v28;
            (*(*v8 + 40))(v8, 0, v29);
            if (v34 == 1 && cf)
            {
              CFRelease(cf);
            }

            if (*(&atoken.mDescription.__rep_.__l + 23) < 0)
            {
              operator delete(atoken.mDescription.__rep_.__l.__data_);
            }

            if (atoken.mSubsessionRef.mCFObject)
            {
              CFRelease(atoken.mSubsessionRef.mCFObject);
            }

            ++v15;
          }

          while (v15 != v16);
          v15 = v24;
        }

        if (v15)
        {
          *(&v24 + 1) = v15;
          operator delete(v15);
        }

        goto LABEL_35;
      }

      v13 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        atoken.mProcessID = 136315394;
        *&atoken.mSessionID = "AudioSessionServerImp.mm";
        *&atoken.mSourceSessionID.__engaged_ = 1024;
        *(&atoken.mSourceSessionID.__engaged_ + 2) = 1149;
        _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d AudioSessionServer has not been initialized", &atoken, 0x12u);
      }
    }

    v25 = 0;
    v12 = 0uLL;
    v24 = 0u;
    goto LABEL_23;
  }

LABEL_35:
  v17 = CADeprecated::TSingleton<RemoteIOServer>::instance();
  *&atoken.mProcessID = v30;
  *&atoken.mSubsessionRef.mCFObject = v31;
  (*(*v17 + 24))(v17, &atoken);
  v18 = *MEMORY[0x1E69E9840];
  return 0;
}

- (ATServerDelegatePriv)init
{
  v3.receiver = self;
  v3.super_class = ATServerDelegatePriv;
  result = [(ATServerDelegatePriv *)&v3 init];
  if (result)
  {
    *(result + 120) = 0;
  }

  return result;
}

@end
@interface ATAudioSessionClientImpl
- (ATAudioSessionClientImpl)initWithSession:(id)session;
- (ATAudioSessionClientImpl)initWithStrongSession:(id)session;
- (AVAudioSession)avas;
- (BOOL)isValid;
- (id).cxx_construct;
- (int)AudioSessionGetPropertySizeImpl:(unsigned int)impl size:(unsigned int *)size;
- (int)AudioSessionSetActiveImpl:(unsigned __int8)impl flags:(unsigned int)flags;
- (int)resetClientConfiguration;
- (int)setClientConfiguration:(__CFRunLoop *)configuration runLoopMode:(__CFString *)mode listenerProc:(void *)proc userData:(void *)data;
- (void)addNSNotificationListenerFor:(id)for session:(id)session block:(id)block;
- (void)addNSNotificationListenerFor:(id)for session:(id)session selector:(SEL)selector;
- (void)callPropertyListeners:(unsigned int)listeners data:(id)data;
- (void)handleInterruption:(id)interruption;
- (void)handleRouteChange:(id)change;
- (void)handleServerDeath:(id)death;
- (void)handleServerReset:(id)reset;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation ATAudioSessionClientImpl

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 4) = 0;
  *(self + 5) = self + 48;
  *(self + 9) = 0;
  *(self + 7) = 0;
  *(self + 8) = self + 72;
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 10) = 0;
  return self;
}

- (void)callPropertyListeners:(unsigned int)listeners data:(id)data
{
  v21 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (!self->_clientRunLoop.mCFObject || !self->_clientRunLoopMode.mObject.mCFObject)
  {
    if (kAudioSessionClientLogSubsystem)
    {
      v9 = *kAudioSessionClientLogSubsystem;
      if (!v9)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *location = 136315394;
      *&location[4] = "ATAudioSessionClientImpl.mm";
      v19 = 1024;
      v20 = 702;
      _os_log_impl(&dword_1B9A08000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to call property listener: Either clientRunLoop or clientRunLoopMode is invalid", location, 0x12u);
    }

    goto LABEL_11;
  }

  if (!self->_propertyListeners.__ptr_)
  {
    if (kAudioSessionClientLogSubsystem)
    {
      v9 = *kAudioSessionClientLogSubsystem;
      if (!v9)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *location = 136315394;
      *&location[4] = "ATAudioSessionClientImpl.mm";
      v19 = 1024;
      v20 = 708;
      _os_log_impl(&dword_1B9A08000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: Failed: 'propertyListener' is invalid", location, 0x12u);
    }

LABEL_11:

    goto LABEL_12;
  }

  objc_initWeak(location, self);
  mCFObject = self->_clientRunLoop.mCFObject;
  v8 = self->_clientRunLoopMode.mObject.mCFObject;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__ATAudioSessionClientImpl_callPropertyListeners_data___block_invoke;
  v13[3] = &unk_1E7ECDEE8;
  objc_copyWeak(&v16, location);
  listenersCopy = listeners;
  v14 = dataCopy;
  selfCopy = self;
  CFRunLoopPerformBlock(mCFObject, v8, v13);
  CFRunLoopWakeUp(self->_clientRunLoop.mCFObject);

  objc_destroyWeak(&v16);
  objc_destroyWeak(location);
LABEL_12:

  v11 = *MEMORY[0x1E69E9840];
}

void __55__ATAudioSessionClientImpl_callPropertyListeners_data___block_invoke(uint64_t a1)
{
  v18[3] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_17;
  }

  v4 = *(a1 + 56);
  if (v4 <= 1684628835)
  {
    if (v4 > 1667788642)
    {
      if (v4 != 1667788643)
      {
        if (v4 != 1667788662)
        {
          goto LABEL_17;
        }

        goto LABEL_12;
      }
    }

    else if (v4 != 1634296182)
    {
      v5 = 1667787107;
      goto LABEL_15;
    }

LABEL_16:
    v16 = [*(a1 + 32) unsignedIntValue];
    AudioSessionPropertyListeners::CallPropertyListeners(v3[4], *(a1 + 56), 4, &v16);
    goto LABEL_17;
  }

  if (v4 <= 1768387426)
  {
    if (v4 == 1684628836)
    {
      AudioSessionPropertyListeners::CallPropertyListeners(WeakRetained[4], 1684628836, 4, 0);
      goto LABEL_17;
    }

    v5 = 1768382838;
    goto LABEL_15;
  }

  if (v4 == 1768387427)
  {
LABEL_12:
    [*(a1 + 32) floatValue];
    v16 = v6;
    AudioSessionPropertyListeners::CallPropertyListeners(v3[4], *(a1 + 56), 4, &v16);
    goto LABEL_17;
  }

  if (v4 == 1919902568)
  {
    v8 = objc_loadWeakRetained((*(a1 + 40) + 8));
    if (v8)
    {
      v9 = v8;
      v10 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E698D6D8]];
      v11 = [ATAudioSessionUtils getRouteDescriptionFromAVASRouteDescription:v10];

      v12 = [v9 currentRoute];
      v13 = [ATAudioSessionUtils getRouteDescriptionFromAVASRouteDescription:v12];

      v17[0] = @"OutputDeviceDidChange_Reason";
      v14 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E698D6E0]];
      v18[0] = v14;
      v18[1] = v11;
      v17[1] = @"ActiveAudioRouteDidChange_OldDetailedRoute";
      v17[2] = @"ActiveAudioRouteDidChange_NewDetailedRoute";
      v18[2] = v13;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];

      AudioSessionPropertyListeners::CallPropertyListeners(v3[4], *(a1 + 56), 8, v15);
    }

    goto LABEL_17;
  }

  v5 = 1768846450;
LABEL_15:
  if (v4 == v5)
  {
    goto LABEL_16;
  }

LABEL_17:

  v7 = *MEMORY[0x1E69E9840];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  WeakRetained = objc_loadWeakRetained(&self->_weakSession);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v13 = [ATAudioSessionUtils getAudioSessionProperty:pathCopy];
    v14 = [changeCopy objectForKey:*MEMORY[0x1E696A4F0]];
    [(ATAudioSessionClientImpl *)self callPropertyListeners:v13 data:v14];
  }
}

- (void)handleServerReset:(id)reset
{
  v11 = *MEMORY[0x1E69E9840];
  resetCopy = reset;
  if (kAudioSessionClientLogSubsystem)
  {
    v4 = *kAudioSessionClientLogSubsystem;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "ATAudioSessionClientImpl.mm";
    v9 = 1024;
    v10 = 683;
    _os_log_impl(&dword_1B9A08000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Server reset notification received", &v7, 0x12u);
  }

LABEL_8:
  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleServerDeath:(id)death
{
  v12 = *MEMORY[0x1E69E9840];
  deathCopy = death;
  if (kAudioSessionClientLogSubsystem)
  {
    v5 = *kAudioSessionClientLogSubsystem;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "ATAudioSessionClientImpl.mm";
    v10 = 1024;
    v11 = 675;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Server death notification received", &v8, 0x12u);
  }

LABEL_8:
  [(ATAudioSessionClientImpl *)self callPropertyListeners:1684628836 data:0];
  [(ATAudioSessionClientImpl *)self resetClientConfiguration];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleRouteChange:(id)change
{
  v24 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if (kAudioSessionClientLogSubsystem)
  {
    v5 = *kAudioSessionClientLogSubsystem;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  v7 = v5;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    userInfo = [changeCopy userInfo];
    v18 = 136315650;
    v19 = "ATAudioSessionClientImpl.mm";
    v20 = 1024;
    v21 = 649;
    v22 = 2112;
    v23 = userInfo;
    _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Route change received %@", &v18, 0x1Cu);
  }

LABEL_8:
  if (changeCopy)
  {
    userInfo2 = [changeCopy userInfo];
    v10 = userInfo2;
    if (!userInfo2)
    {
      if (kAudioSessionClientLogSubsystem)
      {
        v14 = *kAudioSessionClientLogSubsystem;
        if (!v14)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
        v15 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v18 = 136315394;
        v19 = "ATAudioSessionClientImpl.mm";
        v20 = 1024;
        v21 = 660;
        _os_log_impl(&dword_1B9A08000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to post route change:Invalid notification info", &v18, 0x12u);
      }

      goto LABEL_26;
    }

    v11 = [userInfo2 objectForKey:*MEMORY[0x1E698D6E0]];
    v12 = v11 == 0;

    if (v12)
    {
      if (kAudioSessionClientLogSubsystem)
      {
        v13 = *kAudioSessionClientLogSubsystem;
        if (!v13)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v16 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v18 = 136315394;
        v19 = "ATAudioSessionClientImpl.mm";
        v20 = 1024;
        v21 = 666;
        _os_log_impl(&dword_1B9A08000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d nil route change reason", &v18, 0x12u);
      }
    }

LABEL_25:
    [(ATAudioSessionClientImpl *)self callPropertyListeners:1919902568 data:v10];
LABEL_26:
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)handleInterruption:(id)interruption
{
  v32 = *MEMORY[0x1E69E9840];
  interruptionCopy = interruption;
  if (kAudioSessionClientLogSubsystem)
  {
    v5 = *kAudioSessionClientLogSubsystem;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  v7 = v5;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    userInfo = [interruptionCopy userInfo];
    *buf = 136315650;
    v27 = "ATAudioSessionClientImpl.mm";
    v28 = 1024;
    v29 = 595;
    v30 = 2112;
    v31 = userInfo;
    _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Interruption received %@", buf, 0x1Cu);
  }

LABEL_8:
  if (interruptionCopy)
  {
    userInfo2 = [interruptionCopy userInfo];
    v10 = userInfo2;
    if (userInfo2)
    {
      v11 = [userInfo2 objectForKey:*MEMORY[0x1E698D580]];
      unsignedLongValue = [v11 unsignedLongValue];
      if (unsignedLongValue)
      {
        v13 = unsignedLongValue == 1;
      }

      else
      {
        v14 = [v10 objectForKey:*MEMORY[0x1E698D568]];
        -[ATAudioSessionClientImpl setInterruptionType:](self, "setInterruptionType:", [v14 unsignedIntValue]);

        v13 = 0;
      }

      objc_initWeak(buf, self);
      if ([(ATAudioSessionClientImpl *)self clientInterruptionListenerProc])
      {
        mCFObject = self->_clientRunLoop.mCFObject;
        v16 = self->_clientRunLoopMode.mObject.mCFObject;
        v20 = MEMORY[0x1E69E9820];
        v21 = 3221225472;
        v22 = __47__ATAudioSessionClientImpl_handleInterruption___block_invoke;
        v23 = &unk_1E7ECDEC0;
        objc_copyWeak(&v24, buf);
        v25 = v13;
        CFRunLoopPerformBlock(mCFObject, v16, &v20);
        objc_destroyWeak(&v24);
      }

      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{v13, v20, v21, v22, v23}];
      [(ATAudioSessionClientImpl *)self callPropertyListeners:1768846450 data:v17];

      objc_destroyWeak(buf);
    }

    else
    {
      if (kAudioSessionClientLogSubsystem)
      {
        v11 = *kAudioSessionClientLogSubsystem;
        if (!v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v19 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v27 = "ATAudioSessionClientImpl.mm";
        v28 = 1024;
        v29 = 606;
        _os_log_impl(&dword_1B9A08000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to post interruption:Invalid notification info", buf, 0x12u);
      }
    }

LABEL_20:
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __47__ATAudioSessionClientImpl_handleInterruption___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    (*(WeakRetained + 14))(*(WeakRetained + 15), *(a1 + 40));
  }
}

- (void)addNSNotificationListenerFor:(id)for session:(id)session block:(id)block
{
  forCopy = for;
  sessionCopy = session;
  blockCopy = block;
  std::string::basic_string[abi:ne200100]<0>(__p, [forCopy UTF8String]);
  left = self->_newNotificationCenterObservers.__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_8;
  }

  p_end_node = &self->_newNotificationCenterObservers.__tree_.__end_node_;
  do
  {
    v13 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&left->_propertyListeners.__ptr_, __p);
    if ((v13 & 0x80u) == 0)
    {
      p_end_node = left;
    }

    left = *(&left->super.isa + ((v13 >> 4) & 8));
  }

  while (left);
  if (p_end_node == &self->_newNotificationCenterObservers.__tree_.__end_node_ || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, &p_end_node->_propertyListeners.__ptr_) & 0x80) != 0)
  {
LABEL_8:
    operator new();
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)addNSNotificationListenerFor:(id)for session:(id)session selector:(SEL)selector
{
  forCopy = for;
  sessionCopy = session;
  std::string::basic_string[abi:ne200100]<0>(v12, [forCopy UTF8String]);
  left = self->_oldNotificationCenterObservers.__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_8;
  }

  p_end_node = &self->_oldNotificationCenterObservers.__tree_.__end_node_;
  do
  {
    v11 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&left->_propertyListeners.__ptr_, v12);
    if ((v11 & 0x80u) == 0)
    {
      p_end_node = left;
    }

    left = *(&left->super.isa + ((v11 >> 4) & 8));
  }

  while (left);
  if (p_end_node == &self->_oldNotificationCenterObservers.__tree_.__end_node_ || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12, &p_end_node->_propertyListeners.__ptr_) & 0x80) != 0)
  {
LABEL_8:
    operator new();
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }
}

void __82__ATAudioSessionClientImpl_AudioSessionAddPropertyListenerImpl_userProc_userData___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleRouteChange:v5];
  }
}

void __82__ATAudioSessionClientImpl_AudioSessionAddPropertyListenerImpl_userProc_userData___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleInterruption:v5];
  }
}

void __82__ATAudioSessionClientImpl_AudioSessionAddPropertyListenerImpl_userProc_userData___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleServerDeath:v5];
  }
}

void __82__ATAudioSessionClientImpl_AudioSessionAddPropertyListenerImpl_userProc_userData___block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleServerReset:v5];
  }
}

- (int)AudioSessionGetPropertySizeImpl:(unsigned int)impl size:(unsigned int *)size
{
  v14 = *MEMORY[0x1E69E9840];
  if (kAudioSessionClientLogSubsystem)
  {
    v6 = *kAudioSessionClientLogSubsystem;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315394;
    v11 = "ATAudioSessionClientImpl.mm";
    v12 = 1024;
    v13 = 322;
    _os_log_impl(&dword_1B9A08000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d AudioSessionGetPropertySizeImpl", &v10, 0x12u);
  }

LABEL_8:
  asPropertyInfo::GetPropertyInfo(&v10, impl);
  *size = v11;
  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int)AudioSessionSetActiveImpl:(unsigned __int8)impl flags:(unsigned int)flags
{
  implCopy = impl;
  v28 = *MEMORY[0x1E69E9840];
  if (kAudioSessionClientLogSubsystem)
  {
    v7 = *kAudioSessionClientLogSubsystem;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v23 = "ATAudioSessionClientImpl.mm";
    v24 = 1024;
    v25 = 260;
    _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d AudioSessionSetActiveImpl", buf, 0x12u);
  }

LABEL_8:
  WeakRetained = objc_loadWeakRetained(&self->_weakSession);
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v21 = 0;
    v11 = [WeakRetained setActive:implCopy == 1 withOptions:flags error:&v21];
    v12 = v21;
    v13 = v12;
    if (v11)
    {
      if (kAudioSessionClientLogSubsystem)
      {
        v14 = *kAudioSessionClientLogSubsystem;
        if (!v14)
        {
          code = 0;
LABEL_30:

          goto LABEL_31;
        }
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
        v16 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v17 = @"Activated";
        v23 = "ATAudioSessionClientImpl.mm";
        *buf = 136315650;
        if (!implCopy)
        {
          v17 = @"Deactivated";
        }

        v24 = 1024;
        v25 = 285;
        v26 = 2112;
        v27 = v17;
        _os_log_impl(&dword_1B9A08000, v14, OS_LOG_TYPE_INFO, "%25s:%-5d Session %@ !", buf, 0x1Cu);
      }

      code = 0;
    }

    else
    {
      code = 2003329396;
      if (v12 && [v12 code])
      {
        code = [v13 code];
      }

      if (kAudioSessionClientLogSubsystem)
      {
        v14 = *kAudioSessionClientLogSubsystem;
        if (!v14)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
        v18 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v23 = "ATAudioSessionClientImpl.mm";
        v24 = 1024;
        v25 = 281;
        v26 = 1024;
        LODWORD(v27) = code;
        _os_log_impl(&dword_1B9A08000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d activation failed. status = %d", buf, 0x18u);
      }
    }

    goto LABEL_30;
  }

  code = 560557673;
LABEL_31:

  v19 = *MEMORY[0x1E69E9840];
  return code;
}

- (AVAudioSession)avas
{
  WeakRetained = objc_loadWeakRetained(&self->_weakSession);

  return WeakRetained;
}

- (int)resetClientConfiguration
{
  self->_isConfigured = 0;
  self->_clientUserData = 0;
  self->_interruptionType = 0;
  Main = CFRunLoopGetMain();
  v4 = Main;
  if (Main)
  {
    CFRetain(Main);
  }

  mCFObject = self->_clientRunLoop.mCFObject;
  self->_clientRunLoop.mCFObject = v4;
  if (mCFObject)
  {
    CFRelease(mCFObject);
  }

  applesauce::CF::StringRef::from_get(&v9, *MEMORY[0x1E695E8E0]);
  v6 = self->_clientRunLoopMode.mObject.mCFObject;
  self->_clientRunLoopMode.mObject.mCFObject = v9;
  v9 = v6;
  if (v6)
  {
    CFRelease(v6);
  }

  self->_clientInterruptionListenerProc = 0;
  ptr = self->_propertyListeners.__ptr_;
  os_unfair_recursive_lock_lock_with_options();
  AudioSessionPropertyListeners::RemovePropertyListenersForAllPropertiesImp(ptr);
  os_unfair_recursive_lock_unlock();
  return 0;
}

- (int)setClientConfiguration:(__CFRunLoop *)configuration runLoopMode:(__CFString *)mode listenerProc:(void *)proc userData:(void *)data
{
  v28 = *MEMORY[0x1E69E9840];
  if (kAudioSessionClientLogSubsystem)
  {
    v11 = *kAudioSessionClientLogSubsystem;
    if (!v11)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "ATAudioSessionClientImpl.mm";
    v26 = 1024;
    v27 = 172;
    _os_log_impl(&dword_1B9A08000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setClientConfiguration", buf, 0x12u);
  }

LABEL_8:
  if (!self->_isConfigured)
  {
    WeakRetained = objc_loadWeakRetained(&self->_weakSession);
    if (!WeakRetained)
    {
      v13 = 2003329396;
      if (kAudioSessionClientLogSubsystem)
      {
        v17 = *kAudioSessionClientLogSubsystem;
        if (!v17)
        {
LABEL_41:

          goto LABEL_42;
        }
      }

      else
      {
        v17 = MEMORY[0x1E69E9C10];
        v19 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "ATAudioSessionClientImpl.mm";
        v26 = 1024;
        v27 = 228;
        _os_log_impl(&dword_1B9A08000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create AVAudioSession shared instance.", buf, 0x12u);
      }

      goto LABEL_41;
    }

    if (configuration)
    {
      CFRetain(configuration);
      mCFObject = self->_clientRunLoop.mCFObject;
      self->_clientRunLoop.mCFObject = configuration;
      if (mCFObject)
      {
        CFRelease(mCFObject);
      }
    }

    if (mode)
    {
      applesauce::CF::StringRef::from_get(buf, mode);
      v16 = self->_clientRunLoopMode.mObject.mCFObject;
      self->_clientRunLoopMode.mObject.mCFObject = *buf;
      *buf = v16;
      if (v16)
      {
        CFRelease(v16);
      }
    }

    if (proc)
    {
      self->_clientInterruptionListenerProc = proc;
LABEL_33:
      if (data)
      {
        self->_clientUserData = data;
      }

      [(ATAudioSessionClientImpl *)self setInterruptionType:0];
      if (UseNewNotifications(void)::once != -1)
      {
        dispatch_once(&UseNewNotifications(void)::once, &__block_literal_global_232);
      }

      if (UseNewNotifications(void)::sUseNewNotifications == 1)
      {
        objc_initWeak(buf, self);
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __85__ATAudioSessionClientImpl_setClientConfiguration_runLoopMode_listenerProc_userData___block_invoke;
        v23[3] = &unk_1E7ECDE98;
        objc_copyWeak(&v24, buf);
        [(ATAudioSessionClientImpl *)self addNSNotificationListenerFor:*MEMORY[0x1E698D550] session:WeakRetained block:v23];
        objc_destroyWeak(&v24);
        objc_destroyWeak(buf);
      }

      else
      {
        [(ATAudioSessionClientImpl *)self addNSNotificationListenerFor:*MEMORY[0x1E698D550] session:WeakRetained selector:sel_handleInterruption_];
      }

      v13 = 0;
      self->_isConfigured = 1;
      goto LABEL_41;
    }

    if (kAudioSessionClientLogSubsystem)
    {
      v18 = *kAudioSessionClientLogSubsystem;
      if (!v18)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "ATAudioSessionClientImpl.mm";
      v26 = 1024;
      v27 = 193;
      _os_log_impl(&dword_1B9A08000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No Interruption listener provided", buf, 0x12u);
    }

    goto LABEL_33;
  }

  v13 = 1768843636;
LABEL_42:
  v21 = *MEMORY[0x1E69E9840];
  return v13;
}

void __85__ATAudioSessionClientImpl_setClientConfiguration_runLoopMode_listenerProc_userData___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleInterruption:v5];
  }
}

- (BOOL)isValid
{
  WeakRetained = objc_loadWeakRetained(&self->_weakSession);
  v3 = WeakRetained != 0;

  return v3;
}

- (ATAudioSessionClientImpl)initWithStrongSession:(id)session
{
  sessionCopy = session;
  v6 = [(ATAudioSessionClientImpl *)self initWithSession:sessionCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_strongSession, session);
    v8 = v7;
  }

  return v7;
}

- (ATAudioSessionClientImpl)initWithSession:(id)session
{
  v19 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  if (kAudioSessionClientLogSubsystem)
  {
    v5 = *kAudioSessionClientLogSubsystem;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "ATAudioSessionClientImpl.mm";
    v17 = 1024;
    v18 = 134;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d initWithSession", buf, 0x12u);
  }

LABEL_8:
  v15.receiver = self;
  v15.super_class = ATAudioSessionClientImpl;
  v7 = [(ATAudioSessionClientImpl *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_weakSession, sessionCopy);
    v8->_isConfigured = 0;
    v8->_clientUserData = 0;
    Main = CFRunLoopGetMain();
    v10 = Main;
    if (Main)
    {
      CFRetain(Main);
    }

    mCFObject = v8->_clientRunLoop.mCFObject;
    v8->_clientRunLoop.mCFObject = v10;
    if (mCFObject)
    {
      CFRelease(mCFObject);
    }

    applesauce::CF::StringRef::from_get(buf, *MEMORY[0x1E695E8E0]);
    v12 = v8->_clientRunLoopMode.mObject.mCFObject;
    v8->_clientRunLoopMode.mObject.mCFObject = *buf;
    *buf = v12;
    if (v12)
    {
      CFRelease(v12);
    }

    v8->_clientInterruptionListenerProc = 0;
    v8->_interruptionType = 0;
    operator new();
  }

  v13 = *MEMORY[0x1E69E9840];
  return 0;
}

@end
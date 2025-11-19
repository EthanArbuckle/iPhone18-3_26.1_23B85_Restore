@interface AudioComponentMainRegConnection
- (AudioComponentMainRegConnection)initWithRegistrar:(void *)a3 connection:(id)a4;
- (id).cxx_construct;
- (void)canRegisterComponent:(id)a3 reply:(id)a4;
- (void)getComponentList:(id)a3 linkedSDKRequiresEntitlement:(BOOL)a4 includeExtensions:(BOOL)a5 forceWaitForExtensions:(BOOL)a6 reply:(id)a7;
@end

@implementation AudioComponentMainRegConnection

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 6) = -1;
  *(self + 28) = 0;
  return self;
}

- (void)canRegisterComponent:(id)a3 reply:(id)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v37 = a4;
  memset(&v42, 0, sizeof(v42));
  v41 = 0;
  dictionaryToComponentDescription(a3, &v42, &v41);
  CAFormatter::CAFormatter(&v40, &v42);
  {
    *v54.val = @"sandboxing-required";
    *&v54.val[2] = @"entitlements-required";
    *buf[0].val = MEMORY[0x1E695E110];
    *&buf[0].val[2] = &unk_1F034DEF0;
    AudioComponentRegistrarImpl::componentRequirements(AudioComponentDescription const&)::audibleAudioFileEntitlements = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v54 count:2];
  }

  if (v42.componentType == 1633969507)
  {
    componentSubType = v42.componentSubType;
    if (v42.componentSubType == 1633771875)
    {
LABEL_8:
      v8 = AudioComponentRegistrarImpl::componentRequirements(AudioComponentDescription const&)::audibleAudioFileEntitlements;
      goto LABEL_10;
    }

    v7 = 1096107074;
  }

  else
  {
    if (v42.componentType != 1634101612)
    {
      goto LABEL_9;
    }

    componentSubType = v42.componentSubType;
    v7 = 1635083362;
  }

  if (componentSubType == v7)
  {
    goto LABEL_8;
  }

LABEL_9:
  v8 = 0;
LABEL_10:
  v36 = [v8 valueForKey:@"entitlements-required"];
  if ([v36 count])
  {
    v9 = [v8 valueForKey:@"sandboxing-required"];
    v10 = [v9 BOOLValue];

    if (!v10)
    {
      goto LABEL_22;
    }

    WeakRetained = objc_loadWeakRetained(&self->mConnInfo.mConnection);
    v12 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained auditToken];
    }

    else
    {
      memset(&v54, 0, sizeof(v54));
    }

    buf[0] = v54;
    v15 = sandbox_check_by_audit_token() == 0;

    if (v15)
    {
      if (!gAudioComponentLogCategory)
      {
        operator new();
      }

      v33 = *gAudioComponentLogCategory;
      if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_INFO))
      {
        buf[0].val[0] = 136315650;
        *&buf[0].val[1] = "AudioComponentRegistrar.mm";
        LOWORD(buf[0].val[3]) = 1024;
        *(&buf[0].val[3] + 2) = 494;
        HIWORD(buf[0].val[4]) = 2080;
        *&buf[0].val[5] = v40;
        _os_log_impl(&dword_18F5DF000, v33, OS_LOG_TYPE_INFO, "%25s:%-5d canRegisterComponent %s: NO, for a non-sandboxed process attempting to register a component that requires sandboxing", buf, 0x1Cu);
      }
    }

    else
    {
LABEL_22:
      v16 = objc_loadWeakRetained(&self->mConnInfo.mConnection);
      v17 = v16;
      if (v16)
      {
        [v16 auditToken];
      }

      else
      {
        memset(buf, 0, 32);
      }

      task = SecTaskCreateWithAuditToken(0, buf);

      if (task)
      {
        v55 = 0u;
        v56 = 0u;
        memset(&v54, 0, sizeof(v54));
        v18 = v36;
        v19 = 0;
        v20 = [v18 countByEnumeratingWithState:&v54 objects:buf count:16];
        if (v20)
        {
          v38 = **&v54.val[4];
          v21 = v8;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (**&v54.val[4] != v38)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*&v54.val[2] + 8 * i);
              v24 = [v18 objectForKey:v23];
              v25 = SecTaskCopyValueForEntitlement(task, v23, 0);
              if (!gAudioComponentLogCategory)
              {
                operator new();
              }

              v26 = *gAudioComponentLogCategory;
              if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_INFO))
              {
                *v43 = 136316162;
                v44 = "AudioComponentRegistrar.mm";
                v45 = 1024;
                v46 = 506;
                v47 = 2112;
                v48 = v23;
                v49 = 2112;
                v50 = v24;
                v51 = 2112;
                v52 = v25;
                _os_log_impl(&dword_18F5DF000, v26, OS_LOG_TYPE_INFO, "%25s:%-5d canRegisterComponent: entitlement %@ requires value %@, prospective registrant has value %@", v43, 0x30u);
              }

              if (v25)
              {
                v8 = v21;
                if (CFEqual(v24, v25))
                {
                  ++v19;
                }

                CFRelease(v25);
              }

              else
              {
                v8 = v21;
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v54 objects:buf count:16];
          }

          while (v20);
        }

        v28 = [v18 count];
        v29 = v19 == v28;
        if (!gAudioComponentLogCategory)
        {
          operator new();
        }

        v30 = *gAudioComponentLogCategory;
        if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_INFO))
        {
          v32 = "NO";
          *v43 = 136315906;
          if (v19 == v28)
          {
            v32 = "YES, possessing all required entitlements";
          }

          v44 = "AudioComponentRegistrar.mm";
          v45 = 1024;
          v46 = 515;
          v47 = 2080;
          v48 = v40;
          v49 = 2080;
          v50 = v32;
          _os_log_impl(&dword_18F5DF000, v30, OS_LOG_TYPE_INFO, "%25s:%-5d canRegisterComponent %s: %s", v43, 0x26u);
        }

        CFRelease(task);
        goto LABEL_57;
      }
    }

    v29 = 0;
LABEL_57:
    v37[2](v37, v29);
    goto LABEL_58;
  }

  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  v13 = *gAudioComponentLogCategory;
  if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_DEBUG))
  {
    buf[0].val[0] = 136315650;
    *&buf[0].val[1] = "AudioComponentRegistrar.mm";
    LOWORD(buf[0].val[3]) = 1024;
    *(&buf[0].val[3] + 2) = 484;
    HIWORD(buf[0].val[4]) = 2080;
    *&buf[0].val[5] = v40;
    _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d canRegisterComponent %s: YES, requiring no entitlements", buf, 0x1Cu);
  }

  v37[2](v37, 1);
LABEL_58:

  if (v40)
  {
    free(v40);
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (void)getComponentList:(id)a3 linkedSDKRequiresEntitlement:(BOOL)a4 includeExtensions:(BOOL)a5 forceWaitForExtensions:(BOOL)a6 reply:(id)a7
{
  v8 = a6;
  v9 = a5;
  v40 = *MEMORY[0x1E69E9840];
  self->mConnInfo.mLinkedSDKRequiresEntitlement = a4;
  mImpl = self->mImpl;
  v12 = a3;
  v13 = a7;
  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  v14 = *gAudioComponentLogCategory;
  if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_DEFAULT))
  {
    *v30 = 136315906;
    *&v30[4] = "AudioComponentRegistrar.mm";
    *&v30[12] = 1024;
    *&v30[14] = 332;
    *&v30[18] = 1024;
    *&v30[20] = v9;
    LOWORD(v31) = 1024;
    *(&v31 + 2) = v8;
    _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d getComponentList includeExtensions: %d waitForExtensions: %d", v30, 0x1Eu);
  }

  v16 = *(mImpl + 31);
  if (v16)
  {
    v17 = *(*v16 + 96);
  }

  else
  {
    v17 = 0;
  }

  mExtUsePermission = self->mConnInfo.mExtUsePermission;
  if (mExtUsePermission == -1)
  {
    mExtUsePermission = ConnectionInfo::_canUseExtensions(&self->mConnInfo);
    self->mConnInfo.mExtUsePermission = mExtUsePermission;
  }

  if (!v9)
  {
    goto LABEL_25;
  }

  if (*mImpl)
  {
    goto LABEL_25;
  }

  v19 = atomic_load(mImpl + 2);
  if (v19)
  {
    goto LABEL_25;
  }

  *v30 = 0;
  v20 = MGCopyAnswerWithError();
  v21 = v20;
  if (*v30)
  {
    if (!v20)
    {
      goto LABEL_20;
    }

    v22 = 0;
    v23 = 0;
  }

  else
  {
    if (!v20)
    {
      goto LABEL_20;
    }

    v23 = applesauce::CF::convert_as<BOOL,0>(v20);
    v22 = v23 > 0xFFu;
  }

  CFRelease(v21);
  if (v22 & v23)
  {
LABEL_25:
    if (mExtUsePermission == 1)
    {
      v28 = atomic_load(mImpl + 2);
    }

    else
    {
      v28 = 0;
    }

    AudioComponentRegistrarImpl::replyWithComponentList(mImpl, v28 & 1, v12, v17, v13);
    goto LABEL_29;
  }

LABEL_20:
  v24 = *(mImpl + 9);
  if (!v24)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if (!(*(*v24 + 48))(v24))
  {
    goto LABEL_25;
  }

  *v30 = MEMORY[0x1E69E9820];
  *&v30[8] = 3221225472;
  *&v30[16] = ___ZN27AudioComponentRegistrarImpl16getComponentListER14ConnectionInfoP8NSStringbbU13block_pointerFvP6NSDatabS5_P7NSArrayE_block_invoke;
  v31 = &unk_1E72C2B40;
  v35 = mImpl;
  v36 = mExtUsePermission == 1;
  v32 = v12;
  v33 = v17;
  v34 = v13;
  v25 = v30;
  if (!*(mImpl + 32))
  {
    operator new();
  }

  v26 = *(mImpl + 1);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN27AudioComponentRegistrarImpl21_initialExtensionScanEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_1E72C2B18;
  v38 = v25;
  v39 = mImpl;
  v27 = v25;
  dispatch_async(v26, block);

LABEL_29:
  v29 = *MEMORY[0x1E69E9840];
}

- (AudioComponentMainRegConnection)initWithRegistrar:(void *)a3 connection:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = AudioComponentMainRegConnection;
  v7 = [(AudioComponentMainRegConnection *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->mImpl = a3;
    objc_storeWeak(&v7->mConnInfo.mConnection, v6);
  }

  return v8;
}

@end
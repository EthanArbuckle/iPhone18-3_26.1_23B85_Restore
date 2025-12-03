@interface WKWebGeolocationPolicyDecider
+ (id)sharedPolicyDecider;
- (WKWebGeolocationPolicyDecider)init;
- (id).cxx_construct;
- (id)_siteFile;
- (id)_siteFileInContainerDirectory:(id)directory creatingIntermediateDirectoriesIfNecessary:(BOOL)necessary;
- (int64_t)_getChallengeCountFromHistoryForToken:(id)token requestingURL:(id)l;
- (void)_addChallengeCount:(int64_t)count forToken:(id)token requestingURL:(id)l;
- (void)_executeNextChallenge;
- (void)_finishActiveChallenge:(BOOL)challenge;
- (void)_loadWithCompletionHandler:(id)handler;
- (void)_save;
- (void)clearCache;
- (void)dealloc;
- (void)decidePolicyForGeolocationRequestFromOrigin:(const void *)origin requestingURL:(id)l view:(id)view listener:(id)m_buffer;
@end

@implementation WKWebGeolocationPolicyDecider

+ (id)sharedPolicyDecider
{
  result = +[WKWebGeolocationPolicyDecider sharedPolicyDecider]::policyDecider;
  if (!+[WKWebGeolocationPolicyDecider sharedPolicyDecider]::policyDecider)
  {
    result = objc_alloc_init(WKWebGeolocationPolicyDecider);
    +[WKWebGeolocationPolicyDecider sharedPolicyDecider]::policyDecider = result;
  }

  return result;
}

- (WKWebGeolocationPolicyDecider)init
{
  v7.receiver = self;
  v7.super_class = WKWebGeolocationPolicyDecider;
  v2 = [(WKWebGeolocationPolicyDecider *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.WebKit.WKWebGeolocationPolicyDecider", 0);
    m_ptr = v2->_diskDispatchQueue.m_ptr;
    v2->_diskDispatchQueue.m_ptr = v3;
    if (m_ptr)
    {
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, clearGeolocationCache, @"com.apple.locationd.appreset", 0, CFNotificationSuspensionBehaviorCoalesce);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.locationd.appreset", 0);
  v4.receiver = self;
  v4.super_class = WKWebGeolocationPolicyDecider;
  [(WKWebGeolocationPolicyDecider *)&v4 dealloc];
}

- (void)decidePolicyForGeolocationRequestFromOrigin:(const void *)origin requestingURL:(id)l view:(id)view listener:(id)m_buffer
{
  v11 = WTF::fastMalloc(0x28);
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  viewCopy = [l isFileURL];
  if (!viewCopy)
  {
    LODWORD(m_end) = *(origin + 24);
    if (*(origin + 24))
    {
      goto LABEL_60;
    }

    v14 = (origin + 8);
    goto LABEL_6;
  }

  viewCopy = [l path];
  v35 = viewCopy;
  if (viewCopy)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v17 = v35;
    v35 = 0;
    v18 = *v11;
    *v11 = v17;
    if (v18)
    {

      v19 = v35;
      v35 = 0;
      if (v19)
      {
      }
    }

    if (l)
    {
      viewCopy = l;
    }

    v20 = *(v11 + 16);
    *(v11 + 16) = l;
    if (v20)
    {

      if (!view)
      {
        goto LABEL_21;
      }

LABEL_20:
      viewCopy = view;
      goto LABEL_21;
    }

    if (view)
    {
      goto LABEL_20;
    }

LABEL_21:
    v21 = *(v11 + 24);
    *(v11 + 24) = view;
    if (v21)
    {
    }

    if (m_buffer)
    {
      viewCopy = m_buffer;
    }

    v22 = *(v11 + 32);
    *(v11 + 32) = m_buffer;
    if (v22)
    {
    }

    m_start = self->_challenges.m_start;
    m_end = self->_challenges.m_end;
    if (m_start)
    {
      if (m_end + 1 != m_start)
      {
        goto LABEL_54;
      }

      LODWORD(m_capacity) = self->_challenges.m_buffer.m_capacity;
    }

    else
    {
      m_capacity = self->_challenges.m_buffer.m_capacity;
      if (m_end)
      {
        if (m_end != m_capacity - 1)
        {
          goto LABEL_54;
        }
      }

      else if (m_capacity)
      {
        m_end = 0;
        goto LABEL_54;
      }
    }

    view = m_capacity;
    v25 = (m_capacity >> 2) + m_capacity;
    if (v25 >= 0x1FFFFFFF)
    {
      __break(0xC471u);
      return;
    }

    m_buffer = self->_challenges.m_buffer.m_buffer;
    if (v25 <= 0xF)
    {
      v25 = 15;
    }

    l = (v25 + 1);
    viewCopy = WTF::fastMalloc((8 * (v25 + 1)));
    self->_challenges.m_buffer.m_capacity = l;
    self->_challenges.m_buffer.m_buffer = viewCopy;
    m_end = self->_challenges.m_start;
    v26 = self->_challenges.m_end;
    v27 = v26 - m_end;
    if (v26 < m_end)
    {
      if (v26 <= view)
      {
        viewCopy = memcpy(viewCopy, m_buffer, 8 * v26);
        m_end = self->_challenges.m_start;
        v28 = view - m_end;
        if (view >= m_end)
        {
          v29 = self->_challenges.m_buffer.m_capacity;
          if (v29 >= v28)
          {
            view = (v29 - (view - m_end));
            viewCopy = memcpy(self->_challenges.m_buffer.m_buffer + 8 * view, m_buffer + 8 * m_end, 8 * v28);
            self->_challenges.m_start = view;
            if (!m_buffer)
            {
              goto LABEL_53;
            }

            goto LABEL_50;
          }
        }
      }

      goto LABEL_59;
    }

    if (view < m_end)
    {
      goto LABEL_59;
    }

    if (v27 == -1)
    {
      break;
    }

    if (view - m_end >= v27)
    {
      goto LABEL_49;
    }

LABEL_59:
    __break(1u);
LABEL_60:
    if (m_end != 1)
    {
      mpark::throw_bad_variant_access(viewCopy);
    }

    v14 = MEMORY[0x1E696EBA8];
LABEL_6:
    v15 = *v14;
    if (!*v14)
    {
      viewCopy = &stru_1F1147748;
      v35 = &stru_1F1147748;
LABEL_10:
      viewCopy = viewCopy;
      continue;
    }

    atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
    viewCopy = MEMORY[0x19EB00B70](&v35, v15);
    if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      viewCopy = WTF::StringImpl::destroy(v15, v16);
    }
  }

  v27 = view - m_end;
LABEL_49:
  viewCopy = memcpy(&viewCopy->isa + m_end, m_buffer + 8 * m_end, 8 * v27);
  if (!m_buffer)
  {
    goto LABEL_53;
  }

LABEL_50:
  if (self->_challenges.m_buffer.m_buffer == m_buffer)
  {
    self->_challenges.m_buffer.m_buffer = 0;
    self->_challenges.m_buffer.m_capacity = 0;
  }

  viewCopy = WTF::fastFree(m_buffer, v30);
LABEL_53:
  m_end = self->_challenges.m_end;
LABEL_54:
  v31 = self->_challenges.m_buffer.m_capacity;
  if (m_end >= v31)
  {
    goto LABEL_59;
  }

  v32 = self->_challenges.m_buffer.m_buffer;
  v34 = 0;
  v32[m_end] = v11;
  if (m_end == v31 - 1)
  {
    v33 = 0;
  }

  else
  {
    v33 = m_end + 1;
  }

  self->_challenges.m_end = v33;
  [(WKWebGeolocationPolicyDecider *)self _executeNextChallenge];
  std::unique_ptr<PermissionRequest>::reset[abi:sn200100](&v34, 0);
}

- (void)_executeNextChallenge
{
  m_start = self->_challenges.m_start;
  if (m_start != self->_challenges.m_end)
  {
    p_activeChallenge = &self->_activeChallenge;
    if (!self->_activeChallenge.__ptr_)
    {
      if (m_start >= self->_challenges.m_buffer.m_capacity)
      {
        __break(1u);
      }

      else
      {
        v5 = (self->_challenges.m_buffer.m_buffer + 8 * m_start);
        v6 = *v5;
        *v5 = 0;
        std::unique_ptr<PermissionRequest>::reset[abi:sn200100](v5, 0);
        v7 = self->_challenges.m_start;
        if (v7 == self->_challenges.m_buffer.m_capacity - 1)
        {
          v8 = 0;
        }

        else
        {
          v8 = v7 + 1;
        }

        self->_challenges.m_start = v8;
        v10 = 0;
        std::unique_ptr<PermissionRequest>::reset[abi:sn200100](p_activeChallenge, v6);
        std::unique_ptr<PermissionRequest>::reset[abi:sn200100](&v10, 0);
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __54__WKWebGeolocationPolicyDecider__executeNextChallenge__block_invoke;
        v9[3] = &unk_1E7631230;
        v9[4] = self;
        [(WKWebGeolocationPolicyDecider *)self _loadWithCompletionHandler:v9];
      }
    }
  }
}

void __54__WKWebGeolocationPolicyDecider__executeNextChallenge__block_invoke(uint64_t a1)
{
  v2 = [*(*(*(a1 + 32) + 56) + 24) _shouldBypassGeolocationPromptForTesting];
  v3 = *(a1 + 32);
  if (v2)
  {
    goto LABEL_4;
  }

  v4 = [v3 _getChallengeCountFromHistoryForToken:*v3[7] requestingURL:v3[7][2]];
  if (v4 < 2)
  {
    if (v4 <= -2)
    {
      v3 = *(a1 + 32);
      v5 = 0;
      goto LABEL_5;
    }

    v6 = [MEMORY[0x1E696AAE8] mainBundle];
    v7 = [v6 objectForInfoDictionaryKey:*MEMORY[0x1E695E120]];
    if (!v7)
    {
      v7 = [v6 objectForInfoDictionaryKey:*MEMORY[0x1E695E4F8]];
      if (!v7)
      {
        v7 = [v6 objectForInfoDictionaryKey:*MEMORY[0x1E695E4E8]];
        if (!v7)
        {
          v7 = [v6 bundleIdentifier];
        }
      }
    }

    v8 = v7;
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    WebCore::localizedString(&v56, @"“%@” would like to use your current location.", v10);
    v11 = v56;
    if (v56)
    {
      atomic_fetch_add_explicit(v56, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v57, v11);
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v12);
      }
    }

    else
    {
      v57 = &stru_1F1147748;
      v13 = &stru_1F1147748;
    }

    v15 = [v9 initWithFormat:v57, **(*(a1 + 32) + 56)];
    v16 = v57;
    v57 = 0;
    if (v16)
    {
    }

    v17 = v56;
    v56 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v14);
    }

    v18 = [objc_alloc(getCLLocationManagerClass()) init];
    if ([v18 authorizationStatus] - 3 > 1)
    {
      v19 = 0;
      if (!v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v19 = [v18 accuracyAuthorization] == 0;
      if (!v18)
      {
LABEL_28:
        if (v19)
        {
          v20 = objc_alloc(MEMORY[0x1E696AEC0]);
          WebCore::localizedString(&v56, @"This website will use your precise location because “%@” currently has access to your precise location.", v21);
          v22 = v56;
          if (v56)
          {
            atomic_fetch_add_explicit(v56, 2u, memory_order_relaxed);
            MEMORY[0x19EB00B70](&v57, v22);
            if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
LABEL_34:
              WTF::StringImpl::destroy(v22, v23);
            }
          }

          else
          {
            v57 = &stru_1F1147748;
            v25 = &stru_1F1147748;
          }
        }

        else
        {
          v20 = objc_alloc(MEMORY[0x1E696AEC0]);
          WebCore::localizedString(&v56, @"This website will use your approximate location because “%@” currently has access to your approximate location.", v24);
          v22 = v56;
          if (v56)
          {
            atomic_fetch_add_explicit(v56, 2u, memory_order_relaxed);
            MEMORY[0x19EB00B70](&v57, v22);
            if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) != 2)
            {
              goto LABEL_38;
            }

            goto LABEL_34;
          }

          v57 = &stru_1F1147748;
          v26 = &stru_1F1147748;
        }

LABEL_38:
        v28 = [v20 initWithFormat:v57, v8];
        v29 = v57;
        v57 = 0;
        if (v29)
        {
        }

        v30 = v56;
        v56 = 0;
        if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v30, v27);
        }

        WebCore::localizedString(&v56, @"Allow", v27);
        v31 = v56;
        if (v56)
        {
          atomic_fetch_add_explicit(v56, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&v57, v31);
          if (atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v31, v32);
          }
        }

        else
        {
          v57 = &stru_1F1147748;
          v33 = &stru_1F1147748;
        }

        v34 = v56;
        v56 = 0;
        if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v34, v32);
        }

        WebCore::localizedString(&v55, @"Don’t Allow (website location dialog)", v32);
        v35 = v55;
        if (v55)
        {
          atomic_fetch_add_explicit(v55, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&v56, v35);
          if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v35, v36);
          }
        }

        else
        {
          v56 = &stru_1F1147748;
          v37 = &stru_1F1147748;
        }

        v38 = v55;
        v55 = 0;
        if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v38, v36);
        }

        WebKit::createUIAlertController(v15, v28, &v55);
        v39 = MEMORY[0x1E69DC648];
        v40 = v56;
        location = 0;
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3321888768;
        v53[2] = __54__WKWebGeolocationPolicyDecider__executeNextChallenge__block_invoke_2;
        v53[3] = &__block_descriptor_40_e8_32c72_ZTSKZZ54__WKWebGeolocationPolicyDecider__executeNextChallenge_EUb_E3__5_e23_v16__0__UIAlertAction_8l;
        objc_initWeak(&location, *(a1 + 32));
        v54 = 0;
        objc_copyWeak(&v54, &location);
        v41 = [v39 actionWithTitle:v40 style:0 handler:v53];
        objc_destroyWeak(&location);
        v42 = MEMORY[0x1E69DC648];
        v43 = v57;
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3321888768;
        v50[2] = __54__WKWebGeolocationPolicyDecider__executeNextChallenge__block_invoke_244;
        v50[3] = &__block_descriptor_40_e8_32c72_ZTSKZZ54__WKWebGeolocationPolicyDecider__executeNextChallenge_EUb_E3__6_e23_v16__0__UIAlertAction_8l;
        v44 = *(a1 + 32);
        location = 0;
        objc_initWeak(&location, v44);
        v51 = 0;
        objc_copyWeak(&v51, &location);
        v45 = [v42 actionWithTitle:v43 style:0 handler:v50];
        objc_destroyWeak(&location);
        [(WTF::StringImpl *)v55 addAction:v41];
        [(WTF::StringImpl *)v55 addAction:v45];
        v46 = [*(*(*(a1 + 32) + 56) + 24) _wk_viewControllerForFullScreenPresentation];
        [v46 presentViewController:v55 animated:1 completion:0];
        objc_destroyWeak(&v51);
        objc_destroyWeak(&v54);
        v47 = v55;
        v55 = 0;
        if (v47)
        {
        }

        v48 = v56;
        v56 = 0;
        if (v48)
        {
        }

        v49 = v57;
        v57 = 0;
        if (v49)
        {

          if (!v15)
          {
LABEL_63:
            if (!v28)
            {
              return;
            }

            goto LABEL_64;
          }
        }

        else if (!v15)
        {
          goto LABEL_63;
        }

        if (!v28)
        {
          return;
        }

LABEL_64:

        return;
      }
    }

    goto LABEL_28;
  }

  v3 = *(a1 + 32);
LABEL_4:
  v5 = 1;
LABEL_5:

  [v3 _finishActiveChallenge:v5];
}

void __54__WKWebGeolocationPolicyDecider__executeNextChallenge__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _finishActiveChallenge:0];
  }
}

void __54__WKWebGeolocationPolicyDecider__executeNextChallenge__block_invoke_244(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _finishActiveChallenge:1];
  }
}

- (void)_finishActiveChallenge:(BOOL)challenge
{
  p_activeChallenge = &self->_activeChallenge;
  ptr = self->_activeChallenge.__ptr_;
  if (ptr)
  {
    challengeCopy = challenge;
    if (challenge)
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }

    [(WKWebGeolocationPolicyDecider *)self _addChallengeCount:v7 forToken:*ptr requestingURL:*(ptr + 2)];
    v8 = *(self->_activeChallenge.__ptr_ + 4);
    if (challengeCopy)
    {
      [v8 allow];
    }

    else
    {
      [v8 deny];
    }

    std::unique_ptr<PermissionRequest>::reset[abi:sn200100](p_activeChallenge, 0);

    [(WKWebGeolocationPolicyDecider *)self _executeNextChallenge];
  }
}

- (void)clearCache
{
  m_ptr = self->_sites.m_ptr;
  self->_sites.m_ptr = 0;
  if (m_ptr)
  {
  }

  v4 = self->_diskDispatchQueue.m_ptr;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__WKWebGeolocationPolicyDecider_clearCache__block_invoke;
  block[3] = &unk_1E7631230;
  block[4] = self;
  dispatch_async(v4, block);
}

uint64_t __43__WKWebGeolocationPolicyDecider_clearCache__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [*(a1 + 32) _siteFile];

  return [v2 _web_removeFileOnlyAtPath:v3];
}

- (id)_siteFileInContainerDirectory:(id)directory creatingIntermediateDirectoriesIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = [directory stringByAppendingPathComponent:@"Library/WebKit"];
  if (necessaryCopy)
  {
    [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  }

  return [v5 stringByAppendingPathComponent:@"GeolocationSitesV2.plist"];
}

- (id)_siteFile
{
  result = [WKWebGeolocationPolicyDecider _siteFile]::sSiteFile;
  if (![WKWebGeolocationPolicyDecider _siteFile]::sSiteFile)
  {
    result = [(WKWebGeolocationPolicyDecider *)self _siteFileInContainerDirectory:NSHomeDirectory() creatingIntermediateDirectoriesIfNecessary:1];
    [WKWebGeolocationPolicyDecider _siteFile]::sSiteFile = result;
  }

  return result;
}

- (void)_loadWithCompletionHandler:(id)handler
{
  if (self->_sites.m_ptr)
  {
    v5 = *(handler + 2);

    v5(handler);
  }

  else
  {
    v7[6] = v3;
    v7[7] = v4;
    m_ptr = self->_diskDispatchQueue.m_ptr;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __60__WKWebGeolocationPolicyDecider__loadWithCompletionHandler___block_invoke;
    v7[3] = &unk_1E76339A8;
    v7[4] = self;
    v7[5] = handler;
    dispatch_async(m_ptr, v7);
  }
}

void __60__WKWebGeolocationPolicyDecider__loadWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:objc_msgSend(*(a1 + 32) options:"_siteFile") error:{1, 0}];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    v12 = 200;
    v13 = 0;
    v5 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:2 format:&v12 error:&v13];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = __60__WKWebGeolocationPolicyDecider__loadWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1F110DB18;
  block[4] = *(a1 + 32);
  v11 = v6;
  if (v6)
  {
    v8 = v6;
  }

  block[5] = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v9 = v11;
  v11 = 0;
  if (v9)
  {
  }

  if (v3)
  {
  }

  if (v6)
  {
  }
}

uint64_t __60__WKWebGeolocationPolicyDecider__loadWithCompletionHandler___block_invoke_2(void *a1)
{
  v2 = a1[4];
  if (!*(v2 + 16))
  {
    v3 = a1[6];
    if (v3)
    {
      v4 = v3;
      v5 = *(v2 + 16);
      *(v2 + 16) = v3;
      if (v5)
      {
      }
    }

    else
    {
      *(v2 + 16) = 0;
    }
  }

  v6 = *(a1[5] + 16);

  return v6();
}

- (void)_save
{
  if ([(NSMutableDictionary *)self->_sites.m_ptr count])
  {
    v8 = 0;
    v3 = [MEMORY[0x1E696AE40] dataWithPropertyList:self->_sites.m_ptr format:200 options:0 error:&v8];
    if (v3)
    {
      v4 = v3;
      _siteFile = [(WKWebGeolocationPolicyDecider *)self _siteFile];
      m_ptr = self->_diskDispatchQueue.m_ptr;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __38__WKWebGeolocationPolicyDecider__save__block_invoke;
      block[3] = &unk_1E76321C8;
      block[4] = v4;
      block[5] = _siteFile;
      dispatch_async(m_ptr, block);
    }
  }
}

- (int64_t)_getChallengeCountFromHistoryForToken:(id)token requestingURL:(id)l
{
  v5 = [(NSMutableDictionary *)self->_sites.m_ptr objectForKey:token];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if ([objc_msgSend(l "scheme")])
  {
    return 0;
  }

  v7 = [objc_msgSend(v6 objectForKey:{@"ChallengeDate", "dateByAddingTimeInterval:", 86400.0}];
  if ([v7 compare:{objc_msgSend(MEMORY[0x1E695DF00], "date")}] == -1)
  {
    return 0;
  }

  v8 = [v6 objectForKey:@"ChallengeCount"];

  return [v8 integerValue];
}

- (void)_addChallengeCount:(int64_t)count forToken:(id)token requestingURL:(id)l
{
  v10[2] = *MEMORY[0x1E69E9840];
  v8 = [(WKWebGeolocationPolicyDecider *)self _getChallengeCountFromHistoryForToken:token requestingURL:l];
  v9[0] = @"ChallengeCount";
  v9[1] = @"ChallengeDate";
  v10[0] = [MEMORY[0x1E696AD98] numberWithInteger:v8 + count];
  v10[1] = [MEMORY[0x1E695DF00] date];
  -[NSMutableDictionary setObject:forKey:](self->_sites.m_ptr, "setObject:forKey:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2], token);
  [(WKWebGeolocationPolicyDecider *)self _save];
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end
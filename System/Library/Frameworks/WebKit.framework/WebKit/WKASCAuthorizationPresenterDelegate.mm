@interface WKASCAuthorizationPresenterDelegate
- (WKASCAuthorizationPresenterDelegate)initWithCoordinator:(void *)coordinator;
- (uint64_t)authorizationPresenter:(WTF *)this credentialRequestedForLoginChoice:(WTF::StringImpl *)choice authenticatedContext:completionHandler:;
- (uint64_t)authorizationPresenter:(WTF *)this credentialRequestedForLoginChoice:(void *)choice authenticatedContext:completionHandler:;
- (uint64_t)authorizationPresenter:(WTF *)this validateUserEnteredPIN:(WTF::StringImpl *)n completionHandler:;
- (uint64_t)authorizationPresenter:(const void *)presenter credentialRequestedForLoginChoice:authenticatedContext:completionHandler:;
- (uint64_t)authorizationPresenter:(const void *)presenter validateUserEnteredPIN:completionHandler:;
- (uint64_t)authorizationPresenter:(uint64_t)presenter credentialRequestedForLoginChoice:(uint64_t)choice authenticatedContext:completionHandler:;
- (uint64_t)authorizationPresenter:(uint64_t)presenter credentialRequestedForLoginChoice:authenticatedContext:completionHandler:;
- (uint64_t)authorizationPresenter:(uint64_t)presenter validateUserEnteredPIN:(uint64_t)n completionHandler:;
- (uint64_t)authorizationPresenter:(uint64_t)presenter validateUserEnteredPIN:completionHandler:;
- (uint64_t)dispatchCoordinatorCallback:(WTF *)this;
- (uint64_t)dispatchCoordinatorCallback:(uint64_t)result;
- (void)authorizationPresenter:(id)presenter credentialRequestedForLoginChoice:(id)choice authenticatedContext:(id)context completionHandler:(id)handler;
- (void)authorizationPresenter:(id)presenter validateUserEnteredPIN:(id)n completionHandler:(id)handler;
- (void)authorizationPresenter:(void *)presenter credentialRequestedForLoginChoice:(WTF::StringImpl *)choice authenticatedContext:completionHandler:;
- (void)authorizationPresenter:(void *)presenter credentialRequestedForLoginChoice:authenticatedContext:completionHandler:;
- (void)authorizationPresenter:(void *)presenter validateUserEnteredPIN:(WTF::StringImpl *)n completionHandler:;
- (void)dispatchCoordinatorCallback:(void *)callback;
@end

@implementation WKASCAuthorizationPresenterDelegate

- (WKASCAuthorizationPresenterDelegate)initWithCoordinator:(void *)coordinator
{
  v11.receiver = self;
  v11.super_class = WKASCAuthorizationPresenterDelegate;
  v5 = [(WKASCAuthorizationPresenterDelegate *)&v11 init];
  if (v5)
  {
    if (!*coordinator)
    {
      v6 = WTF::fastCompactMalloc(0x10);
      *v6 = 1;
      *(v6 + 8) = coordinator;
      v7 = *coordinator;
      *coordinator = v6;
      if (v7)
      {
        if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v7);
          WTF::fastFree(v7, v4);
        }
      }
    }

    v8 = *coordinator;
    atomic_fetch_add(*coordinator, 1u);
    m_ptr = v5->_coordinator.m_impl.m_ptr;
    v5->_coordinator.m_impl.m_ptr = v8;
    if (m_ptr && atomic_fetch_add(m_ptr, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, m_ptr);
      WTF::fastFree(m_ptr, v4);
    }
  }

  return v5;
}

- (void)authorizationPresenter:(id)presenter credentialRequestedForLoginChoice:(id)choice authenticatedContext:(id)context completionHandler:(id)handler
{
  v9 = _Block_copy(handler);
  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F110BA60;
  *(v10 + 1) = v9;
  v26 = v10;
  [(WKASCAuthorizationPresenterDelegate *)self dispatchCoordinatorCallback:&v26];
  v11 = v26;
  v26 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  _Block_release(0);
  WebKit::getASCPlatformPublicKeyCredentialLoginChoiceClass[0](v12);
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    if ([choice isRegistrationRequest])
    {
      if (context)
      {
        contextCopy = context;
      }

      v15 = WTF::fastMalloc(0x10);
      *v15 = &unk_1F110BAB0;
      *(v15 + 1) = context;
      v26 = v15;
      [(WKASCAuthorizationPresenterDelegate *)self dispatchCoordinatorCallback:&v26];
      v16 = v26;
      v26 = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }

      goto LABEL_20;
    }

    MEMORY[0x19EB02040](&v26, [choice name]);
    v20 = v26;
    v26 = 0;
    if (context)
    {
      contextCopy2 = context;
    }

    v22 = WTF::fastMalloc(0x18);
    *v22 = &unk_1F110BAD8;
    v22[1] = v20;
    v22[2] = context;
    v25 = v22;
    [(WKASCAuthorizationPresenterDelegate *)self dispatchCoordinatorCallback:&v25];
  }

  else
  {
    WebKit::getASCSecurityKeyPublicKeyCredentialLoginChoiceClass[0](isKindOfClass);
    if ((objc_opt_isKindOfClass() & 1) == 0 || [choice credentialKind] != 1)
    {
      goto LABEL_20;
    }

    MEMORY[0x19EB02040](&v26, [choice name]);
    v17 = v26;
    v26 = 0;
    v18 = WTF::fastMalloc(0x10);
    *v18 = &unk_1F110BB00;
    v18[1] = v17;
    v25 = v18;
    [(WKASCAuthorizationPresenterDelegate *)self dispatchCoordinatorCallback:&v25];
  }

  v23 = v25;
  v25 = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = v26;
  v26 = 0;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v19);
  }

LABEL_20:
  _Block_release(0);
}

- (void)authorizationPresenter:(id)presenter validateUserEnteredPIN:(id)n completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F110BB28;
  *(v8 + 1) = v7;
  v16 = v8;
  [(WKASCAuthorizationPresenterDelegate *)self dispatchCoordinatorCallback:&v16];
  v9 = v16;
  v16 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  _Block_release(0);
  MEMORY[0x19EB02040](&v16, n);
  v10 = v16;
  v16 = 0;
  v11 = WTF::fastMalloc(0x10);
  *v11 = &unk_1F110BB78;
  v11[1] = v10;
  v15 = v11;
  [(WKASCAuthorizationPresenterDelegate *)self dispatchCoordinatorCallback:&v15];
  v13 = v15;
  v15 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = v16;
  v16 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v12);
  }

  _Block_release(0);
}

- (void)dispatchCoordinatorCallback:(void *)callback
{
  *callback = &unk_1F110BBA0;
  v3 = callback[2];
  callback[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = callback[1];
  callback[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return callback;
}

- (uint64_t)authorizationPresenter:(uint64_t)presenter credentialRequestedForLoginChoice:authenticatedContext:completionHandler:
{
  *presenter = &unk_1F110BA88;
  _Block_release(*(presenter + 8));
  return presenter;
}

- (uint64_t)authorizationPresenter:(const void *)presenter credentialRequestedForLoginChoice:authenticatedContext:completionHandler:
{
  *presenter = &unk_1F110BA88;
  _Block_release(presenter[1]);

  return WTF::fastFree(presenter, v2);
}

- (uint64_t)authorizationPresenter:(uint64_t)presenter credentialRequestedForLoginChoice:(uint64_t)choice authenticatedContext:completionHandler:
{
  v4 = WTF::fastMalloc(0x10);
  v5 = *(presenter + 8);
  *(presenter + 8) = 0;
  *v4 = &unk_1F110BA88;
  v4[1] = v5;
  result = *(choice + 64);
  *(choice + 64) = v4;
  if (result)
  {
    v7 = *(*result + 8);

    return v7();
  }

  return result;
}

- (void)authorizationPresenter:(void *)presenter credentialRequestedForLoginChoice:authenticatedContext:completionHandler:
{
  v2 = presenter[1];
  *presenter = &unk_1F110BAB0;
  presenter[1] = 0;
  if (v2)
  {
  }

  return presenter;
}

- (uint64_t)authorizationPresenter:(WTF *)this credentialRequestedForLoginChoice:(void *)choice authenticatedContext:completionHandler:
{
  v3 = *(this + 1);
  *this = &unk_1F110BAB0;
  *(this + 1) = 0;
  if (v3)
  {
  }

  return WTF::fastFree(this, choice);
}

- (void)authorizationPresenter:(void *)presenter credentialRequestedForLoginChoice:(WTF::StringImpl *)choice authenticatedContext:completionHandler:
{
  v3 = presenter[1];
  *presenter = &unk_1F110BB00;
  presenter[1] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, choice);
  }

  return presenter;
}

- (uint64_t)authorizationPresenter:(WTF *)this credentialRequestedForLoginChoice:(WTF::StringImpl *)choice authenticatedContext:completionHandler:
{
  v3 = *(this + 1);
  *this = &unk_1F110BB00;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, choice);
  }

  return WTF::fastFree(this, choice);
}

- (uint64_t)authorizationPresenter:(uint64_t)presenter validateUserEnteredPIN:completionHandler:
{
  *presenter = &unk_1F110BB50;
  _Block_release(*(presenter + 8));
  return presenter;
}

- (uint64_t)authorizationPresenter:(const void *)presenter validateUserEnteredPIN:completionHandler:
{
  *presenter = &unk_1F110BB50;
  _Block_release(presenter[1]);

  return WTF::fastFree(presenter, v2);
}

- (uint64_t)authorizationPresenter:(uint64_t)presenter validateUserEnteredPIN:(uint64_t)n completionHandler:
{
  v4 = WTF::fastMalloc(0x10);
  v5 = *(presenter + 8);
  *(presenter + 8) = 0;
  *v4 = &unk_1F110BB50;
  v4[1] = v5;
  result = *(n + 64);
  *(n + 64) = v4;
  if (result)
  {
    v7 = *(*result + 8);

    return v7();
  }

  return result;
}

- (void)authorizationPresenter:(void *)presenter validateUserEnteredPIN:(WTF::StringImpl *)n completionHandler:
{
  v3 = presenter[1];
  *presenter = &unk_1F110BB78;
  presenter[1] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, n);
  }

  return presenter;
}

- (uint64_t)authorizationPresenter:(WTF *)this validateUserEnteredPIN:(WTF::StringImpl *)n completionHandler:
{
  v3 = *(this + 1);
  *this = &unk_1F110BB78;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, n);
  }

  return WTF::fastFree(this, n);
}

- (uint64_t)dispatchCoordinatorCallback:(WTF *)this
{
  *this = &unk_1F110BBA0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

- (uint64_t)dispatchCoordinatorCallback:(uint64_t)result
{
  v1 = *(result + 8);
  if (v1)
  {
    if (*(v1 + 8))
    {
      return (*(**(result + 16) + 16))();
    }
  }

  return result;
}

@end
@interface WKASCAuthorizationPresenterDelegate
- (WKASCAuthorizationPresenterDelegate)initWithCoordinator:(void *)a3;
- (uint64_t)authorizationPresenter:(WTF *)this credentialRequestedForLoginChoice:(WTF::StringImpl *)a2 authenticatedContext:completionHandler:;
- (uint64_t)authorizationPresenter:(WTF *)this credentialRequestedForLoginChoice:(void *)a2 authenticatedContext:completionHandler:;
- (uint64_t)authorizationPresenter:(WTF *)this validateUserEnteredPIN:(WTF::StringImpl *)a2 completionHandler:;
- (uint64_t)authorizationPresenter:(const void *)a1 credentialRequestedForLoginChoice:authenticatedContext:completionHandler:;
- (uint64_t)authorizationPresenter:(const void *)a1 validateUserEnteredPIN:completionHandler:;
- (uint64_t)authorizationPresenter:(uint64_t)a1 credentialRequestedForLoginChoice:(uint64_t)a2 authenticatedContext:completionHandler:;
- (uint64_t)authorizationPresenter:(uint64_t)a1 credentialRequestedForLoginChoice:authenticatedContext:completionHandler:;
- (uint64_t)authorizationPresenter:(uint64_t)a1 validateUserEnteredPIN:(uint64_t)a2 completionHandler:;
- (uint64_t)authorizationPresenter:(uint64_t)a1 validateUserEnteredPIN:completionHandler:;
- (uint64_t)dispatchCoordinatorCallback:(WTF *)this;
- (uint64_t)dispatchCoordinatorCallback:(uint64_t)result;
- (void)authorizationPresenter:(id)a3 credentialRequestedForLoginChoice:(id)a4 authenticatedContext:(id)a5 completionHandler:(id)a6;
- (void)authorizationPresenter:(id)a3 validateUserEnteredPIN:(id)a4 completionHandler:(id)a5;
- (void)authorizationPresenter:(void *)a1 credentialRequestedForLoginChoice:(WTF::StringImpl *)a2 authenticatedContext:completionHandler:;
- (void)authorizationPresenter:(void *)a1 credentialRequestedForLoginChoice:authenticatedContext:completionHandler:;
- (void)authorizationPresenter:(void *)a1 validateUserEnteredPIN:(WTF::StringImpl *)a2 completionHandler:;
- (void)dispatchCoordinatorCallback:(void *)a1;
- (void)dispatchCoordinatorCallback:(void *)a3;
@end

@implementation WKASCAuthorizationPresenterDelegate

- (WKASCAuthorizationPresenterDelegate)initWithCoordinator:(void *)a3
{
  v11.receiver = self;
  v11.super_class = WKASCAuthorizationPresenterDelegate;
  v5 = [(WKASCAuthorizationPresenterDelegate *)&v11 init];
  if (v5)
  {
    if (!*a3)
    {
      v6 = WTF::fastCompactMalloc(0x10);
      *v6 = 1;
      *(v6 + 8) = a3;
      v7 = *a3;
      *a3 = v6;
      if (v7)
      {
        if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v7);
          WTF::fastFree(v7, v4);
        }
      }
    }

    v8 = *a3;
    atomic_fetch_add(*a3, 1u);
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

- (void)authorizationPresenter:(id)a3 credentialRequestedForLoginChoice:(id)a4 authenticatedContext:(id)a5 completionHandler:(id)a6
{
  v9 = _Block_copy(a6);
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
    if ([a4 isRegistrationRequest])
    {
      if (a5)
      {
        v14 = a5;
      }

      v15 = WTF::fastMalloc(0x10);
      *v15 = &unk_1F110BAB0;
      *(v15 + 1) = a5;
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

    MEMORY[0x19EB02040](&v26, [a4 name]);
    v20 = v26;
    v26 = 0;
    if (a5)
    {
      v21 = a5;
    }

    v22 = WTF::fastMalloc(0x18);
    *v22 = &unk_1F110BAD8;
    v22[1] = v20;
    v22[2] = a5;
    v25 = v22;
    [(WKASCAuthorizationPresenterDelegate *)self dispatchCoordinatorCallback:&v25];
  }

  else
  {
    WebKit::getASCSecurityKeyPublicKeyCredentialLoginChoiceClass[0](isKindOfClass);
    if ((objc_opt_isKindOfClass() & 1) == 0 || [a4 credentialKind] != 1)
    {
      goto LABEL_20;
    }

    MEMORY[0x19EB02040](&v26, [a4 name]);
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

- (void)authorizationPresenter:(id)a3 validateUserEnteredPIN:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
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
  MEMORY[0x19EB02040](&v16, a4);
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

- (void)dispatchCoordinatorCallback:(void *)a3
{
  WTF::RunLoop::mainSingleton(self);
  m_ptr = self->_coordinator.m_impl.m_ptr;
  if (m_ptr)
  {
    atomic_fetch_add(m_ptr, 1u);
  }

  v6 = *a3;
  *a3 = 0;
  v7 = WTF::fastMalloc(0x18);
  *v7 = &unk_1F110BBA0;
  v7[1] = m_ptr;
  v7[2] = v6;
  v8 = v7;
  WTF::RunLoop::dispatch();
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }
}

- (uint64_t)authorizationPresenter:(uint64_t)a1 credentialRequestedForLoginChoice:authenticatedContext:completionHandler:
{
  *a1 = &unk_1F110BA88;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)authorizationPresenter:(const void *)a1 credentialRequestedForLoginChoice:authenticatedContext:completionHandler:
{
  *a1 = &unk_1F110BA88;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (uint64_t)authorizationPresenter:(uint64_t)a1 credentialRequestedForLoginChoice:(uint64_t)a2 authenticatedContext:completionHandler:
{
  v4 = WTF::fastMalloc(0x10);
  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  *v4 = &unk_1F110BA88;
  v4[1] = v5;
  result = *(a2 + 64);
  *(a2 + 64) = v4;
  if (result)
  {
    v7 = *(*result + 8);

    return v7();
  }

  return result;
}

- (void)authorizationPresenter:(void *)a1 credentialRequestedForLoginChoice:authenticatedContext:completionHandler:
{
  v2 = a1[1];
  *a1 = &unk_1F110BAB0;
  a1[1] = 0;
  if (v2)
  {
  }

  return a1;
}

- (uint64_t)authorizationPresenter:(WTF *)this credentialRequestedForLoginChoice:(void *)a2 authenticatedContext:completionHandler:
{
  v3 = *(this + 1);
  *this = &unk_1F110BAB0;
  *(this + 1) = 0;
  if (v3)
  {
  }

  return WTF::fastFree(this, a2);
}

- (void)authorizationPresenter:(void *)a1 credentialRequestedForLoginChoice:(WTF::StringImpl *)a2 authenticatedContext:completionHandler:
{
  v3 = a1[1];
  *a1 = &unk_1F110BB00;
  a1[1] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return a1;
}

- (uint64_t)authorizationPresenter:(WTF *)this credentialRequestedForLoginChoice:(WTF::StringImpl *)a2 authenticatedContext:completionHandler:
{
  v3 = *(this + 1);
  *this = &unk_1F110BB00;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

- (uint64_t)authorizationPresenter:(uint64_t)a1 validateUserEnteredPIN:completionHandler:
{
  *a1 = &unk_1F110BB50;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)authorizationPresenter:(const void *)a1 validateUserEnteredPIN:completionHandler:
{
  *a1 = &unk_1F110BB50;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (uint64_t)authorizationPresenter:(uint64_t)a1 validateUserEnteredPIN:(uint64_t)a2 completionHandler:
{
  v4 = WTF::fastMalloc(0x10);
  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  *v4 = &unk_1F110BB50;
  v4[1] = v5;
  result = *(a2 + 64);
  *(a2 + 64) = v4;
  if (result)
  {
    v7 = *(*result + 8);

    return v7();
  }

  return result;
}

- (void)authorizationPresenter:(void *)a1 validateUserEnteredPIN:(WTF::StringImpl *)a2 completionHandler:
{
  v3 = a1[1];
  *a1 = &unk_1F110BB78;
  a1[1] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return a1;
}

- (uint64_t)authorizationPresenter:(WTF *)this validateUserEnteredPIN:(WTF::StringImpl *)a2 completionHandler:
{
  v3 = *(this + 1);
  *this = &unk_1F110BB78;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

- (void)dispatchCoordinatorCallback:(void *)a1
{
  *a1 = &unk_1F110BBA0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return a1;
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
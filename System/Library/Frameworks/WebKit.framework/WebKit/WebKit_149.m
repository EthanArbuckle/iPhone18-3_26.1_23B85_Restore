void sub_19DDDEAD0(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  if (v3)
  {
  }

  v7 = *(v2 + 104);
  *(v2 + 104) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(v2 + 96);
  if (v8)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v8, a2);
  }

  v9 = *(v2 + 88);
  *(v2 + 88) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(v2 + 80);
  *(v2 + 80) = 0;
  if (v10)
  {
  }

  v11 = *(v2 + 72);
  *(v2 + 72) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *v5;
  *v5 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(v2 + 48);
  *(v2 + 48) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(v2 + 40);
  *(v2 + 40) = 0;
  if (v14)
  {
  }

  v15 = *(v2 + 32);
  *(v2 + 32) = 0;
  if (v15)
  {
  }

  v16 = *v4;
  *v4 = 0;
  if (v16)
  {
  }

  v17 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v17 && atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v17);
    WTF::fastFree(v17, a2);
  }

  if (*(v2 + 8) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v2, a2);
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void WebKit::AuthenticatorPresenterCoordinator::~AuthenticatorPresenterCoordinator(WebKit::AuthenticatorPresenterCoordinator *this, WTF::StringImpl *a2)
{
  v3 = (this + 72);
  if (*(this + 9))
  {
    WTF::CompletionHandler<void ()(LAContext *)>::operator()(this + 9);
  }

  v4 = (this + 88);
  if (*(this + 11))
  {
    WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse *)>::operator()(this + 11);
  }

  v5 = (this + 104);
  if (*(this + 13))
  {
    v18 = 0;
    WTF::CompletionHandler<void ()(WTF::String const&)>::operator()((this + 104), &v18);
    v6 = v18;
    v18 = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    v7 = *v5;
    *v5 = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  v8 = *(this + 12);
  if (v8)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v8, a2);
  }

  v9 = *v4;
  *v4 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 10);
  *(this + 10) = 0;
  if (v10)
  {
  }

  v11 = *v3;
  *v3 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 8);
  *(this + 8) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(this + 6);
  *(this + 6) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 5);
  *(this + 5) = 0;
  if (v14)
  {
  }

  v15 = *(this + 4);
  *(this + 4) = 0;
  if (v15)
  {
  }

  v16 = *(this + 3);
  *(this + 3) = 0;
  if (v16)
  {
  }

  v17 = *(this + 2);
  *(this + 2) = 0;
  if (v17 && atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v17);
    WTF::fastFree(v17, a2);
  }

  if (*(this + 2) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

void sub_19DDDEFBC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  v13 = *(v10 + 104);
  *(v10 + 104) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(v10 + 96);
  if (v14)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v14, a2);
  }

  v15 = *(v10 + 88);
  *(v10 + 88) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(v10 + 80);
  *(v10 + 80) = 0;
  if (v16)
  {
  }

  v17 = *v11;
  *v11 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(v10 + 64);
  *(v10 + 64) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(v10 + 48);
  *(v10 + 48) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = *(v10 + 40);
  *(v10 + 40) = 0;
  if (v20)
  {
  }

  v21 = *(v10 + 32);
  *(v10 + 32) = 0;
  if (v21)
  {
  }

  v22 = *(v10 + 24);
  *(v10 + 24) = 0;
  if (v22)
  {
  }

  v23 = *(v10 + 16);
  *(v10 + 16) = 0;
  if (v23 && atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v23);
    WTF::fastFree(v23, a2);
  }

  if (*(v10 + 8) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v10, a2);
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

uint64_t WTF::CompletionHandler<void ()(LAContext *)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse *)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void WebKit::AuthenticatorPresenterCoordinator::updatePresenter(uint64_t a1, int a2)
{
  if (a2 <= 4)
  {
    if (a2 <= 1)
    {
      if (a2)
      {
        if (a2 != 1)
        {
          return;
        }

        v5 = objc_alloc(MEMORY[0x1E696ABC0]);
        v19 = [v5 initWithDomain:WebKit::get_AuthenticationServicesCore_ASCAuthorizationErrorDomain(v5) code:5 userInfo:0];
        [*(a1 + 32) updateInterfaceForUserVisibleError:?];
      }

      else
      {
        v7 = objc_alloc(MEMORY[0x1E696ABC0]);
        v19 = [v7 initWithDomain:WebKit::get_AuthenticationServicesCore_ASCAuthorizationErrorDomain(v7) code:4 userInfo:0];
        [*(a1 + 32) updateInterfaceForUserVisibleError:?];
      }
    }

    else if (a2 == 2)
    {
      v9 = objc_alloc(MEMORY[0x1E696ABC0]);
      v19 = [v9 initWithDomain:WebKit::get_AuthenticationServicesCore_ASCAuthorizationErrorDomain(v9) code:10 userInfo:0];
      (*(**(a1 + 64) + 16))(*(a1 + 64), 0);
    }

    else
    {
      if (a2 == 3)
      {
        v12 = objc_alloc(MEMORY[0x1E696ABC0]);
        v19 = [v12 initWithDomain:WebKit::get_AuthenticationServicesCore_ASCAuthorizationErrorDomain(v12) code:9 userInfo:0];
      }

      else
      {
        v3 = objc_alloc(MEMORY[0x1E696ABC0]);
        v19 = [v3 initWithDomain:WebKit::get_AuthenticationServicesCore_ASCAuthorizationErrorDomain(v3) code:8 userInfo:0];
      }

      (*(**(a1 + 64) + 16))(*(a1 + 64), 0);
    }

    goto LABEL_32;
  }

  if (a2 <= 6)
  {
    if (a2 == 5)
    {
      v8 = objc_alloc(MEMORY[0x1E696ABC0]);
      v19 = [v8 initWithDomain:WebKit::get_AuthenticationServicesCore_ASCAuthorizationErrorDomain(v8) code:6 userInfo:0];
    }

    else
    {
      v6 = objc_alloc(MEMORY[0x1E696ABC0]);
      v19 = [v6 initWithDomain:WebKit::get_AuthenticationServicesCore_ASCAuthorizationErrorDomain(v6) code:7 userInfo:0];
    }

    [*(a1 + 32) updateInterfaceForUserVisibleError:?];
LABEL_32:
    if (v19)
    {
    }

    return;
  }

  if (a2 != 7)
  {
    if (a2 == 9)
    {
      v13 = objc_alloc(MEMORY[0x1E696ABC0]);
      v19 = [v13 initWithDomain:WebKit::get_AuthenticationServicesCore_ASCAuthorizationErrorDomain(v13) code:18 userInfo:0];
      (*(**(a1 + 64) + 16))(*(a1 + 64), 0);
    }

    else
    {
      if (a2 != 10)
      {
        return;
      }

      v4 = objc_alloc(MEMORY[0x1E696ABC0]);
      v19 = [v4 initWithDomain:WebKit::get_AuthenticationServicesCore_ASCAuthorizationErrorDomain(v4) code:19 userInfo:0];
      (*(**(a1 + 64) + 16))(*(a1 + 64), 0);
    }

    goto LABEL_32;
  }

  if (*(a1 + 56) != 1)
  {
    v14 = objc_alloc(MEMORY[0x1E696ABC0]);
    v19 = [v14 initWithDomain:WebKit::get_AuthenticationServicesCore_ASCAuthorizationErrorDomain(v14) code:5 userInfo:0];
    v15 = *(a1 + 32);
    v16 = [*(a1 + 24) serviceName];
    v17 = *(a1 + 16);
    if (v17)
    {
      atomic_fetch_add(v17, 1u);
    }

    v18 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
    *v18 = MEMORY[0x1E69E9818];
    v18[1] = 50331650;
    v18[2] = WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::AuthenticatorPresenterCoordinator::updatePresenter(WebKit::WebAuthenticationStatus)::$_0>(WebKit::AuthenticatorPresenterCoordinator::updatePresenter(WebKit::WebAuthenticationStatus)::$_0)::{lambda(void *)#1}::__invoke;
    v18[3] = &WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::AuthenticatorPresenterCoordinator::updatePresenter(WebKit::WebAuthenticationStatus)::$_0>(WebKit::AuthenticatorPresenterCoordinator::updatePresenter(WebKit::WebAuthenticationStatus)::$_0)::descriptor;
    v18[4] = v17;
    [v15 presentError:v19 forService:v16 completionHandler:v18];
    _Block_release(v18);
    goto LABEL_32;
  }

  v10 = *(a1 + 24);
  v20 = [objc_alloc(WebKit::getASCSecurityKeyPublicKeyCredentialLoginChoiceClass[0](a1)) initAssertionPlaceholderChoice];
  [v10 addLoginChoice:?];
  if (v20)
  {
  }

  v11 = *(**(a1 + 48) + 16);

  v11();
}

void sub_19DDDF7D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;
  _Block_release(v11);
  if (a10)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::AuthenticatorPresenterCoordinator::requestPin(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = (a1 + 104);
  if (*(a1 + 104))
  {
    v10 = 0;
    WTF::CompletionHandler<void ()(WTF::String const&)>::operator()((a1 + 104), &v10);
    v7 = v10;
    v10 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v6);
      }
    }
  }

  v8 = *a3;
  *a3 = 0;
  result = *v5;
  *v5 = v8;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if ((*(a1 + 112) & 1) == 0)
  {
    *(a1 + 112) = 1;
    return [*(a1 + 32) presentPINEntryInterface];
  }

  return result;
}

void sub_19DDDF918(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::AuthenticatorPresenterCoordinator::requestNewPin(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = (a1 + 104);
  if (*(a1 + 104))
  {
    v11 = 0;
    WTF::CompletionHandler<void ()(WTF::String const&)>::operator()((a1 + 104), &v11);
    v8 = v11;
    v11 = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }
    }
  }

  v9 = *a3;
  *a3 = 0;
  result = *v6;
  *v6 = v9;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if ((*(a1 + 112) & 1) == 0)
  {
    *(a1 + 112) = 1;
    return [*(a1 + 32) presentNewPINEntryInterfaceWithMinLength:a2];
  }

  return result;
}

void sub_19DDDFA0C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::AuthenticatorPresenterCoordinator::selectAssertionResponse(uint64_t a1, unsigned int *a2, int a3, uint64_t *a4)
{
  v8 = (a1 + 88);
  if (*(a1 + 88))
  {
    WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse *)>::operator()((a1 + 88));
  }

  v9 = *a4;
  *a4 = 0;
  v10 = *v8;
  *v8 = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  if (a3)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = *(a1 + 96);
    if (v13)
    {
      *(a1 + 96) = 0;
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v13, v11);
    }

    v14 = a2[3];
    if (v14)
    {
      v15 = *a2;
      v16 = 8 * v14;
      do
      {
        if (*(*v15 + 144))
        {
          v17 = *(*v15 + 136);
          if (v17)
          {
            v18 = JSC::ArrayBuffer::span(v17);
            v17 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v18 length:v19];
            v20 = v17;
          }

          else
          {
            v20 = 0;
          }

          v21 = objc_alloc(WebKit::getASCSecurityKeyPublicKeyCredentialLoginChoiceClass[0](v17));
          v22 = *(*v15 + 144);
          if (v22)
          {
            atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
            MEMORY[0x19EB00B70](v53, v22);
            if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v22, v23);
            }
          }

          else
          {
            v53[0] = &stru_1F1147748;
            v24 = &stru_1F1147748;
          }

          v25 = v53[0];
          v26 = *(*v15 + 152);
          if (v26)
          {
            atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
            MEMORY[0x19EB00B70](&v54, v26);
            if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v26, v27);
            }
          }

          else
          {
            v54 = &stru_1F1147748;
            v28 = &stru_1F1147748;
          }

          v29 = [v21 initWithName:v25 displayName:v54 userHandle:v20];
          v30 = v54;
          v54 = 0;
          if (v30)
          {
          }

          v31 = v53[0];
          v53[0] = 0;
          if (v31)
          {
          }

          [v12 addObject:{v29, v53[0]}];
          WTF::HashMap<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>(v53, (a1 + 96), (*v15 + 144), v15);
          if (v29)
          {
          }

          if (v20)
          {
          }
        }

        ++v15;
        v16 -= 8;
      }

      while (v16);
    }

    [*(a1 + 32) updateInterfaceWithLoginChoices:v12];
    if (v12)
    {
    }
  }

  else
  {
    v32 = *(a1 + 96);
    if (v32)
    {
      *(a1 + 96) = 0;
      v32 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v32, a2);
    }

    v33 = a2[3];
    if (v33)
    {
      v34 = *a2;
      v35 = 8 * v33;
      do
      {
        v36 = *(*v34 + 136);
        if (v36)
        {
          v37 = JSC::ArrayBuffer::span(v36);
          v36 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v37 length:v38];
          v39 = v36;
        }

        else
        {
          v39 = 0;
        }

        v40 = objc_alloc(WebKit::getASCPlatformPublicKeyCredentialLoginChoiceClass[0](v36));
        v41 = *(*v34 + 144);
        if (v41)
        {
          atomic_fetch_add_explicit(v41, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](v53, v41);
          if (atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v41, v42);
          }
        }

        else
        {
          v53[0] = &stru_1F1147748;
          v43 = &stru_1F1147748;
        }

        v44 = v53[0];
        v45 = *(*v34 + 152);
        if (v45)
        {
          atomic_fetch_add_explicit(v45, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&v54, v45);
          if (atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v45, v46);
          }
        }

        else
        {
          v54 = &stru_1F1147748;
          v47 = &stru_1F1147748;
        }

        v48 = [v40 initWithName:v44 displayName:v54 userHandle:v39];
        v49 = v54;
        v54 = 0;
        if (v49)
        {
        }

        v50 = v53[0];
        v53[0] = 0;
        if (v50)
        {
        }

        [*(a1 + 24) addLoginChoice:{v48, v53[0]}];
        v32 = WTF::HashMap<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>(v53, (a1 + 96), (*v34 + 144), v34);
        if (v48)
        {
        }

        if (v39)
        {
        }

        ++v34;
        v35 -= 8;
      }

      while (v35);
    }

    if (*(a1 + 56))
    {
      v51 = *(a1 + 24);
      v52 = [objc_alloc(WebKit::getASCSecurityKeyPublicKeyCredentialLoginChoiceClass[0](v32)) initAssertionPlaceholderChoice];
      [v51 addLoginChoice:v52];
      if (v52)
      {
      }
    }

    (*(**(a1 + 48) + 16))(*(a1 + 48));
  }
}

void sub_19DDDFE74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WTF::HashMap<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>(uint64_t a1, uint64_t *a2, WTF::StringImpl **a3, uint64_t *a4)
{
  if (*a3 == -1 || !*a3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDE01C0);
  }

  v8 = *a2;
  if (*a2 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a2, 0), (v8 = *a2) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*a3 + 4);
  if (v10 < 0x100)
  {
    v11 = WTF::StringImpl::hashSlowCase(*a3);
  }

  else
  {
    v11 = v10 >> 8;
  }

  v12 = 0;
  for (i = 1; ; ++i)
  {
    v14 = v11 & v9;
    v15 = (v8 + 16 * (v11 & v9));
    v16 = *v15;
    if (*v15 != -1)
    {
      break;
    }

    v12 = (v8 + 16 * v14);
LABEL_14:
    v11 = i + v14;
  }

  if (!v16)
  {
    if (v12)
    {
      *v12 = 0;
      v12[1] = 0;
      --*(*a2 - 16);
      v15 = v12;
    }

    WTF::String::operator=(v15, a3);
    v18 = *a4;
    *a4 = 0;
    result = v15[1];
    v15[1] = v18;
    if (result)
    {
      if (*(result + 2) == 1)
      {
        result = (*(*result + 8))(result);
      }

      else
      {
        --*(result + 2);
      }
    }

    v19 = *a2;
    if (*a2)
    {
      v20 = *(v19 - 12) + 1;
    }

    else
    {
      v20 = 1;
    }

    *(v19 - 12) = v20;
    v23 = (*(v19 - 16) + v20);
    v24 = *(v19 - 4);
    if (v24 > 0x400)
    {
      if (v24 <= 2 * v23)
      {
LABEL_27:
        result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a2, v15);
        v15 = result;
        v19 = *a2;
        if (*a2)
        {
          v24 = *(v19 - 4);
        }

        else
        {
          v24 = 0;
        }
      }
    }

    else if (3 * v24 <= 4 * v23)
    {
      goto LABEL_27;
    }

    v26 = v19 + 16 * v24;
    v25 = 1;
    goto LABEL_34;
  }

  result = WTF::equal(v16, *a3, a3);
  if (!result)
  {
    goto LABEL_14;
  }

  v21 = *a2;
  if (*a2)
  {
    v22 = *(v21 - 4);
  }

  else
  {
    v22 = 0;
  }

  v25 = 0;
  v26 = v21 + 16 * v22;
LABEL_34:
  *a1 = v15;
  *(a1 + 8) = v26;
  *(a1 + 16) = v25;
  return result;
}

uint64_t WebKit::AuthenticatorPresenterCoordinator::requestLAContextForUserVerification(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 80))
  {
    return WTF::CompletionHandler<void ()(LAContext *)>::operator()(a2);
  }

  v4 = *a2;
  *a2 = 0;
  result = *(a1 + 72);
  *(a1 + 72) = v4;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WebKit::AuthenticatorPresenterCoordinator::dimissPresenter(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0 && *(a1 + 64))
  {
    v3 = objc_alloc(WebKit::getASCAppleIDCredentialClass(a1));
    v4 = objc_alloc_init(MEMORY[0x1E695DEF0]);
    v5 = [v3 initWithUser:&stru_1F1147748 identityToken:v4 state:0];
    (*(**(a1 + 64) + 16))(*(a1 + 64), v5, 0);
    if (v5)
    {
    }

    if (v4)
    {
    }
  }

  v6 = *(a1 + 32);

  return [v6 dismissWithError:0];
}

void sub_19DDE0304(_Unwind_Exception *exception_object)
{
  if (v2)
  {
  }

  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::AuthenticatorPresenterCoordinator::setLAContext(WebKit::AuthenticatorPresenterCoordinator *this, LAContext *a2)
{
  v5 = *(this + 9);
  v4 = (this + 72);
  if (v5)
  {

    WTF::CompletionHandler<void ()(LAContext *)>::operator()(v4);
  }

  else
  {
    if (a2)
    {
      v6 = a2;
    }

    v7 = *(this + 10);
    *(this + 10) = a2;
    if (v7)
    {
    }
  }
}

_DWORD *WebKit::AuthenticatorPresenterCoordinator::didSelectAssertionResponse(WebKit::AuthenticatorPresenterCoordinator *this, const WTF::StringImpl **a2, LAContext *a3)
{
  v5 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(this + 12, a2, a3);
  result = WTF::HashMap<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(this + 12, v5, &v7);
  if (v7)
  {
    if (a3)
    {
      WebCore::AuthenticatorAssertionResponse::setLAContext(v7, a3);
    }

    WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse *)>::operator()(this + 11);
    result = v7;
    v7 = 0;
    if (result)
    {
      if (result[2] == 1)
      {
        return (*(*result + 8))(result);
      }

      else
      {
        --result[2];
      }
    }
  }

  return result;
}

void sub_19DDE045C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    if (a10[2] == 1)
    {
      (*(*a10 + 8))(a10);
    }

    else
    {
      --a10[2];
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::CcidConnection::create@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = WTF::fastMalloc(0x50);
  result = WebKit::CcidConnection::CcidConnection(v6, a1, a2);
  *a3 = v6;
  return result;
}

uint64_t WebKit::CcidConnection::CcidConnection(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 3;
  v5 = *a2;
  *a2 = 0;
  *(a1 + 8) = v5;
  v6 = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a3 + 8), a3);
  v7 = *(a3 + 8);
  atomic_fetch_add(v7, 1u);
  *(a1 + 16) = v7;
  v8 = WTF::RunLoop::mainSingleton(v6);
  v9 = v8;
  while (1)
  {
    v10 = *(v8 + 8);
    if ((v10 & 1) == 0)
    {
      break;
    }

    v11 = *(v8 + 8);
    atomic_compare_exchange_strong_explicit((v8 + 8), &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v11 == v10)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v8 + 8));
LABEL_6:
  v12 = WTF::fastMalloc(0x20);
  *v12 = &unk_1F110A878;
  v12[1] = a1;
  v12[2] = WebKit::CcidConnection::startPolling;
  v12[3] = 0;
  WTF::RunLoop::TimerBase::TimerBase();
  *(a1 + 24) = &unk_1F10E6DC8;
  *(a1 + 64) = v12;
  if (v9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v9 + 8));
  }

  *(a1 + 72) = 0;
  WebKit::CcidConnection::detectContactless(a1);
  WebKit::CcidConnection::trySelectFidoApplet(a1);
  return a1;
}

void sub_19DDE0654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = v11;
  (*(*v12 + 8))(v12);
  if (a10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((a10 + 8));
  }

  v15 = *(v10 + 16);
  *(v10 + 16) = 0;
  if (v15 && atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v15);
    WTF::fastFree(v15, v14);
  }

  v16 = *(v10 + 8);
  *(v10 + 8) = 0;
  if (v16)
  {
  }

  _Unwind_Resume(a1);
}

WTF *WebKit::CcidConnection::startPolling(atomic_ullong *this)
{
  WebKit::CcidConnection::detectContactless(this);

  return WebKit::CcidConnection::trySelectFidoApplet(this);
}

void WebKit::CcidConnection::~CcidConnection(WebKit::CcidConnection *this)
{
  v2 = (this + 24);
  *(this + 3) = &unk_1F10E6DC8;
  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::RunLoop::TimerBase::~TimerBase(v2);
  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, v4);
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
  }
}

WTF *WebKit::CcidConnection::detectContactless(atomic_ullong *this)
{
  v2 = WTF::fastMalloc(5);
  v9[1] = 0x500000005;
  v9[0] = v2;
  *v2 = 51967;
  *(v2 + 4) = 0;
  v3 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::controlBlock(this);
  v4 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v3);
  v5 = WTF::fastMalloc(0x18);
  *v5 = &unk_1F110A8A0;
  v5[1] = this;
  v5[2] = v4;
  v8 = v5;
  WebKit::CcidConnection::transact(this, v9, &v8);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  result = v9[0];
  if (v9[0])
  {

    return WTF::fastFree(result, v6);
  }

  return result;
}

void sub_19DDE0914(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a11)
  {
    WTF::fastFree(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::CcidConnection::transact(atomic_ullong *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  while (1)
  {
    v7 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v8 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v7)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_6:
  v9 = *a2;
  v10 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v11 = *a3;
  *a3 = 0;
  v12 = malloc_type_malloc(0x48uLL, 0x10F00405C94DA60uLL);
  *v12 = MEMORY[0x1E69E9818];
  v12[1] = 50331650;
  v12[2] = WTF::BlockPtr<void ()(BOOL,NSError *)>::fromCallable<WebKit::CcidConnection::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0>(WebKit::CcidConnection::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0)::{lambda(void *,BOOL,NSError *)#1}::__invoke;
  v12[3] = &WTF::BlockPtr<void ()(BOOL,NSError *)>::fromCallable<WebKit::CcidConnection::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0>(WebKit::CcidConnection::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0)::descriptor;
  v12[4] = a1;
  v12[5] = a1;
  v12[6] = v9;
  v12[7] = v10;
  v12[8] = v11;
  [v6 beginSessionWithReply:v12];

  _Block_release(v12);
}

WTF *WebKit::CcidConnection::trySelectFidoApplet(atomic_ullong *this)
{
  v2 = WTF::fastMalloc(0xD);
  v9[1] = 0xD0000000DLL;
  v9[0] = v2;
  *v2 = 0xA0080004A400;
  *(v2 + 5) = 0x1002F47060000A0;
  v3 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::controlBlock(this);
  v4 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v3);
  v5 = WTF::fastMalloc(0x18);
  *v5 = &unk_1F110A8C8;
  v5[1] = this;
  v5[2] = v4;
  v8 = v5;
  WebKit::CcidConnection::transact(this, v9, &v8);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  result = v9[0];
  if (v9[0])
  {

    return WTF::fastFree(result, v6);
  }

  return result;
}

void sub_19DDE0BD8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a11)
  {
    WTF::fastFree(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

void WebCore::ScrollingTreeScrollingNode::scrollbarStateForOrientation(void *a1@<X8>)
{
  v1 = MEMORY[0x1E696EB88];
  atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
  *a1 = v1;
}

void WebCore::ScrollingTreeScrollingNodeDelegate::scrollbarStateForOrientation(void *a1@<X8>)
{
  v1 = MEMORY[0x1E696EB88];
  atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
  *a1 = v1;
}

unsigned int *WTF::BlockPtr<void ()(objc_object  {objcproto21ASCCredentialProtocol}*,NSError *)>::fromCallable<WebKit::AuthenticatorPresenterCoordinator::AuthenticatorPresenterCoordinator(WTF::BlockPtr<void ()(objc_object  {objcproto21ASCCredentialProtocol}*,NSError *)>::fromCallable::AuthenticatorManager const&,WTF::String const&,WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore>,WTF::StrongEnumHashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::HashSet::ClientDataType,WTF::String const)::$_0>(WebKit::AuthenticatorPresenterCoordinator::AuthenticatorPresenterCoordinator(WTF::BlockPtr<void ()(objc_object  {objcproto21ASCCredentialProtocol}*,NSError *)>::fromCallable::AuthenticatorManager const&,WTF::String const&,WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore>,WTF::StrongEnumHashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::HashSet::ClientDataType,WTF::String const)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, a2);
    }
  }

  return result;
}

WTF::RunLoop *WTF::BlockPtr<void ()(objc_object  {objcproto21ASCCredentialProtocol}*,NSError *)>::fromCallable<WebKit::AuthenticatorPresenterCoordinator::AuthenticatorPresenterCoordinator(WTF::BlockPtr<void ()(objc_object  {objcproto21ASCCredentialProtocol}*,NSError *)>::fromCallable::AuthenticatorManager const&,WTF::String const&,WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore>,WTF::StrongEnumHashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::HashSet::ClientDataType,WTF::String const)::$_0>(WebKit::AuthenticatorPresenterCoordinator::AuthenticatorPresenterCoordinator(WTF::BlockPtr<void ()(objc_object  {objcproto21ASCCredentialProtocol}*,NSError *)>::fromCallable::AuthenticatorManager const&,WTF::String const&,WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore>,WTF::StrongEnumHashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::HashSet::ClientDataType,WTF::String const)::$_0)::{lambda(void *,objc_object  {objcproto21ASCCredentialProtocol},NSError)#1}::__invoke(WTF::RunLoop *result, uint64_t a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    v3 = result;
    WTF::RunLoop::mainSingleton(result);
    v4 = *(v3 + 4);
    if (v4)
    {
      atomic_fetch_add(v4, 1u);
    }

    v5 = WTF::fastMalloc(0x10);
    *v5 = &unk_1F110A778;
    *(v5 + 1) = v4;
    v6 = v5;
    WTF::RunLoop::dispatch();
    result = v6;
    if (v6)
    {
      return (*(*v6 + 8))(v6);
    }
  }

  return result;
}

void sub_19DDE0D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::AuthenticatorPresenterCoordinator::AuthenticatorPresenterCoordinator(WebKit::AuthenticatorManager const&,WTF::String const&,WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WebCore::ClientDataType,WTF::String const&)::$_0::operator()(objc_object  {objcproto21ASCCredentialProtocol}*,NSError *)::{lambda(void)#1},void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F110A778;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::AuthenticatorPresenterCoordinator::AuthenticatorPresenterCoordinator(WebKit::AuthenticatorManager const&,WTF::String const&,WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WebCore::ClientDataType,WTF::String const&)::$_0::operator()(objc_object  {objcproto21ASCCredentialProtocol}*,NSError *)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110A778;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WebKit::AuthenticatorManager *WTF::Detail::CallableWrapper<WebKit::AuthenticatorPresenterCoordinator::AuthenticatorPresenterCoordinator(WebKit::AuthenticatorManager const&,WTF::String const&,WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WebCore::ClientDataType,WTF::String const&)::$_0::operator()(objc_object  {objcproto21ASCCredentialProtocol}*,NSError *)::{lambda(void)#1},void>::call(WebKit::AuthenticatorManager *result)
{
  v1 = *(result + 1);
  if (v1)
  {
    result = *(v1 + 8);
    if (result)
    {
      return WebKit::AuthenticatorManager::cancel(result);
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1;
    do
    {
      v5 = *v4;
      if (*v4 != -1)
      {
        v6 = *(v4 + 8);
        *(v4 + 8) = 0;
        if (v6)
        {
          if (v6[2] == 1)
          {
            (*(*v6 + 8))(v6);
            v5 = *v4;
          }

          else
          {
            --v6[2];
          }
        }

        *v4 = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }
      }

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

unsigned int *WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::AuthenticatorPresenterCoordinator::updatePresenter(WebKit::WebAuthenticationStatus)::$_0>(WebKit::AuthenticatorPresenterCoordinator::updatePresenter(WebKit::WebAuthenticationStatus)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, a2);
    }
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::AuthenticatorPresenterCoordinator::updatePresenter(WebKit::WebAuthenticationStatus)::$_0>(WebKit::AuthenticatorPresenterCoordinator::updatePresenter(WebKit::WebAuthenticationStatus)::$_0)::{lambda(void *)#1}::__invoke(WTF::RunLoop *a1)
{
  WTF::RunLoop::mainSingleton(a1);
  v2 = *(a1 + 4);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  v3 = WTF::fastMalloc(0x10);
  *v3 = &unk_1F110A7C0;
  v3[1] = v2;
  v5 = v3;
  WTF::RunLoop::dispatch();
  result = v5;
  if (v5)
  {
    return (*(*v5 + 8))(v5);
  }

  return result;
}

void sub_19DDE1068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::AuthenticatorPresenterCoordinator::updatePresenter(WebKit::WebAuthenticationStatus)::$_0::operator() const(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F110A7C0;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::AuthenticatorPresenterCoordinator::updatePresenter(WebKit::WebAuthenticationStatus)::$_0::operator() const(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110A7C0;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WebKit::AuthenticatorManager *WTF::Detail::CallableWrapper<WebKit::AuthenticatorPresenterCoordinator::updatePresenter(WebKit::WebAuthenticationStatus)::$_0::operator() const(void)::{lambda(void)#1},void>::call(WebKit::AuthenticatorManager *result)
{
  v1 = *(result + 1);
  if (v1)
  {
    result = *(v1 + 8);
    if (result)
    {
      return WebKit::AuthenticatorManager::cancel(result);
    }
  }

  return result;
}

atomic_ullong *WTF::BlockPtr<void ()(BOOL,NSError *)>::fromCallable<WebKit::CcidConnection::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0>(WebKit::CcidConnection::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    WTF::fastFree(v4, a2);
  }

  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::CcidConnection,(WTF::DestructionThread)0>::deref(result, a2);
  }

  return result;
}

void WTF::BlockPtr<void ()(BOOL,NSError *)>::fromCallable<WebKit::CcidConnection::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0>(WebKit::CcidConnection::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0)::{lambda(void *,BOOL,NSError *)#1}::__invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = v3[1];
    v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:*(a1 + 48) length:*(a1 + 60)];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    while (1)
    {
      v8 = *v3;
      if ((*v3 & 1) == 0)
      {
        break;
      }

      v9 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v9 == v8)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_9:
    v10 = *(a1 + 64);
    *(a1 + 64) = 0;
    v11 = malloc_type_malloc(0x38uLL, 0x10E0040746F16D1uLL);
    *v11 = MEMORY[0x1E69E9818];
    v11[1] = 50331650;
    v11[2] = WTF::BlockPtr<void ()(NSData *,NSError *)>::fromCallable<WebKit::CcidConnection::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0::operator()(BOOL,NSError *)::{lambda(NSData *,NSError *)#1}>(WebKit::CcidConnection::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0::operator()(BOOL,NSError *)::{lambda(NSData *,NSError *)#1})::{lambda(void *,NSData *,NSError *)#1}::__invoke;
    v11[3] = &WTF::BlockPtr<void ()(NSData *,NSError *)>::fromCallable<WebKit::CcidConnection::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0::operator()(BOOL,NSError *)::{lambda(NSData *,NSError *)#1}>(WebKit::CcidConnection::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0::operator()(BOOL,NSError *)::{lambda(NSData *,NSError *)#1})::descriptor;
    v11[4] = v3;
    v11[5] = v3;
    v11[6] = v10;
    [v4 transmitRequest:v6 reply:v11];

    _Block_release(v11);
  }
}

atomic_ullong *WTF::BlockPtr<void ()(NSData *,NSError *)>::fromCallable<WebKit::CcidConnection::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0::operator()(BOOL,NSError *)::{lambda(NSData *,NSError *)#1}>(WebKit::CcidConnection::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0::operator()(BOOL,NSError *)::{lambda(NSData *,NSError *)#1})::{lambda(void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::CcidConnection,(WTF::DestructionThread)0>::deref(result, a2);
  }

  return result;
}

unint64_t WTF::BlockPtr<void ()(NSData *,NSError *)>::fromCallable<WebKit::CcidConnection::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0::operator()(BOOL,NSError *)::{lambda(NSData *,NSError *)#1}>(WebKit::CcidConnection::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0::operator()(BOOL,NSError *)::{lambda(NSData *,NSError *)#1})::{lambda(void *,NSData *,NSError *)#1}::__invoke(uint64_t a1, void *a2)
{
  [*(*(a1 + 32) + 8) endSession];
  if (a2)
  {
    v4 = [a2 bytes];
    result = [a2 length];
    v6 = result;
    if (result)
    {
      if (HIDWORD(result))
      {
        __break(0xC471u);
        return result;
      }

      v7 = WTF::fastMalloc(result);
      a2 = v7;
      v8 = 0;
      do
      {
        *(v7 + v8) = *(v4 + v8);
        ++v8;
      }

      while (v6 != v8);
    }

    else
    {
      a2 = 0;
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  v9 = *(a1 + 48);
  *(a1 + 48) = 0;
  v10 = WTF::fastMalloc(0x20);
  *v10 = &unk_1F110A828;
  *(v10 + 8) = a2;
  *(v10 + 16) = v6;
  *(v10 + 20) = v6;
  *(v10 + 24) = v9;
  v11 = v10;
  WTF::callOnMainRunLoop();
  result = v11;
  if (v11)
  {
    return (*(*v11 + 8))(v11);
  }

  return result;
}

void sub_19DDE1564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CcidConnection::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0::operator()(BOOL,NSError *)::{lambda(NSData *,$_0)#1}::operator()(NSError *,$_0)::{lambda(void)#1},void>::~CallableWrapper(uint64_t a1, void *a2)
{
  *a1 = &unk_1F110A828;
  v3 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CcidConnection::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0::operator()(BOOL,NSError *)::{lambda(NSData *,$_0)#1}::operator()(NSError *,$_0)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110A828;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 1) = 0;
    *(this + 4) = 0;
    WTF::fastFree(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::AuthenticatorPresenterCoordinator::AuthenticatorPresenterCoordinator(WebKit::AuthenticatorManager const&,WTF::String const&,WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WebCore::ClientDataType,WTF::String const&)::$_1,void>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F110A850;
  _Block_release(*(a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::AuthenticatorPresenterCoordinator::AuthenticatorPresenterCoordinator(WebKit::AuthenticatorManager const&,WTF::String const&,WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WebCore::ClientDataType,WTF::String const&)::$_1,void>::~CallableWrapper(const void **a1)
{
  *a1 = &unk_1F110A850;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1 && (v4 = *(v3 - 4)) != 0)
  {
    v5 = v4 << (6 * *(v3 - 12) >= (2 * v4));
  }

  else
  {
    v5 = 8;
  }

  return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = v6 + 16 * v11;
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
        {
          v16 = *a1;
          if (*a1)
          {
            v17 = *(v16 - 8);
          }

          else
          {
            v17 = 0;
          }

          v18 = *(v14 + 4);
          if (v18 < 0x100)
          {
            v19 = WTF::StringImpl::hashSlowCase(v14);
          }

          else
          {
            v19 = v18 >> 8;
          }

          v20 = 0;
          do
          {
            v21 = v19 & v17;
            v19 = ++v20 + v21;
          }

          while (*(v16 + 16 * v21));
          v22 = v16 + 16 * v21;
          v23 = *(v22 + 8);
          *(v22 + 8) = 0;
          if (v23)
          {
            if (v23[2] != 1)
            {
              --v23[2];
              goto LABEL_24;
            }

            (*(*v23 + 8))(v23);
            v28 = *v22;
            *v22 = 0;
            if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v28, v10);
            }
          }

          else
          {
LABEL_24:
            *v22 = 0;
          }

          v24 = *v13;
          *v13 = 0;
          *v22 = v24;
          v25 = *(v13 + 8);
          *(v13 + 8) = 0;
          *(v22 + 8) = v25;
          v26 = *(v13 + 8);
          *(v13 + 8) = 0;
          if (v26)
          {
            if (v26[2] == 1)
            {
              (*(*v26 + 8))(v26);
            }

            else
            {
              --v26[2];
            }
          }

          v27 = *v13;
          *v13 = 0;
          if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v27, v10);
          }

          if (v13 == a3)
          {
            v12 = v22;
          }

          goto LABEL_33;
        }

        v15 = *(v13 + 8);
        *(v13 + 8) = 0;
        if (v15)
        {
          if (v15[2] == 1)
          {
            (*(*v15 + 8))(v15);
            v14 = *v13;
          }

          else
          {
            --v15[2];
          }
        }

        *v13 = 0;
        if (v14)
        {
          if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v10);
          }
        }
      }

LABEL_33:
      if (++v11 == v7)
      {
        goto LABEL_42;
      }
    }
  }

  v12 = 0;
  result = 0;
  if (v6)
  {
LABEL_42:
    WTF::fastFree((v6 - 16), v10);
    return v12;
  }

  return result;
}

uint64_t *WTF::HashMap<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take@<X0>(uint64_t *result@<X0>, WTF::StringImpl *a2@<X1>, void *a3@<X8>)
{
  v4 = *result;
  if (*result)
  {
    v4 += 16 * *(v4 - 4);
  }

  if (v4 == a2)
  {
    *a3 = 0;
    return result;
  }

  v5 = *(a2 + 1);
  *(a2 + 1) = 0;
  *a3 = v5;
  if (*result)
  {
    v6 = *result + 16 * *(*result - 4);
    if (v6 == a2)
    {
      return result;
    }
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v6 = 0;
  }

  if (v6 != a2)
  {
    return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::remove(result, a2);
  }

  return result;
}

void sub_19DDE1AFC(_Unwind_Exception *exception_object)
{
  *v1 = 0;
  if (v2)
  {
    if (v2[2] == 1)
    {
      (*(*v2 + 8))(v2);
    }

    else
    {
      --v2[2];
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::remove(uint64_t *a1, WTF::StringImpl *a2)
{
  result = WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>>::customDeleteBucket(a2, a2);
  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

_DWORD *WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>>::customDeleteBucket(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *a1;
  *a1 = -1;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  result = *(a1 + 8);
  *(a1 + 8) = 0;
  if (result)
  {
    if (result[2] == 1)
    {
      v5 = *(*result + 8);

      return v5();
    }

    else
    {
      --result[2];
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(uint64_t *a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v6 = *a2;
  if (*a2 == -1 || !v6)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDE1D64);
  }

  v7 = *(v3 - 8);
  v8 = *(v6 + 4);
  if (v8 < 0x100)
  {
    v9 = WTF::StringImpl::hashSlowCase(v6);
  }

  else
  {
    v9 = v8 >> 8;
  }

  for (i = 0; ; v9 = i + v11)
  {
    v11 = v9 & v7;
    v12 = *(v3 + 16 * v11);
    if (v12 == -1)
    {
      goto LABEL_10;
    }

    if (!v12)
    {
      break;
    }

    if (WTF::equal(v12, *a2, a3))
    {
      return v3 + 16 * v11;
    }

LABEL_10:
    ++i;
  }

  if (*a1)
  {
    return *a1 + 16 * *(*a1 - 4);
  }

  else
  {
    return 0;
  }
}

atomic_ullong *WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::CcidConnection>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::CcidConnection *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    while (1)
    {
      v3 = *v2;
      if ((*v2 & 1) == 0)
      {
        break;
      }

      v4 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v4 == v3)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
  }

LABEL_6:
  v5 = a1[2];
  v6 = a1[3];
  v7 = (a1[1] + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  result = v5(v7);
  if (v2)
  {

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::CcidConnection,(WTF::DestructionThread)0>::deref(v2, v9);
  }

  return result;
}

void sub_19DDE1E2C(_Unwind_Exception *exception_object, void *a2)
{
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::CcidConnection,(WTF::DestructionThread)0>::deref(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::CcidConnection::detectContactless(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110A8A0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CcidConnection::detectContactless(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110A8A0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::CcidConnection::detectContactless(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::call(atomic_ullong *result, uint64_t a2)
{
  v3 = result[2];
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v5, v3, result[1]);
    result = v5;
    if (v5)
    {
      if (*(a2 + 12) >= 3u)
      {
        *(v5 + 72) = 1;
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::CcidConnection,(WTF::DestructionThread)0>::deref(result, v4);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::CcidConnection::trySelectFidoApplet(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110A8C8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CcidConnection::trySelectFidoApplet(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110A8C8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::CcidConnection::trySelectFidoApplet(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::call(atomic_ullong *result, uint64_t **a2)
{
  v3 = result[2];
  if (!v3)
  {
    return result;
  }

  v4 = result;
  result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v22, v3, result[1]);
  v6 = v22;
  if (!v22)
  {
    return result;
  }

  v7 = *a2;
  v8 = *(a2 + 3);
  if (v8 == 10)
  {
    v13 = *v7;
    v14 = *(v7 + 4);
    if (v13 != 0x305F325F4F444946 || v14 != 144)
    {
      goto LABEL_6;
    }

LABEL_16:
    v16 = v22[2];
    if (v16)
    {
      v17 = *(v16 + 8);
      if (v17)
      {
        ++*(v17 + 6);
        WebKit::CcidService::didConnectTag(v17);
        if (*(v17 + 6) == 1)
        {
          (*(*v17 + 24))(v17);
        }

        else
        {
          --*(v17 + 6);
        }
      }
    }

    goto LABEL_20;
  }

  if (v8 == 8 && *v7 == 0x9032565F463255)
  {
    goto LABEL_16;
  }

LABEL_6:
  v21 = 13;
  v9 = WTF::fastMalloc(0xD);
  v20 = 13;
  v19 = v9;
  *v9 = 0xA0080004A400;
  *(v9 + 5) = 0x1002F47060000A0;
  v11 = v4[1];
  v10 = v4[2];
  v4[1] = 0;
  v4[2] = 0;
  v12 = WTF::fastMalloc(0x18);
  *v12 = &unk_1F110A8F0;
  v12[1] = v11;
  v12[2] = v10;
  v18 = v12;
  WebKit::CcidConnection::transact(v6, &v19, &v18);
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  if (v19)
  {
    WTF::fastFree(v19, v5);
  }

LABEL_20:

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::CcidConnection,(WTF::DestructionThread)0>::deref(v6, v5);
}

void sub_19DDE2208(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10)
{
  v12 = v11;
  v14 = v12;
  v15 = v12[6] - 1;
  if (v15)
  {
    v14[6] = v15;
  }

  else
  {
    (*(*v14 + 24))(v14);
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::CcidConnection,(WTF::DestructionThread)0>::deref(v10, a2);
  _Unwind_Resume(a1);
}

void *WTF::Detail::CallableWrapper<WebKit::CcidConnection::trySelectFidoApplet(void)::$_0::operator()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)#1},void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110A8F0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CcidConnection::trySelectFidoApplet(void)::$_0::operator()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)#1},void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110A8F0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::CcidConnection::trySelectFidoApplet(void)::$_0::operator()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)#1},void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::call(atomic_ullong *result, uint64_t a2)
{
  v3 = result[2];
  if (v3)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v8, v3, result[1]);
    v5 = v8;
    if (v8)
    {
      if (*(a2 + 12) == 8 && **a2 == 0x9032565F463255)
      {
        v6 = v8[2];
        if (v6)
        {
          v7 = *(v6 + 8);
          if (v7)
          {
            ++*(v7 + 6);
            WebKit::CcidService::didConnectTag(v7);
            if (*(v7 + 6) == 1)
            {
              (*(*v7 + 24))(v7);
            }

            else
            {
              --*(v7 + 6);
            }
          }
        }
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::CcidConnection,(WTF::DestructionThread)0>::deref(v5, v4);
    }
  }

  return result;
}

void sub_19DDE2468(_Unwind_Exception *a1, void *a2)
{
  if (v3[6] == 1)
  {
    (*(*v3 + 24))(v3);
  }

  else
  {
    --v3[6];
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::CcidConnection,(WTF::DestructionThread)0>::deref(v2, a2);
  _Unwind_Resume(a1);
}

uint64_t WebKit::FileSystemStorageHandleRegistry::operator new(WebKit::FileSystemStorageHandleRegistry *this, void *a2)
{
  if (WebKit::FileSystemStorageHandleRegistry::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::FileSystemStorageHandleRegistry::s_heapRef, a2);
  }

  else
  {
    return WebKit::FileSystemStorageHandleRegistry::operatorNewSlow(0x18);
  }
}

uint64_t *WebKit::FileSystemStorageHandleRegistry::unregisterHandle(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>( (a1 + 16),  &v6);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (v4 + 16 * *(v4 - 4));
    if (v5 == result)
    {
      return result;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v5 = 0;
  }

  if (v5 != result)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove((a1 + 16), result);
  }

  return result;
}

uint64_t WebKit::FileSystemStorageHandleRegistry::getHandle(uint64_t a1, void *a2)
{
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDE2648);
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 - 8);
  v4 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
  v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
  v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
  v7 = v3 & ((v6 >> 31) ^ v6);
  v8 = *(v2 + 16 * v7);
  if (v8 != a2)
  {
    v9 = 1;
    while (v8)
    {
      v7 = (v7 + v9) & v3;
      v8 = *(v2 + 16 * v7);
      ++v9;
      if (v8 == a2)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  v10 = *(v2 + 16 * v7 + 8);
  if (!v10)
  {
    return 0;
  }

  atomic_fetch_add(v10, 1u);
  v11 = *(v10 + 8);
  if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10);
    WTF::fastFree(v10, a2);
  }

  return v11;
}

unsigned int *WebKit::FileSystemStorageManager::create@<X0>(uint64_t *a1@<X0>, atomic_uint *volatile *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = WebKit::FileSystemStorageManager::operator new(0x40, a2);
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = *a1;
  *a1 = 0;
  *(v8 + 16) = v9;
  result = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2, a2);
  v11 = *a2;
  atomic_fetch_add(*a2, 1u);
  v12 = *a3;
  *a3 = 0;
  *(v8 + 24) = v11;
  *(v8 + 32) = v12;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 40) = 0;
  *a4 = v8;
  return result;
}

uint64_t WebKit::FileSystemStorageManager::operator new(WebKit::FileSystemStorageManager *this, void *a2)
{
  if (this == 64 && WebKit::FileSystemStorageManager::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::FileSystemStorageManager::s_heapRef, a2);
  }

  else
  {
    return WebKit::FileSystemStorageManager::operatorNewSlow(this);
  }
}

void WebKit::FileSystemStorageManager::~FileSystemStorageManager(WebKit::FileSystemStorageManager *this)
{
  WebKit::FileSystemStorageManager::close(this);
  v3 = *(this + 7);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::FileSystemStorageManagerLock>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::FileSystemStorageManagerLock>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::FileSystemStorageManagerLock,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::FileSystemStorageManagerLock>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, v2);
  }

  v4 = *(this + 6);
  if (v4)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v4, v2);
  }

  v5 = *(this + 5);
  if (v5)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashCountedSet<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashCountedSet<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashCountedSet<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashCountedSet<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable( v5,  v2);
  }

  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 3);
  *(this + 3) = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, v2);
  }

  v8 = *(this + 2);
  *(this + 2) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v2);
  }

  if (*(this + 2) == 1)
  {

    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this, v2);
  }

  else
  {
    __break(0xC471u);
  }
}

WTF::StringImpl **WebKit::FileSystemStorageManager::close(WebKit::FileSystemStorageManager *this)
{
  v1 = this;
  v3 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 5);
  v4 = *(v1 + 5);
  if (v4)
  {
    v5 = (v4 + 16 * *(v4 - 4));
  }

  else
  {
    v5 = 0;
  }

  if (v5 != v3)
  {
    v39 = v5;
    v40 = v2;
    v41 = v1;
    while (1)
    {
      v6 = v3[1];
      if (v6)
      {
        v7 = *(v6 - 4);
        v8 = (v6 + 8 * v7);
        if (*(v6 - 12))
        {
          if (v7)
          {
            v9 = 8 * v7;
            v10 = v3[1];
            while ((*v10 + 1) <= 1)
            {
              ++v10;
              v9 -= 8;
              if (!v9)
              {
                v10 = v8;
                break;
              }
            }
          }

          else
          {
            v10 = v3[1];
          }

LABEL_18:
          v11 = (v6 + 8 * *(v6 - 4));
          goto LABEL_19;
        }
      }

      else
      {
        v8 = 0;
        v7 = 0;
      }

      v10 = v8;
      v8 = (v6 + 8 * v7);
      if (v6)
      {
        goto LABEL_18;
      }

      v11 = 0;
LABEL_19:
      while (v10 != v11)
      {
        v46 = *v10;
        v12 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>( v1 + 6,  &v46);
        WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(v1 + 6, v12, &v45);
        v13 = *(v1 + 3);
        if (v13)
        {
          v14 = *(v13 + 8);
          if (v14)
          {
            v15 = (v14 + 8);
            ++*(v14 + 8);
            WebKit::FileSystemStorageHandleRegistry::unregisterHandle(v14, v46);
            WTF::RefCounted<WebKit::FileSystemStorageHandleRegistry>::deref(v15, v16);
          }
        }

        v17 = v45;
        if (*(v45 + 72) == 1)
        {
          v18 = *(v45 + 7);
          IPC::Connection::connection(*v3, &v48);
          v20 = v48;
          if (v48)
          {
            v21 = IPC::Encoder::operator new(0x238, v19);
            *v21 = 2009;
            *(v21 + 68) = 0;
            *(v21 + 70) = 0;
            *(v21 + 69) = 0;
            *(v21 + 2) = 0;
            *(v21 + 3) = 0;
            *(v21 + 1) = 0;
            IPC::Encoder::encodeHeader(v21);
            v42 = v21;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v21, v18);
            IPC::Connection::sendMessageImpl(v20, &v42, 0, 0);
            v23 = v42;
            v42 = 0;
            if (v23)
            {
              IPC::Encoder::~Encoder(v23, v22);
              bmalloc::api::tzoneFree(v36, v37);
            }

            v24 = v48;
            v48 = 0;
            if (v24)
            {
              WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v24);
            }
          }

          v17 = v45;
        }

        WebKit::FileSystemStorageHandle::writables(v17, &v42);
        v25 = v42;
        if (v44)
        {
          v26 = v11;
          v27 = 8 * v44;
          do
          {
            v28 = *v25;
            IPC::Connection::connection(*v3, &v47);
            v29 = v47;
            if (v47)
            {
              v30 = IPC::Encoder::operator new(0x238, v2);
              *v30 = 2010;
              *(v30 + 68) = 0;
              *(v30 + 70) = 0;
              *(v30 + 69) = 0;
              *(v30 + 2) = 0;
              *(v30 + 3) = 0;
              *(v30 + 1) = 0;
              IPC::Encoder::encodeHeader(v30);
              v48 = v30;
              IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v30, v28);
              IPC::Connection::sendMessageImpl(v29, &v48, 0, 0);
              v31 = v48;
              v48 = 0;
              if (v31)
              {
                IPC::Encoder::~Encoder(v31, v2);
                bmalloc::api::tzoneFree(v33, v34);
              }

              v32 = v47;
              v47 = 0;
              if (v32)
              {
                WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v32);
              }
            }

            v25 = (v25 + 8);
            v27 -= 8;
          }

          while (v27);
          v11 = v26;
          v1 = v41;
          v25 = v42;
        }

        if (v25)
        {
          v42 = 0;
          v43 = 0;
          WTF::fastFree(v25, v2);
        }

        v35 = v45;
        v45 = 0;
        if (v35)
        {
          WTF::RefCounted<WebKit::FileSystemStorageHandle>::deref(v35, v2);
        }

        do
        {
          ++v10;
        }

        while (v10 != v8 && (*v10 + 1) <= 1);
      }

        ;
      }

      if (v3 == v39)
      {
        v4 = *(v1 + 5);
        break;
      }
    }
  }

  if (v4)
  {
    *(v1 + 5) = 0;
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashCountedSet<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashCountedSet<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashCountedSet<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashCountedSet<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable( v4,  v2);
  }

  result = *(v1 + 7);
  if (result)
  {
    *(v1 + 7) = 0;
    return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::FileSystemStorageManagerLock>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::FileSystemStorageManagerLock>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::FileSystemStorageManagerLock,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::FileSystemStorageManagerLock>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(result, v2);
  }

  return result;
}

unint64_t WebKit::FileSystemStorageManager::allocatedUnusedCapacity(WebKit::FileSystemStorageManager *this)
{
  v2 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 6);
  v4 = v2;
  v5 = v3;
  v6 = *(this + 6);
  if (v6)
  {
    v7 = (v6 + 16 * *(v6 - 4));
  }

  else
  {
    v7 = 0;
  }

  if (v7 == v2)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = *(v4 + 1);
    if (*(v10 + 72) == 1)
    {
      result = WTF::FileSystemImpl::fileSize((v10 + 40), v3);
      if ((*(v10 + 72) & 1) == 0)
      {
        __break(1u);
        return result;
      }

      if (v3)
      {
        v12 = result;
      }

      else
      {
        v12 = 0;
      }

      v13 = *(v10 + 64);
      v15 = v13 >= v12;
      v14 = v13 - v12;
      if (!v15)
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = __CFADD__(v8, v14);
    v16 = v8 + v14;
    if (v15)
    {
      v9 = 1;
    }

    if (!v15)
    {
      v8 = v16;
    }

    do
    {
      v4 = (v4 + 16);
    }

    while (v4 != v5 && (*v4 + 1) <= 1);
  }

  while (v4 != v7);
  if (v9)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t WebKit::FileSystemStorageManager::createHandle@<X0>(WTF::FileSystemImpl *this@<X3>, uint64_t result@<X0>, const WTF::String *a3@<X1>, _BOOL8 a4@<X2>, uint64_t *a5@<X4>, char a6@<W5>, char *a7@<X8>)
{
  if (!*this || !*(*this + 4))
  {
    goto LABEL_29;
  }

  v13 = result;
  result = WTF::FileSystemImpl::fileExists(this, a3);
  if ((a6 & 1) == 0 && (result & 1) == 0)
  {
    v15 = 2;
LABEL_30:
    *a7 = v15;
    a7[8] = 1;
    return result;
  }

  if (result)
  {
    result = WTF::FileSystemImpl::fileType(this, v14);
    if ((result & 0x100000000) == 0)
    {
LABEL_29:
      v15 = 10;
      goto LABEL_30;
    }

    v16 = result != 0;
    if (a4 != 2)
    {
      v17 = v16 == a4;
      v16 = a4;
      if (!v17)
      {
        v15 = 8;
        goto LABEL_30;
      }
    }
  }

  else
  {
    v16 = a4;
  }

  result = WebKit::FileSystemStorageHandle::create(this, v13, v16, a5, &v80);
  v19 = v80;
  if (!v80)
  {
    goto LABEL_29;
  }

  if (a3 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDE31F0);
  }

  if (!a3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDE3210);
  }

  v20 = *(v80 + 16);
  v21 = *(v13 + 40);
  if (!v21)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand( (v13 + 40),  0);
    v21 = *(v13 + 40);
  }

  v22 = *(v21 - 8);
  v23 = (a3 + ~(a3 << 32)) ^ ((a3 + ~(a3 << 32)) >> 22);
  v24 = 9 * ((v23 + ~(v23 << 13)) ^ ((v23 + ~(v23 << 13)) >> 8));
  v25 = (v24 ^ (v24 >> 15)) + ~((v24 ^ (v24 >> 15)) << 27);
  v26 = v22 & ((v25 >> 31) ^ v25);
  v27 = (v21 + 16 * v26);
  v28 = *v27;
  if (!*v27)
  {
LABEL_25:
    v31 = v27[1];
    *v27 = a3;
    v27[1] = 0;
    if (v31)
    {
      WTF::fastFree((v31 - 16), v18);
    }

    v32 = *(v13 + 40);
    if (v32)
    {
      v33 = *(v32 - 12) + 1;
    }

    else
    {
      v33 = 1;
    }

    *(v32 - 12) = v33;
    v34 = (*(v32 - 16) + v33);
    v35 = *(v32 - 4);
    if (v35 > 0x400)
    {
      if (v35 > 2 * v34)
      {
        goto LABEL_36;
      }
    }

    else if (3 * v35 > 4 * v34)
    {
      goto LABEL_36;
    }

    v27 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand( (v13 + 40),  v27);
    goto LABEL_36;
  }

  v29 = 0;
  v30 = 1;
  while (v28 != a3)
  {
    if (v28 == -1)
    {
      v29 = v27;
    }

    v26 = (v26 + v30) & v22;
    v27 = (v21 + 16 * v26);
    v28 = *v27;
    ++v30;
    if (!*v27)
    {
      if (v29)
      {
        *v29 = 0;
        v29[1] = 0;
        --*(*(v13 + 40) - 16);
        v27 = v29;
      }

      goto LABEL_25;
    }
  }

LABEL_36:
  if (v20 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDE3230);
  }

  if (!v20)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDE3250);
  }

  v36 = v27[1];
  if (!v36)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v27 + 1, 0);
    v36 = v27[1];
  }

  v37 = *(v36 - 8);
  v38 = (v20 + ~(v20 << 32)) ^ ((v20 + ~(v20 << 32)) >> 22);
  v39 = 9 * ((v38 + ~(v38 << 13)) ^ ((v38 + ~(v38 << 13)) >> 8));
  v40 = (v39 ^ (v39 >> 15)) + ~((v39 ^ (v39 >> 15)) << 27);
  v41 = (v40 >> 31) ^ v40;
  v42 = v37 & v41;
  v43 = (v36 + 8 * (v37 & v41));
  v44 = *v43;
  if (!*v43)
  {
LABEL_48:
    *v43 = v20;
    v47 = v27[1];
    if (v47)
    {
      v48 = *(v47 - 12) + 1;
    }

    else
    {
      v48 = 1;
    }

    *(v47 - 12) = v48;
    v49 = (*(v47 - 16) + v48);
    v50 = *(v47 - 4);
    if (v50 > 0x400)
    {
      if (v50 > 2 * v49)
      {
        goto LABEL_54;
      }
    }

    else if (3 * v50 > 4 * v49)
    {
      goto LABEL_54;
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v27 + 1, v43);
    goto LABEL_54;
  }

  v45 = 0;
  v46 = 1;
  while (v44 != v20)
  {
    if (v44 == -1)
    {
      v45 = v43;
    }

    v42 = (v42 + v46) & v37;
    v43 = (v36 + 8 * v42);
    v44 = *v43;
    ++v46;
    if (!*v43)
    {
      if (v45)
      {
        *v45 = 0;
        --*(v27[1] - 16);
        v43 = v45;
      }

      goto LABEL_48;
    }
  }

LABEL_54:
  v51 = *(v13 + 24);
  if (v51)
  {
    v52 = *(v51 + 8);
    if (v52)
    {
      v54 = *(v52 + 8);
      v53 = v52 + 8;
      *v53 = v54 + 1;
      v55 = *(v53 + 8);
      if (!v55)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v53 + 8), 0);
        v55 = *(v53 + 8);
      }

      v56 = *(v55 - 8);
      v57 = v56 & v41;
      v58 = (v55 + 16 * (v56 & v41));
      v59 = *v58;
      if (*v58)
      {
        v60 = 0;
        v61 = 1;
        while (v59 != v20)
        {
          if (v59 == -1)
          {
            v60 = v58;
          }

          v57 = (v57 + v61) & v56;
          v58 = (v55 + 16 * v57);
          v59 = *v58;
          ++v61;
          if (!*v58)
          {
            if (v60)
            {
              *v60 = 0;
              v60[1] = 0;
              --*(*(v53 + 8) - 16);
              v58 = v60;
            }

            goto LABEL_66;
          }
        }

        goto LABEL_75;
      }

LABEL_66:
      *v58 = v20;
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v19 + 8), v19);
      v62 = *(v19 + 8);
      atomic_fetch_add(v62, 1u);
      v63 = v58[1];
      v58[1] = v62;
      if (v63 && atomic_fetch_add(v63, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v63);
        WTF::fastFree(v63, v43);
      }

      v64 = *(v53 + 8);
      if (v64)
      {
        v65 = *(v64 - 12) + 1;
      }

      else
      {
        v65 = 1;
      }

      *(v64 - 12) = v65;
      v66 = (*(v64 - 16) + v65);
      v67 = *(v64 - 4);
      if (v67 > 0x400)
      {
        if (v67 > 2 * v66)
        {
          goto LABEL_75;
        }
      }

      else if (3 * v67 > 4 * v66)
      {
LABEL_75:
        WTF::RefCounted<WebKit::FileSystemStorageHandleRegistry>::deref(v53, v43);
        goto LABEL_76;
      }

      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v53 + 8), v58);
      goto LABEL_75;
    }
  }

LABEL_76:
  v68 = *(v13 + 48);
  if (!v68)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v13 + 48), 0);
    v68 = *(v13 + 48);
  }

  v69 = *(v68 - 8);
  v70 = v69 & v41;
  v71 = (v68 + 16 * (v69 & v41));
  v72 = *v71;
  if (!*v71)
  {
LABEL_86:
    v75 = v80;
    result = v71[1];
    *v71 = v20;
    v71[1] = v75;
    if (result)
    {
      result = WTF::RefCounted<WebKit::FileSystemStorageHandle>::deref(result, v43);
    }

    v76 = *(v13 + 48);
    if (v76)
    {
      v77 = *(v76 - 12) + 1;
    }

    else
    {
      v77 = 1;
    }

    *(v76 - 12) = v77;
    v78 = (*(v76 - 16) + v77);
    v79 = *(v76 - 4);
    if (v79 > 0x400)
    {
      if (v79 > 2 * v78)
      {
        goto LABEL_96;
      }
    }

    else if (3 * v79 > 4 * v78)
    {
LABEL_96:
      *a7 = v20;
      a7[8] = 0;
      return result;
    }

    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v13 + 48), v71);
    goto LABEL_96;
  }

  v73 = 0;
  v74 = 1;
  while (v72 != v20)
  {
    if (v72 == -1)
    {
      v73 = v71;
    }

    v70 = (v70 + v74) & v69;
    v71 = (v68 + 16 * v70);
    v72 = *v71;
    ++v74;
    if (!*v71)
    {
      if (v73)
      {
        *v73 = 0;
        v73[1] = 0;
        --*(*(v13 + 48) - 16);
        v71 = v73;
      }

      goto LABEL_86;
    }
  }

  result = v80;
  *a7 = v20;
  a7[8] = 0;
  if (result)
  {
    return WTF::RefCounted<WebKit::FileSystemStorageHandle>::deref(result, v43);
  }

  return result;
}

uint64_t WebKit::FileSystemStorageManager::getType(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v3 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>( (a1 + 48),  &v6);
  v4 = *(a1 + 48);
  if (v4)
  {
    v4 += 16 * *(v4 - 4);
  }

  if (v4 == v3)
  {
    return 2;
  }

  else
  {
    return *(*(v3 + 8) + 32);
  }
}

uint64_t WebKit::FileSystemStorageManager::closeHandle(WebKit::FileSystemStorageManager *this, WebKit::FileSystemStorageHandle *a2)
{
  v19 = *(a2 + 2);
  v3 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>( this + 6,  &v19);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(this + 6, v3, &v18);
  v4 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 5);
  v6 = v4;
  v7 = v5;
  v8 = *(this + 5);
  if (v8)
  {
    v9 = (v8 + 16 * *(v8 - 4));
  }

  else
  {
    v9 = 0;
  }

  if (v9 == v4)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v10 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v6 + 1, &v19);
    v5 = v10;
    v11 = *(v6 + 1);
    if (!v11)
    {
      break;
    }

    v12 = (v11 + 8 * *(v11 - 4));
    if (v12 != v10)
    {
      goto LABEL_14;
    }

    do
    {
LABEL_9:
      v6 = (v6 + 16);
    }

    while (v6 != v7 && (*v6 + 1) <= 1);
    if (v6 == v9)
    {
      goto LABEL_16;
    }
  }

  if (!v10)
  {
    goto LABEL_9;
  }

  v12 = 0;
LABEL_14:
  if (v12 != v10)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(v6 + 1, v10);
  }

LABEL_16:
  v13 = *(this + 3);
  if (v13)
  {
    v14 = *(v13 + 8);
    if (v14)
    {
      v15 = (v14 + 8);
      ++*(v14 + 8);
      WebKit::FileSystemStorageHandleRegistry::unregisterHandle(v14, v19);
      WTF::RefCounted<WebKit::FileSystemStorageHandleRegistry>::deref(v15, v16);
    }
  }

  result = v18;
  v18 = 0;
  if (result)
  {
    return WTF::RefCounted<WebKit::FileSystemStorageHandle>::deref(result, v5);
  }

  return result;
}

uint64_t WebKit::FileSystemStorageManager::connectionClosed(uint64_t result, uint64_t a2)
{
  v3 = (result + 40);
  v2 = *(result + 40);
  if (!v2)
  {
    return result;
  }

  if (a2 == -1)
  {
    goto LABEL_89;
  }

  if (!a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDE3904);
  }

  v4 = result;
  v5 = *(v2 - 8);
  v6 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = v5 & ((v8 >> 31) ^ v8);
  v10 = *(v2 + 16 * v9);
  if (v10 != a2)
  {
    v11 = 1;
    while (v10)
    {
      v9 = (v9 + v11) & v5;
      v10 = *(v2 + 16 * v9);
      ++v11;
      if (v10 == a2)
      {
        goto LABEL_10;
      }
    }

    v9 = *(v2 - 4);
  }

LABEL_10:
  if (v9 != *(v2 - 4))
  {
    v12 = (v2 + 16 * v9);
    v13 = v12[1];
    if (!v13 || (v14 = *(v13 - 12), !v14))
    {
      v15 = 0;
      v16 = 1;
      goto LABEL_65;
    }

    v17 = *(v13 - 12);
    v18 = *(v13 - 12);
    if (v14 == 1)
    {
      goto LABEL_17;
    }

    v19 = __clz(v14 - 1);
    if (!v19)
    {
      __break(1u);
      goto LABEL_89;
    }

    v17 = (1 << -v19);
    v18 = 1 << -v19;
    if (v14 <= 0x400)
    {
LABEL_17:
      if (3 * v17 > 4 * v14)
      {
        goto LABEL_19;
      }
    }

    else if (v17 > 2 * v14)
    {
LABEL_19:
      if (v18 > 0x400)
      {
        v20 = 0.416666667;
      }

      else
      {
        v20 = 0.604166667;
      }

      if (v18 * v20 <= v14)
      {
        v18 *= 2;
      }

      if (v18 <= 8)
      {
        v21 = 8;
      }

      else
      {
        v21 = v18;
      }

      result = WTF::fastZeroedMalloc((8 * v21 + 16));
      v15 = result + 16;
      v23 = v21 - 1;
      *(result + 8) = v21 - 1;
      *(result + 12) = v21;
      *result = 0;
      *(result + 4) = v14;
      v24 = v12[1];
      if (v24)
      {
        v25 = *(v24 - 1);
        v26 = &v24[v25];
        if (*(v24 - 3))
        {
          if (!v25)
          {
            v29 = 0;
            v28 = v12[1];
            goto LABEL_39;
          }

          v27 = 8 * v25;
          v28 = v12[1];
          while ((*v28 + 1) <= 1)
          {
            ++v28;
            v27 -= 8;
            if (!v27)
            {
              v28 = v26;
              break;
            }
          }

LABEL_36:
          if (!v24)
          {
            goto LABEL_40;
          }

          v29 = *(v24 - 1);
LABEL_39:
          v24 += v29;
LABEL_40:
          while (v28 != v24)
          {
            v30 = *v28 + ~(*v28 << 32);
            v31 = (v30 ^ (v30 >> 22)) + ~((v30 ^ (v30 >> 22)) << 13);
            v32 = (9 * (v31 ^ (v31 >> 8))) ^ ((9 * (v31 ^ (v31 >> 8))) >> 15);
            v33 = v23 & (((v32 + ~(v32 << 27)) >> 31) ^ (v32 + ~(v32 << 27)));
            v34 = 1;
            do
            {
              v35 = v33;
              v36 = *(v15 + 8 * v33);
              v33 = (v33 + v34++) & v23;
            }

            while (v36);
            *(v15 + 8 * v35) = *v28;
            do
            {
              ++v28;
            }

            while (v28 != v26 && (*v28 + 1) <= 1);
          }

          v37 = 8 * v21;
          v38 = (result + 16);
          v39 = (v15 + 8 * v21);
          while ((*v38 + 1) <= 1)
          {
            ++v38;
            v37 -= 8;
            if (!v37)
            {
              goto LABEL_64;
            }
          }

          if (!v37)
          {
LABEL_64:
            v16 = 0;
LABEL_65:
            v51 = *v3;
            if (*v3)
            {
              v52 = (v51 + 16 * *(v51 - 4));
              if (v52 == v12)
              {
LABEL_78:
                if ((v16 & 1) == 0)
                {

                  return WTF::fastFree((v15 - 16), a2);
                }

                return result;
              }
            }

            else
            {
              v52 = 0;
            }

            if (v52 != v12)
            {
              *v12 = -1;
              v53 = v12[1];
              if (v53)
              {
                result = WTF::fastFree((v53 - 16), a2);
                v51 = *v3;
              }

              v54 = vadd_s32(*(v51 - 16), 0xFFFFFFFF00000001);
              *(v51 - 16) = v54;
              v55 = *(v51 - 4);
              if (6 * v54.i32[1] < v55 && v55 >= 9)
              {
                result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash( v3,  v55 >> 1,  0);
              }
            }

            goto LABEL_78;
          }

          while (1)
          {
            v40 = *v38;
            if (*v38 == -1)
            {
              __break(0xC471u);
              JUMPOUT(0x19DDE3924);
            }

            if (!v40)
            {
              break;
            }

            v41 = *(v4 + 48);
            if (v41)
            {
              v42 = *(v41 - 8);
              v43 = (v40 + ~(v40 << 32)) ^ ((v40 + ~(v40 << 32)) >> 22);
              v44 = 9 * ((v43 + ~(v43 << 13)) ^ ((v43 + ~(v43 << 13)) >> 8));
              v45 = (v44 ^ (v44 >> 15)) + ~((v44 ^ (v44 >> 15)) << 27);
              v46 = v42 & ((v45 >> 31) ^ v45);
              v47 = *(v41 + 16 * v46);
              if (v47 == v40)
              {
LABEL_59:
                v49 = *(v41 + 16 * v46 + 8);
                if (v49)
                {
                  ++*v49;
                  WebKit::FileSystemStorageHandle::close(v49, a2, v22);
                  result = WTF::RefCounted<WebKit::FileSystemStorageHandle>::deref(v49, v50);
                }
              }

              else
              {
                v48 = 1;
                while (v47)
                {
                  v46 = (v46 + v48) & v42;
                  v47 = *(v41 + 16 * v46);
                  ++v48;
                  if (v47 == v40)
                  {
                    goto LABEL_59;
                  }
                }
              }
            }

            do
            {
              ++v38;
            }

            while (v38 != v39 && (*v38 + 1) <= 1);
            if (v38 == v39)
            {
              goto LABEL_64;
            }
          }

LABEL_89:
          __break(0xC471u);
          JUMPOUT(0x19DDE38E4);
        }
      }

      else
      {
        v26 = 0;
        v25 = 0;
      }

      v28 = v26;
      v26 = &v24[v25];
      goto LABEL_36;
    }

    v18 *= 2;
    goto LABEL_19;
  }

  return result;
}

uint64_t WebKit::FileSystemStorageManager::acquireLockForFile(uint64_t a1, WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  if (*a2 == -1 || !*a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDE3B1CLL);
  }

  v3 = a3;
  v6 = *(a1 + 56);
  if (v6 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::FileSystemStorageManagerLock>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::FileSystemStorageManagerLock>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::FileSystemStorageManagerLock,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::FileSystemStorageManagerLock>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand((a1 + 56), 0), (v6 = *(a1 + 56)) != 0))
  {
    v7 = *(v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*a2 + 4);
  if (v8 < 0x100)
  {
    v9 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v9 = v8 >> 8;
  }

  v10 = 0;
  for (i = 1; ; ++i)
  {
    v12 = v9 & v7;
    v13 = (v6 + 24 * (v9 & v7));
    v14 = *v13;
    if (*v13 == -1)
    {
      v10 = (v6 + 24 * v12);
      goto LABEL_14;
    }

    if (!v14)
    {
      break;
    }

    if (WTF::equal(v14, *a2, a3))
    {
      goto LABEL_23;
    }

LABEL_14:
    v9 = i + v12;
  }

  if (v10)
  {
    *v10 = 0;
    v10[1] = 0;
    v10[2] = 0;
    --*(*(a1 + 56) - 16);
    v13 = v10;
  }

  WTF::String::operator=(v13, a2);
  v13[1] = 0;
  v13[2] = 0;
  v15 = *(a1 + 56);
  if (v15)
  {
    v16 = *(v15 - 12) + 1;
  }

  else
  {
    v16 = 1;
  }

  *(v15 - 12) = v16;
  v17 = (*(v15 - 16) + v16);
  v18 = *(v15 - 4);
  if (v18 > 0x400)
  {
    if (v18 <= 2 * v17)
    {
LABEL_22:
      v13 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::FileSystemStorageManagerLock>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::FileSystemStorageManagerLock>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::FileSystemStorageManagerLock,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::FileSystemStorageManagerLock>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand((a1 + 56), v13);
    }
  }

  else if (3 * v18 <= 4 * v17)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (v3)
  {
    if (*(v13 + 8) == 2)
    {
      ++v13[2];
      return 1;
    }

    else
    {
      if (!*(v13 + 8))
      {
        *(v13 + 8) = 2;
        result = 1;
        v13[2] = 1;
        return result;
      }

      return 0;
    }
  }

  else
  {
    if (*(v13 + 8))
    {
      return 0;
    }

    result = 1;
    *(v13 + 8) = 1;
  }

  return result;
}

uint64_t WebKit::FileSystemStorageManager::releaseLockForFile(WebKit::FileSystemStorageManager *this, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v4 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::FileSystemStorageManagerLock>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::FileSystemStorageManagerLock>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::FileSystemStorageManagerLock,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::FileSystemStorageManagerLock>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WebKit::FileSystemStorageManagerLock,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::FileSystemStorageManagerLock>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(this + 7, a2, a3);
  v5 = *(this + 7);
  if (v5)
  {
    v6 = v5 + 24 * *(v5 - 4);
  }

  else
  {
    v6 = 0;
  }

  if (v6 == v4)
  {
    return 0;
  }

  if (*(v4 + 8) == 2)
  {
    v7 = *(v4 + 16) - 1;
    *(v4 + 16) = v7;
    if (v7)
    {
      return 0;
    }
  }

  if (v5)
  {
    v9 = v5 + 24 * *(v5 - 4);
    if (v9 == v4)
    {
      return 1;
    }

LABEL_13:
    if (v9 != v4)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::FileSystemStorageManagerLock>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::FileSystemStorageManagerLock>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::FileSystemStorageManagerLock,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::FileSystemStorageManagerLock>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::remove(this + 7, v4);
    }

    return 1;
  }

  if (v4)
  {
    v9 = 0;
    goto LABEL_13;
  }

  return 1;
}

void WebKit::IDBStorageConnectionToClient::~IDBStorageConnectionToClient(WebKit::IDBStorageConnectionToClient *this, void *a2)
{
  v3 = *(this + 4);
  v4 = *(v3 + 8);
  if (v4)
  {
    v5 = (v4 + 8);
    if (!atomic_load(v5))
    {
      __break(0xC471u);
      return;
    }

    atomic_fetch_add(v5, 0xFFFFFFFF);
  }

  *(v3 + 8) = 0;
  v7 = *(this + 4);
  *(this + 4) = 0;
  if (v7)
  {
    WTF::RefCounted<WebCore::IDBServer::IDBConnectionToClient>::deref(v7, a2);
  }
}

{
  WebKit::IDBStorageConnectionToClient::~IDBStorageConnectionToClient(this, a2);
  if (atomic_load((v2 + 8)))
  {
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {

    bmalloc::api::tzoneFree(v2, v3);
  }
}

void WebKit::IDBStorageConnectionToClient::didDeleteDatabase(WebKit::IDBStorageConnectionToClient *this, const WebCore::IDBResultData *a2)
{
  IPC::Connection::connection(*(this + 2), &v11);
  v4 = v11;
  if (v11)
  {
    v5 = IPC::Encoder::operator new(0x238, v3);
    *v5 = 2043;
    *(v5 + 68) = 0;
    *(v5 + 70) = 0;
    *(v5 + 69) = 0;
    *(v5 + 2) = 0;
    *(v5 + 3) = 0;
    *(v5 + 1) = 0;
    IPC::Encoder::encodeHeader(v5);
    v12 = v5;
    IPC::ArgumentCoder<WebCore::IDBResultData,void>::encode(v5, a2);
    IPC::Connection::sendMessageImpl(v4, &v12, 0, 0);
    v7 = v12;
    v12 = 0;
    if (v7)
    {
      IPC::Encoder::~Encoder(v7, v6);
      bmalloc::api::tzoneFree(v9, v10);
    }

    v8 = v11;
    v11 = 0;
    if (v8)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8);
    }
  }
}

void WebKit::IDBStorageConnectionToClient::didOpenDatabase(WebKit::IDBStorageConnectionToClient *this, const WebCore::IDBResultData *a2)
{
  IPC::Connection::connection(*(this + 2), &v11);
  v4 = v11;
  if (v11)
  {
    v5 = IPC::Encoder::operator new(0x238, v3);
    *v5 = 2053;
    *(v5 + 68) = 0;
    *(v5 + 70) = 0;
    *(v5 + 69) = 0;
    *(v5 + 2) = 0;
    *(v5 + 3) = 0;
    *(v5 + 1) = 0;
    IPC::Encoder::encodeHeader(v5);
    v12 = v5;
    IPC::ArgumentCoder<WebCore::IDBResultData,void>::encode(v5, a2);
    IPC::Connection::sendMessageImpl(v4, &v12, 0, 0);
    v7 = v12;
    v12 = 0;
    if (v7)
    {
      IPC::Encoder::~Encoder(v7, v6);
      bmalloc::api::tzoneFree(v9, v10);
    }

    v8 = v11;
    v11 = 0;
    if (v8)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8);
    }
  }
}

void WebKit::IDBStorageConnectionToClient::didStartTransaction(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  IPC::Connection::connection(*(a1 + 16), &v13);
  v6 = v13;
  if (v13)
  {
    v7 = IPC::Encoder::operator new(0x238, v5);
    *v7 = 2057;
    *(v7 + 68) = 0;
    *(v7 + 70) = 0;
    *(v7 + 69) = 0;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    *(v7 + 1) = 0;
    IPC::Encoder::encodeHeader(v7);
    v14 = v7;
    IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(v7, a2);
    IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(v7, a2 + 1);
    v15 = *a3;
    IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(v7, &v15);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v7, a3 + 1);
    IPC::Connection::sendMessageImpl(v6, &v14, 0, 0);
    v9 = v14;
    v14 = 0;
    if (v9)
    {
      IPC::Encoder::~Encoder(v9, v8);
      bmalloc::api::tzoneFree(v11, v12);
    }

    v10 = v13;
    v13 = 0;
    if (v10)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v10);
    }
  }
}

void WebKit::IDBStorageConnectionToClient::didAbortTransaction(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  IPC::Connection::connection(*(a1 + 16), &v13);
  v6 = v13;
  if (v13)
  {
    v7 = IPC::Encoder::operator new(0x238, v5);
    *v7 = 2037;
    *(v7 + 68) = 0;
    *(v7 + 70) = 0;
    *(v7 + 69) = 0;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    *(v7 + 1) = 0;
    IPC::Encoder::encodeHeader(v7);
    v14 = v7;
    IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(v7, a2);
    IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(v7, a2 + 1);
    v15 = *a3;
    IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(v7, &v15);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v7, a3 + 1);
    IPC::Connection::sendMessageImpl(v6, &v14, 0, 0);
    v9 = v14;
    v14 = 0;
    if (v9)
    {
      IPC::Encoder::~Encoder(v9, v8);
      bmalloc::api::tzoneFree(v11, v12);
    }

    v10 = v13;
    v13 = 0;
    if (v10)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v10);
    }
  }
}

void WebKit::IDBStorageConnectionToClient::didCommitTransaction(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  IPC::Connection::connection(*(a1 + 16), &v13);
  v6 = v13;
  if (v13)
  {
    v7 = IPC::Encoder::operator new(0x238, v5);
    *v7 = 2040;
    *(v7 + 68) = 0;
    *(v7 + 70) = 0;
    *(v7 + 69) = 0;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    *(v7 + 1) = 0;
    IPC::Encoder::encodeHeader(v7);
    v14 = v7;
    IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(v7, a2);
    IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(v7, a2 + 1);
    v15 = *a3;
    IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(v7, &v15);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v7, a3 + 1);
    IPC::Connection::sendMessageImpl(v6, &v14, 0, 0);
    v9 = v14;
    v14 = 0;
    if (v9)
    {
      IPC::Encoder::~Encoder(v9, v8);
      bmalloc::api::tzoneFree(v11, v12);
    }

    v10 = v13;
    v13 = 0;
    if (v10)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v10);
    }
  }
}

void WebKit::IDBStorageConnectionToClient::didCreateObjectStore(WebKit::IDBStorageConnectionToClient *this, const WebCore::IDBResultData *a2)
{
  IPC::Connection::connection(*(this + 2), &v11);
  v4 = v11;
  if (v11)
  {
    v5 = IPC::Encoder::operator new(0x238, v3);
    *v5 = 2042;
    *(v5 + 68) = 0;
    *(v5 + 70) = 0;
    *(v5 + 69) = 0;
    *(v5 + 2) = 0;
    *(v5 + 3) = 0;
    *(v5 + 1) = 0;
    IPC::Encoder::encodeHeader(v5);
    v12 = v5;
    IPC::ArgumentCoder<WebCore::IDBResultData,void>::encode(v5, a2);
    IPC::Connection::sendMessageImpl(v4, &v12, 0, 0);
    v7 = v12;
    v12 = 0;
    if (v7)
    {
      IPC::Encoder::~Encoder(v7, v6);
      bmalloc::api::tzoneFree(v9, v10);
    }

    v8 = v11;
    v11 = 0;
    if (v8)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8);
    }
  }
}

void WebKit::IDBStorageConnectionToClient::didDeleteObjectStore(WebKit::IDBStorageConnectionToClient *this, const WebCore::IDBResultData *a2)
{
  IPC::Connection::connection(*(this + 2), &v11);
  v4 = v11;
  if (v11)
  {
    v5 = IPC::Encoder::operator new(0x238, v3);
    *v5 = 2045;
    *(v5 + 68) = 0;
    *(v5 + 70) = 0;
    *(v5 + 69) = 0;
    *(v5 + 2) = 0;
    *(v5 + 3) = 0;
    *(v5 + 1) = 0;
    IPC::Encoder::encodeHeader(v5);
    v12 = v5;
    IPC::ArgumentCoder<WebCore::IDBResultData,void>::encode(v5, a2);
    IPC::Connection::sendMessageImpl(v4, &v12, 0, 0);
    v7 = v12;
    v12 = 0;
    if (v7)
    {
      IPC::Encoder::~Encoder(v7, v6);
      bmalloc::api::tzoneFree(v9, v10);
    }

    v8 = v11;
    v11 = 0;
    if (v8)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8);
    }
  }
}

void WebKit::IDBStorageConnectionToClient::didRenameObjectStore(WebKit::IDBStorageConnectionToClient *this, const WebCore::IDBResultData *a2)
{
  IPC::Connection::connection(*(this + 2), &v11);
  v4 = v11;
  if (v11)
  {
    v5 = IPC::Encoder::operator new(0x238, v3);
    *v5 = 2056;
    *(v5 + 68) = 0;
    *(v5 + 70) = 0;
    *(v5 + 69) = 0;
    *(v5 + 2) = 0;
    *(v5 + 3) = 0;
    *(v5 + 1) = 0;
    IPC::Encoder::encodeHeader(v5);
    v12 = v5;
    IPC::ArgumentCoder<WebCore::IDBResultData,void>::encode(v5, a2);
    IPC::Connection::sendMessageImpl(v4, &v12, 0, 0);
    v7 = v12;
    v12 = 0;
    if (v7)
    {
      IPC::Encoder::~Encoder(v7, v6);
      bmalloc::api::tzoneFree(v9, v10);
    }

    v8 = v11;
    v11 = 0;
    if (v8)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8);
    }
  }
}

void WebKit::IDBStorageConnectionToClient::didClearObjectStore(WebKit::IDBStorageConnectionToClient *this, const WebCore::IDBResultData *a2)
{
  IPC::Connection::connection(*(this + 2), &v11);
  v4 = v11;
  if (v11)
  {
    v5 = IPC::Encoder::operator new(0x238, v3);
    *v5 = 2038;
    *(v5 + 68) = 0;
    *(v5 + 70) = 0;
    *(v5 + 69) = 0;
    *(v5 + 2) = 0;
    *(v5 + 3) = 0;
    *(v5 + 1) = 0;
    IPC::Encoder::encodeHeader(v5);
    v12 = v5;
    IPC::ArgumentCoder<WebCore::IDBResultData,void>::encode(v5, a2);
    IPC::Connection::sendMessageImpl(v4, &v12, 0, 0);
    v7 = v12;
    v12 = 0;
    if (v7)
    {
      IPC::Encoder::~Encoder(v7, v6);
      bmalloc::api::tzoneFree(v9, v10);
    }

    v8 = v11;
    v11 = 0;
    if (v8)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8);
    }
  }
}

void WebKit::IDBStorageConnectionToClient::didCreateIndex(WebKit::IDBStorageConnectionToClient *this, const WebCore::IDBResultData *a2)
{
  IPC::Connection::connection(*(this + 2), &v11);
  v4 = v11;
  if (v11)
  {
    v5 = IPC::Encoder::operator new(0x238, v3);
    *v5 = 2041;
    *(v5 + 68) = 0;
    *(v5 + 70) = 0;
    *(v5 + 69) = 0;
    *(v5 + 2) = 0;
    *(v5 + 3) = 0;
    *(v5 + 1) = 0;
    IPC::Encoder::encodeHeader(v5);
    v12 = v5;
    IPC::ArgumentCoder<WebCore::IDBResultData,void>::encode(v5, a2);
    IPC::Connection::sendMessageImpl(v4, &v12, 0, 0);
    v7 = v12;
    v12 = 0;
    if (v7)
    {
      IPC::Encoder::~Encoder(v7, v6);
      bmalloc::api::tzoneFree(v9, v10);
    }

    v8 = v11;
    v11 = 0;
    if (v8)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8);
    }
  }
}

void WebKit::IDBStorageConnectionToClient::didDeleteIndex(WebKit::IDBStorageConnectionToClient *this, const WebCore::IDBResultData *a2)
{
  IPC::Connection::connection(*(this + 2), &v11);
  v4 = v11;
  if (v11)
  {
    v5 = IPC::Encoder::operator new(0x238, v3);
    *v5 = 2044;
    *(v5 + 68) = 0;
    *(v5 + 70) = 0;
    *(v5 + 69) = 0;
    *(v5 + 2) = 0;
    *(v5 + 3) = 0;
    *(v5 + 1) = 0;
    IPC::Encoder::encodeHeader(v5);
    v12 = v5;
    IPC::ArgumentCoder<WebCore::IDBResultData,void>::encode(v5, a2);
    IPC::Connection::sendMessageImpl(v4, &v12, 0, 0);
    v7 = v12;
    v12 = 0;
    if (v7)
    {
      IPC::Encoder::~Encoder(v7, v6);
      bmalloc::api::tzoneFree(v9, v10);
    }

    v8 = v11;
    v11 = 0;
    if (v8)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8);
    }
  }
}

void WebKit::IDBStorageConnectionToClient::didRenameIndex(WebKit::IDBStorageConnectionToClient *this, const WebCore::IDBResultData *a2)
{
  IPC::Connection::connection(*(this + 2), &v11);
  v4 = v11;
  if (v11)
  {
    v5 = IPC::Encoder::operator new(0x238, v3);
    *v5 = 2055;
    *(v5 + 68) = 0;
    *(v5 + 70) = 0;
    *(v5 + 69) = 0;
    *(v5 + 2) = 0;
    *(v5 + 3) = 0;
    *(v5 + 1) = 0;
    IPC::Encoder::encodeHeader(v5);
    v12 = v5;
    IPC::ArgumentCoder<WebCore::IDBResultData,void>::encode(v5, a2);
    IPC::Connection::sendMessageImpl(v4, &v12, 0, 0);
    v7 = v12;
    v12 = 0;
    if (v7)
    {
      IPC::Encoder::~Encoder(v7, v6);
      bmalloc::api::tzoneFree(v9, v10);
    }

    v8 = v11;
    v11 = 0;
    if (v8)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8);
    }
  }
}

void WebKit::IDBStorageConnectionToClient::didPutOrAdd(WebKit::IDBStorageConnectionToClient *this, const WebCore::IDBResultData *a2)
{
  IPC::Connection::connection(*(this + 2), &v11);
  v4 = v11;
  if (v11)
  {
    v5 = IPC::Encoder::operator new(0x238, v3);
    *v5 = 2054;
    *(v5 + 68) = 0;
    *(v5 + 70) = 0;
    *(v5 + 69) = 0;
    *(v5 + 2) = 0;
    *(v5 + 3) = 0;
    *(v5 + 1) = 0;
    IPC::Encoder::encodeHeader(v5);
    v12 = v5;
    IPC::ArgumentCoder<WebCore::IDBResultData,void>::encode(v5, a2);
    IPC::Connection::sendMessageImpl(v4, &v12, 0, 0);
    v7 = v12;
    v12 = 0;
    if (v7)
    {
      IPC::Encoder::~Encoder(v7, v6);
      bmalloc::api::tzoneFree(v9, v10);
    }

    v8 = v11;
    v11 = 0;
    if (v8)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8);
    }
  }
}

void WebKit::IDBStorageConnectionToClient::didGetRecord(WebKit::IDBStorageConnectionToClient *this, const WebCore::IDBResultData *a2)
{
  v2 = *(this + 2);
  MEMORY[0x19EB04BF0](v10, a2);
  v11[0] = 0;
  v11[1] = 0;
  IPC::Connection::connection(v2, &v12);
  v4 = v12;
  if (v12)
  {
    v5 = IPC::Encoder::operator new(0x238, v3);
    *v5 = 2050;
    *(v5 + 68) = 0;
    *(v5 + 70) = 0;
    *(v5 + 69) = 0;
    *(v5 + 2) = 0;
    *(v5 + 3) = 0;
    *(v5 + 1) = 0;
    IPC::Encoder::encodeHeader(v5);
    v13 = v5;
    IPC::ArgumentCoder<WebCore::IDBResultData,void>::encode(v5, v10);
    IPC::VectorArgumentCoder<false,WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v5, v11);
    IPC::Connection::sendMessageImpl(v4, &v13, 0, 0);
    v6 = v13;
    v13 = 0;
    if (v6)
    {
      IPC::Encoder::~Encoder(v6, v3);
      bmalloc::api::tzoneFree(v8, v9);
    }

    v7 = v12;
    v12 = 0;
    if (v7)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v7);
    }
  }

  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v11, v3);
  WebCore::IDBResultData::~IDBResultData(v10);
}

void WebKit::IDBStorageConnectionToClient::didGetAllRecords(WebKit::IDBStorageConnectionToClient *this, const WebCore::IDBResultData *a2)
{
  v2 = *(this + 2);
  MEMORY[0x19EB04BF0](v10, a2);
  v11[0] = 0;
  v11[1] = 0;
  IPC::Connection::connection(v2, &v12);
  v4 = v12;
  if (v12)
  {
    v5 = IPC::Encoder::operator new(0x238, v3);
    *v5 = 2048;
    *(v5 + 68) = 0;
    *(v5 + 70) = 0;
    *(v5 + 69) = 0;
    *(v5 + 2) = 0;
    *(v5 + 3) = 0;
    *(v5 + 1) = 0;
    IPC::Encoder::encodeHeader(v5);
    v13 = v5;
    IPC::ArgumentCoder<WebCore::IDBResultData,void>::encode(v5, v10);
    IPC::VectorArgumentCoder<false,WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v5, v11);
    IPC::Connection::sendMessageImpl(v4, &v13, 0, 0);
    v6 = v13;
    v13 = 0;
    if (v6)
    {
      IPC::Encoder::~Encoder(v6, v3);
      bmalloc::api::tzoneFree(v8, v9);
    }

    v7 = v12;
    v12 = 0;
    if (v7)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v7);
    }
  }

  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v11, v3);
  WebCore::IDBResultData::~IDBResultData(v10);
}

void WebKit::IDBStorageConnectionToClient::didGetCount(WebKit::IDBStorageConnectionToClient *this, const WebCore::IDBResultData *a2)
{
  IPC::Connection::connection(*(this + 2), &v11);
  v4 = v11;
  if (v11)
  {
    v5 = IPC::Encoder::operator new(0x238, v3);
    *v5 = 2049;
    *(v5 + 68) = 0;
    *(v5 + 70) = 0;
    *(v5 + 69) = 0;
    *(v5 + 2) = 0;
    *(v5 + 3) = 0;
    *(v5 + 1) = 0;
    IPC::Encoder::encodeHeader(v5);
    v12 = v5;
    IPC::ArgumentCoder<WebCore::IDBResultData,void>::encode(v5, a2);
    IPC::Connection::sendMessageImpl(v4, &v12, 0, 0);
    v7 = v12;
    v12 = 0;
    if (v7)
    {
      IPC::Encoder::~Encoder(v7, v6);
      bmalloc::api::tzoneFree(v9, v10);
    }

    v8 = v11;
    v11 = 0;
    if (v8)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8);
    }
  }
}

void WebKit::IDBStorageConnectionToClient::didDeleteRecord(WebKit::IDBStorageConnectionToClient *this, const WebCore::IDBResultData *a2)
{
  IPC::Connection::connection(*(this + 2), &v11);
  v4 = v11;
  if (v11)
  {
    v5 = IPC::Encoder::operator new(0x238, v3);
    *v5 = 2046;
    *(v5 + 68) = 0;
    *(v5 + 70) = 0;
    *(v5 + 69) = 0;
    *(v5 + 2) = 0;
    *(v5 + 3) = 0;
    *(v5 + 1) = 0;
    IPC::Encoder::encodeHeader(v5);
    v12 = v5;
    IPC::ArgumentCoder<WebCore::IDBResultData,void>::encode(v5, a2);
    IPC::Connection::sendMessageImpl(v4, &v12, 0, 0);
    v7 = v12;
    v12 = 0;
    if (v7)
    {
      IPC::Encoder::~Encoder(v7, v6);
      bmalloc::api::tzoneFree(v9, v10);
    }

    v8 = v11;
    v11 = 0;
    if (v8)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8);
    }
  }
}

void WebKit::IDBStorageConnectionToClient::didOpenCursor(WebKit::IDBStorageConnectionToClient *this, const WebCore::IDBResultData *a2)
{
  v2 = *(this + 2);
  MEMORY[0x19EB04BF0](v10, a2);
  v11[0] = 0;
  v11[1] = 0;
  IPC::Connection::connection(v2, &v12);
  v4 = v12;
  if (v12)
  {
    v5 = IPC::Encoder::operator new(0x238, v3);
    *v5 = 2052;
    *(v5 + 68) = 0;
    *(v5 + 70) = 0;
    *(v5 + 69) = 0;
    *(v5 + 2) = 0;
    *(v5 + 3) = 0;
    *(v5 + 1) = 0;
    IPC::Encoder::encodeHeader(v5);
    v13 = v5;
    IPC::ArgumentCoder<WebCore::IDBResultData,void>::encode(v5, v10);
    IPC::VectorArgumentCoder<false,WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v5, v11);
    IPC::Connection::sendMessageImpl(v4, &v13, 0, 0);
    v6 = v13;
    v13 = 0;
    if (v6)
    {
      IPC::Encoder::~Encoder(v6, v3);
      bmalloc::api::tzoneFree(v8, v9);
    }

    v7 = v12;
    v12 = 0;
    if (v7)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v7);
    }
  }

  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v11, v3);
  WebCore::IDBResultData::~IDBResultData(v10);
}

void WebKit::IDBStorageConnectionToClient::didIterateCursor(WebKit::IDBStorageConnectionToClient *this, const WebCore::IDBResultData *a2)
{
  v2 = *(this + 2);
  MEMORY[0x19EB04BF0](v10, a2);
  v11[0] = 0;
  v11[1] = 0;
  IPC::Connection::connection(v2, &v12);
  v4 = v12;
  if (v12)
  {
    v5 = IPC::Encoder::operator new(0x238, v3);
    *v5 = 2051;
    *(v5 + 68) = 0;
    *(v5 + 70) = 0;
    *(v5 + 69) = 0;
    *(v5 + 2) = 0;
    *(v5 + 3) = 0;
    *(v5 + 1) = 0;
    IPC::Encoder::encodeHeader(v5);
    v13 = v5;
    IPC::ArgumentCoder<WebCore::IDBResultData,void>::encode(v5, v10);
    IPC::VectorArgumentCoder<false,WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v5, v11);
    IPC::Connection::sendMessageImpl(v4, &v13, 0, 0);
    v6 = v13;
    v13 = 0;
    if (v6)
    {
      IPC::Encoder::~Encoder(v6, v3);
      bmalloc::api::tzoneFree(v8, v9);
    }

    v7 = v12;
    v12 = 0;
    if (v7)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v7);
    }
  }

  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v11, v3);
  WebCore::IDBResultData::~IDBResultData(v10);
}

void WebKit::IDBStorageConnectionToClient::didGetAllDatabaseNamesAndVersions(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  IPC::Connection::connection(*(a1 + 16), &v16);
  v6 = v16;
  if (v16)
  {
    v7 = IPC::Encoder::operator new(0x238, v5);
    *v7 = 2047;
    *(v7 + 68) = 0;
    *(v7 + 70) = 0;
    *(v7 + 69) = 0;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    *(v7 + 1) = 0;
    IPC::Encoder::encodeHeader(v7);
    v17 = v7;
    IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(v7, a2);
    IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(v7, a2 + 1);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, *(a3 + 12));
    v8 = *(a3 + 12);
    if (v8)
    {
      v9 = *a3;
      v10 = &v9[2 * v8];
      do
      {
        IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v7, v9);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, v9[1]);
        v9 += 2;
      }

      while (v9 != v10);
    }

    IPC::Connection::sendMessageImpl(v6, &v17, 0, 0);
    v12 = v17;
    v17 = 0;
    if (v12)
    {
      IPC::Encoder::~Encoder(v12, v11);
      bmalloc::api::tzoneFree(v14, v15);
    }

    v13 = v16;
    v16 = 0;
    if (v13)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v13);
    }
  }
}

void WebKit::IDBStorageConnectionToClient::fireVersionChangeEvent(WebKit::IDBStorageConnectionToClient *this, WebCore::IDBServer::UniqueIDBDatabaseConnection *a2, const WebCore::IDBResourceIdentifier *a3, uint64_t a4)
{
  v6 = *(a2 + 2);
  IPC::Connection::connection(*(this + 2), &v15);
  v8 = v15;
  if (v15)
  {
    v9 = IPC::Encoder::operator new(0x238, v7);
    *v9 = 2058;
    *(v9 + 68) = 0;
    *(v9 + 70) = 0;
    *(v9 + 69) = 0;
    *(v9 + 2) = 0;
    *(v9 + 3) = 0;
    *(v9 + 1) = 0;
    IPC::Encoder::encodeHeader(v9);
    v16 = v9;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, v6);
    IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(v9, a3);
    IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(v9, a3 + 1);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, a4);
    IPC::Connection::sendMessageImpl(v8, &v16, 0, 0);
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      IPC::Encoder::~Encoder(v11, v10);
      bmalloc::api::tzoneFree(v13, v14);
    }

    v12 = v15;
    v15 = 0;
    if (v12)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v12);
    }
  }
}

void WebKit::IDBStorageConnectionToClient::generateIndexKeyForRecord(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21[0] = a7;
  v21[1] = a8;
  IPC::Connection::connection(*(a1 + 16), &v22);
  v14 = v22;
  if (v22)
  {
    v15 = IPC::Encoder::operator new(0x238, v13);
    *v15 = 2059;
    *(v15 + 68) = 0;
    *(v15 + 70) = 0;
    *(v15 + 69) = 0;
    *(v15 + 2) = 0;
    *(v15 + 3) = 0;
    *(v15 + 1) = 0;
    IPC::Encoder::encodeHeader(v15);
    v23 = v15;
    IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(v15, a2);
    IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(v15, a2 + 1);
    IPC::ArgumentCoder<WebCore::IDBIndexInfo,void>::encode(v15, a3);
    IPC::ArgumentCoder<std::optional<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,void>::encode<IPC::Encoder,std::optional<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>> const&>(v15, a4);
    IPC::ArgumentCoder<WebCore::IDBKeyData,void>::encode(v15, a5);
    IPC::ArgumentCoder<WebCore::IDBValue,void>::encode(v15, a6);
    IPC::ArgumentCoder<std::optional<long long>,void>::encode<IPC::Encoder,std::optional<long long> const&>(v15, v21);
    IPC::Connection::sendMessageImpl(v14, &v23, 0, 0);
    v17 = v23;
    v23 = 0;
    if (v17)
    {
      IPC::Encoder::~Encoder(v17, v16);
      bmalloc::api::tzoneFree(v19, v20);
    }

    v18 = v22;
    v22 = 0;
    if (v18)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v18);
    }
  }
}

void WebKit::IDBStorageConnectionToClient::didCloseFromServer(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a2 + 16);
  IPC::Connection::connection(*(a1 + 16), &v13);
  v6 = v13;
  if (v13)
  {
    v7 = IPC::Encoder::operator new(0x238, v5);
    *v7 = 2039;
    *(v7 + 68) = 0;
    *(v7 + 70) = 0;
    *(v7 + 69) = 0;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    *(v7 + 1) = 0;
    IPC::Encoder::encodeHeader(v7);
    v14 = v7;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, v4);
    v15 = *a3;
    IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(v7, &v15);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v7, a3 + 1);
    IPC::Connection::sendMessageImpl(v6, &v14, 0, 0);
    v9 = v14;
    v14 = 0;
    if (v9)
    {
      IPC::Encoder::~Encoder(v9, v8);
      bmalloc::api::tzoneFree(v11, v12);
    }

    v10 = v13;
    v13 = 0;
    if (v10)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v10);
    }
  }
}

void WebKit::IDBStorageConnectionToClient::notifyOpenDBRequestBlocked(WebKit::IDBStorageConnectionToClient *this, const WebCore::IDBResourceIdentifier *a2, uint64_t a3, uint64_t a4)
{
  IPC::Connection::connection(*(this + 2), &v15);
  v8 = v15;
  if (v15)
  {
    v9 = IPC::Encoder::operator new(0x238, v7);
    *v9 = 2060;
    *(v9 + 68) = 0;
    *(v9 + 70) = 0;
    *(v9 + 69) = 0;
    *(v9 + 2) = 0;
    *(v9 + 3) = 0;
    *(v9 + 1) = 0;
    IPC::Encoder::encodeHeader(v9);
    v16 = v9;
    IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(v9, a2);
    IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(v9, a2 + 1);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, a3);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, a4);
    IPC::Connection::sendMessageImpl(v8, &v16, 0, 0);
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      IPC::Encoder::~Encoder(v11, v10);
      bmalloc::api::tzoneFree(v13, v14);
    }

    v12 = v15;
    v15 = 0;
    if (v12)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v12);
    }
  }
}

WTF::FileSystemImpl *WebKit::IDBStorageManager::createVersionDirectoryIfNeeded(WTF::FileSystemImpl *this, const WTF::String *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  if (*this && *(*this + 4))
  {
    v6 = this;
    v43 = 0;
    v44 = 0;
    WTF::FileSystemImpl::listDirectory(&v41, this, a2);
    if (v42)
    {
      v8 = 0;
      v2 = v41;
      v29 = 8 * v42;
      v3 = "v0";
      v4 = "v1";
      do
      {
        v30 = MEMORY[0x19EB01EF0](*v2, "v0", 2);
        if ((MEMORY[0x19EB01EF0](*v2, "v0", 2) & 1) == 0 && (MEMORY[0x19EB01EF0](*v2, "v1", 2) & 1) == 0)
        {
          v31 = *v2;
          if (*v2)
          {
            v32 = *(v31 + 16);
            v31 = *(v31 + 4);
            v33 = ((v32 >> 2) & 1) << 32;
          }

          else
          {
            v33 = 0x100000000;
          }

          v5 = v31 | v5 & 0xFFFFFF0000000000 | v33;
          WebCore::SecurityOriginData::fromDatabaseIdentifier();
          if (v46 == 1)
          {
            v35 = HIDWORD(v44);
            if (HIDWORD(v44) == v44)
            {
              WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String&>(&v43, v2);
            }

            else
            {
              v36 = v43;
              v37 = *v2;
              if (*v2)
              {
                atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
              }

              v38 = HIDWORD(v44);
              v36[v35] = v37;
              HIDWORD(v44) = v38 + 1;
            }
          }

          std::optional<WebCore::SecurityOriginData>::~optional(v45);
        }

        v8 |= v30;
        v2 += 8;
        v29 -= 8;
      }

      while (v29);
    }

    else
    {
      v8 = 0;
    }

    if (!HIDWORD(v44) && (v8 & 1) == 0)
    {
      goto LABEL_7;
    }

    WTF::FileSystemImpl::pathByAppendingComponent();
    v11 = WTF::FileSystemImpl::fileType(v45, v10);
    if ((v11 & 0x100000000) == 0)
    {
LABEL_10:
      v12 = HIDWORD(v44);
      if (HIDWORD(v44))
      {
        if ((v8 & 1) != 0 || (WTF::FileSystemImpl::makeAllDirectories(v45, v7), v12 = HIDWORD(v44), HIDWORD(v44)))
        {
          v13 = v43;
          v14 = &v43[v12];
          do
          {
            v15 = *v6;
            if (*v6)
            {
              v16 = *(v15 + 16);
              v15 = *(v15 + 4);
              v17 = ((v16 >> 2) & 1) << 32;
            }

            else
            {
              v17 = 0x100000000;
            }

            v18 = *v13;
            if (*v13)
            {
              v19 = *(v18 + 16);
              v18 = *(v18 + 4);
              v20 = ((v19 >> 2) & 1) << 32;
            }

            else
            {
              v20 = 0x100000000;
            }

            v5 = v15 | v5 & 0xFFFFFF0000000000 | v17;
            v4 = v18 | v4 & 0xFFFFFF0000000000 | v20;
            WTF::FileSystemImpl::pathByAppendingComponent();
            v21 = v45[0];
            if (v45[0])
            {
              v21 = *(v45[0] + 1);
              v22 = ((*(v45[0] + 4) >> 2) & 1) << 32;
            }

            else
            {
              v22 = 0x100000000;
            }

            v23 = *v13;
            if (*v13)
            {
              v24 = *(v23 + 16);
              v23 = *(v23 + 4);
              v25 = ((v24 >> 2) & 1) << 32;
            }

            else
            {
              v25 = 0x100000000;
            }

            v3 = v21 | v3 & 0xFFFFFF0000000000 | v22;
            v2 = v23 | v2 & 0xFFFFFF0000000000 | v25;
            WTF::FileSystemImpl::pathByAppendingComponent();
            WTF::FileSystemImpl::moveFile(&v40, &v39, v26);
            v27 = v39;
            v39 = 0;
            if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v27, v7);
            }

            v28 = v40;
            v40 = 0;
            if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v28, v7);
            }

            ++v13;
          }

          while (v13 != v14);
        }
      }

      else if (v8)
      {
        WTF::FileSystemImpl::deleteEmptyDirectory(v45, v7);
      }

      v34 = v45[0];
      v45[0] = 0;
      if (v34)
      {
        if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v34, v7);
        }
      }

LABEL_7:
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v41, v7);
      return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v43, v9);
    }

    if (v11 == 2)
    {
      WTF::FileSystemImpl::deleteNonEmptyDirectory(v45, v7);
    }

    else
    {
      if (v11)
      {
        goto LABEL_10;
      }

      WTF::FileSystemImpl::deleteFile(v45, v7);
    }

    v8 = 0;
    goto LABEL_10;
  }

  return this;
}

WTF::StringImpl *WebKit::IDBStorageManager::idbStorageOriginDirectory(WTF::StringImpl *this, const WTF::String *a2, const WebCore::ClientOrigin *a3)
{
  v3 = this;
  if (*a2 && *(*a2 + 4))
  {
    WebCore::IDBDatabaseIdentifier::optionalDatabaseDirectoryRelativeToRoot();
    if (v12 && *(v12 + 1))
    {
      WebCore::IDBDatabaseIdentifier::optionalDatabaseDirectoryRelativeToRoot();
      if (v11 && *(v11 + 1))
      {
        v5 = WTF::fastMalloc(0x10);
        *v5 = &unk_1F110AB08;
        v10 = v5;
        WebKit::migrateOriginDataImpl(&v11, &v12, &v10);
        (*(*v5 + 8))(v5);
        v6 = v12;
        v12 = 0;
      }

      else
      {
        v6 = *MEMORY[0x1E696EBA8];
        if (*MEMORY[0x1E696EBA8])
        {
          atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
        }
      }

      *v3 = v6;
      v7 = v11;
      v11 = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v4);
      }
    }

    else
    {
      v9 = *MEMORY[0x1E696EBA8];
      if (*MEMORY[0x1E696EBA8])
      {
        atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      }

      *v3 = v9;
    }

    this = v12;
    v12 = 0;
    if (this)
    {
      if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(this, v4);
      }
    }
  }

  else
  {
    v8 = *MEMORY[0x1E696EBA8];
    if (*MEMORY[0x1E696EBA8])
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    *this = v8;
  }

  return this;
}

uint64_t WebKit::migrateOriginDataImpl(WTF::FileSystemImpl *a1, const WTF::String *a2, uint64_t a3)
{
  v46 = *MEMORY[0x1E69E9840];
  if (*a1 && *(*a1 + 4) && (v6 = a2, WTF::FileSystemImpl::fileExists(a1, a2)))
  {
    WTF::FileSystemImpl::listDirectory(&v42, a1, v8);
    if (v43 && (WTF::FileSystemImpl::makeAllDirectories(v6, v11), v43))
    {
      v39 = a3;
      v12 = v42;
      v13 = 8 * v43;
      v9 = 1;
      do
      {
        v14 = *v12;
        if (*v12)
        {
          v15 = *(v14 + 16);
          v14 = *(v14 + 4);
          v16 = ((v15 >> 2) & 1) << 32;
        }

        else
        {
          v16 = 0x100000000;
        }

        v4 = v14 | v4 & 0xFFFFFF0000000000 | v16;
        WebCore::SecurityOriginData::fromDatabaseIdentifier();
        v17 = v45;
        std::optional<WebCore::SecurityOriginData>::~optional(v44);
        if ((v17 & 1) == 0)
        {
          v18 = v6;
          v19 = *v6;
          if (*v6)
          {
            v20 = *(v19 + 4);
            v21 = ((*(v19 + 16) >> 2) & 1) << 32;
          }

          else
          {
            v20 = 0;
            v21 = 0x100000000;
          }

          (*(**v39 + 16))(&v41);
          v22 = v41;
          if (v41)
          {
            v22 = *(v41 + 1);
            v23 = ((*(v41 + 4) >> 2) & 1) << 32;
          }

          else
          {
            v23 = 0x100000000;
          }

          v3 = v20 | v3 & 0xFFFFFF0000000000 | v21;
          v40 = v22 | v40 & 0xFFFFFF0000000000 | v23;
          WTF::FileSystemImpl::pathByAppendingComponent();
          v25 = v41;
          v41 = 0;
          if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v25, v24);
          }

          v6 = v18;
          if ((WTF::FileSystemImpl::fileExists(v44, v24) & 1) == 0)
          {
            v26 = *a1;
            if (*a1)
            {
              v27 = *(v26 + 16);
              v26 = *(v26 + 4);
              v28 = ((v27 >> 2) & 1) << 32;
            }

            else
            {
              v28 = 0x100000000;
            }

            v29 = *v12;
            if (*v12)
            {
              v30 = *(v29 + 16);
              v29 = *(v29 + 4);
              v31 = ((v30 >> 2) & 1) << 32;
            }

            else
            {
              v31 = 0x100000000;
            }

            v37 = v26 | v37 & 0xFFFFFF0000000000 | v28;
            v38 = v29 | v38 & 0xFFFFFF0000000000 | v31;
            WTF::FileSystemImpl::pathByAppendingComponent();
            v33 = WTF::FileSystemImpl::moveFile(&v41, v44, v32);
            v34 = v41;
            v41 = 0;
            if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v34, v11);
            }

            v9 &= v33;
          }

          v35 = v44[0];
          v44[0] = 0;
          if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v35, v11);
          }
        }

        ++v12;
        v13 -= 8;
      }

      while (v13);
    }

    else
    {
      v9 = 1;
    }

    WTF::FileSystemImpl::deleteEmptyDirectory(a1, v11);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v42, v36);
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

WTF::StringImpl *WebKit::IDBStorageManager::originsOfIDBStorageData(WTF::StringImpl *this, const WTF::String *a2)
{
  *this = 0;
  if (*a2 && *(*a2 + 4))
  {
    v2 = this;
    WTF::FileSystemImpl::pathByAppendingComponent();
    WebKit::getOriginsForVersion(&v6, v2);
    v4 = v6;
    v6 = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v3);
    }

    WTF::FileSystemImpl::pathByAppendingComponent();
    WebKit::getOriginsForVersion(&v6, v2);
    this = v6;
    v6 = 0;
    if (this)
    {
      if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(this, v5);
      }
    }
  }

  return this;
}

uint64_t WebKit::getOriginsForVersion(WTF::FileSystemImpl *a1, const WTF::String *a2)
{
  v70 = *MEMORY[0x1E69E9840];
  WTF::FileSystemImpl::listDirectory(&v54, a1, a2);
  if (v55)
  {
    v10 = v54;
    v11 = &v54[v55];
    do
    {
      v12 = *v10;
      if (*v10)
      {
        v13 = *(v12 + 16);
        v12 = *(v12 + 4);
        v14 = ((v13 >> 2) & 1) << 32;
      }

      else
      {
        v14 = 0x100000000;
      }

      v5 = v12 | v5 & 0xFFFFFF0000000000 | v14;
      WebCore::SecurityOriginData::fromDatabaseIdentifier();
      if (v69 == 1)
      {
        v15 = *a1;
        if (*a1)
        {
          v16 = *(v15 + 16);
          v15 = *(v15 + 4);
          v17 = ((v16 >> 2) & 1) << 32;
        }

        else
        {
          v17 = 0x100000000;
        }

        v18 = *v10;
        if (*v10)
        {
          v19 = *(v18 + 16);
          v18 = *(v18 + 4);
          v20 = ((v19 >> 2) & 1) << 32;
        }

        else
        {
          v20 = 0x100000000;
        }

        v45 = v5;
        v46 = v11;
        v47 = v15 | v47 & 0xFFFFFF0000000000 | v17;
        v48 = v18 | v48 & 0xFFFFFF0000000000 | v20;
        WTF::FileSystemImpl::pathByAppendingComponent();
        WTF::FileSystemImpl::listDirectory(&v51, &v53, v21);
        if (v52)
        {
          v23 = v51;
          v24 = 8 * v52;
          while (2)
          {
            v25 = v53;
            if (v53)
            {
              v25 = *(v53 + 1);
              v26 = ((*(v53 + 4) >> 2) & 1) << 32;
            }

            else
            {
              v26 = 0x100000000;
            }

            v27 = *v23;
            if (*v23)
            {
              v28 = *(v27 + 16);
              v27 = *(v27 + 4);
              v29 = ((v28 >> 2) & 1) << 32;
            }

            else
            {
              v29 = 0x100000000;
            }

            v4 = v25 | v4 & 0xFFFFFF0000000000 | v26;
            v3 = v27 | v3 & 0xFFFFFF0000000000 | v29;
            WTF::FileSystemImpl::pathByAppendingComponent();
            if (WTF::FileSystemImpl::deleteEmptyDirectory(&v50, v30))
            {
              goto LABEL_49;
            }

            v31 = *v23;
            if (*v23)
            {
              v32 = *(v31 + 16);
              v31 = *(v31 + 4);
              v33 = ((v32 >> 2) & 1) << 32;
            }

            else
            {
              v33 = 0x100000000;
            }

            v2 = v31 | v2 & 0xFFFFFF0000000000 | v33;
            WebCore::SecurityOriginData::fromDatabaseIdentifier();
            if (v65)
            {
              LOBYTE(v34) = v69;
              if ((v69 & 1) == 0)
              {
                goto LABEL_75;
              }

              LOBYTE(v56) = 0;
              v58 = -1;
              if (!v68)
              {
                v35 = v66;
                if (v66)
                {
                  atomic_fetch_add_explicit(v66, 2u, memory_order_relaxed);
                }

                *&v56 = v35;
                v34 = *(&v66 + 1);
                if (*(&v66 + 1))
                {
                  atomic_fetch_add_explicit(*(&v66 + 1), 2u, memory_order_relaxed);
                }

                *(&v56 + 1) = v34;
                v57 = v67;
                LOBYTE(v34) = v68;
                v58 = v68;
                if (v65)
                {
                  goto LABEL_28;
                }

LABEL_75:
                __break(1u);
LABEL_76:
                LOBYTE(v59) = 0;
LABEL_47:
                v61 = v34;
                goto LABEL_48;
              }

              if (v68 != 255)
              {
                v56 = v66;
                v58 = v68;
              }

LABEL_28:
              LOBYTE(v59) = 0;
              v61 = -1;
              LOBYTE(v34) = v64;
              if (!v64)
              {
                v36 = v62;
                if (v62)
                {
                  atomic_fetch_add_explicit(v62, 2u, memory_order_relaxed);
                }

                *&v59 = v36;
                v34 = *(&v62 + 1);
                if (*(&v62 + 1))
                {
                  atomic_fetch_add_explicit(*(&v62 + 1), 2u, memory_order_relaxed);
                }

                *(&v59 + 1) = v34;
                v60 = v63;
                LOBYTE(v34) = v64;
                goto LABEL_47;
              }

              if (v64 == 255)
              {
                goto LABEL_48;
              }

              v44 = v62;
            }

            else
            {
              LOBYTE(v34) = v69;
              if ((v69 & 1) == 0)
              {
                goto LABEL_75;
              }

              LOBYTE(v56) = 0;
              v58 = -1;
              LODWORD(v34) = v68;
              if (v68)
              {
                if (v68 == 255)
                {
                  goto LABEL_76;
                }

                v56 = v66;
                v58 = v68;
              }

              else
              {
                v37 = v66;
                if (v66)
                {
                  atomic_fetch_add_explicit(v66, 2u, memory_order_relaxed);
                }

                *&v56 = v37;
                v34 = *(&v66 + 1);
                if (*(&v66 + 1))
                {
                  atomic_fetch_add_explicit(*(&v66 + 1), 2u, memory_order_relaxed);
                }

                *(&v56 + 1) = v34;
                v57 = v67;
                LODWORD(v34) = v68;
                v58 = v68;
                if ((v69 & 1) == 0)
                {
                  goto LABEL_75;
                }
              }

              LOBYTE(v59) = 0;
              v61 = -1;
              if (!v34)
              {
                v38 = v66;
                if (v66)
                {
                  atomic_fetch_add_explicit(v66, 2u, memory_order_relaxed);
                }

                *&v59 = v38;
                v34 = *(&v66 + 1);
                if (*(&v66 + 1))
                {
                  atomic_fetch_add_explicit(*(&v66 + 1), 2u, memory_order_relaxed);
                }

                *(&v59 + 1) = v34;
                v60 = v67;
                LOBYTE(v34) = v68;
                goto LABEL_47;
              }

              if (v34 == 255)
              {
LABEL_48:
                WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v49, a2, &v56);
                WebCore::ClientOrigin::~ClientOrigin(&v56, v39);
                std::optional<WebCore::SecurityOriginData>::~optional(&v62);
LABEL_49:
                v40 = v50;
                v50 = 0;
                if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v40, v22);
                }

                ++v23;
                v24 -= 8;
                if (!v24)
                {
                  goto LABEL_58;
                }

                continue;
              }

              v44 = v66;
            }

            break;
          }

          v59 = v44;
          goto LABEL_47;
        }

LABEL_58:
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v51, v22);
        WTF::FileSystemImpl::deleteEmptyDirectory(&v53, v41);
        v43 = v53;
        v53 = 0;
        if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v43, v42);
        }

        v5 = v45;
        v11 = v46;
      }

      std::optional<WebCore::SecurityOriginData>::~optional(&v66);
      ++v10;
    }

    while (v10 != v11);
  }

  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v54, v8);
}

uint64_t WebKit::IDBStorageManager::migrateOriginData(WebKit::IDBStorageManager *this, const WTF::String *a2, const WTF::String *a3)
{
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F110AB30;
  v8 = v5;
  v6 = WebKit::migrateOriginDataImpl(this, a2, &v8);
  (*(*v5 + 8))(v5);
  return v6;
}

void WebKit::IDBStorageManager::~IDBStorageManager(WebKit::IDBStorageManager *this)
{
  v3 = WTF::HashTable<WebCore::IDBDatabaseIdentifier,WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashMap<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::FastMalloc>::begin(this + 5);
  v4 = v2;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = &v5[11 * *(v5 - 1)];
  }

  else
  {
    v6 = 0;
  }

  if (v6 != v3)
  {
    do
    {
      WebCore::IDBServer::UniqueIDBDatabase::immediateClose(v3[10]);
      do
      {
        v3 += 11;
      }

      while (v3 != v4 && (*v3 + 1) <= 1);
    }

    while (v3 != v6);
    v5 = *(this + 5);
  }

  if (v5)
  {
    WTF::HashTable<WebCore::IDBDatabaseIdentifier,WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashMap<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::FastMalloc>::deallocateTable(v5, v2);
  }

  v7 = *(this + 4);
  *(this + 4) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 3);
  *(this + 3) = 0;
  if (v8)
  {
    if (!atomic_load(v8))
    {
      __break(0xC471u);
      return;
    }

    atomic_fetch_add(v8, 0xFFFFFFFF);
  }

  v10 = *(this + 2);
  *(this + 2) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v2);
  }

  v11 = *(this + 1);
  if (v11)
  {
    *(v11 + 8) = 0;
    v12 = *(this + 1);
    *(this + 1) = 0;
    if (v12)
    {
      if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v12);
        WTF::fastFree(v12, v2);
      }
    }
  }
}

{
  WebKit::IDBStorageManager::~IDBStorageManager(this);

  bmalloc::api::tzoneFree(v1, v2);
}

uint64_t WebKit::IDBStorageManager::hasDataInMemory(WebKit::IDBStorageManager *this)
{
  v2 = WTF::HashTable<WebCore::IDBDatabaseIdentifier,WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashMap<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::FastMalloc>::begin(this + 5);
  v3 = v2;
  v5 = v4;
  v6 = *(this + 5);
  if (v6)
  {
    v7 = (v6 + 88 * *(v6 - 4));
  }

  else
  {
    v7 = 0;
  }

  if (v2 == v7)
  {
    return 0;
  }

  while (1)
  {
    result = WebCore::IDBServer::UniqueIDBDatabase::hasDataInMemory(v3[10]);
    if (result)
    {
      break;
    }

    do
    {
      v3 += 11;
    }

    while (v3 != v5 && (*v3 + 1) <= 1);
    if (v3 == v7)
    {
      return result;
    }
  }

  return 1;
}

uint64_t *WebKit::IDBStorageManager::closeDatabasesForDeletion(WebKit::IDBStorageManager *this)
{
  v3 = WTF::HashTable<WebCore::IDBDatabaseIdentifier,WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashMap<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::FastMalloc>::begin(this + 5);
  v4 = v2;
  result = *(this + 5);
  if (result)
  {
    v6 = &result[11 * *(result - 1)];
  }

  else
  {
    v6 = 0;
  }

  if (v6 != v3)
  {
    do
    {
      WebCore::IDBServer::UniqueIDBDatabase::immediateClose(v3[10]);
      do
      {
        v3 += 11;
      }

      while (v3 != v4 && (*v3 + 1) <= 1);
    }

    while (v3 != v6);
    result = *(this + 5);
  }

  if (result)
  {
    *(this + 5) = 0;

    return WTF::HashTable<WebCore::IDBDatabaseIdentifier,WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashMap<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::FastMalloc>::deallocateTable(result, v2);
  }

  return result;
}

uint64_t WebKit::IDBStorageManager::getOrCreateUniqueIDBDatabase(WebKit::IDBStorageManager *this, const WebCore::IDBDatabaseIdentifier *a2)
{
  if (*a2 == -1 || !*a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDE647CLL);
  }

  v4 = *(this + 5);
  if (v4 || (WTF::HashTable<WebCore::IDBDatabaseIdentifier,WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashMap<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::FastMalloc>::expand(this + 5, 0), (v4 = *(this + 5)) != 0))
  {
    v5 = *(v4 - 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = WTF::computeHash<WebCore::IDBDatabaseIdentifier>(a2);
  v8 = 0;
  for (i = 1; ; ++i)
  {
    v10 = v6 & v5;
    v11 = v4 + 88 * (v6 & v5);
    if (*v11 == -1)
    {
      v8 = v4 + 88 * v10;
      goto LABEL_12;
    }

    if (!*v11)
    {
      break;
    }

    if (WebCore::operator==(v4 + 88 * v10, a2, v7))
    {
      return *(v11 + 80);
    }

LABEL_12:
    v6 = i + v10;
  }

  if (v8)
  {
    *(v8 + 64) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 40) = 0;
    *(v8 + 72) = 0;
    *v8 = 0u;
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0;
    *(v8 + 80) = 0;
    --*(*(this + 5) - 16);
    v11 = v8;
  }

  WTF::String::operator=(v11, a2);
  mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>((v11 + 8), (a2 + 8));
  mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>((v11 + 40), (a2 + 40));
  *(v11 + 72) = *(a2 + 72);
  std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>::reset[abi:sn200100]((v11 + 80), 0);
  v13 = *(this + 5);
  if (v13)
  {
    v14 = *(v13 - 12) + 1;
  }

  else
  {
    v14 = 1;
  }

  *(v13 - 12) = v14;
  v15 = (*(v13 - 16) + v14);
  v16 = *(v13 - 4);
  if (v16 > 0x400)
  {
    if (v16 <= 2 * v15)
    {
LABEL_20:
      v11 = WTF::HashTable<WebCore::IDBDatabaseIdentifier,WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashMap<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::FastMalloc>::expand(this + 5, v11);
    }
  }

  else if (3 * v16 <= 4 * v15)
  {
    goto LABEL_20;
  }

  if (*MEMORY[0x1E69E2E18])
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2E18], v12);
  }

  else
  {
    NonCompact = WebCore::IDBServer::UniqueIDBDatabase::operatorNewSlow(0x100);
  }

  v18 = NonCompact;
  MEMORY[0x19EB0FE10](NonCompact, this, a2);
  std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>::reset[abi:sn200100]((v11 + 80), v18);
  return *(v11 + 80);
}

_BYTE *WebCore::IDBOpenRequestData::databaseIdentifier(WebCore::IDBOpenRequestData *this, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  *this = v4;
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(this + 8, a2 + 32);
  result = mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(this + 40, a2 + 64);
  *(this + 72) = *(a2 + 96);
  return result;
}

void WebCore::IDBDatabaseIdentifier::~IDBDatabaseIdentifier(WebCore::IDBDatabaseIdentifier *this, WTF::StringImpl *a2)
{
  if (!*(this + 64))
  {
    v3 = *(this + 6);
    *(this + 6) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(this + 5);
    *(this + 5) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  *(this + 64) = -1;
  if (!*(this + 32))
  {
    v5 = *(this + 2);
    *(this + 2) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(this + 1);
    *(this + 1) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }

  *(this + 32) = -1;
  v7 = *this;
  *this = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }
  }
}

void WebKit::IDBStorageManager::registerConnection(WebKit::IDBStorageManager *this, WebCore::IDBServer::UniqueIDBDatabaseConnection *a2)
{
  v2 = *(this + 3);
  if (!v2)
  {
    goto LABEL_33;
  }

  v4 = *(a2 + 2);
  if (v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDE67ECLL);
  }

  if (!v4)
  {
LABEL_33:
    __break(0xC471u);
    JUMPOUT(0x19DDE67CCLL);
  }

  v5 = *(v2 + 16);
  if (!v5)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v2 + 16));
    v5 = *(v2 + 16);
  }

  v6 = *(v5 - 8);
  v7 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v8 = 9 * ((v7 + ~(v7 << 13)) ^ ((v7 + ~(v7 << 13)) >> 8));
  v9 = (v8 ^ (v8 >> 15)) + ~((v8 ^ (v8 >> 15)) << 27);
  v10 = v6 & ((v9 >> 31) ^ v9);
  v11 = (v5 + 16 * v10);
  v12 = *v11;
  if (*v11)
  {
    v13 = 0;
    v14 = 1;
    while (v12 != v4)
    {
      if (v12 == -1)
      {
        v13 = v11;
      }

      v10 = (v10 + v14) & v6;
      v11 = (v5 + 16 * v10);
      v12 = *v11;
      ++v14;
      if (!*v11)
      {
        if (v13)
        {
          *v13 = 0;
          v13[1] = 0;
          --*(*(v2 + 16) - 16);
          v11 = v13;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    *v11 = v4;
    if (!*a2)
    {
      v15 = WTF::fastCompactMalloc(0x10);
      *v15 = 1;
      *(v15 + 8) = a2;
      v16 = *a2;
      *a2 = v15;
      if (v16)
      {
        if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v16);
          WTF::fastFree(v16, a2);
        }
      }
    }

    v17 = *a2;
    atomic_fetch_add(*a2, 1u);
    v18 = v11[1];
    v11[1] = v17;
    if (v18 && atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v18);
      WTF::fastFree(v18, a2);
    }

    v19 = *(v2 + 16);
    if (v19)
    {
      v20 = *(v19 - 12) + 1;
    }

    else
    {
      v20 = 1;
    }

    *(v19 - 12) = v20;
    v21 = (*(v19 - 16) + v20);
    v22 = *(v19 - 4);
    if (v22 > 0x400)
    {
      if (v22 > 2 * v21)
      {
        return;
      }
    }

    else if (3 * v22 > 4 * v21)
    {
      return;
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v2 + 16));
  }
}

void WebKit::IDBStorageManager::unregisterConnection(WebKit::IDBStorageManager *this, WebCore::IDBServer::UniqueIDBDatabaseConnection *a2)
{
  v2 = *(this + 3);
  if (!v2)
  {
    goto LABEL_25;
  }

  v5 = *(v2 + 16);
  v4 = (v2 + 16);
  v3 = v5;
  if (!v5)
  {
    return;
  }

  v6 = *(a2 + 2);
  if (v6 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDE6998);
  }

  if (!v6)
  {
LABEL_25:
    __break(0xC471u);
    JUMPOUT(0x19DDE6978);
  }

  v7 = *(v3 - 8);
  v8 = (v6 + ~(v6 << 32)) ^ ((v6 + ~(v6 << 32)) >> 22);
  v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
  v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
  v11 = v7 & ((v10 >> 31) ^ v10);
  v12 = *(v3 + 16 * v11);
  if (v12 != v6)
  {
    v13 = 1;
    while (v12)
    {
      v11 = (v11 + v13) & v7;
      v12 = *(v3 + 16 * v11);
      ++v13;
      if (v12 == v6)
      {
        goto LABEL_11;
      }
    }

    v11 = *(v3 - 4);
  }

LABEL_11:
  if (v11 != *(v3 - 4))
  {
    v14 = (v3 + 16 * v11);
    v15 = v14[1];
    *v14 = -1;
    v14[1] = 0;
    if (v15 && atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v15);
      WTF::fastFree(v15, a2);
    }

    v16 = *v4;
    v17 = vadd_s32(*(*v4 - 16), 0xFFFFFFFF00000001);
    *(v16 - 16) = v17;
    v18 = *(v16 - 4);
    if (6 * v17.i32[1] < v18 && v18 >= 9)
    {

      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v4, v18 >> 1);
    }
  }
}

unsigned int *WebKit::IDBStorageManager::registerTransaction(WebKit::IDBStorageManager *this, WebCore::IDBServer::UniqueIDBDatabaseTransaction *a2)
{
  v2 = *(this + 3);
  if (!v2)
  {
    goto LABEL_40;
  }

  v28 = *(a2 + 24);
  v4 = v28;
  if (v28 == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDE6C6CLL);
  }

  if (*(&v28 + 1) == -1)
  {
LABEL_40:
    __break(0xC471u);
    JUMPOUT(0x19DDE6C4CLL);
  }

  v5 = *(v2 + 24);
  if (v5 || (WTF::HashTable<WebCore::IDBResourceIdentifier,WTF::KeyValuePair<WebCore::IDBResourceIdentifier,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseTransaction,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::IDBResourceIdentifier,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseTransaction,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WebCore::IDBResourceIdentifier>,WTF::HashMap<WebCore::IDBResourceIdentifier,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseTransaction,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WebCore::IDBResourceIdentifier>,WTF::HashTraits<WebCore::IDBResourceIdentifier>,WTF::HashTraits<WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseTransaction,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::IDBResourceIdentifier>,WTF::FastMalloc>::expand((v2 + 24)), (v5 = *(v2 + 24)) != 0))
  {
    v6 = *(v5 - 8);
  }

  else
  {
    v6 = 0;
  }

  LODWORD(v29) = -1640531527;
  WORD2(v29) = 0;
  BYTE6(v29) = 0;
  WTF::add<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>(&v29, v28, &v28 + 1);
  v8 = WTF::SuperFastHash::hash(&v29) & v6;
  v9 = (v5 + 24 * v8);
  v11 = *v9;
  v10 = *(v9 + 1);
  if (*v9 != 0)
  {
    v12 = 0;
    v13 = 1;
    do
    {
      result = v12;
      v12 = v9;
      if (v10 != -1)
      {
        v15 = v4 != 0;
        v16 = v11 != 0;
        v17 = v11 == v4;
        if (!v15 || !v16)
        {
          v17 = v15 ^ v16 ^ 1;
        }

        if (v17 == 1)
        {
          v18 = *(&v4 + 1) != 0;
          v19 = v10 != 0;
          v20 = v10 == *(&v4 + 1);
          if (!v18 || !v19)
          {
            v20 = v18 ^ v19 ^ 1;
          }

          v12 = result;
          if (v20)
          {
            return result;
          }
        }

        else
        {
          v12 = result;
        }
      }

      v8 = (v8 + v13) & v6;
      v9 = (v5 + 24 * v8);
      v11 = *v9;
      v10 = *(v9 + 1);
      ++v13;
    }

    while (*v9 != 0);
    if (v12)
    {
      WebCore::IDBResourceIdentifier::IDBResourceIdentifier(&v29);
      *v12 = v29;
      *(v12 + 2) = 0;
      --*(*(v2 + 24) - 16);
      v9 = v12;
    }
  }

  *v9 = v28;
  if (!*a2)
  {
    v21 = WTF::fastCompactMalloc(0x10);
    *v21 = 1;
    *(v21 + 8) = a2;
    v22 = *a2;
    *a2 = v21;
    if (v22)
    {
      if (atomic_fetch_add(v22, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v22);
        WTF::fastFree(v22, v7);
      }
    }
  }

  v23 = *a2;
  atomic_fetch_add(*a2, 1u);
  result = *(v9 + 2);
  *(v9 + 2) = v23;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);
    result = WTF::fastFree(result, v7);
  }

  v24 = *(v2 + 24);
  if (v24)
  {
    v25 = *(v24 - 12) + 1;
  }

  else
  {
    v25 = 1;
  }

  *(v24 - 12) = v25;
  v26 = (*(v24 - 16) + v25);
  v27 = *(v24 - 4);
  if (v27 <= 0x400)
  {
    if (3 * v27 > 4 * v26)
    {
      return result;
    }

    return WTF::HashTable<WebCore::IDBResourceIdentifier,WTF::KeyValuePair<WebCore::IDBResourceIdentifier,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseTransaction,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::IDBResourceIdentifier,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseTransaction,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WebCore::IDBResourceIdentifier>,WTF::HashMap<WebCore::IDBResourceIdentifier,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseTransaction,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WebCore::IDBResourceIdentifier>,WTF::HashTraits<WebCore::IDBResourceIdentifier>,WTF::HashTraits<WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseTransaction,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::IDBResourceIdentifier>,WTF::FastMalloc>::expand((v2 + 24));
  }

  if (v27 <= 2 * v26)
  {
    return WTF::HashTable<WebCore::IDBResourceIdentifier,WTF::KeyValuePair<WebCore::IDBResourceIdentifier,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseTransaction,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::IDBResourceIdentifier,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseTransaction,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WebCore::IDBResourceIdentifier>,WTF::HashMap<WebCore::IDBResourceIdentifier,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseTransaction,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WebCore::IDBResourceIdentifier>,WTF::HashTraits<WebCore::IDBResourceIdentifier>,WTF::HashTraits<WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseTransaction,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::IDBResourceIdentifier>,WTF::FastMalloc>::expand((v2 + 24));
  }

  return result;
}

uint64_t WebKit::IDBStorageManager::unregisterTransaction(uint64_t this, WebCore::IDBServer::UniqueIDBDatabaseTransaction *a2)
{
  v2 = *(this + 24);
  if (!v2)
  {
    goto LABEL_33;
  }

  v26 = *(a2 + 24);
  v5 = *(v2 + 24);
  v3 = (v2 + 24);
  v4 = v5;
  if (!v5)
  {
    return this;
  }

  v6 = v26;
  if (v26 == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDE6EA8);
  }

  if (*(&v26 + 1) == -1)
  {
LABEL_33:
    __break(0xC471u);
    JUMPOUT(0x19DDE6E88);
  }

  v7 = *(v4 - 8);
  v27 = -1640531527;
  v28 = 0;
  v29 = 0;
  WTF::add<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>(&v27, v26, &v26 + 1);
  this = WTF::SuperFastHash::hash(&v27);
  v9 = this & v7;
  v10 = (v4 + 24 * (this & v7));
  v12 = *v10;
  v11 = v10[1];
  if (*v10 == 0)
  {
LABEL_15:
    v20 = *v3;
    if (!*v3)
    {
      return this;
    }

    v21 = *(v20 - 4);
    v10 = (v20 + 24 * v21);
LABEL_17:
    v20 += 24 * v21;
    if (v20 == v10)
    {
      return this;
    }

    goto LABEL_18;
  }

  v13 = 1;
  while (1)
  {
    if (v11 != -1)
    {
      v14 = v6 != 0;
      v15 = v12 != 0;
      v16 = v12 == v6;
      if (!v14 || !v15)
      {
        v16 = v14 ^ v15 ^ 1;
      }

      if (v16 == 1)
      {
        v17 = *(&v6 + 1) != 0;
        v18 = v11 != 0;
        v19 = v11 == *(&v6 + 1);
        if (!v17 || !v18)
        {
          v19 = v17 ^ v18 ^ 1;
        }

        if (v19)
        {
          break;
        }
      }
    }

    v9 = (v9 + v13) & v7;
    v10 = (v4 + 24 * v9);
    v12 = *v10;
    v11 = v10[1];
    ++v13;
    if (*v10 == 0)
    {
      goto LABEL_15;
    }
  }

  v20 = *v3;
  if (*v3)
  {
    v21 = *(v20 - 4);
    goto LABEL_17;
  }

LABEL_18:
  if (v20 != v10)
  {
    this = v10[2];
    v10[1] = -1;
    v10[2] = 0;
    if (this && atomic_fetch_add(this, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, this);
      this = WTF::fastFree(this, v8);
    }

    v22 = *v3;
    v23 = vadd_s32(*(*v3 - 16), 0xFFFFFFFF00000001);
    *(v22 - 16) = v23;
    v24 = *(v22 - 4);
    if (6 * v23.i32[1] < v24 && v24 >= 9)
    {
      return WTF::HashTable<WebCore::IDBResourceIdentifier,WTF::KeyValuePair<WebCore::IDBResourceIdentifier,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseTransaction,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::IDBResourceIdentifier,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseTransaction,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WebCore::IDBResourceIdentifier>,WTF::HashMap<WebCore::IDBResourceIdentifier,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseTransaction,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WebCore::IDBResourceIdentifier>,WTF::HashTraits<WebCore::IDBResourceIdentifier>,WTF::HashTraits<WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseTransaction,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::IDBResourceIdentifier>,WTF::FastMalloc>::rehash(v3, v24 >> 1);
    }
  }

  return this;
}

WTF::StringImpl *WebKit::IDBStorageManager::createBackingStore@<X0>(WebKit::IDBStorageManager *this@<X0>, const WebCore::IDBDatabaseIdentifier *a2@<X1>, WTF::StringImpl **a3@<X8>)
{
  v5 = *(this + 2);
  if (v5 && *(v5 + 4) && *(a2 + 72) != 1)
  {
    WebCore::SQLiteFileSystem::computeHashForFileName();
    WTF::FileSystemImpl::pathByAppendingComponent();
    if (*MEMORY[0x1E69E2E28])
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2E28], v8);
    }

    else
    {
      NonCompact = WebCore::IDBServer::SQLiteIDBBackingStore::operatorNewSlow(0x250);
    }

    *a3 = MEMORY[0x19EB0FED0](NonCompact, a2, &v12);
    v11 = v12;
    v12 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v10);
    }

    result = v13;
    v13 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v10);
    }
  }

  else
  {
    if (*MEMORY[0x1E69E2E20])
    {
      v6 = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2E20], a2);
    }

    else
    {
      v6 = WebCore::IDBServer::MemoryIDBBackingStore::operatorNewSlow(0x80);
    }

    result = MEMORY[0x19EB0FE70](v6, a2);
    *a3 = result;
  }

  return result;
}

void WebKit::IDBStorageRegistry::~IDBStorageRegistry(WebKit::IDBStorageRegistry *this, void *a2)
{
  v3 = *(this + 3);
  if (v3)
  {
    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::WeakPtr<WebKit::CacheStorageCache,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 2);
  if (v4)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::IDBStorageConnectionToClient>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::IDBStorageConnectionToClient>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::IDBStorageConnectionToClient>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::IDBStorageConnectionToClient>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }
}

uint64_t WebKit::IDBStorageRegistry::ensureConnectionToClient(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3 == -1 || !a3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDE72E8);
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::IDBStorageConnectionToClient>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::IDBStorageConnectionToClient>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::IDBStorageConnectionToClient>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::IDBStorageConnectionToClient>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 8), 0);
    v6 = *(a1 + 8);
  }

  v7 = *(v6 - 8);
  v8 = (~(a3 << 32) + a3) ^ ((~(a3 << 32) + a3) >> 22);
  v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
  v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
  v11 = v7 & ((v10 >> 31) ^ v10);
  v12 = (v6 + 16 * v11);
  v13 = *v12;
  if (!*v12)
  {
LABEL_13:
    v16 = v12[1];
    *v12 = a3;
    v12[1] = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = *(a1 + 8);
    if (v17)
    {
      v18 = *(v17 - 12) + 1;
    }

    else
    {
      v18 = 1;
    }

    *(v17 - 12) = v18;
    v19 = (*(v17 - 16) + v18);
    v20 = *(v17 - 4);
    if (v20 > 0x400)
    {
      if (v20 > 2 * v19)
      {
        goto LABEL_20;
      }
    }

    else if (3 * v20 > 4 * v19)
    {
LABEL_20:
      if (WebKit::IDBStorageConnectionToClient::s_heapRef)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::IDBStorageConnectionToClient::s_heapRef, a2);
      }

      else
      {
        NonCompact = WebKit::IDBStorageConnectionToClient::operatorNewSlow(0);
      }

      v22 = NonCompact;
      *(NonCompact + 8) = 0;
      *NonCompact = &unk_1F110A918;
      *(NonCompact + 16) = a2;
      *(NonCompact + 24) = a3;
      WebCore::IDBServer::IDBConnectionToClient::create();
      v23 = v12[1];
      v12[1] = v22;
      if (v23)
      {
        (*(*v23 + 8))(v23);
      }

      return *(v12[1] + 32);
    }

    v12 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::IDBStorageConnectionToClient>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::IDBStorageConnectionToClient>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::IDBStorageConnectionToClient>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::IDBStorageConnectionToClient>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 8), v12);
    goto LABEL_20;
  }

  v14 = 0;
  v15 = 1;
  while (v13 != a3)
  {
    if (v13 == -1)
    {
      v14 = v12;
    }

    v11 = (v11 + v15) & v7;
    v12 = (v6 + 16 * v11);
    v13 = *v12;
    ++v15;
    if (!*v12)
    {
      if (v14)
      {
        *v14 = 0;
        v14[1] = 0;
        --*(*(a1 + 8) - 16);
        v12 = v14;
      }

      goto LABEL_13;
    }
  }

  return *(v12[1] + 32);
}

uint64_t *WebKit::IDBStorageRegistry::removeConnectionToClient(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 8);
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(v3);
  v7 = result;
  v8 = v6;
  v9 = 0;
  if (v3)
  {
    v9 = &v3[2 * *(v3 - 1)];
  }

  if (v9 != result)
  {
    do
    {
      v10 = v7[1];
      if (*(v10 + 16) == a2)
      {
        result = WebCore::IDBServer::IDBConnectionToClient::connectionToClientClosed(*(v10 + 32));
      }

      else
      {
        result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::IDBStorageConnectionToClient>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::IDBStorageConnectionToClient>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<std::unique_ptr<WebKit::IDBStorageConnectionToClient>>(v11, v4, v7, v7 + 1);
      }

      do
      {
        v7 += 2;
      }

      while (v7 != v8 && (*v7 + 1) <= 1);
    }

    while (v7 != v9);
  }

  if (v3)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::IDBStorageConnectionToClient>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::IDBStorageConnectionToClient>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::IDBStorageConnectionToClient>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::IDBStorageConnectionToClient>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v3, v6);
  }

  return result;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::IDBStorageConnectionToClient>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::IDBStorageConnectionToClient>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<std::unique_ptr<WebKit::IDBStorageConnectionToClient>>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  if (*a3 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDE75E0);
  }

  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDE7600);
  }

  v8 = result;
  v9 = *a2;
  if (!*a2)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::IDBStorageConnectionToClient>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::IDBStorageConnectionToClient>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::IDBStorageConnectionToClient>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::IDBStorageConnectionToClient>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, 0);
    v9 = *a2;
    v4 = *a3;
  }

  v10 = *(v9 - 8);
  v11 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 16 * v14);
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v4)
      {
        v25 = 0;
        v24 = v9 + 16 * *(v9 - 4);
        goto LABEL_23;
      }

      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = (v9 + 16 * v14);
      v16 = *v15;
      ++v18;
    }

    while (*v15);
    if (v17)
    {
      *v17 = 0;
      v17[1] = 0;
      --*(*a2 - 16);
      v4 = *a3;
      v15 = v17;
    }
  }

  *v15 = v4;
  v19 = *a4;
  *a4 = 0;
  result = v15[1];
  v15[1] = v19;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v20 = *a2;
  if (*a2)
  {
    v21 = *(v20 - 12) + 1;
  }

  else
  {
    v21 = 1;
  }

  *(v20 - 12) = v21;
  v22 = (*(v20 - 16) + v21);
  v23 = *(v20 - 4);
  if (v23 > 0x400)
  {
    if (v23 <= 2 * v22)
    {
LABEL_19:
      result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::IDBStorageConnectionToClient>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::IDBStorageConnectionToClient>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::IDBStorageConnectionToClient>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::IDBStorageConnectionToClient>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, v15);
      v15 = result;
      v20 = *a2;
      if (*a2)
      {
        v23 = *(v20 - 4);
      }

      else
      {
        v23 = 0;
      }
    }
  }

  else if (3 * v23 <= 4 * v22)
  {
    goto LABEL_19;
  }

  v24 = v20 + 16 * v23;
  v25 = 1;
LABEL_23:
  *v8 = v15;
  v8[1] = v24;
  *(v8 + 16) = v25;
  return result;
}

uint64_t WebKit::IDBStorageRegistry::connection(uint64_t a1, void *a2)
{
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDE7704);
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 - 8);
  v4 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
  v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
  v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
  v7 = v3 & ((v6 >> 31) ^ v6);
  v8 = *(v2 + 16 * v7);
  if (v8 != a2)
  {
    v9 = 1;
    while (v8)
    {
      v7 = (v7 + v9) & v3;
      v8 = *(v2 + 16 * v7);
      ++v9;
      if (v8 == a2)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  v10 = *(v2 + 16 * v7 + 8);
  if (!v10)
  {
    return 0;
  }

  atomic_fetch_add(v10, 1u);
  v11 = *(v10 + 8);
  if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10);
    WTF::fastFree(v10, a2);
  }

  return v11;
}

uint64_t WebKit::IDBStorageRegistry::transaction(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v22 = a3;
  if (!(a3 | a2))
  {
    return 0;
  }

  if (a3 != -1)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      v6 = *(v4 - 8);
      v23 = -1640531527;
      v24 = 0;
      v25 = 0;
      WTF::add<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>(&v23, a2, &v22);
      v8 = WTF::SuperFastHash::hash(&v23) & v6;
      v9 = (v4 + 24 * v8);
      v11 = *v9;
      v10 = v9[1];
      if (*v9 != 0)
      {
        for (i = 1; ; ++i)
        {
          if (v10 != -1)
          {
            v13 = a2 != 0;
            v14 = v11 != 0;
            v15 = v11 == a2;
            if (!v13 || !v14)
            {
              v15 = v13 ^ v14 ^ 1;
            }

            if (v15 == 1)
            {
              v16 = a3 != 0;
              v17 = v10 != 0;
              v18 = v10 == a3;
              if (!v16 || !v17)
              {
                v18 = v16 ^ v17 ^ 1;
              }

              if (v18)
              {
                break;
              }
            }
          }

          v8 = (v8 + i) & v6;
          v11 = *(v4 + 24 * v8);
          v10 = *(v4 + 24 * v8 + 8);
          if (*(v4 + 24 * v8) == 0)
          {
            return 0;
          }
        }

        v21 = *(v4 + 24 * v8 + 16);
        if (v21)
        {
          atomic_fetch_add(v21, 1u);
          v19 = *(v21 + 8);
          if (atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v21);
            WTF::fastFree(v21, v7);
          }

          return v19;
        }
      }
    }

    return 0;
  }

  result = 372;
  __break(0xC471u);
  return result;
}

void *WebKit::LocalStorageManager::originsOfLocalStorageData(void *this, const WTF::String *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  *this = 0;
  this[1] = 0;
  if (*a2 && *(*a2 + 4))
  {
    v2 = this;
    WTF::FileSystemImpl::listDirectory(&v7, a2, a2);
    if (v8)
    {
      v4 = v7;
      v5 = 8 * v8;
      do
      {
        WebKit::fileNameToOrigin(v9, v4);
        if (v9[32] == 1)
        {
          v6 = *(v2 + 12);
          if (v6 == *(v2 + 8))
          {
            WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::SecurityOriginData&>(v2, v9);
          }

          else
          {
            mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((*v2 + 32 * v6), v9);
            ++*(v2 + 12);
          }
        }

        std::optional<WebCore::SecurityOriginData>::~optional(v9);
        ++v4;
        v5 -= 8;
      }

      while (v5);
    }

    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v7, v3);
  }

  return this;
}

uint64_t WebKit::fileNameToOrigin(WebKit *this, WTF::StringImpl **a2)
{
  result = *a2;
  if (*a2 && (result = WTF::StringImpl::endsWith(), (result & 1) != 0) && *a2 && (v5 = *(*a2 + 1), v5 > 0xD))
  {
    WTF::String::left(a2, v5 - 13, &v7);
    WebCore::SecurityOriginData::fromDatabaseIdentifier();
    result = v7;
    v7 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v6);
      }
    }
  }

  else
  {
    *this = 0;
    *(this + 32) = 0;
  }

  return result;
}

WTF::StringImpl *WebKit::LocalStorageManager::localStorageFilePath(WTF::StringImpl *this, const WTF::String *a2, const WebCore::ClientOrigin *a3)
{
  v3 = this;
  if (*a2 && *(*a2 + 4))
  {
    WebKit::originToFileName(&v7, a3);
    if (v7 && *(v7 + 1))
    {
      WTF::FileSystemImpl::pathByAppendingComponent();
    }

    else
    {
      v6 = *MEMORY[0x1E696EBA8];
      if (*MEMORY[0x1E696EBA8])
      {
        atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      }

      *v3 = v6;
    }

    this = v7;
    v7 = 0;
    if (this)
    {
      if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(this, v4);
      }
    }
  }

  else
  {
    v5 = *MEMORY[0x1E696EBA8];
    if (*MEMORY[0x1E696EBA8])
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    *this = v5;
  }

  return this;
}

WTF::StringImpl *WebKit::originToFileName(WebKit *this, const WebCore::ClientOrigin *a2)
{
  WebCore::SecurityOriginData::optionalDatabaseIdentifier(&v8, (a2 + 32));
  v4 = v8;
  if (v8 && *(v8 + 1))
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    v7 = v4;
    v9[0] = ".localstorage";
    v9[1] = 14;
    result = WTF::tryMakeString<WTF::String,WTF::ASCIILiteral>(&v7, v9, this);
    if (!*this)
    {
      __break(0xC471u);
      return result;
    }

    v6 = v7;
    v7 = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v3);
    }
  }

  else
  {
    *this = 0;
  }

  result = v8;
  v8 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v3);
    }
  }

  return result;
}

uint64_t WebKit::LocalStorageManager::localStorageFilePath@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  if (*this && *(*this + 4))
  {
    return WTF::FileSystemImpl::pathByAppendingComponent();
  }

  v3 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  }

  *a2 = v3;
  return this;
}

atomic_uint **WebKit::LocalStorageManager::LocalStorageManager(atomic_uint **result, atomic_uint **a2, atomic_uint *a3)
{
  v3 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  }

  *result = v3;
  result[1] = a3;
  atomic_fetch_add(a3, 1u);
  result[2] = 0;
  result[3] = 0;
  return result;
}

BOOL WebKit::LocalStorageManager::isActive(WebKit::LocalStorageManager *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    v2 = *(v1 + 96);
    if (v2)
    {
      if (*(v2 - 12))
      {
        return 1;
      }
    }
  }

  v4 = *(this + 2);
  return v4 && (v5 = *(v4 + 96)) != 0 && *(v5 - 12) != 0;
}

BOOL WebKit::LocalStorageManager::hasDataInMemory(WebKit::LocalStorageManager *this, void *a2)
{
  v3 = *(this + 3);
  if (v3)
  {
    (*(*v3 + 80))(*(this + 3));
    if ((*(*v3 + 16))(v3))
    {
      if (WebCore::StorageMap::length((v3 + 112)))
      {
        v4 = 1;
        goto LABEL_5;
      }
    }

    else
    {
      (*(*v3 + 88))(v3);
      v3 = 0;
    }
  }

  v5 = *(this + 2);
  if (v5)
  {
    v8 = *(v5 + 104);
    v7 = (v5 + 104);
    *v7 = v8 + 1;
    v4 = WebCore::StorageMap::length((v7 + 2)) != 0;
    WTF::RefCounted<WebKit::MemoryStorageArea>::deref(v7, v9);
    if (!v3)
    {
      return v4;
    }
  }

  else
  {
    v4 = 0;
    if (!v3)
    {
      return v4;
    }
  }

LABEL_5:
  WTF::RefCounted<WebKit::MemoryStorageArea>::deref(v3 + 104, a2);
  return v4;
}

uint64_t WebKit::LocalStorageManager::clearDataInMemory(uint64_t this)
{
  v1 = this;
  v2 = *(this + 24);
  if (v2)
  {
    (*(*v2 + 80))(*(this + 24));
    if ((*(*v2 + 16))(v2))
    {
      WebCore::StorageMap::clear((v2 + 112));
      WebKit::StorageAreaBase::notifyListenersAboutClear(v2);
      this = WTF::RefCounted<WebKit::MemoryStorageArea>::deref(v2 + 104, v3);
    }

    else
    {
      this = (*(*v2 + 88))(v2);
    }
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    ++v4[26];
    WebCore::StorageMap::clear((v4 + 28));
    WebKit::StorageAreaBase::notifyListenersAboutClear(v4);

    return WTF::RefCounted<WebKit::MemoryStorageArea>::deref((v4 + 26), v5);
  }

  return this;
}

uint64_t *WebKit::MemoryStorageArea::clear(WebKit::MemoryStorageArea *this)
{
  WebCore::StorageMap::clear((this + 112));

  return WebKit::StorageAreaBase::notifyListenersAboutClear(this);
}

_DWORD *WebKit::LocalStorageManager::clearDataOnDisk(_DWORD *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    (*(*v1 + 80))(*(this + 3));
    if ((*(*v1 + 16))(v1))
    {
      v4 = *(*v1 + 88);

      return v4(v1);
    }

    else
    {
      WebKit::SQLiteStorageArea::close(v1, v2);
      WebCore::SQLiteFileSystem::deleteDatabaseFile((v1 + 28), v3);
      WebKit::StorageAreaBase::notifyListenersAboutClear(v1);

      return WTF::RefCounted<WebKit::SQLiteStorageArea>::deref(v1 + 26);
    }
  }

  return this;
}

_DWORD *WebKit::LocalStorageManager::close(_DWORD *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    (*(*v1 + 80))(*(this + 3));
    if ((*(*v1 + 16))(v1))
    {
      v3 = *(*v1 + 88);

      return v3(v1);
    }

    else
    {
      WebKit::SQLiteStorageArea::close(v1, v2);

      return WTF::RefCounted<WebKit::SQLiteStorageArea>::deref(v1 + 26);
    }
  }

  return this;
}

WebKit::SQLiteStorageArea *WebKit::LocalStorageManager::syncLocalStorage(WebKit::SQLiteStorageArea *this)
{
  if (this)
  {
    v1 = this;
    (*(*this + 80))(this);
    if ((*(*v1 + 16))(v1))
    {
      v2 = *(*v1 + 88);

      return v2(v1);
    }

    else
    {
      WebKit::SQLiteStorageArea::commitTransactionIfNecessary(v1);

      return WTF::RefCounted<WebKit::SQLiteStorageArea>::deref(v1 + 26);
    }
  }

  return this;
}

uint64_t WebKit::LocalStorageManager::connectionClosed(uint64_t a1, uint64_t a2)
{
  WebKit::LocalStorageManager::connectionClosedForLocalStorageArea(a1, a2);

  return WebKit::LocalStorageManager::connectionClosedForTransientStorageArea(a1, a2);
}

uint64_t WebKit::LocalStorageManager::connectionClosedForLocalStorageArea(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if (v2)
  {
    v4 = result;
    (*(*v2 + 80))(*(result + 24));
    WebKit::StorageAreaBase::removeListener(v2, a2);
    v5 = v2[12];
    if (!v5 || !*(v5 - 12))
    {
      v6 = (*(*v2 + 16))(v2);
      if (v6)
      {
        v8 = v2;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        ++*(v8 + 26);
      }

      if (v6 && WebCore::StorageMap::length((v2 + 14)))
      {
        if (v8)
        {
          WTF::RefCounted<WebKit::MemoryStorageArea>::deref((v2 + 13), v7);
        }
      }

      else
      {
        if (v8)
        {
          WTF::RefCounted<WebKit::MemoryStorageArea>::deref((v8 + 13), v7);
        }

        v9 = *(v4 + 8);
        if (!v9)
        {
          result = 120;
          __break(0xC471u);
          return result;
        }

        WebKit::StorageAreaRegistry::unregisterStorageArea(v9, v2[2]);
        v10 = *(v4 + 24);
        *(v4 + 24) = 0;
        if (v10)
        {
          (*(*v10 + 88))(v10);
        }
      }
    }

    v11 = *(*v2 + 88);

    return v11(v2);
  }

  return result;
}

uint64_t WebKit::LocalStorageManager::connectionClosedForTransientStorageArea(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = result;
    ++*(v2 + 104);
    WebKit::StorageAreaBase::removeListener(v2, a2);
    v5 = *(v2 + 96);
    if ((!v5 || !*(v5 - 12)) && !WebCore::StorageMap::length((v2 + 112)))
    {
      v6 = *(v3 + 8);
      if (!v6)
      {
        result = 120;
        __break(0xC471u);
        return result;
      }

      WebKit::StorageAreaRegistry::unregisterStorageArea(v6, *(v2 + 16));
      v7 = *(v3 + 16);
      *(v3 + 16) = 0;
      if (v7)
      {
        WTF::RefCounted<WebKit::MemoryStorageArea>::deref(v7 + 104, v4);
      }
    }

    return WTF::RefCounted<WebKit::MemoryStorageArea>::deref(v2 + 104, v4);
  }

  return result;
}

uint64_t WebKit::LocalStorageManager::ensureLocalStorageArea(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = (a1 + 24);
  result = *(a1 + 24);
  if (!result)
  {
    if (*a1 && *(*a1 + 4))
    {
      WebKit::SQLiteStorageArea::create(5242880, a2, a1, a3, v8);
    }

    else
    {
      WebKit::MemoryStorageArea::create(a2, 1, v8);
    }

    v6 = v8[0];
    WTF::RefPtr<WebKit::StorageAreaBase,WTF::RawPtrTraits<WebKit::StorageAreaBase>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaBase>>::operator=(v5, v8[0]);
    v7 = *(a1 + 8);
    if (v7)
    {
      v9 = *(v6 + 2);
      WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::StorageAreaBase&>((v7 + 8), &v9, v6, v8);
      (*(*v6 + 88))(v6);
      return *v5;
    }

    else
    {
      result = 120;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::MemoryStorageArea::create@<X0>(const WebCore::ClientOrigin *a1@<X0>, void *a2@<X1>, WebKit::StorageAreaBase **a3@<X8>)
{
  v3 = a2;
  v6 = WebKit::MemoryStorageArea::operator new(0x88, a2);
  v7 = WebKit::StorageAreaBase::StorageAreaBase(v6, -1, a1);
  *(v7 + 26) = 1;
  *v7 = &unk_1F110AA50;
  result = WebCore::StorageMap::StorageMap((v7 + 112));
  *(v6 + 128) = v3;
  *a3 = v6;
  return result;
}

uint64_t *WTF::RefPtr<WebKit::StorageAreaBase,WTF::RawPtrTraits<WebKit::StorageAreaBase>,WTF::DefaultRefDerefTraits<WebKit::StorageAreaBase>>::operator=(uint64_t *a1, uint64_t a2)
{
  if (a2)
  {
    (*(*a2 + 80))(a2);
  }

  v4 = *a1;
  *a1 = a2;
  if (v4)
  {
    (*(*v4 + 88))(v4);
  }

  return a1;
}

uint64_t WebKit::LocalStorageManager::connectToLocalStorageArea(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v7 = WebKit::LocalStorageManager::ensureLocalStorageArea(a1, a4, a5);
  (*(*v7 + 80))(v7);
  v11 = a3;
  v12 = a2;
  WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>&>(v7 + 12, &v12, &v11, v10);
  v8 = v7[2];
  (*(*v7 + 88))(v7);
  return v8;
}

uint64_t WebKit::LocalStorageManager::ensureTransientLocalStorageArea(WebKit::LocalStorageManager *this, const WebCore::ClientOrigin *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    ++*(v2 + 26);
    v5 = v2;
    goto LABEL_8;
  }

  WebKit::MemoryStorageArea::create(a2, 1, v9);
  v5 = v9[0];
  if (v9[0])
  {
    ++*(v9[0] + 26);
  }

  v6 = *(this + 2);
  *(this + 2) = v5;
  if (v6)
  {
    WTF::RefCounted<WebKit::MemoryStorageArea>::deref(v6 + 104, v4);
  }

  v7 = *(this + 1);
  if (v7)
  {
    v10 = *(v5 + 2);
    WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::StorageAreaBase,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::StorageAreaBase&>((v7 + 8), &v10, v5, v9);
    v2 = *(this + 2);
LABEL_8:
    WTF::RefCounted<WebKit::MemoryStorageArea>::deref(v5 + 104, a2);
    return v2;
  }

  result = 120;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::LocalStorageManager::connectToTransientLocalStorageArea(WebKit::LocalStorageManager *a1, uint64_t a2, uint64_t a3, WebCore::ClientOrigin *a4)
{
  v6 = WebKit::LocalStorageManager::ensureTransientLocalStorageArea(a1, a4);
  v7 = v6 + 104;
  ++*(v6 + 104);
  v12 = a3;
  v13 = a2;
  WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>&>((v6 + 96), &v13, &v12, v11);
  v8 = *(v7 - 88);
  WTF::RefCounted<WebKit::MemoryStorageArea>::deref(v7, v9);
  return v8;
}

WTF::StringImpl *WebKit::MemoryStorageArea::setItem@<X0>(WTF::String *a1@<X5>, WTF::String *a2@<X6>, uint64_t a3@<X0>, uint64_t a4@<X1>, char a5@<W2>, uint64_t a6@<X3>, char a7@<W4>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v23 = 0;
  v22 = 0;
  WebCore::StorageMap::setItem((a3 + 112), a1, a2, &v23, &v22);
  if (v22)
  {
    v19 = 1;
    v20 = 2;
  }

  else
  {
    if (a5 & 1) != 0 && (a7)
    {
      WebKit::StorageAreaBase::dispatchEvents(a3, a4, a6, a1, &v23, a2, a8);
    }

    v20 = 0;
    v19 = 0;
  }

  *a9 = v20;
  a9[1] = v19;
  result = v23;
  v23 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v18);
    }
  }

  return result;
}

uint64_t WebKit::MemoryStorageArea::operator new(WebKit::MemoryStorageArea *this, void *a2)
{
  if (this == 136 && WebKit::MemoryStorageArea::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::MemoryStorageArea::s_heapRef, a2);
  }

  else
  {
    return WebKit::MemoryStorageArea::operatorNewSlow(this);
  }
}

WTF::StringImpl *WebKit::MemoryStorageArea::removeItem@<X0>(WTF::String *a1@<X3>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X4>, _WORD *a6@<X8>)
{
  v16 = 0;
  WebCore::StorageMap::removeItem((a2 + 112), a1, &v16);
  v15 = 0;
  WebKit::StorageAreaBase::dispatchEvents(a2, a3, a4, a1, &v16, &v15, a5);
  v13 = v15;
  v15 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  *a6 = 0;
  result = v16;
  v16 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v12);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::MemoryStorageArea::clear@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _WORD *a5@<X8>)
{
  result = WebCore::StorageMap::length((a1 + 112));
  if (result)
  {
    WebCore::StorageMap::clear((a1 + 112));
    v15 = 0;
    v16 = 0;
    v14 = 0;
    WebKit::StorageAreaBase::dispatchEvents(a1, a2, a3, &v16, &v15, &v14, a4);
    v12 = v14;
    v14 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
    }

    v13 = v15;
    v15 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v11);
    }

    result = v16;
    v16 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v11);
    }
  }

  *a5 = 0;
  return result;
}

uint64_t WebKit::MemoryStorageArea::clone@<X0>(WebKit::MemoryStorageArea *this@<X0>, atomic_uint *a2@<X8>)
{
  v3 = a2;
  v21 = *MEMORY[0x1E69E9840];
  LOBYTE(v15[0]) = 0;
  v17 = -1;
  LODWORD(a2) = *(this + 56);
  if (!*(this + 56))
  {
    v4 = *(this + 4);
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    v15[0] = v4;
    a2 = *(this + 5);
    if (a2)
    {
      atomic_fetch_add_explicit(a2, 2u, memory_order_relaxed);
    }

    v15[1] = a2;
    v16 = *(this + 12);
    LOBYTE(a2) = *(this + 56);
    goto LABEL_7;
  }

  if (a2 != 255)
  {
    *v15 = *(this + 2);
LABEL_7:
    v17 = a2;
  }

  LOBYTE(v18[0]) = 0;
  v20 = -1;
  LODWORD(v5) = *(this + 88);
  if (!*(this + 88))
  {
    v6 = *(this + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    v18[0] = v6;
    v5 = *(this + 9);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    v18[1] = v5;
    v19 = *(this + 20);
    LOBYTE(v5) = *(this + 88);
    goto LABEL_14;
  }

  if (v5 != 255)
  {
    *v18 = *(this + 4);
LABEL_14:
    v20 = v5;
  }

  WebKit::MemoryStorageArea::create(v15, *(this + 128), v3);
  if (!v20)
  {
    v8 = v18[1];
    v18[1] = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v7);
    }

    v9 = v18[0];
    v18[0] = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v7);
    }
  }

  v20 = -1;
  if (!v17)
  {
    v10 = v15[1];
    v15[1] = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v7);
    }

    v11 = v15[0];
    v15[0] = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v7);
    }
  }

  v12 = *v3;
  v13 = *(this + 14);
  ++*v13;
  result = *(v12 + 14);
  *(v12 + 14) = v13;
  if (result)
  {
    result = WTF::RefCounted<WebCore::StorageMap::Impl>::deref(result, v7);
  }

  *(v12 + 30) = *(this + 30);
  return result;
}

WTF::StringImpl *WebKit::NetworkStorageManager::persistedFilePath(WebKit::NetworkStorageManager *this, const WebCore::ClientOrigin *a2, WebCore::SecurityOriginData *a3)
{
  WebKit::originDirectoryPath(&v7, a2 + 40, a3, *(a2 + 7));
  if (v7 && *(v7 + 1))
  {
    WTF::FileSystemImpl::pathByAppendingComponent();
  }

  else
  {
    v5 = *MEMORY[0x1E696EBA8];
    if (*MEMORY[0x1E696EBA8])
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    *this = v5;
  }

  result = v7;
  v7 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v4);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::originDirectoryPath(WTF::StringImpl *result, uint64_t a2, WebCore::SecurityOriginData *this, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*a2 && *(*a2 + 4))
  {
    WebCore::SecurityOriginData::toString(&v21, this);
    WebKit::encode(&v20, &v21, a4);
    v7 = v21;
    v21 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }

    WebCore::SecurityOriginData::toString(&v21, (this + 32));
    WebKit::encode(&v19, &v21, a4);
    v9 = v21;
    v21 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v8);
    }

    v21 = 0;
    v10 = v20;
    if (v20)
    {
      v11 = *(v20 + 16);
      v10 = *(v20 + 1);
      v21 = *(v20 + 1);
      v12 = (v11 >> 2) & 1;
    }

    else
    {
      LOBYTE(v12) = 1;
    }

    v22 = v10;
    v23 = v12;
    v24 = 0;
    v13 = v19;
    if (v19)
    {
      v14 = *(v19 + 16);
      v13 = *(v19 + 1);
      v24 = *(v19 + 1);
      v15 = (v14 >> 2) & 1;
    }

    else
    {
      LOBYTE(v15) = 1;
    }

    v25 = v13;
    v26 = v15;
    WTF::FileSystemImpl::pathByAppendingComponents();
    v17 = v19;
    v19 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v16);
    }

    result = v20;
    v20 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v16);
      }
    }
  }

  else
  {
    v18 = *MEMORY[0x1E696EBA8];
    if (*MEMORY[0x1E696EBA8])
    {
      atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
    }

    *result = v18;
  }

  return result;
}

uint64_t WebKit::NetworkStorageManager::create@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X4>, char a4@<W5>, uint64_t *a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, WTF::FileSystemImpl *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, int a20, char a21, char a22)
{
  v26 = WebKit::NetworkStorageManager::operator new(0x188, a2);
  result = WebKit::NetworkStorageManager::NetworkStorageManager(v26, a1, a2, a3, a4, a5, a6, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  *a7 = result;
  return result;
}

uint64_t WebKit::NetworkStorageManager::operator new(WebKit::NetworkStorageManager *this, void *a2)
{
  if (WebKit::NetworkStorageManager::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::NetworkStorageManager::s_heapRef, a2);
  }

  else
  {
    return WebKit::NetworkStorageManager::operatorNewSlow(0x188);
  }
}

uint64_t WebKit::NetworkStorageManager::NetworkStorageManager(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6, uint64_t a7, WTF::FileSystemImpl *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, int a20, char a21, char a22)
{
  v67 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 3;
  v29 = (a1 + 8);
  *a1 = &unk_1F110AAC0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 8), a2);
  v30 = *(a2 + 8);
  atomic_fetch_add(v30, 1u);
  *(a1 + 16) = v30;
  *(a1 + 24) = a3;
  WTF::SuspendableWorkQueue::create();
  *(a1 + 64) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 184) = 1;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  if (a5)
  {
    v32 = a4;
  }

  else
  {
    v32 = 0;
  }

  *(a1 + 336) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 296) = v32;
  *(a1 + 304) = 0;
  *(a1 + 328) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 344) = 0;
  *(a1 + 368) = 0;
  if (*a6 && *(*a6 + 4))
  {
    if ((_MergedGlobals_82 & 1) == 0)
    {
      qword_1ED642750 = 0;
      _MergedGlobals_82 = 1;
    }

    WTF::HashMap<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::NetworkStorageManager&>(v52, a6, a1);
    if ((v53 & 1) == 0)
    {
      v45 = v52[0];
      v46 = *(v52[0] + 16);
      if (v46)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v46, *(v52[0] + 8), &v51);
        v47 = v51;
        if (v51)
        {
          v48 = qword_1ED641350;
          if (!os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_ERROR))
          {
            v51 = 0;
LABEL_28:
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v47 + 8));
            goto LABEL_9;
          }

          v49 = *(a1 + 24);
          v50 = *(v47 + 24);
          *buf = 134218496;
          *&buf[4] = a1;
          *&buf[12] = 2048;
          *&buf[14] = v49;
          *&buf[22] = 2048;
          v55 = v50;
          _os_log_error_impl(&dword_19D52D000, v48, OS_LOG_TYPE_ERROR, "%p - NetworkStorageManager::NetworkStorageManager path for session %llu is already in use by session %llu", buf, 0x20u);
LABEL_27:
          v47 = v51;
          v51 = 0;
          if (!v47)
          {
            goto LABEL_9;
          }

          goto LABEL_28;
        }
      }

      else
      {
        v51 = 0;
      }

      WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>::operator=<WebKit::NetworkStorageManager,(void *)0>((v45 + 8), a1);
      goto LABEL_27;
    }
  }

LABEL_9:
  WTF::FileSystemImpl::lexicallyNormal(buf, a6, v31);
  v34 = *buf;
  *buf = 0;
  v35 = *(a1 + 48);
  *(a1 + 48) = v34;
  if (v35)
  {
    if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v33);
    }

    v43 = *buf;
    *buf = 0;
    if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v43, v33);
    }
  }

  WTF::FileSystemImpl::lexicallyNormal(buf, a8, v33);
  v37 = *buf;
  *buf = 0;
  v38 = *(a1 + 152);
  *(a1 + 152) = v37;
  if (v38)
  {
    if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v38, v36);
    }

    v44 = *buf;
    *buf = 0;
    if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v44, v36);
    }
  }

  *buf = a1;
  *&buf[8] = a1;
  v39 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(v29);
  *&buf[16] = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v39);
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  v56 = a11;
  v57 = a12;
  v58 = a13;
  v59 = a14;
  v60 = a15;
  v61 = a16;
  v62 = a17;
  v63 = a18;
  v64 = a19;
  v65 = a21;
  v66 = a22;
  WTF::Function<void ()(void)>::Function<WebKit::NetworkStorageManager::NetworkStorageManager(WebKit::NetworkProcess &,PAL::SessionID,WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>,std::optional<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::String const&,WTF::String const&,WTF::String const&,WTF::String const&,WTF::String const&,unsigned long long,std::optional<double>,std::optional<double>,std::optional<unsigned long long>,std::optional<unsigned long long>,WebKit::UnifiedOriginStorageLevel,BOOL)::$_0,void>(v52, buf);
  WTF::SuspendableWorkQueue::dispatch();
  v41 = v52[0];
  v52[0] = 0;
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  WebKit::NetworkStorageManager::NetworkStorageManager(WebKit::NetworkProcess &,PAL::SessionID,WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>,std::optional<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::String const&,WTF::String const&,WTF::String const&,WTF::String const&,WTF::String const&,unsigned long long,std::optional<double>,std::optional<double>,std::optional<unsigned long long>,std::optional<unsigned long long>,WebKit::UnifiedOriginStorageLevel,BOOL)::$_0::~$_0(buf, v40);
  return a1;
}

uint64_t *WTF::HashMap<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::NetworkStorageManager&>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v23 = a3;
  WTF::checkHashTableKey<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::HashMapTranslator<WTF::HashMap<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(*a2);
  v6 = qword_1ED642750;
  if (qword_1ED642750 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(0), (v6 = qword_1ED642750) != 0))
  {
    v7 = *(v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*a2 + 16);
  if (v8 < 0x100)
  {
    v9 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v9 = v8 >> 8;
  }

  v10 = 0;
  for (i = 1; ; ++i)
  {
    v12 = v9 & v7;
    v13 = (v6 + 24 * (v9 & v7));
    v14 = *v13;
    if (!*v13)
    {
      if (v10)
      {
        *v10 = 0;
        v10[1] = 0;
        v10[2] = 0;
        --*(qword_1ED642750 - 16);
        v13 = v10;
      }

      result = WTF::HashMapTranslator<WTF::HashMap<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String const&,WTF::KeyValuePair<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String const&,WebKit::NetworkStorageManager&>(WTF::String const&,WebKit::NetworkStorageManager&)::{lambda(void)#1}>(v13, a2, &v23);
      v15 = qword_1ED642750;
      if (qword_1ED642750)
      {
        v16 = *(qword_1ED642750 - 12) + 1;
      }

      else
      {
        v16 = 1;
      }

      *(qword_1ED642750 - 12) = v16;
      v17 = (*(v15 - 16) + v16);
      v18 = *(v15 - 4);
      if (v18 > 0x400)
      {
        if (v18 > 2 * v17)
        {
          goto LABEL_17;
        }
      }

      else if (3 * v18 > 4 * v17)
      {
LABEL_17:
        v19 = v15 + 24 * v18;
        v20 = 1;
        goto LABEL_18;
      }

      result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(v13);
      v13 = result;
      v15 = qword_1ED642750;
      if (qword_1ED642750)
      {
        LODWORD(v18) = *(qword_1ED642750 - 4);
      }

      else
      {
        LODWORD(v18) = 0;
      }

      goto LABEL_17;
    }

    if (v14 == -1)
    {
      v10 = (v6 + 24 * v12);
      goto LABEL_10;
    }

    result = WTF::equal(v14, *a2, v5);
    if (result)
    {
      break;
    }

LABEL_10:
    v9 = i + v12;
  }

  if (qword_1ED642750)
  {
    v22 = *(qword_1ED642750 - 4);
  }

  else
  {
    v22 = 0;
  }

  v20 = 0;
  v19 = qword_1ED642750 + 24 * v22;
LABEL_18:
  *a1 = v13;
  *(a1 + 8) = v19;
  *(a1 + 16) = v20;
  return result;
}

void *WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>::operator=<WebKit::NetworkStorageManager,(void *)0>(void *a1, uint64_t a2)
{
  v4 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock((a2 + 8));
  v6 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v4);
  v7 = a1[1];
  a1[1] = v6;
  if (v7)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v7, v5);
  }

  *a1 = a2;
  return a1;
}

uint64_t *WTF::Function<void ()(void)>::Function<WebKit::NetworkStorageManager::NetworkStorageManager(WebKit::NetworkProcess &,PAL::SessionID,WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>,std::optional<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::String const&,WTF::String const&,WTF::String const&,WTF::String const&,WTF::String const&,unsigned long long,std::optional<double>,std::optional<double>,std::optional<unsigned long long>,std::optional<unsigned long long>,WebKit::UnifiedOriginStorageLevel,BOOL)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  v4 = WTF::fastMalloc(0x98);
  v5 = *a2;
  v6 = a2[1];
  *v4 = &unk_1F110AB58;
  *(v4 + 8) = v5;
  a2[1] = 0;
  *(v4 + 16) = v6;
  *(v4 + 24) = a2[2];
  v7 = a2[3];
  a2[2] = 0;
  a2[3] = 0;
  *(v4 + 32) = v7;
  v8 = a2[4];
  a2[4] = 0;
  *(v4 + 40) = v8;
  v9 = a2[5];
  a2[5] = 0;
  *(v4 + 48) = v9;
  v10 = a2[6];
  a2[6] = 0;
  *(v4 + 56) = v10;
  v11 = a2[7];
  a2[7] = 0;
  *(v4 + 64) = v11;
  v12 = *(a2 + 5);
  v13 = *(a2 + 6);
  v14 = *(a2 + 7);
  *(v4 + 130) = *(a2 + 122);
  *(v4 + 120) = v14;
  *(v4 + 104) = v13;
  *(v4 + 88) = v12;
  *(v4 + 72) = *(a2 + 4);
  *a1 = v4;
  return a1;
}

void *WebKit::NetworkStorageManager::NetworkStorageManager(WebKit::NetworkProcess &,PAL::SessionID,WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>,std::optional<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::String const&,WTF::String const&,WTF::String const&,WTF::String const&,WTF::String const&,unsigned long long,std::optional<double>,std::optional<double>,std::optional<unsigned long long>,std::optional<unsigned long long>,WebKit::UnifiedOriginStorageLevel,BOOL)::$_0::~$_0(void *a1, WTF::StringImpl *a2)
{
  v3 = a1[7];
  a1[7] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[6];
  a1[6] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[5];
  a1[5] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[4];
  a1[4] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = a1[3];
  a1[3] = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = a1[2];
  a1[2] = 0;
  if (v8)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v8, a2);
  }

  return a1;
}

void WebKit::NetworkStorageManager::~NetworkStorageManager(WebKit::NetworkStorageManager *this, void *a2)
{
  v3 = *(this + 48);
  if (v3)
  {
    WTF::fastFree((v3 - 16), a2);
  }

  if (*(this + 376) == 1)
  {
    v24 = *(this + 46);
    if (v24)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v24, a2);
    }
  }

  v4 = *(this + 45);
  if (v4)
  {
    WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::WallTime>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::WallTime,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  std::unique_ptr<WebKit::ServiceWorkerStorageManager>::reset[abi:sn200100](this + 44, 0);
  if (*(this + 336) == 1)
  {
    v6 = *(this + 41);
    if (v6)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v6, v5);
    }
  }

  WTF::Vector<std::pair<WebCore::ClientOrigin,WTF::CompletionHandler<void ()(BOOL)>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 312, v5);
  v8 = *(this + 38);
  if (v8)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v8, v7);
  }

  v9 = *(this + 21);
  *(this + 21) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  v10 = *(this + 20);
  *(this + 20) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v7);
  }

  v11 = *(this + 19);
  *(this + 19) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v7);
  }

  v12 = *(this + 18);
  *(this + 18) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v7);
  }

  v13 = *(this + 17);
  *(this + 17) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v7);
  }

  v14 = *(this + 16);
  *(this + 16) = 0;
  if (v14)
  {
    WTF::ThreadSafeRefCounted<WebKit::CacheStorageRegistry,(WTF::DestructionThread)0>::deref(v14, v7);
  }

  v15 = *(this + 15);
  *(this + 15) = 0;
  if (v15)
  {
    WebKit::IDBStorageRegistry::operator delete(v15, v7);
  }

  v16 = *(this + 14);
  *(this + 14) = 0;
  if (v16)
  {
    WebKit::StorageAreaRegistry::operator delete(v16, v7);
  }

  v17 = *(this + 13);
  *(this + 13) = 0;
  if (v17)
  {
    WTF::RefCounted<WebKit::FileSystemStorageHandleRegistry>::deref((v17 + 8), v7);
  }

  v18 = *(this + 10);
  if (v18)
  {
    WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::deallocateTable(v18, v7);
  }

  v19 = *(this + 9);
  if (v19)
  {
    WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v19, v7);
  }

  v20 = *(this + 6);
  *(this + 6) = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v7);
  }

  v21 = *(this + 5);
  *(this + 5) = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v7);
  }

  v22 = *(this + 4);
  *(this + 4) = 0;
  if (v22)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v22 + 32));
  }

  v23 = *(this + 2);
  *(this + 2) = 0;
  if (v23)
  {
    if (atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v23);
      WTF::fastFree(v23, v7);
    }
  }
}

{
  WebKit::NetworkStorageManager::~NetworkStorageManager(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::NetworkStorageManager::close(uint64_t a1, uint64_t *a2)
{
  *(a1 + 64) = 1;
  WTF::ThreadSafeWeakHashSet<IPC::Connection>::forEach<WebKit::NetworkStorageManager::close(WTF::CompletionHandler<void ()(void)> &&)::$_0>(a1 + 80);
  v10[0] = a1;
  while (1)
  {
    v4 = *(a1 + 8);
    if ((v4 & 1) == 0)
    {
      break;
    }

    v9 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v9, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v4)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_4:
  v5 = *a2;
  *a2 = 0;
  v6 = WTF::fastMalloc(0x20);
  *v6 = &unk_1F110ABA8;
  v6[1] = a1;
  v6[2] = a1;
  v6[3] = v5;
  v10[1] = 0;
  v10[2] = 0;
  v11 = v6;
  WTF::SuspendableWorkQueue::dispatch();
  v7 = v11;
  v11 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return WebKit::NetworkStorageManager::close(WTF::CompletionHandler<void ()(void)> &&)::$_1::~$_1(v10);
}

uint64_t WTF::ThreadSafeWeakHashSet<IPC::Connection>::forEach<WebKit::NetworkStorageManager::close(WTF::CompletionHandler<void ()(void)> &&)::$_0>(uint64_t a1)
{
  WTF::ThreadSafeWeakHashSet<IPC::Connection>::values(&v6, a1);
  if (v7)
  {
    v2 = v6;
    v3 = 8 * v7;
    do
    {
      v4 = *v2++;
      IPC::Connection::removeWorkQueueMessageReceiver(v4, 0x2Cu, 0);
      v3 -= 8;
    }

    while (v3);
  }

  return WTF::Vector<WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v6, v1);
}

uint64_t WebKit::NetworkStorageManager::close(WTF::CompletionHandler<void ()(void)> &&)::$_1::~$_1(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8));
  }

  return a1;
}

uint64_t WebKit::NetworkStorageManager::startReceivingMessageFromConnection(uint64_t a1, atomic_ullong *a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v8 = *(a1 + 8);
    if ((v8 & 1) == 0)
    {
      break;
    }

    v12 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v12, v8 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v12 == v8)
    {
      goto LABEL_3;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_3:
  v9 = a2[3];
  *v13 = *a4;
  *&v13[15] = *(a4 + 15);
  v10 = WTF::fastMalloc(0x38);
  *v10 = &unk_1F110ABF8;
  *(v10 + 8) = a1;
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = *v13;
  *(v10 + 47) = *&v13[15];
  v14 = v10;
  WTF::SuspendableWorkQueue::dispatch();
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  IPC::Connection::addWorkQueueMessageReceiver(a2, 0x2C, *(a1 + 32), a1, 0);
  WTF::ThreadSafeWeakHashSet<IPC::Connection>::add<IPC::Connection>((a1 + 80), a2);
  return WebKit::NetworkStorageManager::addAllowedSitesForConnection(a1, a2[3], a3);
}

uint64_t WTF::ThreadSafeWeakHashSet<IPC::Connection>::add<IPC::Connection>(uint64_t *a1, atomic_ullong *a2)
{
  v4 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::controlBlock(a2);
  if (WTF::ThreadSafeWeakPtrControlBlock::objectHasStartedDeletion(v4))
  {
    result = 97;
    __break(0xC471u);
  }

  else
  {
    v5 = 0;
    atomic_compare_exchange_strong_explicit(a1 + 16, &v5, 1u, memory_order_acquire, memory_order_acquire);
    if (v5)
    {
      MEMORY[0x19EB01E30](a1 + 2);
    }

    v6 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::controlBlock(a2);
    v7 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v6);
    v8 = *(a1 + 3);
    v9 = *(a1 + 2) + 1;
    *(a1 + 2) = v9;
    if (v9 > v8)
    {
      _ZN3WTF9HashTableINSt3__14pairINS_6RefPtrINS_29ThreadSafeWeakPtrControlBlockENS_12RawPtrTraitsIS4_EENS_43ThreadSafeWeakPtrControlBlockRefDerefTraitsEEEPKN3IPC10ConnectionEEESD_NS_17IdentityExtractorENS_11DefaultHashISD_EENS_10HashTraitsISD_EESI_NS_10FastMallocEE8removeIfIZNKS_21ThreadSafeWeakHashSetISA_E24amortizedCleanupIfNeededEvEUlRT_E_EEbRKSO_(a1);
      *(a1 + 2) = 0;
      v10 = *a1;
      if (*a1 && (LODWORD(v10) = *(v10 - 12), v10 > 0x7FFFFFFE))
      {
        v11 = -2;
      }

      else
      {
        v11 = 2 * v10;
      }

      *(a1 + 3) = v11;
    }

    v16[0] = v7;
    v16[1] = a2;
    WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)0>(v15, a1, v16);
    result = v16[0];
    if (v16[0])
    {
      result = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v16[0], v12);
    }

    v14 = 1;
    atomic_compare_exchange_strong_explicit(a1 + 16, &v14, 0, memory_order_release, memory_order_relaxed);
    if (v14 != 1)
    {

      return WTF::Lock::unlockSlow((a1 + 2));
    }
  }

  return result;
}

uint64_t WebKit::NetworkStorageManager::addAllowedSitesForConnection(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 12))
  {
    v12[5] = v3;
    v12[6] = v4;
    v10[0] = result;
    v7 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock((result + 8));
    v10[1] = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v7);
    v10[2] = a2;
    v11[0] = 0;
    v11[1] = 0;
    _ZN3WTF6MapperIZNS_21CrossThreadCopierBaseILb0ELb0ENS_6VectorIN7WebCore17RegistrableDomainELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEE4copyERKS7_EUlRT_E_S7_SA_vE3mapERS7_SA_RKSD_(v11, a3);
    WTF::Function<void ()(void)>::Function<WebKit::NetworkStorageManager::addAllowedSitesForConnection(WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::$_0,void>(v12, v10);
    WTF::SuspendableWorkQueue::dispatch();
    v9 = v12[0];
    v12[0] = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    return WebKit::NetworkStorageManager::addAllowedSitesForConnection(WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::$_0::~$_0(v10, v8);
  }

  return result;
}

uint64_t WebKit::NetworkStorageManager::stopReceivingMessageFromConnection(WebKit::NetworkStorageManager *this, atomic_ullong *a2)
{
  result = WTF::ThreadSafeWeakHashSet<IPC::Connection>::remove<IPC::Connection>(this + 10, a2);
  if (result)
  {
    IPC::Connection::removeWorkQueueMessageReceiver(a2, 0x2Cu, 0);
    while (1)
    {
      v5 = *(this + 1);
      if ((v5 & 1) == 0)
      {
        break;
      }

      v8 = *(this + 1);
      atomic_compare_exchange_strong_explicit(this + 1, &v8, v5 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v8 == v5)
      {
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 1));
LABEL_5:
    v6 = a2[3];
    v7 = WTF::fastMalloc(0x20);
    *v7 = &unk_1F110AC48;
    v7[1] = this;
    v7[2] = this;
    v7[3] = v6;
    v9 = v7;
    WTF::SuspendableWorkQueue::dispatch();
    result = v9;
    if (v9)
    {
      return (*(*v9 + 8))(v9);
    }
  }

  return result;
}

BOOL WTF::ThreadSafeWeakHashSet<IPC::Connection>::remove<IPC::Connection>(uint64_t *a1, atomic_ullong *a2)
{
  v4 = 0;
  v5 = (a1 + 2);
  atomic_compare_exchange_strong_explicit(a1 + 16, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](a1 + 2);
  }

  v6 = *(a1 + 3);
  v7 = *(a1 + 2) + 1;
  *(a1 + 2) = v7;
  if (v7 > v6)
  {
    _ZN3WTF9HashTableINSt3__14pairINS_6RefPtrINS_29ThreadSafeWeakPtrControlBlockENS_12RawPtrTraitsIS4_EENS_43ThreadSafeWeakPtrControlBlockRefDerefTraitsEEEPKN3IPC10ConnectionEEESD_NS_17IdentityExtractorENS_11DefaultHashISD_EENS_10HashTraitsISD_EESI_NS_10FastMallocEE8removeIfIZNKS_21ThreadSafeWeakHashSetISA_E24amortizedCleanupIfNeededEvEUlRT_E_EEbRKSO_(a1);
    *(a1 + 2) = 0;
    v8 = *a1;
    if (*a1 && (LODWORD(v8) = *(v8 - 12), v8 > 0x7FFFFFFE))
    {
      v9 = -2;
    }

    else
    {
      v9 = 2 * v8;
    }

    *(a1 + 3) = v9;
  }

  if (!WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::weakRefCount(a2))
  {
    goto LABEL_19;
  }

  v10 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::controlBlock(a2);
  v11 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v10);
  v19[0] = v11;
  v19[1] = a2;
  v13 = WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>>,(WTF::ShouldValidateKey)0,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>(a1, v19);
  if (v11)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v11, v12);
  }

  v14 = *a1;
  if (*a1)
  {
    v14 += 2 * *(v14 - 1);
  }

  if (v14 == v13)
  {
LABEL_19:
    v16 = 0;
  }

  else
  {
    HasStartedDeletion = WTF::ThreadSafeWeakPtrControlBlock::objectHasStartedDeletion(*v13);
    WTF::HashSet<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0>::remove(a1, v13);
    v16 = !HasStartedDeletion;
  }

  v17 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v17, 0, memory_order_release, memory_order_relaxed);
  if (v17 != 1)
  {
    WTF::Lock::unlockSlow(v5);
  }

  return v16;
}

uint64_t WebKit::NetworkStorageManager::updateSharedPreferencesForConnection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    v6 = *(a1 + 8);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v7 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_5:
  v8 = *(a2 + 24);
  *v11 = *a3;
  *&v11[15] = *(a3 + 15);
  v9 = WTF::fastMalloc(0x38);
  *v9 = &unk_1F110AC98;
  *(v9 + 8) = a1;
  *(v9 + 16) = a1;
  *(v9 + 24) = v8;
  *(v9 + 32) = *v11;
  *(v9 + 47) = *&v11[15];
  v12 = v9;
  WTF::SuspendableWorkQueue::dispatch();
  result = v12;
  if (v12)
  {
    return (*(*v12 + 8))(v12);
  }

  return result;
}

WTF::WallTime *WebKit::NetworkStorageManager::includeOriginInBackupIfNecessary(WTF::WallTime *result, uint64_t a2)
{
  if ((*(a2 + 80) & 1) == 0)
  {
    v3 = *(a2 + 72);
    v4 = result;
    result = WTF::WallTime::now(result);
    if (v5 - v3 >= *(v4 + 43))
    {
      result = WTF::FileSystemImpl::setExcludedFromBackup((a2 + 24), 0);
      *(a2 + 80) = 1;
    }
  }

  return result;
}

uint64_t WebKit::NetworkStorageManager::writeOriginToFileIfNecessary(WebKit::NetworkStorageManager *this, const WebCore::ClientOrigin *a2, WebKit::StorageAreaBase *a3)
{
  result = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ClientOrigin>>>,(WTF::ShouldValidateKey)1,WebCore::ClientOrigin>(this + 9, a2);
  if (result)
  {
    v5 = *(result + 64);
    if (v5)
    {
      atomic_fetch_add((v5 + 8), 1u);
      result = WebKit::NetworkStorageManager::includeOriginInBackupIfNecessary(this, v5);
      if (!atomic_load((v5 + 8)))
      {
        __break(0xC471u);
        JUMPOUT(0x19DDEA5D8);
      }

      atomic_fetch_add((v5 + 8), 0xFFFFFFFF);
    }
  }

  return result;
}

uint64_t WebKit::isEmptyOriginDirectory(WebKit *this, const WTF::String *a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  WTF::FileSystemImpl::listDirectory(&v9, this, a2);
  if (v10)
  {
    if (v10 <= 2)
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v12[1] = v11;
      WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v11, v12, 2);
      for (i = 1; i != -1; --i)
      {
        v7 = v12[i];
        v12[i] = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v5);
        }
      }

      v8 = std::ranges::__all_of::operator()[abi:sn200100]<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &,std::identity,WebKit::isEmptyOriginDirectory(WTF::String const&)::$_0>(v9, v10, &v11);
      v3 = v8;
      if (v11)
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v11, v2);
      }
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 1;
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v9, v2);
  return v3;
}

void *WebKit::originFilePath(void *this, const WTF::String *a2)
{
  if (a2 && *(a2 + 1))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::FileSystemImpl::pathByAppendingComponent();
    this = v4;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v4, v2);
      }
    }
  }

  else
  {
    v3 = *MEMORY[0x1E696EBA8];
    if (*MEMORY[0x1E696EBA8])
    {
      atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    }

    *this = v3;
  }

  return this;
}

mpark *WebKit::NetworkStorageManager::getAllOrigins(WebKit::NetworkStorageManager *this, uint64_t *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  *this = 0;
  v4 = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::begin(a2[9]);
  v5 = v4;
  v7 = v6;
  v8 = 0;
  v9 = a2[9];
  if (v9)
  {
    v8 = v9 + 72 * *(v9 - 4);
  }

  if (v8 != v4)
  {
    do
    {
      WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(this, v5, v28);
      do
      {
        v5 += 72;
      }

      while (v5 != v7 && WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v5));
    }

    while (v5 != v8);
  }

  v10 = WTF::fastMalloc(0x10);
  *v10 = &unk_1F110B008;
  v10[1] = this;
  v28[0] = v10;
  WebKit::NetworkStorageManager::forEachOriginDirectory(a2, v28);
  (*(*v10 + 8))(v10);
  WebKit::LocalStorageManager::originsOfLocalStorageData(&v26, (a2 + 17));
  if (v27)
  {
    v22 = v26;
    v23 = 32 * v27;
    do
    {
      mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v28, v22);
      mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v29, v22);
      WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v25, this, v28);
      WebCore::ClientOrigin::~ClientOrigin(v28, v24);
      v22 += 32;
      v23 -= 32;
    }

    while (v23);
  }

  WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v26, v11);
  WebKit::IDBStorageManager::originsOfIDBStorageData(v25, (a2 + 18));
  v13 = WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::begin(v25);
  v14 = v12;
  v15 = v25[0];
  if (v25[0])
  {
    v16 = v25[0] + (*(v25[0] - 4) << 6);
  }

  else
  {
    v16 = 0;
  }

  if (v16 != v13)
  {
    do
    {
      WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(this, v13, v28);
      do
      {
        v13 += 64;
      }

      while (v13 != v14 && WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v13));
    }

    while (v13 != v16);
    v15 = v25[0];
  }

  if (v15)
  {
    WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v15, v12);
  }

  WebKit::CacheStorageManager::originsOfCacheStorageData((a2 + 20), v12, v25);
  v18 = WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::begin(v25);
  v19 = v17;
  result = v25[0];
  if (v25[0])
  {
    v21 = v25[0] + (*(v25[0] - 4) << 6);
  }

  else
  {
    v21 = 0;
  }

  if (v21 != v18)
  {
    do
    {
      WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(this, v18, v28);
      do
      {
        v18 += 64;
      }

      while (v18 != v19 && WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v18));
    }

    while (v18 != v21);
    result = v25[0];
  }

  if (result)
  {
    return WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(result, v17);
  }

  return result;
}

uint64_t WebKit::NetworkStorageManager::removeOriginStorageManagerIfPossible(WebKit::NetworkStorageManager *this, const WebCore::ClientOrigin *a2)
{
  v3 = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ClientOrigin>>,(WTF::ShouldValidateKey)1,WebCore::ClientOrigin>(this + 9, a2);
  v4 = v3;
  v5 = *(this + 9);
  if (v5)
  {
    v5 += 72 * *(v5 - 4);
  }

  if (v5 == v3)
  {
    return 1;
  }

  v6 = WebKit::OriginStorageManager::defaultBucket(*(v3 + 64));
  if (WebKit::OriginStorageManager::StorageBucket::isActive(v6, v7))
  {
    return 0;
  }

  v8 = WebKit::OriginStorageManager::defaultBucket(*(v4 + 64));
  if (WebKit::OriginStorageManager::StorageBucket::hasDataInMemory(v8, v9))
  {
    return 0;
  }

  WebKit::OriginStorageManager::deleteEmptyDirectory(*(v4 + 64));
  WebKit::deleteEmptyOriginDirectory((*(v4 + 64) + 24), v11);
  v13 = *(this + 9);
  if (v13)
  {
    v14 = v13 + 72 * *(v13 - 4);
    if (v14 != v4)
    {
LABEL_11:
      if (v14 != v4)
      {
        WTF::KeyValuePairHashTraits<WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>>::customDeleteBucket(v4, v12);
        v15 = *(this + 9);
        v16 = vadd_s32(*(v15 - 16), 0xFFFFFFFF00000001);
        *(v15 - 16) = v16;
        v17 = *(v15 - 4);
        if (6 * v16.i32[1] < v17 && v17 >= 9)
        {
          WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::rehash(this + 9, v17 >> 1, 0);
        }
      }
    }
  }

  else if (v4)
  {
    v14 = 0;
    goto LABEL_11;
  }

  return 1;
}

uint64_t WebKit::NetworkStorageManager::persistedInternal(WebKit::NetworkStorageManager *this, const WebCore::ClientOrigin *a2)
{
  WebKit::NetworkStorageManager::persistedFilePath(&v6, this, a2);
  v3 = v6;
  if (!v6)
  {
    return 0;
  }

  if (*(v6 + 1))
  {
    v4 = WTF::FileSystemImpl::fileExists(&v6, v2);
    v3 = v6;
    v6 = 0;
    if (!v3)
    {
      return v4;
    }
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v2);
  }

  return v4;
}

uint64_t WebKit::NetworkStorageManager::originQuotaManagerParameters(WebKit::NetworkStorageManager *this, const WebCore::ClientOrigin *a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = *(a2 + 3);
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(&v23, a3);
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v25, a3 + 32);
  v27 = *(a2 + 37);
  WTF::Function<void ()(WTF::ObjectIdentifierGeneric<WebKit::QuotaIncreaseRequestIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,unsigned long long,unsigned long long)>::Function<WebKit::NetworkStorageManager::originQuotaManagerParameters(WebCore::ClientOrigin const&)::$_0,void>(&v21, &v22);
  WebKit::NetworkStorageManager::originQuotaManagerParameters(WebCore::ClientOrigin const&)::$_0::~$_0(&v22, v6);
  if (*(a2 + 232) == 1)
  {
    v8 = *(a2 + 28);
  }

  else
  {
    v8 = 0.0;
  }

  v9 = *(a2 + 22);
  if (*(a2 + 200) == 1 && *(a2 + 184) == 1)
  {
    if (*(a2 + 248))
    {
      v14 = *(a2 + 30) & 0xFFFFFFFFFFFFFF00;
      v13 = *(a2 + 30);
    }

    else
    {
      v10 = WTF::FileSystemImpl::volumeCapacity((a2 + 40), v7);
      v11 = *(a2 + 200);
      if ((v12 & 1) == 0)
      {
LABEL_11:
        if (v11)
        {
          goto LABEL_12;
        }

LABEL_18:
        std::__throw_bad_optional_access[abi:sn200100]();
      }

      if ((*(a2 + 200) & 1) == 0)
      {
        goto LABEL_18;
      }

      v13 = 0;
      v14 = (v10 + 0x3FFFFFFF) & 0xFFFFFFFFC0000000;
    }

    v9 = *(a2 + 24) * (v14 | v13);
    v15 = v21;
    v21 = 0;
    if (!v15)
    {
LABEL_12:
      v8 = v8 * *(a2 + 24);
      goto LABEL_13;
    }

    (*(*v15 + 8))(v15);
    v11 = *(a2 + 200);
    goto LABEL_11;
  }

LABEL_13:
  if (!WebCore::operator==())
  {
    v8 = v8 * 0.1;
    v9 = v9 * 0.1;
  }

  v22 = a2;
  v16 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(a2 + 1);
  v23 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v16);
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v24, a3);
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v26, a3 + 32);
  WTF::Function<void ()(unsigned long long)>::Function<WebKit::NetworkStorageManager::originQuotaManagerParameters(WebCore::ClientOrigin const&)::$_1,void>(&v20, &v22);
  result = WebKit::NetworkStorageManager::originQuotaManagerParameters(WebCore::ClientOrigin const&)::$_1::~$_1(&v22, v17);
  *this = vcvtpd_u64_f64(v9);
  *(this + 1) = vcvtpd_u64_f64(v8);
  v19 = v20;
  *(this + 2) = v21;
  *(this + 3) = v19;
  return result;
}

uint64_t *WTF::Function<void ()(WTF::ObjectIdentifierGeneric<WebKit::QuotaIncreaseRequestIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,unsigned long long,unsigned long long)>::Function<WebKit::NetworkStorageManager::originQuotaManagerParameters(WebCore::ClientOrigin const&)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  v4 = WTF::fastMalloc(0x58);
  v5 = *a2;
  *v4 = &unk_1F110AD88;
  *(v4 + 8) = v5;
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v4 + 16), (a2 + 1));
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v4 + 48), (a2 + 5));
  *(v4 + 80) = a2[9];
  *a1 = v4;
  return a1;
}

uint64_t WebKit::NetworkStorageManager::originQuotaManagerParameters(WebCore::ClientOrigin const&)::$_0::~$_0(uint64_t a1, WTF::StringImpl *a2)
{
  if (!*(a1 + 64))
  {
    v3 = *(a1 + 48);
    *(a1 + 48) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(a1 + 40);
    *(a1 + 40) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  *(a1 + 64) = -1;
  if (!*(a1 + 32))
  {
    v5 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }

  *(a1 + 32) = -1;
  return a1;
}

uint64_t *WTF::Function<void ()(unsigned long long)>::Function<WebKit::NetworkStorageManager::originQuotaManagerParameters(WebCore::ClientOrigin const&)::$_1,void>(uint64_t *a1, uint64_t *a2)
{
  v4 = WTF::fastMalloc(0x58);
  v5 = *a2;
  *a2 = 0;
  *v4 = &unk_1F110ADB0;
  *(v4 + 8) = v5;
  *(v4 + 16) = a2[1];
  a2[1] = 0;
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v4 + 24), (a2 + 2));
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v4 + 56), (a2 + 6));
  *a1 = v4;
  return a1;
}

uint64_t WebKit::NetworkStorageManager::originQuotaManagerParameters(WebCore::ClientOrigin const&)::$_1::~$_1(uint64_t a1, WTF::StringImpl *a2)
{
  if (!*(a1 + 72))
  {
    v3 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(a1 + 48);
    *(a1 + 48) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  *(a1 + 72) = -1;
  if (!*(a1 + 40))
  {
    v5 = *(a1 + 24);
    *(a1 + 24) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }

  *(a1 + 40) = -1;
  v7 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v7)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v7, a2);
  }

  return a1;
}

uint64_t WebKit::NetworkStorageManager::originStorageManager(uint64_t *a1, WebCore::SecurityOriginData *a2, int a3)
{
  v9[0] = a1;
  v9[1] = a2;
  WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::ensure<WebKit::NetworkStorageManager::originStorageManager(WebCore::ClientOrigin const&,WebKit::NetworkStorageManager::ShouldWriteOriginFile)::$_0>(v10, a1 + 9, a2, v9);
  v6 = *(v10[0] + 64);
  atomic_fetch_add((v6 + 8), 1u);
  if (a3)
  {
    WebKit::NetworkStorageManager::writeOriginToFileIfNecessary(a1, a2, 0);
  }

  if (!v6 || (v7 = atomic_load((v6 + 8))) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDEB14CLL);
  }

  atomic_fetch_add((v6 + 8), 0xFFFFFFFF);
  return v6;
}

void WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::ensure<WebKit::NetworkStorageManager::originStorageManager(WebCore::ClientOrigin const&,WebKit::NetworkStorageManager::ShouldWriteOriginFile)::$_0>(uint64_t a1, uint64_t *a2, __n128 *a3, WebCore::SecurityOriginData **a4)
{
  WTF::checkHashTableKey<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashMapEnsureTranslator<WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ClientOrigin>>,(WTF::ShouldValidateKey)1,WebCore::ClientOrigin>(a3);
  v8 = *a2;
  if (*a2 || (WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::expand(a2, 0), (v8 = *a2) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = WTF::computeHash<WebCore::ClientOrigin>(a3) & v9;
  v11 = v8 + 72 * v10;
  v12 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>();
  if ((v12 & 1) == 0)
  {
    v19 = 0;
    v20 = 1;
    while (!*(v11 + 24))
    {
      if (*v11 != -1)
      {
        goto LABEL_15;
      }

      v19 = v11;
LABEL_16:
      v10 = (v10 + v20) & v9;
      v11 = v8 + 72 * v10;
      v12 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>();
      ++v20;
      if (v12)
      {
        if (v19)
        {
          *(v19 + 64) = 0;
          *(v19 + 32) = 0u;
          *(v19 + 48) = 0u;
          *v19 = 0u;
          *(v19 + 16) = 0u;
          --*(*a2 - 16);
          v11 = v19;
        }

        goto LABEL_5;
      }
    }

    if (*(v11 + 24) != 1)
    {
      mpark::throw_bad_variant_access(v12);
    }

LABEL_15:
    if (WTF::HashMapEnsureTranslator<WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ClientOrigin>>::equal<WebCore::ClientOrigin,WebCore::ClientOrigin>())
    {
      v21 = *a2;
      if (*a2)
      {
        v22 = *(v21 - 4);
      }

      else
      {
        v22 = 0;
      }

      v18 = 0;
      v17 = v21 + 72 * v22;
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_5:
  WTF::HashMapEnsureTranslator<WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ClientOrigin>>::translate<WebCore::ClientOrigin const&,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WebKit::NetworkStorageManager::originStorageManager(WebCore::ClientOrigin const&,WebKit::NetworkStorageManager::ShouldWriteOriginFile)::$_0>(v11, a3, a4);
  v13 = *a2;
  if (*a2)
  {
    v14 = *(v13 - 12) + 1;
  }

  else
  {
    v14 = 1;
  }

  *(v13 - 12) = v14;
  v15 = (*(v13 - 16) + v14);
  v16 = *(v13 - 4);
  if (v16 > 0x400)
  {
    if (v16 > 2 * v15)
    {
      goto LABEL_9;
    }

LABEL_23:
    v11 = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::expand(a2, v11);
    v13 = *a2;
    if (*a2)
    {
      LODWORD(v16) = *(v13 - 4);
    }

    else
    {
      LODWORD(v16) = 0;
    }

    goto LABEL_9;
  }

  if (3 * v16 <= 4 * v15)
  {
    goto LABEL_23;
  }

LABEL_9:
  v17 = v13 + 72 * v16;
  v18 = 1;
LABEL_10:
  *a1 = v11;
  *(a1 + 8) = v17;
  *(a1 + 16) = v18;
}
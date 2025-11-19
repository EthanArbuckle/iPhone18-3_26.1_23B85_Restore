@interface _WKASDelegate
- (_WKASDelegate)initWithPage:(void *)a3 completionHandler:(void *)a4;
- (id).cxx_construct;
- (id)presentationAnchorForAuthorizationController:(id)a3;
@end

@implementation _WKASDelegate

- (_WKASDelegate)initWithPage:(void *)a3 completionHandler:(void *)a4
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7.receiver = self;
  v7.super_class = _WKASDelegate;
  v11 = [(_WKASDelegate *)&v7 init];
  if (!v11)
  {
    return 0;
  }

  if (WTF::WeakPtr<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator BOOL(v9))
  {
    v4 = WTF::WeakPtr<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator->(v9);
    WebKit::WebPageProxy::cocoaView(v4, &v6);
    WTF::RetainPtr<WKWebView>::operator=(v11 + 1, &v6);
    WTF::RetainPtr<WKWebView>::~RetainPtr(&v6);
  }

  WTF::BlockPtr<void ()(ASAuthorization *,NSError *)>::operator=(v11 + 2, v8);
  return v11;
}

- (id)presentationAnchorForAuthorizationController:(id)a3
{
  if (std::unique_ptr<WTF::Detail::CallableWrapperBase<void,mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>,std::default_delete<mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>>::operator BOOL[abi:sn200100](&self->m_view.m_ptr))
  {
    return [std::span<char const 18446744073709551615ul>:"window" :a3 data[abi:a2sn200100](&self->m_view)];
  }

  else
  {
    return 0;
  }
}

- (id).cxx_construct
{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>,std::default_delete<mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>>::unique_ptr[abi:sn200100]<true,void>(&self->m_view.m_ptr);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>,std::default_delete<mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>>::unique_ptr[abi:sn200100]<true,void>(&self->m_completionHandler.m_block);
  return self;
}

@end
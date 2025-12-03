@interface _WKASDelegate
- (_WKASDelegate)initWithPage:(void *)page completionHandler:(void *)handler;
- (id).cxx_construct;
- (id)presentationAnchorForAuthorizationController:(id)controller;
@end

@implementation _WKASDelegate

- (_WKASDelegate)initWithPage:(void *)page completionHandler:(void *)handler
{
  selfCopy = self;
  v10 = a2;
  pageCopy = page;
  handlerCopy = handler;
  v7.receiver = self;
  v7.super_class = _WKASDelegate;
  selfCopy = [(_WKASDelegate *)&v7 init];
  if (!selfCopy)
  {
    return 0;
  }

  if (WTF::WeakPtr<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator BOOL(pageCopy))
  {
    v4 = WTF::WeakPtr<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator->(pageCopy);
    WebKit::WebPageProxy::cocoaView(v4, &v6);
    WTF::RetainPtr<WKWebView>::operator=(selfCopy + 1, &v6);
    WTF::RetainPtr<WKWebView>::~RetainPtr(&v6);
  }

  WTF::BlockPtr<void ()(ASAuthorization *,NSError *)>::operator=(selfCopy + 2, handlerCopy);
  return selfCopy;
}

- (id)presentationAnchorForAuthorizationController:(id)controller
{
  if (std::unique_ptr<WTF::Detail::CallableWrapperBase<void,mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>,std::default_delete<mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>>::operator BOOL[abi:sn200100](&self->m_view.m_ptr))
  {
    return [std::span<char const 18446744073709551615ul>:"window" :controller data[abi:a2sn200100](&self->m_view)];
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
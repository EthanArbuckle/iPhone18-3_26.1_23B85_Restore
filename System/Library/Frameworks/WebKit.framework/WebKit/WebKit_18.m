void WTF::Detail::CallableWrapperBase<void,std::optional<fido::FidoHidMessage> &&>::~CallableWrapperBase()
{
  __break(1u);
}

{
  __break(1u);
}

uint64_t WebKit::CtapHidDriver::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0::operator()(uint64_t *a1, uint64_t a2)
{
  result = WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator!(a1);
  if ((result & 1) == 0)
  {
    v4 = WTF::WeakPtr<WebKit::CtapHidDriver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator->(a1);
    return WebKit::CtapHidDriver::continueAfterChannelAllocated(v4, a2);
  }

  return result;
}

uint64_t WTF::WeakPtr<WebKit::CtapHidDriver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator->(uint64_t *a1)
{
  result = WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::get(a1);
  if (!result)
  {
    isIntegralOrPointerType = WTF::isIntegralOrPointerType(0);
    WTF::isIntegralOrPointerType(isIntegralOrPointerType);
    __break(0xC471u);
    JUMPOUT(0x19D6B3D14);
  }

  return result;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapHidDriver::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0,void,std::optional<fido::FidoHidMessage> &&>>::reset[abi:sn200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return std::default_delete<WTF::Detail::CallableWrapperBase<void,std::optional<fido::FidoHidMessage> &&>>::operator()[abi:sn200100](result, v1);
  }

  return result;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapHidDriver::continueAfterChannelAllocated(std::optional<fido::FidoHidMessage> &&)::$_0,void>,std::optional<fido::FidoHidMessage> &&,0>(void *a1, uint64_t *a2)
{
  v3 = WTF::FastMalloc::malloc(0x28);
  WTF::Detail::CallableWrapper<WebKit::CtapHidDriver::continueAfterChannelAllocated(std::optional<fido::FidoHidMessage> &&)::$_0,void>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::CtapHidDriver::continueAfterChannelAllocated(std::optional<fido::FidoHidMessage> &&)::$_0,void>::CallableWrapper(void *a1, uint64_t *a2)
{
  WTF::Detail::CallableWrapper<WebKit::CtapHidDriver::continueAfterChannelAllocated(std::optional<fido::FidoHidMessage> &&)::$_0,void>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E7B88;
  WebKit::CtapHidDriver::continueAfterChannelAllocated(std::optional<fido::FidoHidMessage> &&)::$_0::$_0(a1 + 1, a2);
  return a1;
}

uint64_t *WebKit::CtapHidDriver::continueAfterChannelAllocated(std::optional<fido::FidoHidMessage> &&)::$_0::$_0(uint64_t *a1, uint64_t *a2)
{
  WebKit::CtapHidDriver::continueAfterChannelAllocated(std::optional<fido::FidoHidMessage> &&)::$_0::$_0(a1, a2);
  return a1;
}

{
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(a1, a2);
  WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((a1 + 1), a2 + 1);
  WTF::Function<void ()(BOOL)>::Function(a1 + 3, a2 + 3);
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::CtapHidDriver::continueAfterChannelAllocated(std::optional<fido::FidoHidMessage> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::CtapHidDriver::continueAfterChannelAllocated(std::optional<fido::FidoHidMessage> &&)::$_0,void>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E7B88;
  WebKit::CtapHidDriver::continueAfterChannelAllocated(std::optional<fido::FidoHidMessage> &&)::$_0::~$_0(a1 + 1);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

fido::FidoHidMessage *WebKit::CtapHidDriver::continueAfterChannelAllocated(std::optional<fido::FidoHidMessage> &&)::$_0::operator()(uint64_t *a1)
{
  result = WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator!(a1);
  if ((result & 1) == 0)
  {
    v3 = WTF::WeakPtr<WebKit::CtapHidDriver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator->(a1);
    return WebKit::CtapHidDriver::transact(v3, a1 + 1, a1 + 3);
  }

  return result;
}

unint64_t WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::at(uint64_t a1, unint64_t a2)
{
  v4 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1);
  if (a2 >= v4)
  {
    WTF::CrashOnOverflow::overflowed(v4);
  }

  return std::span<char const,18446744073709551615ul>::data[abi:sn200100](a1) + a2;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapHidDriver::continueAfterChannelAllocated(std::optional<fido::FidoHidMessage> &&)::$_1,void,std::optional<fido::FidoHidMessage> &>,std::optional<fido::FidoHidMessage> &&,0>(void *a1, uint64_t *a2)
{
  v3 = WTF::Detail::CallableWrapperBase<void,WebCore::AuthenticatorAssertionResponse *>::operator new();
  WTF::Detail::CallableWrapper<WebKit::CtapHidDriver::continueAfterChannelAllocated(std::optional<fido::FidoHidMessage> &&)::$_1,void,std::optional<fido::FidoHidMessage> &>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::CtapHidDriver::continueAfterChannelAllocated(std::optional<fido::FidoHidMessage> &&)::$_1,void,std::optional<fido::FidoHidMessage> &>::CallableWrapper(void *a1, uint64_t *a2)
{
  WTF::Detail::CallableWrapper<WebKit::CtapHidDriver::continueAfterChannelAllocated(std::optional<fido::FidoHidMessage> &&)::$_1,void,std::optional<fido::FidoHidMessage> &>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,std::optional<fido::FidoHidMessage> &&>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E7BB0;
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::$_0(a1 + 1, a2);
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::CtapHidDriver::continueAfterChannelAllocated(std::optional<fido::FidoHidMessage> &&)::$_1,void,std::optional<fido::FidoHidMessage> &>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::CtapHidDriver::continueAfterChannelAllocated(std::optional<fido::FidoHidMessage> &&)::$_1,void,std::optional<fido::FidoHidMessage> &>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E7BB0;
  WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0::~$_0(a1 + 1);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

uint64_t WebKit::CtapHidDriver::continueAfterChannelAllocated(std::optional<fido::FidoHidMessage> &&)::$_1::operator()(uint64_t *a1, uint64_t a2)
{
  result = WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator!(a1);
  if ((result & 1) == 0)
  {
    v4 = WTF::WeakPtr<WebKit::CtapHidDriver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator->(a1);
    return WebKit::CtapHidDriver::continueAfterResponseReceived(v4, a2);
  }

  return result;
}

uint64_t ___ZN6WebKit23DeviceManagementLibraryEb_block_invoke(uint64_t a1)
{
  result = dlopen("/System/Library/PrivateFrameworks/DeviceManagement.framework/DeviceManagement", 2);
  WebKit::DeviceManagementLibrary(BOOL)::frameworkLibrary = result;
  if ((*(a1 + 32) & 1) == 0 && !result)
  {
    result = 33;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::initDMFWebsitePolicyMonitor(WebKit *this)
{
  if (qword_1ED641AA0 != -1)
  {
    dispatch_once(&qword_1ED641AA0, &__block_literal_global_3);
  }

  return qword_1ED641AA8;
}

uint64_t ___ZN6WebKitL27initDMFWebsitePolicyMonitorEv_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN6WebKit23DeviceManagementLibraryEb_block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v2 = 0;
  if (_MergedGlobals_47 != -1)
  {
    dispatch_once(&_MergedGlobals_47, block);
  }

  result = objc_getClass("DMFWebsitePolicyMonitor");
  qword_1ED641AA8 = result;
  if (result)
  {
    WebKit::getDMFWebsitePolicyMonitorClass[0] = WebKit::DMFWebsitePolicyMonitorFunction;
  }

  else
  {
    result = 34;
    __break(0xC471u);
  }

  return result;
}

void WebKit::DownloadProxy::publishProgress(WebKit::DownloadProxy *this, const WTF::URL *a2)
{
  if (*(this + 5))
  {
    v4 = objc_alloc(MEMORY[0x1E695DFF8]);
    WTF::URL::fileSystemPath(&v30, a2);
    v5 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](v34, v5);
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v6);
      }
    }

    else
    {
      *v34 = &stru_1F1147748;
      v7 = &stru_1F1147748;
    }

    v9 = [v4 initFileURLWithPath:*v34 relativeToURL:0];
    v10 = *v34;
    *v34 = 0;
    if (v10)
    {
    }

    v11 = v30;
    v30 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v8);
    }

    v33 = 0;
    v12 = [v9 bookmarkDataWithOptions:512 includingResourceValuesForKeys:0 relativeToURL:0 error:&v33];
    v14 = v12;
    if (v12)
    {
      v15 = v12;
      v17 = WebKit::WebsiteDataStore::networkProcess(*(this + 5), v16);
      v18 = [v14 bytes];
      v19 = [v14 length];
    }

    else
    {
      v17 = WebKit::WebsiteDataStore::networkProcess(*(this + 5), v13);
      v18 = 0;
      v19 = 0;
    }

    activityAccessToken(&v30);
    v20 = v30;
    v21 = v32;
    v23 = IPC::Encoder::operator new(0x238, v22);
    *v23 = 647;
    *(v23 + 68) = 0;
    *(v23 + 70) = 0;
    *(v23 + 69) = 0;
    *(v23 + 2) = 0;
    *(v23 + 3) = 0;
    *(v23 + 1) = 0;
    IPC::Encoder::encodeHeader(v23);
    v36 = v23;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v23, *(this + 7));
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v23, a2);
    IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v23, v18, v19);
    v34[0] = 0;
    IPC::Encoder::operator<<<BOOL>(v23, v34);
    IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v23, v20, v21);
    v34[0] = 0;
    v35 = 0;
    WebKit::AuxiliaryProcessProxy::sendMessage(v17, &v36, 0, v34, 1);
    if (v35 == 1)
    {
      v25 = *v34;
      *v34 = 0;
      if (v25)
      {
        (*(*v25 + 8))(v25);
      }
    }

    v26 = v36;
    v36 = 0;
    if (v26)
    {
      IPC::Encoder::~Encoder(v26, v24);
      bmalloc::api::tzoneFree(v28, v29);
    }

    v27 = v30;
    if (v30)
    {
      v30 = 0;
      v31 = 0;
      WTF::fastFree(v27, v24);
      if (!v14)
      {
LABEL_22:
        if (v9)
        {
        }

        return;
      }
    }

    else if (!v14)
    {
      goto LABEL_22;
    }

    goto LABEL_22;
  }
}

void sub_19D6B4850(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, IPC::Encoder *a16)
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

uint64_t WebKit::DownloadProxy::didReceivePlaceholderURL(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, WebKit::SandboxExtensionImpl **a5)
{
  if (*a5)
  {
    v7 = WTF::fastMalloc(0x18);
    *v7 = 1;
    v8 = *a5;
    *a5 = 0;
    *(v7 + 1) = v8;
    *(v7 + 2) = 1;
    WebKit::SandboxExtensionImpl::consume(v8);
    WTF::RefCounted<WebKit::SandboxExtension>::deref(v7);
  }

  v9 = *(**(a1 + 48) + 80);

  return v9();
}

uint64_t WebKit::DownloadProxy::didReceiveFinalURL(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, WebKit::SandboxExtensionImpl **a5)
{
  if (*a5)
  {
    v7 = WTF::fastMalloc(0x18);
    *v7 = 1;
    v8 = *a5;
    *a5 = 0;
    *(v7 + 1) = v8;
    *(v7 + 2) = 1;
    WebKit::SandboxExtensionImpl::consume(v8);
    WTF::RefCounted<WebKit::SandboxExtension>::deref(v7);
  }

  v9 = *(**(a1 + 48) + 88);

  return v9();
}

void WebKit::DownloadProxy::bookmarkDataForURL(WebKit::DownloadProxy *this@<X0>, uint64_t a2@<X8>)
{
  v5 = objc_alloc(MEMORY[0x1E695DFF8]);
  WTF::URL::fileSystemPath(&v18, this);
  v6 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v19, v6);
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v7);
    }
  }

  else
  {
    v19 = &stru_1F1147748;
    v8 = &stru_1F1147748;
  }

  v10 = [v5 initFileURLWithPath:v19 relativeToURL:0];
  v11 = v19;
  v19 = 0;
  if (v11)
  {
  }

  v12 = v18;
  v18 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v9);
  }

  v19 = 0;
  v13 = [v10 bookmarkDataWithOptions:512 includingResourceValuesForKeys:0 relativeToURL:0 error:{&v19, v18}];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
    v16 = [v14 bytes];
    v17 = [v14 length];
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned char const,18446744073709551615ul>(a2, v16, v17);
  if (v14)
  {
  }

  if (v10)
  {
  }
}

void sub_19D6B4C5C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::EndowmentStateTracker::isApplicationForeground(WebKit::EndowmentStateTracker *this)
{
  v1 = this;
  v12 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69C75E0] identifierWithPid:this];
  if (v2)
  {
    v7 = 0;
    v3 = [MEMORY[0x1E69C75D0] handleForIdentifier:v2 error:&v7];
    if (!v3)
    {
      v4 = qword_1ED641030;
      if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109378;
        v9 = v1;
        v10 = 2114;
        v11 = v7;
        _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "endowmentsForPid: Failed to get RBSProcessHandle for process with PID %d, error: %{public}@", buf, 0x12u);
      }
    }
  }

  else
  {
    v5 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v9 = v1;
      _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "handleForPID: Failed to construct RBSProcessIdentifier from PID %d", buf, 8u);
    }

    v3 = 0;
  }

  return [WebKit::endowmentsForHandle(v3) containsObject:@"com.apple.frontboard.visibility"];
}

uint64_t WebKit::endowmentsForHandle(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.frontboard.visibility", @"com.apple.launchservices.userfacing", 0}];
  }

  v2 = [a1 currentState];
  if ([v2 taskState] == 4)
  {

    return [v2 endowmentNamespaces];
  }

  else
  {
    v4 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v6 = [a1 pid];
      _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "endowmentsForHandle: Process with PID %d is not running", buf, 8u);
    }

    return 0;
  }
}

uint64_t WebKit::EndowmentStateTracker::ensureState(WebKit::EndowmentStateTracker *this)
{
  if ((*(this + 26) & 1) == 0)
  {
    v2 = WebKit::endowmentsForHandle([MEMORY[0x1E69C75D0] currentProcess]);
    v3 = [v2 containsObject:@"com.apple.launchservices.userfacing"];
    if ([v2 containsObject:@"com.apple.frontboard.visibility"])
    {
      v4 = 256;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4 | v3;
    if ((*(this + 26) & 1) == 0)
    {
      *(this + 26) = 1;
    }

    *(this + 12) = v5;
  }

  return this + 24;
}

void *WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(uint64_t *a1)
{
  if (*a1)
  {
    v2 = *(*a1 - 12);
  }

  else
  {
    v2 = 0;
  }

  v3 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::computeBestTableSize(v2);

  return WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::rehash(a1, v3, 0);
}

void *WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, unsigned int **a3)
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

  v9 = WTF::fastZeroedMalloc((8 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v13 = 0;
    v11 = 0;
    do
    {
      v14 = (v6 + 8 * v13);
      v15 = *v14;
      if (*v14)
      {
        if (v15 != -1)
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

          v18 = (v15 + ~(v15 << 32)) ^ ((v15 + ~(v15 << 32)) >> 22);
          v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
          v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
          v21 = v17 & ((v20 >> 31) ^ v20);
          v22 = 1;
          do
          {
            v23 = v21;
            v24 = *(v16 + 8 * v21);
            v21 = (v21 + v22++) & v17;
          }

          while (v24);
          v25 = (v16 + 8 * v23);
          *v14 = 0;
          *v25 = v15;
          v26 = *v14;
          *v14 = 0;
          if (v26 && atomic_fetch_add(v26, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v26);
            WTF::fastFree(v26, v10);
          }

          if (v14 == a3)
          {
            v11 = v25;
          }
        }
      }

      else
      {
        *v14 = 0;
      }

      ++v13;
    }

    while (v13 != v7);
  }

  else
  {
    v11 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v11;
}

uint64_t *WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D6B53C0);
  }

  if (!*a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19D6B53E0);
  }

  v5 = result;
  v6 = *result;
  if (*result || (result = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::expand(result, 0), (v6 = *v5) != 0))
  {
    v7 = 0;
    v8 = *(v6 - 8);
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  v9 = 0;
  v10 = *a2;
  v11 = ~(*a2 << 32) + *a2;
  v12 = 9 * (((v11 ^ (v11 >> 22)) + ~((v11 ^ (v11 >> 22)) << 13)) ^ (((v11 ^ (v11 >> 22)) + ~((v11 ^ (v11 >> 22)) << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = (v13 >> 31) ^ v13;
  for (i = 1; ; ++i)
  {
    v16 = v14 & v8;
    v17 = (v6 + 8 * v16);
    v18 = *v17;
    if (!*v17)
    {
      if (v9)
      {
        *v9 = 0;
        --*(*v5 - 16);
        v10 = *a2;
        v17 = v9;
      }

      *a2 = 0;
      result = *v17;
      *v17 = v10;
      if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);
        result = WTF::fastFree(result, a2);
      }

      v19 = *v5;
      if (*v5)
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
          goto LABEL_15;
        }
      }

      else if (3 * v22 > 4 * v21)
      {
LABEL_15:
        v23 = v19 + 8 * v22;
        v24 = 1;
        goto LABEL_16;
      }

      result = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::expand(v5, v17);
      v17 = result;
      v19 = *v5;
      if (*v5)
      {
        v22 = *(v19 - 4);
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_15;
    }

    if (v18 != -1)
    {
      break;
    }

    v9 = (v6 + 8 * v16);
LABEL_20:
    v14 = i + v16;
  }

  if (v18 != v10)
  {
    goto LABEL_20;
  }

  if (v7)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v6 - 4);
  }

  v24 = 0;
  v23 = v6 + 8 * v25;
LABEL_16:
  *a3 = v17;
  *(a3 + 8) = v23;
  *(a3 + 16) = v24;
  return result;
}

void *WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::expand(uint64_t *a1, unsigned int **a2)
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

  return WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

unsigned int *WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::remove(uint64_t *a1, unsigned int **a2)
{
  result = *a2;
  *a2 = 0;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);
    result = WTF::fastFree(result, a2);
  }

  *a2 = -1;
  v5 = *a1;
  v6 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v5 - 16) = v6;
  v7 = *(v5 - 4);
  if (6 * v6.i32[1] < v7 && v7 >= 9)
  {

    return WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::rehash(a1, v7 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::find<WTF::HashSetTranslator<WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,(WTF::ShouldValidateKey)1,WTF::DefaultWeakPtrImpl const*>(uint64_t *a1, void *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = *(v2 - 8);
  v5 = ~(*a2 << 32) + *a2;
  v6 = 9 * (((v5 ^ (v5 >> 22)) + ~((v5 ^ (v5 >> 22)) << 13)) ^ (((v5 ^ (v5 >> 22)) + ~((v5 ^ (v5 >> 22)) << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  for (i = 1; ; ++i)
  {
    v10 = *(v2 + 8 * v8);
    if (!v10)
    {
      break;
    }

    if (v10 != -1 && v10 == *a2)
    {
      return v2 + 8 * v8;
    }

    v8 = (v8 + i) & v4;
  }

  return v2 + 8 * *(v2 - 4);
}

double WebKit::FullscreenTouchSecheuristicParameters::iosParameters@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_19E702FE0;
  *(a1 + 16) = xmmword_19E702FF0;
  result = 0.1;
  *(a1 + 32) = xmmword_19E703000;
  *(a1 + 48) = 0x3FB999999999999ALL;
  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::GPUProcessCreationParameters,void>::decode@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<WebKit::AuxiliaryProcessCreationParameters>(&v48, a1);
  v4 = v50;
  if ((v50 & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 0);
  }

  v5 = IPC::Decoder::decode<BOOL>(a1);
  v6 = v4 ^ 1;
  if ((v5 & 0x100) == 0 && v4)
  {
    v6 = 1;
    IPC::Decoder::addIndexOfDecodingFailure(a1, 1);
  }

  v7 = IPC::Decoder::decode<BOOL>(a1);
  if (((v6 | ((v7 & 0x100) >> 8)) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 4);
    v6 = 1;
  }

  IPC::Decoder::decode<WebKit::SandboxExtensionHandle>(a1, &v46);
  if (((v6 | v47) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 5);
    v6 = 1;
  }

  IPC::Decoder::decode<WebKit::SandboxExtensionHandle>(a1, &v44);
  if (((v6 | v45) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 6);
    v6 = 1;
  }

  IPC::Decoder::decode<WTF::String>(a1, &v42);
  if (((v6 | v43) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 7);
    v6 = 1;
  }

  IPC::Decoder::decode<std::optional<WebKit::SandboxExtensionHandle>>(&v39, a1);
  if (((v6 | v41) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 8);
    v6 = 1;
  }

  IPC::Decoder::decode<WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v8, v37);
  if (((v6 | v38) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 9);
    v6 = 1;
  }

  IPC::Decoder::decode<WTF::String>(a1, &v35);
  if (((v36 | v6) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 10);
    v6 = 1;
  }

  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v33);
  if (((v34 | v6) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 12);
    v6 = 1;
  }

  v9 = IPC::Decoder::decode<BOOL>(a1);
  if (((v6 | ((v9 & 0x100) >> 8)) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 13);
    v6 = 1;
  }

  v11 = IPC::Decoder::decode<BOOL>(a1);
  if (((v6 | ((v11 & 0x100) >> 8)) & 1) == 0)
  {
    IPC::Decoder::addIndexOfDecodingFailure(a1, 14);
  }

  if (*a1)
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_62;
    }

    v12 = v48;
    v13 = v49;
    v48 = 0u;
    v49 = 0u;
    v23[0] = v12;
    v23[1] = v13;
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_62;
    }

    v24 = v5;
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_62;
    }

    v25 = v7;
    if ((v47 & 1) == 0)
    {
      goto LABEL_62;
    }

    v14 = v46;
    v46 = 0;
    v26 = v14;
    if ((v45 & 1) == 0)
    {
      goto LABEL_62;
    }

    v15 = v44;
    v44 = 0;
    v27 = v15;
    if ((v43 & 1) == 0)
    {
      goto LABEL_62;
    }

    v16 = v42;
    v42 = 0;
    v28 = v16;
    if ((v41 & 1) == 0)
    {
      goto LABEL_62;
    }

    LOBYTE(v29) = 0;
    v30 = 0;
    if (v40 == 1)
    {
      goto LABEL_63;
    }

    while (1)
    {
      if (v38)
      {
        WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v31, v37);
        if (v36)
        {
          v17 = v35;
          v35 = 0;
          v31[2] = v17;
          if (v34)
          {
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v32, v33);
            if ((v9 & 0x100) != 0)
            {
              v32[16] = v9;
              if ((v11 & 0x100) != 0)
              {
                break;
              }
            }
          }
        }
      }

LABEL_62:
      __break(1u);
LABEL_63:
      v22 = v39;
      v39 = 0;
      v29 = v22;
      v30 = 1;
    }

    v32[17] = v11;
    WebKit::GPUProcessCreationParameters::GPUProcessCreationParameters(a2, v23);
    a2[128] = 1;
    WebKit::GPUProcessCreationParameters::~GPUProcessCreationParameters(v23, v18);
  }

  else
  {
    *a2 = 0;
    a2[128] = 0;
  }

  if (v34 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v33, v10);
  }

  if (v36 == 1)
  {
    v19 = v35;
    v35 = 0;
    if (v19)
    {
      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v10);
      }
    }
  }

  if (v38 == 1)
  {
    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v37, v10);
  }

  if (v41 == 1 && v40 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v39);
  }

  if (v43 == 1)
  {
    v20 = v42;
    v42 = 0;
    if (v20)
    {
      if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v10);
      }
    }
  }

  if (v45 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v44);
  }

  if (v47 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v46);
  }

  return std::optional<WebKit::AuxiliaryProcessCreationParameters>::~optional(&v48, v10);
}

void sub_19D6B59F4(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, WTF::StringImpl *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, char a28, WTF::StringImpl *a29, char a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36)
{
  if (a28 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a26, a2);
  }

  if (a30 == 1)
  {
    v38 = a29;
    a29 = 0;
    if (v38)
    {
      if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v38, a2);
      }
    }
  }

  if (a36 == 1)
  {
    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a32, a2);
  }

  if (*(v36 - 168) == 1 && *(v36 - 176) == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((v36 - 184));
  }

  if (*(v36 - 152) == 1)
  {
    v39 = *(v36 - 160);
    *(v36 - 160) = 0;
    if (v39)
    {
      if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v39, a2);
      }
    }
  }

  if (*(v36 - 136) == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((v36 - 144));
  }

  if (*(v36 - 120) == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((v36 - 128));
  }

  std::optional<WebKit::AuxiliaryProcessCreationParameters>::~optional(v36 - 112, a2);
  _Unwind_Resume(a1);
}

unint64_t IPC::Decoder::addIndexOfDecodingFailure(unint64_t this, int a2)
{
  v2 = this;
  v4 = a2;
  v3 = *(this + 84);
  if (v3 == *(this + 80))
  {
    this = WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(this + 72, v3 + 1, &v4);
    *(*(v2 + 72) + 4 * *(v2 + 84)) = *this;
  }

  else
  {
    *(*(this + 72) + 4 * v3) = a2;
  }

  ++*(v2 + 84);
  return this;
}

void *WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(void *a1, _DWORD *a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

void sub_19D6B5C8C(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<WTF::String>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *a1;
    *a1 = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }
  }

  return a1;
}

uint64_t std::optional<WebKit::AuxiliaryProcessCreationParameters>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 32) == 1)
  {
    std::unique_ptr<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::~unique_ptr[abi:sn200100]((a1 + 24), a2);
    v4 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v3);
    }

    v5 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v3);
    }

    v6 = *a1;
    *a1 = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v3);
    }
  }

  return a1;
}

unint64_t IPC::ArgumentCoder<WebKit::GPUProcessPreferences,void>::decode(IPC::Decoder *a1)
{
  v2 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v3 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v4 = *(a1 + 2);
  v5 = *a1;
  v6 = &v4[-*a1];
  if (*(a1 + 1) <= v6)
  {
    goto LABEL_16;
  }

  *(a1 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_17;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    v13 = *v4;
    goto LABEL_18;
  }

  v8 = 1;
  while (v5)
  {
    if (v2 & 0x10000) != 0 && (v3 & 0x10000) != 0 && (v8)
    {
      LODWORD(v6) = v2 >> 8;
      v5 = 1;
      goto LABEL_10;
    }

    __break(1u);
LABEL_16:
    IPC::Decoder::markInvalid(a1);
LABEL_17:
    IPC::Decoder::markInvalid(a1);
    v13 = 0;
LABEL_18:
    IPC::Decoder::markInvalid(a1);
    v8 = 0;
    v5 = *a1;
    v7 = v13;
  }

  LOBYTE(v2) = 0;
LABEL_10:
  v9 = v2 | (v6 << 8);
  v10 = (v8 & (v7 != 0)) == 0;
  v11 = 0x100000000;
  if (v10)
  {
    v11 = 0;
  }

  return v11 & 0xFFFFFFFF00000000 | (v5 << 40) | (v3 << 16) | v9;
}

uint64_t IPC::Decoder::decode<std::optional<BOOL>>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<std::optional<BOOL>,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x10000) == 0)
  {
    v4 = v2;
    IPC::Decoder::markInvalid(a1);
    v2 = v4;
  }

  return v2 & 0xFFFFFF;
}

WebKit::SandboxExtensionImpl *IPC::ArgumentCoder<WebKit::GPUProcessSessionParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));

  return IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, (a2 + 24));
}

void IPC::ArgumentCoder<WebKit::GPUProcessSessionParameters,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v18);
  IPC::Decoder::decode<WebKit::SandboxExtensionHandle>(a1, &v16);
  IPC::Decoder::decode<WTF::String>(a1, &v14);
  IPC::Decoder::decode<WebKit::SandboxExtensionHandle>(a1, &v12);
  if (*a1)
  {
    if ((v19 & 1) == 0 || (v5 = v18, v18 = 0, (v17 & 1) == 0) || (v6 = v16, v16 = 0, (v15 & 1) == 0) || (v7 = v14, v14 = 0, (v13 & 1) == 0))
    {
      __break(1u);
      return;
    }

    v8 = v12;
    v12 = 0;
    *a2 = v5;
    *(a2 + 8) = v6;
    memset(v11, 0, sizeof(v11));
    *(a2 + 16) = v7;
    *(a2 + 24) = v8;
    *(a2 + 32) = 1;
    WebKit::GPUProcessSessionParameters::~GPUProcessSessionParameters(v11);
  }

  else
  {
    *a2 = 0;
    *(a2 + 32) = 0;
  }

  if (v13 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v12);
  }

  if (v15 == 1)
  {
    v9 = v14;
    v14 = 0;
    if (v9)
    {
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v4);
      }
    }
  }

  if (v17 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v16);
  }

  if (v19 == 1)
  {
    v10 = v18;
    v18 = 0;
    if (v10)
    {
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v4);
      }
    }
  }
}

void sub_19D6B6088(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, char a16)
{
  if ((a16 & 1) != 0 && a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, a2);
  }

  if (*(v16 - 40) == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((v16 - 48));
  }

  if (*(v16 - 24) == 1)
  {
    v18 = *(v16 - 32);
    *(v16 - 32) = 0;
    if (v18)
    {
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::GPUProcessSessionParameters::~GPUProcessSessionParameters(WebKit::SandboxExtensionImpl **this)
{
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 3);
  v3 = this[2];
  this[2] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v2);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 1);
  v5 = *this;
  *this = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }
  }
}

uint64_t IPC::StreamConnectionEncoder::operator<<<WebCore::FloatPoint const&>(uint64_t result, _DWORD *a2)
{
  v2 = -*result;
  v3 = v2 & 3 | 4;
  if (*(result + 8) < v3)
  {
    goto LABEL_8;
  }

  *(*result + (v2 & 3)) = *a2;
  v4 = *(result + 8);
  v5 = v4 - v3;
  if (v4 < v3)
  {
    goto LABEL_7;
  }

  v6 = *result + v3;
  *result = v6;
  *(result + 8) = v5;
  v7 = -v6 & 3 | 4;
  if (v5 >= v7)
  {
    *(v6 + (-v6 & 3)) = a2[1];
    v8 = *(result + 8);
    v9 = v8 >= v7;
    v10 = v8 - v7;
    if (v9)
    {
      *result += v7;
      *(result + 8) = v10;
      return result;
    }

LABEL_7:
    __break(1u);
  }

LABEL_8:
  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t IPC::Decoder::decode<WebCore::FloatPoint>(IPC::Decoder *a1)
{
  result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  if ((v3 & 1) == 0)
  {
    v4 = result;
    IPC::Decoder::markInvalid(a1);
    return v4;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::PathBezierCurveTo,void>::encode(IPC::Encoder *a1, float *a2)
{
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, a2[1]);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, a2[2]);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, a2[3]);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, a2[4]);
  v4 = a2[5];

  return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::PathBezierCurveTo,void>::encode(uint64_t result, _DWORD *a2)
{
  v2 = -*result;
  v3 = v2 & 3 | 4;
  if (*(result + 8) < v3)
  {
    goto LABEL_16;
  }

  *(*result + (v2 & 3)) = *a2;
  v4 = *(result + 8);
  v5 = v4 - v3;
  if (v4 < v3)
  {
    goto LABEL_15;
  }

  v6 = *result + v3;
  *result = v6;
  *(result + 8) = v5;
  v7 = -v6 & 3 | 4;
  if (v5 >= v7)
  {
    *(v6 + (-v6 & 3)) = a2[1];
    v8 = *(result + 8);
    v9 = v8 - v7;
    if (v8 < v7)
    {
      goto LABEL_15;
    }

    v10 = *result + v7;
    *result = v10;
    *(result + 8) = v9;
    v11 = -v10 & 3 | 4;
    if (v9 < v11)
    {
      goto LABEL_16;
    }

    *(v10 + (-v10 & 3)) = a2[2];
    v12 = *(result + 8);
    v13 = v12 - v11;
    if (v12 < v11)
    {
      goto LABEL_15;
    }

    v14 = *result + v11;
    *result = v14;
    *(result + 8) = v13;
    v15 = -v14 & 3 | 4;
    if (v13 < v15)
    {
      goto LABEL_16;
    }

    *(v14 + (-v14 & 3)) = a2[3];
    v16 = *(result + 8);
    v17 = v16 - v15;
    if (v16 < v15)
    {
      goto LABEL_15;
    }

    v18 = *result + v15;
    *result = v18;
    *(result + 8) = v17;
    v19 = -v18 & 3 | 4;
    if (v17 < v19)
    {
      goto LABEL_16;
    }

    *(v18 + (-v18 & 3)) = a2[4];
    v20 = *(result + 8);
    v21 = v20 - v19;
    if (v20 < v19)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v22 = *result + v19;
    *result = v22;
    *(result + 8) = v21;
    v23 = -v22 & 3 | 4;
    if (v21 >= v23)
    {
      *(v22 + (-v22 & 3)) = a2[5];
      v24 = *(result + 8);
      v25 = v24 >= v23;
      v26 = v24 - v23;
      if (v25)
      {
        *result += v23;
        *(result + 8) = v26;
        return result;
      }

      goto LABEL_15;
    }
  }

LABEL_16:
  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::PathArcTo,void>::encode(IPC::Encoder *a1, float *a2)
{
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, a2[1]);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, a2[2]);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, a2[3]);
  v4 = a2[4];

  return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::PathArcTo,void>::encode(uint64_t result, _DWORD *a2)
{
  v2 = -*result;
  v3 = v2 & 3 | 4;
  if (*(result + 8) < v3)
  {
    goto LABEL_14;
  }

  *(*result + (v2 & 3)) = *a2;
  v4 = *(result + 8);
  v5 = v4 - v3;
  if (v4 < v3)
  {
    goto LABEL_13;
  }

  v6 = *result + v3;
  *result = v6;
  *(result + 8) = v5;
  v7 = -v6 & 3 | 4;
  if (v5 >= v7)
  {
    *(v6 + (-v6 & 3)) = a2[1];
    v8 = *(result + 8);
    v9 = v8 - v7;
    if (v8 < v7)
    {
      goto LABEL_13;
    }

    v10 = *result + v7;
    *result = v10;
    *(result + 8) = v9;
    v11 = -v10 & 3 | 4;
    if (v9 < v11)
    {
      goto LABEL_14;
    }

    *(v10 + (-v10 & 3)) = a2[2];
    v12 = *(result + 8);
    v13 = v12 - v11;
    if (v12 < v11)
    {
      goto LABEL_13;
    }

    v14 = *result + v11;
    *result = v14;
    *(result + 8) = v13;
    v15 = -v14 & 3 | 4;
    if (v13 < v15)
    {
      goto LABEL_14;
    }

    *(v14 + (-v14 & 3)) = a2[3];
    v16 = *(result + 8);
    v17 = v16 - v15;
    if (v16 < v15)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v18 = *result + v15;
    *result = v18;
    *(result + 8) = v17;
    v19 = -v18 & 3 | 4;
    if (v17 >= v19)
    {
      *(v18 + (-v18 & 3)) = a2[4];
      v20 = *(result + 8);
      v21 = v20 >= v19;
      v22 = v20 - v19;
      if (v21)
      {
        *result += v19;
        *(result + 8) = v22;
        return result;
      }

      goto LABEL_13;
    }
  }

LABEL_14:
  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t IPC::StreamConnectionEncoder::operator<<<float const&>(uint64_t result, float a2)
{
  v2 = -*result;
  v3 = v2 & 3 | 4;
  if (*(result + 8) >= v3)
  {
    *(*result + (v2 & 3)) = a2;
    v4 = *(result + 8);
    v5 = v4 >= v3;
    v6 = v4 - v3;
    if (v5)
    {
      *result += v3;
      *(result + 8) = v6;
      return result;
    }

    __break(1u);
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::PathArc,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  v5 = *(a2 + 20);
  return IPC::Encoder::operator<<<BOOL>(a1, &v5);
}

uint64_t IPC::ArgumentCoder<WebCore::PathArc,void>::encode(uint64_t result, uint64_t a2)
{
  v2 = -*result;
  v3 = v2 & 3 | 4;
  if (*(result + 8) < v3)
  {
    goto LABEL_15;
  }

  *(*result + (v2 & 3)) = *a2;
  v4 = *(result + 8);
  v5 = v4 - v3;
  if (v4 < v3)
  {
    goto LABEL_14;
  }

  v6 = *result + v3;
  *result = v6;
  *(result + 8) = v5;
  v7 = -v6 & 3 | 4;
  if (v5 >= v7)
  {
    *(v6 + (-v6 & 3)) = *(a2 + 4);
    v8 = *(result + 8);
    v9 = v8 - v7;
    if (v8 < v7)
    {
      goto LABEL_14;
    }

    v10 = *result + v7;
    *result = v10;
    *(result + 8) = v9;
    v11 = -v10 & 3 | 4;
    if (v9 < v11)
    {
      goto LABEL_15;
    }

    *(v10 + (-v10 & 3)) = *(a2 + 8);
    v12 = *(result + 8);
    v13 = v12 - v11;
    if (v12 < v11)
    {
      goto LABEL_14;
    }

    v14 = *result + v11;
    *result = v14;
    *(result + 8) = v13;
    v15 = -v14 & 3 | 4;
    if (v13 < v15)
    {
      goto LABEL_15;
    }

    *(v14 + (-v14 & 3)) = *(a2 + 12);
    v16 = *(result + 8);
    v17 = v16 - v15;
    if (v16 < v15)
    {
      goto LABEL_14;
    }

    v18 = *result + v15;
    *result = v18;
    *(result + 8) = v17;
    v19 = -v18 & 3 | 4;
    if (v17 < v19)
    {
      goto LABEL_15;
    }

    *(v18 + (-v18 & 3)) = *(a2 + 16);
    v20 = *(result + 8);
    v22 = v20 - v19;
    v21 = v20 == v19;
    if (v20 < v19)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v23 = (*result + v19);
    *result = v23;
    *(result + 8) = v22;
    if (!v21)
    {
      *v23 = *(a2 + 20);
      v24 = *(result + 8);
      if (v24)
      {
        ++*result;
        *(result + 8) = v24 - 1;
        return result;
      }

      goto LABEL_14;
    }
  }

LABEL_15:
  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::PathArc,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  if ((v5 & 1) == 0)
  {
    v51 = result;
    v41 = v5;
    IPC::Decoder::markInvalid(a1);
    v5 = v41;
    result = v51;
  }

  v6 = *(a1 + 1);
  v7 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = *a1;
  v9 = v7 - *a1;
  v10 = v6 >= v9;
  v11 = v6 - v9;
  if (v10 && v11 > 3)
  {
    v13 = v7 + 1;
    *(a1 + 2) = v7 + 1;
    if (v7)
    {
      v14 = *v7 | 0x100000000;
      goto LABEL_10;
    }
  }

  else
  {
    v55 = result;
    v45 = v5;
    IPC::Decoder::markInvalid(a1);
    v5 = v45;
    result = v55;
  }

  v46 = v5;
  v56 = result;
  IPC::Decoder::markInvalid(a1);
  v5 = v46;
  result = v56;
  v14 = 0;
  v6 = *(a1 + 1);
  v13 = *(a1 + 2);
  v8 = *a1;
LABEL_10:
  v15 = ((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v6 >= v15 - v8 && v6 - (v15 - v8) > 3)
  {
    v17 = v15 + 1;
    *(a1 + 2) = v15 + 1;
    if (v15)
    {
      v18 = *v15 | 0x100000000;
      goto LABEL_17;
    }
  }

  else
  {
    v57 = result;
    v37 = v14;
    v47 = v5;
    IPC::Decoder::markInvalid(a1);
    v14 = v37;
    v5 = v47;
    result = v57;
  }

  v38 = v14;
  v48 = v5;
  v58 = result;
  IPC::Decoder::markInvalid(a1);
  v14 = v38;
  v5 = v48;
  result = v58;
  v18 = 0;
  v6 = *(a1 + 1);
  v17 = *(a1 + 2);
  v8 = *a1;
LABEL_17:
  v19 = ((v17 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v6 >= v19 - v8 && v6 - (v19 - v8) > 3)
  {
    v21 = (v19 + 1);
    *(a1 + 2) = v19 + 1;
    if (v19)
    {
      v22 = *v19 | 0x100000000;
      goto LABEL_24;
    }
  }

  else
  {
    v59 = result;
    v39 = v14;
    v49 = v5;
    v32 = v18;
    IPC::Decoder::markInvalid(a1);
    v18 = v32;
    v14 = v39;
    v5 = v49;
    result = v59;
  }

  v40 = v14;
  v50 = v5;
  v33 = v18;
  v60 = result;
  IPC::Decoder::markInvalid(a1);
  v18 = v33;
  v14 = v40;
  v5 = v50;
  result = v60;
  v22 = 0;
  v6 = *(a1 + 1);
  v21 = *(a1 + 2);
  v8 = *a1;
LABEL_24:
  if (v6 <= &v21[-v8])
  {
    v52 = result;
    v34 = v14;
    v42 = v5;
    v26 = v22;
    v29 = v18;
    IPC::Decoder::markInvalid(a1);
    v22 = v26;
    v18 = v29;
    v14 = v34;
    v5 = v42;
    result = v52;
    goto LABEL_39;
  }

  *(a1 + 2) = v21 + 1;
  if (!v21)
  {
LABEL_39:
    v27 = v22;
    v30 = v18;
    v35 = v14;
    v43 = v5;
    v53 = result;
    IPC::Decoder::markInvalid(a1);
    v22 = v27;
    v18 = v30;
    v14 = v35;
    v5 = v43;
    result = v53;
    goto LABEL_40;
  }

  v23 = *v21;
  if (v23 < 2)
  {
    v24 = 1;
    goto LABEL_28;
  }

LABEL_40:
  v28 = v22;
  v31 = v18;
  v36 = v14;
  v44 = v5;
  v54 = result;
  IPC::Decoder::markInvalid(a1);
  IPC::Decoder::markInvalid(a1);
  v22 = v28;
  v18 = v31;
  v14 = v36;
  v5 = v44;
  result = v54;
  LOBYTE(v23) = 0;
  v24 = 0;
  v8 = *a1;
LABEL_28:
  if (!v8)
  {
LABEL_37:
    v25 = 0;
    *a2 = 0;
    goto LABEL_35;
  }

  if ((v5 & 1) == 0 || (v14 & 0x100000000) == 0 || (v18 & 0x100000000) == 0 || (v22 & 0x100000000) == 0 || (v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  *a2 = result;
  *(a2 + 8) = v14;
  *(a2 + 12) = v18;
  *(a2 + 16) = v22;
  v25 = 1;
  *(a2 + 20) = v23;
LABEL_35:
  *(a2 + 24) = v25;
  return result;
}

uint64_t IPC::Decoder::decode<WebCore::RotationDirection>(IPC::Decoder *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 1) <= &v1[-*a1])
  {
    v6 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v6;
    goto LABEL_7;
  }

  *(a1 + 2) = v1 + 1;
  if (!v1)
  {
LABEL_7:
    v7 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v7;
    goto LABEL_8;
  }

  v2 = *v1;
  if (v2 >= 2)
  {
LABEL_8:
    v5 = a1;
    IPC::Decoder::markInvalid(a1);
    IPC::Decoder::markInvalid(v5);
    v2 = 0;
    v3 = 0;
    return v3 | v2;
  }

  v3 = 256;
  return v3 | v2;
}

uint64_t IPC::ArgumentCoder<WebCore::PathClosedArc,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::PathArc,void>::decode(a1, v6);
  if (v7 != 1)
  {
    result = IPC::Decoder::markInvalid(a1);
    if (*a1)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  if (!*a1)
  {
LABEL_7:
    v5 = 0;
    *a2 = 0;
    goto LABEL_4;
  }

  *a2 = *v6;
  *(a2 + 13) = *&v6[13];
  v5 = 1;
LABEL_4:
  *(a2 + 24) = v5;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::PathEllipse,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 20));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  v5 = *(a2 + 28);
  return IPC::Encoder::operator<<<BOOL>(a1, &v5);
}

uint64_t IPC::ArgumentCoder<WebCore::PathEllipse,void>::encode(uint64_t result, uint64_t a2)
{
  v2 = -*result;
  v3 = v2 & 3 | 4;
  if (*(result + 8) < v3)
  {
    goto LABEL_19;
  }

  *(*result + (v2 & 3)) = *a2;
  v4 = *(result + 8);
  v5 = v4 - v3;
  if (v4 < v3)
  {
    goto LABEL_18;
  }

  v6 = *result + v3;
  *result = v6;
  *(result + 8) = v5;
  v7 = -v6 & 3 | 4;
  if (v5 >= v7)
  {
    *(v6 + (-v6 & 3)) = *(a2 + 4);
    v8 = *(result + 8);
    v9 = v8 - v7;
    if (v8 < v7)
    {
      goto LABEL_18;
    }

    v10 = *result + v7;
    *result = v10;
    *(result + 8) = v9;
    v11 = -v10 & 3 | 4;
    if (v9 < v11)
    {
      goto LABEL_19;
    }

    *(v10 + (-v10 & 3)) = *(a2 + 8);
    v12 = *(result + 8);
    v13 = v12 - v11;
    if (v12 < v11)
    {
      goto LABEL_18;
    }

    v14 = *result + v11;
    *result = v14;
    *(result + 8) = v13;
    v15 = -v14 & 3 | 4;
    if (v13 < v15)
    {
      goto LABEL_19;
    }

    *(v14 + (-v14 & 3)) = *(a2 + 12);
    v16 = *(result + 8);
    v17 = v16 - v15;
    if (v16 < v15)
    {
      goto LABEL_18;
    }

    v18 = *result + v15;
    *result = v18;
    *(result + 8) = v17;
    v19 = -v18 & 3 | 4;
    if (v17 < v19)
    {
      goto LABEL_19;
    }

    *(v18 + (-v18 & 3)) = *(a2 + 16);
    v20 = *(result + 8);
    v21 = v20 - v19;
    if (v20 < v19)
    {
      goto LABEL_18;
    }

    v22 = *result + v19;
    *result = v22;
    *(result + 8) = v21;
    v23 = -v22 & 3 | 4;
    if (v21 < v23)
    {
      goto LABEL_19;
    }

    *(v22 + (-v22 & 3)) = *(a2 + 20);
    v24 = *(result + 8);
    v25 = v24 - v23;
    if (v24 < v23)
    {
      goto LABEL_18;
    }

    v26 = *result + v23;
    *result = v26;
    *(result + 8) = v25;
    v27 = -v26 & 3 | 4;
    if (v25 < v27)
    {
      goto LABEL_19;
    }

    *(v26 + (-v26 & 3)) = *(a2 + 24);
    v28 = *(result + 8);
    v30 = v28 - v27;
    v29 = v28 == v27;
    if (v28 < v27)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v31 = (*result + v27);
    *result = v31;
    *(result + 8) = v30;
    if (!v29)
    {
      *v31 = *(a2 + 28);
      v32 = *(result + 8);
      if (v32)
      {
        ++*result;
        *(result + 8) = v32 - 1;
        return result;
      }

      goto LABEL_18;
    }
  }

LABEL_19:
  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(uint64_t result, _DWORD *a2)
{
  v2 = -*result;
  v3 = v2 & 3 | 4;
  if (*(result + 8) < v3)
  {
    goto LABEL_12;
  }

  v4 = a2[1];
  *(*result + (v2 & 3)) = *a2;
  v5 = *(result + 8);
  v6 = v5 - v3;
  if (v5 < v3)
  {
    goto LABEL_11;
  }

  v7 = *result + v3;
  *result = v7;
  *(result + 8) = v6;
  v8 = -v7 & 3 | 4;
  if (v6 >= v8)
  {
    *(v7 + (-v7 & 3)) = v4;
    v9 = *(result + 8);
    v10 = v9 - v8;
    if (v9 < v8)
    {
      goto LABEL_11;
    }

    v11 = *result + v8;
    *result = v11;
    *(result + 8) = v10;
    v12 = -v11 & 3 | 4;
    if (v10 < v12)
    {
      goto LABEL_12;
    }

    v13 = a2[3];
    *(v11 + (-v11 & 3)) = a2[2];
    v14 = *(result + 8);
    v15 = v14 - v12;
    if (v14 < v12)
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v16 = *result + v12;
    *result = v16;
    *(result + 8) = v15;
    v17 = -v16 & 3 | 4;
    if (v15 >= v17)
    {
      *(v16 + (-v16 & 3)) = v13;
      v18 = *(result + 8);
      v19 = v18 >= v17;
      v20 = v18 - v17;
      if (v19)
      {
        *result += v17;
        *(result + 8) = v20;
        return result;
      }

      goto LABEL_11;
    }
  }

LABEL_12:
  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::PathRect,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v6 = v5;
  if ((v5 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  if ((v8 & 1) == 0)
  {
    goto LABEL_12;
  }

  while (*a1)
  {
    if (v6 & 1) != 0 && (v8)
    {
      *a2 = v4;
      *(a2 + 8) = result;
      LOBYTE(v9) = 1;
      goto LABEL_8;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    v10 = v8;
    v11 = result;
    IPC::Decoder::markInvalid(a1);
    v8 = v10;
    result = v11;
  }

  result = IPC::Decoder::markInvalid(a1);
  v9 = *a1;
  if (*a1)
  {
    goto LABEL_11;
  }

  *a2 = 0;
LABEL_8:
  *(a2 + 16) = v9;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::PathRoundedRect,void>::encode(uint64_t a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<WebCore::FloatRoundedRect,void>::encode(a1, a2);
  if (*(a1 + 8))
  {
    **a1 = *(a2 + 48);
    v5 = *(a1 + 8);
    if (v5)
    {
      ++*a1;
      *(a1 + 8) = v5 - 1;
      return result;
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::PathRoundedRect,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WebCore::FloatRoundedRect,void>::decode(a1, v7);
  if (v8 != 1)
  {
    IPC::Decoder::markInvalid(a1);
    result = IPC::Decoder::decode<WebCore::PathRoundedRect::Strategy>(a1);
    if (*a1)
    {
      goto LABEL_7;
    }

LABEL_8:
    v6 = 0;
    *a2 = 0;
    goto LABEL_5;
  }

  result = IPC::Decoder::decode<WebCore::PathRoundedRect::Strategy>(a1);
  if (!*a1)
  {
    goto LABEL_8;
  }

  if ((result & 0x100) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7[2];
  *(a2 + 48) = result;
  v6 = 1;
LABEL_5:
  *(a2 + 52) = v6;
  return result;
}

uint64_t IPC::Decoder::decode<WebCore::PathRoundedRect::Strategy>(IPC::Decoder *a1)
{
  result = IPC::ArgumentCoder<WebCore::PathRoundedRect::Strategy,void>::decode<IPC::Decoder>(a1);
  if ((result & 0x100) == 0)
  {
    v3 = result;
    IPC::Decoder::markInvalid(a1);
    return v3;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::PathContinuousRoundedRect,void>::encode(IPC::Encoder *a1, float *a2)
{
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, a2[4]);
  v4 = a2[5];

  return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::PathContinuousRoundedRect,void>::encode(uint64_t result, _DWORD *a2)
{
  v2 = -*result;
  v3 = v2 & 3 | 4;
  if (*(result + 8) < v3)
  {
    goto LABEL_16;
  }

  v4 = a2[1];
  *(*result + (v2 & 3)) = *a2;
  v5 = *(result + 8);
  v6 = v5 - v3;
  if (v5 < v3)
  {
    goto LABEL_15;
  }

  v7 = *result + v3;
  *result = v7;
  *(result + 8) = v6;
  v8 = -v7 & 3 | 4;
  if (v6 >= v8)
  {
    *(v7 + (-v7 & 3)) = v4;
    v9 = *(result + 8);
    v10 = v9 - v8;
    if (v9 < v8)
    {
      goto LABEL_15;
    }

    v11 = *result + v8;
    *result = v11;
    *(result + 8) = v10;
    v12 = -v11 & 3 | 4;
    if (v10 < v12)
    {
      goto LABEL_16;
    }

    v13 = a2[3];
    *(v11 + (-v11 & 3)) = a2[2];
    v14 = *(result + 8);
    v15 = v14 - v12;
    if (v14 < v12)
    {
      goto LABEL_15;
    }

    v16 = *result + v12;
    *result = v16;
    *(result + 8) = v15;
    v17 = -v16 & 3 | 4;
    if (v15 < v17)
    {
      goto LABEL_16;
    }

    *(v16 + (-v16 & 3)) = v13;
    v18 = *(result + 8);
    v19 = v18 - v17;
    if (v18 < v17)
    {
      goto LABEL_15;
    }

    v20 = *result + v17;
    *result = v20;
    *(result + 8) = v19;
    v21 = -v20 & 3 | 4;
    if (v19 < v21)
    {
      goto LABEL_16;
    }

    *(v20 + (-v20 & 3)) = a2[4];
    v22 = *(result + 8);
    v23 = v22 - v21;
    if (v22 < v21)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v24 = *result + v21;
    *result = v24;
    *(result + 8) = v23;
    v25 = -v24 & 3 | 4;
    if (v23 >= v25)
    {
      *(v24 + (-v24 & 3)) = a2[5];
      v26 = *(result + 8);
      v27 = v26 >= v25;
      v28 = v26 - v25;
      if (v27)
      {
        *result += v25;
        *(result + 8) = v28;
        return result;
      }

      goto LABEL_15;
    }
  }

LABEL_16:
  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::PathContinuousRoundedRect,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v6 = v5;
  if ((v5 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  if ((v8 & 1) == 0)
  {
    v26 = v8;
    v31 = result;
    IPC::Decoder::markInvalid(a1);
    v8 = v26;
    result = v31;
  }

  v9 = *a1;
  if (*a1)
  {
    if ((v6 & 1) == 0 || (v8 & 1) == 0)
    {
      goto LABEL_29;
    }

    v10 = v4 & 0xFFFFFFFFFFFFFF00;
    v4 = v4;
    v11 = *a1;
  }

  else
  {
    v23 = result;
    IPC::Decoder::markInvalid(a1);
    v9 = 0;
    result = v23;
    v4 = 0;
    v10 = 0;
    v11 = *a1;
  }

  v12 = *(a1 + 1);
  v13 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v12 >= v13 - v11 && v12 - (v13 - v11) > 3)
  {
    v15 = v13 + 1;
    *(a1 + 2) = v13 + 1;
    if (v13)
    {
      v16 = *v13 | 0x100000000;
      goto LABEL_16;
    }
  }

  else
  {
    v27 = v9;
    v32 = result;
    IPC::Decoder::markInvalid(a1);
    v9 = v27;
    result = v32;
  }

  v28 = v9;
  v33 = result;
  IPC::Decoder::markInvalid(a1);
  v9 = v28;
  result = v33;
  v16 = 0;
  v12 = *(a1 + 1);
  v15 = *(a1 + 2);
  v11 = *a1;
LABEL_16:
  v17 = ((v15 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v18 = v12 >= v17 - v11;
  v19 = v12 - (v17 - v11);
  if (v18 && v19 > 3)
  {
    *(a1 + 2) = v17 + 1;
    if (v17)
    {
      v21 = *v17 | 0x100000000;
      goto LABEL_23;
    }
  }

  else
  {
    v29 = v9;
    v34 = result;
    v24 = v16;
    IPC::Decoder::markInvalid(a1);
    v16 = v24;
    v9 = v29;
    result = v34;
  }

  v25 = v16;
  v30 = v9;
  v35 = result;
  IPC::Decoder::markInvalid(a1);
  v16 = v25;
  v9 = v30;
  result = v35;
  v21 = 0;
  v11 = *a1;
LABEL_23:
  if (!v11)
  {
LABEL_30:
    v22 = 0;
    *a2 = 0;
    goto LABEL_28;
  }

  if (!v9 || (v16 & 0x100000000) == 0 || (v21 & 0x100000000) == 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  *a2 = v10 | v4;
  *(a2 + 8) = result;
  *(a2 + 16) = v16;
  *(a2 + 20) = v21;
  v22 = 1;
LABEL_28:
  *(a2 + 24) = v22;
  return result;
}

IPC::Decoder *IPC::ArgumentCoder<WebCore::PathDataLine,void>::decode@<X0>(IPC::Decoder *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(result + 1);
  v3 = ((*(result + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = *result;
  v5 = v3 - *result;
  v6 = v2 >= v5;
  v7 = v2 - v5;
  if (!v6 || v7 <= 0xF)
  {
    v13 = result;
    v10 = a2;
    IPC::Decoder::markInvalid(result);
    result = v13;
    a2 = v10;
    goto LABEL_10;
  }

  *(result + 2) = v3 + 1;
  if (!v3)
  {
LABEL_10:
    v12 = a2;
    v11 = result;
    result = IPC::Decoder::markInvalid(result);
    a2 = v12;
    if (*v11)
    {
      __break(1u);
    }

    goto LABEL_12;
  }

  if (!v4)
  {
LABEL_12:
    v9 = 0;
    *a2 = 0;
    goto LABEL_9;
  }

  *a2 = *v3;
  v9 = 1;
LABEL_9:
  a2[16] = v9;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::PathDataQuadCurve,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v6 = v5;
  if ((v5 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  v7 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v9 = v8;
  if ((v8 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  if ((v11 & 1) == 0)
  {
    v13 = v11;
    v14 = result;
    IPC::Decoder::markInvalid(a1);
    v11 = v13;
    result = v14;
  }

  v12 = *a1;
  if (!*a1)
  {
    goto LABEL_14;
  }

  if ((v6 & 1) == 0 || (v9 & 1) == 0 || (v11 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    *a2 = 0;
    goto LABEL_12;
  }

  *a2 = v4;
  *(a2 + 8) = v7;
  LOBYTE(v12) = 1;
  *(a2 + 16) = result;
LABEL_12:
  *(a2 + 24) = v12;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::PathDataBezierCurve,void>::encode(IPC::Encoder *a1, float *a2)
{
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, a2[1]);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, a2[2]);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, a2[3]);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, a2[4]);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, a2[5]);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, a2[6]);
  v4 = a2[7];

  return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::PathDataBezierCurve,void>::encode(uint64_t result, _DWORD *a2)
{
  v2 = -*result;
  v3 = v2 & 3 | 4;
  if (*(result + 8) < v3)
  {
    goto LABEL_20;
  }

  *(*result + (v2 & 3)) = *a2;
  v4 = *(result + 8);
  v5 = v4 - v3;
  if (v4 < v3)
  {
    goto LABEL_19;
  }

  v6 = *result + v3;
  *result = v6;
  *(result + 8) = v5;
  v7 = -v6 & 3 | 4;
  if (v5 >= v7)
  {
    *(v6 + (-v6 & 3)) = a2[1];
    v8 = *(result + 8);
    v9 = v8 - v7;
    if (v8 < v7)
    {
      goto LABEL_19;
    }

    v10 = *result + v7;
    *result = v10;
    *(result + 8) = v9;
    v11 = -v10 & 3 | 4;
    if (v9 < v11)
    {
      goto LABEL_20;
    }

    *(v10 + (-v10 & 3)) = a2[2];
    v12 = *(result + 8);
    v13 = v12 - v11;
    if (v12 < v11)
    {
      goto LABEL_19;
    }

    v14 = *result + v11;
    *result = v14;
    *(result + 8) = v13;
    v15 = -v14 & 3 | 4;
    if (v13 < v15)
    {
      goto LABEL_20;
    }

    *(v14 + (-v14 & 3)) = a2[3];
    v16 = *(result + 8);
    v17 = v16 - v15;
    if (v16 < v15)
    {
      goto LABEL_19;
    }

    v18 = *result + v15;
    *result = v18;
    *(result + 8) = v17;
    v19 = -v18 & 3 | 4;
    if (v17 < v19)
    {
      goto LABEL_20;
    }

    *(v18 + (-v18 & 3)) = a2[4];
    v20 = *(result + 8);
    v21 = v20 - v19;
    if (v20 < v19)
    {
      goto LABEL_19;
    }

    v22 = *result + v19;
    *result = v22;
    *(result + 8) = v21;
    v23 = -v22 & 3 | 4;
    if (v21 < v23)
    {
      goto LABEL_20;
    }

    *(v22 + (-v22 & 3)) = a2[5];
    v24 = *(result + 8);
    v25 = v24 - v23;
    if (v24 < v23)
    {
      goto LABEL_19;
    }

    v26 = *result + v23;
    *result = v26;
    *(result + 8) = v25;
    v27 = -v26 & 3 | 4;
    if (v25 < v27)
    {
      goto LABEL_20;
    }

    *(v26 + (-v26 & 3)) = a2[6];
    v28 = *(result + 8);
    v29 = v28 - v27;
    if (v28 < v27)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v30 = *result + v27;
    *result = v30;
    *(result + 8) = v29;
    v31 = -v30 & 3 | 4;
    if (v29 >= v31)
    {
      *(v30 + (-v30 & 3)) = a2[7];
      v32 = *(result + 8);
      v33 = v32 >= v31;
      v34 = v32 - v31;
      if (v33)
      {
        *result += v31;
        *(result + 8) = v34;
        return result;
      }

      goto LABEL_19;
    }
  }

LABEL_20:
  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::PathDataArc,void>::encode(IPC::Encoder *a1, float *a2)
{
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, a2[1]);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, a2[2]);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, a2[3]);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, a2[4]);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, a2[5]);
  v4 = a2[6];

  return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::PathDataArc,void>::encode(uint64_t a1, _DWORD *a2)
{
  IPC::StreamConnectionEncoder::operator<<<WebCore::FloatPoint const&>(a1, a2);
  IPC::StreamConnectionEncoder::operator<<<WebCore::FloatPoint const&>(a1, a2 + 2);
  result = IPC::StreamConnectionEncoder::operator<<<WebCore::FloatPoint const&>(a1, a2 + 4);
  v5 = -*a1;
  v6 = v5 & 3 | 4;
  if (*(a1 + 8) >= v6)
  {
    *(*a1 + (v5 & 3)) = a2[6];
    v7 = *(a1 + 8);
    v8 = v7 >= v6;
    v9 = v7 - v6;
    if (v8)
    {
      *a1 += v6;
      *(a1 + 8) = v9;
      return result;
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  return result;
}

IPC::Encoder *IPC::ArgumentCoder<WebCore::PathSegment,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v5 = *(a2 + 52);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  return IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::encode<IPC::Encoder,mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath> const&>(a1, a2, v5);
}

mpark *IPC::ArgumentCoder<WebCore::PathSegment,void>::encode(mpark *a1, uint64_t a2)
{
  v2 = *(a2 + 52);
  if (!*(a1 + 1))
  {
    goto LABEL_6;
  }

  **a1 = v2;
  v3 = *(a1 + 1);
  if (!v3)
  {
    __break(1u);
LABEL_6:
    *a1 = 0;
    *(a1 + 1) = 0;
    return IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath> const&>(a1, a2, v2);
  }

  ++*a1;
  *(a1 + 1) = v3 - 1;
  return IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath> const&>(a1, a2, v2);
}

IPC::Decoder *IPC::ArgumentCoder<WebCore::PathSegment,void>::decode@<X0>(IPC::Decoder *this@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2);
  if (*(this + 1) <= &v4[-*this])
  {
    IPC::Decoder::markInvalid(this);
    goto LABEL_12;
  }

  *(this + 2) = v4 + 1;
  if (!v4)
  {
LABEL_12:
    IPC::Decoder::markInvalid(this);
    goto LABEL_13;
  }

  v5 = *v4;
  if (v5 < 0x11)
  {
    result = IPC::ArgumentCoder<mpark::variant<WebCore::PathMoveTo,WebCore::PathLineTo,WebCore::PathQuadCurveTo,WebCore::PathBezierCurveTo,WebCore::PathArcTo,WebCore::PathArc,WebCore::PathClosedArc,WebCore::PathEllipse,WebCore::PathEllipseInRect,WebCore::PathRect,WebCore::PathRoundedRect,WebCore::PathContinuousRoundedRect,WebCore::PathDataLine,WebCore::PathDataQuadCurve,WebCore::PathDataBezierCurve,WebCore::PathDataArc,WebCore::PathCloseSubpath>,void>::decode<IPC::Decoder>(this, v5, v9);
    if (v11)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  LOBYTE(v9[0]) = 0;
  v11 = 0;
LABEL_14:
  result = IPC::Decoder::markInvalid(this);
LABEL_5:
  v7 = *this;
  if (*this)
  {
    if ((v11 & 1) == 0)
    {
      __break(1u);
    }

    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
    *(a2 + 32) = v9[2];
    *(a2 + 48) = v10;
    LOBYTE(v7) = 1;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 56) = v7;
  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::RemoteGraphicsContextGLInitializationState,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  v4 = *(a2 + 20);

  return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::RemoteGraphicsContextGLInitializationState,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v25);
  result = IPC::Decoder::decode<WTF::String>(a1, &v23);
  v5 = *(a1 + 1);
  v6 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = *a1;
  v8 = v6 - *a1;
  v9 = v5 >= v8;
  v10 = v5 - v8;
  if (v9 && v10 > 3)
  {
    *(a1 + 2) = v6 + 1;
    if (v6)
    {
      v12 = *v6 | 0x100000000;
      v13 = v7;
      goto LABEL_8;
    }

    goto LABEL_28;
  }

  while (1)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v19 = *(a1 + 3);
    if (v19)
    {
      if (v5)
      {
        (*(*v19 + 16))(v19);
        v5 = *(a1 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_28:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (!result)
    {
      v13 = 0;
      v5 = 0;
LABEL_30:
      v7 = 0;
      v12 = 0;
      goto LABEL_8;
    }

    if (!v5)
    {
      v13 = 0;
      goto LABEL_30;
    }

    result = (*(*result + 16))(result);
    v12 = 0;
    v13 = *a1;
    v5 = *(a1 + 1);
    v7 = *a1;
LABEL_8:
    v14 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v5 < v14 - v7 || v5 - (v14 - v7) <= 3)
    {
      break;
    }

    *(a1 + 2) = v14 + 4;
    if (!v14)
    {
      goto LABEL_35;
    }

    v16 = *v14 | 0x100000000;
    if (!v7)
    {
      goto LABEL_36;
    }

LABEL_15:
    if (v26)
    {
      v17 = v25;
      v25 = 0;
      if ((v24 & 1) != 0 && (v12 & 0x100000000) != 0 && (v16 & 0x100000000) != 0)
      {
        v18 = v23;
        *a2 = v17;
        *(a2 + 8) = v18;
        *(a2 + 16) = v12 | (v16 << 32);
        *(a2 + 24) = 1;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  v21 = v12;
  *a1 = 0;
  *(a1 + 1) = 0;
  v20 = *(a1 + 3);
  if (!v20)
  {
    v5 = 0;
    goto LABEL_33;
  }

  if (v5)
  {
    (*(*v20 + 16))(v20, v13);
    v13 = *a1;
    v5 = *(a1 + 1);
  }

  else
  {
LABEL_33:
    v13 = 0;
  }

  v12 = v21;
LABEL_35:
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    if (v5)
    {
      v22 = v12;
      result = (*(*result + 16))(result, v13);
      v16 = 0;
      v7 = *a1;
      v12 = v22;
      if (*a1)
      {
        goto LABEL_15;
      }
    }
  }

LABEL_36:
  *a2 = 0;
  *(a2 + 24) = 0;
  if (v24)
  {
    result = v23;
    v23 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }
  }

LABEL_20:
  if (v26 == 1)
  {
    result = v25;
    v25 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  return result;
}

void sub_19D6B7D1C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, WTF::StringImpl *a13, char a14)
{
  if (a12 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a14 == 1 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::RemoteGPURequestAdapterResponse,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 8);
  IPC::ArgumentCoder<WebKit::WebGPU::SupportedLimits,void>::encode(a1, a2 + 24);

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 184));
}

uint64_t IPC::ArgumentCoder<WebKit::RemoteGPURequestAdapterResponse,void>::encode(void *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(a1, a2);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 8);
  result = IPC::ArgumentCoder<WebKit::WebGPU::SupportedLimits,void>::encode(a1, a2 + 24);
  if (a1[1])
  {
    **a1 = *(a2 + 184);
    v5 = a1[1];
    if (v5)
    {
      ++*a1;
      a1[1] = v5 - 1;
      return result;
    }

    __break(1u);
  }

  *a1 = 0;
  a1[1] = 0;
  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::RemoteGPURequestAdapterResponse,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v45);
  IPC::ArgumentCoder<WebKit::WebGPU::SupportedFeatures,void>::decode(a1, &v42);
  if ((v44 & 1) == 0)
  {
    goto LABEL_24;
  }

  while (1)
  {
    result = IPC::ArgumentCoder<WebKit::WebGPU::SupportedLimits,void>::decode(a1, v4, v5, v6, v40);
    v8 = v41;
    if ((v41 & 1) == 0)
    {
      v21 = *a1;
      v22 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      result = *(a1 + 3);
      if (result)
      {
        if (v22)
        {
          v26 = v8;
          result = (*(*result + 16))(result, v21);
          v8 = v26;
        }
      }
    }

    v9 = *(a1 + 1);
    v10 = *(a1 + 2);
    v11 = *a1;
    if (v9 <= &v10[-*a1])
    {
      v27 = v8;
      *a1 = 0;
      *(a1 + 1) = 0;
      v23 = *(a1 + 3);
      if (v23)
      {
        if (v9)
        {
          (*(*v23 + 16))(v23);
          v11 = *a1;
          v9 = *(a1 + 1);
          goto LABEL_33;
        }
      }

      else
      {
        v9 = 0;
      }

      v11 = 0;
    }

    else
    {
      *(a1 + 2) = v10 + 1;
      if (v10)
      {
        v12 = *v10;
        if (v12 < 2)
        {
          v13 = 1;
          goto LABEL_7;
        }

        v25 = *v10;
        v27 = v8;
        goto LABEL_37;
      }

      v27 = v8;
    }

LABEL_33:
    *a1 = 0;
    *(a1 + 1) = 0;
    v24 = *(a1 + 3);
    if (!v24)
    {
      v9 = 0;
LABEL_35:
      v11 = 0;
      v25 = 0;
      goto LABEL_37;
    }

    if (!v9)
    {
      goto LABEL_35;
    }

    (*(*v24 + 16))(v24, v11);
    v25 = 0;
    v11 = *a1;
    v9 = *(a1 + 1);
LABEL_37:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (!result || !v9)
    {
      break;
    }

    result = (*(*result + 16))(result, v11);
    v13 = 0;
    v11 = *a1;
    v12 = v25;
    v8 = v27;
LABEL_7:
    v14 = v12 ? v13 : 0;
    if (!v11)
    {
      break;
    }

    if (v46)
    {
      v15 = v45;
      v45 = 0;
      if (v44)
      {
        v16 = v42;
        v17 = v43;
        v42 = 0;
        v43 = 0;
        if (v8)
        {
          v35 = v40[6];
          v36 = v40[7];
          v37 = v40[8];
          v38 = v40[9];
          v31 = v40[2];
          v32 = v40[3];
          v33 = v40[4];
          v34 = v40[5];
          v29 = v40[0];
          v30 = v40[1];
          if (v13)
          {
            v39 = v14;
            v28[0] = 0;
            *a2 = v15;
            *(a2 + 8) = v16;
            v28[1] = 0;
            *(a2 + 16) = v17;
            *(a2 + 136) = v36;
            *(a2 + 152) = v37;
            *(a2 + 168) = v38;
            *(a2 + 72) = v32;
            *(a2 + 88) = v33;
            *(a2 + 104) = v34;
            *(a2 + 120) = v35;
            *(a2 + 24) = v29;
            *(a2 + 40) = v30;
            *(a2 + 56) = v31;
            *(a2 + 184) = v39;
            *(a2 + 192) = 1;
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v28, v11);
            result = 0;
            goto LABEL_16;
          }
        }
      }
    }

    __break(1u);
LABEL_24:
    v18 = *a1;
    v19 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v20 = *(a1 + 3);
    if (v20 && v19)
    {
      (*(*v20 + 16))(v20, v18);
    }
  }

  *a2 = 0;
  *(a2 + 192) = 0;
LABEL_16:
  if (v44 == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v42, v11);
  }

  if (v46 == 1)
  {
    result = v45;
    v45 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v11);
      }
    }
  }

  return result;
}

void sub_19D6B81C4(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 - 56) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 - 72, a2);
  }

  if (*(v2 - 40) == 1)
  {
    v4 = *(v2 - 48);
    *(v2 - 48) = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::AudioTrackPrivateRemoteConfiguration,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(a1, (a2 + 24));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 40));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 44));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 45));

  return IPC::ArgumentCoder<WebCore::PlatformAudioTrackConfiguration,void>::encode(a1, a2 + 48);
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::AudioTrackPrivateRemoteConfiguration,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 - *a1;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (v7 && v8 > 7)
  {
    *(a1 + 2) = v5 + 1;
    if (v5)
    {
      v10 = *v5;
      v11 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v48 = *(a1 + 3);
    if (v48)
    {
      if (v4)
      {
        (*(*v48 + 16))(v48);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v49 = *(a1 + 3);
  if (v49 && v4)
  {
    (*(*v49 + 16))(v49);
  }

  v11 = 0;
  v10 = 0;
LABEL_8:
  IPC::Decoder::decode<WTF::String>(a1, &v70);
  IPC::Decoder::decode<WTF::String>(a1, &v68);
  IPC::Decoder::decode<WTF::MediaTime>(a1, v66);
  v12 = *(a1 + 1);
  v13 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = *a1;
  v15 = v13 - *a1;
  v7 = v12 >= v15;
  v16 = v12 - v15;
  if (v7 && v16 > 3)
  {
    v18 = (v13 + 1);
    *(a1 + 2) = v13 + 1;
    if (v13)
    {
      v19 = *v13 | 0x100000000;
      goto LABEL_15;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v43 = *(a1 + 3);
    if (v43)
    {
      if (v12)
      {
        (*(*v43 + 16))(v43);
        v12 = *(a1 + 1);
      }
    }

    else
    {
      v12 = 0;
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v44 = *(a1 + 3);
  if (!v44 || !v12)
  {
    v19 = 0;
    v45 = 0;
    v14 = 0;
LABEL_65:
    *a1 = 0;
    *(a1 + 1) = 0;
    v46 = *(a1 + 3);
    if (v46 && v45)
    {
      (*(*v46 + 16))(v46, v14, v45);
      v21 = 0;
      v14 = *a1;
      v12 = *(a1 + 1);
    }

    else
    {
      v12 = 0;
      v14 = 0;
      v21 = 0;
    }

    goto LABEL_67;
  }

  (*(*v44 + 16))(v44);
  v19 = 0;
  v14 = *a1;
  v12 = *(a1 + 1);
  v18 = *(a1 + 2);
LABEL_15:
  if (v12 <= v18 - v14)
  {
    v45 = 0;
    v59 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v59 && v12)
    {
      (*(*v59 + 16))(v59);
      v14 = *a1;
      v45 = *(a1 + 1);
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_65;
  }

  v20 = v18 + 1;
  *(a1 + 2) = v18 + 1;
  if (!v18)
  {
    v45 = v12;
    goto LABEL_65;
  }

  v21 = *v18;
  if (v21 < 2)
  {
    v22 = 1;
    goto LABEL_19;
  }

LABEL_67:
  *a1 = 0;
  *(a1 + 1) = 0;
  v47 = *(a1 + 3);
  if (v47)
  {
    if (v12)
    {
      (*(*v47 + 16))(v47, v14);
      v14 = *a1;
      v12 = *(a1 + 1);
      goto LABEL_70;
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = 0;
LABEL_70:
  v22 = 0;
  v20 = *(a1 + 2);
LABEL_19:
  if (v21)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v12 <= v20 - v14)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v56 = *(a1 + 3);
    if (v56)
    {
      if (v12)
      {
        (*(*v56 + 16))(v56);
        v14 = *a1;
        v12 = *(a1 + 1);
LABEL_106:
        *a1 = 0;
        *(a1 + 1) = 0;
        v57 = *(a1 + 3);
        if (v57)
        {
          if (v12)
          {
            (*(*v57 + 16))(v57, v14);
            v14 = *a1;
            v12 = *(a1 + 1);
LABEL_109:
            *a1 = 0;
            *(a1 + 1) = 0;
            v58 = *(a1 + 3);
            if (v58 && v12)
            {
              (*(*v58 + 16))(v58, v14);
            }

            v25 = 0;
            goto LABEL_26;
          }
        }

        else
        {
          v12 = 0;
        }

        v14 = 0;
        goto LABEL_109;
      }
    }

    else
    {
      v12 = 0;
    }

    v14 = 0;
    goto LABEL_106;
  }

  *(a1 + 2) = v20 + 1;
  if (!v20)
  {
    goto LABEL_106;
  }

  v24 = *v20;
  if (v24 >= 7)
  {
    goto LABEL_109;
  }

  v25 = v24 | 0x100;
LABEL_26:
  result = IPC::Decoder::decode<WTF::String>(a1, &v72);
  v27 = *(a1 + 1);
  v28 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v29 = *a1;
  v30 = v28 - *a1;
  v7 = v27 >= v30;
  v31 = v27 - v30;
  if (!v7 || v31 <= 3)
  {
    goto LABEL_90;
  }

  *(a1 + 2) = v28 + 1;
  if (!v28)
  {
    goto LABEL_93;
  }

  v32 = *v28 | 0x100000000;
  v33 = v29;
  while (1)
  {
    v34 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v27 < v34 - v29 || v27 - (v34 - v29) <= 3)
    {
      v63 = v32;
      *a1 = 0;
      *(a1 + 1) = 0;
      v55 = *(a1 + 3);
      if (v55)
      {
        if (v27)
        {
          (*(*v55 + 16))(v55, v33);
          v33 = *a1;
          v27 = *(a1 + 1);
LABEL_99:
          *a1 = 0;
          *(a1 + 1) = 0;
          result = *(a1 + 3);
          if (result)
          {
            if (v27)
            {
              result = (*(*result + 16))(result, v33);
              v35 = 0;
              v33 = *a1;
              v27 = *(a1 + 1);
              v29 = *a1;
              goto LABEL_102;
            }

            v33 = 0;
          }

          else
          {
            v33 = 0;
            v27 = 0;
          }

          v29 = 0;
          v35 = 0;
LABEL_102:
          v32 = v63;
          goto LABEL_35;
        }
      }

      else
      {
        v27 = 0;
      }

      v33 = 0;
      goto LABEL_99;
    }

    *(a1 + 2) = v34 + 4;
    if (!v34)
    {
      v63 = v32;
      goto LABEL_99;
    }

    v35 = *v34 | 0x100000000;
LABEL_35:
    v36 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v27 < v36 - v29 || v27 - (v36 - v29) <= 7)
    {
      break;
    }

    *(a1 + 2) = v36 + 8;
    if (!v36)
    {
      goto LABEL_79;
    }

    v37 = *v36;
    v38 = 1;
    if (!v29)
    {
      goto LABEL_80;
    }

LABEL_39:
    v29 = v73;
    if ((v73 & 1) == 0)
    {
      goto LABEL_89;
    }

    if ((v32 & 0x100000000) == 0)
    {
      goto LABEL_89;
    }

    if ((v35 & 0x100000000) == 0)
    {
      goto LABEL_89;
    }

    if ((v38 & 1) == 0)
    {
      goto LABEL_89;
    }

    v29 = v72;
    v39 = 1;
    if ((v11 & 1) == 0)
    {
      goto LABEL_89;
    }

LABEL_44:
    if (v71)
    {
      v40 = v70;
      v70 = 0;
      if (v69)
      {
        v41 = v68;
        v68 = 0;
        if (v67)
        {
          *&v65 = v66[0];
          *(&v65 + 5) = *(v66 + 5);
          if (v19 & 0x100000000) != 0 && (v22 & 1) != 0 && v25 > 0xFF && (v39)
          {
            *(a2 + 56) = v32;
            *(a2 + 60) = v35;
            *(a2 + 64) = v37;
            *a2 = v10;
            *(a2 + 8) = v40;
            *(a2 + 16) = v41;
            *(a2 + 24) = v65;
            *(a2 + 40) = v19;
            *(a2 + 44) = v23 | (v25 << 8);
            v42 = 1;
            *(a2 + 48) = v29;
            goto LABEL_52;
          }
        }
      }
    }

LABEL_89:
    __break(1u);
LABEL_90:
    *a1 = 0;
    *(a1 + 1) = 0;
    v54 = *(a1 + 3);
    if (!v54)
    {
      v27 = 0;
LABEL_92:
      v29 = 0;
      goto LABEL_93;
    }

    if (!v27)
    {
      goto LABEL_92;
    }

    (*(*v54 + 16))(v54, v29);
    v29 = *a1;
    v27 = *(a1 + 1);
LABEL_93:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (!result)
    {
      v33 = 0;
      v27 = 0;
      goto LABEL_95;
    }

    if (v27)
    {
      result = (*(*result + 16))(result, v29);
      v32 = 0;
      v33 = *a1;
      v27 = *(a1 + 1);
      v29 = *a1;
    }

    else
    {
      v33 = 0;
LABEL_95:
      v29 = 0;
      v32 = 0;
    }
  }

  v60 = v35;
  v62 = v32;
  *a1 = 0;
  *(a1 + 1) = 0;
  v50 = *(a1 + 3);
  if (!v50)
  {
    v27 = 0;
    goto LABEL_77;
  }

  if (v27)
  {
    (*(*v50 + 16))(v50, v33);
    v33 = *a1;
    v27 = *(a1 + 1);
  }

  else
  {
LABEL_77:
    v33 = 0;
  }

  v35 = v60;
  v32 = v62;
LABEL_79:
  *a1 = 0;
  *(a1 + 1) = 0;
  v51 = *(a1 + 3);
  if (v51)
  {
    if (v27)
    {
      v61 = v35;
      v64 = v32;
      result = (*(*v51 + 16))(v51, v33);
      v38 = 0;
      v37 = 0;
      v35 = v61;
      v32 = v64;
      if (*a1)
      {
        goto LABEL_39;
      }
    }
  }

LABEL_80:
  if (v73)
  {
    v52 = v72;
    v72 = 0;
    if (v52)
    {
      if (atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v52, v33);
      }
    }
  }

  v33 = *a1;
  v53 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    if (v53)
    {
      result = (*(*result + 16))(result, v33);
      if (*a1)
      {
        v29 = 0;
        v39 = 0;
        if ((v11 & 1) == 0)
        {
          goto LABEL_89;
        }

        goto LABEL_44;
      }
    }
  }

  v42 = 0;
  *a2 = 0;
LABEL_52:
  *(a2 + 72) = v42;
  if (v69 == 1)
  {
    result = v68;
    v68 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v33);
      }
    }
  }

  if (v71 == 1)
  {
    result = v70;
    v70 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v33);
      }
    }
  }

  return result;
}

void sub_19D6B8ACC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, char a18, WTF::StringImpl *a19, char a20)
{
  if (*(v20 - 72) == 1)
  {
    v22 = *(v20 - 80);
    *(v20 - 80) = 0;
    if (v22)
    {
      if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, a2);
      }
    }
  }

  if (a18 == 1 && a17 && atomic_fetch_add_explicit(a17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a17, a2);
  }

  if (a20 == 1 && a19 && atomic_fetch_add_explicit(a19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a19, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WTF::MediaTime>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WTF::MediaTime,void>::decode(a1, a2);
  if ((*(a2 + 16) & 1) == 0)
  {
    v5 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::InitializationSegmentInfo,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(a1, a2);
  IPC::VectorArgumentCoder<false,WebKit::InitializationSegmentInfo::TrackInformation,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::InitializationSegmentInfo::TrackInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 2));
  IPC::VectorArgumentCoder<false,WebKit::InitializationSegmentInfo::TrackInformation,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::InitializationSegmentInfo::TrackInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 4));

  return IPC::VectorArgumentCoder<false,WebKit::InitializationSegmentInfo::TrackInformation,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::InitializationSegmentInfo::TrackInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 6));
}

uint64_t IPC::ArgumentCoder<WebKit::InitializationSegmentInfo,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::MediaTime>(a1, v26);
  IPC::Decoder::decode<WTF::Vector<WebKit::InitializationSegmentInfo::TrackInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v23, a1);
  IPC::Decoder::decode<WTF::Vector<WebKit::InitializationSegmentInfo::TrackInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v20, a1);
  result = IPC::Decoder::decode<WTF::Vector<WebKit::InitializationSegmentInfo::TrackInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v18, a1);
  if (*a1)
  {
    if (v27)
    {
      *&v14 = v26[0];
      *(&v14 + 5) = *(v26 + 5);
      if (v25)
      {
        v7 = v23;
        v8 = v24;
        v23 = 0;
        v24 = 0;
        if (v22)
        {
          v9 = v20;
          v10 = v21;
          v20 = 0;
          v21 = 0;
          if (v19)
          {
            *&v6 = 0;
            v11 = v18;
            v17 = v6;
            v18 = v6;
            *a2 = v14;
            *(a2 + 16) = v7;
            *(a2 + 24) = v8;
            v15 = v6;
            v16 = v6;
            *(a2 + 32) = v9;
            *(a2 + 40) = v10;
            *(a2 + 48) = v11;
            *(a2 + 64) = 1;
            WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v5);
            WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v16, v12);
            result = WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v15, v13);
            goto LABEL_7;
          }
        }
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 64) = 0;
LABEL_7:
  if (v19 == 1)
  {
    result = WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v5);
  }

  if (v22 == 1)
  {
    result = WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v5);
  }

  if (v25 == 1)
  {
    return WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v23, v5);
  }

  return result;
}

void sub_19D6B8DB4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22)
{
  if (a22)
  {
    WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a20, a2);
  }

  if (*(v22 - 48) == 1)
  {
    WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v22 - 64, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::Decoder::decode<WTF::Vector<WebKit::InitializationSegmentInfo::TrackInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, WTF::StringImpl **a2)
{
  v4 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = a2[1];
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
    *a2 = 0;
    a2[1] = 0;
    v22 = a2[3];
    if (v22)
    {
      if (v6)
      {
        (*(*v22 + 16))(v22);
        v5 = *a2;
        v6 = a2[1];
LABEL_49:
        *a2 = 0;
        a2[1] = 0;
        v23 = a2[3];
        if (v23 && v6)
        {
          (*(*v23 + 16))(v23, v5);
        }

        *a1 = 0;
        *(a1 + 16) = 0;
LABEL_51:
        v24 = *a2;
        v25 = a2[1];
        *a2 = 0;
        a2[1] = 0;
        result = a2[3];
        if (result)
        {
          if (v25)
          {
            return (*(*result + 16))(result, v24);
          }
        }

        return result;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_49;
  }

  a2[2] = (v4 + 8);
  if (!v4)
  {
    goto LABEL_49;
  }

  v8 = *v4;
  v32 = 0;
  v33 = 0;
  if (v8 >= 0xAAAA)
  {
    while (1)
    {
      IPC::Decoder::decode<WebKit::InitializationSegmentInfo::TrackInformation>(&v27, a2);
      v13 = v31;
      if (v31)
      {
        if (HIDWORD(v33) == v33)
        {
          WTF::Vector<WebKit::InitializationSegmentInfo::TrackInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::InitializationSegmentInfo::TrackInformation>(&v32, &v27);
        }

        else
        {
          v14 = v32 + 24 * HIDWORD(v33);
          v15 = v27;
          v27 = 0;
          *v14 = v15;
          LOWORD(v15) = v28;
          *(v14 + 10) = v29;
          *(v14 + 8) = v15;
          *(v14 + 16) = v30;
          ++HIDWORD(v33);
        }
      }

      else
      {
        *a1 = 0;
        *(a1 + 16) = 0;
      }

      if (v31 == 1)
      {
        v16 = v27;
        v27 = 0;
        if (v16)
        {
          if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v16, v5);
          }
        }
      }

      if ((v13 & 1) == 0)
      {
        break;
      }

      if (!--v8)
      {
        v17 = HIDWORD(v33);
        if (v33 <= HIDWORD(v33))
        {
          goto LABEL_43;
        }

        result = v32;
        if (HIDWORD(v33))
        {
          v26 = v32;
          if (HIDWORD(v33) >= 0xAAAAAAB)
          {
            __break(0xC471u);
            return result;
          }

          v19 = 24 * HIDWORD(v33);
          v20 = WTF::fastMalloc((24 * HIDWORD(v33)));
          result = v26;
          LODWORD(v33) = v19 / 0x18;
          v32 = v20;
          if (v20 != v26)
          {
            WTF::VectorTypeOperations<WebKit::InitializationSegmentInfo::TrackInformation>::move(v26, (v26 + 24 * v17), v20);
            result = v26;
          }
        }

        if (result)
        {
          if (v32 == result)
          {
            v32 = 0;
            LODWORD(v33) = 0;
          }

          WTF::fastFree(result, v5);
        }

        goto LABEL_43;
      }
    }
  }

  else
  {
    if (v8)
    {
      LODWORD(v33) = 24 * v8 / 0x18u;
      v32 = WTF::fastMalloc((24 * v8));
      do
      {
        IPC::Decoder::decode<WebKit::InitializationSegmentInfo::TrackInformation>(&v27, a2);
        v9 = v31;
        if (v31)
        {
          if (HIDWORD(v33) == v33)
          {
            WTF::Vector<WebKit::InitializationSegmentInfo::TrackInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::InitializationSegmentInfo::TrackInformation>(&v32, &v27);
          }

          else
          {
            v10 = v32 + 24 * HIDWORD(v33);
            v11 = v27;
            v27 = 0;
            *v10 = v11;
            LOWORD(v11) = v28;
            *(v10 + 10) = v29;
            *(v10 + 8) = v11;
            *(v10 + 16) = v30;
            ++HIDWORD(v33);
          }
        }

        else
        {
          *a1 = 0;
          *(a1 + 16) = 0;
        }

        if (v31 == 1 && (v12 = v27, v27 = 0, v12) && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, v5);
          if ((v9 & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        else if ((v9 & 1) == 0)
        {
          goto LABEL_44;
        }

        --v8;
      }

      while (v8);
    }

LABEL_43:
    *a1 = v32;
    v21 = v33;
    v32 = 0;
    v33 = 0;
    *(a1 + 8) = v21;
    *(a1 + 16) = 1;
  }

LABEL_44:
  result = WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v32, v5);
  if ((*(a1 + 16) & 1) == 0)
  {
    goto LABEL_51;
  }

  return result;
}

void sub_19D6B91A0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 + 16) == 1)
  {
    WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::MediaDescriptionInfo,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 8));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 9));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 10));
}

uint64_t IPC::ArgumentCoder<WebKit::RemoteMediaPlayerProxyConfiguration,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 24));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 32));
  IPC::VectorArgumentCoder<false,WebCore::ContentType,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ContentType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 40));
  IPC::ArgumentCoder<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2 + 56);
  IPC::ArgumentCoder<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2 + 80);
  IPC::ArgumentCoder<std::optional<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2 + 104);
  IPC::ArgumentCoder<std::optional<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2 + 128);
  IPC::ArgumentCoder<std::optional<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2 + 152);
  IPC::ArgumentCoder<WebCore::LayoutRect,void>::encode(a1, (a2 + 176));
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 192);
  IPC::VectorArgumentCoder<false,WebCore::PlatformTextTrackData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::PlatformTextTrackData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 208);
  v5 = *(a2 + 248);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, a2 + 224, v5);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 256));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 260));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 264));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 268));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 272));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 280));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 281));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 282));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 283));
  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 284));
}

void IPC::ArgumentCoder<WebKit::RemoteMediaPlayerProxyConfiguration,void>::decode(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v197 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WTF::String>(a1, &v164);
  IPC::Decoder::decode<WTF::String>(a1, &v162);
  IPC::Decoder::decode<WTF::String>(a1, &v160);
  IPC::Decoder::decode<WTF::String>(a1, &v158);
  IPC::Decoder::decode<WTF::String>(a1, &v156);
  IPC::Decoder::decode<WTF::Vector<WebCore::ContentType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v153, a1);
  IPC::Decoder::decode<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v151, a1);
  IPC::Decoder::decode<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v149, a1);
  IPC::Decoder::decode<std::optional<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(&v145, a1);
  IPC::Decoder::decode<std::optional<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(&v141, a1);
  IPC::Decoder::decode<std::optional<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(&v137, a1);
  IPC::ArgumentCoder<WebCore::LayoutRect,void>::decode(a1, &v135);
  v4 = v136;
  if ((v136 & 1) == 0)
  {
    v22 = *a1;
    v23 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v24 = *(a1 + 3);
    if (v24)
    {
      if (v23)
      {
        (*(*v24 + 16))(v24, v22);
      }
    }
  }

  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v132);
  v5 = *(a1 + 1);
  v6 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *a1;
  v8 = v6 - *a1;
  v9 = v5 >= v8;
  v10 = v5 - v8;
  if (!v9 || v10 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v92 = *(a1 + 3);
    if (v92)
    {
      if (v5)
      {
        (*(*v92 + 16))(v92);
        v5 = *(a1 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_182;
  }

  *(a1 + 2) = v6 + 1;
  if (!v6)
  {
LABEL_182:
    *a1 = 0;
    *(a1 + 1) = 0;
    v93 = *(a1 + 3);
    if (v93 && v5)
    {
      (*(*v93 + 16))(v93);
    }

    LOBYTE(v129) = 0;
    v131 = 0;
LABEL_184:
    v94 = *a1;
    v95 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v96 = *(a1 + 3);
    if (v96 && v95)
    {
      (*(*v96 + 16))(v96, v94);
    }

    goto LABEL_59;
  }

  v11 = *v6;
  v193 = 0uLL;
  if (v11 >= 0x6666)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::PlatformTextTrackData>(&v166, a1);
      v25 = v171;
      if (v171)
      {
        if (HIDWORD(v193) == DWORD2(v193))
        {
          WTF::Vector<WebCore::PlatformTextTrackData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::PlatformTextTrackData>(&v193, &v166);
        }

        else
        {
          v26 = v193 + 40 * HIDWORD(v193);
          v27 = v166;
          v166 = 0;
          *v26 = v27;
          v28 = v167;
          v167 = 0;
          *(v26 + 8) = v28;
          v29 = v168;
          v168 = 0;
          *(v26 + 16) = v29;
          v30 = v169;
          *(v26 + 32) = v170;
          *(v26 + 24) = v30;
          ++HIDWORD(v193);
        }
      }

      else
      {
        LOBYTE(v129) = 0;
        v131 = 0;
      }

      if (v171 == 1)
      {
        v31 = v168;
        v168 = 0;
        if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v31, v7);
        }

        v32 = v167;
        v167 = 0;
        if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v32, v7);
        }

        v33 = v166;
        v166 = 0;
        if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v33, v7);
        }
      }

      if ((v25 & 1) == 0)
      {
        break;
      }

      if (!--v11)
      {
        v34 = HIDWORD(v193);
        if (DWORD2(v193) <= HIDWORD(v193))
        {
          goto LABEL_57;
        }

        v35 = v193;
        if (HIDWORD(v193))
        {
          if (HIDWORD(v193) >= 0x6666667)
          {
            __break(0xC471u);
            return;
          }

          v36 = WTF::fastMalloc((40 * HIDWORD(v193)));
          DWORD2(v193) = 40 * v34 / 0x28;
          *&v193 = v36;
          if (v36 != v35)
          {
            WTF::VectorMover<false,WebCore::PlatformTextTrackData>::move(v35, (v35 + 40 * v34), v36);
          }
        }

        if (v35)
        {
          if (v193 == v35)
          {
            *&v193 = 0;
            DWORD2(v193) = 0;
          }

          WTF::fastFree(v35, v7);
        }

        goto LABEL_57;
      }
    }
  }

  else
  {
    if (v11)
    {
      v12 = WTF::fastMalloc((40 * v11));
      DWORD2(v193) = 40 * v11 / 0x28u;
      *&v193 = v12;
      do
      {
        IPC::Decoder::decode<WebCore::PlatformTextTrackData>(&v166, a1);
        v13 = v171;
        if (v171)
        {
          if (HIDWORD(v193) == DWORD2(v193))
          {
            WTF::Vector<WebCore::PlatformTextTrackData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::PlatformTextTrackData>(&v193, &v166);
          }

          else
          {
            v14 = v193 + 40 * HIDWORD(v193);
            v15 = v166;
            v166 = 0;
            *v14 = v15;
            v16 = v167;
            v167 = 0;
            *(v14 + 8) = v16;
            v17 = v168;
            v168 = 0;
            *(v14 + 16) = v17;
            v18 = v169;
            *(v14 + 32) = v170;
            *(v14 + 24) = v18;
            ++HIDWORD(v193);
          }
        }

        else
        {
          LOBYTE(v129) = 0;
          v131 = 0;
        }

        if (v171 != 1)
        {
          goto LABEL_23;
        }

        v19 = v168;
        v168 = 0;
        if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v19, v7);
        }

        v20 = v167;
        v167 = 0;
        if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v7);
        }

        v21 = v166;
        v166 = 0;
        if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v21, v7);
          if ((v13 & 1) == 0)
          {
            goto LABEL_58;
          }
        }

        else
        {
LABEL_23:
          if ((v13 & 1) == 0)
          {
            goto LABEL_58;
          }
        }

        --v11;
      }

      while (v11);
    }

LABEL_57:
    v37 = *(&v193 + 1);
    v129 = v193;
    v193 = 0uLL;
    v130 = v37;
    v131 = 1;
  }

LABEL_58:
  WTF::Vector<WebCore::PlatformTextTrackData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v193, v7);
  if ((v131 & 1) == 0)
  {
    goto LABEL_184;
  }

LABEL_59:
  IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::decode(a1, &v193);
  if ((v196 & 1) == 0)
  {
    v89 = *a1;
    v90 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v91 = *(a1 + 3);
    if (v91)
    {
      if (v90)
      {
        (*(*v91 + 16))(v91, v89);
      }
    }
  }

  v38 = IPC::Decoder::decode<WebCore::IntSize>(a1);
  v40 = v39;
  v41 = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
  v43 = v42;
  v44 = *(a1 + 1);
  v45 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v46 = *a1;
  v47 = v45 - *a1;
  v9 = v44 >= v47;
  v48 = v44 - v47;
  v122 = a2;
  v128 = v4;
  v127 = v40;
  if (!v9 || v48 <= 7)
  {
    v120 = v43;
    *a1 = 0;
    *(a1 + 1) = 0;
    v97 = *(a1 + 3);
    if (v97)
    {
      if (v44)
      {
        (*(*v97 + 16))(v97);
        v46 = *a1;
        v44 = *(a1 + 1);
        goto LABEL_190;
      }
    }

    else
    {
      v44 = 0;
    }

    v46 = 0;
    goto LABEL_190;
  }

  v49 = (v45 + 1);
  *(a1 + 2) = v45 + 1;
  if (v45)
  {
    v50 = *v45;
    v51 = 1;
    goto LABEL_65;
  }

  v120 = v43;
LABEL_190:
  *a1 = 0;
  *(a1 + 1) = 0;
  v98 = *(a1 + 3);
  if (!v98 || !v44)
  {
    v50 = 0;
    v51 = 0;
    v99 = 0;
    v46 = 0;
LABEL_192:
    *a1 = 0;
    *(a1 + 1) = 0;
    v100 = *(a1 + 3);
    if (v100 && v99)
    {
      (*(*v100 + 16))(v100, v46, v99);
      v53 = 0;
      v46 = *a1;
      v44 = *(a1 + 1);
    }

    else
    {
      v44 = 0;
      v46 = 0;
      v53 = 0;
    }

    goto LABEL_194;
  }

  (*(*v98 + 16))(v98, v46);
  v51 = 0;
  v50 = 0;
  v46 = *a1;
  v44 = *(a1 + 1);
  v49 = *(a1 + 2);
  v43 = v120;
LABEL_65:
  if (v44 <= v49 - v46)
  {
    v120 = v43;
    v99 = 0;
    v114 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v114 && v44)
    {
      (*(*v114 + 16))(v114);
      v46 = *a1;
      v99 = *(a1 + 1);
    }

    else
    {
      v46 = 0;
    }

    goto LABEL_192;
  }

  v52 = v49 + 1;
  *(a1 + 2) = v49 + 1;
  if (!v49)
  {
    v120 = v43;
    v99 = v44;
    goto LABEL_192;
  }

  v53 = *v49;
  if (v53 < 2)
  {
    v54 = 1;
    goto LABEL_69;
  }

  v120 = v43;
LABEL_194:
  *a1 = 0;
  *(a1 + 1) = 0;
  v101 = *(a1 + 3);
  if (!v101 || !v44)
  {
    v55 = 0;
    v54 = 0;
    v102 = 0;
    v46 = 0;
LABEL_196:
    *a1 = 0;
    *(a1 + 1) = 0;
    v103 = *(a1 + 3);
    if (v103 && v102)
    {
      (*(*v103 + 16))(v103, v46, v102);
      v57 = 0;
      v46 = *a1;
      v44 = *(a1 + 1);
    }

    else
    {
      v44 = 0;
      v46 = 0;
      v57 = 0;
    }

    goto LABEL_198;
  }

  (*(*v101 + 16))(v101, v46);
  v54 = 0;
  v46 = *a1;
  v44 = *(a1 + 1);
  v52 = *(a1 + 2);
  v43 = v120;
LABEL_69:
  if (v53)
  {
    v55 = v54;
  }

  else
  {
    v55 = 0;
  }

  if (v44 <= v52 - v46)
  {
    v120 = v43;
    v102 = 0;
    v115 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v115 && v44)
    {
      (*(*v115 + 16))(v115);
      v46 = *a1;
      v102 = *(a1 + 1);
    }

    else
    {
      v46 = 0;
    }

    goto LABEL_196;
  }

  v56 = v52 + 1;
  *(a1 + 2) = v52 + 1;
  if (!v52)
  {
    v120 = v43;
    v102 = v44;
    goto LABEL_196;
  }

  v57 = *v52;
  if (v57 < 2)
  {
    v58 = 1;
    goto LABEL_76;
  }

  v120 = v43;
LABEL_198:
  *a1 = 0;
  *(a1 + 1) = 0;
  v104 = *(a1 + 3);
  if (!v104 || !v44)
  {
    v126 = 0;
    v119 = 0;
    v105 = 0;
    v46 = 0;
LABEL_200:
    *a1 = 0;
    *(a1 + 1) = 0;
    v106 = *(a1 + 3);
    if (v106 && v105)
    {
      (*(*v106 + 16))(v106, v46, v105);
      v61 = 0;
      v46 = *a1;
      v44 = *(a1 + 1);
    }

    else
    {
      v44 = 0;
      v46 = 0;
      v61 = 0;
    }

    goto LABEL_202;
  }

  (*(*v104 + 16))(v104, v46);
  v58 = 0;
  v46 = *a1;
  v44 = *(a1 + 1);
  v56 = *(a1 + 2);
  v43 = v120;
LABEL_76:
  if (v57)
  {
    v59 = v58;
  }

  else
  {
    v59 = 0;
  }

  v126 = v59;
  if (v44 <= v56 - v46)
  {
    v119 = v58;
    v120 = v43;
    v105 = 0;
    v116 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v116 && v44)
    {
      (*(*v116 + 16))(v116);
      v46 = *a1;
      v105 = *(a1 + 1);
    }

    else
    {
      v46 = 0;
    }

    goto LABEL_200;
  }

  v60 = v56 + 1;
  *(a1 + 2) = v56 + 1;
  if (!v56)
  {
    v119 = v58;
    v120 = v43;
    v105 = v44;
    goto LABEL_200;
  }

  v61 = *v56;
  if (v61 < 2)
  {
    v62 = 1;
    goto LABEL_83;
  }

  v119 = v58;
  v120 = v43;
LABEL_202:
  *a1 = 0;
  *(a1 + 1) = 0;
  v107 = *(a1 + 3);
  if (!v107 || !v44)
  {
    v124 = 0;
    v125 = 0;
    v108 = 0;
    v46 = 0;
LABEL_204:
    *a1 = 0;
    *(a1 + 1) = 0;
    v109 = *(a1 + 3);
    if (v109 && v108)
    {
      (*(*v109 + 16))(v109, v46, v108);
      v64 = 0;
      v46 = *a1;
      v44 = *(a1 + 1);
    }

    else
    {
      v44 = 0;
      v46 = 0;
      v64 = 0;
    }

    goto LABEL_206;
  }

  (*(*v107 + 16))(v107, v46);
  v62 = 0;
  v46 = *a1;
  v44 = *(a1 + 1);
  v60 = *(a1 + 2);
  v43 = v120;
  v58 = v119;
LABEL_83:
  v125 = v62;
  if (!v61)
  {
    LOBYTE(v62) = 0;
  }

  v124 = v62;
  if (v44 <= v60 - v46)
  {
    v119 = v58;
    v120 = v43;
    v108 = 0;
    v117 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v117 && v44)
    {
      (*(*v117 + 16))(v117);
      v46 = *a1;
      v108 = *(a1 + 1);
    }

    else
    {
      v46 = 0;
    }

    goto LABEL_204;
  }

  v63 = v60 + 1;
  *(a1 + 2) = v60 + 1;
  if (!v60)
  {
    v119 = v58;
    v120 = v43;
    v108 = v44;
    goto LABEL_204;
  }

  v64 = *v60;
  if (v64 < 2)
  {
    v65 = 1;
    goto LABEL_89;
  }

  v119 = v58;
  v120 = v43;
LABEL_206:
  *a1 = 0;
  *(a1 + 1) = 0;
  v110 = *(a1 + 3);
  if (!v110 || !v44)
  {
    v121 = 0;
    v123 = 0;
    v111 = 0;
    v46 = 0;
LABEL_208:
    *a1 = 0;
    *(a1 + 1) = 0;
    v112 = *(a1 + 3);
    if (v112 && v111)
    {
      (*(*v112 + 16))(v112, v46, v111);
      v67 = 0;
      v46 = *a1;
      v44 = *(a1 + 1);
    }

    else
    {
      v44 = 0;
      v46 = 0;
      v67 = 0;
    }

    goto LABEL_210;
  }

  (*(*v110 + 16))(v110, v46);
  v65 = 0;
  v46 = *a1;
  v44 = *(a1 + 1);
  v63 = *(a1 + 2);
  v43 = v120;
  v58 = v119;
LABEL_89:
  if (v64)
  {
    v66 = v65;
  }

  else
  {
    v66 = 0;
  }

  v123 = v65;
  v121 = v66;
  if (v44 <= v63 - v46)
  {
    v119 = v58;
    v120 = v43;
    v111 = 0;
    v118 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v118 && v44)
    {
      (*(*v118 + 16))(v118);
      v46 = *a1;
      v111 = *(a1 + 1);
    }

    else
    {
      v46 = 0;
    }

    goto LABEL_208;
  }

  *(a1 + 2) = v63 + 1;
  if (!v63)
  {
    v119 = v58;
    v120 = v43;
    v111 = v44;
    goto LABEL_208;
  }

  v67 = *v63;
  if (v67 < 2)
  {
    v68 = 1;
    goto LABEL_96;
  }

  v119 = v58;
  v120 = v43;
LABEL_210:
  *a1 = 0;
  *(a1 + 1) = 0;
  v113 = *(a1 + 3);
  LOBYTE(v61) = v120;
  if (!v113 || !v44)
  {
    goto LABEL_211;
  }

  (*(*v113 + 16))(v113, v46);
  v68 = 0;
  v46 = *a1;
  v43 = v120;
  v58 = v119;
LABEL_96:
  if (v67)
  {
    v69 = v68;
  }

  else
  {
    v69 = 0;
  }

  if (v46)
  {
    v70 = v165;
    if ((v165 & 1) == 0)
    {
      goto LABEL_174;
    }

    v71 = v164;
    v164 = 0;
    v166 = v71;
    v70 = v163;
    if ((v163 & 1) == 0)
    {
      goto LABEL_174;
    }

    v72 = v162;
    v162 = 0;
    v167 = v72;
    v70 = v161;
    if ((v161 & 1) == 0)
    {
      goto LABEL_174;
    }

    v73 = v160;
    v160 = 0;
    v168 = v73;
    v70 = v159;
    if ((v159 & 1) == 0)
    {
      goto LABEL_174;
    }

    v74 = v158;
    v158 = 0;
    v169 = v74;
    v70 = v157;
    if ((v157 & 1) == 0)
    {
      goto LABEL_174;
    }

    v75 = v156;
    v156 = 0;
    v170 = v75;
    v70 = v155;
    if ((v155 & 1) == 0)
    {
      goto LABEL_174;
    }

    v171 = v153;
    v76 = v154;
    v153 = 0;
    v154 = 0;
    v172 = v76;
    v70 = v152;
    if ((v152 & 1) == 0)
    {
      goto LABEL_174;
    }

    LOBYTE(v61) = v58;
    LOBYTE(v67) = v55;
    v55 = v54;
    v54 = v50;
    LOBYTE(v50) = v43;
    std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](v173, v151);
    v70 = v150;
    if ((v150 & 1) == 0)
    {
      goto LABEL_174;
    }

    std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](v174, v149);
    v70 = v148;
    if ((v148 & 1) == 0)
    {
      goto LABEL_174;
    }

    std::__optional_move_base<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](&v175, &v145);
    v70 = v144;
    if ((v144 & 1) == 0)
    {
      goto LABEL_174;
    }

    std::__optional_move_base<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](&v176, &v141);
    v70 = v140;
    if ((v140 & 1) == 0)
    {
      goto LABEL_174;
    }

    std::__optional_move_base<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](v177, &v137);
    v70 = v128;
    if ((v128 & 1) == 0)
    {
      goto LABEL_174;
    }

    *&v177[24] = v135;
    v70 = v134;
    if ((v134 & 1) == 0)
    {
      goto LABEL_174;
    }

    v178 = v132;
    v77 = v133;
    v132 = 0;
    v133 = 0;
    v179 = v77;
    v70 = v131;
    if ((v131 & 1) == 0)
    {
      goto LABEL_174;
    }

    v180 = v129;
    v78 = v130;
    v129 = 0;
    v130 = 0;
    v181 = v78;
    v70 = v196;
    if ((v196 & 1) == 0)
    {
      goto LABEL_174;
    }

    LOBYTE(v182) = 0;
    v184 = -1;
    v70 = v195;
    if (v195)
    {
      goto LABEL_175;
    }

    v79 = v193;
    v193 = 0uLL;
    v182 = v79;
    v183 = v194;
    v80 = v127;
LABEL_117:
    v184 = v70;
    while (1)
    {
      if (v80)
      {
        v185 = v38;
        if (v50)
        {
          v186 = v41;
          if (v51)
          {
            v187 = v54;
            if (v55)
            {
              v188 = v67;
              if (v61)
              {
                v70 = v125;
                v189 = v126;
                if (v125)
                {
                  v70 = v123;
                  v190 = v124;
                  if (v123)
                  {
                    v70 = v121;
                    v191 = v121;
                    if (v68)
                    {
                      break;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_174:
      __break(1u);
LABEL_175:
      v80 = v127;
      if (v70 != 255)
      {
        v182 = v193;
        goto LABEL_117;
      }
    }

    v192 = v69;
    *(WebKit::RemoteMediaPlayerProxyConfiguration::RemoteMediaPlayerProxyConfiguration(v122, &v166) + 288) = 1;
    WebKit::RemoteMediaPlayerProxyConfiguration::~RemoteMediaPlayerProxyConfiguration(&v166);
    goto LABEL_127;
  }

LABEL_211:
  *v122 = 0;
  v122[288] = 0;
LABEL_127:
  if (v196 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v193);
  }

  if (v131 == 1)
  {
    WTF::Vector<WebCore::PlatformTextTrackData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v129, v46);
  }

  if (v134 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v132, v46);
  }

  if (v140 == 1 && v139 == 1)
  {
    v81 = v137;
    if (v137)
    {
      v137 = 0;
      v138 = 0;
      WTF::fastFree(v81, v46);
    }
  }

  if (v144 == 1 && v143 == 1)
  {
    v82 = v141;
    if (v141)
    {
      v141 = 0;
      v142 = 0;
      WTF::fastFree(v82, v46);
    }
  }

  if (v148 == 1 && v147 == 1)
  {
    v83 = v145;
    if (v145)
    {
      v145 = 0;
      v146 = 0;
      WTF::fastFree(v83, v46);
    }
  }

  if (v150 == 1 && v149[16] == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v149, v46);
  }

  if (v152 == 1 && v151[16] == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v151, v46);
  }

  if (v155 == 1)
  {
    WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v153, v46);
  }

  if (v157 == 1)
  {
    v84 = v156;
    v156 = 0;
    if (v84)
    {
      if (atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v84, v46);
      }
    }
  }

  if (v159 == 1)
  {
    v85 = v158;
    v158 = 0;
    if (v85)
    {
      if (atomic_fetch_add_explicit(v85, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v85, v46);
      }
    }
  }

  if (v161 == 1)
  {
    v86 = v160;
    v160 = 0;
    if (v86)
    {
      if (atomic_fetch_add_explicit(v86, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v86, v46);
      }
    }
  }

  if (v163 == 1)
  {
    v87 = v162;
    v162 = 0;
    if (v87)
    {
      if (atomic_fetch_add_explicit(v87, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v87, v46);
      }
    }
  }

  if (v165 == 1)
  {
    v88 = v164;
    v164 = 0;
    if (v88)
    {
      if (atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v88, v46);
      }
    }
  }
}

void sub_19D6BA4DC(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, int a20, __int16 a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, WTF *a27, int a28, int a29, char a30, int a31, __int16 a32, WTF *a33, int a34, int a35, char a36, int a37, __int16 a38, WTF *a39, int a40, int a41, char a42, int a43, __int16 a44, int a45, __int16 a46, uint64_t a47, char a48, int a49, __int16 a50, int a51, __int16 a52, uint64_t a53, char a54, int a55, __int16 a56, int a57, __int16 a58, uint64_t a59, char a60, WTF::StringImpl *a61, char a62, WTF::StringImpl *a63)
{
  if (*(v70 - 112) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v70 - 144);
  }

  if (a19 == 1)
  {
    WTF::Vector<WebCore::PlatformTextTrackData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a17, a2);
  }

  if (a23 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a21, a2);
  }

  if (a32 == 1 && a30 == 1)
  {
    v72 = a27;
    if (a27)
    {
      a27 = 0;
      a28 = 0;
      WTF::fastFree(v72, a2);
    }
  }

  if (a38 == 1 && a36 == 1)
  {
    v73 = a33;
    if (a33)
    {
      a33 = 0;
      a34 = 0;
      WTF::fastFree(v73, a2);
    }
  }

  if (a44 == 1 && a42 == 1)
  {
    v74 = a39;
    if (a39)
    {
      a39 = 0;
      a40 = 0;
      WTF::fastFree(v74, a2);
    }
  }

  if (a50 == 1 && a48 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a46, a2);
  }

  if (a56 == 1 && a54 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a52, a2);
  }

  if (a60 == 1)
  {
    WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a58, a2);
  }

  if (a62 == 1)
  {
    v75 = a61;
    a61 = 0;
    if (v75)
    {
      if (atomic_fetch_add_explicit(v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v75, a2);
      }
    }
  }

  if (a64 == 1)
  {
    v76 = a63;
    a63 = 0;
    if (v76)
    {
      if (atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v76, a2);
      }
    }
  }

  if (a66 == 1)
  {
    v77 = a65;
    a65 = 0;
    if (v77)
    {
      if (atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v77, a2);
      }
    }
  }

  if (a68 == 1)
  {
    v78 = a67;
    a67 = 0;
    if (v78)
    {
      if (atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v78, a2);
      }
    }
  }

  if (a70 == 1)
  {
    v79 = a69;
    a69 = 0;
    if (v79)
    {
      if (atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v79, a2);
      }
    }
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::Decoder::decode<WTF::Vector<WebCore::ContentType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 >= v4 - v5 && v6 - (v4 - v5) > 7)
  {
    *(a2 + 2) = v4 + 1;
    if (!v4)
    {
      goto LABEL_38;
    }

    v8 = *v4;
    v34 = 0;
    v35 = 0;
    if (v8 < 0x10000)
    {
      if (!v8)
      {
LABEL_19:
        *a1 = v34;
        v17 = v35;
        v34 = 0;
        v35 = 0;
        *(a1 + 8) = v17;
        *(a1 + 16) = 1;
        return WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v34, v5);
      }

      LODWORD(v35) = v8;
      v34 = WTF::fastMalloc((16 * v8));
      while (1)
      {
        IPC::Decoder::decode<WebCore::ContentType>(&v31, a2);
        if ((v33 & 1) == 0)
        {
          goto LABEL_30;
        }

        if (HIDWORD(v35) != v35)
        {
          break;
        }

        v9 = WTF::Vector<WebCore::ContentType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v34, HIDWORD(v35) + 1, &v31);
        v10 = HIDWORD(v35) + 1;
        v11 = v34 + 16 * HIDWORD(v35);
        v12 = *v9;
        *v9 = 0;
        *v11 = v12;
        *(v11 + 8) = *(v9 + 8);
        HIDWORD(v35) = v10;
        if (v33)
        {
          goto LABEL_15;
        }

LABEL_18:
        if (!--v8)
        {
          goto LABEL_19;
        }
      }

      v13 = HIDWORD(v35) + 1;
      v14 = v34 + 16 * HIDWORD(v35);
      v15 = v31;
      v31 = 0;
      *v14 = v15;
      *(v14 + 8) = v32;
      HIDWORD(v35) = v13;
LABEL_15:
      v16 = v31;
      v31 = 0;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v5);
      }

      goto LABEL_18;
    }

    while (1)
    {
      IPC::Decoder::decode<WebCore::ContentType>(&v31, a2);
      if ((v33 & 1) == 0)
      {
LABEL_30:
        *a1 = 0;
        *(a1 + 16) = 0;
        WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v34, v5);
        goto LABEL_31;
      }

      if (HIDWORD(v35) != v35)
      {
        break;
      }

      v19 = WTF::Vector<WebCore::ContentType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v34, HIDWORD(v35) + 1, &v31);
      v20 = HIDWORD(v35) + 1;
      v21 = v34 + 16 * HIDWORD(v35);
      v22 = *v19;
      *v19 = 0;
      *v21 = v22;
      *(v21 + 8) = *(v19 + 8);
      HIDWORD(v35) = v20;
      if (v33)
      {
        goto LABEL_25;
      }

LABEL_28:
      if (!--v8)
      {
        WTF::Vector<WebCore::ContentType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v34, HIDWORD(v35));
        goto LABEL_19;
      }
    }

    v23 = HIDWORD(v35) + 1;
    v24 = v34 + 16 * HIDWORD(v35);
    v25 = v31;
    v31 = 0;
    *v24 = v25;
    *(v24 + 8) = v32;
    HIDWORD(v35) = v23;
LABEL_25:
    v26 = v31;
    v31 = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v5);
    }

    goto LABEL_28;
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  v29 = *(a2 + 3);
  if (v29)
  {
    if (v6)
    {
      (*(*v29 + 16))(v29);
      v5 = *a2;
      v6 = *(a2 + 1);
      goto LABEL_38;
    }
  }

  else
  {
    v6 = 0;
  }

  v5 = 0;
LABEL_38:
  *a2 = 0;
  *(a2 + 1) = 0;
  v30 = *(a2 + 3);
  if (v30 && v6)
  {
    (*(*v30 + 16))(v30, v5);
  }

  *a1 = 0;
  *(a1 + 16) = 0;
LABEL_31:
  v27 = *a2;
  v28 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    if (v28)
    {
      return (*(*result + 16))(result, v27);
    }
  }

  return result;
}

void sub_19D6BAC48(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (a12 == 1 && a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a14, a2);
  _Unwind_Resume(a1);
}

uint64_t IPC::Decoder::decode<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(_BYTE *a1, IPC::Decoder *a2)
{
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v10 = *(a2 + 3);
    if (v10)
    {
      if (v6)
      {
        (*(*v10 + 16))(v10);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_13;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_13:
    *a2 = 0;
    *(a2 + 1) = 0;
    v11 = *(a2 + 3);
    if (v11)
    {
      if (v6)
      {
        (*(*v11 + 16))(v11, v5);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_16;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_16:
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v6)
    {
      result = (*(*result + 16))(result, v5);
    }

    goto LABEL_17;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_13;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    goto LABEL_16;
  }

  if (v7)
  {
    result = IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, v14);
    if (v15 == 1)
    {
      result = std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(a1, v14);
      a1[24] = 1;
      if ((v15 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_9;
    }

LABEL_17:
    *a1 = 0;
    a1[24] = 0;
    goto LABEL_18;
  }

  LOBYTE(v14[0]) = 0;
  v15 = 0;
  result = std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](a1, v14);
  a1[24] = 1;
  if (v15 == 1)
  {
LABEL_9:
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14, v9);
  }

LABEL_18:
  if ((a1[24] & 1) == 0)
  {
    v12 = *a2;
    v13 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      if (v13)
      {
        return (*(*result + 16))(result, v12);
      }
    }
  }

  return result;
}

void sub_19D6BAE74(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  if (*(v12 + 24) == 1 && *(v12 + 16) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v12, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::Decoder::decode<std::optional<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(_BYTE *a1, uint64_t *a2)
{
  v4 = a2[2];
  v5 = *a2;
  v6 = a2[1];
  if (v6 <= v4 - v5)
  {
    *a2 = 0;
    a2[1] = 0;
    v28 = a2[3];
    if (v28)
    {
      if (v6)
      {
        (*(*v28 + 16))(v28);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_52;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_52:
    *a2 = 0;
    a2[1] = 0;
    v29 = a2[3];
    if (v29)
    {
      if (v6)
      {
        (*(*v29 + 16))(v29, v5);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_55;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_55:
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result && v6)
    {
      result = (*(*result + 16))(result, v5);
    }

    goto LABEL_45;
  }

  a2[2] = v4 + 1;
  if (!v4)
  {
    goto LABEL_52;
  }

  if (*v4 >= 2u)
  {
    goto LABEL_55;
  }

  if (*v4)
  {
    v7 = v4 & 0xFFFFFFFFFFFFFFF8;
    v8 = ((v4 & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v6 < v8 - v5 || v6 - (v8 - v5) <= 7)
    {
      v22 = 0;
      v23 = 0;
      *a2 = 0;
      a2[1] = 0;
      v24 = a2[3];
      if (v24)
      {
        (*(*v24 + 16))(v24);
        v23 = *a2;
        v22 = a2[1];
      }

      goto LABEL_42;
    }

    a2[2] = v7 + 16;
    if (!v8)
    {
      v22 = v6;
      v23 = v5;
LABEL_42:
      *a2 = 0;
      a2[1] = 0;
      v25 = a2[3];
      if (v25 && v22)
      {
        (*(*v25 + 16))(v25, v23, v22);
      }

      LOBYTE(v30) = 0;
      v32 = 0;
LABEL_44:
      v26 = *a2;
      v27 = a2[1];
      *a2 = 0;
      a2[1] = 0;
      result = a2[3];
      if (!result || !v27 || (result = (*(*result + 16))(result, v26), (v32 & 1) == 0))
      {
LABEL_45:
        *a1 = 0;
        a1[24] = 0;
        goto LABEL_34;
      }

LABEL_31:
      result = std::optional<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(a1, &v30);
      a1[24] = 1;
      if ((v32 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v10 = *v8;
    v35 = 0;
    v36 = 0;
    if (v10 >= 0x40000)
    {
      while (1)
      {
        v18 = IPC::Decoder::decode<WebCore::FourCC>(a2);
        v33 = v18;
        v34 = BYTE4(v18);
        if (!HIDWORD(v18))
        {
          break;
        }

        if (HIDWORD(v36) == v36)
        {
          v16 = WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v35, HIDWORD(v36) + 1, &v33);
          *(v35 + HIDWORD(v36)) = *v16;
        }

        else
        {
          *(v35 + HIDWORD(v36)) = v18;
        }

        v17 = ++HIDWORD(v36);
        if (!--v10)
        {
          WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v35, v17);
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (!v10)
      {
LABEL_19:
        std::optional<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(&v30, &v35);
        goto LABEL_28;
      }

      LODWORD(v36) = v10;
      v35 = WTF::fastMalloc((4 * v10));
      while (1)
      {
        v11 = IPC::Decoder::decode<WebCore::FourCC>(a2);
        v33 = v11;
        v34 = BYTE4(v11);
        if (!HIDWORD(v11))
        {
          break;
        }

        if (HIDWORD(v36) == v36)
        {
          v13 = WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v35, HIDWORD(v36) + 1, &v33);
          *(v35 + HIDWORD(v36)) = *v13;
        }

        else
        {
          *(v35 + HIDWORD(v36)) = v11;
        }

        ++HIDWORD(v36);
        if (!--v10)
        {
          goto LABEL_19;
        }
      }
    }

    LOBYTE(v30) = 0;
    v32 = 0;
LABEL_28:
    v19 = v35;
    if (v35)
    {
      v35 = 0;
      LODWORD(v36) = 0;
      WTF::fastFree(v19, v12);
    }

    if (v32)
    {
      goto LABEL_31;
    }

    goto LABEL_44;
  }

  LOBYTE(v30) = 0;
  v32 = 0;
  result = std::__optional_move_base<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](a1, &v30);
  a1[24] = 1;
  if (v32 != 1)
  {
    goto LABEL_34;
  }

LABEL_32:
  result = v30;
  if (v30)
  {
    v30 = 0;
    v31 = 0;
    result = WTF::fastFree(result, v15);
  }

LABEL_34:
  if ((a1[24] & 1) == 0)
  {
    v20 = *a2;
    v21 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      if (v21)
      {
        return (*(*result + 16))(result, v20);
      }
    }
  }

  return result;
}

void sub_19D6BB2B8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10, int a11, char a12, uint64_t a13, WTF *a14, int a15)
{
  if (a12 == 1)
  {
    if (a9)
    {
      WTF::fastFree(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WebCore::SecurityOriginData>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::decode(a1, a2);
  if ((*(a2 + 32) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::FourCC>(void *a1)
{
  v1 = a1[1];
  v2 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v3 = *a1;
  v4 = v2 - *a1;
  v5 = v1 >= v4;
  v6 = v1 - v4;
  if (!v5 || v6 <= 3)
  {
    while (1)
    {
      *a1 = 0;
      a1[1] = 0;
      v13 = a1;
      v10 = a1[3];
      if (v10)
      {
        if (v1)
        {
          (*(*v10 + 16))(v10);
          v3 = *v13;
          v1 = v13[1];
          goto LABEL_14;
        }
      }

      else
      {
        v1 = 0;
      }

      v3 = 0;
LABEL_14:
      *v13 = 0;
      v13[1] = 0;
      v11 = v13[3];
      if (!v11 || !v1)
      {
        return 0;
      }

      (*(*v11 + 16))(v11, v3);
      v8 = 0;
      a1 = v13;
      if (!*v13)
      {
        goto LABEL_17;
      }

LABEL_8:
      if ((v8 & 0x100000000) != 0)
      {
        return v8;
      }

      __break(1u);
    }
  }

  a1[2] = v2 + 1;
  if (!v2)
  {
    v13 = a1;
    goto LABEL_14;
  }

  v8 = *v2 | 0x100000000;
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_17:
  v12 = a1[1];
  v8 = a1[3];
  *a1 = 0;
  a1[1] = 0;
  if (v8)
  {
    if (v12)
    {
      (*(*v8 + 16))(v8);
    }

    return 0;
  }

  return v8;
}

void IPC::Decoder::decode<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,void>::decode<IPC::Decoder,WebCore::SharedBuffer>(a1, a2);
  if ((a2[8] & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }
}

unint64_t IPC::Decoder::decode<WebCore::PlatformVideoColorSpace>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebCore::PlatformVideoColorSpace,void>::decode(a1);
  if ((v3 & 1) == 0)
  {
    v5 = *a1;
    v4 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v6 = a1[3];
    if (v6)
    {
      v7 = v4 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = result;
      (*(*v6 + 16))(v6, v5);
      return v8;
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::TextTrackPrivateRemoteConfiguration,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 24));
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(a1, (a2 + 32));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 48));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 52));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 53));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 54));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 55));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 56));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 57));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 58));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 59));
}

uint64_t IPC::ArgumentCoder<WebKit::TextTrackPrivateRemoteConfiguration,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = *(a1 + 1);
  v5 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 - *a1;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (v7 && v8 > 7)
  {
    *(a1 + 2) = v5 + 1;
    if (v5)
    {
      v10 = *v5;
      v11 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v71 = *(a1 + 3);
    if (v71)
    {
      if (v4)
      {
        (*(*v71 + 16))(v71);
        v4 = *(v2 + 8);
      }
    }

    else
    {
      v4 = 0;
    }
  }

  *v2 = 0;
  *(v2 + 8) = 0;
  v72 = *(v2 + 24);
  if (v72 && v4)
  {
    (*(*v72 + 16))(v72);
  }

  v11 = 0;
  v10 = 0;
LABEL_8:
  IPC::Decoder::decode<WTF::String>(v2, &v243);
  IPC::Decoder::decode<WTF::String>(v2, &v241);
  IPC::Decoder::decode<WTF::String>(v2, &v239);
  IPC::Decoder::decode<WTF::MediaTime>(v2, v237);
  v12 = *(v2 + 8);
  v13 = ((*(v2 + 16) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = *v2;
  v15 = v13 - *v2;
  v7 = v12 >= v15;
  v16 = v12 - v15;
  if (v7 && v16 > 3)
  {
    *(v2 + 16) = v13 + 1;
    if (!v13)
    {
      goto LABEL_93;
    }

    v18 = *v13 | 0x100000000;
    goto LABEL_15;
  }

  while (1)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    v50 = *(v2 + 24);
    if (v50)
    {
      if (v12)
      {
        (*(*v50 + 16))(v50);
        v12 = *(v2 + 8);
      }
    }

    else
    {
      v12 = 0;
    }

LABEL_93:
    *v2 = 0;
    *(v2 + 8) = 0;
    v51 = *(v2 + 24);
    if (!v51)
    {
      v14 = 0;
      v213 = 0;
      v12 = 0;
LABEL_95:
      *v2 = 0;
      *(v2 + 8) = 0;
      v52 = *(v2 + 24);
      if (!v52)
      {
        v12 = 0;
LABEL_97:
        v14 = 0;
        goto LABEL_98;
      }

      if (!v12)
      {
        goto LABEL_97;
      }

      (*(*v52 + 16))(v52, v14);
      v14 = *v2;
      v12 = *(v2 + 8);
LABEL_98:
      *v2 = 0;
      *(v2 + 8) = 0;
      v53 = *(v2 + 24);
      if (v53)
      {
        if (v12)
        {
          (*(*v53 + 16))(v53, v14);
          v14 = *v2;
          v12 = *(v2 + 8);
          goto LABEL_101;
        }
      }

      else
      {
        v12 = 0;
      }

      v14 = 0;
LABEL_101:
      v18 = v213;
      goto LABEL_102;
    }

    if (!v12)
    {
      v14 = 0;
      v213 = 0;
      goto LABEL_95;
    }

    (*(*v51 + 16))(v51);
    v18 = 0;
    v14 = *v2;
    v12 = *(v2 + 8);
LABEL_15:
    v19 = *(v2 + 16);
    if (v12 <= v19 - v14)
    {
      v213 = v18;
      goto LABEL_95;
    }

    *(v2 + 16) = v19 + 1;
    if (!v19)
    {
      v213 = v18;
      goto LABEL_98;
    }

    v20 = *v19;
    if (v20 < 4)
    {
      v21 = v20 | 0x100;
      goto LABEL_19;
    }

LABEL_102:
    *v2 = 0;
    *(v2 + 8) = 0;
    v54 = *(v2 + 24);
    if (!v54)
    {
      v14 = 0;
      v21 = 0;
      v12 = 0;
      goto LABEL_104;
    }

    v228 = v18;
    if (!v12)
    {
      v14 = 0;
      v21 = 0;
LABEL_104:
      *v2 = 0;
      *(v2 + 8) = 0;
      v55 = *(v2 + 24);
      if (v55)
      {
        v207 = v21;
        v230 = v18;
        if (v12)
        {
          (*(*v55 + 16))(v55, v14);
          v14 = *v2;
          v12 = *(v2 + 8);
        }

        else
        {
          v14 = 0;
        }

        v18 = v230;
        v21 = v207;
      }

      else
      {
        v12 = 0;
        v14 = 0;
      }

LABEL_106:
      *v2 = 0;
      *(v2 + 8) = 0;
      v56 = *(v2 + 24);
      if (v56)
      {
        v206 = v21;
        v229 = v18;
        if (v12)
        {
          (*(*v56 + 16))(v56, v14);
          v14 = *v2;
          v12 = *(v2 + 8);
        }

        else
        {
          v14 = 0;
        }

        v18 = v229;
        v21 = v206;
      }

      else
      {
        v12 = 0;
        v14 = 0;
      }

      goto LABEL_108;
    }

    (*(*v54 + 16))(v54, v14);
    v21 = 0;
    v14 = *v2;
    v12 = *(v2 + 8);
    v18 = v228;
LABEL_19:
    v22 = *(v2 + 16);
    if (v12 <= v22 - v14)
    {
      goto LABEL_104;
    }

    *(v2 + 16) = v22 + 1;
    if (!v22)
    {
      goto LABEL_106;
    }

    v23 = *v22;
    if (v23 < 7)
    {
      v24 = v23 | 0x100;
      goto LABEL_23;
    }

LABEL_108:
    *v2 = 0;
    *(v2 + 8) = 0;
    v57 = *(v2 + 24);
    if (!v57)
    {
      v14 = 0;
      v24 = 0;
      v12 = 0;
      goto LABEL_110;
    }

    v192 = v21;
    v214 = v18;
    if (!v12)
    {
      v14 = 0;
      v24 = 0;
LABEL_110:
      *v2 = 0;
      *(v2 + 8) = 0;
      v58 = *(v2 + 24);
      if (v58)
      {
        v176 = v24;
        v195 = v21;
        v217 = v18;
        if (v12)
        {
          (*(*v58 + 16))(v58, v14);
          v14 = *v2;
          v12 = *(v2 + 8);
        }

        else
        {
          v14 = 0;
        }

        v18 = v217;
        v24 = v176;
        v21 = v195;
      }

      else
      {
        v12 = 0;
        v14 = 0;
      }

LABEL_112:
      *v2 = 0;
      *(v2 + 8) = 0;
      v59 = *(v2 + 24);
      if (v59)
      {
        v175 = v24;
        v194 = v21;
        v216 = v18;
        if (v12)
        {
          (*(*v59 + 16))(v59, v14);
          v27 = 0;
          v14 = *v2;
          v12 = *(v2 + 8);
        }

        else
        {
          v14 = 0;
          v27 = 0;
        }

        v18 = v216;
        v24 = v175;
        v21 = v194;
      }

      else
      {
        v12 = 0;
        v14 = 0;
        v27 = 0;
      }

      goto LABEL_114;
    }

    (*(*v57 + 16))(v57, v14);
    v24 = 0;
    v14 = *v2;
    v12 = *(v2 + 8);
    v18 = v214;
    v21 = v192;
LABEL_23:
    v25 = *(v2 + 16);
    if (v12 <= v25 - v14)
    {
      goto LABEL_110;
    }

    v26 = v25 + 1;
    *(v2 + 16) = v25 + 1;
    if (!v25)
    {
      goto LABEL_112;
    }

    v27 = *v25;
    if (v27 < 2)
    {
      v28 = 1;
      goto LABEL_27;
    }

LABEL_114:
    *v2 = 0;
    *(v2 + 8) = 0;
    v60 = *(v2 + 24);
    if (!v60)
    {
      v29 = 0;
      v28 = 0;
      v31 = 0;
      v14 = 0;
      goto LABEL_116;
    }

    v158 = v27;
    v174 = v24;
    v193 = v21;
    v215 = v18;
    if (!v12)
    {
      v29 = 0;
      v28 = 0;
      v31 = 0;
      v14 = 0;
LABEL_116:
      *v2 = 0;
      *(v2 + 8) = 0;
      v61 = *(v2 + 24);
      if (v61)
      {
        v144 = v29;
        v160 = v28;
        v178 = v24;
        v197 = v21;
        v219 = v18;
        if (v31)
        {
          (*(*v61 + 16))(v61, v14, v31);
          LODWORD(v31) = 0;
          v14 = *v2;
          v12 = *(v2 + 8);
        }

        else
        {
          v12 = 0;
          v14 = 0;
        }

        v18 = v219;
        v24 = v178;
        v21 = v197;
        v29 = v144;
        v28 = v160;
      }

      else
      {
        v12 = 0;
        v14 = 0;
        LODWORD(v31) = 0;
      }

      goto LABEL_118;
    }

    (*(*v60 + 16))(v60, v14);
    v28 = 0;
    v14 = *v2;
    v12 = *(v2 + 8);
    v26 = *(v2 + 16);
    v18 = v215;
    v24 = v174;
    v21 = v193;
    v27 = v158;
LABEL_27:
    if (v27)
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    if (v12 <= v26 - v14)
    {
      v157 = v29;
      v173 = v28;
      v191 = v24;
      v212 = v21;
      v235 = v18;
      v31 = 0;
      v77 = *(v2 + 24);
      *v2 = 0;
      *(v2 + 8) = 0;
      if (v77 && v12)
      {
        (*(*v77 + 16))(v77);
        v14 = *v2;
        v31 = *(v2 + 8);
      }

      else
      {
        v14 = 0;
      }

      v18 = v235;
      v24 = v191;
      v21 = v212;
      v29 = v157;
      v28 = v173;
      goto LABEL_116;
    }

    v30 = v26 + 1;
    *(v2 + 16) = v26 + 1;
    if (!v26)
    {
      v31 = v12;
      goto LABEL_116;
    }

    LODWORD(v31) = *v26;
    if (v31 < 2)
    {
      v32 = 1;
      goto LABEL_34;
    }

LABEL_118:
    *v2 = 0;
    *(v2 + 8) = 0;
    v62 = *(v2 + 24);
    if (!v62)
    {
      v33 = 0;
      v32 = 0;
      v35 = 0;
      v14 = 0;
      goto LABEL_120;
    }

    v130 = v31;
    v143 = v29;
    v159 = v28;
    v177 = v24;
    v196 = v21;
    v218 = v18;
    if (!v12)
    {
      v33 = 0;
      v32 = 0;
      v35 = 0;
      v14 = 0;
LABEL_120:
      *v2 = 0;
      *(v2 + 8) = 0;
      v63 = *(v2 + 24);
      if (v63)
      {
        v119 = v33;
        v132 = v32;
        v146 = v29;
        v162 = v28;
        v180 = v24;
        v199 = v21;
        v221 = v18;
        if (v35)
        {
          (*(*v63 + 16))(v63, v14, v35);
          LODWORD(v35) = 0;
          v14 = *v2;
          v12 = *(v2 + 8);
        }

        else
        {
          v12 = 0;
          v14 = 0;
        }

        v18 = v221;
        v24 = v180;
        v21 = v199;
        v29 = v146;
        v28 = v162;
        v33 = v119;
        v32 = v132;
      }

      else
      {
        v12 = 0;
        v14 = 0;
        LODWORD(v35) = 0;
      }

      goto LABEL_122;
    }

    (*(*v62 + 16))(v62, v14);
    v32 = 0;
    v14 = *v2;
    v12 = *(v2 + 8);
    v30 = *(v2 + 16);
    v18 = v218;
    v24 = v177;
    v21 = v196;
    v29 = v143;
    v28 = v159;
    LODWORD(v31) = v130;
LABEL_34:
    if (v31)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    if (v12 <= v30 - v14)
    {
      v129 = v33;
      v142 = v32;
      v156 = v29;
      v172 = v28;
      v190 = v24;
      v211 = v21;
      v234 = v18;
      v35 = 0;
      v76 = *(v2 + 24);
      *v2 = 0;
      *(v2 + 8) = 0;
      if (v76 && v12)
      {
        (*(*v76 + 16))(v76);
        v14 = *v2;
        v35 = *(v2 + 8);
      }

      else
      {
        v14 = 0;
      }

      v18 = v234;
      v24 = v190;
      v21 = v211;
      v29 = v156;
      v28 = v172;
      v33 = v129;
      v32 = v142;
      goto LABEL_120;
    }

    v34 = v30 + 1;
    *(v2 + 16) = v30 + 1;
    if (!v30)
    {
      v35 = v12;
      goto LABEL_120;
    }

    LODWORD(v35) = *v30;
    if (v35 < 2)
    {
      v36 = 1;
      goto LABEL_41;
    }

LABEL_122:
    *v2 = 0;
    *(v2 + 8) = 0;
    v64 = *(v2 + 24);
    if (!v64)
    {
      v37 = 0;
      v36 = 0;
      v39 = 0;
      v14 = 0;
      goto LABEL_124;
    }

    v108 = v35;
    v118 = v33;
    v131 = v32;
    v145 = v29;
    v161 = v28;
    v179 = v24;
    v198 = v21;
    v220 = v18;
    if (!v12)
    {
      v37 = 0;
      v36 = 0;
      v39 = 0;
      v14 = 0;
LABEL_124:
      *v2 = 0;
      *(v2 + 8) = 0;
      v65 = *(v2 + 24);
      if (v65)
      {
        v100 = v37;
        v110 = v36;
        v121 = v33;
        v134 = v32;
        v148 = v29;
        v164 = v28;
        v182 = v24;
        v201 = v21;
        v223 = v18;
        if (v39)
        {
          (*(*v65 + 16))(v65, v14, v39);
          LODWORD(v39) = 0;
          v14 = *v2;
          v12 = *(v2 + 8);
        }

        else
        {
          v12 = 0;
          v14 = 0;
        }

        v18 = v223;
        v24 = v182;
        v21 = v201;
        v29 = v148;
        v28 = v164;
        v33 = v121;
        v32 = v134;
        v37 = v100;
        v36 = v110;
      }

      else
      {
        v12 = 0;
        v14 = 0;
        LODWORD(v39) = 0;
      }

      goto LABEL_126;
    }

    (*(*v64 + 16))(v64, v14);
    v36 = 0;
    v14 = *v2;
    v12 = *(v2 + 8);
    v34 = *(v2 + 16);
    v18 = v220;
    v24 = v179;
    v21 = v198;
    v29 = v145;
    v28 = v161;
    v33 = v118;
    v32 = v131;
    LODWORD(v35) = v108;
LABEL_41:
    if (v35)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    if (v12 <= v34 - v14)
    {
      v107 = v37;
      v117 = v36;
      v128 = v33;
      v141 = v32;
      v155 = v29;
      v171 = v28;
      v189 = v24;
      v210 = v21;
      v233 = v18;
      v39 = 0;
      v75 = *(v2 + 24);
      *v2 = 0;
      *(v2 + 8) = 0;
      if (v75 && v12)
      {
        (*(*v75 + 16))(v75);
        v14 = *v2;
        v39 = *(v2 + 8);
      }

      else
      {
        v14 = 0;
      }

      v18 = v233;
      v24 = v189;
      v21 = v210;
      v29 = v155;
      v28 = v171;
      v33 = v128;
      v32 = v141;
      v37 = v107;
      v36 = v117;
      goto LABEL_124;
    }

    v38 = v34 + 1;
    *(v2 + 16) = v34 + 1;
    if (!v34)
    {
      v39 = v12;
      goto LABEL_124;
    }

    LODWORD(v39) = *v34;
    if (v39 < 2)
    {
      v40 = 1;
      goto LABEL_48;
    }

LABEL_126:
    *v2 = 0;
    *(v2 + 8) = 0;
    v66 = *(v2 + 24);
    if (!v66)
    {
      v41 = 0;
      v40 = 0;
      v43 = 0;
      v14 = 0;
      goto LABEL_128;
    }

    v92 = v39;
    v99 = v37;
    v109 = v36;
    v120 = v33;
    v133 = v32;
    v147 = v29;
    v163 = v28;
    v181 = v24;
    v200 = v21;
    v222 = v18;
    if (!v12)
    {
      v41 = 0;
      v40 = 0;
      v43 = 0;
      v14 = 0;
LABEL_128:
      *v2 = 0;
      *(v2 + 8) = 0;
      v67 = *(v2 + 24);
      if (v67)
      {
        v87 = v41;
        v94 = v40;
        v102 = v37;
        v112 = v36;
        v123 = v33;
        v136 = v32;
        v150 = v29;
        v166 = v28;
        v184 = v24;
        v203 = v21;
        v225 = v18;
        if (v43)
        {
          (*(*v67 + 16))(v67, v14, v43);
          LODWORD(v43) = 0;
          v14 = *v2;
          v12 = *(v2 + 8);
        }

        else
        {
          v12 = 0;
          v14 = 0;
        }

        v18 = v225;
        v24 = v184;
        v21 = v203;
        v29 = v150;
        v28 = v166;
        v33 = v123;
        v32 = v136;
        v37 = v102;
        v36 = v112;
        v41 = v87;
        v40 = v94;
      }

      else
      {
        v12 = 0;
        v14 = 0;
        LODWORD(v43) = 0;
      }

      goto LABEL_130;
    }

    (*(*v66 + 16))(v66, v14);
    v40 = 0;
    v14 = *v2;
    v12 = *(v2 + 8);
    v38 = *(v2 + 16);
    v18 = v222;
    v24 = v181;
    v21 = v200;
    v29 = v147;
    v28 = v163;
    v33 = v120;
    v32 = v133;
    v37 = v99;
    v36 = v109;
    LODWORD(v39) = v92;
LABEL_48:
    if (v39)
    {
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    if (v12 <= v38 - v14)
    {
      v91 = v41;
      v98 = v40;
      v106 = v37;
      v116 = v36;
      v127 = v33;
      v140 = v32;
      v154 = v29;
      v170 = v28;
      v188 = v24;
      v209 = v21;
      v232 = v18;
      v43 = 0;
      v74 = *(v2 + 24);
      *v2 = 0;
      *(v2 + 8) = 0;
      if (v74 && v12)
      {
        (*(*v74 + 16))(v74);
        v14 = *v2;
        v43 = *(v2 + 8);
      }

      else
      {
        v14 = 0;
      }

      v18 = v232;
      v24 = v188;
      v21 = v209;
      v29 = v154;
      v28 = v170;
      v33 = v127;
      v32 = v140;
      v37 = v106;
      v36 = v116;
      v41 = v91;
      v40 = v98;
      goto LABEL_128;
    }

    v42 = v38 + 1;
    *(v2 + 16) = v38 + 1;
    if (!v38)
    {
      v43 = v12;
      goto LABEL_128;
    }

    LODWORD(v43) = *v38;
    if (v43 < 2)
    {
      v44 = 1;
      goto LABEL_55;
    }

LABEL_130:
    *v2 = 0;
    *(v2 + 8) = 0;
    v68 = *(v2 + 24);
    if (!v68)
    {
      v45 = 0;
      v44 = 0;
      v69 = 0;
      v14 = 0;
      goto LABEL_132;
    }

    v82 = v43;
    v86 = v41;
    v93 = v40;
    v101 = v37;
    v111 = v36;
    v122 = v33;
    v135 = v32;
    v149 = v29;
    v165 = v28;
    v183 = v24;
    v202 = v21;
    v224 = v18;
    if (!v12)
    {
      v45 = 0;
      v44 = 0;
      v69 = 0;
      v14 = 0;
LABEL_132:
      *v2 = 0;
      *(v2 + 8) = 0;
      v70 = *(v2 + 24);
      if (v70)
      {
        v80 = v45;
        v84 = v44;
        v89 = v41;
        v96 = v40;
        v104 = v37;
        v114 = v36;
        v125 = v33;
        v138 = v32;
        v152 = v29;
        v168 = v28;
        v186 = v24;
        v205 = v21;
        v227 = v18;
        if (v69)
        {
          (*(*v70 + 16))(v70, v14, v69);
          v46 = 0;
          v14 = *v2;
          v12 = *(v2 + 8);
        }

        else
        {
          v12 = 0;
          v14 = 0;
          v46 = 0;
        }

        v18 = v227;
        v24 = v186;
        v21 = v205;
        v29 = v152;
        v28 = v168;
        v33 = v125;
        v32 = v138;
        v37 = v104;
        v36 = v114;
        v41 = v89;
        v40 = v96;
        v45 = v80;
        v44 = v84;
      }

      else
      {
        v12 = 0;
        v14 = 0;
        v46 = 0;
      }

      goto LABEL_134;
    }

    (*(*v68 + 16))(v68, v14);
    v44 = 0;
    v14 = *v2;
    v12 = *(v2 + 8);
    v42 = *(v2 + 16);
    v18 = v224;
    v24 = v183;
    v21 = v202;
    v29 = v149;
    v28 = v165;
    v33 = v122;
    v32 = v135;
    v37 = v101;
    v36 = v111;
    v41 = v86;
    v40 = v93;
    LODWORD(v43) = v82;
LABEL_55:
    if (v43)
    {
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }

    if (v12 <= v42 - v14)
    {
      v81 = v45;
      v85 = v44;
      v90 = v41;
      v97 = v40;
      v105 = v37;
      v115 = v36;
      v126 = v33;
      v139 = v32;
      v153 = v29;
      v169 = v28;
      v187 = v24;
      v208 = v21;
      v231 = v18;
      v69 = 0;
      v73 = *(v2 + 24);
      *v2 = 0;
      *(v2 + 8) = 0;
      if (v73 && v12)
      {
        (*(*v73 + 16))(v73);
        v14 = *v2;
        v69 = *(v2 + 8);
      }

      else
      {
        v14 = 0;
      }

      v18 = v231;
      v24 = v187;
      v21 = v208;
      v29 = v153;
      v28 = v169;
      v33 = v126;
      v32 = v139;
      v37 = v105;
      v36 = v115;
      v41 = v90;
      v40 = v97;
      v45 = v81;
      v44 = v85;
      goto LABEL_132;
    }

    *(v2 + 16) = v42 + 1;
    if (!v42)
    {
      v69 = v12;
      goto LABEL_132;
    }

    v46 = *v42;
    if (v46 < 2)
    {
      v47 = 1;
      goto LABEL_62;
    }

LABEL_134:
    *v2 = 0;
    *(v2 + 8) = 0;
    result = *(v2 + 24);
    if (!result || !v12)
    {
      break;
    }

    v78 = v46;
    v79 = v45;
    v83 = v44;
    v88 = v41;
    v95 = v40;
    v103 = v37;
    v113 = v36;
    v124 = v33;
    v137 = v32;
    v151 = v29;
    v167 = v28;
    v185 = v24;
    v204 = v21;
    v226 = v18;
    (*(*result + 16))(result, v14);
    v47 = 0;
    v14 = *v2;
    v18 = v226;
    v24 = v185;
    v21 = v204;
    v29 = v151;
    v28 = v167;
    v33 = v124;
    v32 = v137;
    v37 = v103;
    v36 = v113;
    v41 = v88;
    v40 = v95;
    v45 = v79;
    v44 = v83;
    v46 = v78;
LABEL_62:
    result = v46 ? v47 : 0;
    if (!v14)
    {
      break;
    }

    if (v11 & 1) != 0 && (v244)
    {
      v14 = v243;
      v243 = 0;
      v12 = v242;
      if (v242)
      {
        v12 = v241;
        v241 = 0;
        if (v240)
        {
          v49 = v239;
          v239 = 0;
          v2 = v238;
          if (v238)
          {
            *&v236 = v237[0];
            v2 = *(v237 + 5);
            *(&v236 + 5) = *(v237 + 5);
            if (v18 & 0x100000000) != 0 && v21 > 0xFF && v24 > 0xFF && (v28 & 1) != 0 && (v32 & 1) != 0 && (v36 & 1) != 0 && (v40 & 1) != 0 && (v44 & 1) != 0 && (v47)
            {
              *a2 = v10;
              *(a2 + 8) = v14;
              *(a2 + 16) = v12;
              *(a2 + 24) = v49;
              *(a2 + 32) = v236;
              *(a2 + 48) = v18;
              *(a2 + 52) = v21;
              *(a2 + 53) = v24;
              *(a2 + 54) = v29;
              *(a2 + 55) = v33;
              *(a2 + 56) = v37;
              *(a2 + 57) = v41;
              *(a2 + 58) = v45;
              *(a2 + 59) = result;
              *(a2 + 64) = 1;
              goto LABEL_81;
            }
          }
        }
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 64) = 0;
  if (v240)
  {
    result = v239;
    v239 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v14);
      }
    }
  }

LABEL_81:
  if (v242 == 1)
  {
    result = v241;
    v241 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v14);
      }
    }
  }

  if (v244 == 1)
  {
    result = v243;
    v243 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v14);
      }
    }
  }

  return result;
}

void sub_19D6BC6B0(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 - 72) == 1)
  {
    v4 = *(v2 - 80);
    *(v2 - 80) = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  if (*(v2 - 56) == 1)
  {
    v5 = *(v2 - 64);
    *(v2 - 64) = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }
    }
  }

  if (*(v2 - 40) == 1)
  {
    v6 = *(v2 - 48);
    *(v2 - 48) = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t *IPC::ArgumentCoder<WebKit::VideoTrackPrivateRemoteConfiguration,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(a1, (a2 + 24));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 40));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 44));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 45));

  return IPC::ArgumentCoder<WebCore::PlatformVideoTrackConfiguration,void>::encode(a1, a2 + 48);
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::VideoTrackPrivateRemoteConfiguration,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 - *a1;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (v7 && v8 > 7)
  {
    *(a1 + 2) = v5 + 1;
    if (v5)
    {
      v10 = *v5;
      v11 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v60 = *(a1 + 3);
    if (v60)
    {
      if (v4)
      {
        (*(*v60 + 16))(v60);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v61 = *(a1 + 3);
  if (v61 && v4)
  {
    (*(*v61 + 16))(v61);
  }

  v11 = 0;
  v10 = 0;
LABEL_8:
  IPC::Decoder::decode<WTF::String>(a1, &v86);
  IPC::Decoder::decode<WTF::String>(a1, &v84);
  IPC::Decoder::decode<WTF::MediaTime>(a1, v82);
  v12 = *(a1 + 1);
  v13 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = *a1;
  v15 = v13 - *a1;
  v7 = v12 >= v15;
  v16 = v12 - v15;
  v17 = v7 && v16 > 3;
  v77 = v11;
  v73 = v10;
  if (v17)
  {
    v18 = (v13 + 1);
    *(a1 + 2) = v13 + 1;
    if (v13)
    {
      v76 = *v13 | 0x100000000;
      goto LABEL_15;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v55 = *(a1 + 3);
    if (v55)
    {
      if (v12)
      {
        (*(*v55 + 16))(v55);
        v12 = *(a1 + 1);
      }
    }

    else
    {
      v12 = 0;
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v56 = *(a1 + 3);
  if (!v56 || !v12)
  {
    v76 = 0;
    v57 = 0;
    v14 = 0;
LABEL_116:
    *a1 = 0;
    *(a1 + 1) = 0;
    v58 = *(a1 + 3);
    if (v58 && v57)
    {
      (*(*v58 + 16))(v58, v14, v57);
      v20 = 0;
      v14 = *a1;
      v12 = *(a1 + 1);
    }

    else
    {
      v12 = 0;
      v14 = 0;
      v20 = 0;
    }

    goto LABEL_118;
  }

  (*(*v56 + 16))(v56);
  v76 = 0;
  v14 = *a1;
  v12 = *(a1 + 1);
  v18 = *(a1 + 2);
LABEL_15:
  if (v12 <= v18 - v14)
  {
    v57 = 0;
    v71 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v71 && v12)
    {
      (*(*v71 + 16))(v71);
      v14 = *a1;
      v57 = *(a1 + 1);
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_116;
  }

  v19 = v18 + 1;
  *(a1 + 2) = v18 + 1;
  if (!v18)
  {
    v57 = v12;
    goto LABEL_116;
  }

  v20 = *v18;
  if (v20 < 2)
  {
    v21 = 1;
    goto LABEL_19;
  }

LABEL_118:
  *a1 = 0;
  *(a1 + 1) = 0;
  v59 = *(a1 + 3);
  if (v59)
  {
    if (v12)
    {
      (*(*v59 + 16))(v59, v14);
      v14 = *a1;
      v12 = *(a1 + 1);
      goto LABEL_121;
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = 0;
LABEL_121:
  v21 = 0;
  v19 = *(a1 + 2);
LABEL_19:
  v75 = v21;
  if (!v20)
  {
    v21 = 0;
  }

  v72 = v21;
  if (v12 <= v19 - v14)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v68 = *(a1 + 3);
    if (v68)
    {
      if (v12)
      {
        (*(*v68 + 16))(v68);
        v14 = *a1;
        v12 = *(a1 + 1);
LABEL_143:
        *a1 = 0;
        *(a1 + 1) = 0;
        v69 = *(a1 + 3);
        if (v69)
        {
          if (v12)
          {
            (*(*v69 + 16))(v69, v14);
            v14 = *a1;
            v12 = *(a1 + 1);
            goto LABEL_146;
          }
        }

        else
        {
          v12 = 0;
        }

        v14 = 0;
        goto LABEL_146;
      }
    }

    else
    {
      v12 = 0;
    }

    v14 = 0;
    goto LABEL_143;
  }

  *(a1 + 2) = v19 + 1;
  if (!v19)
  {
    goto LABEL_143;
  }

  v22 = *v19;
  if (v22 < 7)
  {
    v74 = v22 | 0x100;
    goto LABEL_25;
  }

LABEL_146:
  *a1 = 0;
  *(a1 + 1) = 0;
  v70 = *(a1 + 3);
  if (v70 && v12)
  {
    (*(*v70 + 16))(v70, v14);
  }

  v74 = 0;
LABEL_25:
  IPC::Decoder::decode<WTF::String>(a1, &v94);
  v23 = *(a1 + 1);
  v24 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v25 = *a1;
  v26 = v24 - *a1;
  v7 = v23 >= v26;
  v27 = v23 - v26;
  if (v7 && v27 > 3)
  {
    *(a1 + 2) = v24 + 1;
    if (v24)
    {
      v79 = *v24 | 0x100000000;
      v28 = v25;
      goto LABEL_30;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v64 = *(a1 + 3);
    if (v64)
    {
      if (v23)
      {
        (*(*v64 + 16))(v64);
        v23 = *(a1 + 1);
      }
    }

    else
    {
      v23 = 0;
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v65 = *(a1 + 3);
  if (v65)
  {
    if (v23)
    {
      (*(*v65 + 16))(v65);
      v79 = 0;
      v28 = *a1;
      v23 = *(a1 + 1);
      v25 = *a1;
      goto LABEL_30;
    }

    v28 = 0;
  }

  else
  {
    v28 = 0;
    v23 = 0;
  }

  v25 = 0;
  v79 = 0;
LABEL_30:
  v29 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v23 < v29 - v25 || v23 - (v29 - v25) <= 3)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v66 = *(a1 + 3);
    if (v66)
    {
      if (v23)
      {
        (*(*v66 + 16))(v66, v28);
        v28 = *a1;
        v23 = *(a1 + 1);
        goto LABEL_138;
      }
    }

    else
    {
      v23 = 0;
    }

    v28 = 0;
    goto LABEL_138;
  }

  *(a1 + 2) = v29 + 4;
  if (v29)
  {
    v78 = *v29 | 0x100000000;
    goto LABEL_34;
  }

LABEL_138:
  *a1 = 0;
  *(a1 + 1) = 0;
  v67 = *(a1 + 3);
  if (v67 && v23)
  {
    (*(*v67 + 16))(v67, v28);
  }

  v78 = 0;
LABEL_34:
  v30 = IPC::Decoder::decode<WebCore::PlatformVideoColorSpace>(a1);
  v32 = v31;
  v33 = IPC::Decoder::decode<unsigned long long>(a1);
  v35 = v34;
  v36 = *(a1 + 1);
  v37 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v38 = v37 - *a1;
  v7 = v36 >= v38;
  v39 = v36 - v38;
  if (v7 && v39 > 7)
  {
    *(a1 + 2) = v37 + 1;
    if (v37)
    {
      v40 = *v37;
      v41 = 1;
      goto LABEL_39;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v62 = *(a1 + 3);
    if (v62)
    {
      if (v36)
      {
        (*(*v62 + 16))(v62);
        v36 = *(a1 + 1);
      }
    }

    else
    {
      v36 = 0;
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v63 = *(a1 + 3);
  if (v63 && v36)
  {
    (*(*v63 + 16))(v63);
  }

  v41 = 0;
  v40 = 0;
LABEL_39:
  IPC::ArgumentCoder<std::optional<WebCore::SpatialVideoMetadata>,void>::decode<IPC::Decoder>(a1, v92);
  if ((v93 & 1) == 0)
  {
    v50 = *a1;
    v51 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v52 = *(a1 + 3);
    if (v52)
    {
      if (v51)
      {
        (*(*v52 + 16))(v52, v50);
      }
    }
  }

  result = IPC::ArgumentCoder<std::optional<WebCore::VideoProjectionMetadata>,void>::decode<IPC::Decoder>(a1, v88);
  if ((v91 & 1) == 0)
  {
    v43 = *a1;
    v53 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      if (v53)
      {
        result = (*(*result + 16))(result, v43);
      }
    }
  }

  v44 = *a1;
  if (!*a1)
  {
    v54 = v91;
    if ((v91 & 1) == 0 || (v54 = v90, (v90 & 1) == 0))
    {
      v45 = v30;
      v30 = 0;
      goto LABEL_109;
    }

    result = v89;
    v89 = 0;
    v45 = v30;
    if (result)
    {
      v54 = *result - 1;
      if (*result != 1)
      {
        v30 = 0;
        *result = v54;
LABEL_105:
        v35 = 1;
LABEL_109:
        LODWORD(v78) = v54;
        LODWORD(v79) = v54;
        goto LABEL_53;
      }

      result = WTF::JSONImpl::Value::operator delete();
    }

    v30 = 0;
    goto LABEL_105;
  }

  if ((v95 & 1) == 0)
  {
    goto LABEL_91;
  }

  v45 = v30;
  v30 = v94;
  v94 = 0;
  if ((v79 & 0x100000000) == 0 || (v78 & 0x100000000) == 0 || (v32 & 1) == 0 || (v35 & 1) == 0 || (v41 & 1) == 0 || (v93 & 1) == 0 || (v91 & 1) == 0)
  {
    goto LABEL_91;
  }

  if (v90 == 1)
  {
    v41 = v88[0];
    v32 = v89;
    *v81 = *v92;
    *&v81[13] = *&v92[13];
    v35 = 1;
  }

  else
  {
    v35 = 0;
    v41 = 0;
    *v81 = *v92;
    *&v81[13] = *&v92[13];
  }

LABEL_53:
  if (v95 == 1 && (result = v94, v94 = 0, result) && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v43);
    if (v44)
    {
      goto LABEL_57;
    }
  }

  else if (v44)
  {
    goto LABEL_57;
  }

  v43 = *a1;
  v49 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v49)
  {
    result = (*(*result + 16))(result, v43);
  }

LABEL_57:
  if (!*a1)
  {
    *a2 = 0;
    *(a2 + 136) = 0;
    if (!v44)
    {
      goto LABEL_78;
    }

    goto LABEL_72;
  }

  if ((v77 & 1) == 0 || (v87 & 1) == 0 || (v46 = v86, v86 = 0, (v85 & 1) == 0) || (v47 = v84, v84 = 0, (v83 & 1) == 0) || (*&v80 = v82[0], *(&v80 + 5) = *(v82 + 5), (v76 & 0x100000000) == 0) || (v75 & 1) == 0 || v74 <= 0xFF || !v44)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  *a2 = v73;
  *(a2 + 8) = v46;
  if (v35)
  {
    v48 = 0;
  }

  else
  {
    v48 = v32;
  }

  *(a2 + 16) = v47;
  *(a2 + 24) = v80;
  *(a2 + 40) = v76;
  *(a2 + 44) = v72 | (v74 << 8);
  *(a2 + 48) = v30;
  *(a2 + 56) = v79;
  *(a2 + 60) = v78;
  *(a2 + 64) = v45;
  *(a2 + 72) = v33;
  *(a2 + 80) = v40;
  *(a2 + 88) = *v81;
  *(a2 + 101) = *&v81[13];
  *(a2 + 112) = 0;
  *(a2 + 128) = 0;
  if (v35)
  {
    *(a2 + 112) = v41;
    *(a2 + 120) = v32;
    *(a2 + 128) = 1;
  }

  v30 = 0;
  *(a2 + 136) = 1;
  v32 = v48;
LABEL_72:
  if ((v35 & (v32 != 0)) != 1)
  {
    goto LABEL_75;
  }

  if (*v32 != 1)
  {
    --*v32;
LABEL_75:
    if (!v30)
    {
      goto LABEL_78;
    }

    goto LABEL_76;
  }

LABEL_92:
  result = WTF::JSONImpl::Value::operator delete();
  if (!v30)
  {
    goto LABEL_78;
  }

LABEL_76:
  if (atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v30, v43);
  }

LABEL_78:
  if (v85 == 1)
  {
    result = v84;
    v84 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v43);
      }
    }
  }

  if (v87 == 1)
  {
    result = v86;
    v86 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v43);
      }
    }
  }

  return result;
}

void sub_19D6BD248(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, WTF::StringImpl *a25, char a26, WTF::StringImpl *a27, char a28, uint64_t a29, uint64_t a30, char a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 104) == 1)
  {
    v37 = *(v35 - 112);
    *(v35 - 112) = 0;
    if (v37)
    {
      if (atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v37, a2);
      }
    }
  }

  if (a26 == 1 && a25 && atomic_fetch_add_explicit(a25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a25, a2);
  }

  if (a28 == 1 && a27 && atomic_fetch_add_explicit(a27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a27, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::NetworkProcessCreationParameters,void>::decode@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<WebKit::AuxiliaryProcessCreationParameters>(&v56, a1);
  v4 = IPC::Decoder::decode<WebKit::CacheModel>(a1);
  v5 = IPC::Decoder::decode<BOOL>(a1);
  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v54);
  IPC::Decoder::decode<WTF::String>(a1, &v52);
  IPC::Decoder::decode<WTF::RetainPtr<__CFData const*>>(&v50, a1);
  v6 = IPC::Decoder::decode<BOOL>(a1);
  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v48);
  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v46);
  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v44);
  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v42);
  v7 = IPC::Decoder::decode<BOOL>(a1);
  v8 = IPC::Decoder::decode<BOOL>(a1);
  v9 = IPC::Decoder::decode<BOOL>(a1);
  IPC::Decoder::decode<WTF::Vector<WebKit::WebsiteDataStoreParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v40, a1);
  IPC::Decoder::decode<WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v38, a1);
  IPC::Decoder::decode<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(&v36, a1);
  IPC::Decoder::decode<WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v34);
  v10 = IPC::Decoder::decode<WTF::Markable<double,WTF::MarkableTraits<double>>>(a1);
  if (*a1)
  {
    if ((v58 & 1) == 0 || (v12 = v56, v13 = v57, v56 = 0u, v57 = 0u, v22[0] = v12, v22[1] = v13, (v4 & 0x100) == 0) || (v23 = v4, (v5 & 0x100) == 0) || (v24 = v5, (v55 & 1) == 0) || (v14 = v10, v15 = v11, v10 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v25, v54), (v53 & 1) == 0) || (v16 = v52, v52 = 0, v25[2] = v16, (v51 & 1) == 0) || (v17 = v50, v50 = 0, v25[3] = v17, (v6 & 0x100) == 0) || (v26 = v6, (v49 & 1) == 0) || (v10 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v27, v48), (v47 & 1) == 0) || (v10 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v28, v46), (v45 & 1) == 0) || (v10 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v29, v44), (v43 & 1) == 0) || (v10 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v30, v42), (v7 & 0x100) == 0) || (v30[16] = v7, (v8 & 0x100) == 0) || (v30[17] = v8, (v9 & 0x100) == 0) || (v30[18] = v9, (v41 & 1) == 0) || (v10 = WTF::Vector<WebKit::WebsiteDataStoreParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v31, v40), (v39 & 1) == 0) || (v10 = WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v32, v38), (v37 & 1) == 0) || (v18 = v36, v36 = 0, v32[2] = v18, (v35 & 1) == 0) || (v10 = WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v33, v34), (v15 & 1) == 0))
    {
      __break(1u);
LABEL_50:
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v10, v11);
      goto LABEL_26;
    }

    v33[2] = v14;
    WebKit::NetworkProcessCreationParameters::NetworkProcessCreationParameters(a2, v22);
    a2[216] = 1;
    WebKit::NetworkProcessCreationParameters::~NetworkProcessCreationParameters(v22, v19);
  }

  else
  {
    *a2 = 0;
    a2[216] = 0;
  }

  if (v35 == 1)
  {
    WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v34, v11);
  }

  if (v37 == 1)
  {
    v10 = v36;
    if (v36)
    {
      goto LABEL_50;
    }
  }

LABEL_26:
  if (v39 == 1)
  {
    WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v38, v11);
  }

  if (v41 == 1)
  {
    WTF::Vector<WebKit::WebsiteDataStoreParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v40, v11);
  }

  if (v43 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v42, v11);
  }

  if (v45 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v44, v11);
  }

  if (v47 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v46, v11);
  }

  if (v49 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v48, v11);
  }

  if (v51 == 1 && v50)
  {
    CFRelease(v50);
  }

  if (v53 == 1)
  {
    v20 = v52;
    v52 = 0;
    if (v20)
    {
      if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v11);
      }
    }
  }

  if (v55 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v54, v11);
  }

  return std::optional<WebKit::AuxiliaryProcessCreationParameters>::~optional(&v56, v11);
}

void sub_19D6BD714(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16, CFTypeRef cf, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, char a39, WTF::StringImpl **a40, char a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, char a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, char a59)
{
  WebKit::NetworkProcessCreationParameters::~NetworkProcessCreationParameters(&a9, a2);
  if (a39 == 1)
  {
    WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a37, v61);
  }

  if (a41 == 1 && a40)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a40, v61);
  }

  if (a47 == 1)
  {
    WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a43, v61);
  }

  if (a53 == 1)
  {
    WTF::Vector<WebKit::WebsiteDataStoreParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a49, v61);
  }

  if (a59 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a55, v61);
  }

  if (*(v59 - 240) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v59 - 256, v61);
  }

  if (*(v59 - 216) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v59 - 232, v61);
  }

  if (*(v59 - 192) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v59 - 208, v61);
  }

  if (*(v59 - 176) == 1)
  {
    v62 = *(v59 - 184);
    if (v62)
    {
      CFRelease(v62);
    }
  }

  if (*(v59 - 160) == 1)
  {
    v63 = *(v59 - 168);
    *(v59 - 168) = 0;
    if (v63)
    {
      if (atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v63, v61);
      }
    }
  }

  if (*(v59 - 136) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v59 - 152, v61);
  }

  std::optional<WebKit::AuxiliaryProcessCreationParameters>::~optional(v59 - 128, v61);
  _Unwind_Resume(a1);
}

unint64_t IPC::Decoder::decode<WTF::Vector<WebKit::WebsiteDataStoreParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::VectorArgumentCoder<false,WebKit::WebsiteDataStoreParameters,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 16) & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

void sub_19D6BD9B0(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    WTF::Vector<WebKit::WebsiteDataStoreParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t IPC::Decoder::decode<WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::VectorArgumentCoder<false,std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 16) & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

void sub_19D6BDA0C(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl **IPC::Decoder::decode<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(_BYTE *a1, WTF::StringImpl **this)
{
  result = IPC::ArgumentCoder<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::decode<IPC::Decoder>(this, a1);
  if ((a1[8] & 1) == 0)
  {
    return IPC::Decoder::markInvalid(this);
  }

  return result;
}

void sub_19D6BDA70(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 8) == 1)
  {
    if (*v2)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

unint64_t IPC::Decoder::decode<WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::VectorArgumentCoder<false,WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 16) & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

void sub_19D6BDAD4(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WTF::Markable<double,WTF::MarkableTraits<double>>>(IPC::Decoder *this)
{
  v2 = *(this + 2);
  if (*(this + 1) <= &v2[-*this])
  {
    IPC::Decoder::markInvalid(this);
    goto LABEL_9;
  }

  *(this + 2) = v2 + 1;
  if (!v2)
  {
LABEL_9:
    IPC::Decoder::markInvalid(this);
    goto LABEL_10;
  }

  v3 = *v2;
  if (v3 >= 2)
  {
LABEL_10:
    IPC::Decoder::markInvalid(this);
LABEL_11:
    IPC::Decoder::markInvalid(this);
    return 0;
  }

  if (v3)
  {
    return 0x7FF8000000000000;
  }

  result = IPC::Decoder::decode<unsigned long long>(this);
  if ((v5 & 1) == 0)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::NetworkResourceLoadParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  WebCore::ResourceRequestBase::httpBody(&v15, (a2 + 24));
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(a1, (a2 + 24));
  v4 = v15;
  v14 = v15;
  v15 = 0;
  IPC::ArgumentCoder<IPC::FormDataReference,void>::encode(a1, &v14);
  if (v4)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v4);
  }

  IPC::ArgumentCoder<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,void>::encode<IPC::Encoder,WebCore::SecurityOrigin>(a1, (a2 + 224));
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,void>::encode<IPC::Encoder,WebCore::SecurityOrigin>(a1, (a2 + 232));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 240));
  LOBYTE(v14) = *(a2 + 244);
  IPC::Encoder::operator<<<BOOL>(a1, &v14);
  LOBYTE(v14) = *(a2 + 245);
  IPC::Encoder::operator<<<BOOL>(a1, &v14);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 246));
  LOBYTE(v14) = *(a2 + 247);
  IPC::Encoder::operator<<<BOOL>(a1, &v14);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 248));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 249));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 250));
  if (*(a2 + 3168))
  {
    LOBYTE(v14) = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v14);
    if ((*(a2 + 3168) & 1) == 0)
    {
      goto LABEL_39;
    }

    IPC::ArgumentCoder<WebKit::NavigationActionData,void>::encode(a1, a2 + 256);
  }

  else
  {
    LOBYTE(v14) = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v14);
  }

  LOBYTE(v14) = *(a2 + 3184);
  IPC::Encoder::operator<<<BOOL>(a1, &v14);
  IPC::ArgumentCoder<std::optional<WebKit::NavigatingToAppBoundDomain>,void>::encode<IPC::Encoder,std::optional<WebKit::NavigatingToAppBoundDomain>>(a1, (a2 + 3185));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 3187));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 3188));
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(a2 + 3190));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 3192));
  v5 = *(a2 + 3200);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v5 == 0);
  if (v5)
  {
    v6 = *(a2 + 3200);
    if (!v6)
    {
      result = 158;
      __break(0xC471u);
      return result;
    }

    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v6);
  }

  IPC::VectorArgumentCoder<false,WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 3208);
  IPC::ArgumentCoder<std::optional<WebKit::SandboxExtensionHandle>,void>::encode<IPC::Encoder,std::optional<WebKit::SandboxExtensionHandle>>(a1, a2 + 3224);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 3240));
  IPC::ArgumentCoder<WebCore::FetchOptions,void>::encode(a1, a2 + 3248);
  if (*(a2 + 3320))
  {
    LOBYTE(v14) = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v14);
    if ((*(a2 + 3320) & 1) == 0)
    {
      goto LABEL_39;
    }

    IPC::VectorArgumentCoder<false,std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 3296);
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 3312));
  }

  else
  {
    LOBYTE(v14) = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v14);
  }

  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 3328));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 3368));
  IPC::ArgumentCoder<WebCore::CrossOriginEmbedderPolicy,void>::encode(a1, a2 + 3408);
  IPC::ArgumentCoder<WebCore::CrossOriginEmbedderPolicy,void>::encode(a1, a2 + 3432);
  IPC::VectorArgumentCoder<false,WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul>::encode<IPC::Encoder,WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc> const&>(a1, a2 + 3456);
  IPC::VectorArgumentCoder<false,WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul>::encode<IPC::Encoder,WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc> const&>(a1, a2 + 3472);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 3488));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 3489));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 3490));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 3508));
  v7 = *(a2 + 3508);
  if (v7)
  {
    v12 = *(a2 + 3496);
    v13 = 8 * v7;
    do
    {
      IPC::ArgumentCoder<WebCore::SecurityOrigin,void>::encode(a1, *v12++);
      v13 -= 8;
    }

    while (v13);
  }

  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 3512));
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2 + 3520);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 3536));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 3544));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 3584));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 3585));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 3586));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 3587));
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(a2 + 3588));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 3592));
  IPC::ArgumentCoder<WebCore::CrossOriginOpenerPolicy,void>::encode(a1, a2 + 3632);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2 + 3656);
  if (*(a2 + 3904))
  {
    LOBYTE(v14) = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v14);
    if ((*(a2 + 3904) & 1) == 0)
    {
      goto LABEL_39;
    }

    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 3680));
    IPC::ArgumentCoder<WebCore::SecurityOrigin,void>::encode(a1, *(a2 + 3720));
    IPC::ArgumentCoder<WebCore::SecurityOrigin,void>::encode(a1, *(a2 + 3728));
    IPC::ArgumentCoder<WebCore::PolicyContainer,void>::encode(a1, a2 + 3736);
    IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2 + 3816);
    IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2 + 3832);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 3864));
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 3856));
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 3872));
    IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(a2 + 3888));
  }

  else
  {
    LOBYTE(v14) = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v14);
  }

  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 3920));
  if (*(a2 + 3936))
  {
    LOBYTE(v14) = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v14);
    if ((*(a2 + 3936) & 1) == 0)
    {
      goto LABEL_39;
    }

    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 3928));
  }

  else
  {
    LOBYTE(v14) = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v14);
  }

  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 3944));
  if (*(a2 + 3960))
  {
    LOBYTE(v14) = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v14);
    if ((*(a2 + 3960) & 1) == 0)
    {
      goto LABEL_39;
    }

    IPC::ArgumentCoder<WebKit::CallbackID,void>::encode(a1, (a2 + 3952));
  }

  else
  {
    LOBYTE(v14) = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v14);
  }

  LOBYTE(v14) = *(a2 + 3976);
  v8 = IPC::Encoder::operator<<<BOOL>(a1, &v14);
  v9 = v14;
  v10 = *(a2 + 3976);
  if (v14)
  {
    goto LABEL_40;
  }

  if (*(a2 + 3976))
  {
    mpark::throw_bad_variant_access(v8);
  }

  while (1)
  {
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 3984));
    if ((*(a2 + 4032) & 1) == 0)
    {
      break;
    }

    LOBYTE(v14) = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v14);
    if (*(a2 + 4032))
    {
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 4024));
      goto LABEL_24;
    }

LABEL_39:
    std::__throw_bad_optional_access[abi:sn200100]();
LABEL_40:
    IPC::ArgumentCoder<mpark::variant<std::monostate,WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,mpark::variant<std::monostate,WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,0ul>(a1, *(a2 + 3968), v10, v9);
  }

  LOBYTE(v14) = 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v14);
LABEL_24:
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 4040));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 4041));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 4042));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 4043));
  result = v15;
  v15 = 0;
  if (result)
  {
    return WTF::RefCounted<WebCore::FormData>::deref(result);
  }

  return result;
}

void sub_19D6BE158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::RefCountedBase *a10)
{
  if (a10)
  {
    WTF::RefCounted<WebCore::FormData>::deref(a10);
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebKit::NetworkResourceLoadParameters,void>::decode()
{
  v1 = MEMORY[0x1EEE9AC00]();
  v3 = v2;
  v472 = *MEMORY[0x1E69E9840];
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v1);
  v6 = v5;
  v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v1);
  v9 = v8;
  v10 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v1);
  v12 = v11;
  IPC::Decoder::decode<WebCore::ResourceRequest>(v1, v318);
  if (v324 == 1)
  {
    IPC::ArgumentCoder<IPC::FormDataReference,void>::decode(v1, &v348);
    if (BYTE8(v348))
    {
      if ((v324 & 1) == 0)
      {
        goto LABEL_408;
      }

      v446[0] = v348;
      WebCore::ResourceRequestBase::setHTTPBody();
      v13 = v446[0];
      v446[0] = 0;
      if (v13)
      {
        WTF::RefCounted<WebCore::FormData>::deref(v13);
      }
    }

    else
    {
      IPC::Decoder::markInvalid(v1);
    }
  }

  IPC::Decoder::decode<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>(&v316, v1);
  IPC::Decoder::decode<WTF::RefPtr<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>(&v314, v1);
  v264 = IPC::Decoder::decode<float>(v1);
  v14 = *(v1 + 1);
  v15 = *(v1 + 2);
  v16 = *v1;
  if (v14 <= &v15[-*v1])
  {
    IPC::Decoder::markInvalid(v1);
    goto LABEL_449;
  }

  v17 = v15 + 1;
  *(v1 + 2) = v15 + 1;
  if (!v15)
  {
LABEL_449:
    IPC::Decoder::markInvalid(v1);
    goto LABEL_450;
  }

  v18 = *v15;
  if (v18 < 2)
  {
    v263 = 0;
    goto LABEL_10;
  }

LABEL_450:
  IPC::Decoder::markInvalid(v1);
  IPC::Decoder::markInvalid(v1);
  LOBYTE(v18) = 0;
  v14 = *(v1 + 1);
  v17 = *(v1 + 2);
  v263 = 1;
  v16 = *v1;
LABEL_10:
  if (v14 <= &v17[-v16])
  {
    IPC::Decoder::markInvalid(v1);
    goto LABEL_452;
  }

  *(v1 + 2) = v17 + 1;
  if (!v17)
  {
LABEL_452:
    IPC::Decoder::markInvalid(v1);
    goto LABEL_453;
  }

  v260 = *v17;
  if (v260 < 2)
  {
    v262 = 0;
    goto LABEL_14;
  }

LABEL_453:
  IPC::Decoder::markInvalid(v1);
  IPC::Decoder::markInvalid(v1);
  LOBYTE(v260) = 0;
  v262 = 1;
LABEL_14:
  v259 = IPC::Decoder::decode<WebCore::StoredCredentialsPolicy>(v1);
  v19 = *(v1 + 1);
  v20 = *(v1 + 2);
  v21 = *v1;
  v266 = v7;
  v267 = v9;
  v268 = v6;
  if (v19 <= &v20[-*v1])
  {
    IPC::Decoder::markInvalid(v1);
    goto LABEL_455;
  }

  v22 = v20 + 1;
  *(v1 + 2) = v20 + 1;
  if (!v20)
  {
LABEL_455:
    IPC::Decoder::markInvalid(v1);
    goto LABEL_456;
  }

  v257 = *v20;
  if (v257 < 2)
  {
    v258 = 0;
    goto LABEL_18;
  }

LABEL_456:
  IPC::Decoder::markInvalid(v1);
  IPC::Decoder::markInvalid(v1);
  LOBYTE(v257) = 0;
  v19 = *(v1 + 1);
  v22 = *(v1 + 2);
  v258 = 1;
  v21 = *v1;
LABEL_18:
  v265 = v12;
  v261 = v18;
  if (v19 <= &v22[-v21])
  {
    IPC::Decoder::markInvalid(v1);
    goto LABEL_458;
  }

  v23 = v22 + 1;
  *(v1 + 2) = v22 + 1;
  if (!v22)
  {
LABEL_458:
    IPC::Decoder::markInvalid(v1);
    v24 = 0;
    goto LABEL_459;
  }

  v24 = *v22;
  if (v24 < 2)
  {
    v25 = 1;
    goto LABEL_22;
  }

LABEL_459:
  IPC::Decoder::markInvalid(v1);
  v25 = 0;
  v19 = *(v1 + 1);
  v23 = *(v1 + 2);
  v21 = *v1;
LABEL_22:
  v256 = v25;
  if (!v24)
  {
    v25 = 0;
  }

  v255 = v25;
  if (v19 <= &v23[-v21])
  {
    IPC::Decoder::markInvalid(v1);
    goto LABEL_461;
  }

  v26 = v23 + 1;
  *(v1 + 2) = v23 + 1;
  if (!v23)
  {
LABEL_461:
    IPC::Decoder::markInvalid(v1);
    v27 = 0;
    goto LABEL_462;
  }

  v27 = *v23;
  if (v27 < 2)
  {
    v28 = 1;
    goto LABEL_28;
  }

LABEL_462:
  IPC::Decoder::markInvalid(v1);
  v28 = 0;
  v19 = *(v1 + 1);
  v26 = *(v1 + 2);
  v21 = *v1;
LABEL_28:
  v254 = v28;
  if (!v27)
  {
    v28 = 0;
  }

  v253 = v28;
  if (v19 <= &v26[-v21])
  {
    IPC::Decoder::markInvalid(v1);
    goto LABEL_464;
  }

  v29 = v26 + 1;
  *(v1 + 2) = v26 + 1;
  if (!v26)
  {
LABEL_464:
    IPC::Decoder::markInvalid(v1);
    v30 = 0;
    goto LABEL_465;
  }

  v30 = *v26;
  if (v30 < 2)
  {
    v31 = 1;
    goto LABEL_34;
  }

LABEL_465:
  IPC::Decoder::markInvalid(v1);
  v31 = 0;
  v19 = *(v1 + 1);
  v29 = *(v1 + 2);
  v21 = *v1;
LABEL_34:
  v0 = v441;
  if (v30)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  v252 = v32;
  if (v19 <= &v29[-v21])
  {
    IPC::Decoder::markInvalid(v1);
    goto LABEL_467;
  }

  *(v1 + 2) = v29 + 1;
  if (!v29)
  {
LABEL_467:
    IPC::Decoder::markInvalid(v1);
    goto LABEL_468;
  }

  if (*v29 >= 2u)
  {
LABEL_468:
    IPC::Decoder::markInvalid(v1);
    goto LABEL_434;
  }

  if (!*v29)
  {
    LOBYTE(v348) = 0;
    v367 = 0;
    std::__optional_move_base<WebKit::NavigationActionData,false>::__optional_move_base[abi:sn200100](v446, &v348);
    v448 = 1;
    if (v367 != 1)
    {
      goto LABEL_42;
    }

LABEL_348:
    WebKit::NavigationActionData::~NavigationActionData(&v348, v33);
    goto LABEL_42;
  }

  IPC::ArgumentCoder<WebKit::NavigationActionData,void>::decode();
  if (v367 & 1) != 0 || (IPC::Decoder::markInvalid(v1), (v367))
  {
    WebKit::NavigationActionData::NavigationActionData(v446, &v348);
    v447 = 1;
    v448 = 1;
    if ((v367 & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_348;
  }

LABEL_434:
  LOBYTE(v446[0]) = 0;
  v448 = 0;
LABEL_42:
  if ((v448 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v1);
  }

  v34 = *(v1 + 2);
  if (*(v1 + 1) <= &v34[-*v1])
  {
    IPC::Decoder::markInvalid(v1);
    goto LABEL_470;
  }

  *(v1 + 2) = v34 + 1;
  if (!v34)
  {
LABEL_470:
    IPC::Decoder::markInvalid(v1);
    goto LABEL_471;
  }

  v250 = *v34;
  if (v250 < 2)
  {
    v251 = 0;
    goto LABEL_48;
  }

LABEL_471:
  IPC::Decoder::markInvalid(v1);
  IPC::Decoder::markInvalid(v1);
  LOBYTE(v250) = 0;
  v251 = 1;
LABEL_48:
  v249 = IPC::Decoder::decode<std::optional<WebKit::NavigatingToAppBoundDomain>>(v1);
  v35 = *(v1 + 1);
  v36 = *(v1 + 2);
  v37 = *v1;
  if (v35 <= &v36[-*v1])
  {
    IPC::Decoder::markInvalid(v1);
    goto LABEL_473;
  }

  v38 = v36 + 1;
  *(v1 + 2) = v36 + 1;
  if (!v36)
  {
LABEL_473:
    IPC::Decoder::markInvalid(v1);
    v39 = 0;
    goto LABEL_474;
  }

  v39 = *v36;
  if (v39 < 2)
  {
    v40 = 1;
    goto LABEL_52;
  }

LABEL_474:
  v0 = v441;
  IPC::Decoder::markInvalid(v1);
  v40 = 0;
  v35 = *(v1 + 1);
  v38 = *(v1 + 2);
  v37 = *v1;
LABEL_52:
  v248 = v40;
  if (!v39)
  {
    v40 = 0;
  }

  v247 = v40;
  if (v35 <= &v38[-v37])
  {
    IPC::Decoder::markInvalid(v1);
    goto LABEL_476;
  }

  *(v1 + 2) = v38 + 1;
  if (!v38)
  {
LABEL_476:
    IPC::Decoder::markInvalid(v1);
    v41 = 0;
    goto LABEL_477;
  }

  v41 = *v38;
  if (v41 < 2)
  {
    v42 = 1;
    goto LABEL_58;
  }

LABEL_477:
  v0 = v441;
  IPC::Decoder::markInvalid(v1);
  v42 = 0;
LABEL_58:
  v246 = v42;
  if (!v41)
  {
    v42 = 0;
  }

  v245 = v42;
  v244 = IPC::Decoder::decode<WTF::OptionSet<WebCore::AdvancedPrivacyProtections>>(v1);
  v44 = *(v1 + 1);
  v45 = ((*(v1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v46 = *v1;
  v47 = v45 - *v1;
  v48 = v44 >= v47;
  v49 = v44 - v47;
  if (v48 && v49 > 7)
  {
    v50 = v45 + 1;
    *(v1 + 2) = v45 + 1;
    if (v45)
    {
      v242 = *v45;
      v243 = 1;
      goto LABEL_65;
    }
  }

  else
  {
    IPC::Decoder::markInvalid(v1);
  }

  IPC::Decoder::markInvalid(v1);
  v243 = 0;
  v242 = 0;
  v44 = *(v1 + 1);
  v50 = *(v1 + 2);
  v46 = *v1;
LABEL_65:
  if (v44 <= &v50[-v46])
  {
    IPC::Decoder::markInvalid(v1);
    goto LABEL_479;
  }

  *(v1 + 2) = v50 + 1;
  if (!v50)
  {
LABEL_479:
    IPC::Decoder::markInvalid(v1);
    goto LABEL_480;
  }

  if (*v50 >= 2u)
  {
LABEL_480:
    IPC::Decoder::markInvalid(v1);
    goto LABEL_481;
  }

  if (*v50)
  {
    v52 = 0;
    goto LABEL_71;
  }

  v51 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v1);
  if (v43)
  {
    v52 = v51;
LABEL_71:
    v241 = 1;
    goto LABEL_72;
  }

LABEL_481:
  IPC::Decoder::markInvalid(v1);
  v52 = 0;
  v241 = 0;
LABEL_72:
  IPC::Decoder::decode<WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v1, v43, &v311);
  IPC::Decoder::decode<std::optional<WebKit::SandboxExtensionHandle>>(&v308, v1);
  v238 = IPC::Decoder::decode<WTF::Seconds>(v1);
  v239 = v53;
  IPC::Decoder::decode<WebCore::FetchOptions>(v441, v1);
  v54 = *(v1 + 2);
  if (*(v1 + 1) <= &v54[-*v1])
  {
    IPC::Decoder::markInvalid(v1);
    goto LABEL_483;
  }

  *(v1 + 2) = v54 + 1;
  if (!v54)
  {
LABEL_483:
    IPC::Decoder::markInvalid(v1);
    goto LABEL_484;
  }

  v55 = *v54;
  if (v55 >= 2)
  {
LABEL_484:
    IPC::Decoder::markInvalid(v1);
    goto LABEL_485;
  }

  if (!v55)
  {
    LOBYTE(v348) = 0;
    v350[0] = 0;
    std::__optional_move_base<WebCore::ContentSecurityPolicyResponseHeaders,false>::__optional_move_base[abi:sn200100](v306, &v348);
    v307 = 1;
    if (v350[0] != 1)
    {
      goto LABEL_81;
    }

LABEL_80:
    WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v348, v56);
    goto LABEL_81;
  }

  IPC::Decoder::decode<WebCore::ContentSecurityPolicyResponseHeaders>(&v348, v1);
  if (v350[0] == 1)
  {
    std::optional<WebCore::ContentSecurityPolicyResponseHeaders>::optional[abi:sn200100]<WebCore::ContentSecurityPolicyResponseHeaders,0>(v306, &v348);
    v307 = 1;
    if ((v350[0] & 1) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

LABEL_485:
  v306[0] = 0;
  v307 = 0;
LABEL_81:
  if ((v307 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v1);
  }

  IPC::Decoder::decode<WTF::URL>(v1, &v302);
  IPC::Decoder::decode<WTF::URL>(v1, &v298);
  IPC::Decoder::decode<WebCore::CrossOriginEmbedderPolicy>(&v295, v1);
  IPC::Decoder::decode<WebCore::CrossOriginEmbedderPolicy>(&v292, v1);
  IPC::Decoder::decode<WebCore::HTTPHeaderMap>(&v289, v1);
  v58 = *(v1 + 1);
  v59 = *(v1 + 2);
  v60 = *v1;
  v240 = v52;
  if (v58 <= &v59[-*v1])
  {
    IPC::Decoder::markInvalid(v1);
    goto LABEL_487;
  }

  v61 = v59 + 1;
  *(v1 + 2) = v59 + 1;
  if (!v59)
  {
LABEL_487:
    IPC::Decoder::markInvalid(v1);
    v62 = 0;
    goto LABEL_488;
  }

  v62 = *v59;
  if (v62 < 2)
  {
    v63 = 1;
    goto LABEL_87;
  }

LABEL_488:
  v0 = v441;
  IPC::Decoder::markInvalid(v1);
  v63 = 0;
  v58 = *(v1 + 1);
  v61 = *(v1 + 2);
  v60 = *v1;
LABEL_87:
  if (v62)
  {
    v64 = v63;
  }

  else
  {
    v64 = 0;
  }

  v234 = v64;
  if (v58 <= &v61[-v60])
  {
    IPC::Decoder::markInvalid(v1);
    goto LABEL_490;
  }

  v65 = v61 + 1;
  *(v1 + 2) = v61 + 1;
  if (!v61)
  {
LABEL_490:
    IPC::Decoder::markInvalid(v1);
    goto LABEL_491;
  }

  v66 = *v61;
  if (v66 < 3)
  {
    v233 = 0;
    goto LABEL_94;
  }

LABEL_491:
  IPC::Decoder::markInvalid(v1);
  LOBYTE(v66) = 0;
  v58 = *(v1 + 1);
  v65 = *(v1 + 2);
  v233 = 1;
  v60 = *v1;
LABEL_94:
  v232 = v66;
  v235 = v63;
  if (v58 <= &v65[-v60])
  {
    IPC::Decoder::markInvalid(v1);
    goto LABEL_493;
  }

  v67 = v65 + 1;
  *(v1 + 2) = v65 + 1;
  if (!v65)
  {
LABEL_493:
    IPC::Decoder::markInvalid(v1);
    v68 = 0;
    goto LABEL_494;
  }

  v68 = *v65;
  if (v68 < 2)
  {
    v69 = 1;
    goto LABEL_98;
  }

LABEL_494:
  v0 = v441;
  IPC::Decoder::markInvalid(v1);
  v69 = 0;
  v58 = *(v1 + 1);
  v67 = *(v1 + 2);
  v60 = *v1;
LABEL_98:
  v231 = v69;
  if (!v68)
  {
    v69 = 0;
  }

  v230 = v69;
  v70 = ((v67 + 7) & 0xFFFFFFFFFFFFFFF8);
  v71 = v70 - v60;
  v48 = v58 >= v71;
  v72 = v58 - v71;
  if (!v48 || v72 <= 7)
  {
    IPC::Decoder::markInvalid(v1);
LABEL_447:
    IPC::Decoder::markInvalid(v1);
    LOBYTE(v286) = 0;
    v288 = 0;
LABEL_443:
    IPC::Decoder::markInvalid(v1);
    goto LABEL_107;
  }

  *(v1 + 2) = v70 + 1;
  if (!v70)
  {
    goto LABEL_447;
  }

  v73 = *v70;
  v348 = 0uLL;
  if (v73 < 0x20000)
  {
    if (!v73)
    {
      goto LABEL_106;
    }

    v189 = WTF::fastMalloc((8 * v73));
    DWORD2(v348) = v73;
    *&v348 = v189;
    while (1)
    {
      IPC::ArgumentCoder<WebCore::SecurityOrigin,void>::decode(&v437, v1);
      if ((v438 & 1) == 0)
      {
        IPC::Decoder::markInvalid(v1);
        if ((v438 & 1) == 0)
        {
          goto LABEL_442;
        }
      }

      v190 = HIDWORD(v348);
      if (HIDWORD(v348) != DWORD2(v348))
      {
        break;
      }

      WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>(&v348, &v437);
      if (v438)
      {
        goto LABEL_392;
      }

LABEL_394:
      if (!--v73)
      {
        goto LABEL_106;
      }
    }

    v191 = v437;
    v437 = 0;
    *(v348 + 8 * HIDWORD(v348)) = v191;
    HIDWORD(v348) = v190 + 1;
LABEL_392:
    v192 = v437;
    v437 = 0;
    if (v192)
    {
      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v192, v57);
    }

    goto LABEL_394;
  }

  do
  {
    IPC::Decoder::decode<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>(&v437, v1);
    if ((v438 & 1) == 0)
    {
LABEL_442:
      LOBYTE(v286) = 0;
      v288 = 0;
      WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v348, v57);
      goto LABEL_443;
    }

    v200 = HIDWORD(v348);
    if (HIDWORD(v348) == DWORD2(v348))
    {
      WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>>(&v348, &v437);
      v0 = v441;
      if ((v438 & 1) == 0)
      {
        goto LABEL_549;
      }
    }

    else
    {
      v201 = v437;
      v437 = 0;
      *(v348 + 8 * HIDWORD(v348)) = v201;
      HIDWORD(v348) = v200 + 1;
    }

    v202 = v437;
    v437 = 0;
    if (v202)
    {
      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v202, v57);
    }

LABEL_549:
    --v73;
  }

  while (v73);
  WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v348, HIDWORD(v348));
LABEL_106:
  v74 = *(&v348 + 1);
  v286 = v348;
  v348 = 0uLL;
  v287 = v74;
  v288 = 1;
  WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v348, v57);
LABEL_107:
  v75 = *(v1 + 2);
  v220 = v3;
  if (*(v1 + 1) <= &v75[-*v1])
  {
    IPC::Decoder::markInvalid(v1);
    goto LABEL_496;
  }

  *(v1 + 2) = v75 + 1;
  if (!v75)
  {
LABEL_496:
    IPC::Decoder::markInvalid(v1);
    v76 = 0;
    goto LABEL_497;
  }

  v76 = *v75;
  if (v76 < 2)
  {
    v77 = 1;
    goto LABEL_111;
  }

LABEL_497:
  v0 = v441;
  IPC::Decoder::markInvalid(v1);
  v77 = 0;
LABEL_111:
  if (v76)
  {
    v78 = v77;
  }

  else
  {
    v78 = 0;
  }

  v229 = v78;
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v1, &v283);
  if ((v285 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v1);
  }

  v79 = *(v1 + 2);
  if (*(v1 + 1) <= &v79[-*v1])
  {
    IPC::Decoder::markInvalid(v1);
    goto LABEL_499;
  }

  *(v1 + 2) = v79 + 1;
  if (!v79)
  {
LABEL_499:
    IPC::Decoder::markInvalid(v1);
    v80 = 0;
    goto LABEL_500;
  }

  v80 = *v79;
  if (v80 < 2)
  {
    v81 = 1;
    goto LABEL_120;
  }

LABEL_500:
  v0 = v441;
  IPC::Decoder::markInvalid(v1);
  v81 = 0;
LABEL_120:
  v228 = v81;
  if (!v80)
  {
    v81 = 0;
  }

  v227 = v81;
  IPC::Decoder::decode<WTF::URL>(v1, &v279);
  v82 = *(v1 + 1);
  v83 = *(v1 + 2);
  v84 = *v1;
  if (v82 <= &v83[-*v1])
  {
    IPC::Decoder::markInvalid(v1);
    goto LABEL_502;
  }

  v85 = v83 + 1;
  *(v1 + 2) = v83 + 1;
  if (!v83)
  {
LABEL_502:
    IPC::Decoder::markInvalid(v1);
    v86 = 0;
    goto LABEL_503;
  }

  v86 = *v83;
  if (v86 < 2)
  {
    v87 = 1;
    goto LABEL_126;
  }

LABEL_503:
  v0 = v441;
  IPC::Decoder::markInvalid(v1);
  v87 = 0;
  v82 = *(v1 + 1);
  v85 = *(v1 + 2);
  v84 = *v1;
LABEL_126:
  v237 = v87;
  if (!v86)
  {
    v87 = 0;
  }

  v226 = v87;
  if (v82 <= &v85[-v84])
  {
    IPC::Decoder::markInvalid(v1);
    goto LABEL_505;
  }

  v88 = v85 + 1;
  *(v1 + 2) = v85 + 1;
  if (!v85)
  {
LABEL_505:
    IPC::Decoder::markInvalid(v1);
    v89 = 0;
    goto LABEL_506;
  }

  v89 = *v85;
  if (v89 < 2)
  {
    v90 = 1;
    goto LABEL_132;
  }

LABEL_506:
  v0 = v441;
  IPC::Decoder::markInvalid(v1);
  v90 = 0;
  v82 = *(v1 + 1);
  v88 = *(v1 + 2);
  v84 = *v1;
LABEL_132:
  v225 = v90;
  if (!v89)
  {
    v90 = 0;
  }

  v224 = v90;
  if (v82 <= &v88[-v84])
  {
    IPC::Decoder::markInvalid(v1);
    goto LABEL_508;
  }

  v91 = v88 + 1;
  *(v1 + 2) = v88 + 1;
  if (!v88)
  {
LABEL_508:
    IPC::Decoder::markInvalid(v1);
    v92 = 0;
    goto LABEL_509;
  }

  v92 = *v88;
  if (v92 < 2)
  {
    v93 = 1;
    goto LABEL_138;
  }

LABEL_509:
  v0 = v441;
  IPC::Decoder::markInvalid(v1);
  v93 = 0;
  v82 = *(v1 + 1);
  v91 = *(v1 + 2);
  v84 = *v1;
LABEL_138:
  v236 = v93;
  if (!v92)
  {
    v93 = 0;
  }

  v223 = v93;
  if (v82 <= &v91[-v84])
  {
    IPC::Decoder::markInvalid(v1);
    goto LABEL_511;
  }

  *(v1 + 2) = v91 + 1;
  if (!v91)
  {
LABEL_511:
    IPC::Decoder::markInvalid(v1);
    v94 = 0;
    goto LABEL_512;
  }

  v94 = *v91;
  if (v94 < 2)
  {
    v95 = 1;
    goto LABEL_144;
  }

LABEL_512:
  v0 = v441;
  IPC::Decoder::markInvalid(v1);
  v95 = 0;
LABEL_144:
  if (v94)
  {
    v96 = v95;
  }

  else
  {
    v96 = 0;
  }

  v222 = v96;
  v221 = IPC::Decoder::decode<WTF::OptionSet<WebCore::SandboxFlag>>(v1);
  IPC::Decoder::decode<WTF::URL>(v1, &v275);
  IPC::Decoder::decode<WebCore::CrossOriginOpenerPolicy>(&v272, v1);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v1, &v269);
  if ((v271 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v1);
  }

  v97 = *(v1 + 2);
  if (*(v1 + 1) <= &v97[-*v1])
  {
    IPC::Decoder::markInvalid(v1);
    goto LABEL_514;
  }

  *(v1 + 2) = v97 + 1;
  if (!v97)
  {
LABEL_514:
    IPC::Decoder::markInvalid(v1);
    goto LABEL_515;
  }

  v98 = *v97;
  if (v98 >= 2)
  {
LABEL_515:
    IPC::Decoder::markInvalid(v1);
    LOBYTE(v437) = 0;
    v440 = 0;
    goto LABEL_155;
  }

  if (!v98)
  {
    LOBYTE(v348) = 0;
    LOBYTE(v356) = 0;
    std::__optional_move_base<WebCore::NavigationRequester,false>::__optional_move_base[abi:sn200100](&v437, &v348);
    v100 = 1;
    goto LABEL_154;
  }

  IPC::Decoder::decode<WTF::URL>(v1, v345);
  IPC::ArgumentCoder<WebCore::SecurityOrigin,void>::decode(&v343, v1);
  v168 = v344;
  if ((v344 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v1);
  }

  IPC::ArgumentCoder<WebCore::SecurityOrigin,void>::decode(&v341, v1);
  v169 = v342;
  if ((v342 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v1);
  }

  IPC::Decoder::decode<WebCore::PolicyContainer>(v1, &v331);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v1, &v328);
  if ((v330 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v1);
  }

  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v1, &v325);
  if ((v327 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v1);
  }

  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::decode(v1, &v469);
  v170 = v471;
  if ((v471 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v1);
  }

  v171 = IPC::Decoder::decode<WTF::OptionSet<WebCore::SandboxFlag>>(v1);
  if (*v1)
  {
    if (v347)
    {
      v173 = *v345;
      *v345 = 0;
      v449 = v173;
      v450 = *&v345[8];
      v451 = v346;
      *&v345[8] &= ~1u;
      if (v168)
      {
        v174 = v343;
        v343 = 0;
        v452 = v174;
        if (v169)
        {
          v175 = v341;
          v341 = 0;
          v453 = v175;
          if (v340)
          {
            v176 = v331;
            v331 = 0;
            v454[0] = v176;
            v177 = v332;
            v332 = 0;
            v454[1] = v177;
            v455 = v333;
            v456 = v334;
            v457 = v335;
            v178 = v336;
            v336 = 0u;
            v458 = v178;
            v459 = v337;
            v179 = v338;
            v338 = 0u;
            *v460 = v179;
            v461 = v339;
            if (v330)
            {
              v462 = v328;
              v463 = v329;
              if (v327)
              {
                v464 = v325;
                v465 = v326;
                if (v170)
                {
                  v466 = v469;
                  v467 = v470;
                  if ((v171 & 0x10000) != 0)
                  {
                    v468 = v171;
                    WebCore::NavigationRequester::NavigationRequester(&v348, &v449);
                    LOBYTE(v356) = 1;
                    v181 = v460[1];
                    v460[1] = 0;
                    if (v181 && atomic_fetch_add_explicit(v181, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v181, v180);
                    }

                    v182 = v460[0];
                    v460[0] = 0;
                    if (v182 && atomic_fetch_add_explicit(v182, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v182, v180);
                    }

                    v183 = *(&v458 + 1);
                    *(&v458 + 1) = 0;
                    if (v183 && atomic_fetch_add_explicit(v183, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v183, v180);
                    }

                    v184 = v458;
                    *&v458 = 0;
                    if (v184 && atomic_fetch_add_explicit(v184, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v184, v180);
                    }

                    WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v454, v180);
                    v185 = v453;
                    v453 = 0;
                    if (v185)
                    {
                      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v185, v172);
                    }

                    v186 = v452;
                    v452 = 0;
                    if (v186)
                    {
                      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v186, v172);
                    }

                    v187 = v449;
                    v449 = 0;
                    if (v187 && atomic_fetch_add_explicit(v187, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v187, v172);
                    }

                    goto LABEL_377;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_408:
    __break(1u);
    goto LABEL_409;
  }

  LOBYTE(v348) = 0;
  LOBYTE(v356) = 0;
LABEL_377:
  if (v340 == 1)
  {
    v193 = *(&v338 + 1);
    *(&v338 + 1) = 0;
    if (v193 && atomic_fetch_add_explicit(v193, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v193, v172);
    }

    v194 = v338;
    *&v338 = 0;
    if (v194 && atomic_fetch_add_explicit(v194, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v194, v172);
    }

    v195 = *(&v336 + 1);
    *(&v336 + 1) = 0;
    if (v195 && atomic_fetch_add_explicit(v195, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v195, v172);
    }

    v196 = v336;
    *&v336 = 0;
    if (v196 && atomic_fetch_add_explicit(v196, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v196, v172);
    }

    WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v331, v172);
  }

  if (v169 && v341)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v341, v172);
  }

  if (v168 && v343)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v343, v172);
  }

  if (v347 == 1)
  {
    v188 = *v345;
    *v345 = 0;
    if (v188)
    {
      if (atomic_fetch_add_explicit(v188, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v188, v172);
      }
    }
  }

  if (v356 & 1) != 0 || (IPC::Decoder::markInvalid(v1), (v356))
  {
    WebCore::NavigationRequester::NavigationRequester(&v437, &v348);
    v100 = 1;
    v439 = 1;
  }

  else
  {
    v100 = 0;
    LOBYTE(v437) = 0;
  }

LABEL_154:
  v440 = v100;
  std::optional<WebCore::NavigationRequester>::~optional(&v348, v99);
LABEL_155:
  if ((v440 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v1);
  }

  v101 = *(v1 + 2);
  if (*(v1 + 1) <= &v101[-*v1])
  {
    IPC::Decoder::markInvalid(v1);
    goto LABEL_517;
  }

  *(v1 + 2) = v101 + 1;
  if (!v101)
  {
LABEL_517:
    IPC::Decoder::markInvalid(v1);
    goto LABEL_518;
  }

  v102 = *v101;
  if (v102 < 3)
  {
    v103 = 0;
    goto LABEL_161;
  }

LABEL_518:
  IPC::Decoder::markInvalid(v1);
  LOBYTE(v102) = 0;
  v103 = 1;
LABEL_161:
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerRegistrationIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v1, &v331);
  if ((v333 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v1);
  }

  v104 = *(v1 + 1);
  v105 = *(v1 + 2);
  v106 = *v1;
  if (v104 <= &v105[-*v1])
  {
    IPC::Decoder::markInvalid(v1);
    goto LABEL_520;
  }

  v107 = (v105 + 1);
  *(v1 + 2) = v105 + 1;
  if (!v105)
  {
LABEL_520:
    IPC::Decoder::markInvalid(v1);
    goto LABEL_521;
  }

  v108 = *v105;
  if ((v108 & 0x80000000) == 0)
  {
    v217 = v108 | 0x100;
    goto LABEL_167;
  }

LABEL_521:
  IPC::Decoder::markInvalid(v1);
  v217 = 0;
  v104 = *(v1 + 1);
  v107 = *(v1 + 2);
  v106 = *v1;
LABEL_167:
  if (v104 <= &v107[-v106])
  {
    IPC::Decoder::markInvalid(v1);
    goto LABEL_523;
  }

  *(v1 + 2) = v107 + 1;
  if (!v107)
  {
LABEL_523:
    IPC::Decoder::markInvalid(v1);
    goto LABEL_524;
  }

  v109 = *v107;
  if (v109 >= 2)
  {
LABEL_524:
    IPC::Decoder::markInvalid(v1);
    goto LABEL_525;
  }

  if (!v109)
  {
    v110 = 0;
    v215 = 0;
    v212 = 0;
    v216 = 1;
    goto LABEL_172;
  }

  v198 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v1);
  if (v199)
  {
    v110 = v198 & 0xFFFFFFFFFFFFFF00;
    v215 = v198;
    v216 = 1;
    v212 = 1;
    goto LABEL_172;
  }

LABEL_525:
  IPC::Decoder::markInvalid(v1);
  v216 = 0;
  v110 = 0;
  v215 = 0;
LABEL_172:
  v111 = *(v1 + 2);
  v112 = *v1;
  if (*(v1 + 1) <= &v111[-*v1])
  {
    IPC::Decoder::markInvalid(v1);
    goto LABEL_430;
  }

  *(v1 + 2) = v111 + 1;
  if (!v111)
  {
    goto LABEL_430;
  }

  v113 = *v111;
  if (v113 >= 3)
  {
LABEL_431:
    v345[0] = 0;
    v345[16] = 0;
  }

  else
  {
    if (!*v111)
    {
      if (v112)
      {
        v345[8] = 0;
        v214 = 1;
        v345[16] = 1;
        goto LABEL_178;
      }

LABEL_430:
      IPC::Decoder::markInvalid(v1);
      goto LABEL_431;
    }

    IPC::ArgumentCoder<mpark::variant<std::monostate,WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder,0ul>(v345, v1, v113);
    if (v345[16])
    {
      v214 = 1;
      goto LABEL_178;
    }
  }

  IPC::Decoder::markInvalid(v1);
  v214 = 0;
LABEL_178:
  IPC::Decoder::decode<WTF::URL>(v1, &v449);
  v115 = *(v1 + 2);
  if (*(v1 + 1) <= &v115[-*v1])
  {
    IPC::Decoder::markInvalid(v1);
    goto LABEL_529;
  }

  *(v1 + 2) = v115 + 1;
  if (!v115)
  {
LABEL_529:
    IPC::Decoder::markInvalid(v1);
    goto LABEL_530;
  }

  v116 = *v115;
  if (v116 >= 2)
  {
LABEL_530:
    IPC::Decoder::markInvalid(v1);
    goto LABEL_531;
  }

  if (v116)
  {
    v117 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v1);
    if (v114)
    {
      v209 = v117 & 0xFFFFFFFFFFFFFF00;
      v210 = v117;
      v211 = 1;
      v205 = 1;
      goto LABEL_184;
    }

LABEL_531:
    IPC::Decoder::markInvalid(v1);
    v211 = 0;
    v209 = 0;
    v210 = 0;
  }

  else
  {
    v205 = 0;
    v209 = 0;
    v210 = 0;
    v211 = 1;
  }

LABEL_184:
  v118 = *(v1 + 1);
  v119 = *(v1 + 2);
  v120 = *v1;
  v218 = v102;
  v219 = v103;
  v213 = v110;
  if (v118 <= &v119[-*v1])
  {
    IPC::Decoder::markInvalid(v1);
    goto LABEL_533;
  }

  v121 = v119 + 1;
  *(v1 + 2) = v119 + 1;
  if (!v119)
  {
LABEL_533:
    IPC::Decoder::markInvalid(v1);
    v122 = 0;
    goto LABEL_534;
  }

  v122 = *v119;
  if (v122 < 2)
  {
    v123 = 1;
    goto LABEL_188;
  }

LABEL_534:
  v0 = v441;
  IPC::Decoder::markInvalid(v1);
  v123 = 0;
  v118 = *(v1 + 1);
  v121 = *(v1 + 2);
  v120 = *v1;
LABEL_188:
  v208 = v123;
  if (!v122)
  {
    v123 = 0;
  }

  v207 = v123;
  if (v118 <= &v121[-v120])
  {
    IPC::Decoder::markInvalid(v1);
    goto LABEL_536;
  }

  v124 = v121 + 1;
  *(v1 + 2) = v121 + 1;
  if (!v121)
  {
LABEL_536:
    IPC::Decoder::markInvalid(v1);
    v125 = 0;
    goto LABEL_537;
  }

  v125 = *v121;
  if (v125 < 2)
  {
    v126 = 1;
    goto LABEL_194;
  }

LABEL_537:
  v0 = v441;
  IPC::Decoder::markInvalid(v1);
  v126 = 0;
  v118 = *(v1 + 1);
  v124 = *(v1 + 2);
  v120 = *v1;
LABEL_194:
  v206 = v126;
  if (!v125)
  {
    v126 = 0;
  }

  v204 = v126;
  if (v118 <= &v124[-v120])
  {
    IPC::Decoder::markInvalid(v1);
    goto LABEL_539;
  }

  v127 = v124 + 1;
  *(v1 + 2) = v124 + 1;
  if (!v124)
  {
LABEL_539:
    IPC::Decoder::markInvalid(v1);
    v128 = v10;
    v129 = 0;
    goto LABEL_540;
  }

  v128 = v10;
  v129 = *v124;
  if (v129 < 2)
  {
    v130 = 1;
    goto LABEL_200;
  }

LABEL_540:
  v0 = v441;
  IPC::Decoder::markInvalid(v1);
  v130 = 0;
  v118 = *(v1 + 1);
  v127 = *(v1 + 2);
  v120 = *v1;
LABEL_200:
  if (v129)
  {
    v131 = v130;
  }

  else
  {
    v131 = 0;
  }

  v203 = v131;
  if (v118 <= &v127[-v120])
  {
    IPC::Decoder::markInvalid(v1);
    goto LABEL_542;
  }

  *(v1 + 2) = v127 + 1;
  if (!v127)
  {
LABEL_542:
    IPC::Decoder::markInvalid(v1);
    v132 = 0;
    goto LABEL_543;
  }

  v132 = *v127;
  if (v132 < 2)
  {
    v133 = 1;
    goto LABEL_207;
  }

LABEL_543:
  v0 = v441;
  IPC::Decoder::markInvalid(v1);
  v133 = 0;
  v120 = *v1;
LABEL_207:
  if (v132)
  {
    v134 = v133;
  }

  else
  {
    v134 = 0;
  }

  if (v120)
  {
    if ((v268 & 1) == 0)
    {
      goto LABEL_408;
    }

    *&v348 = v4;
    if ((v267 & 1) == 0)
    {
      goto LABEL_408;
    }

    *(&v348 + 1) = v266;
    if ((v265 & 1) == 0)
    {
      goto LABEL_408;
    }

    v349 = v128;
    if ((v324 & 1) == 0)
    {
      goto LABEL_408;
    }

    WebCore::ResourceRequestBase::RequestData::RequestData(v350, v318);
    v135 = v319;
    v319 = 0uLL;
    v351 = v135;
    v352 = v320;
    v353 = v321;
    v354 = v322;
    v136 = v323;
    v320 = 0;
    v323 = 0;
    v355 = v136;
    if ((v317 & 1) == 0)
    {
      goto LABEL_408;
    }

    v137 = v316;
    v316 = 0;
    v356 = v137;
    if ((v315 & 1) == 0)
    {
      goto LABEL_408;
    }

    v138 = v314;
    v314 = 0;
    v357 = v138;
    if ((v264 & 0x100000000) == 0)
    {
      goto LABEL_408;
    }

    v358 = v264;
    if (v263)
    {
      goto LABEL_408;
    }

    v359 = v261;
    if (v262)
    {
      goto LABEL_408;
    }

    v360 = v260;
    if ((v259 & 0x100) == 0)
    {
      goto LABEL_408;
    }

    v361 = v259;
    if (v258)
    {
      goto LABEL_408;
    }

    v362 = v257;
    if ((v256 & 1) == 0)
    {
      goto LABEL_408;
    }

    v363 = v255;
    if ((v254 & 1) == 0)
    {
      goto LABEL_408;
    }

    v364 = v253;
    if ((v31 & 1) == 0)
    {
      goto LABEL_408;
    }

    v365 = v252;
    if ((v448 & 1) == 0)
    {
      goto LABEL_408;
    }

    std::__optional_move_base<WebKit::NavigationActionData,false>::__optional_move_base[abi:sn200100](v366, v446);
    if (v251)
    {
      goto LABEL_408;
    }

    v368 = v250;
    if ((v249 & 0x10000) == 0)
    {
      goto LABEL_408;
    }

    v369 = v249;
    if ((v248 & 1) == 0)
    {
      goto LABEL_408;
    }

    v370 = v247;
    if ((v246 & 1) == 0)
    {
      goto LABEL_408;
    }

    v371 = v245;
    if ((v244 & 0x10000) == 0)
    {
      goto LABEL_408;
    }

    v372 = v244;
    if ((v243 & 1) == 0)
    {
      goto LABEL_408;
    }

    v373 = v242;
    if ((v241 & 1) == 0)
    {
      goto LABEL_408;
    }

    v374 = v240;
    if ((v313 & 1) == 0)
    {
      goto LABEL_408;
    }

    v139 = v311;
    v311 = 0;
    v375 = v139;
    v140 = v312;
    v312 = 0;
    v376 = v140;
    if ((v310 & 1) == 0)
    {
      goto LABEL_408;
    }

    LOBYTE(v377) = 0;
    v378 = 0;
    if (v309 == 1)
    {
      v197 = v308;
      v308 = 0;
      v377 = v197;
      v378 = 1;
    }

    if ((v239 & 1) == 0)
    {
      goto LABEL_408;
    }

    v379 = v238;
    if ((v445 & 1) == 0)
    {
      goto LABEL_408;
    }

    *(v380 + 3) = *(v441 + 3);
    v380[0] = v441[0];
    v141 = v442;
    v442 = 0;
    v381 = v141;
    v382 = v443;
    v383 = v444;
    if ((v307 & 1) == 0)
    {
      goto LABEL_408;
    }

    std::__optional_move_base<WebCore::ContentSecurityPolicyResponseHeaders,false>::__optional_move_base[abi:sn200100](&v384, v306);
    if ((v305 & 1) == 0)
    {
      goto LABEL_408;
    }

    v142 = v302;
    v302 = 0;
    v385 = v142;
    v386 = v303;
    v387 = v304;
    LODWORD(v303) = v303 & 0xFFFFFFFE;
    if ((v301 & 1) == 0)
    {
      goto LABEL_408;
    }

    v143 = v298;
    v298 = 0;
    v388 = v143;
    v389 = v299;
    v390 = v300;
    LODWORD(v299) = v299 & 0xFFFFFFFE;
    if ((v297 & 1) == 0)
    {
      goto LABEL_408;
    }

    v391 = v295;
    v144 = v296;
    v296 = 0uLL;
    v392 = v144;
    if ((v294 & 1) == 0)
    {
      goto LABEL_408;
    }

    v393 = v292;
    v145 = v293;
    v293 = 0uLL;
    v394 = v145;
    if ((v291 & 1) == 0)
    {
      goto LABEL_408;
    }

    *&v145 = 0;
    v395 = v289;
    v146 = v290;
    v289 = v145;
    v290 = v145;
    v396 = v146;
    if ((v235 & 1) == 0)
    {
      goto LABEL_408;
    }

    v397 = v234;
    if (v233)
    {
      goto LABEL_408;
    }

    v398 = v232;
    if ((v231 & 1) == 0)
    {
      goto LABEL_408;
    }

    v399 = v230;
    if ((v288 & 1) == 0)
    {
      goto LABEL_408;
    }

    v147 = v286;
    v286 = 0;
    v400 = v147;
    v148 = v287;
    v287 = 0;
    v401 = v148;
    if ((v77 & 1) == 0)
    {
      goto LABEL_408;
    }

    v402 = v229;
    if ((v285 & 1) == 0)
    {
      goto LABEL_408;
    }

    v403 = v283;
    v404 = v284;
    if ((v228 & 1) == 0)
    {
      goto LABEL_408;
    }

    v405 = v227;
    if ((v282 & 1) == 0)
    {
      goto LABEL_408;
    }

    v149 = v279;
    v279 = 0;
    v406 = v149;
    v407 = v280;
    v408 = v281;
    LODWORD(v280) = v280 & 0xFFFFFFFE;
    if ((v237 & 1) == 0)
    {
      goto LABEL_408;
    }

    v409 = v226;
    if ((v225 & 1) == 0)
    {
      goto LABEL_408;
    }

    v410 = v224;
    if ((v236 & 1) == 0)
    {
      goto LABEL_408;
    }

    v411 = v223;
    if ((v95 & 1) == 0)
    {
      goto LABEL_408;
    }

    v412 = v222;
    if ((v221 & 0x10000) == 0)
    {
      goto LABEL_408;
    }

    v413 = v221;
    if ((v278 & 1) == 0)
    {
      goto LABEL_408;
    }

    v150 = v275;
    v275 = 0;
    v414 = v150;
    v415 = v276;
    v416 = v277;
    LODWORD(v276) = v276 & 0xFFFFFFFE;
    if ((v274 & 1) == 0)
    {
      goto LABEL_408;
    }

    v417 = v272;
    v151 = v273;
    v273 = 0uLL;
    v418 = v151;
    if ((v271 & 1) == 0)
    {
      goto LABEL_408;
    }

    v419 = v269;
    v420 = v270;
    if ((v440 & 1) == 0)
    {
      goto LABEL_408;
    }

    v0 = &v348;
    std::__optional_move_base<WebCore::NavigationRequester,false>::__optional_move_base[abi:sn200100](v421, &v437);
    if (v219)
    {
      goto LABEL_408;
    }

    v421[240] = v218;
    if ((v333 & 1) == 0)
    {
      goto LABEL_408;
    }

    v422 = v331;
    v423 = v332;
    if (v217 <= 0xFF)
    {
      goto LABEL_408;
    }

    v424 = v217;
    if ((v216 & 1) == 0)
    {
      goto LABEL_408;
    }

    v425 = v215 | v213;
    v426 = v212;
    if ((v214 & 1) == 0)
    {
      goto LABEL_408;
    }

    v427 = *v345;
    if ((v452 & 1) == 0)
    {
      goto LABEL_408;
    }

    v152 = v449;
    v449 = 0;
    v428 = v152;
    v429 = v450;
    v430 = v451;
    LODWORD(v450) = v450 & 0xFFFFFFFE;
    if ((v211 & 1) == 0)
    {
      goto LABEL_408;
    }

    v431 = v209 | v210;
    v432 = v205;
    if ((v208 & 1) == 0)
    {
      goto LABEL_408;
    }

    v433 = v207;
    if ((v206 & 1) == 0)
    {
      goto LABEL_408;
    }

    v434 = v204;
    if ((v130 & 1) == 0)
    {
      goto LABEL_408;
    }

    v435 = v203;
    if ((v133 & 1) == 0)
    {
      goto LABEL_408;
    }

    v436 = v134;
    WebKit::NetworkResourceLoadParameters::NetworkResourceLoadParameters(v220, &v348);
    v220[4048] = 1;
    WebKit::NetworkResourceLoadParameters::~NetworkResourceLoadParameters(&v348, v153);
    v0 = v441;
  }

  else
  {
    *v220 = 0;
    v220[4048] = 0;
  }

  if (v452 == 1)
  {
    v154 = v449;
    v449 = 0;
    if (v154)
    {
      if (atomic_fetch_add_explicit(v154, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v154, v114);
      }
    }
  }

  if (v440 == 1)
  {
    std::optional<WebCore::NavigationRequester>::~optional(&v437, v114);
  }

  if (v274 == 1)
  {
    v155 = *(&v273 + 1);
    *(&v273 + 1) = 0;
    if (v155 && atomic_fetch_add_explicit(v155, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v155, v114);
    }

    v156 = v273;
    *&v273 = 0;
    if (v156 && atomic_fetch_add_explicit(v156, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v156, v114);
    }
  }

  if (v278 == 1)
  {
    v157 = v275;
    v275 = 0;
    if (v157)
    {
      if (atomic_fetch_add_explicit(v157, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v157, v114);
      }
    }
  }

  if (v282 == 1)
  {
    v158 = v279;
    v279 = 0;
    if (v158)
    {
      if (atomic_fetch_add_explicit(v158, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v158, v114);
      }
    }
  }

  if (v288 == 1)
  {
    WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v286, v114);
  }

  if (v291 == 1)
  {
    WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(&v290, v114);
    WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(&v289, v159);
  }

  if (v294 == 1)
  {
    v160 = *(&v293 + 1);
    *(&v293 + 1) = 0;
    if (v160 && atomic_fetch_add_explicit(v160, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v160, v114);
    }

    v161 = v293;
    *&v293 = 0;
    if (v161 && atomic_fetch_add_explicit(v161, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v161, v114);
    }
  }

  if (v297 == 1)
  {
    v162 = *(&v296 + 1);
    *(&v296 + 1) = 0;
    if (v162 && atomic_fetch_add_explicit(v162, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v162, v114);
    }

    v163 = v296;
    *&v296 = 0;
    if (v163 && atomic_fetch_add_explicit(v163, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v163, v114);
    }
  }

  if (v301 == 1)
  {
    v164 = v298;
    v298 = 0;
    if (v164)
    {
      if (atomic_fetch_add_explicit(v164, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v164, v114);
      }
    }
  }

  if (v305 == 1)
  {
    v165 = v302;
    v302 = 0;
    if (v165)
    {
      if (atomic_fetch_add_explicit(v165, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v165, v114);
      }
    }
  }

  if (v307 == 1 && v306[24] == 1)
  {
    WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v306, v114);
  }

  if (v445 == 1)
  {
    v166 = v442;
    v442 = 0;
    if (v166)
    {
      if (atomic_fetch_add_explicit(v166, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v166, v114);
      }
    }
  }

  if (v310 == 1 && v309 == 1)
  {
LABEL_409:
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v308);
  }

  if (v313 == 1)
  {
    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v311, v114);
  }

  if (*(v0 + 2992) == 1 && *(v0 + 2976) == 1)
  {
    WebKit::NavigationActionData::~NavigationActionData(v446, v114);
  }

  if (v315 == 1 && v314)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v314, v114);
  }

  if (v317 == 1 && v316)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v316, v114);
  }

  if (v324 == 1)
  {
    v167 = v323;
    v323 = 0;
    if (v167)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(v318);
  }
}